(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298121_)
      (let* ((_g298125298143_
              (lambda (_g298126298139_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298126298139_))))
             (_g298124298198_
              (lambda (_g298126298147_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298126298147_))
                    (let ((_e298131298150_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298126298147_))))
                      (let ((_hd298130298154_
                             (let ()
                               (declare (not safe))
                               (##car _e298131298150_)))
                            (_tl298129298157_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298131298150_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298129298157_))
                            (let ((_e298134298160_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298129298157_))))
                              (let ((_hd298133298164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298134298160_)))
                                    (_tl298132298167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298134298160_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298132298167_))
                                    (let ((_e298137298170_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298132298167_))))
                                      (let ((_hd298136298174_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298137298170_)))
                                            (_tl298135298177_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298137298170_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298135298177_))
                                            ((lambda (_L298180_ _L298182_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298182_))
                                                   (let ((__tmp306230
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306225
                                                          (let ((__tmp306227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306229
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306228
                                (let ()
                                  (declare (not safe))
                                  (cons _L298182_ '()))))
                           (declare (not safe))
                           (cons __tmp306229 __tmp306228)))
                        (__tmp306226
                         (let () (declare (not safe)) (cons _L298180_ '()))))
                    (declare (not safe))
                    (cons __tmp306227 __tmp306226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306230
                                                           __tmp306225))
                                                   (_g298125298143_
                                                    _g298126298147_)))
                                             _hd298136298174_
                                             _hd298133298164_)
                                            (_g298125298143_
                                             _g298126298147_))))
                                    (_g298125298143_ _g298126298147_))))
                            (_g298125298143_ _g298126298147_))))
                    (_g298125298143_ _g298126298147_)))))
        (_g298124298198_ _$stx298121_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298202_)
      (let* ((_g298206298235_
              (lambda (_g298207298231_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298207298231_))))
             (_g298205298335_
              (lambda (_g298207298239_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298207298239_))
                    (let ((_e298212298242_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298207298239_))))
                      (let ((_hd298211298246_
                             (let ()
                               (declare (not safe))
                               (##car _e298212298242_)))
                            (_tl298210298249_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298212298242_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298210298249_))
                            (let ((_g306231_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298210298249_
                                      '0))))
                              (begin
                                (let ((_g306232_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306231_)
                                             (##vector-length _g306231_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306232_ 2)))
                                      (error "Context expects 2 values"
                                             _g306232_)))
                                (let ((_target298213298252_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306231_ 0)))
                                      (_tl298215298255_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306231_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298215298255_))
                                      (letrec ((_loop298216298258_
                                                (lambda (_hd298214298262_
                                                         _type298220298265_
                                                         _symbol298221298267_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298214298262_))
                                                      (let ((_e298217298270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298214298262_))))
                (let ((_lp-hd298218298274_
                       (let () (declare (not safe)) (##car _e298217298270_)))
                      (_lp-tl298219298277_
                       (let () (declare (not safe)) (##cdr _e298217298270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298218298274_))
                      (let ((_e298226298280_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298218298274_))))
                        (let ((_hd298225298284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298226298280_)))
                              (_tl298224298287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298226298280_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298224298287_))
                              (let ((_e298229298290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298224298287_))))
                                (let ((_hd298228298294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298229298290_)))
                                      (_tl298227298297_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298229298290_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298227298297_))
                                      (_loop298216298258_
                                       _lp-tl298219298277_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298228298294_
                                               _type298220298265_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298225298284_
                                               _symbol298221298267_)))
                                      (_g298206298235_ _g298207298239_))))
                              (_g298206298235_ _g298207298239_))))
                      (_g298206298235_ _g298207298239_))))
              (let ((_type298222298300_ (reverse _type298220298265_))
                    (_symbol298223298303_ (reverse _symbol298221298267_)))
                ((lambda (_L298306_ _L298308_)
                   (let ((__tmp306239
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306233
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298306_
                               _L298308_))
                            (let ((__tmp306234
                                   (lambda (_g298323298327_
                                            _g298324298330_
                                            _g298325298332_)
                                     (let ((__tmp306235
                                            (let ((__tmp306238
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306236
                                                   (let ((__tmp306237
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298323298327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298324298330_
                                                           __tmp306237))))
                                              (declare (not safe))
                                              (cons __tmp306238 __tmp306236))))
                                       (declare (not safe))
                                       (cons __tmp306235 _g298325298332_)))))
                              (declare (not safe))
                              (foldr2 __tmp306234 '() _L298306_ _L298308_)))))
                     (declare (not safe))
                     (cons __tmp306239 __tmp306233)))
                 _type298222298300_
                 _symbol298223298303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298216298258_
                                         _target298213298252_
                                         '()
                                         '()))
                                      (_g298206298235_ _g298207298239_)))))
                            (_g298206298235_ _g298207298239_))))
                    (_g298206298235_ _g298207298239_)))))
        (_g298205298335_ _$stx298202_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298340_)
      (let* ((___stx305790305791_ _$stx298340_)
             (_g298345298387_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305790305791_)))))
        (let ((___kont305793305794_
               (lambda (_L298515_ _L298517_ _L298518_ _L298519_)
                 (let ((__tmp306253
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306240
                        (let ((__tmp306250
                               (let ((__tmp306252
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306251
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298519_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306252 __tmp306251)))
                              (__tmp306241
                               (let ((__tmp306247
                                      (let ((__tmp306249
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306248
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298518_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306249 __tmp306248)))
                                     (__tmp306242
                                      (let ((__tmp306244
                                             (let ((__tmp306246
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306245
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298517_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306246 __tmp306245)))
                                            (__tmp306243
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298515_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306244 __tmp306243))))
                                 (declare (not safe))
                                 (cons __tmp306247 __tmp306242))))
                          (declare (not safe))
                          (cons __tmp306250 __tmp306241))))
                   (declare (not safe))
                   (cons __tmp306253 __tmp306240))))
              (___kont305795305796_
               (lambda (_L298434_ _L298436_ _L298437_ _L298438_)
                 (let ((__tmp306254
                        (let ((__tmp306255
                               (let ((__tmp306256
                                      (let ((__tmp306257
                                             (let ((__tmp306258
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306258 '()))))
                                        (declare (not safe))
                                        (cons _L298434_ __tmp306257))))
                                 (declare (not safe))
                                 (cons _L298436_ __tmp306256))))
                          (declare (not safe))
                          (cons _L298437_ __tmp306255))))
                   (declare (not safe))
                   (cons _L298438_ __tmp306254)))))
          (let ((___match305829305830_
                 (lambda (_e298353298465_
                          _hd298352298469_
                          _tl298351298472_
                          _e298356298475_
                          _hd298355298479_
                          _tl298354298482_
                          _e298359298485_
                          _hd298358298489_
                          _tl298357298492_
                          _e298362298495_
                          _hd298361298499_
                          _tl298360298502_
                          _e298365298505_
                          _hd298364298509_
                          _tl298363298512_)
                   (let ((_L298515_ _hd298364298509_)
                         (_L298517_ _hd298361298499_)
                         (_L298518_ _hd298358298489_)
                         (_L298519_ _hd298355298479_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L298519_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298518_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298517_)))
                         (___kont305793305794_
                          _L298515_
                          _L298517_
                          _L298518_
                          _L298519_)
                         (let () (declare (not safe)) (_g298345298387_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305790305791_))
                (let ((_e298353298465_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305790305791_))))
                  (let ((_tl298351298472_
                         (let () (declare (not safe)) (##cdr _e298353298465_)))
                        (_hd298352298469_
                         (let ()
                           (declare (not safe))
                           (##car _e298353298465_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298351298472_))
                        (let ((_e298356298475_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298351298472_))))
                          (let ((_tl298354298482_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298356298475_)))
                                (_hd298355298479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298356298475_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298354298482_))
                                (let ((_e298359298485_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298354298482_))))
                                  (let ((_tl298357298492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298359298485_)))
                                        (_hd298358298489_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298359298485_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298357298492_))
                                        (let ((_e298362298495_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298357298492_))))
                                          (let ((_tl298360298502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298362298495_)))
                                                (_hd298361298499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298362298495_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298360298502_))
                                                (let ((_e298365298505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298360298502_))))
                                                  (let ((_tl298363298512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298365298505_)))
                                                        (_hd298364298509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298365298505_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298363298512_))
                                                        (___match305829305830_
                                                         _e298353298465_
                                                         _hd298352298469_
                                                         _tl298351298472_
                                                         _e298356298475_
                                                         _hd298355298479_
                                                         _tl298354298482_
                                                         _e298359298485_
                                                         _hd298358298489_
                                                         _tl298357298492_
                                                         _e298362298495_
                                                         _hd298361298499_
                                                         _tl298360298502_
                                                         _e298365298505_
                                                         _hd298364298509_
                                                         _tl298363298512_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298345298387_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298360298502_))
                                                    (___kont305795305796_
                                                     _hd298361298499_
                                                     _hd298358298489_
                                                     _hd298355298479_
                                                     _hd298352298469_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298345298387_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298345298387_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298345298387_)))))
                        (let () (declare (not safe)) (_g298345298387_)))))
                (let () (declare (not safe)) (_g298345298387_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx298544_)
      (let* ((_g298548298583_
              (lambda (_g298549298579_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298549298579_))))
             (_g298547298702_
              (lambda (_g298549298587_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298549298587_))
                    (let ((_e298555298590_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298549298587_))))
                      (let ((_hd298554298594_
                             (let ()
                               (declare (not safe))
                               (##car _e298555298590_)))
                            (_tl298553298597_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298555298590_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298553298597_))
                            (let ((_g306259_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298553298597_
                                      '0))))
                              (begin
                                (let ((_g306260_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306259_)
                                             (##vector-length _g306259_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306260_ 2)))
                                      (error "Context expects 2 values"
                                             _g306260_)))
                                (let ((_target298556298600_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306259_ 0)))
                                      (_tl298558298603_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306259_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298558298603_))
                                      (letrec ((_loop298559298606_
                                                (lambda (_hd298557298610_
                                                         _symbol298563298613_
                                                         _method298564298615_
                                                         _type-t298565298617_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298557298610_))
                                                      (let ((_e298560298620_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298557298610_))))
                (let ((_lp-hd298561298624_
                       (let () (declare (not safe)) (##car _e298560298620_)))
                      (_lp-tl298562298627_
                       (let () (declare (not safe)) (##cdr _e298560298620_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298561298624_))
                      (let ((_e298571298630_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298561298624_))))
                        (let ((_hd298570298634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298571298630_)))
                              (_tl298569298637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298571298630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298569298637_))
                              (let ((_e298574298640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298569298637_))))
                                (let ((_hd298573298644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298574298640_)))
                                      (_tl298572298647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298574298640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298572298647_))
                                      (let ((_e298577298650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298572298647_))))
                                        (let ((_hd298576298654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298577298650_)))
                                              (_tl298575298657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298577298650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298575298657_))
                                              (_loop298559298606_
                                               _lp-tl298562298627_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298576298654_
                                                       _symbol298563298613_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298573298644_
                                                       _method298564298615_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298570298634_
                                                       _type-t298565298617_)))
                                              (_g298548298583_
                                               _g298549298587_))))
                                      (_g298548298583_ _g298549298587_))))
                              (_g298548298583_ _g298549298587_))))
                      (_g298548298583_ _g298549298587_))))
              (let ((_symbol298566298660_ (reverse _symbol298563298613_))
                    (_method298567298663_ (reverse _method298564298615_))
                    (_type-t298568298665_ (reverse _type-t298565298617_)))
                ((lambda (_L298668_ _L298670_ _L298671_)
                   (let ((__tmp306268
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306261
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298668_
                               _L298670_
                               _L298671_))
                            (let ((__tmp306262
                                   (lambda (_g298687298692_
                                            _g298688298695_
                                            _g298689298697_
                                            _g298690298699_)
                                     (let ((__tmp306263
                                            (let ((__tmp306267
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306264
                                                   (let ((__tmp306265
                                                          (let ((__tmp306266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298687298692_ '()))))
                    (declare (not safe))
                    (cons _g298688298695_ __tmp306266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298689298697_
                                                           __tmp306265))))
                                              (declare (not safe))
                                              (cons __tmp306267 __tmp306264))))
                                       (declare (not safe))
                                       (cons __tmp306263 _g298690298699_)))))
                              (declare (not safe))
                              (foldr* __tmp306262
                                      '()
                                      _L298668_
                                      _L298670_
                                      _L298671_)))))
                     (declare (not safe))
                     (cons __tmp306268 __tmp306261)))
                 _symbol298566298660_
                 _method298567298663_
                 _type-t298568298665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298559298606_
                                         _target298556298600_
                                         '()
                                         '()
                                         '()))
                                      (_g298548298583_ _g298549298587_)))))
                            (_g298548298583_ _g298549298587_))))
                    (_g298548298583_ _g298549298587_)))))
        (_g298547298702_ _$stx298544_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298707_)
      (let* ((_g298711298744_
              (lambda (_g298712298740_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298712298740_))))
             (_g298710298858_
              (lambda (_g298712298748_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298712298748_))
                    (let ((_e298718298751_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298712298748_))))
                      (let ((_hd298717298755_
                             (let ()
                               (declare (not safe))
                               (##car _e298718298751_)))
                            (_tl298716298758_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298718298751_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298716298758_))
                            (let ((_e298721298761_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298716298758_))))
                              (let ((_hd298720298765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298721298761_)))
                                    (_tl298719298768_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298721298761_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298719298768_))
                                    (let ((_g306269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298719298768_
                                              '0))))
                                      (begin
                                        (let ((_g306270_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306269_)
                                                     (##vector-length
                                                      _g306269_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306270_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306270_)))
                                        (let ((_target298722298771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306269_ 0)))
                                              (_tl298724298774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306269_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298724298774_))
                                              (letrec ((_loop298725298777_
                                                        (lambda (_hd298723298781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298729298784_
                         _method298730298786_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298723298781_))
                      (let ((_e298726298789_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298723298781_))))
                        (let ((_lp-hd298727298793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298726298789_)))
                              (_lp-tl298728298796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298726298789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298727298793_))
                              (let ((_e298735298799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298727298793_))))
                                (let ((_hd298734298803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298735298799_)))
                                      (_tl298733298806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298735298799_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298733298806_))
                                      (let ((_e298738298809_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298733298806_))))
                                        (let ((_hd298737298813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298738298809_)))
                                              (_tl298736298816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298738298809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298736298816_))
                                              (_loop298725298777_
                                               _lp-tl298728298796_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298737298813_
                                                       _symbol298729298784_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298734298803_
                                                       _method298730298786_)))
                                              (_g298711298744_
                                               _g298712298748_))))
                                      (_g298711298744_ _g298712298748_))))
                              (_g298711298744_ _g298712298748_))))
                      (let ((_symbol298731298819_
                             (reverse _symbol298729298784_))
                            (_method298732298822_
                             (reverse _method298730298786_)))
                        ((lambda (_L298825_ _L298827_ _L298828_)
                           (let ((__tmp306278
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306271
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298825_
                                       _L298827_))
                                    (let ((__tmp306272
                                           (lambda (_g298846298850_
                                                    _g298847298853_
                                                    _g298848298855_)
                                             (let ((__tmp306273
                                                    (let ((__tmp306277
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306274
                                                           (let ((__tmp306275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306276
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298846298850_ '()))))
                            (declare (not safe))
                            (cons _g298847298853_ __tmp306276))))
                     (declare (not safe))
                     (cons _L298828_ __tmp306275))))
              (declare (not safe))
              (cons __tmp306277 __tmp306274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306273
                                                     _g298848298855_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306272
                                              '()
                                              _L298825_
                                              _L298827_)))))
                             (declare (not safe))
                             (cons __tmp306278 __tmp306271)))
                         _symbol298731298819_
                         _method298732298822_
                         _hd298720298765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298725298777_
                                                 _target298722298771_
                                                 '()
                                                 '()))
                                              (_g298711298744_
                                               _g298712298748_)))))
                                    (_g298711298744_ _g298712298748_))))
                            (_g298711298744_ _g298712298748_))))
                    (_g298711298744_ _g298712298748_)))))
        (_g298710298858_ _$stx298707_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298863_)
      (let* ((_g298867298881_
              (lambda (_g298868298877_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298868298877_))))
             (_g298866298922_
              (lambda (_g298868298885_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298868298885_))
                    (let ((_e298872298888_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298868298885_))))
                      (let ((_hd298871298892_
                             (let ()
                               (declare (not safe))
                               (##car _e298872298888_)))
                            (_tl298870298895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298872298888_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298870298895_))
                            (let ((_e298875298898_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298870298895_))))
                              (let ((_hd298874298902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298875298898_)))
                                    (_tl298873298905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298875298898_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298873298905_))
                                    ((lambda (_L298908_)
                                       (let ((__tmp306283
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306279
                                              (let ((__tmp306280
                                                     (let ((__tmp306282
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306282 __tmp306281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306280 '()))))
                                         (declare (not safe))
                                         (cons __tmp306283 __tmp306279)))
                                     _hd298874298902_)
                                    (_g298867298881_ _g298868298885_))))
                            (_g298867298881_ _g298868298885_))))
                    (_g298867298881_ _g298868298885_)))))
        (_g298866298922_ _$stx298863_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx298926_)
      (let* ((_g298930298980_
              (lambda (_g298931298976_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298931298976_))))
             (_g298929299147_
              (lambda (_g298931298984_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298931298984_))
                    (let ((_e298944298987_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298931298984_))))
                      (let ((_hd298943298991_
                             (let ()
                               (declare (not safe))
                               (##car _e298944298987_)))
                            (_tl298942298994_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298944298987_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298942298994_))
                            (let ((_e298947298997_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298942298994_))))
                              (let ((_hd298946299001_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298947298997_)))
                                    (_tl298945299004_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298947298997_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298945299004_))
                                    (let ((_e298950299007_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298945299004_))))
                                      (let ((_hd298949299011_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298950299007_)))
                                            (_tl298948299014_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298950299007_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298948299014_))
                                            (let ((_e298953299017_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298948299014_))))
                                              (let ((_hd298952299021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298953299017_)))
                                                    (_tl298951299024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298953299017_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298951299024_))
                                                    (let ((_e298956299027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298951299024_))))
                                                      (let ((_hd298955299031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298956299027_)))
                    (_tl298954299034_
                     (let () (declare (not safe)) (##cdr _e298956299027_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298954299034_))
                    (let ((_e298959299037_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298954299034_))))
                      (let ((_hd298958299041_
                             (let ()
                               (declare (not safe))
                               (##car _e298959299037_)))
                            (_tl298957299044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298959299037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298957299044_))
                            (let ((_e298962299047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298957299044_))))
                              (let ((_hd298961299051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298962299047_)))
                                    (_tl298960299054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298962299047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298960299054_))
                                    (let ((_e298965299057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298960299054_))))
                                      (let ((_hd298964299061_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298965299057_)))
                                            (_tl298963299064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298965299057_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298963299064_))
                                            (let ((_e298968299067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298963299064_))))
                                              (let ((_hd298967299071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298968299067_)))
                                                    (_tl298966299074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298968299067_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298966299074_))
                                                    (let ((_e298971299077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298966299074_))))
                                                      (let ((_hd298970299081_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298971299077_)))
                    (_tl298969299084_
                     (let () (declare (not safe)) (##cdr _e298971299077_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298969299084_))
                    (let ((_e298974299087_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298969299084_))))
                      (let ((_hd298973299091_
                             (let ()
                               (declare (not safe))
                               (##car _e298974299087_)))
                            (_tl298972299094_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298974299087_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl298972299094_))
                            ((lambda (_L299097_
                                      _L299099_
                                      _L299100_
                                      _L299101_
                                      _L299102_
                                      _L299103_
                                      _L299104_
                                      _L299105_
                                      _L299106_
                                      _L299107_)
                               (let ((__tmp306318
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306284
                                      (let ((__tmp306315
                                             (let ((__tmp306317
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306316
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299107_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306317 __tmp306316)))
                                            (__tmp306285
                                             (let ((__tmp306312
                                                    (let ((__tmp306314
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306313
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306314 __tmp306313)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306286
                                                    (let ((__tmp306309
                                                           (let ((__tmp306311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306310
                          (let () (declare (not safe)) (cons _L299105_ '()))))
                     (declare (not safe))
                     (cons __tmp306311 __tmp306310)))
                  (__tmp306287
                   (let ((__tmp306306
                          (let ((__tmp306308
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306307
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299104_ '()))))
                            (declare (not safe))
                            (cons __tmp306308 __tmp306307)))
                         (__tmp306288
                          (let ((__tmp306303
                                 (let ((__tmp306305
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306304
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299103_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306305 __tmp306304)))
                                (__tmp306289
                                 (let ((__tmp306300
                                        (let ((__tmp306302
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306301
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299102_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306302 __tmp306301)))
                                       (__tmp306290
                                        (let ((__tmp306291
                                               (let ((__tmp306292
                                                      (let ((__tmp306297
                                                             (let ((__tmp306299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306298
                            (let ()
                              (declare (not safe))
                              (cons _L299099_ '()))))
                       (declare (not safe))
                       (cons __tmp306299 __tmp306298)))
                    (__tmp306293
                     (let ((__tmp306294
                            (let ((__tmp306296
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306295
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299097_ '()))))
                              (declare (not safe))
                              (cons __tmp306296 __tmp306295))))
                       (declare (not safe))
                       (cons __tmp306294 '()))))
                (declare (not safe))
                (cons __tmp306297 __tmp306293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299100_
                                                       __tmp306292))))
                                          (declare (not safe))
                                          (cons _L299101_ __tmp306291))))
                                   (declare (not safe))
                                   (cons __tmp306300 __tmp306290))))
                            (declare (not safe))
                            (cons __tmp306303 __tmp306289))))
                     (declare (not safe))
                     (cons __tmp306306 __tmp306288))))
              (declare (not safe))
              (cons __tmp306309 __tmp306287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306312
                                                     __tmp306286))))
                                        (declare (not safe))
                                        (cons __tmp306315 __tmp306285))))
                                 (declare (not safe))
                                 (cons __tmp306318 __tmp306284)))
                             _hd298973299091_
                             _hd298970299081_
                             _hd298967299071_
                             _hd298964299061_
                             _hd298961299051_
                             _hd298958299041_
                             _hd298955299031_
                             _hd298952299021_
                             _hd298949299011_
                             _hd298946299001_)
                            (_g298930298980_ _g298931298984_))))
                    (_g298930298980_ _g298931298984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298930298980_
                                                     _g298931298984_))))
                                            (_g298930298980_
                                             _g298931298984_))))
                                    (_g298930298980_ _g298931298984_))))
                            (_g298930298980_ _g298931298984_))))
                    (_g298930298980_ _g298931298984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298930298980_
                                                     _g298931298984_))))
                                            (_g298930298980_
                                             _g298931298984_))))
                                    (_g298930298980_ _g298931298984_))))
                            (_g298930298980_ _g298931298984_))))
                    (_g298930298980_ _g298931298984_)))))
        (_g298929299147_ _$stx298926_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299151_)
      (let* ((_g299155299169_
              (lambda (_g299156299165_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299156299165_))))
             (_g299154299210_
              (lambda (_g299156299173_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299156299173_))
                    (let ((_e299160299176_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299156299173_))))
                      (let ((_hd299159299180_
                             (let ()
                               (declare (not safe))
                               (##car _e299160299176_)))
                            (_tl299158299183_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299160299176_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299158299183_))
                            (let ((_e299163299186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299158299183_))))
                              (let ((_hd299162299190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299163299186_)))
                                    (_tl299161299193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299163299186_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299161299193_))
                                    ((lambda (_L299196_)
                                       (let ((__tmp306323
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
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
                                                              (cons _L299196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306322 __tmp306321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306320 '()))))
                                         (declare (not safe))
                                         (cons __tmp306323 __tmp306319)))
                                     _hd299162299190_)
                                    (_g299155299169_ _g299156299173_))))
                            (_g299155299169_ _g299156299173_))))
                    (_g299155299169_ _g299156299173_)))))
        (_g299154299210_ _$stx299151_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299214_)
      (let* ((_g299218299232_
              (lambda (_g299219299228_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299219299228_))))
             (_g299217299273_
              (lambda (_g299219299236_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299219299236_))
                    (let ((_e299223299239_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299219299236_))))
                      (let ((_hd299222299243_
                             (let ()
                               (declare (not safe))
                               (##car _e299223299239_)))
                            (_tl299221299246_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299223299239_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299221299246_))
                            (let ((_e299226299249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299221299246_))))
                              (let ((_hd299225299253_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299226299249_)))
                                    (_tl299224299256_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299226299249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299224299256_))
                                    ((lambda (_L299259_)
                                       (let ((__tmp306328
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306324
                                              (let ((__tmp306325
                                                     (let ((__tmp306327
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306326
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306327 __tmp306326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306325 '()))))
                                         (declare (not safe))
                                         (cons __tmp306328 __tmp306324)))
                                     _hd299225299253_)
                                    (_g299218299232_ _g299219299236_))))
                            (_g299218299232_ _g299219299236_))))
                    (_g299218299232_ _g299219299236_)))))
        (_g299217299273_ _$stx299214_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299277_)
      (let* ((_g299281299303_
              (lambda (_g299282299299_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299282299299_))))
             (_g299280299372_
              (lambda (_g299282299307_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299282299307_))
                    (let ((_e299288299310_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299282299307_))))
                      (let ((_hd299287299314_
                             (let ()
                               (declare (not safe))
                               (##car _e299288299310_)))
                            (_tl299286299317_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299288299310_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299286299317_))
                            (let ((_e299291299320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299286299317_))))
                              (let ((_hd299290299324_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299291299320_)))
                                    (_tl299289299327_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299291299320_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299289299327_))
                                    (let ((_e299294299330_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299289299327_))))
                                      (let ((_hd299293299334_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299294299330_)))
                                            (_tl299292299337_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299294299330_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299292299337_))
                                            (let ((_e299297299340_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299292299337_))))
                                              (let ((_hd299296299344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299297299340_)))
                                                    (_tl299295299347_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299297299340_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299295299347_))
                                                    ((lambda (_L299350_
                                                              _L299352_
                                                              _L299353_)
                                                       (let ((__tmp306338
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306329
                      (let ((__tmp306335
                             (let ((__tmp306337
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306336
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299353_ '()))))
                               (declare (not safe))
                               (cons __tmp306337 __tmp306336)))
                            (__tmp306330
                             (let ((__tmp306332
                                    (let ((__tmp306334
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306333
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299352_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306334 __tmp306333)))
                                   (__tmp306331
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299350_ '()))))
                               (declare (not safe))
                               (cons __tmp306332 __tmp306331))))
                        (declare (not safe))
                        (cons __tmp306335 __tmp306330))))
                 (declare (not safe))
                 (cons __tmp306338 __tmp306329)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299296299344_
                                                     _hd299293299334_
                                                     _hd299290299324_)
                                                    (_g299281299303_
                                                     _g299282299307_))))
                                            (_g299281299303_
                                             _g299282299307_))))
                                    (_g299281299303_ _g299282299307_))))
                            (_g299281299303_ _g299282299307_))))
                    (_g299281299303_ _g299282299307_)))))
        (_g299280299372_ _$stx299277_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx299376_)
      (let* ((_g299380299402_
              (lambda (_g299381299398_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299381299398_))))
             (_g299379299471_
              (lambda (_g299381299406_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299381299406_))
                    (let ((_e299387299409_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299381299406_))))
                      (let ((_hd299386299413_
                             (let ()
                               (declare (not safe))
                               (##car _e299387299409_)))
                            (_tl299385299416_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299387299409_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299385299416_))
                            (let ((_e299390299419_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299385299416_))))
                              (let ((_hd299389299423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299390299419_)))
                                    (_tl299388299426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299390299419_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299388299426_))
                                    (let ((_e299393299429_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299388299426_))))
                                      (let ((_hd299392299433_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299393299429_)))
                                            (_tl299391299436_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299393299429_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299391299436_))
                                            (let ((_e299396299439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299391299436_))))
                                              (let ((_hd299395299443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299396299439_)))
                                                    (_tl299394299446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299396299439_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299394299446_))
                                                    ((lambda (_L299449_
                                                              _L299451_
                                                              _L299452_)
                                                       (let ((__tmp306348
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306339
                      (let ((__tmp306345
                             (let ((__tmp306347
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306346
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299452_ '()))))
                               (declare (not safe))
                               (cons __tmp306347 __tmp306346)))
                            (__tmp306340
                             (let ((__tmp306342
                                    (let ((__tmp306344
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306343
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299451_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306344 __tmp306343)))
                                   (__tmp306341
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299449_ '()))))
                               (declare (not safe))
                               (cons __tmp306342 __tmp306341))))
                        (declare (not safe))
                        (cons __tmp306345 __tmp306340))))
                 (declare (not safe))
                 (cons __tmp306348 __tmp306339)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299395299443_
                                                     _hd299392299433_
                                                     _hd299389299423_)
                                                    (_g299380299402_
                                                     _g299381299406_))))
                                            (_g299380299402_
                                             _g299381299406_))))
                                    (_g299380299402_ _g299381299406_))))
                            (_g299380299402_ _g299381299406_))))
                    (_g299380299402_ _g299381299406_)))))
        (_g299379299471_ _$stx299376_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx299475_)
      (let* ((___stx305858305859_ _$stx299475_)
             (_g299483299551_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305858305859_)))))
        (let ((___kont305861305862_
               (lambda (_L299829_ _L299831_)
                 (let ((__tmp306364
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306349
                        (let ((__tmp306360
                               (let ((__tmp306363
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306361
                                      (let ((__tmp306362
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306362 '()))))
                                 (declare (not safe))
                                 (cons __tmp306363 __tmp306361)))
                              (__tmp306350
                               (let ((__tmp306357
                                      (let ((__tmp306359
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306358
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299831_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306359 __tmp306358)))
                                     (__tmp306351
                                      (let ((__tmp306352
                                             (let ((__tmp306353
                                                    (let ((__tmp306354
                                                           (let ((__tmp306356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306355
                          (let () (declare (not safe)) (cons _L299829_ '()))))
                     (declare (not safe))
                     (cons __tmp306356 __tmp306355))))
              (declare (not safe))
              (cons __tmp306354 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299829_ __tmp306353))))
                                        (declare (not safe))
                                        (cons '#f __tmp306352))))
                                 (declare (not safe))
                                 (cons __tmp306357 __tmp306351))))
                          (declare (not safe))
                          (cons __tmp306360 __tmp306350))))
                   (declare (not safe))
                   (cons __tmp306364 __tmp306349))))
              (___kont305863305864_
               (lambda (_L299760_ _L299762_)
                 (let ((__tmp306365
                        (let ((__tmp306366
                               (let ((__tmp306367
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299760_ __tmp306367))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306366))))
                   (declare (not safe))
                   (cons _L299762_ __tmp306365))))
              (___kont305865305866_
               (lambda (_L299699_ _L299701_)
                 (let ((__tmp306381
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306368
                        (let ((__tmp306377
                               (let ((__tmp306380
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306378
                                      (let ((__tmp306379
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306379 '()))))
                                 (declare (not safe))
                                 (cons __tmp306380 __tmp306378)))
                              (__tmp306369
                               (let ((__tmp306374
                                      (let ((__tmp306376
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306375
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299701_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306376 __tmp306375)))
                                     (__tmp306370
                                      (let ((__tmp306371
                                             (let ((__tmp306373
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306372
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299699_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306373
                                                     __tmp306372))))
                                        (declare (not safe))
                                        (cons __tmp306371 '()))))
                                 (declare (not safe))
                                 (cons __tmp306374 __tmp306370))))
                          (declare (not safe))
                          (cons __tmp306377 __tmp306369))))
                   (declare (not safe))
                   (cons __tmp306381 __tmp306368))))
              (___kont305867305868_
               (lambda (_L299631_ _L299633_)
                 (let ((__tmp306395
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306382
                        (let ((__tmp306391
                               (let ((__tmp306394
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306392
                                      (let ((__tmp306393
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306393 '()))))
                                 (declare (not safe))
                                 (cons __tmp306394 __tmp306392)))
                              (__tmp306383
                               (let ((__tmp306388
                                      (let ((__tmp306390
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306389
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299633_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306390 __tmp306389)))
                                     (__tmp306384
                                      (let ((__tmp306385
                                             (let ((__tmp306387
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306386
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299631_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306387
                                                     __tmp306386))))
                                        (declare (not safe))
                                        (cons __tmp306385 '()))))
                                 (declare (not safe))
                                 (cons __tmp306388 __tmp306384))))
                          (declare (not safe))
                          (cons __tmp306391 __tmp306383))))
                   (declare (not safe))
                   (cons __tmp306395 __tmp306382))))
              (___kont305869305870_
               (lambda (_L299578_ _L299580_)
                 (let ((__tmp306396
                        (let ((__tmp306397
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L299578_ __tmp306397))))
                   (declare (not safe))
                   (cons _L299580_ __tmp306396)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305858305859_))
              (let ((_e299489299785_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305858305859_))))
                (let ((_tl299487299792_
                       (let () (declare (not safe)) (##cdr _e299489299785_)))
                      (_hd299488299789_
                       (let () (declare (not safe)) (##car _e299489299785_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl299487299792_))
                      (let ((_e299492299795_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299487299792_))))
                        (let ((_tl299490299802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299492299795_)))
                              (_hd299491299799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299492299795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299490299802_))
                              (let ((_e299495299805_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299490299802_))))
                                (let ((_tl299493299812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299495299805_)))
                                      (_hd299494299809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299495299805_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd299494299809_))
                                      (let ((_e299496299815_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd299494299809_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e299496299815_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl299493299812_))
                                                (let ((_e299499299819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl299493299812_))))
                                                  (let ((_tl299497299826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e299499299819_)))
                                                        (_hd299498299823_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e299499299819_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299497299826_))
                                                        (___kont305861305862_
                                                         _hd299498299823_
                                                         _hd299491299799_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd299491299799_))
                                                            (let ((_e299508299746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd299491299799_))))
                      (declare (not safe))
                      (_g299483299551_))
                    (let () (declare (not safe)) (_g299483299551_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd299491299799_))
                                                    (let ((_e299508299746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd299491299799_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e299508299746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299493299812_))
                      (___kont305863305864_ _hd299494299809_ _hd299488299789_)
                      (let () (declare (not safe)) (_g299483299551_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299493299812_))
                      (___kont305867305868_ _hd299494299809_ _hd299491299799_)
                      (let () (declare (not safe)) (_g299483299551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299493299812_))
                                                        (___kont305867305868_
                                                         _hd299494299809_
                                                         _hd299491299799_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299483299551_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd299491299799_))
                                                (let ((_e299508299746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd299491299799_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e299508299746_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299493299812_))
                                                          (___kont305863305864_
                                                           _hd299494299809_
                                                           _hd299488299789_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl299493299812_))
                      (let ((_e299526299689_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299493299812_))))
                        (let ((_tl299524299696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299526299689_)))
                              (_hd299525299693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299526299689_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299524299696_))
                              (___kont305865305866_
                               _hd299525299693_
                               _hd299494299809_)
                              (let ()
                                (declare (not safe))
                                (_g299483299551_)))))
                      (let () (declare (not safe)) (_g299483299551_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299493299812_))
                  (___kont305867305868_ _hd299494299809_ _hd299491299799_)
                  (let () (declare (not safe)) (_g299483299551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299493299812_))
                                                    (___kont305867305868_
                                                     _hd299494299809_
                                                     _hd299491299799_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299483299551_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd299491299799_))
                                          (let ((_e299508299746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd299491299799_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e299508299746_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299493299812_))
                                                    (___kont305863305864_
                                                     _hd299494299809_
                                                     _hd299488299789_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl299493299812_))
                                                        (let ((_e299526299689_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl299493299812_))))
                  (let ((_tl299524299696_
                         (let () (declare (not safe)) (##cdr _e299526299689_)))
                        (_hd299525299693_
                         (let ()
                           (declare (not safe))
                           (##car _e299526299689_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl299524299696_))
                        (___kont305865305866_
                         _hd299525299693_
                         _hd299494299809_)
                        (let () (declare (not safe)) (_g299483299551_)))))
                (let () (declare (not safe)) (_g299483299551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299493299812_))
                                                    (___kont305867305868_
                                                     _hd299494299809_
                                                     _hd299491299799_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299483299551_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299493299812_))
                                              (___kont305867305868_
                                               _hd299494299809_
                                               _hd299491299799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g299483299551_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd299491299799_))
                                  (let ((_e299508299746_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd299491299799_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299490299802_))
                                        (___kont305869305870_
                                         _hd299491299799_
                                         _hd299488299789_)
                                        (let ()
                                          (declare (not safe))
                                          (_g299483299551_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299490299802_))
                                      (___kont305869305870_
                                       _hd299491299799_
                                       _hd299488299789_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299483299551_)))))))
                      (let () (declare (not safe)) (_g299483299551_)))))
              (let () (declare (not safe)) (_g299483299551_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299853_)
      (let* ((___stx305998305999_ _$stx299853_)
             (_g299858299913_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305998305999_)))))
        (let ((___kont306001306002_
               (lambda (_L300098_ _L300100_)
                 (let ((__tmp306413
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306398
                        (let ((__tmp306409
                               (let ((__tmp306412
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306410
                                      (let ((__tmp306411
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306411 '()))))
                                 (declare (not safe))
                                 (cons __tmp306412 __tmp306410)))
                              (__tmp306399
                               (let ((__tmp306400
                                      (let ((__tmp306408
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306401
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300098_
                                                  _L300100_))
                                               (let ((__tmp306402
                                                      (lambda (_g300117300121_
                                                               _g300118300124_
                                                               _g300119300126_)
                                                        (let ((__tmp306403
                                                               (let ((__tmp306407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306404
                              (let ((__tmp306405
                                     (let ((__tmp306406
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300117300121_ '()))))
                                       (declare (not safe))
                                       (cons _g300118300124_ __tmp306406))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306405))))
                         (declare (not safe))
                         (cons __tmp306407 __tmp306404))))
                  (declare (not safe))
                  (cons __tmp306403 _g300119300126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306402
                                                         '()
                                                         _L300098_
                                                         _L300100_)))))
                                        (declare (not safe))
                                        (cons __tmp306408 __tmp306401))))
                                 (declare (not safe))
                                 (cons __tmp306400 '()))))
                          (declare (not safe))
                          (cons __tmp306409 __tmp306399))))
                   (declare (not safe))
                   (cons __tmp306413 __tmp306398))))
              (___kont306005306006_
               (lambda (_L299984_ _L299986_)
                 (let ((__tmp306428
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306414
                        (let ((__tmp306424
                               (let ((__tmp306427
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306425
                                      (let ((__tmp306426
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306426 '()))))
                                 (declare (not safe))
                                 (cons __tmp306427 __tmp306425)))
                              (__tmp306415
                               (let ((__tmp306416
                                      (let ((__tmp306423
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306417
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299984_
                                                  _L299986_))
                                               (let ((__tmp306418
                                                      (lambda (_g300001300005_
                                                               _g300002300008_
                                                               _g300003300010_)
                                                        (let ((__tmp306419
                                                               (let ((__tmp306422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306420
                              (let ((__tmp306421
                                     (let ()
                                       (declare (not safe))
                                       (cons _g300001300005_ '()))))
                                (declare (not safe))
                                (cons _g300002300008_ __tmp306421))))
                         (declare (not safe))
                         (cons __tmp306422 __tmp306420))))
                  (declare (not safe))
                  (cons __tmp306419 _g300003300010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306418
                                                         '()
                                                         _L299984_
                                                         _L299986_)))))
                                        (declare (not safe))
                                        (cons __tmp306423 __tmp306417))))
                                 (declare (not safe))
                                 (cons __tmp306416 '()))))
                          (declare (not safe))
                          (cons __tmp306424 __tmp306415))))
                   (declare (not safe))
                   (cons __tmp306428 __tmp306414)))))
          (let* ((___match306049306050_
                  (lambda (_e299890299920_
                           _hd299889299924_
                           _tl299888299927_
                           ___splice306007306008_
                           _target299891299930_
                           _tl299893299933_)
                    (letrec ((_loop299894299936_
                              (lambda (_hd299892299940_
                                       _dispatch299898299943_
                                       _arity299899299945_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299892299940_))
                                    (let ((_e299895299948_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299892299940_))))
                                      (let ((_lp-tl299897299955_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299895299948_)))
                                            (_lp-hd299896299952_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299895299948_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299896299952_))
                                            (let ((_e299904299958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299896299952_))))
                                              (let ((_tl299902299965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299904299958_)))
                                                    (_hd299903299962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299904299958_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299902299965_))
                                                    (let ((_e299907299968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299902299965_))))
                                                      (let ((_tl299905299975_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299907299968_)))
                    (_hd299906299972_
                     (let () (declare (not safe)) (##car _e299907299968_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299905299975_))
                    (_loop299894299936_
                     _lp-tl299897299955_
                     (let ()
                       (declare (not safe))
                       (cons _hd299906299972_ _dispatch299898299943_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299903299962_ _arity299899299945_)))
                    (let () (declare (not safe)) (_g299858299913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299858299913_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299858299913_)))))
                                    (let ((_arity299901299981_
                                           (reverse _arity299899299945_))
                                          (_dispatch299900299978_
                                           (reverse _dispatch299898299943_)))
                                      (___kont306005306006_
                                       _dispatch299900299978_
                                       _arity299901299981_))))))
                      (_loop299894299936_ _target299891299930_ '() '()))))
                 (___match306041306042_
                  (lambda (_e299890299920_ _hd299889299924_ _tl299888299927_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299888299927_))
                        (let ((___splice306007306008_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299888299927_
                                  '0))))
                          (let ((_tl299893299933_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306007306008_ '1)))
                                (_target299891299930_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306007306008_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299893299933_))
                                (___match306049306050_
                                 _e299890299920_
                                 _hd299889299924_
                                 _tl299888299927_
                                 ___splice306007306008_
                                 _target299891299930_
                                 _tl299893299933_)
                                (let ()
                                  (declare (not safe))
                                  (_g299858299913_)))))
                        (let () (declare (not safe)) (_g299858299913_)))))
                 (___match306035306036_
                  (lambda (_e299864300020_
                           _hd299863300024_
                           _tl299862300027_
                           _e299867300030_
                           _hd299866300034_
                           _tl299865300037_
                           _e299868300040_
                           ___splice306003306004_
                           _target299869300044_
                           _tl299871300047_)
                    (letrec ((_loop299872300050_
                              (lambda (_hd299870300054_
                                       _dispatch299876300057_
                                       _arity299877300059_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299870300054_))
                                    (let ((_e299873300062_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299870300054_))))
                                      (let ((_lp-tl299875300069_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299873300062_)))
                                            (_lp-hd299874300066_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299873300062_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299874300066_))
                                            (let ((_e299882300072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299874300066_))))
                                              (let ((_tl299880300079_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299882300072_)))
                                                    (_hd299881300076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299882300072_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299880300079_))
                                                    (let ((_e299885300082_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299880300079_))))
                                                      (let ((_tl299883300089_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299885300082_)))
                    (_hd299884300086_
                     (let () (declare (not safe)) (##car _e299885300082_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299883300089_))
                    (_loop299872300050_
                     _lp-tl299875300069_
                     (let ()
                       (declare (not safe))
                       (cons _hd299884300086_ _dispatch299876300057_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299881300076_ _arity299877300059_)))
                    (___match306041306042_
                     _e299864300020_
                     _hd299863300024_
                     _tl299862300027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306041306042_
                                                     _e299864300020_
                                                     _hd299863300024_
                                                     _tl299862300027_))))
                                            (___match306041306042_
                                             _e299864300020_
                                             _hd299863300024_
                                             _tl299862300027_))))
                                    (let ((_arity299879300095_
                                           (reverse _arity299877300059_))
                                          (_dispatch299878300092_
                                           (reverse _dispatch299876300057_)))
                                      (___kont306001306002_
                                       _dispatch299878300092_
                                       _arity299879300095_))))))
                      (_loop299872300050_ _target299869300044_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305998305999_))
                (let ((_e299864300020_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305998305999_))))
                  (let ((_tl299862300027_
                         (let () (declare (not safe)) (##cdr _e299864300020_)))
                        (_hd299863300024_
                         (let ()
                           (declare (not safe))
                           (##car _e299864300020_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299862300027_))
                        (let ((_e299867300030_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299862300027_))))
                          (let ((_tl299865300037_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299867300030_)))
                                (_hd299866300034_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299867300030_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299866300034_))
                                (let ((_e299868300040_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299866300034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299868300040_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299865300037_))
                                          (let ((___splice306003306004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299865300037_
                                                    '0))))
                                            (let ((_tl299871300047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306003306004_
                                                      '1)))
                                                  (_target299869300044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306003306004_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299871300047_))
                                                  (___match306035306036_
                                                   _e299864300020_
                                                   _hd299863300024_
                                                   _tl299862300027_
                                                   _e299867300030_
                                                   _hd299866300034_
                                                   _tl299865300037_
                                                   _e299868300040_
                                                   ___splice306003306004_
                                                   _target299869300044_
                                                   _tl299871300047_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299862300027_))
                                                      (let ((___splice306007306008_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299862300027_ '0))))
                (let ((_tl299893299933_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306007306008_ '1)))
                      (_target299891299930_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306007306008_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299893299933_))
                      (___match306049306050_
                       _e299864300020_
                       _hd299863300024_
                       _tl299862300027_
                       ___splice306007306008_
                       _target299891299930_
                       _tl299893299933_)
                      (let () (declare (not safe)) (_g299858299913_)))))
              (let () (declare (not safe)) (_g299858299913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299862300027_))
                                              (let ((___splice306007306008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299862300027_
                                                        '0))))
                                                (let ((_tl299893299933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306007306008_
                                                          '1)))
                                                      (_target299891299930_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306007306008_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299893299933_))
                                                      (___match306049306050_
                                                       _e299864300020_
                                                       _hd299863300024_
                                                       _tl299862300027_
                                                       ___splice306007306008_
                                                       _target299891299930_
                                                       _tl299893299933_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299858299913_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299858299913_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299862300027_))
                                          (let ((___splice306007306008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299862300027_
                                                    '0))))
                                            (let ((_tl299893299933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306007306008_
                                                      '1)))
                                                  (_target299891299930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306007306008_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299893299933_))
                                                  (___match306049306050_
                                                   _e299864300020_
                                                   _hd299863300024_
                                                   _tl299862300027_
                                                   ___splice306007306008_
                                                   _target299891299930_
                                                   _tl299893299933_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299858299913_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299858299913_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299862300027_))
                                    (let ((___splice306007306008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299862300027_
                                              '0))))
                                      (let ((_tl299893299933_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306007306008_
                                                '1)))
                                            (_target299891299930_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306007306008_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299893299933_))
                                            (___match306049306050_
                                             _e299864300020_
                                             _hd299863300024_
                                             _tl299862300027_
                                             ___splice306007306008_
                                             _target299891299930_
                                             _tl299893299933_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299858299913_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299858299913_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299862300027_))
                            (let ((___splice306007306008_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299862300027_
                                      '0))))
                              (let ((_tl299893299933_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306007306008_
                                        '1)))
                                    (_target299891299930_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306007306008_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299893299933_))
                                    (___match306049306050_
                                     _e299864300020_
                                     _hd299863300024_
                                     _tl299862300027_
                                     ___splice306007306008_
                                     _target299891299930_
                                     _tl299893299933_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299858299913_)))))
                            (let () (declare (not safe)) (_g299858299913_))))))
                (let () (declare (not safe)) (_g299858299913_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300135_)
      (let* ((_g300139300157_
              (lambda (_g300140300153_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300140300153_))))
             (_g300138300212_
              (lambda (_g300140300161_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300140300161_))
                    (let ((_e300145300164_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300140300161_))))
                      (let ((_hd300144300168_
                             (let ()
                               (declare (not safe))
                               (##car _e300145300164_)))
                            (_tl300143300171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300145300164_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300143300171_))
                            (let ((_e300148300174_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300143300171_))))
                              (let ((_hd300147300178_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300148300174_)))
                                    (_tl300146300181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300148300174_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300146300181_))
                                    (let ((_e300151300184_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300146300181_))))
                                      (let ((_hd300150300188_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300151300184_)))
                                            (_tl300149300191_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300151300184_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300149300191_))
                                            ((lambda (_L300194_ _L300196_)
                                               (let ((__tmp306442
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306429
                                                      (let ((__tmp306438
                                                             (let ((__tmp306441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306439
                            (let ((__tmp306440
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306440 '()))))
                       (declare (not safe))
                       (cons __tmp306441 __tmp306439)))
                    (__tmp306430
                     (let ((__tmp306435
                            (let ((__tmp306437
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306436
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300196_ '()))))
                              (declare (not safe))
                              (cons __tmp306437 __tmp306436)))
                           (__tmp306431
                            (let ((__tmp306432
                                   (let ((__tmp306434
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306433
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300194_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306434 __tmp306433))))
                              (declare (not safe))
                              (cons __tmp306432 '()))))
                       (declare (not safe))
                       (cons __tmp306435 __tmp306431))))
                (declare (not safe))
                (cons __tmp306438 __tmp306430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306442
                                                       __tmp306429)))
                                             _hd300150300188_
                                             _hd300147300178_)
                                            (_g300139300157_
                                             _g300140300161_))))
                                    (_g300139300157_ _g300140300161_))))
                            (_g300139300157_ _g300140300161_))))
                    (_g300139300157_ _g300140300161_)))))
        (_g300138300212_ _$stx300135_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300216_)
      (let* ((_g300220300238_
              (lambda (_g300221300234_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300221300234_))))
             (_g300219300293_
              (lambda (_g300221300242_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300221300242_))
                    (let ((_e300226300245_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300221300242_))))
                      (let ((_hd300225300249_
                             (let ()
                               (declare (not safe))
                               (##car _e300226300245_)))
                            (_tl300224300252_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300226300245_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300224300252_))
                            (let ((_e300229300255_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300224300252_))))
                              (let ((_hd300228300259_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300229300255_)))
                                    (_tl300227300262_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300229300255_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300227300262_))
                                    (let ((_e300232300265_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300227300262_))))
                                      (let ((_hd300231300269_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300232300265_)))
                                            (_tl300230300272_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300232300265_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300230300272_))
                                            ((lambda (_L300275_ _L300277_)
                                               (let ((__tmp306456
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306443
                                                      (let ((__tmp306452
                                                             (let ((__tmp306455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306453
                            (let ((__tmp306454
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306454 '()))))
                       (declare (not safe))
                       (cons __tmp306455 __tmp306453)))
                    (__tmp306444
                     (let ((__tmp306449
                            (let ((__tmp306451
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306450
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300277_ '()))))
                              (declare (not safe))
                              (cons __tmp306451 __tmp306450)))
                           (__tmp306445
                            (let ((__tmp306446
                                   (let ((__tmp306448
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306447
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300275_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306448 __tmp306447))))
                              (declare (not safe))
                              (cons __tmp306446 '()))))
                       (declare (not safe))
                       (cons __tmp306449 __tmp306445))))
                (declare (not safe))
                (cons __tmp306452 __tmp306444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306456
                                                       __tmp306443)))
                                             _hd300231300269_
                                             _hd300228300259_)
                                            (_g300220300238_
                                             _g300221300242_))))
                                    (_g300220300238_ _g300221300242_))))
                            (_g300220300238_ _g300221300242_))))
                    (_g300220300238_ _g300221300242_)))))
        (_g300219300293_ _$stx300216_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300297_)
      (let* ((___stx306052306053_ _$stx300297_)
             (_g300304300375_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306052306053_)))))
        (let ((___kont306055306056_
               (lambda (_L300666_ _L300668_)
                 (let ((__tmp306462
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306457
                        (let ((__tmp306458
                               (let ((__tmp306459
                                      (let ((__tmp306461
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306460
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300666_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306461 __tmp306460))))
                                 (declare (not safe))
                                 (cons __tmp306459 '()))))
                          (declare (not safe))
                          (cons _L300668_ __tmp306458))))
                   (declare (not safe))
                   (cons __tmp306462 __tmp306457))))
              (___kont306057306058_
               (lambda (_L300585_ _L300587_)
                 (let ((__tmp306471
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306463
                        (let ((__tmp306464
                               (let ((__tmp306465
                                      (let ((__tmp306470
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306466
                                             (let ((__tmp306467
                                                    (lambda (_g300606300609_
                                                             _g300607300612_)
                                                      (let ((__tmp306468
                                                             (let ((__tmp306469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300606300609_ __tmp306469))))
                (declare (not safe))
                (cons __tmp306468 _g300607300612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306467
                                                       '()
                                                       _L300585_))))
                                        (declare (not safe))
                                        (cons __tmp306470 __tmp306466))))
                                 (declare (not safe))
                                 (cons __tmp306465 '()))))
                          (declare (not safe))
                          (cons _L300587_ __tmp306464))))
                   (declare (not safe))
                   (cons __tmp306471 __tmp306463))))
              (___kont306061306062_
               (lambda (_L300497_ _L300499_)
                 (let ((__tmp306478
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306472
                        (let ((__tmp306473
                               (let ((__tmp306474
                                      (let ((__tmp306477
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306475
                                             (let ((__tmp306476
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300497_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306476))))
                                        (declare (not safe))
                                        (cons __tmp306477 __tmp306475))))
                                 (declare (not safe))
                                 (cons __tmp306474 '()))))
                          (declare (not safe))
                          (cons _L300499_ __tmp306473))))
                   (declare (not safe))
                   (cons __tmp306478 __tmp306472))))
              (___kont306063306064_
               (lambda (_L300432_ _L300434_)
                 (let ((__tmp306488
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306479
                        (let ((__tmp306480
                               (let ((__tmp306481
                                      (let ((__tmp306487
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306482
                                             (let ((__tmp306483
                                                    (let ((__tmp306484
                                                           (lambda (_g300451300454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g300452300457_)
                     (let ((__tmp306485
                            (let ((__tmp306486
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g300451300454_ __tmp306486))))
                       (declare (not safe))
                       (cons __tmp306485 _g300452300457_)))))
              (declare (not safe))
              (foldr1 __tmp306484 '() _L300432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306483))))
                                        (declare (not safe))
                                        (cons __tmp306487 __tmp306482))))
                                 (declare (not safe))
                                 (cons __tmp306481 '()))))
                          (declare (not safe))
                          (cons _L300434_ __tmp306480))))
                   (declare (not safe))
                   (cons __tmp306488 __tmp306479)))))
          (let* ((___match306171306172_
                  (lambda (_e300357300382_
                           _hd300356300386_
                           _tl300355300389_
                           _e300360300392_
                           _hd300359300396_
                           _tl300358300399_
                           ___splice306065306066_
                           _target300361300402_
                           _tl300363300405_)
                    (letrec ((_loop300364300408_
                              (lambda (_hd300362300412_ _arity300368300415_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300362300412_))
                                    (let ((_e300365300418_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300362300412_))))
                                      (let ((_lp-tl300367300425_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300365300418_)))
                                            (_lp-hd300366300422_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300365300418_))))
                                        (_loop300364300408_
                                         _lp-tl300367300425_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300366300422_
                                                 _arity300368300415_)))))
                                    (let ((_arity300369300428_
                                           (reverse _arity300368300415_)))
                                      (___kont306063306064_
                                       _arity300369300428_
                                       _hd300359300396_))))))
                      (_loop300364300408_ _target300361300402_ '()))))
                 (___match306131306132_
                  (lambda (_e300325300521_
                           _hd300324300525_
                           _tl300323300528_
                           _e300328300531_
                           _hd300327300535_
                           _tl300326300538_
                           _e300331300541_
                           _hd300330300545_
                           _tl300329300548_
                           _e300332300551_
                           ___splice306059306060_
                           _target300333300555_
                           _tl300335300558_)
                    (letrec ((_loop300336300561_
                              (lambda (_hd300334300565_ _arity300340300568_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300334300565_))
                                    (let ((_e300337300571_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300334300565_))))
                                      (let ((_lp-tl300339300578_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300337300571_)))
                                            (_lp-hd300338300575_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300337300571_))))
                                        (_loop300336300561_
                                         _lp-tl300339300578_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300338300575_
                                                 _arity300340300568_)))))
                                    (let ((_arity300341300581_
                                           (reverse _arity300340300568_)))
                                      (___kont306057306058_
                                       _arity300341300581_
                                       _hd300327300535_))))))
                      (_loop300336300561_ _target300333300555_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306052306053_))
                (let ((_e300310300622_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306052306053_))))
                  (let ((_tl300308300629_
                         (let () (declare (not safe)) (##cdr _e300310300622_)))
                        (_hd300309300626_
                         (let ()
                           (declare (not safe))
                           (##car _e300310300622_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300308300629_))
                        (let ((_e300313300632_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300308300629_))))
                          (let ((_tl300311300639_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300313300632_)))
                                (_hd300312300636_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300313300632_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300311300639_))
                                (let ((_e300316300642_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300311300639_))))
                                  (let ((_tl300314300649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300316300642_)))
                                        (_hd300315300646_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300316300642_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300315300646_))
                                        (let ((_e300317300652_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300315300646_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300317300652_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300314300649_))
                                                  (let ((_e300320300656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300314300649_))))
                                                    (let ((_tl300318300663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300320300656_)))
                                                          (_hd300319300660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300320300656_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300318300663_))
                                                          (___kont306055306056_
                                                           _hd300319300660_
                                                           _hd300312300636_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300314300649_))
                      (let ((___splice306059306060_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300314300649_ '0))))
                        (let ((_tl300335300558_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306059306060_ '1)))
                              (_target300333300555_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306059306060_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300335300558_))
                              (___match306131306132_
                               _e300310300622_
                               _hd300309300626_
                               _tl300308300629_
                               _e300313300632_
                               _hd300312300636_
                               _tl300311300639_
                               _e300316300642_
                               _hd300315300646_
                               _tl300314300649_
                               _e300317300652_
                               ___splice306059306060_
                               _target300333300555_
                               _tl300335300558_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300311300639_))
                                  (let ((___splice306065306066_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300311300639_
                                            '0))))
                                    (let ((_tl300363300405_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306065306066_
                                              '1)))
                                          (_target300361300402_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306065306066_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300363300405_))
                                          (___match306171306172_
                                           _e300310300622_
                                           _hd300309300626_
                                           _tl300308300629_
                                           _e300313300632_
                                           _hd300312300636_
                                           _tl300311300639_
                                           ___splice306065306066_
                                           _target300361300402_
                                           _tl300363300405_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300304300375_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300304300375_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300311300639_))
                          (let ((___splice306065306066_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300311300639_
                                    '0))))
                            (let ((_tl300363300405_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306065306066_ '1)))
                                  (_target300361300402_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306065306066_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300363300405_))
                                  (___match306171306172_
                                   _e300310300622_
                                   _hd300309300626_
                                   _tl300308300629_
                                   _e300313300632_
                                   _hd300312300636_
                                   _tl300311300639_
                                   ___splice306065306066_
                                   _target300361300402_
                                   _tl300363300405_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300304300375_)))))
                          (let () (declare (not safe)) (_g300304300375_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300314300649_))
                                                      (let ((___splice306059306060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300314300649_ '0))))
                (let ((_tl300335300558_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306059306060_ '1)))
                      (_target300333300555_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306059306060_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300335300558_))
                      (___match306131306132_
                       _e300310300622_
                       _hd300309300626_
                       _tl300308300629_
                       _e300313300632_
                       _hd300312300636_
                       _tl300311300639_
                       _e300316300642_
                       _hd300315300646_
                       _tl300314300649_
                       _e300317300652_
                       ___splice306059306060_
                       _target300333300555_
                       _tl300335300558_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300314300649_))
                          (___kont306061306062_
                           _hd300315300646_
                           _hd300312300636_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300311300639_))
                              (let ((___splice306065306066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300311300639_
                                        '0))))
                                (let ((_tl300363300405_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306065306066_
                                          '1)))
                                      (_target300361300402_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306065306066_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300363300405_))
                                      (___match306171306172_
                                       _e300310300622_
                                       _hd300309300626_
                                       _tl300308300629_
                                       _e300313300632_
                                       _hd300312300636_
                                       _tl300311300639_
                                       ___splice306065306066_
                                       _target300361300402_
                                       _tl300363300405_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300304300375_)))))
                              (let ()
                                (declare (not safe))
                                (_g300304300375_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300314300649_))
                  (___kont306061306062_ _hd300315300646_ _hd300312300636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300311300639_))
                      (let ((___splice306065306066_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300311300639_ '0))))
                        (let ((_tl300363300405_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306065306066_ '1)))
                              (_target300361300402_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306065306066_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300363300405_))
                              (___match306171306172_
                               _e300310300622_
                               _hd300309300626_
                               _tl300308300629_
                               _e300313300632_
                               _hd300312300636_
                               _tl300311300639_
                               ___splice306065306066_
                               _target300361300402_
                               _tl300363300405_)
                              (let ()
                                (declare (not safe))
                                (_g300304300375_)))))
                      (let () (declare (not safe)) (_g300304300375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300314300649_))
                                                  (___kont306061306062_
                                                   _hd300315300646_
                                                   _hd300312300636_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300311300639_))
                                                      (let ((___splice306065306066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300311300639_ '0))))
                (let ((_tl300363300405_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306065306066_ '1)))
                      (_target300361300402_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306065306066_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300363300405_))
                      (___match306171306172_
                       _e300310300622_
                       _hd300309300626_
                       _tl300308300629_
                       _e300313300632_
                       _hd300312300636_
                       _tl300311300639_
                       ___splice306065306066_
                       _target300361300402_
                       _tl300363300405_)
                      (let () (declare (not safe)) (_g300304300375_)))))
              (let () (declare (not safe)) (_g300304300375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300314300649_))
                                            (___kont306061306062_
                                             _hd300315300646_
                                             _hd300312300636_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300311300639_))
                                                (let ((___splice306065306066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300311300639_
                                                          '0))))
                                                  (let ((_tl300363300405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306065306066_
                                                            '1)))
                                                        (_target300361300402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306065306066_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300363300405_))
                                                        (___match306171306172_
                                                         _e300310300622_
                                                         _hd300309300626_
                                                         _tl300308300629_
                                                         _e300313300632_
                                                         _hd300312300636_
                                                         _tl300311300639_
                                                         ___splice306065306066_
                                                         _target300361300402_
                                                         _tl300363300405_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300304300375_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300304300375_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300311300639_))
                                    (let ((___splice306065306066_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300311300639_
                                              '0))))
                                      (let ((_tl300363300405_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306065306066_
                                                '1)))
                                            (_target300361300402_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306065306066_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300363300405_))
                                            (___match306171306172_
                                             _e300310300622_
                                             _hd300309300626_
                                             _tl300308300629_
                                             _e300313300632_
                                             _hd300312300636_
                                             _tl300311300639_
                                             ___splice306065306066_
                                             _target300361300402_
                                             _tl300363300405_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300304300375_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300304300375_))))))
                        (let () (declare (not safe)) (_g300304300375_)))))
                (let () (declare (not safe)) (_g300304300375_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300692_)
      (let* ((___stx306174306175_ _$stx300692_)
             (_g300697300732_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306174306175_)))))
        (let ((___kont306177306178_
               (lambda (_L300854_ _L300856_)
                 (let ((__tmp306494
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306489
                        (let ((__tmp306490
                               (let ((__tmp306491
                                      (let ((__tmp306493
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306492
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300854_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306493 __tmp306492))))
                                 (declare (not safe))
                                 (cons __tmp306491 '()))))
                          (declare (not safe))
                          (cons _L300856_ __tmp306490))))
                   (declare (not safe))
                   (cons __tmp306494 __tmp306489))))
              (___kont306179306180_
               (lambda (_L300789_ _L300791_)
                 (let ((__tmp306503
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306495
                        (let ((__tmp306496
                               (let ((__tmp306497
                                      (let ((__tmp306502
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306498
                                             (let ((__tmp306499
                                                    (lambda (_g300808300811_
                                                             _g300809300814_)
                                                      (let ((__tmp306500
                                                             (let ((__tmp306501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300808300811_ __tmp306501))))
                (declare (not safe))
                (cons __tmp306500 _g300809300814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306499
                                                       '()
                                                       _L300789_))))
                                        (declare (not safe))
                                        (cons __tmp306502 __tmp306498))))
                                 (declare (not safe))
                                 (cons __tmp306497 '()))))
                          (declare (not safe))
                          (cons _L300791_ __tmp306496))))
                   (declare (not safe))
                   (cons __tmp306503 __tmp306495)))))
          (let ((___match306223306224_
                 (lambda (_e300714300739_
                          _hd300713300743_
                          _tl300712300746_
                          _e300717300749_
                          _hd300716300753_
                          _tl300715300756_
                          ___splice306181306182_
                          _target300718300759_
                          _tl300720300762_)
                   (letrec ((_loop300721300765_
                             (lambda (_hd300719300769_ _arity300725300772_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300719300769_))
                                   (let ((_e300722300775_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300719300769_))))
                                     (let ((_lp-tl300724300782_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300722300775_)))
                                           (_lp-hd300723300779_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300722300775_))))
                                       (_loop300721300765_
                                        _lp-tl300724300782_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300723300779_
                                                _arity300725300772_)))))
                                   (let ((_arity300726300785_
                                          (reverse _arity300725300772_)))
                                     (___kont306179306180_
                                      _arity300726300785_
                                      _hd300716300753_))))))
                     (_loop300721300765_ _target300718300759_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306174306175_))
                (let ((_e300703300824_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306174306175_))))
                  (let ((_tl300701300831_
                         (let () (declare (not safe)) (##cdr _e300703300824_)))
                        (_hd300702300828_
                         (let ()
                           (declare (not safe))
                           (##car _e300703300824_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300701300831_))
                        (let ((_e300706300834_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300701300831_))))
                          (let ((_tl300704300841_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300706300834_)))
                                (_hd300705300838_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300706300834_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300704300841_))
                                (let ((_e300709300844_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300704300841_))))
                                  (let ((_tl300707300851_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300709300844_)))
                                        (_hd300708300848_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300709300844_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300707300851_))
                                        (___kont306177306178_
                                         _hd300708300848_
                                         _hd300705300838_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300704300841_))
                                            (let ((___splice306181306182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300704300841_
                                                      '0))))
                                              (let ((_tl300720300762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306181306182_
                                                        '1)))
                                                    (_target300718300759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306181306182_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300720300762_))
                                                    (___match306223306224_
                                                     _e300703300824_
                                                     _hd300702300828_
                                                     _tl300701300831_
                                                     _e300706300834_
                                                     _hd300705300838_
                                                     _tl300704300841_
                                                     ___splice306181306182_
                                                     _target300718300759_
                                                     _tl300720300762_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300697300732_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300697300732_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300704300841_))
                                    (let ((___splice306181306182_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300704300841_
                                              '0))))
                                      (let ((_tl300720300762_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306181306182_
                                                '1)))
                                            (_target300718300759_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306181306182_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300720300762_))
                                            (___match306223306224_
                                             _e300703300824_
                                             _hd300702300828_
                                             _tl300701300831_
                                             _e300706300834_
                                             _hd300705300838_
                                             _tl300704300841_
                                             ___splice306181306182_
                                             _target300718300759_
                                             _tl300720300762_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300697300732_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300697300732_))))))
                        (let () (declare (not safe)) (_g300697300732_)))))
                (let () (declare (not safe)) (_g300697300732_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300876_)
      (let* ((_g300880300915_
              (lambda (_g300881300911_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300881300911_))))
             (_g300879301043_
              (lambda (_g300881300919_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300881300919_))
                    (let ((_e300886300922_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300881300919_))))
                      (let ((_hd300885300926_
                             (let ()
                               (declare (not safe))
                               (##car _e300886300922_)))
                            (_tl300884300929_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300886300922_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300884300929_))
                            (let ((_g306504_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300884300929_
                                      '0))))
                              (begin
                                (let ((_g306505_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306504_)
                                             (##vector-length _g306504_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306505_ 2)))
                                      (error "Context expects 2 values"
                                             _g306505_)))
                                (let ((_target300887300932_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306504_ 0)))
                                      (_tl300889300935_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306504_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300889300935_))
                                      (letrec ((_loop300890300938_
                                                (lambda (_hd300888300942_
                                                         _arity300894300945_
                                                         _prim300895300947_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300888300942_))
                                                      (let ((_e300891300950_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300888300942_))))
                (let ((_lp-hd300892300954_
                       (let () (declare (not safe)) (##car _e300891300950_)))
                      (_lp-tl300893300957_
                       (let () (declare (not safe)) (##cdr _e300891300950_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300892300954_))
                      (let ((_e300900300960_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300892300954_))))
                        (let ((_hd300899300964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300900300960_)))
                              (_tl300898300967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300900300960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300898300967_))
                              (let ((_g306514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300898300967_
                                        '0))))
                                (begin
                                  (let ((_g306515_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306514_)
                                               (##vector-length _g306514_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306515_ 2)))
                                        (error "Context expects 2 values"
                                               _g306515_)))
                                  (let ((_target300901300970_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306514_ 0)))
                                        (_tl300903300973_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306514_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300903300973_))
                                        (letrec ((_loop300904300976_
                                                  (lambda (_hd300902300980_
                                                           _arity300908300983_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300902300980_))
                                                        (let ((_e300905300986_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300902300980_))))
                  (let ((_lp-hd300906300990_
                         (let () (declare (not safe)) (##car _e300905300986_)))
                        (_lp-tl300907300993_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300905300986_))))
                    (_loop300904300976_
                     _lp-tl300907300993_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300906300990_ _arity300908300983_)))))
                (let ((_arity300909300996_ (reverse _arity300908300983_)))
                  (_loop300890300938_
                   _lp-tl300893300957_
                   (let ()
                     (declare (not safe))
                     (cons _arity300909300996_ _arity300894300945_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300899300964_ _prim300895300947_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300904300976_
                                           _target300901300970_
                                           '()))
                                        (_g300880300915_ _g300881300919_)))))
                              (_g300880300915_ _g300881300919_))))
                      (_g300880300915_ _g300881300919_))))
              (let ((_arity300896301000_ (reverse _arity300894300945_))
                    (_prim300897301003_ (reverse _prim300895300947_)))
                ((lambda (_L301006_ _L301008_)
                   (let ((__tmp306513
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306506
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301006_
                               _L301008_))
                            (let ((__tmp306507
                                   (lambda (_g301023301029_
                                            _g301024301032_
                                            _g301025301034_)
                                     (let ((__tmp306508
                                            (let ((__tmp306512
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306509
                                                   (let ((__tmp306510
                                                          (let ((__tmp306511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301026301037_ _g301027301040_)
                           (let ()
                             (declare (not safe))
                             (cons _g301026301037_ _g301027301040_)))))
                    (declare (not safe))
                    (foldr1 __tmp306511 '() _g301023301029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301024301032_
                                                           __tmp306510))))
                                              (declare (not safe))
                                              (cons __tmp306512 __tmp306509))))
                                       (declare (not safe))
                                       (cons __tmp306508 _g301025301034_)))))
                              (declare (not safe))
                              (foldr2 __tmp306507 '() _L301006_ _L301008_)))))
                     (declare (not safe))
                     (cons __tmp306513 __tmp306506)))
                 _arity300896301000_
                 _prim300897301003_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300890300938_
                                         _target300887300932_
                                         '()
                                         '()))
                                      (_g300880300915_ _g300881300919_)))))
                            (_g300880300915_ _g300881300919_))))
                    (_g300880300915_ _g300881300919_)))))
        (_g300879301043_ _$stx300876_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301049_)
      (let* ((_g301053301088_
              (lambda (_g301054301084_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301054301084_))))
             (_g301052301216_
              (lambda (_g301054301092_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301054301092_))
                    (let ((_e301059301095_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301054301092_))))
                      (let ((_hd301058301099_
                             (let ()
                               (declare (not safe))
                               (##car _e301059301095_)))
                            (_tl301057301102_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301059301095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301057301102_))
                            (let ((_g306516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301057301102_
                                      '0))))
                              (begin
                                (let ((_g306517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306516_)
                                             (##vector-length _g306516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306517_ 2)))
                                      (error "Context expects 2 values"
                                             _g306517_)))
                                (let ((_target301060301105_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306516_ 0)))
                                      (_tl301062301108_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306516_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301062301108_))
                                      (letrec ((_loop301063301111_
                                                (lambda (_hd301061301115_
                                                         _arity301067301118_
                                                         _prim301068301120_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301061301115_))
                                                      (let ((_e301064301123_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301061301115_))))
                (let ((_lp-hd301065301127_
                       (let () (declare (not safe)) (##car _e301064301123_)))
                      (_lp-tl301066301130_
                       (let () (declare (not safe)) (##cdr _e301064301123_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301065301127_))
                      (let ((_e301073301133_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301065301127_))))
                        (let ((_hd301072301137_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301073301133_)))
                              (_tl301071301140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301073301133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301071301140_))
                              (let ((_g306526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301071301140_
                                        '0))))
                                (begin
                                  (let ((_g306527_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306526_)
                                               (##vector-length _g306526_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306527_ 2)))
                                        (error "Context expects 2 values"
                                               _g306527_)))
                                  (let ((_target301074301143_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306526_ 0)))
                                        (_tl301076301146_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306526_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301076301146_))
                                        (letrec ((_loop301077301149_
                                                  (lambda (_hd301075301153_
                                                           _arity301081301156_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301075301153_))
                                                        (let ((_e301078301159_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301075301153_))))
                  (let ((_lp-hd301079301163_
                         (let () (declare (not safe)) (##car _e301078301159_)))
                        (_lp-tl301080301166_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301078301159_))))
                    (_loop301077301149_
                     _lp-tl301080301166_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301079301163_ _arity301081301156_)))))
                (let ((_arity301082301169_ (reverse _arity301081301156_)))
                  (_loop301063301111_
                   _lp-tl301066301130_
                   (let ()
                     (declare (not safe))
                     (cons _arity301082301169_ _arity301067301118_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301072301137_ _prim301068301120_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301077301149_
                                           _target301074301143_
                                           '()))
                                        (_g301053301088_ _g301054301092_)))))
                              (_g301053301088_ _g301054301092_))))
                      (_g301053301088_ _g301054301092_))))
              (let ((_arity301069301173_ (reverse _arity301067301118_))
                    (_prim301070301176_ (reverse _prim301068301120_)))
                ((lambda (_L301179_ _L301181_)
                   (let ((__tmp306525
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306518
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301179_
                               _L301181_))
                            (let ((__tmp306519
                                   (lambda (_g301196301202_
                                            _g301197301205_
                                            _g301198301207_)
                                     (let ((__tmp306520
                                            (let ((__tmp306524
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306521
                                                   (let ((__tmp306522
                                                          (let ((__tmp306523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301199301210_ _g301200301213_)
                           (let ()
                             (declare (not safe))
                             (cons _g301199301210_ _g301200301213_)))))
                    (declare (not safe))
                    (foldr1 __tmp306523 '() _g301196301202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301197301205_
                                                           __tmp306522))))
                                              (declare (not safe))
                                              (cons __tmp306524 __tmp306521))))
                                       (declare (not safe))
                                       (cons __tmp306520 _g301198301207_)))))
                              (declare (not safe))
                              (foldr2 __tmp306519 '() _L301179_ _L301181_)))))
                     (declare (not safe))
                     (cons __tmp306525 __tmp306518)))
                 _arity301069301173_
                 _prim301070301176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301063301111_
                                         _target301060301105_
                                         '()
                                         '()))
                                      (_g301053301088_ _g301054301092_)))))
                            (_g301053301088_ _g301054301092_))))
                    (_g301053301088_ _g301054301092_)))))
        (_g301052301216_ _$stx301049_)))))
