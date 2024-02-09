(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx284284_)
      (let* ((_g284288284306_
              (lambda (_g284289284302_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284289284302_))))
             (_g284287284361_
              (lambda (_g284289284310_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284289284310_))
                    (let ((_e284294284313_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284289284310_))))
                      (let ((_hd284293284317_
                             (let ()
                               (declare (not safe))
                               (##car _e284294284313_)))
                            (_tl284292284320_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284294284313_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284292284320_))
                            (let ((_e284297284323_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284292284320_))))
                              (let ((_hd284296284327_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284297284323_)))
                                    (_tl284295284330_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284297284323_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl284295284330_))
                                    (let ((_e284300284333_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl284295284330_))))
                                      (let ((_hd284299284337_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284300284333_)))
                                            (_tl284298284340_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284300284333_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284298284340_))
                                            ((lambda (_L284343_ _L284345_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L284345_))
                                                   (let ((__tmp292001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp291996
                                                          (let ((__tmp291998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp292000
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp291999
                                (let ()
                                  (declare (not safe))
                                  (cons _L284345_ '()))))
                           (declare (not safe))
                           (cons __tmp292000 __tmp291999)))
                        (__tmp291997
                         (let () (declare (not safe)) (cons _L284343_ '()))))
                    (declare (not safe))
                    (cons __tmp291998 __tmp291997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292001
                                                           __tmp291996))
                                                   (_g284288284306_
                                                    _g284289284310_)))
                                             _hd284299284337_
                                             _hd284296284327_)
                                            (_g284288284306_
                                             _g284289284310_))))
                                    (_g284288284306_ _g284289284310_))))
                            (_g284288284306_ _g284289284310_))))
                    (_g284288284306_ _g284289284310_)))))
        (_g284287284361_ _$stx284284_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx284365_)
      (let* ((_g284369284398_
              (lambda (_g284370284394_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284370284394_))))
             (_g284368284498_
              (lambda (_g284370284402_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284370284402_))
                    (let ((_e284375284405_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284370284402_))))
                      (let ((_hd284374284409_
                             (let ()
                               (declare (not safe))
                               (##car _e284375284405_)))
                            (_tl284373284412_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284375284405_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284373284412_))
                            (let ((_g292002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284373284412_
                                      '0))))
                              (begin
                                (let ((_g292003_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292002_)
                                             (##vector-length _g292002_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292003_ 2)))
                                      (error "Context expects 2 values"
                                             _g292003_)))
                                (let ((_target284376284415_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292002_ 0)))
                                      (_tl284378284418_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292002_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284378284418_))
                                      (letrec ((_loop284379284421_
                                                (lambda (_hd284377284425_
                                                         _type284383284428_
                                                         _symbol284384284430_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284377284425_))
                                                      (let ((_e284380284433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284377284425_))))
                (let ((_lp-hd284381284437_
                       (let () (declare (not safe)) (##car _e284380284433_)))
                      (_lp-tl284382284440_
                       (let () (declare (not safe)) (##cdr _e284380284433_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284381284437_))
                      (let ((_e284389284443_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284381284437_))))
                        (let ((_hd284388284447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284389284443_)))
                              (_tl284387284450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284389284443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284387284450_))
                              (let ((_e284392284453_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284387284450_))))
                                (let ((_hd284391284457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284392284453_)))
                                      (_tl284390284460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284392284453_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284390284460_))
                                      (_loop284379284421_
                                       _lp-tl284382284440_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284391284457_
                                               _type284383284428_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284388284447_
                                               _symbol284384284430_)))
                                      (_g284369284398_ _g284370284402_))))
                              (_g284369284398_ _g284370284402_))))
                      (_g284369284398_ _g284370284402_))))
              (let ((_type284385284463_ (reverse _type284383284428_))
                    (_symbol284386284466_ (reverse _symbol284384284430_)))
                ((lambda (_L284469_ _L284471_)
                   (let ((__tmp292010
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292004
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284469_
                               _L284471_))
                            (let ((__tmp292005
                                   (lambda (_g284486284490_
                                            _g284487284493_
                                            _g284488284495_)
                                     (let ((__tmp292006
                                            (let ((__tmp292009
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp292007
                                                   (let ((__tmp292008
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g284486284490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284487284493_
                                                           __tmp292008))))
                                              (declare (not safe))
                                              (cons __tmp292009 __tmp292007))))
                                       (declare (not safe))
                                       (cons __tmp292006 _g284488284495_)))))
                              (declare (not safe))
                              (foldr2 __tmp292005 '() _L284469_ _L284471_)))))
                     (declare (not safe))
                     (cons __tmp292010 __tmp292004)))
                 _type284385284463_
                 _symbol284386284466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284379284421_
                                         _target284376284415_
                                         '()
                                         '()))
                                      (_g284369284398_ _g284370284402_)))))
                            (_g284369284398_ _g284370284402_))))
                    (_g284369284398_ _g284370284402_)))))
        (_g284368284498_ _$stx284365_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx284503_)
      (let* ((___stx291561291562_ _$stx284503_)
             (_g284508284550_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291561291562_)))))
        (let ((___kont291564291565_
               (lambda (_L284678_ _L284680_ _L284681_ _L284682_)
                 (let ((__tmp292024
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp292011
                        (let ((__tmp292021
                               (let ((__tmp292023
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292022
                                      (let ()
                                        (declare (not safe))
                                        (cons _L284682_ '()))))
                                 (declare (not safe))
                                 (cons __tmp292023 __tmp292022)))
                              (__tmp292012
                               (let ((__tmp292018
                                      (let ((__tmp292020
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292019
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284681_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292020 __tmp292019)))
                                     (__tmp292013
                                      (let ((__tmp292015
                                             (let ((__tmp292017
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292016
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L284680_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292017 __tmp292016)))
                                            (__tmp292014
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284678_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292015 __tmp292014))))
                                 (declare (not safe))
                                 (cons __tmp292018 __tmp292013))))
                          (declare (not safe))
                          (cons __tmp292021 __tmp292012))))
                   (declare (not safe))
                   (cons __tmp292024 __tmp292011))))
              (___kont291566291567_
               (lambda (_L284597_ _L284599_ _L284600_ _L284601_)
                 (let ((__tmp292025
                        (let ((__tmp292026
                               (let ((__tmp292027
                                      (let ((__tmp292028
                                             (let ((__tmp292029
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp292029 '()))))
                                        (declare (not safe))
                                        (cons _L284597_ __tmp292028))))
                                 (declare (not safe))
                                 (cons _L284599_ __tmp292027))))
                          (declare (not safe))
                          (cons _L284600_ __tmp292026))))
                   (declare (not safe))
                   (cons _L284601_ __tmp292025)))))
          (let ((___match291600291601_
                 (lambda (_e284516284628_
                          _hd284515284632_
                          _tl284514284635_
                          _e284519284638_
                          _hd284518284642_
                          _tl284517284645_
                          _e284522284648_
                          _hd284521284652_
                          _tl284520284655_
                          _e284525284658_
                          _hd284524284662_
                          _tl284523284665_
                          _e284528284668_
                          _hd284527284672_
                          _tl284526284675_)
                   (let ((_L284678_ _hd284527284672_)
                         (_L284680_ _hd284524284662_)
                         (_L284681_ _hd284521284652_)
                         (_L284682_ _hd284518284642_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L284682_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284681_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284680_)))
                         (___kont291564291565_
                          _L284678_
                          _L284680_
                          _L284681_
                          _L284682_)
                         (let () (declare (not safe)) (_g284508284550_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291561291562_))
                (let ((_e284516284628_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291561291562_))))
                  (let ((_tl284514284635_
                         (let () (declare (not safe)) (##cdr _e284516284628_)))
                        (_hd284515284632_
                         (let ()
                           (declare (not safe))
                           (##car _e284516284628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl284514284635_))
                        (let ((_e284519284638_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl284514284635_))))
                          (let ((_tl284517284645_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284519284638_)))
                                (_hd284518284642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284519284638_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl284517284645_))
                                (let ((_e284522284648_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl284517284645_))))
                                  (let ((_tl284520284655_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e284522284648_)))
                                        (_hd284521284652_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e284522284648_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl284520284655_))
                                        (let ((_e284525284658_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl284520284655_))))
                                          (let ((_tl284523284665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284525284658_)))
                                                (_hd284524284662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284525284658_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284523284665_))
                                                (let ((_e284528284668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl284523284665_))))
                                                  (let ((_tl284526284675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284528284668_)))
                                                        (_hd284527284672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284528284668_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284526284675_))
                                                        (___match291600291601_
                                                         _e284516284628_
                                                         _hd284515284632_
                                                         _tl284514284635_
                                                         _e284519284638_
                                                         _hd284518284642_
                                                         _tl284517284645_
                                                         _e284522284648_
                                                         _hd284521284652_
                                                         _tl284520284655_
                                                         _e284525284658_
                                                         _hd284524284662_
                                                         _tl284523284665_
                                                         _e284528284668_
                                                         _hd284527284672_
                                                         _tl284526284675_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284508284550_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl284523284665_))
                                                    (___kont291566291567_
                                                     _hd284524284662_
                                                     _hd284521284652_
                                                     _hd284518284642_
                                                     _hd284515284632_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284508284550_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284508284550_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g284508284550_)))))
                        (let () (declare (not safe)) (_g284508284550_)))))
                (let () (declare (not safe)) (_g284508284550_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx284707_)
      (let* ((_g284711284746_
              (lambda (_g284712284742_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284712284742_))))
             (_g284710284865_
              (lambda (_g284712284750_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284712284750_))
                    (let ((_e284718284753_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284712284750_))))
                      (let ((_hd284717284757_
                             (let ()
                               (declare (not safe))
                               (##car _e284718284753_)))
                            (_tl284716284760_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284718284753_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284716284760_))
                            (let ((_g292030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284716284760_
                                      '0))))
                              (begin
                                (let ((_g292031_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292030_)
                                             (##vector-length _g292030_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292031_ 2)))
                                      (error "Context expects 2 values"
                                             _g292031_)))
                                (let ((_target284719284763_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292030_ 0)))
                                      (_tl284721284766_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292030_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284721284766_))
                                      (letrec ((_loop284722284769_
                                                (lambda (_hd284720284773_
                                                         _symbol284726284776_
                                                         _method284727284778_
                                                         _type-t284728284780_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284720284773_))
                                                      (let ((_e284723284783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284720284773_))))
                (let ((_lp-hd284724284787_
                       (let () (declare (not safe)) (##car _e284723284783_)))
                      (_lp-tl284725284790_
                       (let () (declare (not safe)) (##cdr _e284723284783_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284724284787_))
                      (let ((_e284734284793_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284724284787_))))
                        (let ((_hd284733284797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284734284793_)))
                              (_tl284732284800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284734284793_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284732284800_))
                              (let ((_e284737284803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284732284800_))))
                                (let ((_hd284736284807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284737284803_)))
                                      (_tl284735284810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284737284803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284735284810_))
                                      (let ((_e284740284813_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284735284810_))))
                                        (let ((_hd284739284817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284740284813_)))
                                              (_tl284738284820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284740284813_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284738284820_))
                                              (_loop284722284769_
                                               _lp-tl284725284790_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284739284817_
                                                       _symbol284726284776_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284736284807_
                                                       _method284727284778_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284733284797_
                                                       _type-t284728284780_)))
                                              (_g284711284746_
                                               _g284712284750_))))
                                      (_g284711284746_ _g284712284750_))))
                              (_g284711284746_ _g284712284750_))))
                      (_g284711284746_ _g284712284750_))))
              (let ((_symbol284729284823_ (reverse _symbol284726284776_))
                    (_method284730284826_ (reverse _method284727284778_))
                    (_type-t284731284828_ (reverse _type-t284728284780_)))
                ((lambda (_L284831_ _L284833_ _L284834_)
                   (let ((__tmp292039
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292032
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284831_
                               _L284833_
                               _L284834_))
                            (let ((__tmp292033
                                   (lambda (_g284850284855_
                                            _g284851284858_
                                            _g284852284860_
                                            _g284853284862_)
                                     (let ((__tmp292034
                                            (let ((__tmp292038
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp292035
                                                   (let ((__tmp292036
                                                          (let ((__tmp292037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g284850284855_ '()))))
                    (declare (not safe))
                    (cons _g284851284858_ __tmp292037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284852284860_
                                                           __tmp292036))))
                                              (declare (not safe))
                                              (cons __tmp292038 __tmp292035))))
                                       (declare (not safe))
                                       (cons __tmp292034 _g284853284862_)))))
                              (declare (not safe))
                              (foldr* __tmp292033
                                      '()
                                      _L284831_
                                      _L284833_
                                      _L284834_)))))
                     (declare (not safe))
                     (cons __tmp292039 __tmp292032)))
                 _symbol284729284823_
                 _method284730284826_
                 _type-t284731284828_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284722284769_
                                         _target284719284763_
                                         '()
                                         '()
                                         '()))
                                      (_g284711284746_ _g284712284750_)))))
                            (_g284711284746_ _g284712284750_))))
                    (_g284711284746_ _g284712284750_)))))
        (_g284710284865_ _$stx284707_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx284870_)
      (let* ((_g284874284907_
              (lambda (_g284875284903_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284875284903_))))
             (_g284873285021_
              (lambda (_g284875284911_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284875284911_))
                    (let ((_e284881284914_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284875284911_))))
                      (let ((_hd284880284918_
                             (let ()
                               (declare (not safe))
                               (##car _e284881284914_)))
                            (_tl284879284921_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284881284914_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284879284921_))
                            (let ((_e284884284924_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284879284921_))))
                              (let ((_hd284883284928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284884284924_)))
                                    (_tl284882284931_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284884284924_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl284882284931_))
                                    (let ((_g292040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl284882284931_
                                              '0))))
                                      (begin
                                        (let ((_g292041_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g292040_)
                                                     (##vector-length
                                                      _g292040_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g292041_ 2)))
                                              (error "Context expects 2 values"
                                                     _g292041_)))
                                        (let ((_target284885284934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g292040_ 0)))
                                              (_tl284887284937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g292040_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284887284937_))
                                              (letrec ((_loop284888284940_
                                                        (lambda (_hd284886284944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol284892284947_
                         _method284893284949_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284886284944_))
                      (let ((_e284889284952_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd284886284944_))))
                        (let ((_lp-hd284890284956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284889284952_)))
                              (_lp-tl284891284959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284889284952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd284890284956_))
                              (let ((_e284898284962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd284890284956_))))
                                (let ((_hd284897284966_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284898284962_)))
                                      (_tl284896284969_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284898284962_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284896284969_))
                                      (let ((_e284901284972_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284896284969_))))
                                        (let ((_hd284900284976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284901284972_)))
                                              (_tl284899284979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284901284972_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284899284979_))
                                              (_loop284888284940_
                                               _lp-tl284891284959_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284900284976_
                                                       _symbol284892284947_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284897284966_
                                                       _method284893284949_)))
                                              (_g284874284907_
                                               _g284875284911_))))
                                      (_g284874284907_ _g284875284911_))))
                              (_g284874284907_ _g284875284911_))))
                      (let ((_symbol284894284982_
                             (reverse _symbol284892284947_))
                            (_method284895284985_
                             (reverse _method284893284949_)))
                        ((lambda (_L284988_ _L284990_ _L284991_)
                           (let ((__tmp292049
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp292042
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L284988_
                                       _L284990_))
                                    (let ((__tmp292043
                                           (lambda (_g285009285013_
                                                    _g285010285016_
                                                    _g285011285018_)
                                             (let ((__tmp292044
                                                    (let ((__tmp292048
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp292045
                                                           (let ((__tmp292046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292047
                                 (let ()
                                   (declare (not safe))
                                   (cons _g285009285013_ '()))))
                            (declare (not safe))
                            (cons _g285010285016_ __tmp292047))))
                     (declare (not safe))
                     (cons _L284991_ __tmp292046))))
              (declare (not safe))
              (cons __tmp292048 __tmp292045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292044
                                                     _g285011285018_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp292043
                                              '()
                                              _L284988_
                                              _L284990_)))))
                             (declare (not safe))
                             (cons __tmp292049 __tmp292042)))
                         _symbol284894284982_
                         _method284895284985_
                         _hd284883284928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop284888284940_
                                                 _target284885284934_
                                                 '()
                                                 '()))
                                              (_g284874284907_
                                               _g284875284911_)))))
                                    (_g284874284907_ _g284875284911_))))
                            (_g284874284907_ _g284875284911_))))
                    (_g284874284907_ _g284875284911_)))))
        (_g284873285021_ _$stx284870_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx285026_)
      (let* ((_g285030285044_
              (lambda (_g285031285040_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285031285040_))))
             (_g285029285085_
              (lambda (_g285031285048_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285031285048_))
                    (let ((_e285035285051_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285031285048_))))
                      (let ((_hd285034285055_
                             (let ()
                               (declare (not safe))
                               (##car _e285035285051_)))
                            (_tl285033285058_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285035285051_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285033285058_))
                            (let ((_e285038285061_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285033285058_))))
                              (let ((_hd285037285065_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285038285061_)))
                                    (_tl285036285068_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285038285061_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285036285068_))
                                    ((lambda (_L285071_)
                                       (let ((__tmp292054
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp292050
                                              (let ((__tmp292051
                                                     (let ((__tmp292053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292052
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292053 __tmp292052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292051 '()))))
                                         (declare (not safe))
                                         (cons __tmp292054 __tmp292050)))
                                     _hd285037285065_)
                                    (_g285030285044_ _g285031285048_))))
                            (_g285030285044_ _g285031285048_))))
                    (_g285030285044_ _g285031285048_)))))
        (_g285029285085_ _$stx285026_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx285089_)
      (let* ((_g285093285139_
              (lambda (_g285094285135_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285094285135_))))
             (_g285092285292_
              (lambda (_g285094285143_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285094285143_))
                    (let ((_e285106285146_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285094285143_))))
                      (let ((_hd285105285150_
                             (let ()
                               (declare (not safe))
                               (##car _e285106285146_)))
                            (_tl285104285153_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285106285146_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285104285153_))
                            (let ((_e285109285156_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285104285153_))))
                              (let ((_hd285108285160_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285109285156_)))
                                    (_tl285107285163_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285109285156_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285107285163_))
                                    (let ((_e285112285166_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285107285163_))))
                                      (let ((_hd285111285170_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285112285166_)))
                                            (_tl285110285173_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285112285166_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285110285173_))
                                            (let ((_e285115285176_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285110285173_))))
                                              (let ((_hd285114285180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285115285176_)))
                                                    (_tl285113285183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285115285176_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285113285183_))
                                                    (let ((_e285118285186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285113285183_))))
                                                      (let ((_hd285117285190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285118285186_)))
                    (_tl285116285193_
                     (let () (declare (not safe)) (##cdr _e285118285186_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl285116285193_))
                    (let ((_e285121285196_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl285116285193_))))
                      (let ((_hd285120285200_
                             (let ()
                               (declare (not safe))
                               (##car _e285121285196_)))
                            (_tl285119285203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285121285196_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285119285203_))
                            (let ((_e285124285206_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285119285203_))))
                              (let ((_hd285123285210_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285124285206_)))
                                    (_tl285122285213_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285124285206_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285122285213_))
                                    (let ((_e285127285216_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285122285213_))))
                                      (let ((_hd285126285220_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285127285216_)))
                                            (_tl285125285223_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285127285216_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285125285223_))
                                            (let ((_e285130285226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285125285223_))))
                                              (let ((_hd285129285230_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285130285226_)))
                                                    (_tl285128285233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285130285226_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285128285233_))
                                                    (let ((_e285133285236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285128285233_))))
                                                      (let ((_hd285132285240_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285133285236_)))
                    (_tl285131285243_
                     (let () (declare (not safe)) (##cdr _e285133285236_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285131285243_))
                    ((lambda (_L285246_
                              _L285248_
                              _L285249_
                              _L285250_
                              _L285251_
                              _L285252_
                              _L285253_
                              _L285254_
                              _L285255_)
                       (let ((__tmp292091
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp292055
                              (let ((__tmp292088
                                     (let ((__tmp292090
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp292089
                                            (let ()
                                              (declare (not safe))
                                              (cons _L285255_ '()))))
                                       (declare (not safe))
                                       (cons __tmp292090 __tmp292089)))
                                    (__tmp292056
                                     (let ((__tmp292085
                                            (let ((__tmp292087
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp292086
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L285254_ '()))))
                                              (declare (not safe))
                                              (cons __tmp292087 __tmp292086)))
                                           (__tmp292057
                                            (let ((__tmp292082
                                                   (let ((__tmp292084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp292083
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L285253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292084
                                                           __tmp292083)))
                                                  (__tmp292058
                                                   (let ((__tmp292079
                                                          (let ((__tmp292081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp292080
                         (let () (declare (not safe)) (cons _L285252_ '()))))
                    (declare (not safe))
                    (cons __tmp292081 __tmp292080)))
                 (__tmp292059
                  (let ((__tmp292076
                         (let ((__tmp292078
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp292077
                                (let ()
                                  (declare (not safe))
                                  (cons _L285251_ '()))))
                           (declare (not safe))
                           (cons __tmp292078 __tmp292077)))
                        (__tmp292060
                         (let ((__tmp292073
                                (let ((__tmp292075
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp292074
                                       (let ()
                                         (declare (not safe))
                                         (cons _L285250_ '()))))
                                  (declare (not safe))
                                  (cons __tmp292075 __tmp292074)))
                               (__tmp292061
                                (let ((__tmp292070
                                       (let ((__tmp292072
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp292071
                                              (let ()
                                                (declare (not safe))
                                                (cons _L285249_ '()))))
                                         (declare (not safe))
                                         (cons __tmp292072 __tmp292071)))
                                      (__tmp292062
                                       (let ((__tmp292067
                                              (let ((__tmp292069
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp292068
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L285248_ '()))))
                                                (declare (not safe))
                                                (cons __tmp292069
                                                      __tmp292068)))
                                             (__tmp292063
                                              (let ((__tmp292064
                                                     (let ((__tmp292066
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292065
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292066 __tmp292065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292064 '()))))
                                         (declare (not safe))
                                         (cons __tmp292067 __tmp292063))))
                                  (declare (not safe))
                                  (cons __tmp292070 __tmp292062))))
                           (declare (not safe))
                           (cons __tmp292073 __tmp292061))))
                    (declare (not safe))
                    (cons __tmp292076 __tmp292060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292079
                                                           __tmp292059))))
                                              (declare (not safe))
                                              (cons __tmp292082 __tmp292058))))
                                       (declare (not safe))
                                       (cons __tmp292085 __tmp292057))))
                                (declare (not safe))
                                (cons __tmp292088 __tmp292056))))
                         (declare (not safe))
                         (cons __tmp292091 __tmp292055)))
                     _hd285132285240_
                     _hd285129285230_
                     _hd285126285220_
                     _hd285123285210_
                     _hd285120285200_
                     _hd285117285190_
                     _hd285114285180_
                     _hd285111285170_
                     _hd285108285160_)
                    (_g285093285139_ _g285094285143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285093285139_
                                                     _g285094285143_))))
                                            (_g285093285139_
                                             _g285094285143_))))
                                    (_g285093285139_ _g285094285143_))))
                            (_g285093285139_ _g285094285143_))))
                    (_g285093285139_ _g285094285143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285093285139_
                                                     _g285094285143_))))
                                            (_g285093285139_
                                             _g285094285143_))))
                                    (_g285093285139_ _g285094285143_))))
                            (_g285093285139_ _g285094285143_))))
                    (_g285093285139_ _g285094285143_)))))
        (_g285092285292_ _$stx285089_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx285296_)
      (let* ((_g285300285314_
              (lambda (_g285301285310_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285301285310_))))
             (_g285299285355_
              (lambda (_g285301285318_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285301285318_))
                    (let ((_e285305285321_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285301285318_))))
                      (let ((_hd285304285325_
                             (let ()
                               (declare (not safe))
                               (##car _e285305285321_)))
                            (_tl285303285328_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285305285321_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285303285328_))
                            (let ((_e285308285331_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285303285328_))))
                              (let ((_hd285307285335_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285308285331_)))
                                    (_tl285306285338_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285308285331_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285306285338_))
                                    ((lambda (_L285341_)
                                       (let ((__tmp292096
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp292092
                                              (let ((__tmp292093
                                                     (let ((__tmp292095
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292094
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292095 __tmp292094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292093 '()))))
                                         (declare (not safe))
                                         (cons __tmp292096 __tmp292092)))
                                     _hd285307285335_)
                                    (_g285300285314_ _g285301285318_))))
                            (_g285300285314_ _g285301285318_))))
                    (_g285300285314_ _g285301285318_)))))
        (_g285299285355_ _$stx285296_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx285359_)
      (let* ((_g285363285377_
              (lambda (_g285364285373_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285364285373_))))
             (_g285362285418_
              (lambda (_g285364285381_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285364285381_))
                    (let ((_e285368285384_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285364285381_))))
                      (let ((_hd285367285388_
                             (let ()
                               (declare (not safe))
                               (##car _e285368285384_)))
                            (_tl285366285391_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285368285384_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285366285391_))
                            (let ((_e285371285394_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285366285391_))))
                              (let ((_hd285370285398_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285371285394_)))
                                    (_tl285369285401_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285371285394_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285369285401_))
                                    ((lambda (_L285404_)
                                       (let ((__tmp292101
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp292097
                                              (let ((__tmp292098
                                                     (let ((__tmp292100
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292099
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292100 __tmp292099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292098 '()))))
                                         (declare (not safe))
                                         (cons __tmp292101 __tmp292097)))
                                     _hd285370285398_)
                                    (_g285363285377_ _g285364285381_))))
                            (_g285363285377_ _g285364285381_))))
                    (_g285363285377_ _g285364285381_)))))
        (_g285362285418_ _$stx285359_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx285422_)
      (let* ((_g285426285448_
              (lambda (_g285427285444_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285427285444_))))
             (_g285425285517_
              (lambda (_g285427285452_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285427285452_))
                    (let ((_e285433285455_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285427285452_))))
                      (let ((_hd285432285459_
                             (let ()
                               (declare (not safe))
                               (##car _e285433285455_)))
                            (_tl285431285462_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285433285455_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285431285462_))
                            (let ((_e285436285465_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285431285462_))))
                              (let ((_hd285435285469_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285436285465_)))
                                    (_tl285434285472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285436285465_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285434285472_))
                                    (let ((_e285439285475_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285434285472_))))
                                      (let ((_hd285438285479_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285439285475_)))
                                            (_tl285437285482_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285439285475_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285437285482_))
                                            (let ((_e285442285485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285437285482_))))
                                              (let ((_hd285441285489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285442285485_)))
                                                    (_tl285440285492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285442285485_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285440285492_))
                                                    ((lambda (_L285495_
                                                              _L285497_
                                                              _L285498_)
                                                       (let ((__tmp292111
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp292102
                      (let ((__tmp292108
                             (let ((__tmp292110
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292109
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285498_ '()))))
                               (declare (not safe))
                               (cons __tmp292110 __tmp292109)))
                            (__tmp292103
                             (let ((__tmp292105
                                    (let ((__tmp292107
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292106
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285497_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292107 __tmp292106)))
                                   (__tmp292104
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285495_ '()))))
                               (declare (not safe))
                               (cons __tmp292105 __tmp292104))))
                        (declare (not safe))
                        (cons __tmp292108 __tmp292103))))
                 (declare (not safe))
                 (cons __tmp292111 __tmp292102)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285441285489_
                                                     _hd285438285479_
                                                     _hd285435285469_)
                                                    (_g285426285448_
                                                     _g285427285452_))))
                                            (_g285426285448_
                                             _g285427285452_))))
                                    (_g285426285448_ _g285427285452_))))
                            (_g285426285448_ _g285427285452_))))
                    (_g285426285448_ _g285427285452_)))))
        (_g285425285517_ _$stx285422_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx285521_)
      (let* ((_g285525285547_
              (lambda (_g285526285543_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285526285543_))))
             (_g285524285616_
              (lambda (_g285526285551_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285526285551_))
                    (let ((_e285532285554_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285526285551_))))
                      (let ((_hd285531285558_
                             (let ()
                               (declare (not safe))
                               (##car _e285532285554_)))
                            (_tl285530285561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285532285554_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285530285561_))
                            (let ((_e285535285564_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285530285561_))))
                              (let ((_hd285534285568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285535285564_)))
                                    (_tl285533285571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285535285564_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285533285571_))
                                    (let ((_e285538285574_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285533285571_))))
                                      (let ((_hd285537285578_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285538285574_)))
                                            (_tl285536285581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285538285574_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285536285581_))
                                            (let ((_e285541285584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285536285581_))))
                                              (let ((_hd285540285588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285541285584_)))
                                                    (_tl285539285591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285541285584_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285539285591_))
                                                    ((lambda (_L285594_
                                                              _L285596_
                                                              _L285597_)
                                                       (let ((__tmp292121
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp292112
                      (let ((__tmp292118
                             (let ((__tmp292120
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292119
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285597_ '()))))
                               (declare (not safe))
                               (cons __tmp292120 __tmp292119)))
                            (__tmp292113
                             (let ((__tmp292115
                                    (let ((__tmp292117
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292116
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285596_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292117 __tmp292116)))
                                   (__tmp292114
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285594_ '()))))
                               (declare (not safe))
                               (cons __tmp292115 __tmp292114))))
                        (declare (not safe))
                        (cons __tmp292118 __tmp292113))))
                 (declare (not safe))
                 (cons __tmp292121 __tmp292112)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285540285588_
                                                     _hd285537285578_
                                                     _hd285534285568_)
                                                    (_g285525285547_
                                                     _g285526285551_))))
                                            (_g285525285547_
                                             _g285526285551_))))
                                    (_g285525285547_ _g285526285551_))))
                            (_g285525285547_ _g285526285551_))))
                    (_g285525285547_ _g285526285551_)))))
        (_g285524285616_ _$stx285521_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx285620_)
      (let* ((___stx291629291630_ _$stx285620_)
             (_g285628285696_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291629291630_)))))
        (let ((___kont291632291633_
               (lambda (_L285974_ _L285976_)
                 (let ((__tmp292137
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292122
                        (let ((__tmp292133
                               (let ((__tmp292136
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292134
                                      (let ((__tmp292135
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292135 '()))))
                                 (declare (not safe))
                                 (cons __tmp292136 __tmp292134)))
                              (__tmp292123
                               (let ((__tmp292130
                                      (let ((__tmp292132
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292131
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285976_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292132 __tmp292131)))
                                     (__tmp292124
                                      (let ((__tmp292125
                                             (let ((__tmp292126
                                                    (let ((__tmp292127
                                                           (let ((__tmp292129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp292128
                          (let () (declare (not safe)) (cons _L285974_ '()))))
                     (declare (not safe))
                     (cons __tmp292129 __tmp292128))))
              (declare (not safe))
              (cons __tmp292127 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L285974_ __tmp292126))))
                                        (declare (not safe))
                                        (cons '#f __tmp292125))))
                                 (declare (not safe))
                                 (cons __tmp292130 __tmp292124))))
                          (declare (not safe))
                          (cons __tmp292133 __tmp292123))))
                   (declare (not safe))
                   (cons __tmp292137 __tmp292122))))
              (___kont291634291635_
               (lambda (_L285905_ _L285907_)
                 (let ((__tmp292138
                        (let ((__tmp292139
                               (let ((__tmp292140
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L285905_ __tmp292140))))
                          (declare (not safe))
                          (cons 'primitive: __tmp292139))))
                   (declare (not safe))
                   (cons _L285907_ __tmp292138))))
              (___kont291636291637_
               (lambda (_L285844_ _L285846_)
                 (let ((__tmp292154
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp292141
                        (let ((__tmp292150
                               (let ((__tmp292153
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292151
                                      (let ((__tmp292152
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292152 '()))))
                                 (declare (not safe))
                                 (cons __tmp292153 __tmp292151)))
                              (__tmp292142
                               (let ((__tmp292147
                                      (let ((__tmp292149
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292148
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285846_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292149 __tmp292148)))
                                     (__tmp292143
                                      (let ((__tmp292144
                                             (let ((__tmp292146
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292145
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285844_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292146
                                                     __tmp292145))))
                                        (declare (not safe))
                                        (cons __tmp292144 '()))))
                                 (declare (not safe))
                                 (cons __tmp292147 __tmp292143))))
                          (declare (not safe))
                          (cons __tmp292150 __tmp292142))))
                   (declare (not safe))
                   (cons __tmp292154 __tmp292141))))
              (___kont291638291639_
               (lambda (_L285776_ _L285778_)
                 (let ((__tmp292168
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292155
                        (let ((__tmp292164
                               (let ((__tmp292167
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292165
                                      (let ((__tmp292166
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292166 '()))))
                                 (declare (not safe))
                                 (cons __tmp292167 __tmp292165)))
                              (__tmp292156
                               (let ((__tmp292161
                                      (let ((__tmp292163
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292162
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285778_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292163 __tmp292162)))
                                     (__tmp292157
                                      (let ((__tmp292158
                                             (let ((__tmp292160
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292159
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285776_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292160
                                                     __tmp292159))))
                                        (declare (not safe))
                                        (cons __tmp292158 '()))))
                                 (declare (not safe))
                                 (cons __tmp292161 __tmp292157))))
                          (declare (not safe))
                          (cons __tmp292164 __tmp292156))))
                   (declare (not safe))
                   (cons __tmp292168 __tmp292155))))
              (___kont291640291641_
               (lambda (_L285723_ _L285725_)
                 (let ((__tmp292169
                        (let ((__tmp292170
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L285723_ __tmp292170))))
                   (declare (not safe))
                   (cons _L285725_ __tmp292169)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx291629291630_))
              (let ((_e285634285930_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx291629291630_))))
                (let ((_tl285632285937_
                       (let () (declare (not safe)) (##cdr _e285634285930_)))
                      (_hd285633285934_
                       (let () (declare (not safe)) (##car _e285634285930_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl285632285937_))
                      (let ((_e285637285940_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285632285937_))))
                        (let ((_tl285635285947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285637285940_)))
                              (_hd285636285944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285637285940_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285635285947_))
                              (let ((_e285640285950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl285635285947_))))
                                (let ((_tl285638285957_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285640285950_)))
                                      (_hd285639285954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285640285950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd285639285954_))
                                      (let ((_e285641285960_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd285639285954_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e285641285960_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285638285957_))
                                                (let ((_e285644285964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl285638285957_))))
                                                  (let ((_tl285642285971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285644285964_)))
                                                        (_hd285643285968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285644285964_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285642285971_))
                                                        (___kont291632291633_
                                                         _hd285643285968_
                                                         _hd285636285944_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd285636285944_))
                                                            (let ((_e285653285891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd285636285944_))))
                      (declare (not safe))
                      (_g285628285696_))
                    (let () (declare (not safe)) (_g285628285696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd285636285944_))
                                                    (let ((_e285653285891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd285636285944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e285653285891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285638285957_))
                      (___kont291634291635_ _hd285639285954_ _hd285633285934_)
                      (let () (declare (not safe)) (_g285628285696_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285638285957_))
                      (___kont291638291639_ _hd285639285954_ _hd285636285944_)
                      (let () (declare (not safe)) (_g285628285696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285638285957_))
                                                        (___kont291638291639_
                                                         _hd285639285954_
                                                         _hd285636285944_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g285628285696_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd285636285944_))
                                                (let ((_e285653285891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd285636285944_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e285653285891_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285638285957_))
                                                          (___kont291634291635_
                                                           _hd285639285954_
                                                           _hd285633285934_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285638285957_))
                      (let ((_e285671285834_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285638285957_))))
                        (let ((_tl285669285841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285671285834_)))
                              (_hd285670285838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285671285834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl285669285841_))
                              (___kont291636291637_
                               _hd285670285838_
                               _hd285639285954_)
                              (let ()
                                (declare (not safe))
                                (_g285628285696_)))))
                      (let () (declare (not safe)) (_g285628285696_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl285638285957_))
                  (___kont291638291639_ _hd285639285954_ _hd285636285944_)
                  (let () (declare (not safe)) (_g285628285696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285638285957_))
                                                    (___kont291638291639_
                                                     _hd285639285954_
                                                     _hd285636285944_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285628285696_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd285636285944_))
                                          (let ((_e285653285891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd285636285944_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e285653285891_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285638285957_))
                                                    (___kont291634291635_
                                                     _hd285639285954_
                                                     _hd285633285934_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl285638285957_))
                                                        (let ((_e285671285834_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl285638285957_))))
                  (let ((_tl285669285841_
                         (let () (declare (not safe)) (##cdr _e285671285834_)))
                        (_hd285670285838_
                         (let ()
                           (declare (not safe))
                           (##car _e285671285834_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl285669285841_))
                        (___kont291636291637_
                         _hd285670285838_
                         _hd285639285954_)
                        (let () (declare (not safe)) (_g285628285696_)))))
                (let () (declare (not safe)) (_g285628285696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285638285957_))
                                                    (___kont291638291639_
                                                     _hd285639285954_
                                                     _hd285636285944_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285628285696_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285638285957_))
                                              (___kont291638291639_
                                               _hd285639285954_
                                               _hd285636285944_)
                                              (let ()
                                                (declare (not safe))
                                                (_g285628285696_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd285636285944_))
                                  (let ((_e285653285891_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285636285944_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl285635285947_))
                                        (___kont291640291641_
                                         _hd285636285944_
                                         _hd285633285934_)
                                        (let ()
                                          (declare (not safe))
                                          (_g285628285696_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl285635285947_))
                                      (___kont291640291641_
                                       _hd285636285944_
                                       _hd285633285934_)
                                      (let ()
                                        (declare (not safe))
                                        (_g285628285696_)))))))
                      (let () (declare (not safe)) (_g285628285696_)))))
              (let () (declare (not safe)) (_g285628285696_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx285998_)
      (let* ((___stx291769291770_ _$stx285998_)
             (_g286003286058_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291769291770_)))))
        (let ((___kont291772291773_
               (lambda (_L286243_ _L286245_)
                 (let ((__tmp292186
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp292171
                        (let ((__tmp292182
                               (let ((__tmp292185
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292183
                                      (let ((__tmp292184
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292184 '()))))
                                 (declare (not safe))
                                 (cons __tmp292185 __tmp292183)))
                              (__tmp292172
                               (let ((__tmp292173
                                      (let ((__tmp292181
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292174
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286243_
                                                  _L286245_))
                                               (let ((__tmp292175
                                                      (lambda (_g286262286266_
                                                               _g286263286269_
                                                               _g286264286271_)
                                                        (let ((__tmp292176
                                                               (let ((__tmp292180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292177
                              (let ((__tmp292178
                                     (let ((__tmp292179
                                            (let ()
                                              (declare (not safe))
                                              (cons _g286262286266_ '()))))
                                       (declare (not safe))
                                       (cons _g286263286269_ __tmp292179))))
                                (declare (not safe))
                                (cons 'primitive: __tmp292178))))
                         (declare (not safe))
                         (cons __tmp292180 __tmp292177))))
                  (declare (not safe))
                  (cons __tmp292176 _g286264286271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292175
                                                         '()
                                                         _L286243_
                                                         _L286245_)))))
                                        (declare (not safe))
                                        (cons __tmp292181 __tmp292174))))
                                 (declare (not safe))
                                 (cons __tmp292173 '()))))
                          (declare (not safe))
                          (cons __tmp292182 __tmp292172))))
                   (declare (not safe))
                   (cons __tmp292186 __tmp292171))))
              (___kont291776291777_
               (lambda (_L286129_ _L286131_)
                 (let ((__tmp292201
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp292187
                        (let ((__tmp292197
                               (let ((__tmp292200
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292198
                                      (let ((__tmp292199
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292199 '()))))
                                 (declare (not safe))
                                 (cons __tmp292200 __tmp292198)))
                              (__tmp292188
                               (let ((__tmp292189
                                      (let ((__tmp292196
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292190
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286129_
                                                  _L286131_))
                                               (let ((__tmp292191
                                                      (lambda (_g286146286150_
                                                               _g286147286153_
                                                               _g286148286155_)
                                                        (let ((__tmp292192
                                                               (let ((__tmp292195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292193
                              (let ((__tmp292194
                                     (let ()
                                       (declare (not safe))
                                       (cons _g286146286150_ '()))))
                                (declare (not safe))
                                (cons _g286147286153_ __tmp292194))))
                         (declare (not safe))
                         (cons __tmp292195 __tmp292193))))
                  (declare (not safe))
                  (cons __tmp292192 _g286148286155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292191
                                                         '()
                                                         _L286129_
                                                         _L286131_)))))
                                        (declare (not safe))
                                        (cons __tmp292196 __tmp292190))))
                                 (declare (not safe))
                                 (cons __tmp292189 '()))))
                          (declare (not safe))
                          (cons __tmp292197 __tmp292188))))
                   (declare (not safe))
                   (cons __tmp292201 __tmp292187)))))
          (let* ((___match291820291821_
                  (lambda (_e286035286065_
                           _hd286034286069_
                           _tl286033286072_
                           ___splice291778291779_
                           _target286036286075_
                           _tl286038286078_)
                    (letrec ((_loop286039286081_
                              (lambda (_hd286037286085_
                                       _dispatch286043286088_
                                       _arity286044286090_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286037286085_))
                                    (let ((_e286040286093_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286037286085_))))
                                      (let ((_lp-tl286042286100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286040286093_)))
                                            (_lp-hd286041286097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286040286093_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd286041286097_))
                                            (let ((_e286049286103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd286041286097_))))
                                              (let ((_tl286047286110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e286049286103_)))
                                                    (_hd286048286107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e286049286103_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl286047286110_))
                                                    (let ((_e286052286113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl286047286110_))))
                                                      (let ((_tl286050286120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e286052286113_)))
                    (_hd286051286117_
                     (let () (declare (not safe)) (##car _e286052286113_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286050286120_))
                    (_loop286039286081_
                     _lp-tl286042286100_
                     (let ()
                       (declare (not safe))
                       (cons _hd286051286117_ _dispatch286043286088_))
                     (let ()
                       (declare (not safe))
                       (cons _hd286048286107_ _arity286044286090_)))
                    (let () (declare (not safe)) (_g286003286058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286003286058_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g286003286058_)))))
                                    (let ((_arity286046286126_
                                           (reverse _arity286044286090_))
                                          (_dispatch286045286123_
                                           (reverse _dispatch286043286088_)))
                                      (___kont291776291777_
                                       _dispatch286045286123_
                                       _arity286046286126_))))))
                      (_loop286039286081_ _target286036286075_ '() '()))))
                 (___match291812291813_
                  (lambda (_e286035286065_ _hd286034286069_ _tl286033286072_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl286033286072_))
                        (let ((___splice291778291779_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl286033286072_
                                  '0))))
                          (let ((_tl286038286078_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291778291779_ '1)))
                                (_target286036286075_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291778291779_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl286038286078_))
                                (___match291820291821_
                                 _e286035286065_
                                 _hd286034286069_
                                 _tl286033286072_
                                 ___splice291778291779_
                                 _target286036286075_
                                 _tl286038286078_)
                                (let ()
                                  (declare (not safe))
                                  (_g286003286058_)))))
                        (let () (declare (not safe)) (_g286003286058_)))))
                 (___match291806291807_
                  (lambda (_e286009286165_
                           _hd286008286169_
                           _tl286007286172_
                           _e286012286175_
                           _hd286011286179_
                           _tl286010286182_
                           _e286013286185_
                           ___splice291774291775_
                           _target286014286189_
                           _tl286016286192_)
                    (letrec ((_loop286017286195_
                              (lambda (_hd286015286199_
                                       _dispatch286021286202_
                                       _arity286022286204_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286015286199_))
                                    (let ((_e286018286207_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286015286199_))))
                                      (let ((_lp-tl286020286214_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286018286207_)))
                                            (_lp-hd286019286211_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286018286207_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd286019286211_))
                                            (let ((_e286027286217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd286019286211_))))
                                              (let ((_tl286025286224_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e286027286217_)))
                                                    (_hd286026286221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e286027286217_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl286025286224_))
                                                    (let ((_e286030286227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl286025286224_))))
                                                      (let ((_tl286028286234_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e286030286227_)))
                    (_hd286029286231_
                     (let () (declare (not safe)) (##car _e286030286227_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286028286234_))
                    (_loop286017286195_
                     _lp-tl286020286214_
                     (let ()
                       (declare (not safe))
                       (cons _hd286029286231_ _dispatch286021286202_))
                     (let ()
                       (declare (not safe))
                       (cons _hd286026286221_ _arity286022286204_)))
                    (___match291812291813_
                     _e286009286165_
                     _hd286008286169_
                     _tl286007286172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match291812291813_
                                                     _e286009286165_
                                                     _hd286008286169_
                                                     _tl286007286172_))))
                                            (___match291812291813_
                                             _e286009286165_
                                             _hd286008286169_
                                             _tl286007286172_))))
                                    (let ((_arity286024286240_
                                           (reverse _arity286022286204_))
                                          (_dispatch286023286237_
                                           (reverse _dispatch286021286202_)))
                                      (___kont291772291773_
                                       _dispatch286023286237_
                                       _arity286024286240_))))))
                      (_loop286017286195_ _target286014286189_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291769291770_))
                (let ((_e286009286165_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291769291770_))))
                  (let ((_tl286007286172_
                         (let () (declare (not safe)) (##cdr _e286009286165_)))
                        (_hd286008286169_
                         (let ()
                           (declare (not safe))
                           (##car _e286009286165_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286007286172_))
                        (let ((_e286012286175_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286007286172_))))
                          (let ((_tl286010286182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286012286175_)))
                                (_hd286011286179_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286012286175_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd286011286179_))
                                (let ((_e286013286185_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd286011286179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e286013286185_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl286010286182_))
                                          (let ((___splice291774291775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl286010286182_
                                                    '0))))
                                            (let ((_tl286016286192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291774291775_
                                                      '1)))
                                                  (_target286014286189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291774291775_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286016286192_))
                                                  (___match291806291807_
                                                   _e286009286165_
                                                   _hd286008286169_
                                                   _tl286007286172_
                                                   _e286012286175_
                                                   _hd286011286179_
                                                   _tl286010286182_
                                                   _e286013286185_
                                                   ___splice291774291775_
                                                   _target286014286189_
                                                   _tl286016286192_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286007286172_))
                                                      (let ((___splice291778291779_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286007286172_ '0))))
                (let ((_tl286038286078_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291778291779_ '1)))
                      (_target286036286075_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291778291779_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286038286078_))
                      (___match291820291821_
                       _e286009286165_
                       _hd286008286169_
                       _tl286007286172_
                       ___splice291778291779_
                       _target286036286075_
                       _tl286038286078_)
                      (let () (declare (not safe)) (_g286003286058_)))))
              (let () (declare (not safe)) (_g286003286058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl286007286172_))
                                              (let ((___splice291778291779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl286007286172_
                                                        '0))))
                                                (let ((_tl286038286078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291778291779_
                                                          '1)))
                                                      (_target286036286075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291778291779_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl286038286078_))
                                                      (___match291820291821_
                                                       _e286009286165_
                                                       _hd286008286169_
                                                       _tl286007286172_
                                                       ___splice291778291779_
                                                       _target286036286075_
                                                       _tl286038286078_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g286003286058_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g286003286058_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl286007286172_))
                                          (let ((___splice291778291779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl286007286172_
                                                    '0))))
                                            (let ((_tl286038286078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291778291779_
                                                      '1)))
                                                  (_target286036286075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291778291779_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286038286078_))
                                                  (___match291820291821_
                                                   _e286009286165_
                                                   _hd286008286169_
                                                   _tl286007286172_
                                                   ___splice291778291779_
                                                   _target286036286075_
                                                   _tl286038286078_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g286003286058_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g286003286058_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286007286172_))
                                    (let ((___splice291778291779_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286007286172_
                                              '0))))
                                      (let ((_tl286038286078_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291778291779_
                                                '1)))
                                            (_target286036286075_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291778291779_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286038286078_))
                                            (___match291820291821_
                                             _e286009286165_
                                             _hd286008286169_
                                             _tl286007286172_
                                             ___splice291778291779_
                                             _target286036286075_
                                             _tl286038286078_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286003286058_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286003286058_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl286007286172_))
                            (let ((___splice291778291779_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl286007286172_
                                      '0))))
                              (let ((_tl286038286078_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291778291779_
                                        '1)))
                                    (_target286036286075_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291778291779_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl286038286078_))
                                    (___match291820291821_
                                     _e286009286165_
                                     _hd286008286169_
                                     _tl286007286172_
                                     ___splice291778291779_
                                     _target286036286075_
                                     _tl286038286078_)
                                    (let ()
                                      (declare (not safe))
                                      (_g286003286058_)))))
                            (let () (declare (not safe)) (_g286003286058_))))))
                (let () (declare (not safe)) (_g286003286058_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx286280_)
      (let* ((_g286284286302_
              (lambda (_g286285286298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286285286298_))))
             (_g286283286357_
              (lambda (_g286285286306_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286285286306_))
                    (let ((_e286290286309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286285286306_))))
                      (let ((_hd286289286313_
                             (let ()
                               (declare (not safe))
                               (##car _e286290286309_)))
                            (_tl286288286316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286290286309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286288286316_))
                            (let ((_e286293286319_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286288286316_))))
                              (let ((_hd286292286323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286293286319_)))
                                    (_tl286291286326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286293286319_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286291286326_))
                                    (let ((_e286296286329_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286291286326_))))
                                      (let ((_hd286295286333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286296286329_)))
                                            (_tl286294286336_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286296286329_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286294286336_))
                                            ((lambda (_L286339_ _L286341_)
                                               (let ((__tmp292215
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp292202
                                                      (let ((__tmp292211
                                                             (let ((__tmp292214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292212
                            (let ((__tmp292213
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp292213 '()))))
                       (declare (not safe))
                       (cons __tmp292214 __tmp292212)))
                    (__tmp292203
                     (let ((__tmp292208
                            (let ((__tmp292210
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292209
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286341_ '()))))
                              (declare (not safe))
                              (cons __tmp292210 __tmp292209)))
                           (__tmp292204
                            (let ((__tmp292205
                                   (let ((__tmp292207
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292206
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286339_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292207 __tmp292206))))
                              (declare (not safe))
                              (cons __tmp292205 '()))))
                       (declare (not safe))
                       (cons __tmp292208 __tmp292204))))
                (declare (not safe))
                (cons __tmp292211 __tmp292203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292215
                                                       __tmp292202)))
                                             _hd286295286333_
                                             _hd286292286323_)
                                            (_g286284286302_
                                             _g286285286306_))))
                                    (_g286284286302_ _g286285286306_))))
                            (_g286284286302_ _g286285286306_))))
                    (_g286284286302_ _g286285286306_)))))
        (_g286283286357_ _$stx286280_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx286361_)
      (let* ((_g286365286383_
              (lambda (_g286366286379_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286366286379_))))
             (_g286364286438_
              (lambda (_g286366286387_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286366286387_))
                    (let ((_e286371286390_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286366286387_))))
                      (let ((_hd286370286394_
                             (let ()
                               (declare (not safe))
                               (##car _e286371286390_)))
                            (_tl286369286397_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286371286390_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286369286397_))
                            (let ((_e286374286400_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286369286397_))))
                              (let ((_hd286373286404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286374286400_)))
                                    (_tl286372286407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286374286400_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286372286407_))
                                    (let ((_e286377286410_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286372286407_))))
                                      (let ((_hd286376286414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286377286410_)))
                                            (_tl286375286417_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286377286410_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286375286417_))
                                            ((lambda (_L286420_ _L286422_)
                                               (let ((__tmp292229
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp292216
                                                      (let ((__tmp292225
                                                             (let ((__tmp292228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292226
                            (let ((__tmp292227
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp292227 '()))))
                       (declare (not safe))
                       (cons __tmp292228 __tmp292226)))
                    (__tmp292217
                     (let ((__tmp292222
                            (let ((__tmp292224
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292223
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286422_ '()))))
                              (declare (not safe))
                              (cons __tmp292224 __tmp292223)))
                           (__tmp292218
                            (let ((__tmp292219
                                   (let ((__tmp292221
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292220
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286420_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292221 __tmp292220))))
                              (declare (not safe))
                              (cons __tmp292219 '()))))
                       (declare (not safe))
                       (cons __tmp292222 __tmp292218))))
                (declare (not safe))
                (cons __tmp292225 __tmp292217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292229
                                                       __tmp292216)))
                                             _hd286376286414_
                                             _hd286373286404_)
                                            (_g286365286383_
                                             _g286366286387_))))
                                    (_g286365286383_ _g286366286387_))))
                            (_g286365286383_ _g286366286387_))))
                    (_g286365286383_ _g286366286387_)))))
        (_g286364286438_ _$stx286361_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx286442_)
      (let* ((___stx291823291824_ _$stx286442_)
             (_g286449286520_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291823291824_)))))
        (let ((___kont291826291827_
               (lambda (_L286811_ _L286813_)
                 (let ((__tmp292235
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292230
                        (let ((__tmp292231
                               (let ((__tmp292232
                                      (let ((__tmp292234
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292233
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286811_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292234 __tmp292233))))
                                 (declare (not safe))
                                 (cons __tmp292232 '()))))
                          (declare (not safe))
                          (cons _L286813_ __tmp292231))))
                   (declare (not safe))
                   (cons __tmp292235 __tmp292230))))
              (___kont291828291829_
               (lambda (_L286730_ _L286732_)
                 (let ((__tmp292244
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292236
                        (let ((__tmp292237
                               (let ((__tmp292238
                                      (let ((__tmp292243
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292239
                                             (let ((__tmp292240
                                                    (lambda (_g286751286754_
                                                             _g286752286757_)
                                                      (let ((__tmp292241
                                                             (let ((__tmp292242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286751286754_ __tmp292242))))
                (declare (not safe))
                (cons __tmp292241 _g286752286757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292240
                                                       '()
                                                       _L286730_))))
                                        (declare (not safe))
                                        (cons __tmp292243 __tmp292239))))
                                 (declare (not safe))
                                 (cons __tmp292238 '()))))
                          (declare (not safe))
                          (cons _L286732_ __tmp292237))))
                   (declare (not safe))
                   (cons __tmp292244 __tmp292236))))
              (___kont291832291833_
               (lambda (_L286642_ _L286644_)
                 (let ((__tmp292251
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292245
                        (let ((__tmp292246
                               (let ((__tmp292247
                                      (let ((__tmp292250
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292248
                                             (let ((__tmp292249
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L286642_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292249))))
                                        (declare (not safe))
                                        (cons __tmp292250 __tmp292248))))
                                 (declare (not safe))
                                 (cons __tmp292247 '()))))
                          (declare (not safe))
                          (cons _L286644_ __tmp292246))))
                   (declare (not safe))
                   (cons __tmp292251 __tmp292245))))
              (___kont291834291835_
               (lambda (_L286577_ _L286579_)
                 (let ((__tmp292261
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292252
                        (let ((__tmp292253
                               (let ((__tmp292254
                                      (let ((__tmp292260
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292255
                                             (let ((__tmp292256
                                                    (let ((__tmp292257
                                                           (lambda (_g286596286599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g286597286602_)
                     (let ((__tmp292258
                            (let ((__tmp292259
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g286596286599_ __tmp292259))))
                       (declare (not safe))
                       (cons __tmp292258 _g286597286602_)))))
              (declare (not safe))
              (foldr1 __tmp292257 '() _L286577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292256))))
                                        (declare (not safe))
                                        (cons __tmp292260 __tmp292255))))
                                 (declare (not safe))
                                 (cons __tmp292254 '()))))
                          (declare (not safe))
                          (cons _L286579_ __tmp292253))))
                   (declare (not safe))
                   (cons __tmp292261 __tmp292252)))))
          (let* ((___match291942291943_
                  (lambda (_e286502286527_
                           _hd286501286531_
                           _tl286500286534_
                           _e286505286537_
                           _hd286504286541_
                           _tl286503286544_
                           ___splice291836291837_
                           _target286506286547_
                           _tl286508286550_)
                    (letrec ((_loop286509286553_
                              (lambda (_hd286507286557_ _arity286513286560_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286507286557_))
                                    (let ((_e286510286563_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286507286557_))))
                                      (let ((_lp-tl286512286570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286510286563_)))
                                            (_lp-hd286511286567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286510286563_))))
                                        (_loop286509286553_
                                         _lp-tl286512286570_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286511286567_
                                                 _arity286513286560_)))))
                                    (let ((_arity286514286573_
                                           (reverse _arity286513286560_)))
                                      (___kont291834291835_
                                       _arity286514286573_
                                       _hd286504286541_))))))
                      (_loop286509286553_ _target286506286547_ '()))))
                 (___match291902291903_
                  (lambda (_e286470286666_
                           _hd286469286670_
                           _tl286468286673_
                           _e286473286676_
                           _hd286472286680_
                           _tl286471286683_
                           _e286476286686_
                           _hd286475286690_
                           _tl286474286693_
                           _e286477286696_
                           ___splice291830291831_
                           _target286478286700_
                           _tl286480286703_)
                    (letrec ((_loop286481286706_
                              (lambda (_hd286479286710_ _arity286485286713_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286479286710_))
                                    (let ((_e286482286716_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286479286710_))))
                                      (let ((_lp-tl286484286723_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286482286716_)))
                                            (_lp-hd286483286720_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286482286716_))))
                                        (_loop286481286706_
                                         _lp-tl286484286723_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286483286720_
                                                 _arity286485286713_)))))
                                    (let ((_arity286486286726_
                                           (reverse _arity286485286713_)))
                                      (___kont291828291829_
                                       _arity286486286726_
                                       _hd286472286680_))))))
                      (_loop286481286706_ _target286478286700_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291823291824_))
                (let ((_e286455286767_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291823291824_))))
                  (let ((_tl286453286774_
                         (let () (declare (not safe)) (##cdr _e286455286767_)))
                        (_hd286454286771_
                         (let ()
                           (declare (not safe))
                           (##car _e286455286767_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286453286774_))
                        (let ((_e286458286777_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286453286774_))))
                          (let ((_tl286456286784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286458286777_)))
                                (_hd286457286781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286458286777_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286456286784_))
                                (let ((_e286461286787_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286456286784_))))
                                  (let ((_tl286459286794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286461286787_)))
                                        (_hd286460286791_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286461286787_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd286460286791_))
                                        (let ((_e286462286797_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd286460286791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e286462286797_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl286459286794_))
                                                  (let ((_e286465286801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl286459286794_))))
                                                    (let ((_tl286463286808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e286465286801_)))
                                                          (_hd286464286805_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e286465286801_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl286463286808_))
                                                          (___kont291826291827_
                                                           _hd286464286805_
                                                           _hd286457286781_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl286459286794_))
                      (let ((___splice291830291831_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286459286794_ '0))))
                        (let ((_tl286480286703_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291830291831_ '1)))
                              (_target286478286700_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291830291831_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286480286703_))
                              (___match291902291903_
                               _e286455286767_
                               _hd286454286771_
                               _tl286453286774_
                               _e286458286777_
                               _hd286457286781_
                               _tl286456286784_
                               _e286461286787_
                               _hd286460286791_
                               _tl286459286794_
                               _e286462286797_
                               ___splice291830291831_
                               _target286478286700_
                               _tl286480286703_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl286456286784_))
                                  (let ((___splice291836291837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl286456286784_
                                            '0))))
                                    (let ((_tl286508286550_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291836291837_
                                              '1)))
                                          (_target286506286547_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291836291837_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl286508286550_))
                                          (___match291942291943_
                                           _e286455286767_
                                           _hd286454286771_
                                           _tl286453286774_
                                           _e286458286777_
                                           _hd286457286781_
                                           _tl286456286784_
                                           ___splice291836291837_
                                           _target286506286547_
                                           _tl286508286550_)
                                          (let ()
                                            (declare (not safe))
                                            (_g286449286520_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g286449286520_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl286456286784_))
                          (let ((___splice291836291837_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl286456286784_
                                    '0))))
                            (let ((_tl286508286550_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice291836291837_ '1)))
                                  (_target286506286547_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice291836291837_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl286508286550_))
                                  (___match291942291943_
                                   _e286455286767_
                                   _hd286454286771_
                                   _tl286453286774_
                                   _e286458286777_
                                   _hd286457286781_
                                   _tl286456286784_
                                   ___splice291836291837_
                                   _target286506286547_
                                   _tl286508286550_)
                                  (let ()
                                    (declare (not safe))
                                    (_g286449286520_)))))
                          (let () (declare (not safe)) (_g286449286520_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286459286794_))
                                                      (let ((___splice291830291831_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286459286794_ '0))))
                (let ((_tl286480286703_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291830291831_ '1)))
                      (_target286478286700_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291830291831_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286480286703_))
                      (___match291902291903_
                       _e286455286767_
                       _hd286454286771_
                       _tl286453286774_
                       _e286458286777_
                       _hd286457286781_
                       _tl286456286784_
                       _e286461286787_
                       _hd286460286791_
                       _tl286459286794_
                       _e286462286797_
                       ___splice291830291831_
                       _target286478286700_
                       _tl286480286703_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl286459286794_))
                          (___kont291832291833_
                           _hd286460286791_
                           _hd286457286781_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl286456286784_))
                              (let ((___splice291836291837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl286456286784_
                                        '0))))
                                (let ((_tl286508286550_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291836291837_
                                          '1)))
                                      (_target286506286547_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291836291837_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl286508286550_))
                                      (___match291942291943_
                                       _e286455286767_
                                       _hd286454286771_
                                       _tl286453286774_
                                       _e286458286777_
                                       _hd286457286781_
                                       _tl286456286784_
                                       ___splice291836291837_
                                       _target286506286547_
                                       _tl286508286550_)
                                      (let ()
                                        (declare (not safe))
                                        (_g286449286520_)))))
                              (let ()
                                (declare (not safe))
                                (_g286449286520_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl286459286794_))
                  (___kont291832291833_ _hd286460286791_ _hd286457286781_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl286456286784_))
                      (let ((___splice291836291837_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286456286784_ '0))))
                        (let ((_tl286508286550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291836291837_ '1)))
                              (_target286506286547_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291836291837_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286508286550_))
                              (___match291942291943_
                               _e286455286767_
                               _hd286454286771_
                               _tl286453286774_
                               _e286458286777_
                               _hd286457286781_
                               _tl286456286784_
                               ___splice291836291837_
                               _target286506286547_
                               _tl286508286550_)
                              (let ()
                                (declare (not safe))
                                (_g286449286520_)))))
                      (let () (declare (not safe)) (_g286449286520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286459286794_))
                                                  (___kont291832291833_
                                                   _hd286460286791_
                                                   _hd286457286781_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286456286784_))
                                                      (let ((___splice291836291837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286456286784_ '0))))
                (let ((_tl286508286550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291836291837_ '1)))
                      (_target286506286547_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291836291837_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286508286550_))
                      (___match291942291943_
                       _e286455286767_
                       _hd286454286771_
                       _tl286453286774_
                       _e286458286777_
                       _hd286457286781_
                       _tl286456286784_
                       ___splice291836291837_
                       _target286506286547_
                       _tl286508286550_)
                      (let () (declare (not safe)) (_g286449286520_)))))
              (let () (declare (not safe)) (_g286449286520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286459286794_))
                                            (___kont291832291833_
                                             _hd286460286791_
                                             _hd286457286781_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl286456286784_))
                                                (let ((___splice291836291837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl286456286784_
                                                          '0))))
                                                  (let ((_tl286508286550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291836291837_
                                                            '1)))
                                                        (_target286506286547_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291836291837_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286508286550_))
                                                        (___match291942291943_
                                                         _e286455286767_
                                                         _hd286454286771_
                                                         _tl286453286774_
                                                         _e286458286777_
                                                         _hd286457286781_
                                                         _tl286456286784_
                                                         ___splice291836291837_
                                                         _target286506286547_
                                                         _tl286508286550_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286449286520_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286449286520_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286456286784_))
                                    (let ((___splice291836291837_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286456286784_
                                              '0))))
                                      (let ((_tl286508286550_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291836291837_
                                                '1)))
                                            (_target286506286547_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291836291837_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286508286550_))
                                            (___match291942291943_
                                             _e286455286767_
                                             _hd286454286771_
                                             _tl286453286774_
                                             _e286458286777_
                                             _hd286457286781_
                                             _tl286456286784_
                                             ___splice291836291837_
                                             _target286506286547_
                                             _tl286508286550_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286449286520_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286449286520_))))))
                        (let () (declare (not safe)) (_g286449286520_)))))
                (let () (declare (not safe)) (_g286449286520_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx286837_)
      (let* ((___stx291945291946_ _$stx286837_)
             (_g286842286877_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291945291946_)))))
        (let ((___kont291948291949_
               (lambda (_L286999_ _L287001_)
                 (let ((__tmp292267
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292262
                        (let ((__tmp292263
                               (let ((__tmp292264
                                      (let ((__tmp292266
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292265
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286999_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292266 __tmp292265))))
                                 (declare (not safe))
                                 (cons __tmp292264 '()))))
                          (declare (not safe))
                          (cons _L287001_ __tmp292263))))
                   (declare (not safe))
                   (cons __tmp292267 __tmp292262))))
              (___kont291950291951_
               (lambda (_L286934_ _L286936_)
                 (let ((__tmp292276
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292268
                        (let ((__tmp292269
                               (let ((__tmp292270
                                      (let ((__tmp292275
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292271
                                             (let ((__tmp292272
                                                    (lambda (_g286953286956_
                                                             _g286954286959_)
                                                      (let ((__tmp292273
                                                             (let ((__tmp292274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286953286956_ __tmp292274))))
                (declare (not safe))
                (cons __tmp292273 _g286954286959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292272
                                                       '()
                                                       _L286934_))))
                                        (declare (not safe))
                                        (cons __tmp292275 __tmp292271))))
                                 (declare (not safe))
                                 (cons __tmp292270 '()))))
                          (declare (not safe))
                          (cons _L286936_ __tmp292269))))
                   (declare (not safe))
                   (cons __tmp292276 __tmp292268)))))
          (let ((___match291994291995_
                 (lambda (_e286859286884_
                          _hd286858286888_
                          _tl286857286891_
                          _e286862286894_
                          _hd286861286898_
                          _tl286860286901_
                          ___splice291952291953_
                          _target286863286904_
                          _tl286865286907_)
                   (letrec ((_loop286866286910_
                             (lambda (_hd286864286914_ _arity286870286917_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd286864286914_))
                                   (let ((_e286867286920_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd286864286914_))))
                                     (let ((_lp-tl286869286927_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e286867286920_)))
                                           (_lp-hd286868286924_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e286867286920_))))
                                       (_loop286866286910_
                                        _lp-tl286869286927_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd286868286924_
                                                _arity286870286917_)))))
                                   (let ((_arity286871286930_
                                          (reverse _arity286870286917_)))
                                     (___kont291950291951_
                                      _arity286871286930_
                                      _hd286861286898_))))))
                     (_loop286866286910_ _target286863286904_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291945291946_))
                (let ((_e286848286969_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291945291946_))))
                  (let ((_tl286846286976_
                         (let () (declare (not safe)) (##cdr _e286848286969_)))
                        (_hd286847286973_
                         (let ()
                           (declare (not safe))
                           (##car _e286848286969_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286846286976_))
                        (let ((_e286851286979_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286846286976_))))
                          (let ((_tl286849286986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286851286979_)))
                                (_hd286850286983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286851286979_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286849286986_))
                                (let ((_e286854286989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286849286986_))))
                                  (let ((_tl286852286996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286854286989_)))
                                        (_hd286853286993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286854286989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl286852286996_))
                                        (___kont291948291949_
                                         _hd286853286993_
                                         _hd286850286983_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl286849286986_))
                                            (let ((___splice291952291953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl286849286986_
                                                      '0))))
                                              (let ((_tl286865286907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291952291953_
                                                        '1)))
                                                    (_target286863286904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291952291953_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl286865286907_))
                                                    (___match291994291995_
                                                     _e286848286969_
                                                     _hd286847286973_
                                                     _tl286846286976_
                                                     _e286851286979_
                                                     _hd286850286983_
                                                     _tl286849286986_
                                                     ___splice291952291953_
                                                     _target286863286904_
                                                     _tl286865286907_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286842286877_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g286842286877_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286849286986_))
                                    (let ((___splice291952291953_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286849286986_
                                              '0))))
                                      (let ((_tl286865286907_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291952291953_
                                                '1)))
                                            (_target286863286904_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291952291953_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286865286907_))
                                            (___match291994291995_
                                             _e286848286969_
                                             _hd286847286973_
                                             _tl286846286976_
                                             _e286851286979_
                                             _hd286850286983_
                                             _tl286849286986_
                                             ___splice291952291953_
                                             _target286863286904_
                                             _tl286865286907_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286842286877_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286842286877_))))))
                        (let () (declare (not safe)) (_g286842286877_)))))
                (let () (declare (not safe)) (_g286842286877_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx287021_)
      (let* ((_g287025287060_
              (lambda (_g287026287056_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287026287056_))))
             (_g287024287188_
              (lambda (_g287026287064_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287026287064_))
                    (let ((_e287031287067_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287026287064_))))
                      (let ((_hd287030287071_
                             (let ()
                               (declare (not safe))
                               (##car _e287031287067_)))
                            (_tl287029287074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287031287067_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287029287074_))
                            (let ((_g292277_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287029287074_
                                      '0))))
                              (begin
                                (let ((_g292278_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292277_)
                                             (##vector-length _g292277_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292278_ 2)))
                                      (error "Context expects 2 values"
                                             _g292278_)))
                                (let ((_target287032287077_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292277_ 0)))
                                      (_tl287034287080_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292277_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287034287080_))
                                      (letrec ((_loop287035287083_
                                                (lambda (_hd287033287087_
                                                         _arity287039287090_
                                                         _prim287040287092_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287033287087_))
                                                      (let ((_e287036287095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287033287087_))))
                (let ((_lp-hd287037287099_
                       (let () (declare (not safe)) (##car _e287036287095_)))
                      (_lp-tl287038287102_
                       (let () (declare (not safe)) (##cdr _e287036287095_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287037287099_))
                      (let ((_e287045287105_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287037287099_))))
                        (let ((_hd287044287109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287045287105_)))
                              (_tl287043287112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287045287105_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl287043287112_))
                              (let ((_g292287_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl287043287112_
                                        '0))))
                                (begin
                                  (let ((_g292288_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292287_)
                                               (##vector-length _g292287_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292288_ 2)))
                                        (error "Context expects 2 values"
                                               _g292288_)))
                                  (let ((_target287046287115_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292287_ 0)))
                                        (_tl287048287118_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292287_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl287048287118_))
                                        (letrec ((_loop287049287121_
                                                  (lambda (_hd287047287125_
                                                           _arity287053287128_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd287047287125_))
                                                        (let ((_e287050287131_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd287047287125_))))
                  (let ((_lp-hd287051287135_
                         (let () (declare (not safe)) (##car _e287050287131_)))
                        (_lp-tl287052287138_
                         (let ()
                           (declare (not safe))
                           (##cdr _e287050287131_))))
                    (_loop287049287121_
                     _lp-tl287052287138_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd287051287135_ _arity287053287128_)))))
                (let ((_arity287054287141_ (reverse _arity287053287128_)))
                  (_loop287035287083_
                   _lp-tl287038287102_
                   (let ()
                     (declare (not safe))
                     (cons _arity287054287141_ _arity287039287090_))
                   (let ()
                     (declare (not safe))
                     (cons _hd287044287109_ _prim287040287092_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop287049287121_
                                           _target287046287115_
                                           '()))
                                        (_g287025287060_ _g287026287064_)))))
                              (_g287025287060_ _g287026287064_))))
                      (_g287025287060_ _g287026287064_))))
              (let ((_arity287041287145_ (reverse _arity287039287090_))
                    (_prim287042287148_ (reverse _prim287040287092_)))
                ((lambda (_L287151_ _L287153_)
                   (let ((__tmp292286
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292279
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287151_
                               _L287153_))
                            (let ((__tmp292280
                                   (lambda (_g287168287174_
                                            _g287169287177_
                                            _g287170287179_)
                                     (let ((__tmp292281
                                            (let ((__tmp292285
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp292282
                                                   (let ((__tmp292283
                                                          (let ((__tmp292284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287171287182_ _g287172287185_)
                           (let ()
                             (declare (not safe))
                             (cons _g287171287182_ _g287172287185_)))))
                    (declare (not safe))
                    (foldr1 __tmp292284 '() _g287168287174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287169287177_
                                                           __tmp292283))))
                                              (declare (not safe))
                                              (cons __tmp292285 __tmp292282))))
                                       (declare (not safe))
                                       (cons __tmp292281 _g287170287179_)))))
                              (declare (not safe))
                              (foldr2 __tmp292280 '() _L287151_ _L287153_)))))
                     (declare (not safe))
                     (cons __tmp292286 __tmp292279)))
                 _arity287041287145_
                 _prim287042287148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287035287083_
                                         _target287032287077_
                                         '()
                                         '()))
                                      (_g287025287060_ _g287026287064_)))))
                            (_g287025287060_ _g287026287064_))))
                    (_g287025287060_ _g287026287064_)))))
        (_g287024287188_ _$stx287021_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx287194_)
      (let* ((_g287198287233_
              (lambda (_g287199287229_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287199287229_))))
             (_g287197287361_
              (lambda (_g287199287237_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287199287237_))
                    (let ((_e287204287240_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287199287237_))))
                      (let ((_hd287203287244_
                             (let ()
                               (declare (not safe))
                               (##car _e287204287240_)))
                            (_tl287202287247_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287204287240_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287202287247_))
                            (let ((_g292289_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287202287247_
                                      '0))))
                              (begin
                                (let ((_g292290_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292289_)
                                             (##vector-length _g292289_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292290_ 2)))
                                      (error "Context expects 2 values"
                                             _g292290_)))
                                (let ((_target287205287250_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292289_ 0)))
                                      (_tl287207287253_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292289_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287207287253_))
                                      (letrec ((_loop287208287256_
                                                (lambda (_hd287206287260_
                                                         _arity287212287263_
                                                         _prim287213287265_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287206287260_))
                                                      (let ((_e287209287268_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287206287260_))))
                (let ((_lp-hd287210287272_
                       (let () (declare (not safe)) (##car _e287209287268_)))
                      (_lp-tl287211287275_
                       (let () (declare (not safe)) (##cdr _e287209287268_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287210287272_))
                      (let ((_e287218287278_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287210287272_))))
                        (let ((_hd287217287282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287218287278_)))
                              (_tl287216287285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287218287278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl287216287285_))
                              (let ((_g292299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl287216287285_
                                        '0))))
                                (begin
                                  (let ((_g292300_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292299_)
                                               (##vector-length _g292299_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292300_ 2)))
                                        (error "Context expects 2 values"
                                               _g292300_)))
                                  (let ((_target287219287288_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292299_ 0)))
                                        (_tl287221287291_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292299_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl287221287291_))
                                        (letrec ((_loop287222287294_
                                                  (lambda (_hd287220287298_
                                                           _arity287226287301_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd287220287298_))
                                                        (let ((_e287223287304_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd287220287298_))))
                  (let ((_lp-hd287224287308_
                         (let () (declare (not safe)) (##car _e287223287304_)))
                        (_lp-tl287225287311_
                         (let ()
                           (declare (not safe))
                           (##cdr _e287223287304_))))
                    (_loop287222287294_
                     _lp-tl287225287311_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd287224287308_ _arity287226287301_)))))
                (let ((_arity287227287314_ (reverse _arity287226287301_)))
                  (_loop287208287256_
                   _lp-tl287211287275_
                   (let ()
                     (declare (not safe))
                     (cons _arity287227287314_ _arity287212287263_))
                   (let ()
                     (declare (not safe))
                     (cons _hd287217287282_ _prim287213287265_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop287222287294_
                                           _target287219287288_
                                           '()))
                                        (_g287198287233_ _g287199287237_)))))
                              (_g287198287233_ _g287199287237_))))
                      (_g287198287233_ _g287199287237_))))
              (let ((_arity287214287318_ (reverse _arity287212287263_))
                    (_prim287215287321_ (reverse _prim287213287265_)))
                ((lambda (_L287324_ _L287326_)
                   (let ((__tmp292298
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292291
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287324_
                               _L287326_))
                            (let ((__tmp292292
                                   (lambda (_g287341287347_
                                            _g287342287350_
                                            _g287343287352_)
                                     (let ((__tmp292293
                                            (let ((__tmp292297
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp292294
                                                   (let ((__tmp292295
                                                          (let ((__tmp292296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287344287355_ _g287345287358_)
                           (let ()
                             (declare (not safe))
                             (cons _g287344287355_ _g287345287358_)))))
                    (declare (not safe))
                    (foldr1 __tmp292296 '() _g287341287347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287342287350_
                                                           __tmp292295))))
                                              (declare (not safe))
                                              (cons __tmp292297 __tmp292294))))
                                       (declare (not safe))
                                       (cons __tmp292293 _g287343287352_)))))
                              (declare (not safe))
                              (foldr2 __tmp292292 '() _L287324_ _L287326_)))))
                     (declare (not safe))
                     (cons __tmp292298 __tmp292291)))
                 _arity287214287318_
                 _prim287215287321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287208287256_
                                         _target287205287250_
                                         '()
                                         '()))
                                      (_g287198287233_ _g287199287237_)))))
                            (_g287198287233_ _g287199287237_))))
                    (_g287198287233_ _g287199287237_)))))
        (_g287197287361_ _$stx287194_)))))
