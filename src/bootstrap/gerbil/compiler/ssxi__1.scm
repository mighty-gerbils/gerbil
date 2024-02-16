(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298125_)
      (let* ((_g298129298147_
              (lambda (_g298130298143_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298130298143_))))
             (_g298128298202_
              (lambda (_g298130298151_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298130298151_))
                    (let ((_e298135298154_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298130298151_))))
                      (let ((_hd298134298158_
                             (let ()
                               (declare (not safe))
                               (##car _e298135298154_)))
                            (_tl298133298161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298135298154_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298133298161_))
                            (let ((_e298138298164_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298133298161_))))
                              (let ((_hd298137298168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298138298164_)))
                                    (_tl298136298171_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298138298164_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298136298171_))
                                    (let ((_e298141298174_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298136298171_))))
                                      (let ((_hd298140298178_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298141298174_)))
                                            (_tl298139298181_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298141298174_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298139298181_))
                                            ((lambda (_L298184_ _L298186_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298186_))
                                                   (let ((__tmp306234
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306229
                                                          (let ((__tmp306231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306233
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306232
                                (let ()
                                  (declare (not safe))
                                  (cons _L298186_ '()))))
                           (declare (not safe))
                           (cons __tmp306233 __tmp306232)))
                        (__tmp306230
                         (let () (declare (not safe)) (cons _L298184_ '()))))
                    (declare (not safe))
                    (cons __tmp306231 __tmp306230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306234
                                                           __tmp306229))
                                                   (_g298129298147_
                                                    _g298130298151_)))
                                             _hd298140298178_
                                             _hd298137298168_)
                                            (_g298129298147_
                                             _g298130298151_))))
                                    (_g298129298147_ _g298130298151_))))
                            (_g298129298147_ _g298130298151_))))
                    (_g298129298147_ _g298130298151_)))))
        (_g298128298202_ _$stx298125_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298206_)
      (let* ((_g298210298239_
              (lambda (_g298211298235_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298211298235_))))
             (_g298209298339_
              (lambda (_g298211298243_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298211298243_))
                    (let ((_e298216298246_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298211298243_))))
                      (let ((_hd298215298250_
                             (let ()
                               (declare (not safe))
                               (##car _e298216298246_)))
                            (_tl298214298253_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298216298246_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298214298253_))
                            (let ((_g306235_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298214298253_
                                      '0))))
                              (begin
                                (let ((_g306236_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306235_)
                                             (##vector-length _g306235_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306236_ 2)))
                                      (error "Context expects 2 values"
                                             _g306236_)))
                                (let ((_target298217298256_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306235_ 0)))
                                      (_tl298219298259_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306235_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298219298259_))
                                      (letrec ((_loop298220298262_
                                                (lambda (_hd298218298266_
                                                         _type298224298269_
                                                         _symbol298225298271_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298218298266_))
                                                      (let ((_e298221298274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298218298266_))))
                (let ((_lp-hd298222298278_
                       (let () (declare (not safe)) (##car _e298221298274_)))
                      (_lp-tl298223298281_
                       (let () (declare (not safe)) (##cdr _e298221298274_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298222298278_))
                      (let ((_e298230298284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298222298278_))))
                        (let ((_hd298229298288_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298230298284_)))
                              (_tl298228298291_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298230298284_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298228298291_))
                              (let ((_e298233298294_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298228298291_))))
                                (let ((_hd298232298298_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298233298294_)))
                                      (_tl298231298301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298233298294_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298231298301_))
                                      (_loop298220298262_
                                       _lp-tl298223298281_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298232298298_
                                               _type298224298269_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298229298288_
                                               _symbol298225298271_)))
                                      (_g298210298239_ _g298211298243_))))
                              (_g298210298239_ _g298211298243_))))
                      (_g298210298239_ _g298211298243_))))
              (let ((_type298226298304_ (reverse _type298224298269_))
                    (_symbol298227298307_ (reverse _symbol298225298271_)))
                ((lambda (_L298310_ _L298312_)
                   (let ((__tmp306243
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306237
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298310_
                               _L298312_))
                            (let ((__tmp306238
                                   (lambda (_g298327298331_
                                            _g298328298334_
                                            _g298329298336_)
                                     (let ((__tmp306239
                                            (let ((__tmp306242
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306240
                                                   (let ((__tmp306241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298327298331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298328298334_
                                                           __tmp306241))))
                                              (declare (not safe))
                                              (cons __tmp306242 __tmp306240))))
                                       (declare (not safe))
                                       (cons __tmp306239 _g298329298336_)))))
                              (declare (not safe))
                              (foldr2 __tmp306238 '() _L298310_ _L298312_)))))
                     (declare (not safe))
                     (cons __tmp306243 __tmp306237)))
                 _type298226298304_
                 _symbol298227298307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298220298262_
                                         _target298217298256_
                                         '()
                                         '()))
                                      (_g298210298239_ _g298211298243_)))))
                            (_g298210298239_ _g298211298243_))))
                    (_g298210298239_ _g298211298243_)))))
        (_g298209298339_ _$stx298206_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298344_)
      (let* ((___stx305794305795_ _$stx298344_)
             (_g298349298391_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305794305795_)))))
        (let ((___kont305797305798_
               (lambda (_L298519_ _L298521_ _L298522_ _L298523_)
                 (let ((__tmp306257
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306244
                        (let ((__tmp306254
                               (let ((__tmp306256
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306255
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298523_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306256 __tmp306255)))
                              (__tmp306245
                               (let ((__tmp306251
                                      (let ((__tmp306253
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306252
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298522_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306253 __tmp306252)))
                                     (__tmp306246
                                      (let ((__tmp306248
                                             (let ((__tmp306250
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306249
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298521_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306250 __tmp306249)))
                                            (__tmp306247
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298519_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306248 __tmp306247))))
                                 (declare (not safe))
                                 (cons __tmp306251 __tmp306246))))
                          (declare (not safe))
                          (cons __tmp306254 __tmp306245))))
                   (declare (not safe))
                   (cons __tmp306257 __tmp306244))))
              (___kont305799305800_
               (lambda (_L298438_ _L298440_ _L298441_ _L298442_)
                 (let ((__tmp306258
                        (let ((__tmp306259
                               (let ((__tmp306260
                                      (let ((__tmp306261
                                             (let ((__tmp306262
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306262 '()))))
                                        (declare (not safe))
                                        (cons _L298438_ __tmp306261))))
                                 (declare (not safe))
                                 (cons _L298440_ __tmp306260))))
                          (declare (not safe))
                          (cons _L298441_ __tmp306259))))
                   (declare (not safe))
                   (cons _L298442_ __tmp306258)))))
          (let ((___match305833305834_
                 (lambda (_e298357298469_
                          _hd298356298473_
                          _tl298355298476_
                          _e298360298479_
                          _hd298359298483_
                          _tl298358298486_
                          _e298363298489_
                          _hd298362298493_
                          _tl298361298496_
                          _e298366298499_
                          _hd298365298503_
                          _tl298364298506_
                          _e298369298509_
                          _hd298368298513_
                          _tl298367298516_)
                   (let ((_L298519_ _hd298368298513_)
                         (_L298521_ _hd298365298503_)
                         (_L298522_ _hd298362298493_)
                         (_L298523_ _hd298359298483_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L298523_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298522_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298521_)))
                         (___kont305797305798_
                          _L298519_
                          _L298521_
                          _L298522_
                          _L298523_)
                         (let () (declare (not safe)) (_g298349298391_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305794305795_))
                (let ((_e298357298469_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305794305795_))))
                  (let ((_tl298355298476_
                         (let () (declare (not safe)) (##cdr _e298357298469_)))
                        (_hd298356298473_
                         (let ()
                           (declare (not safe))
                           (##car _e298357298469_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298355298476_))
                        (let ((_e298360298479_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298355298476_))))
                          (let ((_tl298358298486_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298360298479_)))
                                (_hd298359298483_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298360298479_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298358298486_))
                                (let ((_e298363298489_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298358298486_))))
                                  (let ((_tl298361298496_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298363298489_)))
                                        (_hd298362298493_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298363298489_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298361298496_))
                                        (let ((_e298366298499_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298361298496_))))
                                          (let ((_tl298364298506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298366298499_)))
                                                (_hd298365298503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298366298499_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298364298506_))
                                                (let ((_e298369298509_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298364298506_))))
                                                  (let ((_tl298367298516_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298369298509_)))
                                                        (_hd298368298513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298369298509_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298367298516_))
                                                        (___match305833305834_
                                                         _e298357298469_
                                                         _hd298356298473_
                                                         _tl298355298476_
                                                         _e298360298479_
                                                         _hd298359298483_
                                                         _tl298358298486_
                                                         _e298363298489_
                                                         _hd298362298493_
                                                         _tl298361298496_
                                                         _e298366298499_
                                                         _hd298365298503_
                                                         _tl298364298506_
                                                         _e298369298509_
                                                         _hd298368298513_
                                                         _tl298367298516_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298349298391_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298364298506_))
                                                    (___kont305799305800_
                                                     _hd298365298503_
                                                     _hd298362298493_
                                                     _hd298359298483_
                                                     _hd298356298473_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298349298391_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298349298391_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298349298391_)))))
                        (let () (declare (not safe)) (_g298349298391_)))))
                (let () (declare (not safe)) (_g298349298391_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx298548_)
      (let* ((_g298552298587_
              (lambda (_g298553298583_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298553298583_))))
             (_g298551298706_
              (lambda (_g298553298591_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298553298591_))
                    (let ((_e298559298594_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298553298591_))))
                      (let ((_hd298558298598_
                             (let ()
                               (declare (not safe))
                               (##car _e298559298594_)))
                            (_tl298557298601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298559298594_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298557298601_))
                            (let ((_g306263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298557298601_
                                      '0))))
                              (begin
                                (let ((_g306264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306263_)
                                             (##vector-length _g306263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306264_ 2)))
                                      (error "Context expects 2 values"
                                             _g306264_)))
                                (let ((_target298560298604_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306263_ 0)))
                                      (_tl298562298607_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306263_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298562298607_))
                                      (letrec ((_loop298563298610_
                                                (lambda (_hd298561298614_
                                                         _symbol298567298617_
                                                         _method298568298619_
                                                         _type-t298569298621_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298561298614_))
                                                      (let ((_e298564298624_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298561298614_))))
                (let ((_lp-hd298565298628_
                       (let () (declare (not safe)) (##car _e298564298624_)))
                      (_lp-tl298566298631_
                       (let () (declare (not safe)) (##cdr _e298564298624_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298565298628_))
                      (let ((_e298575298634_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298565298628_))))
                        (let ((_hd298574298638_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298575298634_)))
                              (_tl298573298641_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298575298634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298573298641_))
                              (let ((_e298578298644_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298573298641_))))
                                (let ((_hd298577298648_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298578298644_)))
                                      (_tl298576298651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298578298644_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298576298651_))
                                      (let ((_e298581298654_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298576298651_))))
                                        (let ((_hd298580298658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298581298654_)))
                                              (_tl298579298661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298581298654_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298579298661_))
                                              (_loop298563298610_
                                               _lp-tl298566298631_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298580298658_
                                                       _symbol298567298617_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298577298648_
                                                       _method298568298619_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298574298638_
                                                       _type-t298569298621_)))
                                              (_g298552298587_
                                               _g298553298591_))))
                                      (_g298552298587_ _g298553298591_))))
                              (_g298552298587_ _g298553298591_))))
                      (_g298552298587_ _g298553298591_))))
              (let ((_symbol298570298664_ (reverse _symbol298567298617_))
                    (_method298571298667_ (reverse _method298568298619_))
                    (_type-t298572298669_ (reverse _type-t298569298621_)))
                ((lambda (_L298672_ _L298674_ _L298675_)
                   (let ((__tmp306272
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306265
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298672_
                               _L298674_
                               _L298675_))
                            (let ((__tmp306266
                                   (lambda (_g298691298696_
                                            _g298692298699_
                                            _g298693298701_
                                            _g298694298703_)
                                     (let ((__tmp306267
                                            (let ((__tmp306271
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306268
                                                   (let ((__tmp306269
                                                          (let ((__tmp306270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298691298696_ '()))))
                    (declare (not safe))
                    (cons _g298692298699_ __tmp306270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298693298701_
                                                           __tmp306269))))
                                              (declare (not safe))
                                              (cons __tmp306271 __tmp306268))))
                                       (declare (not safe))
                                       (cons __tmp306267 _g298694298703_)))))
                              (declare (not safe))
                              (foldr* __tmp306266
                                      '()
                                      _L298672_
                                      _L298674_
                                      _L298675_)))))
                     (declare (not safe))
                     (cons __tmp306272 __tmp306265)))
                 _symbol298570298664_
                 _method298571298667_
                 _type-t298572298669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298563298610_
                                         _target298560298604_
                                         '()
                                         '()
                                         '()))
                                      (_g298552298587_ _g298553298591_)))))
                            (_g298552298587_ _g298553298591_))))
                    (_g298552298587_ _g298553298591_)))))
        (_g298551298706_ _$stx298548_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298711_)
      (let* ((_g298715298748_
              (lambda (_g298716298744_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298716298744_))))
             (_g298714298862_
              (lambda (_g298716298752_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298716298752_))
                    (let ((_e298722298755_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298716298752_))))
                      (let ((_hd298721298759_
                             (let ()
                               (declare (not safe))
                               (##car _e298722298755_)))
                            (_tl298720298762_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298722298755_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298720298762_))
                            (let ((_e298725298765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298720298762_))))
                              (let ((_hd298724298769_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298725298765_)))
                                    (_tl298723298772_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298725298765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298723298772_))
                                    (let ((_g306273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298723298772_
                                              '0))))
                                      (begin
                                        (let ((_g306274_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306273_)
                                                     (##vector-length
                                                      _g306273_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306274_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306274_)))
                                        (let ((_target298726298775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306273_ 0)))
                                              (_tl298728298778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306273_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298728298778_))
                                              (letrec ((_loop298729298781_
                                                        (lambda (_hd298727298785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298733298788_
                         _method298734298790_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298727298785_))
                      (let ((_e298730298793_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298727298785_))))
                        (let ((_lp-hd298731298797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298730298793_)))
                              (_lp-tl298732298800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298730298793_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298731298797_))
                              (let ((_e298739298803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298731298797_))))
                                (let ((_hd298738298807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298739298803_)))
                                      (_tl298737298810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298739298803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298737298810_))
                                      (let ((_e298742298813_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298737298810_))))
                                        (let ((_hd298741298817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298742298813_)))
                                              (_tl298740298820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298742298813_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298740298820_))
                                              (_loop298729298781_
                                               _lp-tl298732298800_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298741298817_
                                                       _symbol298733298788_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298738298807_
                                                       _method298734298790_)))
                                              (_g298715298748_
                                               _g298716298752_))))
                                      (_g298715298748_ _g298716298752_))))
                              (_g298715298748_ _g298716298752_))))
                      (let ((_symbol298735298823_
                             (reverse _symbol298733298788_))
                            (_method298736298826_
                             (reverse _method298734298790_)))
                        ((lambda (_L298829_ _L298831_ _L298832_)
                           (let ((__tmp306282
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306275
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298829_
                                       _L298831_))
                                    (let ((__tmp306276
                                           (lambda (_g298850298854_
                                                    _g298851298857_
                                                    _g298852298859_)
                                             (let ((__tmp306277
                                                    (let ((__tmp306281
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306278
                                                           (let ((__tmp306279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306280
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298850298854_ '()))))
                            (declare (not safe))
                            (cons _g298851298857_ __tmp306280))))
                     (declare (not safe))
                     (cons _L298832_ __tmp306279))))
              (declare (not safe))
              (cons __tmp306281 __tmp306278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306277
                                                     _g298852298859_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306276
                                              '()
                                              _L298829_
                                              _L298831_)))))
                             (declare (not safe))
                             (cons __tmp306282 __tmp306275)))
                         _symbol298735298823_
                         _method298736298826_
                         _hd298724298769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298729298781_
                                                 _target298726298775_
                                                 '()
                                                 '()))
                                              (_g298715298748_
                                               _g298716298752_)))))
                                    (_g298715298748_ _g298716298752_))))
                            (_g298715298748_ _g298716298752_))))
                    (_g298715298748_ _g298716298752_)))))
        (_g298714298862_ _$stx298711_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298867_)
      (let* ((_g298871298885_
              (lambda (_g298872298881_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298872298881_))))
             (_g298870298926_
              (lambda (_g298872298889_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298872298889_))
                    (let ((_e298876298892_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298872298889_))))
                      (let ((_hd298875298896_
                             (let ()
                               (declare (not safe))
                               (##car _e298876298892_)))
                            (_tl298874298899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298876298892_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298874298899_))
                            (let ((_e298879298902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298874298899_))))
                              (let ((_hd298878298906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298879298902_)))
                                    (_tl298877298909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298879298902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298877298909_))
                                    ((lambda (_L298912_)
                                       (let ((__tmp306287
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306283
                                              (let ((__tmp306284
                                                     (let ((__tmp306286
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306285
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306286 __tmp306285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306284 '()))))
                                         (declare (not safe))
                                         (cons __tmp306287 __tmp306283)))
                                     _hd298878298906_)
                                    (_g298871298885_ _g298872298889_))))
                            (_g298871298885_ _g298872298889_))))
                    (_g298871298885_ _g298872298889_)))))
        (_g298870298926_ _$stx298867_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx298930_)
      (let* ((_g298934298984_
              (lambda (_g298935298980_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298935298980_))))
             (_g298933299151_
              (lambda (_g298935298988_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298935298988_))
                    (let ((_e298948298991_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298935298988_))))
                      (let ((_hd298947298995_
                             (let ()
                               (declare (not safe))
                               (##car _e298948298991_)))
                            (_tl298946298998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298948298991_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298946298998_))
                            (let ((_e298951299001_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298946298998_))))
                              (let ((_hd298950299005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298951299001_)))
                                    (_tl298949299008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298951299001_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298949299008_))
                                    (let ((_e298954299011_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298949299008_))))
                                      (let ((_hd298953299015_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298954299011_)))
                                            (_tl298952299018_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298954299011_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298952299018_))
                                            (let ((_e298957299021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298952299018_))))
                                              (let ((_hd298956299025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298957299021_)))
                                                    (_tl298955299028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298957299021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298955299028_))
                                                    (let ((_e298960299031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298955299028_))))
                                                      (let ((_hd298959299035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298960299031_)))
                    (_tl298958299038_
                     (let () (declare (not safe)) (##cdr _e298960299031_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298958299038_))
                    (let ((_e298963299041_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298958299038_))))
                      (let ((_hd298962299045_
                             (let ()
                               (declare (not safe))
                               (##car _e298963299041_)))
                            (_tl298961299048_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298963299041_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298961299048_))
                            (let ((_e298966299051_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298961299048_))))
                              (let ((_hd298965299055_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298966299051_)))
                                    (_tl298964299058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298966299051_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298964299058_))
                                    (let ((_e298969299061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298964299058_))))
                                      (let ((_hd298968299065_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298969299061_)))
                                            (_tl298967299068_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298969299061_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298967299068_))
                                            (let ((_e298972299071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298967299068_))))
                                              (let ((_hd298971299075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298972299071_)))
                                                    (_tl298970299078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298972299071_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298970299078_))
                                                    (let ((_e298975299081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298970299078_))))
                                                      (let ((_hd298974299085_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298975299081_)))
                    (_tl298973299088_
                     (let () (declare (not safe)) (##cdr _e298975299081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298973299088_))
                    (let ((_e298978299091_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298973299088_))))
                      (let ((_hd298977299095_
                             (let ()
                               (declare (not safe))
                               (##car _e298978299091_)))
                            (_tl298976299098_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298978299091_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl298976299098_))
                            ((lambda (_L299101_
                                      _L299103_
                                      _L299104_
                                      _L299105_
                                      _L299106_
                                      _L299107_
                                      _L299108_
                                      _L299109_
                                      _L299110_
                                      _L299111_)
                               (let ((__tmp306322
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306288
                                      (let ((__tmp306319
                                             (let ((__tmp306321
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306320
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299111_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306321 __tmp306320)))
                                            (__tmp306289
                                             (let ((__tmp306316
                                                    (let ((__tmp306318
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306317
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306318 __tmp306317)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306290
                                                    (let ((__tmp306313
                                                           (let ((__tmp306315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306314
                          (let () (declare (not safe)) (cons _L299109_ '()))))
                     (declare (not safe))
                     (cons __tmp306315 __tmp306314)))
                  (__tmp306291
                   (let ((__tmp306310
                          (let ((__tmp306312
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306311
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299108_ '()))))
                            (declare (not safe))
                            (cons __tmp306312 __tmp306311)))
                         (__tmp306292
                          (let ((__tmp306307
                                 (let ((__tmp306309
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306308
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299107_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306309 __tmp306308)))
                                (__tmp306293
                                 (let ((__tmp306304
                                        (let ((__tmp306306
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306305
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299106_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306306 __tmp306305)))
                                       (__tmp306294
                                        (let ((__tmp306295
                                               (let ((__tmp306296
                                                      (let ((__tmp306301
                                                             (let ((__tmp306303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306302
                            (let ()
                              (declare (not safe))
                              (cons _L299103_ '()))))
                       (declare (not safe))
                       (cons __tmp306303 __tmp306302)))
                    (__tmp306297
                     (let ((__tmp306298
                            (let ((__tmp306300
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306299
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299101_ '()))))
                              (declare (not safe))
                              (cons __tmp306300 __tmp306299))))
                       (declare (not safe))
                       (cons __tmp306298 '()))))
                (declare (not safe))
                (cons __tmp306301 __tmp306297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299104_
                                                       __tmp306296))))
                                          (declare (not safe))
                                          (cons _L299105_ __tmp306295))))
                                   (declare (not safe))
                                   (cons __tmp306304 __tmp306294))))
                            (declare (not safe))
                            (cons __tmp306307 __tmp306293))))
                     (declare (not safe))
                     (cons __tmp306310 __tmp306292))))
              (declare (not safe))
              (cons __tmp306313 __tmp306291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306316
                                                     __tmp306290))))
                                        (declare (not safe))
                                        (cons __tmp306319 __tmp306289))))
                                 (declare (not safe))
                                 (cons __tmp306322 __tmp306288)))
                             _hd298977299095_
                             _hd298974299085_
                             _hd298971299075_
                             _hd298968299065_
                             _hd298965299055_
                             _hd298962299045_
                             _hd298959299035_
                             _hd298956299025_
                             _hd298953299015_
                             _hd298950299005_)
                            (_g298934298984_ _g298935298988_))))
                    (_g298934298984_ _g298935298988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298934298984_
                                                     _g298935298988_))))
                                            (_g298934298984_
                                             _g298935298988_))))
                                    (_g298934298984_ _g298935298988_))))
                            (_g298934298984_ _g298935298988_))))
                    (_g298934298984_ _g298935298988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298934298984_
                                                     _g298935298988_))))
                                            (_g298934298984_
                                             _g298935298988_))))
                                    (_g298934298984_ _g298935298988_))))
                            (_g298934298984_ _g298935298988_))))
                    (_g298934298984_ _g298935298988_)))))
        (_g298933299151_ _$stx298930_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299155_)
      (let* ((_g299159299173_
              (lambda (_g299160299169_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299160299169_))))
             (_g299158299214_
              (lambda (_g299160299177_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299160299177_))
                    (let ((_e299164299180_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299160299177_))))
                      (let ((_hd299163299184_
                             (let ()
                               (declare (not safe))
                               (##car _e299164299180_)))
                            (_tl299162299187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299164299180_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299162299187_))
                            (let ((_e299167299190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299162299187_))))
                              (let ((_hd299166299194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299167299190_)))
                                    (_tl299165299197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299167299190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299165299197_))
                                    ((lambda (_L299200_)
                                       (let ((__tmp306327
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
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
                                                              (cons _L299200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306326 __tmp306325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306324 '()))))
                                         (declare (not safe))
                                         (cons __tmp306327 __tmp306323)))
                                     _hd299166299194_)
                                    (_g299159299173_ _g299160299177_))))
                            (_g299159299173_ _g299160299177_))))
                    (_g299159299173_ _g299160299177_)))))
        (_g299158299214_ _$stx299155_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299218_)
      (let* ((_g299222299236_
              (lambda (_g299223299232_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299223299232_))))
             (_g299221299277_
              (lambda (_g299223299240_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299223299240_))
                    (let ((_e299227299243_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299223299240_))))
                      (let ((_hd299226299247_
                             (let ()
                               (declare (not safe))
                               (##car _e299227299243_)))
                            (_tl299225299250_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299227299243_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299225299250_))
                            (let ((_e299230299253_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299225299250_))))
                              (let ((_hd299229299257_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299230299253_)))
                                    (_tl299228299260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299230299253_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299228299260_))
                                    ((lambda (_L299263_)
                                       (let ((__tmp306332
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306328
                                              (let ((__tmp306329
                                                     (let ((__tmp306331
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306330
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306331 __tmp306330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306329 '()))))
                                         (declare (not safe))
                                         (cons __tmp306332 __tmp306328)))
                                     _hd299229299257_)
                                    (_g299222299236_ _g299223299240_))))
                            (_g299222299236_ _g299223299240_))))
                    (_g299222299236_ _g299223299240_)))))
        (_g299221299277_ _$stx299218_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299281_)
      (let* ((_g299285299307_
              (lambda (_g299286299303_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299286299303_))))
             (_g299284299376_
              (lambda (_g299286299311_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299286299311_))
                    (let ((_e299292299314_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299286299311_))))
                      (let ((_hd299291299318_
                             (let ()
                               (declare (not safe))
                               (##car _e299292299314_)))
                            (_tl299290299321_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299292299314_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299290299321_))
                            (let ((_e299295299324_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299290299321_))))
                              (let ((_hd299294299328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299295299324_)))
                                    (_tl299293299331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299295299324_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299293299331_))
                                    (let ((_e299298299334_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299293299331_))))
                                      (let ((_hd299297299338_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299298299334_)))
                                            (_tl299296299341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299298299334_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299296299341_))
                                            (let ((_e299301299344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299296299341_))))
                                              (let ((_hd299300299348_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299301299344_)))
                                                    (_tl299299299351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299301299344_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299299299351_))
                                                    ((lambda (_L299354_
                                                              _L299356_
                                                              _L299357_)
                                                       (let ((__tmp306342
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306333
                      (let ((__tmp306339
                             (let ((__tmp306341
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306340
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299357_ '()))))
                               (declare (not safe))
                               (cons __tmp306341 __tmp306340)))
                            (__tmp306334
                             (let ((__tmp306336
                                    (let ((__tmp306338
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306337
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299356_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306338 __tmp306337)))
                                   (__tmp306335
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299354_ '()))))
                               (declare (not safe))
                               (cons __tmp306336 __tmp306335))))
                        (declare (not safe))
                        (cons __tmp306339 __tmp306334))))
                 (declare (not safe))
                 (cons __tmp306342 __tmp306333)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299300299348_
                                                     _hd299297299338_
                                                     _hd299294299328_)
                                                    (_g299285299307_
                                                     _g299286299311_))))
                                            (_g299285299307_
                                             _g299286299311_))))
                                    (_g299285299307_ _g299286299311_))))
                            (_g299285299307_ _g299286299311_))))
                    (_g299285299307_ _g299286299311_)))))
        (_g299284299376_ _$stx299281_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx299380_)
      (let* ((_g299384299406_
              (lambda (_g299385299402_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299385299402_))))
             (_g299383299475_
              (lambda (_g299385299410_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299385299410_))
                    (let ((_e299391299413_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299385299410_))))
                      (let ((_hd299390299417_
                             (let ()
                               (declare (not safe))
                               (##car _e299391299413_)))
                            (_tl299389299420_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299391299413_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299389299420_))
                            (let ((_e299394299423_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299389299420_))))
                              (let ((_hd299393299427_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299394299423_)))
                                    (_tl299392299430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299394299423_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299392299430_))
                                    (let ((_e299397299433_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299392299430_))))
                                      (let ((_hd299396299437_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299397299433_)))
                                            (_tl299395299440_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299397299433_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299395299440_))
                                            (let ((_e299400299443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299395299440_))))
                                              (let ((_hd299399299447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299400299443_)))
                                                    (_tl299398299450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299400299443_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299398299450_))
                                                    ((lambda (_L299453_
                                                              _L299455_
                                                              _L299456_)
                                                       (let ((__tmp306352
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306343
                      (let ((__tmp306349
                             (let ((__tmp306351
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306350
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299456_ '()))))
                               (declare (not safe))
                               (cons __tmp306351 __tmp306350)))
                            (__tmp306344
                             (let ((__tmp306346
                                    (let ((__tmp306348
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306347
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299455_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306348 __tmp306347)))
                                   (__tmp306345
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299453_ '()))))
                               (declare (not safe))
                               (cons __tmp306346 __tmp306345))))
                        (declare (not safe))
                        (cons __tmp306349 __tmp306344))))
                 (declare (not safe))
                 (cons __tmp306352 __tmp306343)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299399299447_
                                                     _hd299396299437_
                                                     _hd299393299427_)
                                                    (_g299384299406_
                                                     _g299385299410_))))
                                            (_g299384299406_
                                             _g299385299410_))))
                                    (_g299384299406_ _g299385299410_))))
                            (_g299384299406_ _g299385299410_))))
                    (_g299384299406_ _g299385299410_)))))
        (_g299383299475_ _$stx299380_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx299479_)
      (let* ((___stx305862305863_ _$stx299479_)
             (_g299487299555_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305862305863_)))))
        (let ((___kont305865305866_
               (lambda (_L299833_ _L299835_)
                 (let ((__tmp306368
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306353
                        (let ((__tmp306364
                               (let ((__tmp306367
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306365
                                      (let ((__tmp306366
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306366 '()))))
                                 (declare (not safe))
                                 (cons __tmp306367 __tmp306365)))
                              (__tmp306354
                               (let ((__tmp306361
                                      (let ((__tmp306363
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306362
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299835_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306363 __tmp306362)))
                                     (__tmp306355
                                      (let ((__tmp306356
                                             (let ((__tmp306357
                                                    (let ((__tmp306358
                                                           (let ((__tmp306360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306359
                          (let () (declare (not safe)) (cons _L299833_ '()))))
                     (declare (not safe))
                     (cons __tmp306360 __tmp306359))))
              (declare (not safe))
              (cons __tmp306358 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299833_ __tmp306357))))
                                        (declare (not safe))
                                        (cons '#f __tmp306356))))
                                 (declare (not safe))
                                 (cons __tmp306361 __tmp306355))))
                          (declare (not safe))
                          (cons __tmp306364 __tmp306354))))
                   (declare (not safe))
                   (cons __tmp306368 __tmp306353))))
              (___kont305867305868_
               (lambda (_L299764_ _L299766_)
                 (let ((__tmp306369
                        (let ((__tmp306370
                               (let ((__tmp306371
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299764_ __tmp306371))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306370))))
                   (declare (not safe))
                   (cons _L299766_ __tmp306369))))
              (___kont305869305870_
               (lambda (_L299703_ _L299705_)
                 (let ((__tmp306385
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306372
                        (let ((__tmp306381
                               (let ((__tmp306384
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306382
                                      (let ((__tmp306383
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306383 '()))))
                                 (declare (not safe))
                                 (cons __tmp306384 __tmp306382)))
                              (__tmp306373
                               (let ((__tmp306378
                                      (let ((__tmp306380
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306379
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299705_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306380 __tmp306379)))
                                     (__tmp306374
                                      (let ((__tmp306375
                                             (let ((__tmp306377
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306376
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299703_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306377
                                                     __tmp306376))))
                                        (declare (not safe))
                                        (cons __tmp306375 '()))))
                                 (declare (not safe))
                                 (cons __tmp306378 __tmp306374))))
                          (declare (not safe))
                          (cons __tmp306381 __tmp306373))))
                   (declare (not safe))
                   (cons __tmp306385 __tmp306372))))
              (___kont305871305872_
               (lambda (_L299635_ _L299637_)
                 (let ((__tmp306399
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306386
                        (let ((__tmp306395
                               (let ((__tmp306398
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306396
                                      (let ((__tmp306397
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306397 '()))))
                                 (declare (not safe))
                                 (cons __tmp306398 __tmp306396)))
                              (__tmp306387
                               (let ((__tmp306392
                                      (let ((__tmp306394
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306393
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299637_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306394 __tmp306393)))
                                     (__tmp306388
                                      (let ((__tmp306389
                                             (let ((__tmp306391
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306390
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299635_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306391
                                                     __tmp306390))))
                                        (declare (not safe))
                                        (cons __tmp306389 '()))))
                                 (declare (not safe))
                                 (cons __tmp306392 __tmp306388))))
                          (declare (not safe))
                          (cons __tmp306395 __tmp306387))))
                   (declare (not safe))
                   (cons __tmp306399 __tmp306386))))
              (___kont305873305874_
               (lambda (_L299582_ _L299584_)
                 (let ((__tmp306400
                        (let ((__tmp306401
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L299582_ __tmp306401))))
                   (declare (not safe))
                   (cons _L299584_ __tmp306400)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305862305863_))
              (let ((_e299493299789_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305862305863_))))
                (let ((_tl299491299796_
                       (let () (declare (not safe)) (##cdr _e299493299789_)))
                      (_hd299492299793_
                       (let () (declare (not safe)) (##car _e299493299789_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl299491299796_))
                      (let ((_e299496299799_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299491299796_))))
                        (let ((_tl299494299806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299496299799_)))
                              (_hd299495299803_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299496299799_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299494299806_))
                              (let ((_e299499299809_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299494299806_))))
                                (let ((_tl299497299816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299499299809_)))
                                      (_hd299498299813_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299499299809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd299498299813_))
                                      (let ((_e299500299819_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd299498299813_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e299500299819_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl299497299816_))
                                                (let ((_e299503299823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl299497299816_))))
                                                  (let ((_tl299501299830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e299503299823_)))
                                                        (_hd299502299827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e299503299823_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299501299830_))
                                                        (___kont305865305866_
                                                         _hd299502299827_
                                                         _hd299495299803_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd299495299803_))
                                                            (let ((_e299512299750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd299495299803_))))
                      (declare (not safe))
                      (_g299487299555_))
                    (let () (declare (not safe)) (_g299487299555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd299495299803_))
                                                    (let ((_e299512299750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd299495299803_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e299512299750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299497299816_))
                      (___kont305867305868_ _hd299498299813_ _hd299492299793_)
                      (let () (declare (not safe)) (_g299487299555_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299497299816_))
                      (___kont305871305872_ _hd299498299813_ _hd299495299803_)
                      (let () (declare (not safe)) (_g299487299555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299497299816_))
                                                        (___kont305871305872_
                                                         _hd299498299813_
                                                         _hd299495299803_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299487299555_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd299495299803_))
                                                (let ((_e299512299750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd299495299803_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e299512299750_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299497299816_))
                                                          (___kont305867305868_
                                                           _hd299498299813_
                                                           _hd299492299793_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl299497299816_))
                      (let ((_e299530299693_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299497299816_))))
                        (let ((_tl299528299700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299530299693_)))
                              (_hd299529299697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299530299693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299528299700_))
                              (___kont305869305870_
                               _hd299529299697_
                               _hd299498299813_)
                              (let ()
                                (declare (not safe))
                                (_g299487299555_)))))
                      (let () (declare (not safe)) (_g299487299555_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299497299816_))
                  (___kont305871305872_ _hd299498299813_ _hd299495299803_)
                  (let () (declare (not safe)) (_g299487299555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299497299816_))
                                                    (___kont305871305872_
                                                     _hd299498299813_
                                                     _hd299495299803_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299487299555_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd299495299803_))
                                          (let ((_e299512299750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd299495299803_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e299512299750_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299497299816_))
                                                    (___kont305867305868_
                                                     _hd299498299813_
                                                     _hd299492299793_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl299497299816_))
                                                        (let ((_e299530299693_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl299497299816_))))
                  (let ((_tl299528299700_
                         (let () (declare (not safe)) (##cdr _e299530299693_)))
                        (_hd299529299697_
                         (let ()
                           (declare (not safe))
                           (##car _e299530299693_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl299528299700_))
                        (___kont305869305870_
                         _hd299529299697_
                         _hd299498299813_)
                        (let () (declare (not safe)) (_g299487299555_)))))
                (let () (declare (not safe)) (_g299487299555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299497299816_))
                                                    (___kont305871305872_
                                                     _hd299498299813_
                                                     _hd299495299803_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299487299555_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299497299816_))
                                              (___kont305871305872_
                                               _hd299498299813_
                                               _hd299495299803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g299487299555_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd299495299803_))
                                  (let ((_e299512299750_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd299495299803_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299494299806_))
                                        (___kont305873305874_
                                         _hd299495299803_
                                         _hd299492299793_)
                                        (let ()
                                          (declare (not safe))
                                          (_g299487299555_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299494299806_))
                                      (___kont305873305874_
                                       _hd299495299803_
                                       _hd299492299793_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299487299555_)))))))
                      (let () (declare (not safe)) (_g299487299555_)))))
              (let () (declare (not safe)) (_g299487299555_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299857_)
      (let* ((___stx306002306003_ _$stx299857_)
             (_g299862299917_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306002306003_)))))
        (let ((___kont306005306006_
               (lambda (_L300102_ _L300104_)
                 (let ((__tmp306417
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306402
                        (let ((__tmp306413
                               (let ((__tmp306416
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306414
                                      (let ((__tmp306415
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306415 '()))))
                                 (declare (not safe))
                                 (cons __tmp306416 __tmp306414)))
                              (__tmp306403
                               (let ((__tmp306404
                                      (let ((__tmp306412
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306405
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300102_
                                                  _L300104_))
                                               (let ((__tmp306406
                                                      (lambda (_g300121300125_
                                                               _g300122300128_
                                                               _g300123300130_)
                                                        (let ((__tmp306407
                                                               (let ((__tmp306411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306408
                              (let ((__tmp306409
                                     (let ((__tmp306410
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300121300125_ '()))))
                                       (declare (not safe))
                                       (cons _g300122300128_ __tmp306410))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306409))))
                         (declare (not safe))
                         (cons __tmp306411 __tmp306408))))
                  (declare (not safe))
                  (cons __tmp306407 _g300123300130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306406
                                                         '()
                                                         _L300102_
                                                         _L300104_)))))
                                        (declare (not safe))
                                        (cons __tmp306412 __tmp306405))))
                                 (declare (not safe))
                                 (cons __tmp306404 '()))))
                          (declare (not safe))
                          (cons __tmp306413 __tmp306403))))
                   (declare (not safe))
                   (cons __tmp306417 __tmp306402))))
              (___kont306009306010_
               (lambda (_L299988_ _L299990_)
                 (let ((__tmp306432
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306418
                        (let ((__tmp306428
                               (let ((__tmp306431
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306429
                                      (let ((__tmp306430
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306430 '()))))
                                 (declare (not safe))
                                 (cons __tmp306431 __tmp306429)))
                              (__tmp306419
                               (let ((__tmp306420
                                      (let ((__tmp306427
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306421
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299988_
                                                  _L299990_))
                                               (let ((__tmp306422
                                                      (lambda (_g300005300009_
                                                               _g300006300012_
                                                               _g300007300014_)
                                                        (let ((__tmp306423
                                                               (let ((__tmp306426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306424
                              (let ((__tmp306425
                                     (let ()
                                       (declare (not safe))
                                       (cons _g300005300009_ '()))))
                                (declare (not safe))
                                (cons _g300006300012_ __tmp306425))))
                         (declare (not safe))
                         (cons __tmp306426 __tmp306424))))
                  (declare (not safe))
                  (cons __tmp306423 _g300007300014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306422
                                                         '()
                                                         _L299988_
                                                         _L299990_)))))
                                        (declare (not safe))
                                        (cons __tmp306427 __tmp306421))))
                                 (declare (not safe))
                                 (cons __tmp306420 '()))))
                          (declare (not safe))
                          (cons __tmp306428 __tmp306419))))
                   (declare (not safe))
                   (cons __tmp306432 __tmp306418)))))
          (let* ((___match306053306054_
                  (lambda (_e299894299924_
                           _hd299893299928_
                           _tl299892299931_
                           ___splice306011306012_
                           _target299895299934_
                           _tl299897299937_)
                    (letrec ((_loop299898299940_
                              (lambda (_hd299896299944_
                                       _dispatch299902299947_
                                       _arity299903299949_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299896299944_))
                                    (let ((_e299899299952_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299896299944_))))
                                      (let ((_lp-tl299901299959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299899299952_)))
                                            (_lp-hd299900299956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299899299952_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299900299956_))
                                            (let ((_e299908299962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299900299956_))))
                                              (let ((_tl299906299969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299908299962_)))
                                                    (_hd299907299966_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299908299962_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299906299969_))
                                                    (let ((_e299911299972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299906299969_))))
                                                      (let ((_tl299909299979_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299911299972_)))
                    (_hd299910299976_
                     (let () (declare (not safe)) (##car _e299911299972_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299909299979_))
                    (_loop299898299940_
                     _lp-tl299901299959_
                     (let ()
                       (declare (not safe))
                       (cons _hd299910299976_ _dispatch299902299947_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299907299966_ _arity299903299949_)))
                    (let () (declare (not safe)) (_g299862299917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299862299917_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299862299917_)))))
                                    (let ((_arity299905299985_
                                           (reverse _arity299903299949_))
                                          (_dispatch299904299982_
                                           (reverse _dispatch299902299947_)))
                                      (___kont306009306010_
                                       _dispatch299904299982_
                                       _arity299905299985_))))))
                      (_loop299898299940_ _target299895299934_ '() '()))))
                 (___match306045306046_
                  (lambda (_e299894299924_ _hd299893299928_ _tl299892299931_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299892299931_))
                        (let ((___splice306011306012_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299892299931_
                                  '0))))
                          (let ((_tl299897299937_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306011306012_ '1)))
                                (_target299895299934_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306011306012_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299897299937_))
                                (___match306053306054_
                                 _e299894299924_
                                 _hd299893299928_
                                 _tl299892299931_
                                 ___splice306011306012_
                                 _target299895299934_
                                 _tl299897299937_)
                                (let ()
                                  (declare (not safe))
                                  (_g299862299917_)))))
                        (let () (declare (not safe)) (_g299862299917_)))))
                 (___match306039306040_
                  (lambda (_e299868300024_
                           _hd299867300028_
                           _tl299866300031_
                           _e299871300034_
                           _hd299870300038_
                           _tl299869300041_
                           _e299872300044_
                           ___splice306007306008_
                           _target299873300048_
                           _tl299875300051_)
                    (letrec ((_loop299876300054_
                              (lambda (_hd299874300058_
                                       _dispatch299880300061_
                                       _arity299881300063_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299874300058_))
                                    (let ((_e299877300066_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299874300058_))))
                                      (let ((_lp-tl299879300073_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299877300066_)))
                                            (_lp-hd299878300070_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299877300066_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299878300070_))
                                            (let ((_e299886300076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299878300070_))))
                                              (let ((_tl299884300083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299886300076_)))
                                                    (_hd299885300080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299886300076_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299884300083_))
                                                    (let ((_e299889300086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299884300083_))))
                                                      (let ((_tl299887300093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299889300086_)))
                    (_hd299888300090_
                     (let () (declare (not safe)) (##car _e299889300086_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299887300093_))
                    (_loop299876300054_
                     _lp-tl299879300073_
                     (let ()
                       (declare (not safe))
                       (cons _hd299888300090_ _dispatch299880300061_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299885300080_ _arity299881300063_)))
                    (___match306045306046_
                     _e299868300024_
                     _hd299867300028_
                     _tl299866300031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306045306046_
                                                     _e299868300024_
                                                     _hd299867300028_
                                                     _tl299866300031_))))
                                            (___match306045306046_
                                             _e299868300024_
                                             _hd299867300028_
                                             _tl299866300031_))))
                                    (let ((_arity299883300099_
                                           (reverse _arity299881300063_))
                                          (_dispatch299882300096_
                                           (reverse _dispatch299880300061_)))
                                      (___kont306005306006_
                                       _dispatch299882300096_
                                       _arity299883300099_))))))
                      (_loop299876300054_ _target299873300048_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306002306003_))
                (let ((_e299868300024_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306002306003_))))
                  (let ((_tl299866300031_
                         (let () (declare (not safe)) (##cdr _e299868300024_)))
                        (_hd299867300028_
                         (let ()
                           (declare (not safe))
                           (##car _e299868300024_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299866300031_))
                        (let ((_e299871300034_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299866300031_))))
                          (let ((_tl299869300041_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299871300034_)))
                                (_hd299870300038_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299871300034_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299870300038_))
                                (let ((_e299872300044_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299870300038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299872300044_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299869300041_))
                                          (let ((___splice306007306008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299869300041_
                                                    '0))))
                                            (let ((_tl299875300051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306007306008_
                                                      '1)))
                                                  (_target299873300048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306007306008_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299875300051_))
                                                  (___match306039306040_
                                                   _e299868300024_
                                                   _hd299867300028_
                                                   _tl299866300031_
                                                   _e299871300034_
                                                   _hd299870300038_
                                                   _tl299869300041_
                                                   _e299872300044_
                                                   ___splice306007306008_
                                                   _target299873300048_
                                                   _tl299875300051_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299866300031_))
                                                      (let ((___splice306011306012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299866300031_ '0))))
                (let ((_tl299897299937_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306011306012_ '1)))
                      (_target299895299934_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306011306012_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299897299937_))
                      (___match306053306054_
                       _e299868300024_
                       _hd299867300028_
                       _tl299866300031_
                       ___splice306011306012_
                       _target299895299934_
                       _tl299897299937_)
                      (let () (declare (not safe)) (_g299862299917_)))))
              (let () (declare (not safe)) (_g299862299917_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299866300031_))
                                              (let ((___splice306011306012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299866300031_
                                                        '0))))
                                                (let ((_tl299897299937_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306011306012_
                                                          '1)))
                                                      (_target299895299934_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306011306012_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299897299937_))
                                                      (___match306053306054_
                                                       _e299868300024_
                                                       _hd299867300028_
                                                       _tl299866300031_
                                                       ___splice306011306012_
                                                       _target299895299934_
                                                       _tl299897299937_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299862299917_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299862299917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299866300031_))
                                          (let ((___splice306011306012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299866300031_
                                                    '0))))
                                            (let ((_tl299897299937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306011306012_
                                                      '1)))
                                                  (_target299895299934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306011306012_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299897299937_))
                                                  (___match306053306054_
                                                   _e299868300024_
                                                   _hd299867300028_
                                                   _tl299866300031_
                                                   ___splice306011306012_
                                                   _target299895299934_
                                                   _tl299897299937_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299862299917_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299862299917_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299866300031_))
                                    (let ((___splice306011306012_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299866300031_
                                              '0))))
                                      (let ((_tl299897299937_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306011306012_
                                                '1)))
                                            (_target299895299934_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306011306012_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299897299937_))
                                            (___match306053306054_
                                             _e299868300024_
                                             _hd299867300028_
                                             _tl299866300031_
                                             ___splice306011306012_
                                             _target299895299934_
                                             _tl299897299937_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299862299917_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299862299917_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299866300031_))
                            (let ((___splice306011306012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299866300031_
                                      '0))))
                              (let ((_tl299897299937_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306011306012_
                                        '1)))
                                    (_target299895299934_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306011306012_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299897299937_))
                                    (___match306053306054_
                                     _e299868300024_
                                     _hd299867300028_
                                     _tl299866300031_
                                     ___splice306011306012_
                                     _target299895299934_
                                     _tl299897299937_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299862299917_)))))
                            (let () (declare (not safe)) (_g299862299917_))))))
                (let () (declare (not safe)) (_g299862299917_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300139_)
      (let* ((_g300143300161_
              (lambda (_g300144300157_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300144300157_))))
             (_g300142300216_
              (lambda (_g300144300165_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300144300165_))
                    (let ((_e300149300168_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300144300165_))))
                      (let ((_hd300148300172_
                             (let ()
                               (declare (not safe))
                               (##car _e300149300168_)))
                            (_tl300147300175_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300149300168_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300147300175_))
                            (let ((_e300152300178_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300147300175_))))
                              (let ((_hd300151300182_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300152300178_)))
                                    (_tl300150300185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300152300178_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300150300185_))
                                    (let ((_e300155300188_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300150300185_))))
                                      (let ((_hd300154300192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300155300188_)))
                                            (_tl300153300195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300155300188_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300153300195_))
                                            ((lambda (_L300198_ _L300200_)
                                               (let ((__tmp306446
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306433
                                                      (let ((__tmp306442
                                                             (let ((__tmp306445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306443
                            (let ((__tmp306444
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306444 '()))))
                       (declare (not safe))
                       (cons __tmp306445 __tmp306443)))
                    (__tmp306434
                     (let ((__tmp306439
                            (let ((__tmp306441
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306440
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300200_ '()))))
                              (declare (not safe))
                              (cons __tmp306441 __tmp306440)))
                           (__tmp306435
                            (let ((__tmp306436
                                   (let ((__tmp306438
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306437
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300198_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306438 __tmp306437))))
                              (declare (not safe))
                              (cons __tmp306436 '()))))
                       (declare (not safe))
                       (cons __tmp306439 __tmp306435))))
                (declare (not safe))
                (cons __tmp306442 __tmp306434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306446
                                                       __tmp306433)))
                                             _hd300154300192_
                                             _hd300151300182_)
                                            (_g300143300161_
                                             _g300144300165_))))
                                    (_g300143300161_ _g300144300165_))))
                            (_g300143300161_ _g300144300165_))))
                    (_g300143300161_ _g300144300165_)))))
        (_g300142300216_ _$stx300139_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300220_)
      (let* ((_g300224300242_
              (lambda (_g300225300238_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300225300238_))))
             (_g300223300297_
              (lambda (_g300225300246_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300225300246_))
                    (let ((_e300230300249_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300225300246_))))
                      (let ((_hd300229300253_
                             (let ()
                               (declare (not safe))
                               (##car _e300230300249_)))
                            (_tl300228300256_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300230300249_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300228300256_))
                            (let ((_e300233300259_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300228300256_))))
                              (let ((_hd300232300263_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300233300259_)))
                                    (_tl300231300266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300233300259_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300231300266_))
                                    (let ((_e300236300269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300231300266_))))
                                      (let ((_hd300235300273_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300236300269_)))
                                            (_tl300234300276_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300236300269_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300234300276_))
                                            ((lambda (_L300279_ _L300281_)
                                               (let ((__tmp306460
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306447
                                                      (let ((__tmp306456
                                                             (let ((__tmp306459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306457
                            (let ((__tmp306458
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306458 '()))))
                       (declare (not safe))
                       (cons __tmp306459 __tmp306457)))
                    (__tmp306448
                     (let ((__tmp306453
                            (let ((__tmp306455
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306454
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300281_ '()))))
                              (declare (not safe))
                              (cons __tmp306455 __tmp306454)))
                           (__tmp306449
                            (let ((__tmp306450
                                   (let ((__tmp306452
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306451
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300279_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306452 __tmp306451))))
                              (declare (not safe))
                              (cons __tmp306450 '()))))
                       (declare (not safe))
                       (cons __tmp306453 __tmp306449))))
                (declare (not safe))
                (cons __tmp306456 __tmp306448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306460
                                                       __tmp306447)))
                                             _hd300235300273_
                                             _hd300232300263_)
                                            (_g300224300242_
                                             _g300225300246_))))
                                    (_g300224300242_ _g300225300246_))))
                            (_g300224300242_ _g300225300246_))))
                    (_g300224300242_ _g300225300246_)))))
        (_g300223300297_ _$stx300220_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300301_)
      (let* ((___stx306056306057_ _$stx300301_)
             (_g300308300379_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306056306057_)))))
        (let ((___kont306059306060_
               (lambda (_L300670_ _L300672_)
                 (let ((__tmp306466
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306461
                        (let ((__tmp306462
                               (let ((__tmp306463
                                      (let ((__tmp306465
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306464
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300670_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306465 __tmp306464))))
                                 (declare (not safe))
                                 (cons __tmp306463 '()))))
                          (declare (not safe))
                          (cons _L300672_ __tmp306462))))
                   (declare (not safe))
                   (cons __tmp306466 __tmp306461))))
              (___kont306061306062_
               (lambda (_L300589_ _L300591_)
                 (let ((__tmp306475
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306467
                        (let ((__tmp306468
                               (let ((__tmp306469
                                      (let ((__tmp306474
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306470
                                             (let ((__tmp306471
                                                    (lambda (_g300610300613_
                                                             _g300611300616_)
                                                      (let ((__tmp306472
                                                             (let ((__tmp306473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300610300613_ __tmp306473))))
                (declare (not safe))
                (cons __tmp306472 _g300611300616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306471
                                                       '()
                                                       _L300589_))))
                                        (declare (not safe))
                                        (cons __tmp306474 __tmp306470))))
                                 (declare (not safe))
                                 (cons __tmp306469 '()))))
                          (declare (not safe))
                          (cons _L300591_ __tmp306468))))
                   (declare (not safe))
                   (cons __tmp306475 __tmp306467))))
              (___kont306065306066_
               (lambda (_L300501_ _L300503_)
                 (let ((__tmp306482
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306476
                        (let ((__tmp306477
                               (let ((__tmp306478
                                      (let ((__tmp306481
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306479
                                             (let ((__tmp306480
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300501_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306480))))
                                        (declare (not safe))
                                        (cons __tmp306481 __tmp306479))))
                                 (declare (not safe))
                                 (cons __tmp306478 '()))))
                          (declare (not safe))
                          (cons _L300503_ __tmp306477))))
                   (declare (not safe))
                   (cons __tmp306482 __tmp306476))))
              (___kont306067306068_
               (lambda (_L300436_ _L300438_)
                 (let ((__tmp306492
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306483
                        (let ((__tmp306484
                               (let ((__tmp306485
                                      (let ((__tmp306491
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306486
                                             (let ((__tmp306487
                                                    (let ((__tmp306488
                                                           (lambda (_g300455300458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g300456300461_)
                     (let ((__tmp306489
                            (let ((__tmp306490
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g300455300458_ __tmp306490))))
                       (declare (not safe))
                       (cons __tmp306489 _g300456300461_)))))
              (declare (not safe))
              (foldr1 __tmp306488 '() _L300436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306487))))
                                        (declare (not safe))
                                        (cons __tmp306491 __tmp306486))))
                                 (declare (not safe))
                                 (cons __tmp306485 '()))))
                          (declare (not safe))
                          (cons _L300438_ __tmp306484))))
                   (declare (not safe))
                   (cons __tmp306492 __tmp306483)))))
          (let* ((___match306175306176_
                  (lambda (_e300361300386_
                           _hd300360300390_
                           _tl300359300393_
                           _e300364300396_
                           _hd300363300400_
                           _tl300362300403_
                           ___splice306069306070_
                           _target300365300406_
                           _tl300367300409_)
                    (letrec ((_loop300368300412_
                              (lambda (_hd300366300416_ _arity300372300419_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300366300416_))
                                    (let ((_e300369300422_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300366300416_))))
                                      (let ((_lp-tl300371300429_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300369300422_)))
                                            (_lp-hd300370300426_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300369300422_))))
                                        (_loop300368300412_
                                         _lp-tl300371300429_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300370300426_
                                                 _arity300372300419_)))))
                                    (let ((_arity300373300432_
                                           (reverse _arity300372300419_)))
                                      (___kont306067306068_
                                       _arity300373300432_
                                       _hd300363300400_))))))
                      (_loop300368300412_ _target300365300406_ '()))))
                 (___match306135306136_
                  (lambda (_e300329300525_
                           _hd300328300529_
                           _tl300327300532_
                           _e300332300535_
                           _hd300331300539_
                           _tl300330300542_
                           _e300335300545_
                           _hd300334300549_
                           _tl300333300552_
                           _e300336300555_
                           ___splice306063306064_
                           _target300337300559_
                           _tl300339300562_)
                    (letrec ((_loop300340300565_
                              (lambda (_hd300338300569_ _arity300344300572_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300338300569_))
                                    (let ((_e300341300575_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300338300569_))))
                                      (let ((_lp-tl300343300582_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300341300575_)))
                                            (_lp-hd300342300579_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300341300575_))))
                                        (_loop300340300565_
                                         _lp-tl300343300582_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300342300579_
                                                 _arity300344300572_)))))
                                    (let ((_arity300345300585_
                                           (reverse _arity300344300572_)))
                                      (___kont306061306062_
                                       _arity300345300585_
                                       _hd300331300539_))))))
                      (_loop300340300565_ _target300337300559_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306056306057_))
                (let ((_e300314300626_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306056306057_))))
                  (let ((_tl300312300633_
                         (let () (declare (not safe)) (##cdr _e300314300626_)))
                        (_hd300313300630_
                         (let ()
                           (declare (not safe))
                           (##car _e300314300626_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300312300633_))
                        (let ((_e300317300636_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300312300633_))))
                          (let ((_tl300315300643_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300317300636_)))
                                (_hd300316300640_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300317300636_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300315300643_))
                                (let ((_e300320300646_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300315300643_))))
                                  (let ((_tl300318300653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300320300646_)))
                                        (_hd300319300650_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300320300646_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300319300650_))
                                        (let ((_e300321300656_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300319300650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300321300656_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300318300653_))
                                                  (let ((_e300324300660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300318300653_))))
                                                    (let ((_tl300322300667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300324300660_)))
                                                          (_hd300323300664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300324300660_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300322300667_))
                                                          (___kont306059306060_
                                                           _hd300323300664_
                                                           _hd300316300640_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300318300653_))
                      (let ((___splice306063306064_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300318300653_ '0))))
                        (let ((_tl300339300562_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306063306064_ '1)))
                              (_target300337300559_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306063306064_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300339300562_))
                              (___match306135306136_
                               _e300314300626_
                               _hd300313300630_
                               _tl300312300633_
                               _e300317300636_
                               _hd300316300640_
                               _tl300315300643_
                               _e300320300646_
                               _hd300319300650_
                               _tl300318300653_
                               _e300321300656_
                               ___splice306063306064_
                               _target300337300559_
                               _tl300339300562_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300315300643_))
                                  (let ((___splice306069306070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300315300643_
                                            '0))))
                                    (let ((_tl300367300409_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306069306070_
                                              '1)))
                                          (_target300365300406_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306069306070_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300367300409_))
                                          (___match306175306176_
                                           _e300314300626_
                                           _hd300313300630_
                                           _tl300312300633_
                                           _e300317300636_
                                           _hd300316300640_
                                           _tl300315300643_
                                           ___splice306069306070_
                                           _target300365300406_
                                           _tl300367300409_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300308300379_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300308300379_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300315300643_))
                          (let ((___splice306069306070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300315300643_
                                    '0))))
                            (let ((_tl300367300409_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306069306070_ '1)))
                                  (_target300365300406_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306069306070_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300367300409_))
                                  (___match306175306176_
                                   _e300314300626_
                                   _hd300313300630_
                                   _tl300312300633_
                                   _e300317300636_
                                   _hd300316300640_
                                   _tl300315300643_
                                   ___splice306069306070_
                                   _target300365300406_
                                   _tl300367300409_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300308300379_)))))
                          (let () (declare (not safe)) (_g300308300379_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300318300653_))
                                                      (let ((___splice306063306064_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300318300653_ '0))))
                (let ((_tl300339300562_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306063306064_ '1)))
                      (_target300337300559_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306063306064_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300339300562_))
                      (___match306135306136_
                       _e300314300626_
                       _hd300313300630_
                       _tl300312300633_
                       _e300317300636_
                       _hd300316300640_
                       _tl300315300643_
                       _e300320300646_
                       _hd300319300650_
                       _tl300318300653_
                       _e300321300656_
                       ___splice306063306064_
                       _target300337300559_
                       _tl300339300562_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300318300653_))
                          (___kont306065306066_
                           _hd300319300650_
                           _hd300316300640_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300315300643_))
                              (let ((___splice306069306070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300315300643_
                                        '0))))
                                (let ((_tl300367300409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306069306070_
                                          '1)))
                                      (_target300365300406_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306069306070_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300367300409_))
                                      (___match306175306176_
                                       _e300314300626_
                                       _hd300313300630_
                                       _tl300312300633_
                                       _e300317300636_
                                       _hd300316300640_
                                       _tl300315300643_
                                       ___splice306069306070_
                                       _target300365300406_
                                       _tl300367300409_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300308300379_)))))
                              (let ()
                                (declare (not safe))
                                (_g300308300379_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300318300653_))
                  (___kont306065306066_ _hd300319300650_ _hd300316300640_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300315300643_))
                      (let ((___splice306069306070_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300315300643_ '0))))
                        (let ((_tl300367300409_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306069306070_ '1)))
                              (_target300365300406_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306069306070_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300367300409_))
                              (___match306175306176_
                               _e300314300626_
                               _hd300313300630_
                               _tl300312300633_
                               _e300317300636_
                               _hd300316300640_
                               _tl300315300643_
                               ___splice306069306070_
                               _target300365300406_
                               _tl300367300409_)
                              (let ()
                                (declare (not safe))
                                (_g300308300379_)))))
                      (let () (declare (not safe)) (_g300308300379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300318300653_))
                                                  (___kont306065306066_
                                                   _hd300319300650_
                                                   _hd300316300640_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300315300643_))
                                                      (let ((___splice306069306070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300315300643_ '0))))
                (let ((_tl300367300409_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306069306070_ '1)))
                      (_target300365300406_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306069306070_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300367300409_))
                      (___match306175306176_
                       _e300314300626_
                       _hd300313300630_
                       _tl300312300633_
                       _e300317300636_
                       _hd300316300640_
                       _tl300315300643_
                       ___splice306069306070_
                       _target300365300406_
                       _tl300367300409_)
                      (let () (declare (not safe)) (_g300308300379_)))))
              (let () (declare (not safe)) (_g300308300379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300318300653_))
                                            (___kont306065306066_
                                             _hd300319300650_
                                             _hd300316300640_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300315300643_))
                                                (let ((___splice306069306070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300315300643_
                                                          '0))))
                                                  (let ((_tl300367300409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306069306070_
                                                            '1)))
                                                        (_target300365300406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306069306070_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300367300409_))
                                                        (___match306175306176_
                                                         _e300314300626_
                                                         _hd300313300630_
                                                         _tl300312300633_
                                                         _e300317300636_
                                                         _hd300316300640_
                                                         _tl300315300643_
                                                         ___splice306069306070_
                                                         _target300365300406_
                                                         _tl300367300409_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300308300379_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300308300379_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300315300643_))
                                    (let ((___splice306069306070_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300315300643_
                                              '0))))
                                      (let ((_tl300367300409_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306069306070_
                                                '1)))
                                            (_target300365300406_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306069306070_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300367300409_))
                                            (___match306175306176_
                                             _e300314300626_
                                             _hd300313300630_
                                             _tl300312300633_
                                             _e300317300636_
                                             _hd300316300640_
                                             _tl300315300643_
                                             ___splice306069306070_
                                             _target300365300406_
                                             _tl300367300409_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300308300379_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300308300379_))))))
                        (let () (declare (not safe)) (_g300308300379_)))))
                (let () (declare (not safe)) (_g300308300379_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300696_)
      (let* ((___stx306178306179_ _$stx300696_)
             (_g300701300736_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306178306179_)))))
        (let ((___kont306181306182_
               (lambda (_L300858_ _L300860_)
                 (let ((__tmp306498
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306493
                        (let ((__tmp306494
                               (let ((__tmp306495
                                      (let ((__tmp306497
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306496
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300858_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306497 __tmp306496))))
                                 (declare (not safe))
                                 (cons __tmp306495 '()))))
                          (declare (not safe))
                          (cons _L300860_ __tmp306494))))
                   (declare (not safe))
                   (cons __tmp306498 __tmp306493))))
              (___kont306183306184_
               (lambda (_L300793_ _L300795_)
                 (let ((__tmp306507
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306499
                        (let ((__tmp306500
                               (let ((__tmp306501
                                      (let ((__tmp306506
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306502
                                             (let ((__tmp306503
                                                    (lambda (_g300812300815_
                                                             _g300813300818_)
                                                      (let ((__tmp306504
                                                             (let ((__tmp306505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300812300815_ __tmp306505))))
                (declare (not safe))
                (cons __tmp306504 _g300813300818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306503
                                                       '()
                                                       _L300793_))))
                                        (declare (not safe))
                                        (cons __tmp306506 __tmp306502))))
                                 (declare (not safe))
                                 (cons __tmp306501 '()))))
                          (declare (not safe))
                          (cons _L300795_ __tmp306500))))
                   (declare (not safe))
                   (cons __tmp306507 __tmp306499)))))
          (let ((___match306227306228_
                 (lambda (_e300718300743_
                          _hd300717300747_
                          _tl300716300750_
                          _e300721300753_
                          _hd300720300757_
                          _tl300719300760_
                          ___splice306185306186_
                          _target300722300763_
                          _tl300724300766_)
                   (letrec ((_loop300725300769_
                             (lambda (_hd300723300773_ _arity300729300776_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300723300773_))
                                   (let ((_e300726300779_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300723300773_))))
                                     (let ((_lp-tl300728300786_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300726300779_)))
                                           (_lp-hd300727300783_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300726300779_))))
                                       (_loop300725300769_
                                        _lp-tl300728300786_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300727300783_
                                                _arity300729300776_)))))
                                   (let ((_arity300730300789_
                                          (reverse _arity300729300776_)))
                                     (___kont306183306184_
                                      _arity300730300789_
                                      _hd300720300757_))))))
                     (_loop300725300769_ _target300722300763_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306178306179_))
                (let ((_e300707300828_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306178306179_))))
                  (let ((_tl300705300835_
                         (let () (declare (not safe)) (##cdr _e300707300828_)))
                        (_hd300706300832_
                         (let ()
                           (declare (not safe))
                           (##car _e300707300828_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300705300835_))
                        (let ((_e300710300838_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300705300835_))))
                          (let ((_tl300708300845_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300710300838_)))
                                (_hd300709300842_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300710300838_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300708300845_))
                                (let ((_e300713300848_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300708300845_))))
                                  (let ((_tl300711300855_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300713300848_)))
                                        (_hd300712300852_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300713300848_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300711300855_))
                                        (___kont306181306182_
                                         _hd300712300852_
                                         _hd300709300842_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300708300845_))
                                            (let ((___splice306185306186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300708300845_
                                                      '0))))
                                              (let ((_tl300724300766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306185306186_
                                                        '1)))
                                                    (_target300722300763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306185306186_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300724300766_))
                                                    (___match306227306228_
                                                     _e300707300828_
                                                     _hd300706300832_
                                                     _tl300705300835_
                                                     _e300710300838_
                                                     _hd300709300842_
                                                     _tl300708300845_
                                                     ___splice306185306186_
                                                     _target300722300763_
                                                     _tl300724300766_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300701300736_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300701300736_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300708300845_))
                                    (let ((___splice306185306186_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300708300845_
                                              '0))))
                                      (let ((_tl300724300766_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306185306186_
                                                '1)))
                                            (_target300722300763_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306185306186_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300724300766_))
                                            (___match306227306228_
                                             _e300707300828_
                                             _hd300706300832_
                                             _tl300705300835_
                                             _e300710300838_
                                             _hd300709300842_
                                             _tl300708300845_
                                             ___splice306185306186_
                                             _target300722300763_
                                             _tl300724300766_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300701300736_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300701300736_))))))
                        (let () (declare (not safe)) (_g300701300736_)))))
                (let () (declare (not safe)) (_g300701300736_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300880_)
      (let* ((_g300884300919_
              (lambda (_g300885300915_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300885300915_))))
             (_g300883301047_
              (lambda (_g300885300923_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300885300923_))
                    (let ((_e300890300926_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300885300923_))))
                      (let ((_hd300889300930_
                             (let ()
                               (declare (not safe))
                               (##car _e300890300926_)))
                            (_tl300888300933_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300890300926_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300888300933_))
                            (let ((_g306508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300888300933_
                                      '0))))
                              (begin
                                (let ((_g306509_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306508_)
                                             (##vector-length _g306508_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306509_ 2)))
                                      (error "Context expects 2 values"
                                             _g306509_)))
                                (let ((_target300891300936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306508_ 0)))
                                      (_tl300893300939_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306508_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300893300939_))
                                      (letrec ((_loop300894300942_
                                                (lambda (_hd300892300946_
                                                         _arity300898300949_
                                                         _prim300899300951_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300892300946_))
                                                      (let ((_e300895300954_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300892300946_))))
                (let ((_lp-hd300896300958_
                       (let () (declare (not safe)) (##car _e300895300954_)))
                      (_lp-tl300897300961_
                       (let () (declare (not safe)) (##cdr _e300895300954_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300896300958_))
                      (let ((_e300904300964_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300896300958_))))
                        (let ((_hd300903300968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300904300964_)))
                              (_tl300902300971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300904300964_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300902300971_))
                              (let ((_g306518_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300902300971_
                                        '0))))
                                (begin
                                  (let ((_g306519_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306518_)
                                               (##vector-length _g306518_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306519_ 2)))
                                        (error "Context expects 2 values"
                                               _g306519_)))
                                  (let ((_target300905300974_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306518_ 0)))
                                        (_tl300907300977_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306518_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300907300977_))
                                        (letrec ((_loop300908300980_
                                                  (lambda (_hd300906300984_
                                                           _arity300912300987_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300906300984_))
                                                        (let ((_e300909300990_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300906300984_))))
                  (let ((_lp-hd300910300994_
                         (let () (declare (not safe)) (##car _e300909300990_)))
                        (_lp-tl300911300997_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300909300990_))))
                    (_loop300908300980_
                     _lp-tl300911300997_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300910300994_ _arity300912300987_)))))
                (let ((_arity300913301000_ (reverse _arity300912300987_)))
                  (_loop300894300942_
                   _lp-tl300897300961_
                   (let ()
                     (declare (not safe))
                     (cons _arity300913301000_ _arity300898300949_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300903300968_ _prim300899300951_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300908300980_
                                           _target300905300974_
                                           '()))
                                        (_g300884300919_ _g300885300923_)))))
                              (_g300884300919_ _g300885300923_))))
                      (_g300884300919_ _g300885300923_))))
              (let ((_arity300900301004_ (reverse _arity300898300949_))
                    (_prim300901301007_ (reverse _prim300899300951_)))
                ((lambda (_L301010_ _L301012_)
                   (let ((__tmp306517
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306510
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301010_
                               _L301012_))
                            (let ((__tmp306511
                                   (lambda (_g301027301033_
                                            _g301028301036_
                                            _g301029301038_)
                                     (let ((__tmp306512
                                            (let ((__tmp306516
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306513
                                                   (let ((__tmp306514
                                                          (let ((__tmp306515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301030301041_ _g301031301044_)
                           (let ()
                             (declare (not safe))
                             (cons _g301030301041_ _g301031301044_)))))
                    (declare (not safe))
                    (foldr1 __tmp306515 '() _g301027301033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301028301036_
                                                           __tmp306514))))
                                              (declare (not safe))
                                              (cons __tmp306516 __tmp306513))))
                                       (declare (not safe))
                                       (cons __tmp306512 _g301029301038_)))))
                              (declare (not safe))
                              (foldr2 __tmp306511 '() _L301010_ _L301012_)))))
                     (declare (not safe))
                     (cons __tmp306517 __tmp306510)))
                 _arity300900301004_
                 _prim300901301007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300894300942_
                                         _target300891300936_
                                         '()
                                         '()))
                                      (_g300884300919_ _g300885300923_)))))
                            (_g300884300919_ _g300885300923_))))
                    (_g300884300919_ _g300885300923_)))))
        (_g300883301047_ _$stx300880_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301053_)
      (let* ((_g301057301092_
              (lambda (_g301058301088_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301058301088_))))
             (_g301056301220_
              (lambda (_g301058301096_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301058301096_))
                    (let ((_e301063301099_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301058301096_))))
                      (let ((_hd301062301103_
                             (let ()
                               (declare (not safe))
                               (##car _e301063301099_)))
                            (_tl301061301106_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301063301099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301061301106_))
                            (let ((_g306520_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301061301106_
                                      '0))))
                              (begin
                                (let ((_g306521_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306520_)
                                             (##vector-length _g306520_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306521_ 2)))
                                      (error "Context expects 2 values"
                                             _g306521_)))
                                (let ((_target301064301109_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306520_ 0)))
                                      (_tl301066301112_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306520_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301066301112_))
                                      (letrec ((_loop301067301115_
                                                (lambda (_hd301065301119_
                                                         _arity301071301122_
                                                         _prim301072301124_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301065301119_))
                                                      (let ((_e301068301127_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301065301119_))))
                (let ((_lp-hd301069301131_
                       (let () (declare (not safe)) (##car _e301068301127_)))
                      (_lp-tl301070301134_
                       (let () (declare (not safe)) (##cdr _e301068301127_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301069301131_))
                      (let ((_e301077301137_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301069301131_))))
                        (let ((_hd301076301141_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301077301137_)))
                              (_tl301075301144_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301077301137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301075301144_))
                              (let ((_g306530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301075301144_
                                        '0))))
                                (begin
                                  (let ((_g306531_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306530_)
                                               (##vector-length _g306530_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306531_ 2)))
                                        (error "Context expects 2 values"
                                               _g306531_)))
                                  (let ((_target301078301147_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306530_ 0)))
                                        (_tl301080301150_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306530_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301080301150_))
                                        (letrec ((_loop301081301153_
                                                  (lambda (_hd301079301157_
                                                           _arity301085301160_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301079301157_))
                                                        (let ((_e301082301163_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301079301157_))))
                  (let ((_lp-hd301083301167_
                         (let () (declare (not safe)) (##car _e301082301163_)))
                        (_lp-tl301084301170_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301082301163_))))
                    (_loop301081301153_
                     _lp-tl301084301170_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301083301167_ _arity301085301160_)))))
                (let ((_arity301086301173_ (reverse _arity301085301160_)))
                  (_loop301067301115_
                   _lp-tl301070301134_
                   (let ()
                     (declare (not safe))
                     (cons _arity301086301173_ _arity301071301122_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301076301141_ _prim301072301124_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301081301153_
                                           _target301078301147_
                                           '()))
                                        (_g301057301092_ _g301058301096_)))))
                              (_g301057301092_ _g301058301096_))))
                      (_g301057301092_ _g301058301096_))))
              (let ((_arity301073301177_ (reverse _arity301071301122_))
                    (_prim301074301180_ (reverse _prim301072301124_)))
                ((lambda (_L301183_ _L301185_)
                   (let ((__tmp306529
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306522
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301183_
                               _L301185_))
                            (let ((__tmp306523
                                   (lambda (_g301200301206_
                                            _g301201301209_
                                            _g301202301211_)
                                     (let ((__tmp306524
                                            (let ((__tmp306528
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306525
                                                   (let ((__tmp306526
                                                          (let ((__tmp306527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301203301214_ _g301204301217_)
                           (let ()
                             (declare (not safe))
                             (cons _g301203301214_ _g301204301217_)))))
                    (declare (not safe))
                    (foldr1 __tmp306527 '() _g301200301206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301201301209_
                                                           __tmp306526))))
                                              (declare (not safe))
                                              (cons __tmp306528 __tmp306525))))
                                       (declare (not safe))
                                       (cons __tmp306524 _g301202301211_)))))
                              (declare (not safe))
                              (foldr2 __tmp306523 '() _L301183_ _L301185_)))))
                     (declare (not safe))
                     (cons __tmp306529 __tmp306522)))
                 _arity301073301177_
                 _prim301074301180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301067301115_
                                         _target301064301109_
                                         '()
                                         '()))
                                      (_g301057301092_ _g301058301096_)))))
                            (_g301057301092_ _g301058301096_))))
                    (_g301057301092_ _g301058301096_)))))
        (_g301056301220_ _$stx301053_)))))
