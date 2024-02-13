(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298222_)
      (let* ((_g298226298244_
              (lambda (_g298227298240_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298227298240_))))
             (_g298225298299_
              (lambda (_g298227298248_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298227298248_))
                    (let ((_e298232298251_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298227298248_))))
                      (let ((_hd298231298255_
                             (let ()
                               (declare (not safe))
                               (##car _e298232298251_)))
                            (_tl298230298258_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298232298251_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298230298258_))
                            (let ((_e298235298261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298230298258_))))
                              (let ((_hd298234298265_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298235298261_)))
                                    (_tl298233298268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298235298261_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298233298268_))
                                    (let ((_e298238298271_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298233298268_))))
                                      (let ((_hd298237298275_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298238298271_)))
                                            (_tl298236298278_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298238298271_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298236298278_))
                                            ((lambda (_L298281_ _L298283_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298283_))
                                                   (let ((__tmp306331
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306326
                                                          (let ((__tmp306328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306330
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306329
                                (let ()
                                  (declare (not safe))
                                  (cons _L298283_ '()))))
                           (declare (not safe))
                           (cons __tmp306330 __tmp306329)))
                        (__tmp306327
                         (let () (declare (not safe)) (cons _L298281_ '()))))
                    (declare (not safe))
                    (cons __tmp306328 __tmp306327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306331
                                                           __tmp306326))
                                                   (_g298226298244_
                                                    _g298227298248_)))
                                             _hd298237298275_
                                             _hd298234298265_)
                                            (_g298226298244_
                                             _g298227298248_))))
                                    (_g298226298244_ _g298227298248_))))
                            (_g298226298244_ _g298227298248_))))
                    (_g298226298244_ _g298227298248_)))))
        (_g298225298299_ _$stx298222_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298303_)
      (let* ((_g298307298336_
              (lambda (_g298308298332_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298308298332_))))
             (_g298306298436_
              (lambda (_g298308298340_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298308298340_))
                    (let ((_e298313298343_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298308298340_))))
                      (let ((_hd298312298347_
                             (let ()
                               (declare (not safe))
                               (##car _e298313298343_)))
                            (_tl298311298350_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298313298343_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298311298350_))
                            (let ((_g306332_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298311298350_
                                      '0))))
                              (begin
                                (let ((_g306333_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306332_)
                                             (##vector-length _g306332_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306333_ 2)))
                                      (error "Context expects 2 values"
                                             _g306333_)))
                                (let ((_target298314298353_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306332_ 0)))
                                      (_tl298316298356_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306332_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298316298356_))
                                      (letrec ((_loop298317298359_
                                                (lambda (_hd298315298363_
                                                         _type298321298366_
                                                         _symbol298322298368_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298315298363_))
                                                      (let ((_e298318298371_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298315298363_))))
                (let ((_lp-hd298319298375_
                       (let () (declare (not safe)) (##car _e298318298371_)))
                      (_lp-tl298320298378_
                       (let () (declare (not safe)) (##cdr _e298318298371_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298319298375_))
                      (let ((_e298327298381_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298319298375_))))
                        (let ((_hd298326298385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298327298381_)))
                              (_tl298325298388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298327298381_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298325298388_))
                              (let ((_e298330298391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298325298388_))))
                                (let ((_hd298329298395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298330298391_)))
                                      (_tl298328298398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298330298391_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298328298398_))
                                      (_loop298317298359_
                                       _lp-tl298320298378_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298329298395_
                                               _type298321298366_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298326298385_
                                               _symbol298322298368_)))
                                      (_g298307298336_ _g298308298340_))))
                              (_g298307298336_ _g298308298340_))))
                      (_g298307298336_ _g298308298340_))))
              (let ((_type298323298401_ (reverse _type298321298366_))
                    (_symbol298324298404_ (reverse _symbol298322298368_)))
                ((lambda (_L298407_ _L298409_)
                   (let ((__tmp306340
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306334
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298407_
                               _L298409_))
                            (let ((__tmp306335
                                   (lambda (_g298424298428_
                                            _g298425298431_
                                            _g298426298433_)
                                     (let ((__tmp306336
                                            (let ((__tmp306339
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306337
                                                   (let ((__tmp306338
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298424298428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298425298431_
                                                           __tmp306338))))
                                              (declare (not safe))
                                              (cons __tmp306339 __tmp306337))))
                                       (declare (not safe))
                                       (cons __tmp306336 _g298426298433_)))))
                              (declare (not safe))
                              (foldr2 __tmp306335 '() _L298407_ _L298409_)))))
                     (declare (not safe))
                     (cons __tmp306340 __tmp306334)))
                 _type298323298401_
                 _symbol298324298404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298317298359_
                                         _target298314298353_
                                         '()
                                         '()))
                                      (_g298307298336_ _g298308298340_)))))
                            (_g298307298336_ _g298308298340_))))
                    (_g298307298336_ _g298308298340_)))))
        (_g298306298436_ _$stx298303_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298441_)
      (let* ((___stx305891305892_ _$stx298441_)
             (_g298446298488_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305891305892_)))))
        (let ((___kont305894305895_
               (lambda (_L298616_ _L298618_ _L298619_ _L298620_)
                 (let ((__tmp306354
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306341
                        (let ((__tmp306351
                               (let ((__tmp306353
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306352
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298620_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306353 __tmp306352)))
                              (__tmp306342
                               (let ((__tmp306348
                                      (let ((__tmp306350
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306349
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298619_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306350 __tmp306349)))
                                     (__tmp306343
                                      (let ((__tmp306345
                                             (let ((__tmp306347
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306346
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298618_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306347 __tmp306346)))
                                            (__tmp306344
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298616_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306345 __tmp306344))))
                                 (declare (not safe))
                                 (cons __tmp306348 __tmp306343))))
                          (declare (not safe))
                          (cons __tmp306351 __tmp306342))))
                   (declare (not safe))
                   (cons __tmp306354 __tmp306341))))
              (___kont305896305897_
               (lambda (_L298535_ _L298537_ _L298538_ _L298539_)
                 (let ((__tmp306355
                        (let ((__tmp306356
                               (let ((__tmp306357
                                      (let ((__tmp306358
                                             (let ((__tmp306359
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306359 '()))))
                                        (declare (not safe))
                                        (cons _L298535_ __tmp306358))))
                                 (declare (not safe))
                                 (cons _L298537_ __tmp306357))))
                          (declare (not safe))
                          (cons _L298538_ __tmp306356))))
                   (declare (not safe))
                   (cons _L298539_ __tmp306355)))))
          (let ((___match305930305931_
                 (lambda (_e298454298566_
                          _hd298453298570_
                          _tl298452298573_
                          _e298457298576_
                          _hd298456298580_
                          _tl298455298583_
                          _e298460298586_
                          _hd298459298590_
                          _tl298458298593_
                          _e298463298596_
                          _hd298462298600_
                          _tl298461298603_
                          _e298466298606_
                          _hd298465298610_
                          _tl298464298613_)
                   (let ((_L298616_ _hd298465298610_)
                         (_L298618_ _hd298462298600_)
                         (_L298619_ _hd298459298590_)
                         (_L298620_ _hd298456298580_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L298620_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298619_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298618_)))
                         (___kont305894305895_
                          _L298616_
                          _L298618_
                          _L298619_
                          _L298620_)
                         (let () (declare (not safe)) (_g298446298488_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305891305892_))
                (let ((_e298454298566_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305891305892_))))
                  (let ((_tl298452298573_
                         (let () (declare (not safe)) (##cdr _e298454298566_)))
                        (_hd298453298570_
                         (let ()
                           (declare (not safe))
                           (##car _e298454298566_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298452298573_))
                        (let ((_e298457298576_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298452298573_))))
                          (let ((_tl298455298583_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298457298576_)))
                                (_hd298456298580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298457298576_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298455298583_))
                                (let ((_e298460298586_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298455298583_))))
                                  (let ((_tl298458298593_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298460298586_)))
                                        (_hd298459298590_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298460298586_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298458298593_))
                                        (let ((_e298463298596_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298458298593_))))
                                          (let ((_tl298461298603_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298463298596_)))
                                                (_hd298462298600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298463298596_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298461298603_))
                                                (let ((_e298466298606_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298461298603_))))
                                                  (let ((_tl298464298613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298466298606_)))
                                                        (_hd298465298610_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298466298606_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298464298613_))
                                                        (___match305930305931_
                                                         _e298454298566_
                                                         _hd298453298570_
                                                         _tl298452298573_
                                                         _e298457298576_
                                                         _hd298456298580_
                                                         _tl298455298583_
                                                         _e298460298586_
                                                         _hd298459298590_
                                                         _tl298458298593_
                                                         _e298463298596_
                                                         _hd298462298600_
                                                         _tl298461298603_
                                                         _e298466298606_
                                                         _hd298465298610_
                                                         _tl298464298613_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298446298488_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298461298603_))
                                                    (___kont305896305897_
                                                     _hd298462298600_
                                                     _hd298459298590_
                                                     _hd298456298580_
                                                     _hd298453298570_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298446298488_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298446298488_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298446298488_)))))
                        (let () (declare (not safe)) (_g298446298488_)))))
                (let () (declare (not safe)) (_g298446298488_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx298645_)
      (let* ((_g298649298684_
              (lambda (_g298650298680_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298650298680_))))
             (_g298648298803_
              (lambda (_g298650298688_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298650298688_))
                    (let ((_e298656298691_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298650298688_))))
                      (let ((_hd298655298695_
                             (let ()
                               (declare (not safe))
                               (##car _e298656298691_)))
                            (_tl298654298698_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298656298691_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298654298698_))
                            (let ((_g306360_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298654298698_
                                      '0))))
                              (begin
                                (let ((_g306361_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306360_)
                                             (##vector-length _g306360_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306361_ 2)))
                                      (error "Context expects 2 values"
                                             _g306361_)))
                                (let ((_target298657298701_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306360_ 0)))
                                      (_tl298659298704_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306360_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298659298704_))
                                      (letrec ((_loop298660298707_
                                                (lambda (_hd298658298711_
                                                         _symbol298664298714_
                                                         _method298665298716_
                                                         _type-t298666298718_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298658298711_))
                                                      (let ((_e298661298721_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298658298711_))))
                (let ((_lp-hd298662298725_
                       (let () (declare (not safe)) (##car _e298661298721_)))
                      (_lp-tl298663298728_
                       (let () (declare (not safe)) (##cdr _e298661298721_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298662298725_))
                      (let ((_e298672298731_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298662298725_))))
                        (let ((_hd298671298735_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298672298731_)))
                              (_tl298670298738_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298672298731_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298670298738_))
                              (let ((_e298675298741_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298670298738_))))
                                (let ((_hd298674298745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298675298741_)))
                                      (_tl298673298748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298675298741_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298673298748_))
                                      (let ((_e298678298751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298673298748_))))
                                        (let ((_hd298677298755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298678298751_)))
                                              (_tl298676298758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298678298751_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298676298758_))
                                              (_loop298660298707_
                                               _lp-tl298663298728_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298677298755_
                                                       _symbol298664298714_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298674298745_
                                                       _method298665298716_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298671298735_
                                                       _type-t298666298718_)))
                                              (_g298649298684_
                                               _g298650298688_))))
                                      (_g298649298684_ _g298650298688_))))
                              (_g298649298684_ _g298650298688_))))
                      (_g298649298684_ _g298650298688_))))
              (let ((_symbol298667298761_ (reverse _symbol298664298714_))
                    (_method298668298764_ (reverse _method298665298716_))
                    (_type-t298669298766_ (reverse _type-t298666298718_)))
                ((lambda (_L298769_ _L298771_ _L298772_)
                   (let ((__tmp306369
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306362
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298769_
                               _L298771_
                               _L298772_))
                            (let ((__tmp306363
                                   (lambda (_g298788298793_
                                            _g298789298796_
                                            _g298790298798_
                                            _g298791298800_)
                                     (let ((__tmp306364
                                            (let ((__tmp306368
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306365
                                                   (let ((__tmp306366
                                                          (let ((__tmp306367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298788298793_ '()))))
                    (declare (not safe))
                    (cons _g298789298796_ __tmp306367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298790298798_
                                                           __tmp306366))))
                                              (declare (not safe))
                                              (cons __tmp306368 __tmp306365))))
                                       (declare (not safe))
                                       (cons __tmp306364 _g298791298800_)))))
                              (declare (not safe))
                              (foldr* __tmp306363
                                      '()
                                      _L298769_
                                      _L298771_
                                      _L298772_)))))
                     (declare (not safe))
                     (cons __tmp306369 __tmp306362)))
                 _symbol298667298761_
                 _method298668298764_
                 _type-t298669298766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298660298707_
                                         _target298657298701_
                                         '()
                                         '()
                                         '()))
                                      (_g298649298684_ _g298650298688_)))))
                            (_g298649298684_ _g298650298688_))))
                    (_g298649298684_ _g298650298688_)))))
        (_g298648298803_ _$stx298645_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298808_)
      (let* ((_g298812298845_
              (lambda (_g298813298841_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298813298841_))))
             (_g298811298959_
              (lambda (_g298813298849_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298813298849_))
                    (let ((_e298819298852_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298813298849_))))
                      (let ((_hd298818298856_
                             (let ()
                               (declare (not safe))
                               (##car _e298819298852_)))
                            (_tl298817298859_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298819298852_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298817298859_))
                            (let ((_e298822298862_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298817298859_))))
                              (let ((_hd298821298866_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298822298862_)))
                                    (_tl298820298869_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298822298862_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298820298869_))
                                    (let ((_g306370_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298820298869_
                                              '0))))
                                      (begin
                                        (let ((_g306371_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306370_)
                                                     (##vector-length
                                                      _g306370_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306371_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306371_)))
                                        (let ((_target298823298872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306370_ 0)))
                                              (_tl298825298875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306370_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298825298875_))
                                              (letrec ((_loop298826298878_
                                                        (lambda (_hd298824298882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298830298885_
                         _method298831298887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298824298882_))
                      (let ((_e298827298890_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298824298882_))))
                        (let ((_lp-hd298828298894_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298827298890_)))
                              (_lp-tl298829298897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298827298890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298828298894_))
                              (let ((_e298836298900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298828298894_))))
                                (let ((_hd298835298904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298836298900_)))
                                      (_tl298834298907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298836298900_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298834298907_))
                                      (let ((_e298839298910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298834298907_))))
                                        (let ((_hd298838298914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298839298910_)))
                                              (_tl298837298917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298839298910_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298837298917_))
                                              (_loop298826298878_
                                               _lp-tl298829298897_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298838298914_
                                                       _symbol298830298885_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298835298904_
                                                       _method298831298887_)))
                                              (_g298812298845_
                                               _g298813298849_))))
                                      (_g298812298845_ _g298813298849_))))
                              (_g298812298845_ _g298813298849_))))
                      (let ((_symbol298832298920_
                             (reverse _symbol298830298885_))
                            (_method298833298923_
                             (reverse _method298831298887_)))
                        ((lambda (_L298926_ _L298928_ _L298929_)
                           (let ((__tmp306379
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306372
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298926_
                                       _L298928_))
                                    (let ((__tmp306373
                                           (lambda (_g298947298951_
                                                    _g298948298954_
                                                    _g298949298956_)
                                             (let ((__tmp306374
                                                    (let ((__tmp306378
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306375
                                                           (let ((__tmp306376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306377
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298947298951_ '()))))
                            (declare (not safe))
                            (cons _g298948298954_ __tmp306377))))
                     (declare (not safe))
                     (cons _L298929_ __tmp306376))))
              (declare (not safe))
              (cons __tmp306378 __tmp306375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306374
                                                     _g298949298956_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306373
                                              '()
                                              _L298926_
                                              _L298928_)))))
                             (declare (not safe))
                             (cons __tmp306379 __tmp306372)))
                         _symbol298832298920_
                         _method298833298923_
                         _hd298821298866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298826298878_
                                                 _target298823298872_
                                                 '()
                                                 '()))
                                              (_g298812298845_
                                               _g298813298849_)))))
                                    (_g298812298845_ _g298813298849_))))
                            (_g298812298845_ _g298813298849_))))
                    (_g298812298845_ _g298813298849_)))))
        (_g298811298959_ _$stx298808_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298964_)
      (let* ((_g298968298982_
              (lambda (_g298969298978_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298969298978_))))
             (_g298967299023_
              (lambda (_g298969298986_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298969298986_))
                    (let ((_e298973298989_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298969298986_))))
                      (let ((_hd298972298993_
                             (let ()
                               (declare (not safe))
                               (##car _e298973298989_)))
                            (_tl298971298996_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298973298989_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298971298996_))
                            (let ((_e298976298999_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298971298996_))))
                              (let ((_hd298975299003_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298976298999_)))
                                    (_tl298974299006_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298976298999_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298974299006_))
                                    ((lambda (_L299009_)
                                       (let ((__tmp306384
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306380
                                              (let ((__tmp306381
                                                     (let ((__tmp306383
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306382
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306383 __tmp306382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306381 '()))))
                                         (declare (not safe))
                                         (cons __tmp306384 __tmp306380)))
                                     _hd298975299003_)
                                    (_g298968298982_ _g298969298986_))))
                            (_g298968298982_ _g298969298986_))))
                    (_g298968298982_ _g298969298986_)))))
        (_g298967299023_ _$stx298964_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx299027_)
      (let* ((_g299031299081_
              (lambda (_g299032299077_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299032299077_))))
             (_g299030299248_
              (lambda (_g299032299085_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299032299085_))
                    (let ((_e299045299088_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299032299085_))))
                      (let ((_hd299044299092_
                             (let ()
                               (declare (not safe))
                               (##car _e299045299088_)))
                            (_tl299043299095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299045299088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299043299095_))
                            (let ((_e299048299098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299043299095_))))
                              (let ((_hd299047299102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299048299098_)))
                                    (_tl299046299105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299048299098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299046299105_))
                                    (let ((_e299051299108_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299046299105_))))
                                      (let ((_hd299050299112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299051299108_)))
                                            (_tl299049299115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299051299108_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299049299115_))
                                            (let ((_e299054299118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299049299115_))))
                                              (let ((_hd299053299122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299054299118_)))
                                                    (_tl299052299125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299054299118_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299052299125_))
                                                    (let ((_e299057299128_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299052299125_))))
                                                      (let ((_hd299056299132_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e299057299128_)))
                    (_tl299055299135_
                     (let () (declare (not safe)) (##cdr _e299057299128_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl299055299135_))
                    (let ((_e299060299138_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl299055299135_))))
                      (let ((_hd299059299142_
                             (let ()
                               (declare (not safe))
                               (##car _e299060299138_)))
                            (_tl299058299145_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299060299138_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299058299145_))
                            (let ((_e299063299148_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299058299145_))))
                              (let ((_hd299062299152_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299063299148_)))
                                    (_tl299061299155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299063299148_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299061299155_))
                                    (let ((_e299066299158_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299061299155_))))
                                      (let ((_hd299065299162_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299066299158_)))
                                            (_tl299064299165_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299066299158_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299064299165_))
                                            (let ((_e299069299168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299064299165_))))
                                              (let ((_hd299068299172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299069299168_)))
                                                    (_tl299067299175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299069299168_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299067299175_))
                                                    (let ((_e299072299178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299067299175_))))
                                                      (let ((_hd299071299182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e299072299178_)))
                    (_tl299070299185_
                     (let () (declare (not safe)) (##cdr _e299072299178_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl299070299185_))
                    (let ((_e299075299188_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl299070299185_))))
                      (let ((_hd299074299192_
                             (let ()
                               (declare (not safe))
                               (##car _e299075299188_)))
                            (_tl299073299195_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299075299188_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl299073299195_))
                            ((lambda (_L299198_
                                      _L299200_
                                      _L299201_
                                      _L299202_
                                      _L299203_
                                      _L299204_
                                      _L299205_
                                      _L299206_
                                      _L299207_
                                      _L299208_)
                               (let ((__tmp306419
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306385
                                      (let ((__tmp306416
                                             (let ((__tmp306418
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306417
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299208_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306418 __tmp306417)))
                                            (__tmp306386
                                             (let ((__tmp306413
                                                    (let ((__tmp306415
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306414
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306415 __tmp306414)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306387
                                                    (let ((__tmp306410
                                                           (let ((__tmp306412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306411
                          (let () (declare (not safe)) (cons _L299206_ '()))))
                     (declare (not safe))
                     (cons __tmp306412 __tmp306411)))
                  (__tmp306388
                   (let ((__tmp306407
                          (let ((__tmp306409
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306408
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299205_ '()))))
                            (declare (not safe))
                            (cons __tmp306409 __tmp306408)))
                         (__tmp306389
                          (let ((__tmp306404
                                 (let ((__tmp306406
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306405
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299204_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306406 __tmp306405)))
                                (__tmp306390
                                 (let ((__tmp306401
                                        (let ((__tmp306403
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306402
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299203_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306403 __tmp306402)))
                                       (__tmp306391
                                        (let ((__tmp306392
                                               (let ((__tmp306393
                                                      (let ((__tmp306398
                                                             (let ((__tmp306400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306399
                            (let ()
                              (declare (not safe))
                              (cons _L299200_ '()))))
                       (declare (not safe))
                       (cons __tmp306400 __tmp306399)))
                    (__tmp306394
                     (let ((__tmp306395
                            (let ((__tmp306397
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306396
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299198_ '()))))
                              (declare (not safe))
                              (cons __tmp306397 __tmp306396))))
                       (declare (not safe))
                       (cons __tmp306395 '()))))
                (declare (not safe))
                (cons __tmp306398 __tmp306394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299201_
                                                       __tmp306393))))
                                          (declare (not safe))
                                          (cons _L299202_ __tmp306392))))
                                   (declare (not safe))
                                   (cons __tmp306401 __tmp306391))))
                            (declare (not safe))
                            (cons __tmp306404 __tmp306390))))
                     (declare (not safe))
                     (cons __tmp306407 __tmp306389))))
              (declare (not safe))
              (cons __tmp306410 __tmp306388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306413
                                                     __tmp306387))))
                                        (declare (not safe))
                                        (cons __tmp306416 __tmp306386))))
                                 (declare (not safe))
                                 (cons __tmp306419 __tmp306385)))
                             _hd299074299192_
                             _hd299071299182_
                             _hd299068299172_
                             _hd299065299162_
                             _hd299062299152_
                             _hd299059299142_
                             _hd299056299132_
                             _hd299053299122_
                             _hd299050299112_
                             _hd299047299102_)
                            (_g299031299081_ _g299032299085_))))
                    (_g299031299081_ _g299032299085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g299031299081_
                                                     _g299032299085_))))
                                            (_g299031299081_
                                             _g299032299085_))))
                                    (_g299031299081_ _g299032299085_))))
                            (_g299031299081_ _g299032299085_))))
                    (_g299031299081_ _g299032299085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g299031299081_
                                                     _g299032299085_))))
                                            (_g299031299081_
                                             _g299032299085_))))
                                    (_g299031299081_ _g299032299085_))))
                            (_g299031299081_ _g299032299085_))))
                    (_g299031299081_ _g299032299085_)))))
        (_g299030299248_ _$stx299027_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299252_)
      (let* ((_g299256299270_
              (lambda (_g299257299266_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299257299266_))))
             (_g299255299311_
              (lambda (_g299257299274_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299257299274_))
                    (let ((_e299261299277_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299257299274_))))
                      (let ((_hd299260299281_
                             (let ()
                               (declare (not safe))
                               (##car _e299261299277_)))
                            (_tl299259299284_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299261299277_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299259299284_))
                            (let ((_e299264299287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299259299284_))))
                              (let ((_hd299263299291_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299264299287_)))
                                    (_tl299262299294_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299264299287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299262299294_))
                                    ((lambda (_L299297_)
                                       (let ((__tmp306424
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp306420
                                              (let ((__tmp306421
                                                     (let ((__tmp306423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306422
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306423 __tmp306422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306421 '()))))
                                         (declare (not safe))
                                         (cons __tmp306424 __tmp306420)))
                                     _hd299263299291_)
                                    (_g299256299270_ _g299257299274_))))
                            (_g299256299270_ _g299257299274_))))
                    (_g299256299270_ _g299257299274_)))))
        (_g299255299311_ _$stx299252_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299315_)
      (let* ((_g299319299333_
              (lambda (_g299320299329_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299320299329_))))
             (_g299318299374_
              (lambda (_g299320299337_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299320299337_))
                    (let ((_e299324299340_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299320299337_))))
                      (let ((_hd299323299344_
                             (let ()
                               (declare (not safe))
                               (##car _e299324299340_)))
                            (_tl299322299347_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299324299340_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299322299347_))
                            (let ((_e299327299350_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299322299347_))))
                              (let ((_hd299326299354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299327299350_)))
                                    (_tl299325299357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299327299350_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299325299357_))
                                    ((lambda (_L299360_)
                                       (let ((__tmp306429
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306425
                                              (let ((__tmp306426
                                                     (let ((__tmp306428
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306427
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306428 __tmp306427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306426 '()))))
                                         (declare (not safe))
                                         (cons __tmp306429 __tmp306425)))
                                     _hd299326299354_)
                                    (_g299319299333_ _g299320299337_))))
                            (_g299319299333_ _g299320299337_))))
                    (_g299319299333_ _g299320299337_)))))
        (_g299318299374_ _$stx299315_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299378_)
      (let* ((_g299382299404_
              (lambda (_g299383299400_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299383299400_))))
             (_g299381299473_
              (lambda (_g299383299408_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299383299408_))
                    (let ((_e299389299411_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299383299408_))))
                      (let ((_hd299388299415_
                             (let ()
                               (declare (not safe))
                               (##car _e299389299411_)))
                            (_tl299387299418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299389299411_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299387299418_))
                            (let ((_e299392299421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299387299418_))))
                              (let ((_hd299391299425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299392299421_)))
                                    (_tl299390299428_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299392299421_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299390299428_))
                                    (let ((_e299395299431_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299390299428_))))
                                      (let ((_hd299394299435_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299395299431_)))
                                            (_tl299393299438_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299395299431_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299393299438_))
                                            (let ((_e299398299441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299393299438_))))
                                              (let ((_hd299397299445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299398299441_)))
                                                    (_tl299396299448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299398299441_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299396299448_))
                                                    ((lambda (_L299451_
                                                              _L299453_
                                                              _L299454_)
                                                       (let ((__tmp306439
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306430
                      (let ((__tmp306436
                             (let ((__tmp306438
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306437
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299454_ '()))))
                               (declare (not safe))
                               (cons __tmp306438 __tmp306437)))
                            (__tmp306431
                             (let ((__tmp306433
                                    (let ((__tmp306435
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306434
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299453_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306435 __tmp306434)))
                                   (__tmp306432
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299451_ '()))))
                               (declare (not safe))
                               (cons __tmp306433 __tmp306432))))
                        (declare (not safe))
                        (cons __tmp306436 __tmp306431))))
                 (declare (not safe))
                 (cons __tmp306439 __tmp306430)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299397299445_
                                                     _hd299394299435_
                                                     _hd299391299425_)
                                                    (_g299382299404_
                                                     _g299383299408_))))
                                            (_g299382299404_
                                             _g299383299408_))))
                                    (_g299382299404_ _g299383299408_))))
                            (_g299382299404_ _g299383299408_))))
                    (_g299382299404_ _g299383299408_)))))
        (_g299381299473_ _$stx299378_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx299477_)
      (let* ((_g299481299503_
              (lambda (_g299482299499_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299482299499_))))
             (_g299480299572_
              (lambda (_g299482299507_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299482299507_))
                    (let ((_e299488299510_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299482299507_))))
                      (let ((_hd299487299514_
                             (let ()
                               (declare (not safe))
                               (##car _e299488299510_)))
                            (_tl299486299517_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299488299510_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299486299517_))
                            (let ((_e299491299520_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299486299517_))))
                              (let ((_hd299490299524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299491299520_)))
                                    (_tl299489299527_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299491299520_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299489299527_))
                                    (let ((_e299494299530_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299489299527_))))
                                      (let ((_hd299493299534_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299494299530_)))
                                            (_tl299492299537_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299494299530_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299492299537_))
                                            (let ((_e299497299540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299492299537_))))
                                              (let ((_hd299496299544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299497299540_)))
                                                    (_tl299495299547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299497299540_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299495299547_))
                                                    ((lambda (_L299550_
                                                              _L299552_
                                                              _L299553_)
                                                       (let ((__tmp306449
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306440
                      (let ((__tmp306446
                             (let ((__tmp306448
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306447
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299553_ '()))))
                               (declare (not safe))
                               (cons __tmp306448 __tmp306447)))
                            (__tmp306441
                             (let ((__tmp306443
                                    (let ((__tmp306445
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306444
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299552_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306445 __tmp306444)))
                                   (__tmp306442
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299550_ '()))))
                               (declare (not safe))
                               (cons __tmp306443 __tmp306442))))
                        (declare (not safe))
                        (cons __tmp306446 __tmp306441))))
                 (declare (not safe))
                 (cons __tmp306449 __tmp306440)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299496299544_
                                                     _hd299493299534_
                                                     _hd299490299524_)
                                                    (_g299481299503_
                                                     _g299482299507_))))
                                            (_g299481299503_
                                             _g299482299507_))))
                                    (_g299481299503_ _g299482299507_))))
                            (_g299481299503_ _g299482299507_))))
                    (_g299481299503_ _g299482299507_)))))
        (_g299480299572_ _$stx299477_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx299576_)
      (let* ((___stx305959305960_ _$stx299576_)
             (_g299584299652_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305959305960_)))))
        (let ((___kont305962305963_
               (lambda (_L299930_ _L299932_)
                 (let ((__tmp306465
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306450
                        (let ((__tmp306461
                               (let ((__tmp306464
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306462
                                      (let ((__tmp306463
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306463 '()))))
                                 (declare (not safe))
                                 (cons __tmp306464 __tmp306462)))
                              (__tmp306451
                               (let ((__tmp306458
                                      (let ((__tmp306460
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306459
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299932_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306460 __tmp306459)))
                                     (__tmp306452
                                      (let ((__tmp306453
                                             (let ((__tmp306454
                                                    (let ((__tmp306455
                                                           (let ((__tmp306457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306456
                          (let () (declare (not safe)) (cons _L299930_ '()))))
                     (declare (not safe))
                     (cons __tmp306457 __tmp306456))))
              (declare (not safe))
              (cons __tmp306455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299930_ __tmp306454))))
                                        (declare (not safe))
                                        (cons '#f __tmp306453))))
                                 (declare (not safe))
                                 (cons __tmp306458 __tmp306452))))
                          (declare (not safe))
                          (cons __tmp306461 __tmp306451))))
                   (declare (not safe))
                   (cons __tmp306465 __tmp306450))))
              (___kont305964305965_
               (lambda (_L299861_ _L299863_)
                 (let ((__tmp306466
                        (let ((__tmp306467
                               (let ((__tmp306468
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299861_ __tmp306468))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306467))))
                   (declare (not safe))
                   (cons _L299863_ __tmp306466))))
              (___kont305966305967_
               (lambda (_L299800_ _L299802_)
                 (let ((__tmp306482
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306469
                        (let ((__tmp306478
                               (let ((__tmp306481
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306479
                                      (let ((__tmp306480
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306480 '()))))
                                 (declare (not safe))
                                 (cons __tmp306481 __tmp306479)))
                              (__tmp306470
                               (let ((__tmp306475
                                      (let ((__tmp306477
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306476
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299802_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306477 __tmp306476)))
                                     (__tmp306471
                                      (let ((__tmp306472
                                             (let ((__tmp306474
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306473
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299800_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306474
                                                     __tmp306473))))
                                        (declare (not safe))
                                        (cons __tmp306472 '()))))
                                 (declare (not safe))
                                 (cons __tmp306475 __tmp306471))))
                          (declare (not safe))
                          (cons __tmp306478 __tmp306470))))
                   (declare (not safe))
                   (cons __tmp306482 __tmp306469))))
              (___kont305968305969_
               (lambda (_L299732_ _L299734_)
                 (let ((__tmp306496
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306483
                        (let ((__tmp306492
                               (let ((__tmp306495
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306493
                                      (let ((__tmp306494
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306494 '()))))
                                 (declare (not safe))
                                 (cons __tmp306495 __tmp306493)))
                              (__tmp306484
                               (let ((__tmp306489
                                      (let ((__tmp306491
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306490
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299734_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306491 __tmp306490)))
                                     (__tmp306485
                                      (let ((__tmp306486
                                             (let ((__tmp306488
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306487
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299732_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306488
                                                     __tmp306487))))
                                        (declare (not safe))
                                        (cons __tmp306486 '()))))
                                 (declare (not safe))
                                 (cons __tmp306489 __tmp306485))))
                          (declare (not safe))
                          (cons __tmp306492 __tmp306484))))
                   (declare (not safe))
                   (cons __tmp306496 __tmp306483))))
              (___kont305970305971_
               (lambda (_L299679_ _L299681_)
                 (let ((__tmp306497
                        (let ((__tmp306498
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L299679_ __tmp306498))))
                   (declare (not safe))
                   (cons _L299681_ __tmp306497)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305959305960_))
              (let ((_e299590299886_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305959305960_))))
                (let ((_tl299588299893_
                       (let () (declare (not safe)) (##cdr _e299590299886_)))
                      (_hd299589299890_
                       (let () (declare (not safe)) (##car _e299590299886_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl299588299893_))
                      (let ((_e299593299896_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299588299893_))))
                        (let ((_tl299591299903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299593299896_)))
                              (_hd299592299900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299593299896_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299591299903_))
                              (let ((_e299596299906_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299591299903_))))
                                (let ((_tl299594299913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299596299906_)))
                                      (_hd299595299910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299596299906_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd299595299910_))
                                      (let ((_e299597299916_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd299595299910_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e299597299916_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl299594299913_))
                                                (let ((_e299600299920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl299594299913_))))
                                                  (let ((_tl299598299927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e299600299920_)))
                                                        (_hd299599299924_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e299600299920_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299598299927_))
                                                        (___kont305962305963_
                                                         _hd299599299924_
                                                         _hd299592299900_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd299592299900_))
                                                            (let ((_e299609299847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd299592299900_))))
                      (declare (not safe))
                      (_g299584299652_))
                    (let () (declare (not safe)) (_g299584299652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd299592299900_))
                                                    (let ((_e299609299847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd299592299900_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e299609299847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299594299913_))
                      (___kont305964305965_ _hd299595299910_ _hd299589299890_)
                      (let () (declare (not safe)) (_g299584299652_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299594299913_))
                      (___kont305968305969_ _hd299595299910_ _hd299592299900_)
                      (let () (declare (not safe)) (_g299584299652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299594299913_))
                                                        (___kont305968305969_
                                                         _hd299595299910_
                                                         _hd299592299900_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299584299652_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd299592299900_))
                                                (let ((_e299609299847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd299592299900_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e299609299847_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299594299913_))
                                                          (___kont305964305965_
                                                           _hd299595299910_
                                                           _hd299589299890_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl299594299913_))
                      (let ((_e299627299790_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299594299913_))))
                        (let ((_tl299625299797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299627299790_)))
                              (_hd299626299794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299627299790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299625299797_))
                              (___kont305966305967_
                               _hd299626299794_
                               _hd299595299910_)
                              (let ()
                                (declare (not safe))
                                (_g299584299652_)))))
                      (let () (declare (not safe)) (_g299584299652_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299594299913_))
                  (___kont305968305969_ _hd299595299910_ _hd299592299900_)
                  (let () (declare (not safe)) (_g299584299652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299594299913_))
                                                    (___kont305968305969_
                                                     _hd299595299910_
                                                     _hd299592299900_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299584299652_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd299592299900_))
                                          (let ((_e299609299847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd299592299900_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e299609299847_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299594299913_))
                                                    (___kont305964305965_
                                                     _hd299595299910_
                                                     _hd299589299890_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl299594299913_))
                                                        (let ((_e299627299790_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl299594299913_))))
                  (let ((_tl299625299797_
                         (let () (declare (not safe)) (##cdr _e299627299790_)))
                        (_hd299626299794_
                         (let ()
                           (declare (not safe))
                           (##car _e299627299790_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl299625299797_))
                        (___kont305966305967_
                         _hd299626299794_
                         _hd299595299910_)
                        (let () (declare (not safe)) (_g299584299652_)))))
                (let () (declare (not safe)) (_g299584299652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299594299913_))
                                                    (___kont305968305969_
                                                     _hd299595299910_
                                                     _hd299592299900_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299584299652_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299594299913_))
                                              (___kont305968305969_
                                               _hd299595299910_
                                               _hd299592299900_)
                                              (let ()
                                                (declare (not safe))
                                                (_g299584299652_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd299592299900_))
                                  (let ((_e299609299847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd299592299900_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299591299903_))
                                        (___kont305970305971_
                                         _hd299592299900_
                                         _hd299589299890_)
                                        (let ()
                                          (declare (not safe))
                                          (_g299584299652_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299591299903_))
                                      (___kont305970305971_
                                       _hd299592299900_
                                       _hd299589299890_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299584299652_)))))))
                      (let () (declare (not safe)) (_g299584299652_)))))
              (let () (declare (not safe)) (_g299584299652_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299954_)
      (let* ((___stx306099306100_ _$stx299954_)
             (_g299959300014_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306099306100_)))))
        (let ((___kont306102306103_
               (lambda (_L300199_ _L300201_)
                 (let ((__tmp306514
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306499
                        (let ((__tmp306510
                               (let ((__tmp306513
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306511
                                      (let ((__tmp306512
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306512 '()))))
                                 (declare (not safe))
                                 (cons __tmp306513 __tmp306511)))
                              (__tmp306500
                               (let ((__tmp306501
                                      (let ((__tmp306509
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306502
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300199_
                                                  _L300201_))
                                               (let ((__tmp306503
                                                      (lambda (_g300218300222_
                                                               _g300219300225_
                                                               _g300220300227_)
                                                        (let ((__tmp306504
                                                               (let ((__tmp306508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306505
                              (let ((__tmp306506
                                     (let ((__tmp306507
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300218300222_ '()))))
                                       (declare (not safe))
                                       (cons _g300219300225_ __tmp306507))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306506))))
                         (declare (not safe))
                         (cons __tmp306508 __tmp306505))))
                  (declare (not safe))
                  (cons __tmp306504 _g300220300227_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306503
                                                         '()
                                                         _L300199_
                                                         _L300201_)))))
                                        (declare (not safe))
                                        (cons __tmp306509 __tmp306502))))
                                 (declare (not safe))
                                 (cons __tmp306501 '()))))
                          (declare (not safe))
                          (cons __tmp306510 __tmp306500))))
                   (declare (not safe))
                   (cons __tmp306514 __tmp306499))))
              (___kont306106306107_
               (lambda (_L300085_ _L300087_)
                 (let ((__tmp306529
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306515
                        (let ((__tmp306525
                               (let ((__tmp306528
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306526
                                      (let ((__tmp306527
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306527 '()))))
                                 (declare (not safe))
                                 (cons __tmp306528 __tmp306526)))
                              (__tmp306516
                               (let ((__tmp306517
                                      (let ((__tmp306524
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306518
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300085_
                                                  _L300087_))
                                               (let ((__tmp306519
                                                      (lambda (_g300102300106_
                                                               _g300103300109_
                                                               _g300104300111_)
                                                        (let ((__tmp306520
                                                               (let ((__tmp306523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306521
                              (let ((__tmp306522
                                     (let ()
                                       (declare (not safe))
                                       (cons _g300102300106_ '()))))
                                (declare (not safe))
                                (cons _g300103300109_ __tmp306522))))
                         (declare (not safe))
                         (cons __tmp306523 __tmp306521))))
                  (declare (not safe))
                  (cons __tmp306520 _g300104300111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306519
                                                         '()
                                                         _L300085_
                                                         _L300087_)))))
                                        (declare (not safe))
                                        (cons __tmp306524 __tmp306518))))
                                 (declare (not safe))
                                 (cons __tmp306517 '()))))
                          (declare (not safe))
                          (cons __tmp306525 __tmp306516))))
                   (declare (not safe))
                   (cons __tmp306529 __tmp306515)))))
          (let* ((___match306150306151_
                  (lambda (_e299991300021_
                           _hd299990300025_
                           _tl299989300028_
                           ___splice306108306109_
                           _target299992300031_
                           _tl299994300034_)
                    (letrec ((_loop299995300037_
                              (lambda (_hd299993300041_
                                       _dispatch299999300044_
                                       _arity300000300046_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299993300041_))
                                    (let ((_e299996300049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299993300041_))))
                                      (let ((_lp-tl299998300056_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299996300049_)))
                                            (_lp-hd299997300053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299996300049_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299997300053_))
                                            (let ((_e300005300059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299997300053_))))
                                              (let ((_tl300003300066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e300005300059_)))
                                                    (_hd300004300063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e300005300059_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl300003300066_))
                                                    (let ((_e300008300069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl300003300066_))))
                                                      (let ((_tl300006300076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e300008300069_)))
                    (_hd300007300073_
                     (let () (declare (not safe)) (##car _e300008300069_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl300006300076_))
                    (_loop299995300037_
                     _lp-tl299998300056_
                     (let ()
                       (declare (not safe))
                       (cons _hd300007300073_ _dispatch299999300044_))
                     (let ()
                       (declare (not safe))
                       (cons _hd300004300063_ _arity300000300046_)))
                    (let () (declare (not safe)) (_g299959300014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299959300014_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299959300014_)))))
                                    (let ((_arity300002300082_
                                           (reverse _arity300000300046_))
                                          (_dispatch300001300079_
                                           (reverse _dispatch299999300044_)))
                                      (___kont306106306107_
                                       _dispatch300001300079_
                                       _arity300002300082_))))))
                      (_loop299995300037_ _target299992300031_ '() '()))))
                 (___match306142306143_
                  (lambda (_e299991300021_ _hd299990300025_ _tl299989300028_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299989300028_))
                        (let ((___splice306108306109_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299989300028_
                                  '0))))
                          (let ((_tl299994300034_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306108306109_ '1)))
                                (_target299992300031_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306108306109_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299994300034_))
                                (___match306150306151_
                                 _e299991300021_
                                 _hd299990300025_
                                 _tl299989300028_
                                 ___splice306108306109_
                                 _target299992300031_
                                 _tl299994300034_)
                                (let ()
                                  (declare (not safe))
                                  (_g299959300014_)))))
                        (let () (declare (not safe)) (_g299959300014_)))))
                 (___match306136306137_
                  (lambda (_e299965300121_
                           _hd299964300125_
                           _tl299963300128_
                           _e299968300131_
                           _hd299967300135_
                           _tl299966300138_
                           _e299969300141_
                           ___splice306104306105_
                           _target299970300145_
                           _tl299972300148_)
                    (letrec ((_loop299973300151_
                              (lambda (_hd299971300155_
                                       _dispatch299977300158_
                                       _arity299978300160_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299971300155_))
                                    (let ((_e299974300163_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299971300155_))))
                                      (let ((_lp-tl299976300170_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299974300163_)))
                                            (_lp-hd299975300167_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299974300163_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299975300167_))
                                            (let ((_e299983300173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299975300167_))))
                                              (let ((_tl299981300180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299983300173_)))
                                                    (_hd299982300177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299983300173_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299981300180_))
                                                    (let ((_e299986300183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299981300180_))))
                                                      (let ((_tl299984300190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299986300183_)))
                    (_hd299985300187_
                     (let () (declare (not safe)) (##car _e299986300183_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299984300190_))
                    (_loop299973300151_
                     _lp-tl299976300170_
                     (let ()
                       (declare (not safe))
                       (cons _hd299985300187_ _dispatch299977300158_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299982300177_ _arity299978300160_)))
                    (___match306142306143_
                     _e299965300121_
                     _hd299964300125_
                     _tl299963300128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306142306143_
                                                     _e299965300121_
                                                     _hd299964300125_
                                                     _tl299963300128_))))
                                            (___match306142306143_
                                             _e299965300121_
                                             _hd299964300125_
                                             _tl299963300128_))))
                                    (let ((_arity299980300196_
                                           (reverse _arity299978300160_))
                                          (_dispatch299979300193_
                                           (reverse _dispatch299977300158_)))
                                      (___kont306102306103_
                                       _dispatch299979300193_
                                       _arity299980300196_))))))
                      (_loop299973300151_ _target299970300145_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306099306100_))
                (let ((_e299965300121_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306099306100_))))
                  (let ((_tl299963300128_
                         (let () (declare (not safe)) (##cdr _e299965300121_)))
                        (_hd299964300125_
                         (let ()
                           (declare (not safe))
                           (##car _e299965300121_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299963300128_))
                        (let ((_e299968300131_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299963300128_))))
                          (let ((_tl299966300138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299968300131_)))
                                (_hd299967300135_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299968300131_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299967300135_))
                                (let ((_e299969300141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299967300135_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299969300141_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299966300138_))
                                          (let ((___splice306104306105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299966300138_
                                                    '0))))
                                            (let ((_tl299972300148_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306104306105_
                                                      '1)))
                                                  (_target299970300145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306104306105_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299972300148_))
                                                  (___match306136306137_
                                                   _e299965300121_
                                                   _hd299964300125_
                                                   _tl299963300128_
                                                   _e299968300131_
                                                   _hd299967300135_
                                                   _tl299966300138_
                                                   _e299969300141_
                                                   ___splice306104306105_
                                                   _target299970300145_
                                                   _tl299972300148_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299963300128_))
                                                      (let ((___splice306108306109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299963300128_ '0))))
                (let ((_tl299994300034_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306108306109_ '1)))
                      (_target299992300031_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306108306109_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299994300034_))
                      (___match306150306151_
                       _e299965300121_
                       _hd299964300125_
                       _tl299963300128_
                       ___splice306108306109_
                       _target299992300031_
                       _tl299994300034_)
                      (let () (declare (not safe)) (_g299959300014_)))))
              (let () (declare (not safe)) (_g299959300014_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299963300128_))
                                              (let ((___splice306108306109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299963300128_
                                                        '0))))
                                                (let ((_tl299994300034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306108306109_
                                                          '1)))
                                                      (_target299992300031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306108306109_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299994300034_))
                                                      (___match306150306151_
                                                       _e299965300121_
                                                       _hd299964300125_
                                                       _tl299963300128_
                                                       ___splice306108306109_
                                                       _target299992300031_
                                                       _tl299994300034_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299959300014_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299959300014_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299963300128_))
                                          (let ((___splice306108306109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299963300128_
                                                    '0))))
                                            (let ((_tl299994300034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306108306109_
                                                      '1)))
                                                  (_target299992300031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306108306109_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299994300034_))
                                                  (___match306150306151_
                                                   _e299965300121_
                                                   _hd299964300125_
                                                   _tl299963300128_
                                                   ___splice306108306109_
                                                   _target299992300031_
                                                   _tl299994300034_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299959300014_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299959300014_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299963300128_))
                                    (let ((___splice306108306109_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299963300128_
                                              '0))))
                                      (let ((_tl299994300034_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306108306109_
                                                '1)))
                                            (_target299992300031_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306108306109_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299994300034_))
                                            (___match306150306151_
                                             _e299965300121_
                                             _hd299964300125_
                                             _tl299963300128_
                                             ___splice306108306109_
                                             _target299992300031_
                                             _tl299994300034_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299959300014_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299959300014_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299963300128_))
                            (let ((___splice306108306109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299963300128_
                                      '0))))
                              (let ((_tl299994300034_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306108306109_
                                        '1)))
                                    (_target299992300031_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306108306109_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299994300034_))
                                    (___match306150306151_
                                     _e299965300121_
                                     _hd299964300125_
                                     _tl299963300128_
                                     ___splice306108306109_
                                     _target299992300031_
                                     _tl299994300034_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299959300014_)))))
                            (let () (declare (not safe)) (_g299959300014_))))))
                (let () (declare (not safe)) (_g299959300014_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300236_)
      (let* ((_g300240300258_
              (lambda (_g300241300254_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300241300254_))))
             (_g300239300313_
              (lambda (_g300241300262_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300241300262_))
                    (let ((_e300246300265_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300241300262_))))
                      (let ((_hd300245300269_
                             (let ()
                               (declare (not safe))
                               (##car _e300246300265_)))
                            (_tl300244300272_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300246300265_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300244300272_))
                            (let ((_e300249300275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300244300272_))))
                              (let ((_hd300248300279_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300249300275_)))
                                    (_tl300247300282_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300249300275_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300247300282_))
                                    (let ((_e300252300285_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300247300282_))))
                                      (let ((_hd300251300289_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300252300285_)))
                                            (_tl300250300292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300252300285_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300250300292_))
                                            ((lambda (_L300295_ _L300297_)
                                               (let ((__tmp306543
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306530
                                                      (let ((__tmp306539
                                                             (let ((__tmp306542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306540
                            (let ((__tmp306541
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306541 '()))))
                       (declare (not safe))
                       (cons __tmp306542 __tmp306540)))
                    (__tmp306531
                     (let ((__tmp306536
                            (let ((__tmp306538
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306537
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300297_ '()))))
                              (declare (not safe))
                              (cons __tmp306538 __tmp306537)))
                           (__tmp306532
                            (let ((__tmp306533
                                   (let ((__tmp306535
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306534
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300295_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306535 __tmp306534))))
                              (declare (not safe))
                              (cons __tmp306533 '()))))
                       (declare (not safe))
                       (cons __tmp306536 __tmp306532))))
                (declare (not safe))
                (cons __tmp306539 __tmp306531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306543
                                                       __tmp306530)))
                                             _hd300251300289_
                                             _hd300248300279_)
                                            (_g300240300258_
                                             _g300241300262_))))
                                    (_g300240300258_ _g300241300262_))))
                            (_g300240300258_ _g300241300262_))))
                    (_g300240300258_ _g300241300262_)))))
        (_g300239300313_ _$stx300236_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300317_)
      (let* ((_g300321300339_
              (lambda (_g300322300335_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300322300335_))))
             (_g300320300394_
              (lambda (_g300322300343_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300322300343_))
                    (let ((_e300327300346_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300322300343_))))
                      (let ((_hd300326300350_
                             (let ()
                               (declare (not safe))
                               (##car _e300327300346_)))
                            (_tl300325300353_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300327300346_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300325300353_))
                            (let ((_e300330300356_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300325300353_))))
                              (let ((_hd300329300360_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300330300356_)))
                                    (_tl300328300363_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300330300356_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300328300363_))
                                    (let ((_e300333300366_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300328300363_))))
                                      (let ((_hd300332300370_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300333300366_)))
                                            (_tl300331300373_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300333300366_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300331300373_))
                                            ((lambda (_L300376_ _L300378_)
                                               (let ((__tmp306557
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306544
                                                      (let ((__tmp306553
                                                             (let ((__tmp306556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306554
                            (let ((__tmp306555
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306555 '()))))
                       (declare (not safe))
                       (cons __tmp306556 __tmp306554)))
                    (__tmp306545
                     (let ((__tmp306550
                            (let ((__tmp306552
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306551
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300378_ '()))))
                              (declare (not safe))
                              (cons __tmp306552 __tmp306551)))
                           (__tmp306546
                            (let ((__tmp306547
                                   (let ((__tmp306549
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306548
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300376_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306549 __tmp306548))))
                              (declare (not safe))
                              (cons __tmp306547 '()))))
                       (declare (not safe))
                       (cons __tmp306550 __tmp306546))))
                (declare (not safe))
                (cons __tmp306553 __tmp306545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306557
                                                       __tmp306544)))
                                             _hd300332300370_
                                             _hd300329300360_)
                                            (_g300321300339_
                                             _g300322300343_))))
                                    (_g300321300339_ _g300322300343_))))
                            (_g300321300339_ _g300322300343_))))
                    (_g300321300339_ _g300322300343_)))))
        (_g300320300394_ _$stx300317_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300398_)
      (let* ((___stx306153306154_ _$stx300398_)
             (_g300405300476_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306153306154_)))))
        (let ((___kont306156306157_
               (lambda (_L300767_ _L300769_)
                 (let ((__tmp306563
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306558
                        (let ((__tmp306559
                               (let ((__tmp306560
                                      (let ((__tmp306562
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306561
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300767_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306562 __tmp306561))))
                                 (declare (not safe))
                                 (cons __tmp306560 '()))))
                          (declare (not safe))
                          (cons _L300769_ __tmp306559))))
                   (declare (not safe))
                   (cons __tmp306563 __tmp306558))))
              (___kont306158306159_
               (lambda (_L300686_ _L300688_)
                 (let ((__tmp306572
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306564
                        (let ((__tmp306565
                               (let ((__tmp306566
                                      (let ((__tmp306571
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306567
                                             (let ((__tmp306568
                                                    (lambda (_g300707300710_
                                                             _g300708300713_)
                                                      (let ((__tmp306569
                                                             (let ((__tmp306570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300707300710_ __tmp306570))))
                (declare (not safe))
                (cons __tmp306569 _g300708300713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306568
                                                       '()
                                                       _L300686_))))
                                        (declare (not safe))
                                        (cons __tmp306571 __tmp306567))))
                                 (declare (not safe))
                                 (cons __tmp306566 '()))))
                          (declare (not safe))
                          (cons _L300688_ __tmp306565))))
                   (declare (not safe))
                   (cons __tmp306572 __tmp306564))))
              (___kont306162306163_
               (lambda (_L300598_ _L300600_)
                 (let ((__tmp306579
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306573
                        (let ((__tmp306574
                               (let ((__tmp306575
                                      (let ((__tmp306578
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306576
                                             (let ((__tmp306577
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300598_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306577))))
                                        (declare (not safe))
                                        (cons __tmp306578 __tmp306576))))
                                 (declare (not safe))
                                 (cons __tmp306575 '()))))
                          (declare (not safe))
                          (cons _L300600_ __tmp306574))))
                   (declare (not safe))
                   (cons __tmp306579 __tmp306573))))
              (___kont306164306165_
               (lambda (_L300533_ _L300535_)
                 (let ((__tmp306589
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306580
                        (let ((__tmp306581
                               (let ((__tmp306582
                                      (let ((__tmp306588
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306583
                                             (let ((__tmp306584
                                                    (let ((__tmp306585
                                                           (lambda (_g300552300555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g300553300558_)
                     (let ((__tmp306586
                            (let ((__tmp306587
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g300552300555_ __tmp306587))))
                       (declare (not safe))
                       (cons __tmp306586 _g300553300558_)))))
              (declare (not safe))
              (foldr1 __tmp306585 '() _L300533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306584))))
                                        (declare (not safe))
                                        (cons __tmp306588 __tmp306583))))
                                 (declare (not safe))
                                 (cons __tmp306582 '()))))
                          (declare (not safe))
                          (cons _L300535_ __tmp306581))))
                   (declare (not safe))
                   (cons __tmp306589 __tmp306580)))))
          (let* ((___match306272306273_
                  (lambda (_e300458300483_
                           _hd300457300487_
                           _tl300456300490_
                           _e300461300493_
                           _hd300460300497_
                           _tl300459300500_
                           ___splice306166306167_
                           _target300462300503_
                           _tl300464300506_)
                    (letrec ((_loop300465300509_
                              (lambda (_hd300463300513_ _arity300469300516_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300463300513_))
                                    (let ((_e300466300519_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300463300513_))))
                                      (let ((_lp-tl300468300526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300466300519_)))
                                            (_lp-hd300467300523_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300466300519_))))
                                        (_loop300465300509_
                                         _lp-tl300468300526_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300467300523_
                                                 _arity300469300516_)))))
                                    (let ((_arity300470300529_
                                           (reverse _arity300469300516_)))
                                      (___kont306164306165_
                                       _arity300470300529_
                                       _hd300460300497_))))))
                      (_loop300465300509_ _target300462300503_ '()))))
                 (___match306232306233_
                  (lambda (_e300426300622_
                           _hd300425300626_
                           _tl300424300629_
                           _e300429300632_
                           _hd300428300636_
                           _tl300427300639_
                           _e300432300642_
                           _hd300431300646_
                           _tl300430300649_
                           _e300433300652_
                           ___splice306160306161_
                           _target300434300656_
                           _tl300436300659_)
                    (letrec ((_loop300437300662_
                              (lambda (_hd300435300666_ _arity300441300669_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300435300666_))
                                    (let ((_e300438300672_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300435300666_))))
                                      (let ((_lp-tl300440300679_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300438300672_)))
                                            (_lp-hd300439300676_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300438300672_))))
                                        (_loop300437300662_
                                         _lp-tl300440300679_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300439300676_
                                                 _arity300441300669_)))))
                                    (let ((_arity300442300682_
                                           (reverse _arity300441300669_)))
                                      (___kont306158306159_
                                       _arity300442300682_
                                       _hd300428300636_))))))
                      (_loop300437300662_ _target300434300656_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306153306154_))
                (let ((_e300411300723_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306153306154_))))
                  (let ((_tl300409300730_
                         (let () (declare (not safe)) (##cdr _e300411300723_)))
                        (_hd300410300727_
                         (let ()
                           (declare (not safe))
                           (##car _e300411300723_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300409300730_))
                        (let ((_e300414300733_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300409300730_))))
                          (let ((_tl300412300740_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300414300733_)))
                                (_hd300413300737_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300414300733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300412300740_))
                                (let ((_e300417300743_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300412300740_))))
                                  (let ((_tl300415300750_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300417300743_)))
                                        (_hd300416300747_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300417300743_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300416300747_))
                                        (let ((_e300418300753_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300416300747_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300418300753_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300415300750_))
                                                  (let ((_e300421300757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300415300750_))))
                                                    (let ((_tl300419300764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300421300757_)))
                                                          (_hd300420300761_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300421300757_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300419300764_))
                                                          (___kont306156306157_
                                                           _hd300420300761_
                                                           _hd300413300737_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300415300750_))
                      (let ((___splice306160306161_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300415300750_ '0))))
                        (let ((_tl300436300659_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306160306161_ '1)))
                              (_target300434300656_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306160306161_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300436300659_))
                              (___match306232306233_
                               _e300411300723_
                               _hd300410300727_
                               _tl300409300730_
                               _e300414300733_
                               _hd300413300737_
                               _tl300412300740_
                               _e300417300743_
                               _hd300416300747_
                               _tl300415300750_
                               _e300418300753_
                               ___splice306160306161_
                               _target300434300656_
                               _tl300436300659_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300412300740_))
                                  (let ((___splice306166306167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300412300740_
                                            '0))))
                                    (let ((_tl300464300506_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306166306167_
                                              '1)))
                                          (_target300462300503_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306166306167_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300464300506_))
                                          (___match306272306273_
                                           _e300411300723_
                                           _hd300410300727_
                                           _tl300409300730_
                                           _e300414300733_
                                           _hd300413300737_
                                           _tl300412300740_
                                           ___splice306166306167_
                                           _target300462300503_
                                           _tl300464300506_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300405300476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300405300476_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300412300740_))
                          (let ((___splice306166306167_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300412300740_
                                    '0))))
                            (let ((_tl300464300506_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306166306167_ '1)))
                                  (_target300462300503_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306166306167_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300464300506_))
                                  (___match306272306273_
                                   _e300411300723_
                                   _hd300410300727_
                                   _tl300409300730_
                                   _e300414300733_
                                   _hd300413300737_
                                   _tl300412300740_
                                   ___splice306166306167_
                                   _target300462300503_
                                   _tl300464300506_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300405300476_)))))
                          (let () (declare (not safe)) (_g300405300476_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300415300750_))
                                                      (let ((___splice306160306161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300415300750_ '0))))
                (let ((_tl300436300659_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306160306161_ '1)))
                      (_target300434300656_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306160306161_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300436300659_))
                      (___match306232306233_
                       _e300411300723_
                       _hd300410300727_
                       _tl300409300730_
                       _e300414300733_
                       _hd300413300737_
                       _tl300412300740_
                       _e300417300743_
                       _hd300416300747_
                       _tl300415300750_
                       _e300418300753_
                       ___splice306160306161_
                       _target300434300656_
                       _tl300436300659_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300415300750_))
                          (___kont306162306163_
                           _hd300416300747_
                           _hd300413300737_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300412300740_))
                              (let ((___splice306166306167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300412300740_
                                        '0))))
                                (let ((_tl300464300506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306166306167_
                                          '1)))
                                      (_target300462300503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306166306167_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300464300506_))
                                      (___match306272306273_
                                       _e300411300723_
                                       _hd300410300727_
                                       _tl300409300730_
                                       _e300414300733_
                                       _hd300413300737_
                                       _tl300412300740_
                                       ___splice306166306167_
                                       _target300462300503_
                                       _tl300464300506_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300405300476_)))))
                              (let ()
                                (declare (not safe))
                                (_g300405300476_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300415300750_))
                  (___kont306162306163_ _hd300416300747_ _hd300413300737_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300412300740_))
                      (let ((___splice306166306167_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300412300740_ '0))))
                        (let ((_tl300464300506_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306166306167_ '1)))
                              (_target300462300503_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306166306167_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300464300506_))
                              (___match306272306273_
                               _e300411300723_
                               _hd300410300727_
                               _tl300409300730_
                               _e300414300733_
                               _hd300413300737_
                               _tl300412300740_
                               ___splice306166306167_
                               _target300462300503_
                               _tl300464300506_)
                              (let ()
                                (declare (not safe))
                                (_g300405300476_)))))
                      (let () (declare (not safe)) (_g300405300476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300415300750_))
                                                  (___kont306162306163_
                                                   _hd300416300747_
                                                   _hd300413300737_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300412300740_))
                                                      (let ((___splice306166306167_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300412300740_ '0))))
                (let ((_tl300464300506_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306166306167_ '1)))
                      (_target300462300503_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306166306167_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300464300506_))
                      (___match306272306273_
                       _e300411300723_
                       _hd300410300727_
                       _tl300409300730_
                       _e300414300733_
                       _hd300413300737_
                       _tl300412300740_
                       ___splice306166306167_
                       _target300462300503_
                       _tl300464300506_)
                      (let () (declare (not safe)) (_g300405300476_)))))
              (let () (declare (not safe)) (_g300405300476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300415300750_))
                                            (___kont306162306163_
                                             _hd300416300747_
                                             _hd300413300737_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300412300740_))
                                                (let ((___splice306166306167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300412300740_
                                                          '0))))
                                                  (let ((_tl300464300506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306166306167_
                                                            '1)))
                                                        (_target300462300503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306166306167_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300464300506_))
                                                        (___match306272306273_
                                                         _e300411300723_
                                                         _hd300410300727_
                                                         _tl300409300730_
                                                         _e300414300733_
                                                         _hd300413300737_
                                                         _tl300412300740_
                                                         ___splice306166306167_
                                                         _target300462300503_
                                                         _tl300464300506_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300405300476_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300405300476_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300412300740_))
                                    (let ((___splice306166306167_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300412300740_
                                              '0))))
                                      (let ((_tl300464300506_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306166306167_
                                                '1)))
                                            (_target300462300503_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306166306167_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300464300506_))
                                            (___match306272306273_
                                             _e300411300723_
                                             _hd300410300727_
                                             _tl300409300730_
                                             _e300414300733_
                                             _hd300413300737_
                                             _tl300412300740_
                                             ___splice306166306167_
                                             _target300462300503_
                                             _tl300464300506_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300405300476_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300405300476_))))))
                        (let () (declare (not safe)) (_g300405300476_)))))
                (let () (declare (not safe)) (_g300405300476_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300793_)
      (let* ((___stx306275306276_ _$stx300793_)
             (_g300798300833_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306275306276_)))))
        (let ((___kont306278306279_
               (lambda (_L300955_ _L300957_)
                 (let ((__tmp306595
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306590
                        (let ((__tmp306591
                               (let ((__tmp306592
                                      (let ((__tmp306594
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306593
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300955_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306594 __tmp306593))))
                                 (declare (not safe))
                                 (cons __tmp306592 '()))))
                          (declare (not safe))
                          (cons _L300957_ __tmp306591))))
                   (declare (not safe))
                   (cons __tmp306595 __tmp306590))))
              (___kont306280306281_
               (lambda (_L300890_ _L300892_)
                 (let ((__tmp306604
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306596
                        (let ((__tmp306597
                               (let ((__tmp306598
                                      (let ((__tmp306603
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306599
                                             (let ((__tmp306600
                                                    (lambda (_g300909300912_
                                                             _g300910300915_)
                                                      (let ((__tmp306601
                                                             (let ((__tmp306602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300909300912_ __tmp306602))))
                (declare (not safe))
                (cons __tmp306601 _g300910300915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306600
                                                       '()
                                                       _L300890_))))
                                        (declare (not safe))
                                        (cons __tmp306603 __tmp306599))))
                                 (declare (not safe))
                                 (cons __tmp306598 '()))))
                          (declare (not safe))
                          (cons _L300892_ __tmp306597))))
                   (declare (not safe))
                   (cons __tmp306604 __tmp306596)))))
          (let ((___match306324306325_
                 (lambda (_e300815300840_
                          _hd300814300844_
                          _tl300813300847_
                          _e300818300850_
                          _hd300817300854_
                          _tl300816300857_
                          ___splice306282306283_
                          _target300819300860_
                          _tl300821300863_)
                   (letrec ((_loop300822300866_
                             (lambda (_hd300820300870_ _arity300826300873_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300820300870_))
                                   (let ((_e300823300876_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300820300870_))))
                                     (let ((_lp-tl300825300883_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300823300876_)))
                                           (_lp-hd300824300880_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300823300876_))))
                                       (_loop300822300866_
                                        _lp-tl300825300883_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300824300880_
                                                _arity300826300873_)))))
                                   (let ((_arity300827300886_
                                          (reverse _arity300826300873_)))
                                     (___kont306280306281_
                                      _arity300827300886_
                                      _hd300817300854_))))))
                     (_loop300822300866_ _target300819300860_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306275306276_))
                (let ((_e300804300925_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306275306276_))))
                  (let ((_tl300802300932_
                         (let () (declare (not safe)) (##cdr _e300804300925_)))
                        (_hd300803300929_
                         (let ()
                           (declare (not safe))
                           (##car _e300804300925_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300802300932_))
                        (let ((_e300807300935_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300802300932_))))
                          (let ((_tl300805300942_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300807300935_)))
                                (_hd300806300939_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300807300935_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300805300942_))
                                (let ((_e300810300945_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300805300942_))))
                                  (let ((_tl300808300952_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300810300945_)))
                                        (_hd300809300949_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300810300945_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300808300952_))
                                        (___kont306278306279_
                                         _hd300809300949_
                                         _hd300806300939_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300805300942_))
                                            (let ((___splice306282306283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300805300942_
                                                      '0))))
                                              (let ((_tl300821300863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306282306283_
                                                        '1)))
                                                    (_target300819300860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306282306283_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300821300863_))
                                                    (___match306324306325_
                                                     _e300804300925_
                                                     _hd300803300929_
                                                     _tl300802300932_
                                                     _e300807300935_
                                                     _hd300806300939_
                                                     _tl300805300942_
                                                     ___splice306282306283_
                                                     _target300819300860_
                                                     _tl300821300863_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300798300833_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300798300833_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300805300942_))
                                    (let ((___splice306282306283_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300805300942_
                                              '0))))
                                      (let ((_tl300821300863_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306282306283_
                                                '1)))
                                            (_target300819300860_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306282306283_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300821300863_))
                                            (___match306324306325_
                                             _e300804300925_
                                             _hd300803300929_
                                             _tl300802300932_
                                             _e300807300935_
                                             _hd300806300939_
                                             _tl300805300942_
                                             ___splice306282306283_
                                             _target300819300860_
                                             _tl300821300863_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300798300833_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300798300833_))))))
                        (let () (declare (not safe)) (_g300798300833_)))))
                (let () (declare (not safe)) (_g300798300833_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300977_)
      (let* ((_g300981301016_
              (lambda (_g300982301012_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300982301012_))))
             (_g300980301144_
              (lambda (_g300982301020_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300982301020_))
                    (let ((_e300987301023_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300982301020_))))
                      (let ((_hd300986301027_
                             (let ()
                               (declare (not safe))
                               (##car _e300987301023_)))
                            (_tl300985301030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300987301023_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300985301030_))
                            (let ((_g306605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300985301030_
                                      '0))))
                              (begin
                                (let ((_g306606_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306605_)
                                             (##vector-length _g306605_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306606_ 2)))
                                      (error "Context expects 2 values"
                                             _g306606_)))
                                (let ((_target300988301033_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306605_ 0)))
                                      (_tl300990301036_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306605_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300990301036_))
                                      (letrec ((_loop300991301039_
                                                (lambda (_hd300989301043_
                                                         _arity300995301046_
                                                         _prim300996301048_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300989301043_))
                                                      (let ((_e300992301051_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300989301043_))))
                (let ((_lp-hd300993301055_
                       (let () (declare (not safe)) (##car _e300992301051_)))
                      (_lp-tl300994301058_
                       (let () (declare (not safe)) (##cdr _e300992301051_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300993301055_))
                      (let ((_e301001301061_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300993301055_))))
                        (let ((_hd301000301065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301001301061_)))
                              (_tl300999301068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301001301061_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300999301068_))
                              (let ((_g306615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300999301068_
                                        '0))))
                                (begin
                                  (let ((_g306616_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306615_)
                                               (##vector-length _g306615_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306616_ 2)))
                                        (error "Context expects 2 values"
                                               _g306616_)))
                                  (let ((_target301002301071_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306615_ 0)))
                                        (_tl301004301074_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306615_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301004301074_))
                                        (letrec ((_loop301005301077_
                                                  (lambda (_hd301003301081_
                                                           _arity301009301084_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301003301081_))
                                                        (let ((_e301006301087_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301003301081_))))
                  (let ((_lp-hd301007301091_
                         (let () (declare (not safe)) (##car _e301006301087_)))
                        (_lp-tl301008301094_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301006301087_))))
                    (_loop301005301077_
                     _lp-tl301008301094_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301007301091_ _arity301009301084_)))))
                (let ((_arity301010301097_ (reverse _arity301009301084_)))
                  (_loop300991301039_
                   _lp-tl300994301058_
                   (let ()
                     (declare (not safe))
                     (cons _arity301010301097_ _arity300995301046_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301000301065_ _prim300996301048_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301005301077_
                                           _target301002301071_
                                           '()))
                                        (_g300981301016_ _g300982301020_)))))
                              (_g300981301016_ _g300982301020_))))
                      (_g300981301016_ _g300982301020_))))
              (let ((_arity300997301101_ (reverse _arity300995301046_))
                    (_prim300998301104_ (reverse _prim300996301048_)))
                ((lambda (_L301107_ _L301109_)
                   (let ((__tmp306614
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306607
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301107_
                               _L301109_))
                            (let ((__tmp306608
                                   (lambda (_g301124301130_
                                            _g301125301133_
                                            _g301126301135_)
                                     (let ((__tmp306609
                                            (let ((__tmp306613
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306610
                                                   (let ((__tmp306611
                                                          (let ((__tmp306612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301127301138_ _g301128301141_)
                           (let ()
                             (declare (not safe))
                             (cons _g301127301138_ _g301128301141_)))))
                    (declare (not safe))
                    (foldr1 __tmp306612 '() _g301124301130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301125301133_
                                                           __tmp306611))))
                                              (declare (not safe))
                                              (cons __tmp306613 __tmp306610))))
                                       (declare (not safe))
                                       (cons __tmp306609 _g301126301135_)))))
                              (declare (not safe))
                              (foldr2 __tmp306608 '() _L301107_ _L301109_)))))
                     (declare (not safe))
                     (cons __tmp306614 __tmp306607)))
                 _arity300997301101_
                 _prim300998301104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300991301039_
                                         _target300988301033_
                                         '()
                                         '()))
                                      (_g300981301016_ _g300982301020_)))))
                            (_g300981301016_ _g300982301020_))))
                    (_g300981301016_ _g300982301020_)))))
        (_g300980301144_ _$stx300977_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301150_)
      (let* ((_g301154301189_
              (lambda (_g301155301185_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301155301185_))))
             (_g301153301317_
              (lambda (_g301155301193_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301155301193_))
                    (let ((_e301160301196_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301155301193_))))
                      (let ((_hd301159301200_
                             (let ()
                               (declare (not safe))
                               (##car _e301160301196_)))
                            (_tl301158301203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301160301196_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301158301203_))
                            (let ((_g306617_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301158301203_
                                      '0))))
                              (begin
                                (let ((_g306618_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306617_)
                                             (##vector-length _g306617_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306618_ 2)))
                                      (error "Context expects 2 values"
                                             _g306618_)))
                                (let ((_target301161301206_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306617_ 0)))
                                      (_tl301163301209_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306617_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301163301209_))
                                      (letrec ((_loop301164301212_
                                                (lambda (_hd301162301216_
                                                         _arity301168301219_
                                                         _prim301169301221_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301162301216_))
                                                      (let ((_e301165301224_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301162301216_))))
                (let ((_lp-hd301166301228_
                       (let () (declare (not safe)) (##car _e301165301224_)))
                      (_lp-tl301167301231_
                       (let () (declare (not safe)) (##cdr _e301165301224_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301166301228_))
                      (let ((_e301174301234_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301166301228_))))
                        (let ((_hd301173301238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301174301234_)))
                              (_tl301172301241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301174301234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301172301241_))
                              (let ((_g306627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301172301241_
                                        '0))))
                                (begin
                                  (let ((_g306628_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306627_)
                                               (##vector-length _g306627_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306628_ 2)))
                                        (error "Context expects 2 values"
                                               _g306628_)))
                                  (let ((_target301175301244_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306627_ 0)))
                                        (_tl301177301247_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306627_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301177301247_))
                                        (letrec ((_loop301178301250_
                                                  (lambda (_hd301176301254_
                                                           _arity301182301257_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301176301254_))
                                                        (let ((_e301179301260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301176301254_))))
                  (let ((_lp-hd301180301264_
                         (let () (declare (not safe)) (##car _e301179301260_)))
                        (_lp-tl301181301267_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301179301260_))))
                    (_loop301178301250_
                     _lp-tl301181301267_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301180301264_ _arity301182301257_)))))
                (let ((_arity301183301270_ (reverse _arity301182301257_)))
                  (_loop301164301212_
                   _lp-tl301167301231_
                   (let ()
                     (declare (not safe))
                     (cons _arity301183301270_ _arity301168301219_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301173301238_ _prim301169301221_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301178301250_
                                           _target301175301244_
                                           '()))
                                        (_g301154301189_ _g301155301193_)))))
                              (_g301154301189_ _g301155301193_))))
                      (_g301154301189_ _g301155301193_))))
              (let ((_arity301170301274_ (reverse _arity301168301219_))
                    (_prim301171301277_ (reverse _prim301169301221_)))
                ((lambda (_L301280_ _L301282_)
                   (let ((__tmp306626
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306619
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301280_
                               _L301282_))
                            (let ((__tmp306620
                                   (lambda (_g301297301303_
                                            _g301298301306_
                                            _g301299301308_)
                                     (let ((__tmp306621
                                            (let ((__tmp306625
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306622
                                                   (let ((__tmp306623
                                                          (let ((__tmp306624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301300301311_ _g301301301314_)
                           (let ()
                             (declare (not safe))
                             (cons _g301300301311_ _g301301301314_)))))
                    (declare (not safe))
                    (foldr1 __tmp306624 '() _g301297301303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301298301306_
                                                           __tmp306623))))
                                              (declare (not safe))
                                              (cons __tmp306625 __tmp306622))))
                                       (declare (not safe))
                                       (cons __tmp306621 _g301299301308_)))))
                              (declare (not safe))
                              (foldr2 __tmp306620 '() _L301280_ _L301282_)))))
                     (declare (not safe))
                     (cons __tmp306626 __tmp306619)))
                 _arity301170301274_
                 _prim301171301277_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301164301212_
                                         _target301161301206_
                                         '()
                                         '()))
                                      (_g301154301189_ _g301155301193_)))))
                            (_g301154301189_ _g301155301193_))))
                    (_g301154301189_ _g301155301193_)))))
        (_g301153301317_ _$stx301150_)))))
