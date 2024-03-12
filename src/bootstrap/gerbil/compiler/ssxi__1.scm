(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158812_)
      (let* ((_g158816158834_
              (lambda (_g158817158830_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158817158830_))))
             (_g158815158889_
              (lambda (_g158817158838_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158817158838_))
                    (let ((_e158822158841_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158817158838_))))
                      (let ((_hd158821158845_
                             (let ()
                               (declare (not safe))
                               (##car _e158822158841_)))
                            (_tl158820158848_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158822158841_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158820158848_))
                            (let ((_e158825158851_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158820158848_))))
                              (let ((_hd158824158855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158825158851_)))
                                    (_tl158823158858_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158825158851_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158823158858_))
                                    (let ((_e158828158861_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158823158858_))))
                                      (let ((_hd158827158865_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158828158861_)))
                                            (_tl158826158868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158828158861_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158826158868_))
                                            ((lambda (_L158871_ _L158873_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158873_))
                                                   (let ((__tmp162353
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162348
                                                          (let ((__tmp162350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162352
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162351
                                (let ()
                                  (declare (not safe))
                                  (cons _L158873_ '()))))
                           (declare (not safe))
                           (cons __tmp162352 __tmp162351)))
                        (__tmp162349
                         (let () (declare (not safe)) (cons _L158871_ '()))))
                    (declare (not safe))
                    (cons __tmp162350 __tmp162349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162353
                                                           __tmp162348))
                                                   (_g158816158834_
                                                    _g158817158838_)))
                                             _hd158827158865_
                                             _hd158824158855_)
                                            (_g158816158834_
                                             _g158817158838_))))
                                    (_g158816158834_ _g158817158838_))))
                            (_g158816158834_ _g158817158838_))))
                    (_g158816158834_ _g158817158838_)))))
        (_g158815158889_ _$stx158812_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158893_)
      (let* ((_g158897158926_
              (lambda (_g158898158922_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158898158922_))))
             (_g158896159026_
              (lambda (_g158898158930_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158898158930_))
                    (let ((_e158903158933_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158898158930_))))
                      (let ((_hd158902158937_
                             (let ()
                               (declare (not safe))
                               (##car _e158903158933_)))
                            (_tl158901158940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158903158933_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158901158940_))
                            (let ((_g162354_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158901158940_
                                      '0))))
                              (begin
                                (let ((_g162355_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162354_)
                                             (##vector-length _g162354_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162355_ 2)))
                                      (error "Context expects 2 values"
                                             _g162355_)))
                                (let ((_target158904158943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162354_ 0)))
                                      (_tl158906158946_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162354_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158906158946_))
                                      (letrec ((_loop158907158949_
                                                (lambda (_hd158905158953_
                                                         _type158911158956_
                                                         _symbol158912158958_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158905158953_))
                                                      (let ((_e158908158961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158905158953_))))
                (let ((_lp-hd158909158965_
                       (let () (declare (not safe)) (##car _e158908158961_)))
                      (_lp-tl158910158968_
                       (let () (declare (not safe)) (##cdr _e158908158961_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158909158965_))
                      (let ((_e158917158971_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158909158965_))))
                        (let ((_hd158916158975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158917158971_)))
                              (_tl158915158978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158917158971_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158915158978_))
                              (let ((_e158920158981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158915158978_))))
                                (let ((_hd158919158985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158920158981_)))
                                      (_tl158918158988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158920158981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158918158988_))
                                      (_loop158907158949_
                                       _lp-tl158910158968_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158919158985_
                                               _type158911158956_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158916158975_
                                               _symbol158912158958_)))
                                      (_g158897158926_ _g158898158930_))))
                              (_g158897158926_ _g158898158930_))))
                      (_g158897158926_ _g158898158930_))))
              (let ((_type158913158991_ (reverse _type158911158956_))
                    (_symbol158914158994_ (reverse _symbol158912158958_)))
                ((lambda (_L158997_ _L158999_)
                   (let ((__tmp162362
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162356
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158997_
                               _L158999_))
                            (let ((__tmp162357
                                   (lambda (_g159014159018_
                                            _g159015159021_
                                            _g159016159023_)
                                     (let ((__tmp162358
                                            (let ((__tmp162361
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162359
                                                   (let ((__tmp162360
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159014159018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159015159021_
                                                           __tmp162360))))
                                              (declare (not safe))
                                              (cons __tmp162361 __tmp162359))))
                                       (declare (not safe))
                                       (cons __tmp162358 _g159016159023_)))))
                              (declare (not safe))
                              (foldr2 __tmp162357 '() _L158997_ _L158999_)))))
                     (declare (not safe))
                     (cons __tmp162362 __tmp162356)))
                 _type158913158991_
                 _symbol158914158994_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158907158949_
                                         _target158904158943_
                                         '()
                                         '()))
                                      (_g158897158926_ _g158898158930_)))))
                            (_g158897158926_ _g158898158930_))))
                    (_g158897158926_ _g158898158930_)))))
        (_g158896159026_ _$stx158893_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159031_)
      (let* ((___stx161913161914_ _$stx159031_)
             (_g159036159078_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161913161914_)))))
        (let ((___kont161916161917_
               (lambda (_L159206_ _L159208_ _L159209_ _L159210_)
                 (let ((__tmp162376
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162363
                        (let ((__tmp162373
                               (let ((__tmp162375
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162374
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159210_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162375 __tmp162374)))
                              (__tmp162364
                               (let ((__tmp162370
                                      (let ((__tmp162372
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162371
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159209_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162372 __tmp162371)))
                                     (__tmp162365
                                      (let ((__tmp162367
                                             (let ((__tmp162369
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162368
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159208_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162369 __tmp162368)))
                                            (__tmp162366
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159206_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162367 __tmp162366))))
                                 (declare (not safe))
                                 (cons __tmp162370 __tmp162365))))
                          (declare (not safe))
                          (cons __tmp162373 __tmp162364))))
                   (declare (not safe))
                   (cons __tmp162376 __tmp162363))))
              (___kont161918161919_
               (lambda (_L159125_ _L159127_ _L159128_ _L159129_)
                 (let ((__tmp162377
                        (let ((__tmp162378
                               (let ((__tmp162379
                                      (let ((__tmp162380
                                             (let ((__tmp162381
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162381 '()))))
                                        (declare (not safe))
                                        (cons _L159125_ __tmp162380))))
                                 (declare (not safe))
                                 (cons _L159127_ __tmp162379))))
                          (declare (not safe))
                          (cons _L159128_ __tmp162378))))
                   (declare (not safe))
                   (cons _L159129_ __tmp162377)))))
          (let ((___match161952161953_
                 (lambda (_e159044159156_
                          _hd159043159160_
                          _tl159042159163_
                          _e159047159166_
                          _hd159046159170_
                          _tl159045159173_
                          _e159050159176_
                          _hd159049159180_
                          _tl159048159183_
                          _e159053159186_
                          _hd159052159190_
                          _tl159051159193_
                          _e159056159196_
                          _hd159055159200_
                          _tl159054159203_)
                   (let ((_L159206_ _hd159055159200_)
                         (_L159208_ _hd159052159190_)
                         (_L159209_ _hd159049159180_)
                         (_L159210_ _hd159046159170_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159210_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159209_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159208_)))
                         (___kont161916161917_
                          _L159206_
                          _L159208_
                          _L159209_
                          _L159210_)
                         (let () (declare (not safe)) (_g159036159078_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161913161914_))
                (let ((_e159044159156_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161913161914_))))
                  (let ((_tl159042159163_
                         (let () (declare (not safe)) (##cdr _e159044159156_)))
                        (_hd159043159160_
                         (let ()
                           (declare (not safe))
                           (##car _e159044159156_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159042159163_))
                        (let ((_e159047159166_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159042159163_))))
                          (let ((_tl159045159173_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159047159166_)))
                                (_hd159046159170_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159047159166_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159045159173_))
                                (let ((_e159050159176_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159045159173_))))
                                  (let ((_tl159048159183_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159050159176_)))
                                        (_hd159049159180_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159050159176_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159048159183_))
                                        (let ((_e159053159186_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159048159183_))))
                                          (let ((_tl159051159193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159053159186_)))
                                                (_hd159052159190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159053159186_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159051159193_))
                                                (let ((_e159056159196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159051159193_))))
                                                  (let ((_tl159054159203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159056159196_)))
                                                        (_hd159055159200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159056159196_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159054159203_))
                                                        (___match161952161953_
                                                         _e159044159156_
                                                         _hd159043159160_
                                                         _tl159042159163_
                                                         _e159047159166_
                                                         _hd159046159170_
                                                         _tl159045159173_
                                                         _e159050159176_
                                                         _hd159049159180_
                                                         _tl159048159183_
                                                         _e159053159186_
                                                         _hd159052159190_
                                                         _tl159051159193_
                                                         _e159056159196_
                                                         _hd159055159200_
                                                         _tl159054159203_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159036159078_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159051159193_))
                                                    (___kont161918161919_
                                                     _hd159052159190_
                                                     _hd159049159180_
                                                     _hd159046159170_
                                                     _hd159043159160_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159036159078_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159036159078_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159036159078_)))))
                        (let () (declare (not safe)) (_g159036159078_)))))
                (let () (declare (not safe)) (_g159036159078_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159235_)
      (let* ((_g159239159274_
              (lambda (_g159240159270_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159240159270_))))
             (_g159238159393_
              (lambda (_g159240159278_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159240159278_))
                    (let ((_e159246159281_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159240159278_))))
                      (let ((_hd159245159285_
                             (let ()
                               (declare (not safe))
                               (##car _e159246159281_)))
                            (_tl159244159288_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159246159281_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159244159288_))
                            (let ((_g162382_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159244159288_
                                      '0))))
                              (begin
                                (let ((_g162383_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162382_)
                                             (##vector-length _g162382_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162383_ 2)))
                                      (error "Context expects 2 values"
                                             _g162383_)))
                                (let ((_target159247159291_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162382_ 0)))
                                      (_tl159249159294_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162382_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159249159294_))
                                      (letrec ((_loop159250159297_
                                                (lambda (_hd159248159301_
                                                         _symbol159254159304_
                                                         _method159255159306_
                                                         _type-t159256159308_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159248159301_))
                                                      (let ((_e159251159311_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159248159301_))))
                (let ((_lp-hd159252159315_
                       (let () (declare (not safe)) (##car _e159251159311_)))
                      (_lp-tl159253159318_
                       (let () (declare (not safe)) (##cdr _e159251159311_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159252159315_))
                      (let ((_e159262159321_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159252159315_))))
                        (let ((_hd159261159325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159262159321_)))
                              (_tl159260159328_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159262159321_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159260159328_))
                              (let ((_e159265159331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159260159328_))))
                                (let ((_hd159264159335_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159265159331_)))
                                      (_tl159263159338_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159265159331_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159263159338_))
                                      (let ((_e159268159341_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159263159338_))))
                                        (let ((_hd159267159345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159268159341_)))
                                              (_tl159266159348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159268159341_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159266159348_))
                                              (_loop159250159297_
                                               _lp-tl159253159318_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159267159345_
                                                       _symbol159254159304_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159264159335_
                                                       _method159255159306_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159261159325_
                                                       _type-t159256159308_)))
                                              (_g159239159274_
                                               _g159240159278_))))
                                      (_g159239159274_ _g159240159278_))))
                              (_g159239159274_ _g159240159278_))))
                      (_g159239159274_ _g159240159278_))))
              (let ((_symbol159257159351_ (reverse _symbol159254159304_))
                    (_method159258159354_ (reverse _method159255159306_))
                    (_type-t159259159356_ (reverse _type-t159256159308_)))
                ((lambda (_L159359_ _L159361_ _L159362_)
                   (let ((__tmp162391
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162384
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159359_
                               _L159361_
                               _L159362_))
                            (let ((__tmp162385
                                   (lambda (_g159378159383_
                                            _g159379159386_
                                            _g159380159388_
                                            _g159381159390_)
                                     (let ((__tmp162386
                                            (let ((__tmp162390
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162387
                                                   (let ((__tmp162388
                                                          (let ((__tmp162389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159378159383_ '()))))
                    (declare (not safe))
                    (cons _g159379159386_ __tmp162389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159380159388_
                                                           __tmp162388))))
                                              (declare (not safe))
                                              (cons __tmp162390 __tmp162387))))
                                       (declare (not safe))
                                       (cons __tmp162386 _g159381159390_)))))
                              (declare (not safe))
                              (foldr* __tmp162385
                                      '()
                                      _L159359_
                                      _L159361_
                                      _L159362_)))))
                     (declare (not safe))
                     (cons __tmp162391 __tmp162384)))
                 _symbol159257159351_
                 _method159258159354_
                 _type-t159259159356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159250159297_
                                         _target159247159291_
                                         '()
                                         '()
                                         '()))
                                      (_g159239159274_ _g159240159278_)))))
                            (_g159239159274_ _g159240159278_))))
                    (_g159239159274_ _g159240159278_)))))
        (_g159238159393_ _$stx159235_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159398_)
      (let* ((_g159402159435_
              (lambda (_g159403159431_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159403159431_))))
             (_g159401159549_
              (lambda (_g159403159439_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159403159439_))
                    (let ((_e159409159442_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159403159439_))))
                      (let ((_hd159408159446_
                             (let ()
                               (declare (not safe))
                               (##car _e159409159442_)))
                            (_tl159407159449_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159409159442_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159407159449_))
                            (let ((_e159412159452_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159407159449_))))
                              (let ((_hd159411159456_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159412159452_)))
                                    (_tl159410159459_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159412159452_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159410159459_))
                                    (let ((_g162392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159410159459_
                                              '0))))
                                      (begin
                                        (let ((_g162393_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162392_)
                                                     (##vector-length
                                                      _g162392_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162393_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162393_)))
                                        (let ((_target159413159462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162392_ 0)))
                                              (_tl159415159465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162392_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159415159465_))
                                              (letrec ((_loop159416159468_
                                                        (lambda (_hd159414159472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159420159475_
                         _method159421159477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159414159472_))
                      (let ((_e159417159480_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159414159472_))))
                        (let ((_lp-hd159418159484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159417159480_)))
                              (_lp-tl159419159487_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159417159480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159418159484_))
                              (let ((_e159426159490_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159418159484_))))
                                (let ((_hd159425159494_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159426159490_)))
                                      (_tl159424159497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159426159490_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159424159497_))
                                      (let ((_e159429159500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159424159497_))))
                                        (let ((_hd159428159504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159429159500_)))
                                              (_tl159427159507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159429159500_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159427159507_))
                                              (_loop159416159468_
                                               _lp-tl159419159487_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159428159504_
                                                       _symbol159420159475_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159425159494_
                                                       _method159421159477_)))
                                              (_g159402159435_
                                               _g159403159439_))))
                                      (_g159402159435_ _g159403159439_))))
                              (_g159402159435_ _g159403159439_))))
                      (let ((_symbol159422159510_
                             (reverse _symbol159420159475_))
                            (_method159423159513_
                             (reverse _method159421159477_)))
                        ((lambda (_L159516_ _L159518_ _L159519_)
                           (let ((__tmp162401
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162394
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159516_
                                       _L159518_))
                                    (let ((__tmp162395
                                           (lambda (_g159537159541_
                                                    _g159538159544_
                                                    _g159539159546_)
                                             (let ((__tmp162396
                                                    (let ((__tmp162400
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162397
                                                           (let ((__tmp162398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162399
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159537159541_ '()))))
                            (declare (not safe))
                            (cons _g159538159544_ __tmp162399))))
                     (declare (not safe))
                     (cons _L159519_ __tmp162398))))
              (declare (not safe))
              (cons __tmp162400 __tmp162397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162396
                                                     _g159539159546_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162395
                                              '()
                                              _L159516_
                                              _L159518_)))))
                             (declare (not safe))
                             (cons __tmp162401 __tmp162394)))
                         _symbol159422159510_
                         _method159423159513_
                         _hd159411159456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159416159468_
                                                 _target159413159462_
                                                 '()
                                                 '()))
                                              (_g159402159435_
                                               _g159403159439_)))))
                                    (_g159402159435_ _g159403159439_))))
                            (_g159402159435_ _g159403159439_))))
                    (_g159402159435_ _g159403159439_)))))
        (_g159401159549_ _$stx159398_))))
  (define |gxc[:0:]#@alias|
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
                                       (let ((__tmp162406
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162402
                                              (let ((__tmp162403
                                                     (let ((__tmp162405
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162404
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162405 __tmp162404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162403 '()))))
                                         (declare (not safe))
                                         (cons __tmp162406 __tmp162402)))
                                     _hd159565159593_)
                                    (_g159558159572_ _g159559159576_))))
                            (_g159558159572_ _g159559159576_))))
                    (_g159558159572_ _g159559159576_)))))
        (_g159557159613_ _$stx159554_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159617_)
      (let* ((_g159621159671_
              (lambda (_g159622159667_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159622159667_))))
             (_g159620159838_
              (lambda (_g159622159675_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159622159675_))
                    (let ((_e159635159678_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159622159675_))))
                      (let ((_hd159634159682_
                             (let ()
                               (declare (not safe))
                               (##car _e159635159678_)))
                            (_tl159633159685_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159635159678_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159633159685_))
                            (let ((_e159638159688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159633159685_))))
                              (let ((_hd159637159692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159638159688_)))
                                    (_tl159636159695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159638159688_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159636159695_))
                                    (let ((_e159641159698_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159636159695_))))
                                      (let ((_hd159640159702_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159641159698_)))
                                            (_tl159639159705_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159641159698_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159639159705_))
                                            (let ((_e159644159708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159639159705_))))
                                              (let ((_hd159643159712_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159644159708_)))
                                                    (_tl159642159715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159644159708_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159642159715_))
                                                    (let ((_e159647159718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159642159715_))))
                                                      (let ((_hd159646159722_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159647159718_)))
                    (_tl159645159725_
                     (let () (declare (not safe)) (##cdr _e159647159718_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159645159725_))
                    (let ((_e159650159728_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159645159725_))))
                      (let ((_hd159649159732_
                             (let ()
                               (declare (not safe))
                               (##car _e159650159728_)))
                            (_tl159648159735_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159650159728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159648159735_))
                            (let ((_e159653159738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159648159735_))))
                              (let ((_hd159652159742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159653159738_)))
                                    (_tl159651159745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159653159738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159651159745_))
                                    (let ((_e159656159748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159651159745_))))
                                      (let ((_hd159655159752_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159656159748_)))
                                            (_tl159654159755_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159656159748_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159654159755_))
                                            (let ((_e159659159758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159654159755_))))
                                              (let ((_hd159658159762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159659159758_)))
                                                    (_tl159657159765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159659159758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159657159765_))
                                                    (let ((_e159662159768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159657159765_))))
                                                      (let ((_hd159661159772_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159662159768_)))
                    (_tl159660159775_
                     (let () (declare (not safe)) (##cdr _e159662159768_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159660159775_))
                    (let ((_e159665159778_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159660159775_))))
                      (let ((_hd159664159782_
                             (let ()
                               (declare (not safe))
                               (##car _e159665159778_)))
                            (_tl159663159785_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159665159778_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159663159785_))
                            ((lambda (_L159788_
                                      _L159790_
                                      _L159791_
                                      _L159792_
                                      _L159793_
                                      _L159794_
                                      _L159795_
                                      _L159796_
                                      _L159797_
                                      _L159798_)
                               (let ((__tmp162441
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162407
                                      (let ((__tmp162438
                                             (let ((__tmp162440
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162439
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159798_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162440 __tmp162439)))
                                            (__tmp162408
                                             (let ((__tmp162435
                                                    (let ((__tmp162437
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162436
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162437 __tmp162436)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162409
                                                    (let ((__tmp162432
                                                           (let ((__tmp162434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162433
                          (let () (declare (not safe)) (cons _L159796_ '()))))
                     (declare (not safe))
                     (cons __tmp162434 __tmp162433)))
                  (__tmp162410
                   (let ((__tmp162429
                          (let ((__tmp162431
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162430
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159795_ '()))))
                            (declare (not safe))
                            (cons __tmp162431 __tmp162430)))
                         (__tmp162411
                          (let ((__tmp162426
                                 (let ((__tmp162428
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162427
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159794_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162428 __tmp162427)))
                                (__tmp162412
                                 (let ((__tmp162423
                                        (let ((__tmp162425
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162424
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159793_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162425 __tmp162424)))
                                       (__tmp162413
                                        (let ((__tmp162414
                                               (let ((__tmp162415
                                                      (let ((__tmp162420
                                                             (let ((__tmp162422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162421
                            (let ()
                              (declare (not safe))
                              (cons _L159790_ '()))))
                       (declare (not safe))
                       (cons __tmp162422 __tmp162421)))
                    (__tmp162416
                     (let ((__tmp162417
                            (let ((__tmp162419
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162418
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159788_ '()))))
                              (declare (not safe))
                              (cons __tmp162419 __tmp162418))))
                       (declare (not safe))
                       (cons __tmp162417 '()))))
                (declare (not safe))
                (cons __tmp162420 __tmp162416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159791_
                                                       __tmp162415))))
                                          (declare (not safe))
                                          (cons _L159792_ __tmp162414))))
                                   (declare (not safe))
                                   (cons __tmp162423 __tmp162413))))
                            (declare (not safe))
                            (cons __tmp162426 __tmp162412))))
                     (declare (not safe))
                     (cons __tmp162429 __tmp162411))))
              (declare (not safe))
              (cons __tmp162432 __tmp162410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162435
                                                     __tmp162409))))
                                        (declare (not safe))
                                        (cons __tmp162438 __tmp162408))))
                                 (declare (not safe))
                                 (cons __tmp162441 __tmp162407)))
                             _hd159664159782_
                             _hd159661159772_
                             _hd159658159762_
                             _hd159655159752_
                             _hd159652159742_
                             _hd159649159732_
                             _hd159646159722_
                             _hd159643159712_
                             _hd159640159702_
                             _hd159637159692_)
                            (_g159621159671_ _g159622159675_))))
                    (_g159621159671_ _g159622159675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159621159671_
                                                     _g159622159675_))))
                                            (_g159621159671_
                                             _g159622159675_))))
                                    (_g159621159671_ _g159622159675_))))
                            (_g159621159671_ _g159622159675_))))
                    (_g159621159671_ _g159622159675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159621159671_
                                                     _g159622159675_))))
                                            (_g159621159671_
                                             _g159622159675_))))
                                    (_g159621159671_ _g159622159675_))))
                            (_g159621159671_ _g159622159675_))))
                    (_g159621159671_ _g159622159675_)))))
        (_g159620159838_ _$stx159617_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159842_)
      (let* ((_g159846159860_
              (lambda (_g159847159856_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159847159856_))))
             (_g159845159901_
              (lambda (_g159847159864_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159847159864_))
                    (let ((_e159851159867_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159847159864_))))
                      (let ((_hd159850159871_
                             (let ()
                               (declare (not safe))
                               (##car _e159851159867_)))
                            (_tl159849159874_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159851159867_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159849159874_))
                            (let ((_e159854159877_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159849159874_))))
                              (let ((_hd159853159881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159854159877_)))
                                    (_tl159852159884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159854159877_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159852159884_))
                                    ((lambda (_L159887_)
                                       (let ((__tmp162446
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162442
                                              (let ((__tmp162443
                                                     (let ((__tmp162445
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162444
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162445 __tmp162444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162443 '()))))
                                         (declare (not safe))
                                         (cons __tmp162446 __tmp162442)))
                                     _hd159853159881_)
                                    (_g159846159860_ _g159847159864_))))
                            (_g159846159860_ _g159847159864_))))
                    (_g159846159860_ _g159847159864_)))))
        (_g159845159901_ _$stx159842_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159905_)
      (let* ((_g159909159923_
              (lambda (_g159910159919_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159910159919_))))
             (_g159908159964_
              (lambda (_g159910159927_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159910159927_))
                    (let ((_e159914159930_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159910159927_))))
                      (let ((_hd159913159934_
                             (let ()
                               (declare (not safe))
                               (##car _e159914159930_)))
                            (_tl159912159937_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159914159930_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159912159937_))
                            (let ((_e159917159940_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159912159937_))))
                              (let ((_hd159916159944_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159917159940_)))
                                    (_tl159915159947_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159917159940_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159915159947_))
                                    ((lambda (_L159950_)
                                       (let ((__tmp162451
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162447
                                              (let ((__tmp162448
                                                     (let ((__tmp162450
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162449
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162450 __tmp162449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162448 '()))))
                                         (declare (not safe))
                                         (cons __tmp162451 __tmp162447)))
                                     _hd159916159944_)
                                    (_g159909159923_ _g159910159927_))))
                            (_g159909159923_ _g159910159927_))))
                    (_g159909159923_ _g159910159927_)))))
        (_g159908159964_ _$stx159905_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159968_)
      (let* ((_g159972159994_
              (lambda (_g159973159990_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159973159990_))))
             (_g159971160063_
              (lambda (_g159973159998_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159973159998_))
                    (let ((_e159979160001_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159973159998_))))
                      (let ((_hd159978160005_
                             (let ()
                               (declare (not safe))
                               (##car _e159979160001_)))
                            (_tl159977160008_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159979160001_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159977160008_))
                            (let ((_e159982160011_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159977160008_))))
                              (let ((_hd159981160015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159982160011_)))
                                    (_tl159980160018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159982160011_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159980160018_))
                                    (let ((_e159985160021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159980160018_))))
                                      (let ((_hd159984160025_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159985160021_)))
                                            (_tl159983160028_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159985160021_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159983160028_))
                                            (let ((_e159988160031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159983160028_))))
                                              (let ((_hd159987160035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159988160031_)))
                                                    (_tl159986160038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159988160031_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159986160038_))
                                                    ((lambda (_L160041_
                                                              _L160043_
                                                              _L160044_)
                                                       (let ((__tmp162461
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162452
                      (let ((__tmp162458
                             (let ((__tmp162460
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162459
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160044_ '()))))
                               (declare (not safe))
                               (cons __tmp162460 __tmp162459)))
                            (__tmp162453
                             (let ((__tmp162455
                                    (let ((__tmp162457
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162456
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160043_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162457 __tmp162456)))
                                   (__tmp162454
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160041_ '()))))
                               (declare (not safe))
                               (cons __tmp162455 __tmp162454))))
                        (declare (not safe))
                        (cons __tmp162458 __tmp162453))))
                 (declare (not safe))
                 (cons __tmp162461 __tmp162452)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159987160035_
                                                     _hd159984160025_
                                                     _hd159981160015_)
                                                    (_g159972159994_
                                                     _g159973159998_))))
                                            (_g159972159994_
                                             _g159973159998_))))
                                    (_g159972159994_ _g159973159998_))))
                            (_g159972159994_ _g159973159998_))))
                    (_g159972159994_ _g159973159998_)))))
        (_g159971160063_ _$stx159968_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160067_)
      (let* ((_g160071160093_
              (lambda (_g160072160089_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160072160089_))))
             (_g160070160162_
              (lambda (_g160072160097_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160072160097_))
                    (let ((_e160078160100_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160072160097_))))
                      (let ((_hd160077160104_
                             (let ()
                               (declare (not safe))
                               (##car _e160078160100_)))
                            (_tl160076160107_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160078160100_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160076160107_))
                            (let ((_e160081160110_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160076160107_))))
                              (let ((_hd160080160114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160081160110_)))
                                    (_tl160079160117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160081160110_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160079160117_))
                                    (let ((_e160084160120_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160079160117_))))
                                      (let ((_hd160083160124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160084160120_)))
                                            (_tl160082160127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160084160120_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160082160127_))
                                            (let ((_e160087160130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160082160127_))))
                                              (let ((_hd160086160134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160087160130_)))
                                                    (_tl160085160137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160087160130_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160085160137_))
                                                    ((lambda (_L160140_
                                                              _L160142_
                                                              _L160143_)
                                                       (let ((__tmp162471
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162462
                      (let ((__tmp162468
                             (let ((__tmp162470
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162469
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160143_ '()))))
                               (declare (not safe))
                               (cons __tmp162470 __tmp162469)))
                            (__tmp162463
                             (let ((__tmp162465
                                    (let ((__tmp162467
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162466
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160142_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162467 __tmp162466)))
                                   (__tmp162464
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160140_ '()))))
                               (declare (not safe))
                               (cons __tmp162465 __tmp162464))))
                        (declare (not safe))
                        (cons __tmp162468 __tmp162463))))
                 (declare (not safe))
                 (cons __tmp162471 __tmp162462)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160086160134_
                                                     _hd160083160124_
                                                     _hd160080160114_)
                                                    (_g160071160093_
                                                     _g160072160097_))))
                                            (_g160071160093_
                                             _g160072160097_))))
                                    (_g160071160093_ _g160072160097_))))
                            (_g160071160093_ _g160072160097_))))
                    (_g160071160093_ _g160072160097_)))))
        (_g160070160162_ _$stx160067_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160166_)
      (let* ((___stx161981161982_ _$stx160166_)
             (_g160174160242_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161981161982_)))))
        (let ((___kont161984161985_
               (lambda (_L160520_ _L160522_)
                 (let ((__tmp162492
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162472
                        (let ((__tmp162488
                               (let ((__tmp162491
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162489
                                      (let ((__tmp162490
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162490 '()))))
                                 (declare (not safe))
                                 (cons __tmp162491 __tmp162489)))
                              (__tmp162473
                               (let ((__tmp162485
                                      (let ((__tmp162487
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162486
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160522_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162487 __tmp162486)))
                                     (__tmp162474
                                      (let ((__tmp162475
                                             (let ((__tmp162476
                                                    (let ((__tmp162477
                                                           (let ((__tmp162484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162478
                          (let ((__tmp162479
                                 (let ((__tmp162483
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162480
                                        (let ((__tmp162481
                                               (let ((__tmp162482
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160520_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162482))))
                                          (declare (not safe))
                                          (cons _L160522_ __tmp162481))))
                                   (declare (not safe))
                                   (cons __tmp162483 __tmp162480))))
                            (declare (not safe))
                            (cons __tmp162479 '()))))
                     (declare (not safe))
                     (cons __tmp162484 __tmp162478))))
              (declare (not safe))
              (cons __tmp162477 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160520_ __tmp162476))))
                                        (declare (not safe))
                                        (cons '#f __tmp162475))))
                                 (declare (not safe))
                                 (cons __tmp162485 __tmp162474))))
                          (declare (not safe))
                          (cons __tmp162488 __tmp162473))))
                   (declare (not safe))
                   (cons __tmp162492 __tmp162472))))
              (___kont161986161987_
               (lambda (_L160451_ _L160453_)
                 (let ((__tmp162493
                        (let ((__tmp162494
                               (let ((__tmp162495
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160451_ __tmp162495))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162494))))
                   (declare (not safe))
                   (cons _L160453_ __tmp162493))))
              (___kont161988161989_
               (lambda (_L160390_ _L160392_)
                 (let ((__tmp162509
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162496
                        (let ((__tmp162505
                               (let ((__tmp162508
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162506
                                      (let ((__tmp162507
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162507 '()))))
                                 (declare (not safe))
                                 (cons __tmp162508 __tmp162506)))
                              (__tmp162497
                               (let ((__tmp162502
                                      (let ((__tmp162504
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162503
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160392_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162504 __tmp162503)))
                                     (__tmp162498
                                      (let ((__tmp162499
                                             (let ((__tmp162501
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162500
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160390_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162501
                                                     __tmp162500))))
                                        (declare (not safe))
                                        (cons __tmp162499 '()))))
                                 (declare (not safe))
                                 (cons __tmp162502 __tmp162498))))
                          (declare (not safe))
                          (cons __tmp162505 __tmp162497))))
                   (declare (not safe))
                   (cons __tmp162509 __tmp162496))))
              (___kont161990161991_
               (lambda (_L160322_ _L160324_)
                 (let ((__tmp162523
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162510
                        (let ((__tmp162519
                               (let ((__tmp162522
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162520
                                      (let ((__tmp162521
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162521 '()))))
                                 (declare (not safe))
                                 (cons __tmp162522 __tmp162520)))
                              (__tmp162511
                               (let ((__tmp162516
                                      (let ((__tmp162518
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162517
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160324_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162518 __tmp162517)))
                                     (__tmp162512
                                      (let ((__tmp162513
                                             (let ((__tmp162515
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162514
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160322_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162515
                                                     __tmp162514))))
                                        (declare (not safe))
                                        (cons __tmp162513 '()))))
                                 (declare (not safe))
                                 (cons __tmp162516 __tmp162512))))
                          (declare (not safe))
                          (cons __tmp162519 __tmp162511))))
                   (declare (not safe))
                   (cons __tmp162523 __tmp162510))))
              (___kont161992161993_
               (lambda (_L160269_ _L160271_)
                 (let ((__tmp162524
                        (let ((__tmp162525
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160269_ __tmp162525))))
                   (declare (not safe))
                   (cons _L160271_ __tmp162524)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161981161982_))
              (let ((_e160180160476_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161981161982_))))
                (let ((_tl160178160483_
                       (let () (declare (not safe)) (##cdr _e160180160476_)))
                      (_hd160179160480_
                       (let () (declare (not safe)) (##car _e160180160476_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160178160483_))
                      (let ((_e160183160486_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160178160483_))))
                        (let ((_tl160181160493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160183160486_)))
                              (_hd160182160490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160183160486_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160181160493_))
                              (let ((_e160186160496_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160181160493_))))
                                (let ((_tl160184160503_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160186160496_)))
                                      (_hd160185160500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160186160496_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160185160500_))
                                      (let ((_e160187160506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160185160500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160187160506_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160184160503_))
                                                (let ((_e160190160510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160184160503_))))
                                                  (let ((_tl160188160517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160190160510_)))
                                                        (_hd160189160514_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160190160510_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160188160517_))
                                                        (___kont161984161985_
                                                         _hd160189160514_
                                                         _hd160182160490_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160182160490_))
                                                            (let ((_e160199160437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160182160490_))))
                      (declare (not safe))
                      (_g160174160242_))
                    (let () (declare (not safe)) (_g160174160242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160182160490_))
                                                    (let ((_e160199160437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160182160490_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160199160437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160184160503_))
                      (___kont161986161987_ _hd160185160500_ _hd160179160480_)
                      (let () (declare (not safe)) (_g160174160242_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160184160503_))
                      (___kont161990161991_ _hd160185160500_ _hd160182160490_)
                      (let () (declare (not safe)) (_g160174160242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160184160503_))
                                                        (___kont161990161991_
                                                         _hd160185160500_
                                                         _hd160182160490_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160174160242_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160182160490_))
                                                (let ((_e160199160437_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160182160490_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160199160437_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160184160503_))
                                                          (___kont161986161987_
                                                           _hd160185160500_
                                                           _hd160179160480_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160184160503_))
                      (let ((_e160217160380_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160184160503_))))
                        (let ((_tl160215160387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160217160380_)))
                              (_hd160216160384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160217160380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160215160387_))
                              (___kont161988161989_
                               _hd160216160384_
                               _hd160185160500_)
                              (let ()
                                (declare (not safe))
                                (_g160174160242_)))))
                      (let () (declare (not safe)) (_g160174160242_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160184160503_))
                  (___kont161990161991_ _hd160185160500_ _hd160182160490_)
                  (let () (declare (not safe)) (_g160174160242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160184160503_))
                                                    (___kont161990161991_
                                                     _hd160185160500_
                                                     _hd160182160490_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160174160242_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160182160490_))
                                          (let ((_e160199160437_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160182160490_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160199160437_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160184160503_))
                                                    (___kont161986161987_
                                                     _hd160185160500_
                                                     _hd160179160480_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160184160503_))
                                                        (let ((_e160217160380_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160184160503_))))
                  (let ((_tl160215160387_
                         (let () (declare (not safe)) (##cdr _e160217160380_)))
                        (_hd160216160384_
                         (let ()
                           (declare (not safe))
                           (##car _e160217160380_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160215160387_))
                        (___kont161988161989_
                         _hd160216160384_
                         _hd160185160500_)
                        (let () (declare (not safe)) (_g160174160242_)))))
                (let () (declare (not safe)) (_g160174160242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160184160503_))
                                                    (___kont161990161991_
                                                     _hd160185160500_
                                                     _hd160182160490_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160174160242_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160184160503_))
                                              (___kont161990161991_
                                               _hd160185160500_
                                               _hd160182160490_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160174160242_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160182160490_))
                                  (let ((_e160199160437_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160182160490_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160181160493_))
                                        (___kont161992161993_
                                         _hd160182160490_
                                         _hd160179160480_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160174160242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160181160493_))
                                      (___kont161992161993_
                                       _hd160182160490_
                                       _hd160179160480_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160174160242_)))))))
                      (let () (declare (not safe)) (_g160174160242_)))))
              (let () (declare (not safe)) (_g160174160242_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160544_)
      (let* ((___stx162121162122_ _$stx160544_)
             (_g160549160604_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162121162122_)))))
        (let ((___kont162124162125_
               (lambda (_L160789_ _L160791_)
                 (let ((__tmp162541
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162526
                        (let ((__tmp162537
                               (let ((__tmp162540
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162538
                                      (let ((__tmp162539
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162539 '()))))
                                 (declare (not safe))
                                 (cons __tmp162540 __tmp162538)))
                              (__tmp162527
                               (let ((__tmp162528
                                      (let ((__tmp162536
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162529
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160789_
                                                  _L160791_))
                                               (let ((__tmp162530
                                                      (lambda (_g160808160812_
                                                               _g160809160815_
                                                               _g160810160817_)
                                                        (let ((__tmp162531
                                                               (let ((__tmp162535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162532
                              (let ((__tmp162533
                                     (let ((__tmp162534
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160808160812_ '()))))
                                       (declare (not safe))
                                       (cons _g160809160815_ __tmp162534))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162533))))
                         (declare (not safe))
                         (cons __tmp162535 __tmp162532))))
                  (declare (not safe))
                  (cons __tmp162531 _g160810160817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162530
                                                         '()
                                                         _L160789_
                                                         _L160791_)))))
                                        (declare (not safe))
                                        (cons __tmp162536 __tmp162529))))
                                 (declare (not safe))
                                 (cons __tmp162528 '()))))
                          (declare (not safe))
                          (cons __tmp162537 __tmp162527))))
                   (declare (not safe))
                   (cons __tmp162541 __tmp162526))))
              (___kont162128162129_
               (lambda (_L160675_ _L160677_)
                 (let ((__tmp162556
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162542
                        (let ((__tmp162552
                               (let ((__tmp162555
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162553
                                      (let ((__tmp162554
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162554 '()))))
                                 (declare (not safe))
                                 (cons __tmp162555 __tmp162553)))
                              (__tmp162543
                               (let ((__tmp162544
                                      (let ((__tmp162551
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162545
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160675_
                                                  _L160677_))
                                               (let ((__tmp162546
                                                      (lambda (_g160692160696_
                                                               _g160693160699_
                                                               _g160694160701_)
                                                        (let ((__tmp162547
                                                               (let ((__tmp162550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162548
                              (let ((__tmp162549
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160692160696_ '()))))
                                (declare (not safe))
                                (cons _g160693160699_ __tmp162549))))
                         (declare (not safe))
                         (cons __tmp162550 __tmp162548))))
                  (declare (not safe))
                  (cons __tmp162547 _g160694160701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162546
                                                         '()
                                                         _L160675_
                                                         _L160677_)))))
                                        (declare (not safe))
                                        (cons __tmp162551 __tmp162545))))
                                 (declare (not safe))
                                 (cons __tmp162544 '()))))
                          (declare (not safe))
                          (cons __tmp162552 __tmp162543))))
                   (declare (not safe))
                   (cons __tmp162556 __tmp162542)))))
          (let* ((___match162172162173_
                  (lambda (_e160581160611_
                           _hd160580160615_
                           _tl160579160618_
                           ___splice162130162131_
                           _target160582160621_
                           _tl160584160624_)
                    (letrec ((_loop160585160627_
                              (lambda (_hd160583160631_
                                       _dispatch160589160634_
                                       _arity160590160636_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160583160631_))
                                    (let ((_e160586160639_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160583160631_))))
                                      (let ((_lp-tl160588160646_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160586160639_)))
                                            (_lp-hd160587160643_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160586160639_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160587160643_))
                                            (let ((_e160595160649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160587160643_))))
                                              (let ((_tl160593160656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160595160649_)))
                                                    (_hd160594160653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160595160649_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160593160656_))
                                                    (let ((_e160598160659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160593160656_))))
                                                      (let ((_tl160596160666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160598160659_)))
                    (_hd160597160663_
                     (let () (declare (not safe)) (##car _e160598160659_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160596160666_))
                    (_loop160585160627_
                     _lp-tl160588160646_
                     (let ()
                       (declare (not safe))
                       (cons _hd160597160663_ _dispatch160589160634_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160594160653_ _arity160590160636_)))
                    (let () (declare (not safe)) (_g160549160604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160549160604_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160549160604_)))))
                                    (let ((_arity160592160672_
                                           (reverse _arity160590160636_))
                                          (_dispatch160591160669_
                                           (reverse _dispatch160589160634_)))
                                      (___kont162128162129_
                                       _dispatch160591160669_
                                       _arity160592160672_))))))
                      (_loop160585160627_ _target160582160621_ '() '()))))
                 (___match162164162165_
                  (lambda (_e160581160611_ _hd160580160615_ _tl160579160618_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160579160618_))
                        (let ((___splice162130162131_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160579160618_
                                  '0))))
                          (let ((_tl160584160624_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162130162131_ '1)))
                                (_target160582160621_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162130162131_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160584160624_))
                                (___match162172162173_
                                 _e160581160611_
                                 _hd160580160615_
                                 _tl160579160618_
                                 ___splice162130162131_
                                 _target160582160621_
                                 _tl160584160624_)
                                (let ()
                                  (declare (not safe))
                                  (_g160549160604_)))))
                        (let () (declare (not safe)) (_g160549160604_)))))
                 (___match162158162159_
                  (lambda (_e160555160711_
                           _hd160554160715_
                           _tl160553160718_
                           _e160558160721_
                           _hd160557160725_
                           _tl160556160728_
                           _e160559160731_
                           ___splice162126162127_
                           _target160560160735_
                           _tl160562160738_)
                    (letrec ((_loop160563160741_
                              (lambda (_hd160561160745_
                                       _dispatch160567160748_
                                       _arity160568160750_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160561160745_))
                                    (let ((_e160564160753_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160561160745_))))
                                      (let ((_lp-tl160566160760_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160564160753_)))
                                            (_lp-hd160565160757_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160564160753_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160565160757_))
                                            (let ((_e160573160763_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160565160757_))))
                                              (let ((_tl160571160770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160573160763_)))
                                                    (_hd160572160767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160573160763_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160571160770_))
                                                    (let ((_e160576160773_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160571160770_))))
                                                      (let ((_tl160574160780_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160576160773_)))
                    (_hd160575160777_
                     (let () (declare (not safe)) (##car _e160576160773_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160574160780_))
                    (_loop160563160741_
                     _lp-tl160566160760_
                     (let ()
                       (declare (not safe))
                       (cons _hd160575160777_ _dispatch160567160748_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160572160767_ _arity160568160750_)))
                    (___match162164162165_
                     _e160555160711_
                     _hd160554160715_
                     _tl160553160718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162164162165_
                                                     _e160555160711_
                                                     _hd160554160715_
                                                     _tl160553160718_))))
                                            (___match162164162165_
                                             _e160555160711_
                                             _hd160554160715_
                                             _tl160553160718_))))
                                    (let ((_arity160570160786_
                                           (reverse _arity160568160750_))
                                          (_dispatch160569160783_
                                           (reverse _dispatch160567160748_)))
                                      (___kont162124162125_
                                       _dispatch160569160783_
                                       _arity160570160786_))))))
                      (_loop160563160741_ _target160560160735_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162121162122_))
                (let ((_e160555160711_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162121162122_))))
                  (let ((_tl160553160718_
                         (let () (declare (not safe)) (##cdr _e160555160711_)))
                        (_hd160554160715_
                         (let ()
                           (declare (not safe))
                           (##car _e160555160711_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160553160718_))
                        (let ((_e160558160721_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160553160718_))))
                          (let ((_tl160556160728_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160558160721_)))
                                (_hd160557160725_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160558160721_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160557160725_))
                                (let ((_e160559160731_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160557160725_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160559160731_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160556160728_))
                                          (let ((___splice162126162127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160556160728_
                                                    '0))))
                                            (let ((_tl160562160738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162126162127_
                                                      '1)))
                                                  (_target160560160735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162126162127_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160562160738_))
                                                  (___match162158162159_
                                                   _e160555160711_
                                                   _hd160554160715_
                                                   _tl160553160718_
                                                   _e160558160721_
                                                   _hd160557160725_
                                                   _tl160556160728_
                                                   _e160559160731_
                                                   ___splice162126162127_
                                                   _target160560160735_
                                                   _tl160562160738_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160553160718_))
                                                      (let ((___splice162130162131_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160553160718_ '0))))
                (let ((_tl160584160624_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162130162131_ '1)))
                      (_target160582160621_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162130162131_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160584160624_))
                      (___match162172162173_
                       _e160555160711_
                       _hd160554160715_
                       _tl160553160718_
                       ___splice162130162131_
                       _target160582160621_
                       _tl160584160624_)
                      (let () (declare (not safe)) (_g160549160604_)))))
              (let () (declare (not safe)) (_g160549160604_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160553160718_))
                                              (let ((___splice162130162131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160553160718_
                                                        '0))))
                                                (let ((_tl160584160624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162130162131_
                                                          '1)))
                                                      (_target160582160621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162130162131_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160584160624_))
                                                      (___match162172162173_
                                                       _e160555160711_
                                                       _hd160554160715_
                                                       _tl160553160718_
                                                       ___splice162130162131_
                                                       _target160582160621_
                                                       _tl160584160624_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160549160604_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160549160604_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160553160718_))
                                          (let ((___splice162130162131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160553160718_
                                                    '0))))
                                            (let ((_tl160584160624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162130162131_
                                                      '1)))
                                                  (_target160582160621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162130162131_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160584160624_))
                                                  (___match162172162173_
                                                   _e160555160711_
                                                   _hd160554160715_
                                                   _tl160553160718_
                                                   ___splice162130162131_
                                                   _target160582160621_
                                                   _tl160584160624_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160549160604_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160549160604_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160553160718_))
                                    (let ((___splice162130162131_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160553160718_
                                              '0))))
                                      (let ((_tl160584160624_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162130162131_
                                                '1)))
                                            (_target160582160621_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162130162131_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160584160624_))
                                            (___match162172162173_
                                             _e160555160711_
                                             _hd160554160715_
                                             _tl160553160718_
                                             ___splice162130162131_
                                             _target160582160621_
                                             _tl160584160624_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160549160604_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160549160604_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160553160718_))
                            (let ((___splice162130162131_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160553160718_
                                      '0))))
                              (let ((_tl160584160624_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162130162131_
                                        '1)))
                                    (_target160582160621_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162130162131_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160584160624_))
                                    (___match162172162173_
                                     _e160555160711_
                                     _hd160554160715_
                                     _tl160553160718_
                                     ___splice162130162131_
                                     _target160582160621_
                                     _tl160584160624_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160549160604_)))))
                            (let () (declare (not safe)) (_g160549160604_))))))
                (let () (declare (not safe)) (_g160549160604_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160826_)
      (let* ((_g160830160848_
              (lambda (_g160831160844_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160831160844_))))
             (_g160829160903_
              (lambda (_g160831160852_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160831160852_))
                    (let ((_e160836160855_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160831160852_))))
                      (let ((_hd160835160859_
                             (let ()
                               (declare (not safe))
                               (##car _e160836160855_)))
                            (_tl160834160862_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160836160855_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160834160862_))
                            (let ((_e160839160865_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160834160862_))))
                              (let ((_hd160838160869_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160839160865_)))
                                    (_tl160837160872_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160839160865_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160837160872_))
                                    (let ((_e160842160875_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160837160872_))))
                                      (let ((_hd160841160879_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160842160875_)))
                                            (_tl160840160882_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160842160875_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160840160882_))
                                            ((lambda (_L160885_ _L160887_)
                                               (let ((__tmp162570
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162557
                                                      (let ((__tmp162566
                                                             (let ((__tmp162569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162567
                            (let ((__tmp162568
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162568 '()))))
                       (declare (not safe))
                       (cons __tmp162569 __tmp162567)))
                    (__tmp162558
                     (let ((__tmp162563
                            (let ((__tmp162565
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162564
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160887_ '()))))
                              (declare (not safe))
                              (cons __tmp162565 __tmp162564)))
                           (__tmp162559
                            (let ((__tmp162560
                                   (let ((__tmp162562
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162561
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160885_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162562 __tmp162561))))
                              (declare (not safe))
                              (cons __tmp162560 '()))))
                       (declare (not safe))
                       (cons __tmp162563 __tmp162559))))
                (declare (not safe))
                (cons __tmp162566 __tmp162558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162570
                                                       __tmp162557)))
                                             _hd160841160879_
                                             _hd160838160869_)
                                            (_g160830160848_
                                             _g160831160852_))))
                                    (_g160830160848_ _g160831160852_))))
                            (_g160830160848_ _g160831160852_))))
                    (_g160830160848_ _g160831160852_)))))
        (_g160829160903_ _$stx160826_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160907_)
      (let* ((_g160911160929_
              (lambda (_g160912160925_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160912160925_))))
             (_g160910160984_
              (lambda (_g160912160933_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160912160933_))
                    (let ((_e160917160936_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160912160933_))))
                      (let ((_hd160916160940_
                             (let ()
                               (declare (not safe))
                               (##car _e160917160936_)))
                            (_tl160915160943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160917160936_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160915160943_))
                            (let ((_e160920160946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160915160943_))))
                              (let ((_hd160919160950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160920160946_)))
                                    (_tl160918160953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160920160946_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160918160953_))
                                    (let ((_e160923160956_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160918160953_))))
                                      (let ((_hd160922160960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160923160956_)))
                                            (_tl160921160963_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160923160956_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160921160963_))
                                            ((lambda (_L160966_ _L160968_)
                                               (let ((__tmp162584
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162571
                                                      (let ((__tmp162580
                                                             (let ((__tmp162583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162581
                            (let ((__tmp162582
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162582 '()))))
                       (declare (not safe))
                       (cons __tmp162583 __tmp162581)))
                    (__tmp162572
                     (let ((__tmp162577
                            (let ((__tmp162579
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162578
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160968_ '()))))
                              (declare (not safe))
                              (cons __tmp162579 __tmp162578)))
                           (__tmp162573
                            (let ((__tmp162574
                                   (let ((__tmp162576
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162575
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160966_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162576 __tmp162575))))
                              (declare (not safe))
                              (cons __tmp162574 '()))))
                       (declare (not safe))
                       (cons __tmp162577 __tmp162573))))
                (declare (not safe))
                (cons __tmp162580 __tmp162572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162584
                                                       __tmp162571)))
                                             _hd160922160960_
                                             _hd160919160950_)
                                            (_g160911160929_
                                             _g160912160933_))))
                                    (_g160911160929_ _g160912160933_))))
                            (_g160911160929_ _g160912160933_))))
                    (_g160911160929_ _g160912160933_)))))
        (_g160910160984_ _$stx160907_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160988_)
      (let* ((___stx162175162176_ _$stx160988_)
             (_g160995161066_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162175162176_)))))
        (let ((___kont162178162179_
               (lambda (_L161357_ _L161359_)
                 (let ((__tmp162590
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162585
                        (let ((__tmp162586
                               (let ((__tmp162587
                                      (let ((__tmp162589
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162588
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161357_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162589 __tmp162588))))
                                 (declare (not safe))
                                 (cons __tmp162587 '()))))
                          (declare (not safe))
                          (cons _L161359_ __tmp162586))))
                   (declare (not safe))
                   (cons __tmp162590 __tmp162585))))
              (___kont162180162181_
               (lambda (_L161276_ _L161278_)
                 (let ((__tmp162599
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162591
                        (let ((__tmp162592
                               (let ((__tmp162593
                                      (let ((__tmp162598
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162594
                                             (let ((__tmp162595
                                                    (lambda (_g161297161300_
                                                             _g161298161303_)
                                                      (let ((__tmp162596
                                                             (let ((__tmp162597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161297161300_ __tmp162597))))
                (declare (not safe))
                (cons __tmp162596 _g161298161303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162595
                                                       '()
                                                       _L161276_))))
                                        (declare (not safe))
                                        (cons __tmp162598 __tmp162594))))
                                 (declare (not safe))
                                 (cons __tmp162593 '()))))
                          (declare (not safe))
                          (cons _L161278_ __tmp162592))))
                   (declare (not safe))
                   (cons __tmp162599 __tmp162591))))
              (___kont162184162185_
               (lambda (_L161188_ _L161190_)
                 (let ((__tmp162606
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162600
                        (let ((__tmp162601
                               (let ((__tmp162602
                                      (let ((__tmp162605
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162603
                                             (let ((__tmp162604
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161188_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162604))))
                                        (declare (not safe))
                                        (cons __tmp162605 __tmp162603))))
                                 (declare (not safe))
                                 (cons __tmp162602 '()))))
                          (declare (not safe))
                          (cons _L161190_ __tmp162601))))
                   (declare (not safe))
                   (cons __tmp162606 __tmp162600))))
              (___kont162186162187_
               (lambda (_L161123_ _L161125_)
                 (let ((__tmp162616
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162607
                        (let ((__tmp162608
                               (let ((__tmp162609
                                      (let ((__tmp162615
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162610
                                             (let ((__tmp162611
                                                    (let ((__tmp162612
                                                           (lambda (_g161142161145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161143161148_)
                     (let ((__tmp162613
                            (let ((__tmp162614
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161142161145_ __tmp162614))))
                       (declare (not safe))
                       (cons __tmp162613 _g161143161148_)))))
              (declare (not safe))
              (foldr1 __tmp162612 '() _L161123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162611))))
                                        (declare (not safe))
                                        (cons __tmp162615 __tmp162610))))
                                 (declare (not safe))
                                 (cons __tmp162609 '()))))
                          (declare (not safe))
                          (cons _L161125_ __tmp162608))))
                   (declare (not safe))
                   (cons __tmp162616 __tmp162607)))))
          (let* ((___match162294162295_
                  (lambda (_e161048161073_
                           _hd161047161077_
                           _tl161046161080_
                           _e161051161083_
                           _hd161050161087_
                           _tl161049161090_
                           ___splice162188162189_
                           _target161052161093_
                           _tl161054161096_)
                    (letrec ((_loop161055161099_
                              (lambda (_hd161053161103_ _arity161059161106_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161053161103_))
                                    (let ((_e161056161109_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161053161103_))))
                                      (let ((_lp-tl161058161116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161056161109_)))
                                            (_lp-hd161057161113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161056161109_))))
                                        (_loop161055161099_
                                         _lp-tl161058161116_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161057161113_
                                                 _arity161059161106_)))))
                                    (let ((_arity161060161119_
                                           (reverse _arity161059161106_)))
                                      (___kont162186162187_
                                       _arity161060161119_
                                       _hd161050161087_))))))
                      (_loop161055161099_ _target161052161093_ '()))))
                 (___match162254162255_
                  (lambda (_e161016161212_
                           _hd161015161216_
                           _tl161014161219_
                           _e161019161222_
                           _hd161018161226_
                           _tl161017161229_
                           _e161022161232_
                           _hd161021161236_
                           _tl161020161239_
                           _e161023161242_
                           ___splice162182162183_
                           _target161024161246_
                           _tl161026161249_)
                    (letrec ((_loop161027161252_
                              (lambda (_hd161025161256_ _arity161031161259_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161025161256_))
                                    (let ((_e161028161262_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161025161256_))))
                                      (let ((_lp-tl161030161269_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161028161262_)))
                                            (_lp-hd161029161266_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161028161262_))))
                                        (_loop161027161252_
                                         _lp-tl161030161269_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161029161266_
                                                 _arity161031161259_)))))
                                    (let ((_arity161032161272_
                                           (reverse _arity161031161259_)))
                                      (___kont162180162181_
                                       _arity161032161272_
                                       _hd161018161226_))))))
                      (_loop161027161252_ _target161024161246_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162175162176_))
                (let ((_e161001161313_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162175162176_))))
                  (let ((_tl160999161320_
                         (let () (declare (not safe)) (##cdr _e161001161313_)))
                        (_hd161000161317_
                         (let ()
                           (declare (not safe))
                           (##car _e161001161313_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160999161320_))
                        (let ((_e161004161323_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160999161320_))))
                          (let ((_tl161002161330_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161004161323_)))
                                (_hd161003161327_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161004161323_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161002161330_))
                                (let ((_e161007161333_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161002161330_))))
                                  (let ((_tl161005161340_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161007161333_)))
                                        (_hd161006161337_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161007161333_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161006161337_))
                                        (let ((_e161008161343_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161006161337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161008161343_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161005161340_))
                                                  (let ((_e161011161347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161005161340_))))
                                                    (let ((_tl161009161354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161011161347_)))
                                                          (_hd161010161351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161011161347_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161009161354_))
                                                          (___kont162178162179_
                                                           _hd161010161351_
                                                           _hd161003161327_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161005161340_))
                      (let ((___splice162182162183_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161005161340_ '0))))
                        (let ((_tl161026161249_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162182162183_ '1)))
                              (_target161024161246_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162182162183_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161026161249_))
                              (___match162254162255_
                               _e161001161313_
                               _hd161000161317_
                               _tl160999161320_
                               _e161004161323_
                               _hd161003161327_
                               _tl161002161330_
                               _e161007161333_
                               _hd161006161337_
                               _tl161005161340_
                               _e161008161343_
                               ___splice162182162183_
                               _target161024161246_
                               _tl161026161249_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161002161330_))
                                  (let ((___splice162188162189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161002161330_
                                            '0))))
                                    (let ((_tl161054161096_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162188162189_
                                              '1)))
                                          (_target161052161093_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162188162189_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161054161096_))
                                          (___match162294162295_
                                           _e161001161313_
                                           _hd161000161317_
                                           _tl160999161320_
                                           _e161004161323_
                                           _hd161003161327_
                                           _tl161002161330_
                                           ___splice162188162189_
                                           _target161052161093_
                                           _tl161054161096_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160995161066_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160995161066_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161002161330_))
                          (let ((___splice162188162189_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161002161330_
                                    '0))))
                            (let ((_tl161054161096_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162188162189_ '1)))
                                  (_target161052161093_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162188162189_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161054161096_))
                                  (___match162294162295_
                                   _e161001161313_
                                   _hd161000161317_
                                   _tl160999161320_
                                   _e161004161323_
                                   _hd161003161327_
                                   _tl161002161330_
                                   ___splice162188162189_
                                   _target161052161093_
                                   _tl161054161096_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160995161066_)))))
                          (let () (declare (not safe)) (_g160995161066_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161005161340_))
                                                      (let ((___splice162182162183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161005161340_ '0))))
                (let ((_tl161026161249_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162182162183_ '1)))
                      (_target161024161246_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162182162183_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161026161249_))
                      (___match162254162255_
                       _e161001161313_
                       _hd161000161317_
                       _tl160999161320_
                       _e161004161323_
                       _hd161003161327_
                       _tl161002161330_
                       _e161007161333_
                       _hd161006161337_
                       _tl161005161340_
                       _e161008161343_
                       ___splice162182162183_
                       _target161024161246_
                       _tl161026161249_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161005161340_))
                          (___kont162184162185_
                           _hd161006161337_
                           _hd161003161327_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161002161330_))
                              (let ((___splice162188162189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161002161330_
                                        '0))))
                                (let ((_tl161054161096_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162188162189_
                                          '1)))
                                      (_target161052161093_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162188162189_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161054161096_))
                                      (___match162294162295_
                                       _e161001161313_
                                       _hd161000161317_
                                       _tl160999161320_
                                       _e161004161323_
                                       _hd161003161327_
                                       _tl161002161330_
                                       ___splice162188162189_
                                       _target161052161093_
                                       _tl161054161096_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160995161066_)))))
                              (let ()
                                (declare (not safe))
                                (_g160995161066_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161005161340_))
                  (___kont162184162185_ _hd161006161337_ _hd161003161327_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161002161330_))
                      (let ((___splice162188162189_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161002161330_ '0))))
                        (let ((_tl161054161096_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162188162189_ '1)))
                              (_target161052161093_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162188162189_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161054161096_))
                              (___match162294162295_
                               _e161001161313_
                               _hd161000161317_
                               _tl160999161320_
                               _e161004161323_
                               _hd161003161327_
                               _tl161002161330_
                               ___splice162188162189_
                               _target161052161093_
                               _tl161054161096_)
                              (let ()
                                (declare (not safe))
                                (_g160995161066_)))))
                      (let () (declare (not safe)) (_g160995161066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161005161340_))
                                                  (___kont162184162185_
                                                   _hd161006161337_
                                                   _hd161003161327_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161002161330_))
                                                      (let ((___splice162188162189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161002161330_ '0))))
                (let ((_tl161054161096_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162188162189_ '1)))
                      (_target161052161093_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162188162189_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161054161096_))
                      (___match162294162295_
                       _e161001161313_
                       _hd161000161317_
                       _tl160999161320_
                       _e161004161323_
                       _hd161003161327_
                       _tl161002161330_
                       ___splice162188162189_
                       _target161052161093_
                       _tl161054161096_)
                      (let () (declare (not safe)) (_g160995161066_)))))
              (let () (declare (not safe)) (_g160995161066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161005161340_))
                                            (___kont162184162185_
                                             _hd161006161337_
                                             _hd161003161327_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161002161330_))
                                                (let ((___splice162188162189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161002161330_
                                                          '0))))
                                                  (let ((_tl161054161096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162188162189_
                                                            '1)))
                                                        (_target161052161093_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162188162189_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161054161096_))
                                                        (___match162294162295_
                                                         _e161001161313_
                                                         _hd161000161317_
                                                         _tl160999161320_
                                                         _e161004161323_
                                                         _hd161003161327_
                                                         _tl161002161330_
                                                         ___splice162188162189_
                                                         _target161052161093_
                                                         _tl161054161096_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160995161066_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160995161066_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161002161330_))
                                    (let ((___splice162188162189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161002161330_
                                              '0))))
                                      (let ((_tl161054161096_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162188162189_
                                                '1)))
                                            (_target161052161093_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162188162189_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161054161096_))
                                            (___match162294162295_
                                             _e161001161313_
                                             _hd161000161317_
                                             _tl160999161320_
                                             _e161004161323_
                                             _hd161003161327_
                                             _tl161002161330_
                                             ___splice162188162189_
                                             _target161052161093_
                                             _tl161054161096_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160995161066_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160995161066_))))))
                        (let () (declare (not safe)) (_g160995161066_)))))
                (let () (declare (not safe)) (_g160995161066_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161383_)
      (let* ((___stx162297162298_ _$stx161383_)
             (_g161388161423_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162297162298_)))))
        (let ((___kont162300162301_
               (lambda (_L161545_ _L161547_)
                 (let ((__tmp162622
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162617
                        (let ((__tmp162618
                               (let ((__tmp162619
                                      (let ((__tmp162621
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162620
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161545_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162621 __tmp162620))))
                                 (declare (not safe))
                                 (cons __tmp162619 '()))))
                          (declare (not safe))
                          (cons _L161547_ __tmp162618))))
                   (declare (not safe))
                   (cons __tmp162622 __tmp162617))))
              (___kont162302162303_
               (lambda (_L161480_ _L161482_)
                 (let ((__tmp162631
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162623
                        (let ((__tmp162624
                               (let ((__tmp162625
                                      (let ((__tmp162630
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162626
                                             (let ((__tmp162627
                                                    (lambda (_g161499161502_
                                                             _g161500161505_)
                                                      (let ((__tmp162628
                                                             (let ((__tmp162629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161499161502_ __tmp162629))))
                (declare (not safe))
                (cons __tmp162628 _g161500161505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162627
                                                       '()
                                                       _L161480_))))
                                        (declare (not safe))
                                        (cons __tmp162630 __tmp162626))))
                                 (declare (not safe))
                                 (cons __tmp162625 '()))))
                          (declare (not safe))
                          (cons _L161482_ __tmp162624))))
                   (declare (not safe))
                   (cons __tmp162631 __tmp162623)))))
          (let ((___match162346162347_
                 (lambda (_e161405161430_
                          _hd161404161434_
                          _tl161403161437_
                          _e161408161440_
                          _hd161407161444_
                          _tl161406161447_
                          ___splice162304162305_
                          _target161409161450_
                          _tl161411161453_)
                   (letrec ((_loop161412161456_
                             (lambda (_hd161410161460_ _arity161416161463_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161410161460_))
                                   (let ((_e161413161466_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161410161460_))))
                                     (let ((_lp-tl161415161473_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161413161466_)))
                                           (_lp-hd161414161470_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161413161466_))))
                                       (_loop161412161456_
                                        _lp-tl161415161473_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161414161470_
                                                _arity161416161463_)))))
                                   (let ((_arity161417161476_
                                          (reverse _arity161416161463_)))
                                     (___kont162302162303_
                                      _arity161417161476_
                                      _hd161407161444_))))))
                     (_loop161412161456_ _target161409161450_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162297162298_))
                (let ((_e161394161515_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162297162298_))))
                  (let ((_tl161392161522_
                         (let () (declare (not safe)) (##cdr _e161394161515_)))
                        (_hd161393161519_
                         (let ()
                           (declare (not safe))
                           (##car _e161394161515_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161392161522_))
                        (let ((_e161397161525_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161392161522_))))
                          (let ((_tl161395161532_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161397161525_)))
                                (_hd161396161529_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161397161525_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161395161532_))
                                (let ((_e161400161535_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161395161532_))))
                                  (let ((_tl161398161542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161400161535_)))
                                        (_hd161399161539_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161400161535_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161398161542_))
                                        (___kont162300162301_
                                         _hd161399161539_
                                         _hd161396161529_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161395161532_))
                                            (let ((___splice162304162305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161395161532_
                                                      '0))))
                                              (let ((_tl161411161453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162304162305_
                                                        '1)))
                                                    (_target161409161450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162304162305_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161411161453_))
                                                    (___match162346162347_
                                                     _e161394161515_
                                                     _hd161393161519_
                                                     _tl161392161522_
                                                     _e161397161525_
                                                     _hd161396161529_
                                                     _tl161395161532_
                                                     ___splice162304162305_
                                                     _target161409161450_
                                                     _tl161411161453_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161388161423_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161388161423_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161395161532_))
                                    (let ((___splice162304162305_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161395161532_
                                              '0))))
                                      (let ((_tl161411161453_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162304162305_
                                                '1)))
                                            (_target161409161450_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162304162305_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161411161453_))
                                            (___match162346162347_
                                             _e161394161515_
                                             _hd161393161519_
                                             _tl161392161522_
                                             _e161397161525_
                                             _hd161396161529_
                                             _tl161395161532_
                                             ___splice162304162305_
                                             _target161409161450_
                                             _tl161411161453_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161388161423_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161388161423_))))))
                        (let () (declare (not safe)) (_g161388161423_)))))
                (let () (declare (not safe)) (_g161388161423_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161567_)
      (let* ((_g161571161606_
              (lambda (_g161572161602_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161572161602_))))
             (_g161570161734_
              (lambda (_g161572161610_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161572161610_))
                    (let ((_e161577161613_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161572161610_))))
                      (let ((_hd161576161617_
                             (let ()
                               (declare (not safe))
                               (##car _e161577161613_)))
                            (_tl161575161620_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161577161613_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161575161620_))
                            (let ((_g162632_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161575161620_
                                      '0))))
                              (begin
                                (let ((_g162633_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162632_)
                                             (##vector-length _g162632_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162633_ 2)))
                                      (error "Context expects 2 values"
                                             _g162633_)))
                                (let ((_target161578161623_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162632_ 0)))
                                      (_tl161580161626_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162632_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161580161626_))
                                      (letrec ((_loop161581161629_
                                                (lambda (_hd161579161633_
                                                         _arity161585161636_
                                                         _prim161586161638_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161579161633_))
                                                      (let ((_e161582161641_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161579161633_))))
                (let ((_lp-hd161583161645_
                       (let () (declare (not safe)) (##car _e161582161641_)))
                      (_lp-tl161584161648_
                       (let () (declare (not safe)) (##cdr _e161582161641_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161583161645_))
                      (let ((_e161591161651_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161583161645_))))
                        (let ((_hd161590161655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161591161651_)))
                              (_tl161589161658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161591161651_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161589161658_))
                              (let ((_g162642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161589161658_
                                        '0))))
                                (begin
                                  (let ((_g162643_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162642_)
                                               (##vector-length _g162642_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162643_ 2)))
                                        (error "Context expects 2 values"
                                               _g162643_)))
                                  (let ((_target161592161661_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162642_ 0)))
                                        (_tl161594161664_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162642_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161594161664_))
                                        (letrec ((_loop161595161667_
                                                  (lambda (_hd161593161671_
                                                           _arity161599161674_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161593161671_))
                                                        (let ((_e161596161677_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161593161671_))))
                  (let ((_lp-hd161597161681_
                         (let () (declare (not safe)) (##car _e161596161677_)))
                        (_lp-tl161598161684_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161596161677_))))
                    (_loop161595161667_
                     _lp-tl161598161684_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161597161681_ _arity161599161674_)))))
                (let ((_arity161600161687_ (reverse _arity161599161674_)))
                  (_loop161581161629_
                   _lp-tl161584161648_
                   (let ()
                     (declare (not safe))
                     (cons _arity161600161687_ _arity161585161636_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161590161655_ _prim161586161638_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161595161667_
                                           _target161592161661_
                                           '()))
                                        (_g161571161606_ _g161572161610_)))))
                              (_g161571161606_ _g161572161610_))))
                      (_g161571161606_ _g161572161610_))))
              (let ((_arity161587161691_ (reverse _arity161585161636_))
                    (_prim161588161694_ (reverse _prim161586161638_)))
                ((lambda (_L161697_ _L161699_)
                   (let ((__tmp162641
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162634
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161697_
                               _L161699_))
                            (let ((__tmp162635
                                   (lambda (_g161714161720_
                                            _g161715161723_
                                            _g161716161725_)
                                     (let ((__tmp162636
                                            (let ((__tmp162640
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162637
                                                   (let ((__tmp162638
                                                          (let ((__tmp162639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161717161728_ _g161718161731_)
                           (let ()
                             (declare (not safe))
                             (cons _g161717161728_ _g161718161731_)))))
                    (declare (not safe))
                    (foldr1 __tmp162639 '() _g161714161720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161715161723_
                                                           __tmp162638))))
                                              (declare (not safe))
                                              (cons __tmp162640 __tmp162637))))
                                       (declare (not safe))
                                       (cons __tmp162636 _g161716161725_)))))
                              (declare (not safe))
                              (foldr2 __tmp162635 '() _L161697_ _L161699_)))))
                     (declare (not safe))
                     (cons __tmp162641 __tmp162634)))
                 _arity161587161691_
                 _prim161588161694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161581161629_
                                         _target161578161623_
                                         '()
                                         '()))
                                      (_g161571161606_ _g161572161610_)))))
                            (_g161571161606_ _g161572161610_))))
                    (_g161571161606_ _g161572161610_)))))
        (_g161570161734_ _$stx161567_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161740_)
      (let* ((_g161744161779_
              (lambda (_g161745161775_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161745161775_))))
             (_g161743161907_
              (lambda (_g161745161783_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161745161783_))
                    (let ((_e161750161786_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161745161783_))))
                      (let ((_hd161749161790_
                             (let ()
                               (declare (not safe))
                               (##car _e161750161786_)))
                            (_tl161748161793_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161750161786_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161748161793_))
                            (let ((_g162644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161748161793_
                                      '0))))
                              (begin
                                (let ((_g162645_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162644_)
                                             (##vector-length _g162644_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162645_ 2)))
                                      (error "Context expects 2 values"
                                             _g162645_)))
                                (let ((_target161751161796_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162644_ 0)))
                                      (_tl161753161799_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162644_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161753161799_))
                                      (letrec ((_loop161754161802_
                                                (lambda (_hd161752161806_
                                                         _arity161758161809_
                                                         _prim161759161811_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161752161806_))
                                                      (let ((_e161755161814_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161752161806_))))
                (let ((_lp-hd161756161818_
                       (let () (declare (not safe)) (##car _e161755161814_)))
                      (_lp-tl161757161821_
                       (let () (declare (not safe)) (##cdr _e161755161814_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161756161818_))
                      (let ((_e161764161824_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161756161818_))))
                        (let ((_hd161763161828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161764161824_)))
                              (_tl161762161831_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161764161824_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161762161831_))
                              (let ((_g162654_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161762161831_
                                        '0))))
                                (begin
                                  (let ((_g162655_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162654_)
                                               (##vector-length _g162654_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162655_ 2)))
                                        (error "Context expects 2 values"
                                               _g162655_)))
                                  (let ((_target161765161834_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162654_ 0)))
                                        (_tl161767161837_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162654_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161767161837_))
                                        (letrec ((_loop161768161840_
                                                  (lambda (_hd161766161844_
                                                           _arity161772161847_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161766161844_))
                                                        (let ((_e161769161850_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161766161844_))))
                  (let ((_lp-hd161770161854_
                         (let () (declare (not safe)) (##car _e161769161850_)))
                        (_lp-tl161771161857_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161769161850_))))
                    (_loop161768161840_
                     _lp-tl161771161857_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161770161854_ _arity161772161847_)))))
                (let ((_arity161773161860_ (reverse _arity161772161847_)))
                  (_loop161754161802_
                   _lp-tl161757161821_
                   (let ()
                     (declare (not safe))
                     (cons _arity161773161860_ _arity161758161809_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161763161828_ _prim161759161811_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161768161840_
                                           _target161765161834_
                                           '()))
                                        (_g161744161779_ _g161745161783_)))))
                              (_g161744161779_ _g161745161783_))))
                      (_g161744161779_ _g161745161783_))))
              (let ((_arity161760161864_ (reverse _arity161758161809_))
                    (_prim161761161867_ (reverse _prim161759161811_)))
                ((lambda (_L161870_ _L161872_)
                   (let ((__tmp162653
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162646
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161870_
                               _L161872_))
                            (let ((__tmp162647
                                   (lambda (_g161887161893_
                                            _g161888161896_
                                            _g161889161898_)
                                     (let ((__tmp162648
                                            (let ((__tmp162652
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162649
                                                   (let ((__tmp162650
                                                          (let ((__tmp162651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161890161901_ _g161891161904_)
                           (let ()
                             (declare (not safe))
                             (cons _g161890161901_ _g161891161904_)))))
                    (declare (not safe))
                    (foldr1 __tmp162651 '() _g161887161893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161888161896_
                                                           __tmp162650))))
                                              (declare (not safe))
                                              (cons __tmp162652 __tmp162649))))
                                       (declare (not safe))
                                       (cons __tmp162648 _g161889161898_)))))
                              (declare (not safe))
                              (foldr2 __tmp162647 '() _L161870_ _L161872_)))))
                     (declare (not safe))
                     (cons __tmp162653 __tmp162646)))
                 _arity161760161864_
                 _prim161761161867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161754161802_
                                         _target161751161796_
                                         '()
                                         '()))
                                      (_g161744161779_ _g161745161783_)))))
                            (_g161744161779_ _g161745161783_))))
                    (_g161744161779_ _g161745161783_)))))
        (_g161743161907_ _$stx161740_)))))
