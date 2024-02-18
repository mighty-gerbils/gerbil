(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx234952_)
      (let* ((_g234956234985_
              (lambda (_g234957234981_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g234957234981_))))
             (_g234955235086_
              (lambda (_g234957234989_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g234957234989_))
                    (let ((_e234962234992_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g234957234989_))))
                      (let ((_hd234961234996_
                             (let ()
                               (declare (not safe))
                               (##car _e234962234992_)))
                            (_tl234960234999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e234962234992_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl234960234999_))
                            (let ((_g249962_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl234960234999_
                                      '0))))
                              (begin
                                (let ((_g249963_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g249962_)
                                             (##vector-length _g249962_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g249963_ 2)))
                                      (error "Context expects 2 values"
                                             _g249963_)))
                                (let ((_target234963235002_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g249962_ 0)))
                                      (_tl234965235005_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g249962_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234965235005_))
                                      (letrec ((_loop234966235008_
                                                (lambda (_hd234964235012_
                                                         _type-e234970235015_
                                                         _id234971235017_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234964235012_))
                                                      (let ((_e234967235020_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd234964235012_))))
                (let ((_lp-hd234968235024_
                       (let () (declare (not safe)) (##car _e234967235020_)))
                      (_lp-tl234969235027_
                       (let () (declare (not safe)) (##cdr _e234967235020_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd234968235024_))
                      (let ((_e234976235030_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd234968235024_))))
                        (let ((_hd234975235034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234976235030_)))
                              (_tl234974235037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234976235030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234974235037_))
                              (let ((_e234979235040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl234974235037_))))
                                (let ((_hd234978235044_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234979235040_)))
                                      (_tl234977235047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234979235040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234977235047_))
                                      (_loop234966235008_
                                       _lp-tl234969235027_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234978235044_
                                               _type-e234970235015_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd234975235034_
                                               _id234971235017_)))
                                      (_g234956234985_ _g234957234989_))))
                              (_g234956234985_ _g234957234989_))))
                      (_g234956234985_ _g234957234989_))))
              (let ((_type-e234972235050_ (reverse _type-e234970235015_))
                    (_id234973235053_ (reverse _id234971235017_)))
                ((lambda (_L235056_ _L235058_)
                   (let ((__tmp249975
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp249964
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L235056_
                               _L235058_))
                            (let ((__tmp249965
                                   (lambda (_g235074235078_
                                            _g235075235081_
                                            _g235076235083_)
                                     (let ((__tmp249966
                                            (let ((__tmp249974
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp249967
                                                   (let ((__tmp249973
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp249968
                                                          (let ((__tmp249970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249972
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp249971
                                (let ()
                                  (declare (not safe))
                                  (cons _g235075235081_ '()))))
                           (declare (not safe))
                           (cons __tmp249972 __tmp249971)))
                        (__tmp249969
                         (let ()
                           (declare (not safe))
                           (cons _g235074235078_ '()))))
                    (declare (not safe))
                    (cons __tmp249970 __tmp249969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249973
                                                           __tmp249968))))
                                              (declare (not safe))
                                              (cons __tmp249974 __tmp249967))))
                                       (declare (not safe))
                                       (cons __tmp249966 _g235076235083_)))))
                              (declare (not safe))
                              (foldr2 __tmp249965 '() _L235056_ _L235058_)))))
                     (declare (not safe))
                     (cons __tmp249975 __tmp249964)))
                 _type-e234972235050_
                 _id234973235053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop234966235008_
                                         _target234963235002_
                                         '()
                                         '()))
                                      (_g234956234985_ _g234957234989_)))))
                            (_g234956234985_ _g234957234989_))))
                    (_g234956234985_ _g234957234989_)))))
        (_g234955235086_ _$stx234952_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx235091_)
      (let* ((_g235095235124_
              (lambda (_g235096235120_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g235096235120_))))
             (_g235094235224_
              (lambda (_g235096235128_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g235096235128_))
                    (let ((_e235101235131_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g235096235128_))))
                      (let ((_hd235100235135_
                             (let ()
                               (declare (not safe))
                               (##car _e235101235131_)))
                            (_tl235099235138_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235101235131_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl235099235138_))
                            (let ((_g249976_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl235099235138_
                                      '0))))
                              (begin
                                (let ((_g249977_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g249976_)
                                             (##vector-length _g249976_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g249977_ 2)))
                                      (error "Context expects 2 values"
                                             _g249977_)))
                                (let ((_target235102235141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g249976_ 0)))
                                      (_tl235104235144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g249976_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235104235144_))
                                      (letrec ((_loop235105235147_
                                                (lambda (_hd235103235151_
                                                         _type-e235109235154_
                                                         _id235110235156_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235103235151_))
                                                      (let ((_e235106235159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd235103235151_))))
                (let ((_lp-hd235107235163_
                       (let () (declare (not safe)) (##car _e235106235159_)))
                      (_lp-tl235108235166_
                       (let () (declare (not safe)) (##cdr _e235106235159_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd235107235163_))
                      (let ((_e235115235169_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd235107235163_))))
                        (let ((_hd235114235173_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235115235169_)))
                              (_tl235113235176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235115235169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235113235176_))
                              (let ((_e235118235179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl235113235176_))))
                                (let ((_hd235117235183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235118235179_)))
                                      (_tl235116235186_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235118235179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235116235186_))
                                      (_loop235105235147_
                                       _lp-tl235108235166_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235117235183_
                                               _type-e235109235154_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd235114235173_
                                               _id235110235156_)))
                                      (_g235095235124_ _g235096235128_))))
                              (_g235095235124_ _g235096235128_))))
                      (_g235095235124_ _g235096235128_))))
              (let ((_type-e235111235189_ (reverse _type-e235109235154_))
                    (_id235112235192_ (reverse _id235110235156_)))
                ((lambda (_L235195_ _L235197_)
                   (let ((__tmp249989
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp249978
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L235195_
                               _L235197_))
                            (let ((__tmp249979
                                   (lambda (_g235212235216_
                                            _g235213235219_
                                            _g235214235221_)
                                     (let ((__tmp249980
                                            (let ((__tmp249988
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp249981
                                                   (let ((__tmp249987
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp249982
                                                          (let ((__tmp249984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249986
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp249985
                                (let ()
                                  (declare (not safe))
                                  (cons _g235213235219_ '()))))
                           (declare (not safe))
                           (cons __tmp249986 __tmp249985)))
                        (__tmp249983
                         (let ()
                           (declare (not safe))
                           (cons _g235212235216_ '()))))
                    (declare (not safe))
                    (cons __tmp249984 __tmp249983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp249987
                                                           __tmp249982))))
                                              (declare (not safe))
                                              (cons __tmp249988 __tmp249981))))
                                       (declare (not safe))
                                       (cons __tmp249980 _g235214235221_)))))
                              (declare (not safe))
                              (foldr2 __tmp249979 '() _L235195_ _L235197_)))))
                     (declare (not safe))
                     (cons __tmp249989 __tmp249978)))
                 _type-e235111235189_
                 _id235112235192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop235105235147_
                                         _target235102235141_
                                         '()
                                         '()))
                                      (_g235095235124_ _g235096235128_)))))
                            (_g235095235124_ _g235096235128_))))
                    (_g235095235124_ _g235096235128_)))))
        (_g235094235224_ _$stx235091_)))))
