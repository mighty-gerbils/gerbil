(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx300688_)
      (let* ((_g300692300710_
              (lambda (_g300693300706_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300693300706_))))
             (_g300691300765_
              (lambda (_g300693300714_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300693300714_))
                    (let ((_e300698300717_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300693300714_))))
                      (let ((_hd300697300721_
                             (let ()
                               (declare (not safe))
                               (##car _e300698300717_)))
                            (_tl300696300724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300698300717_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300696300724_))
                            (let ((_e300701300727_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300696300724_))))
                              (let ((_hd300700300731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300701300727_)))
                                    (_tl300699300734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300701300727_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300699300734_))
                                    (let ((_e300704300737_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300699300734_))))
                                      (let ((_hd300703300741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300704300737_)))
                                            (_tl300702300744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300704300737_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300702300744_))
                                            ((lambda (_L300747_ _L300749_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L300749_))
                                                   (let ((__tmp308296
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp308291
                                                          (let ((__tmp308293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp308295
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp308294
                                (let ()
                                  (declare (not safe))
                                  (cons _L300749_ '()))))
                           (declare (not safe))
                           (cons __tmp308295 __tmp308294)))
                        (__tmp308292
                         (let () (declare (not safe)) (cons _L300747_ '()))))
                    (declare (not safe))
                    (cons __tmp308293 __tmp308292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp308296
                                                           __tmp308291))
                                                   (_g300692300710_
                                                    _g300693300714_)))
                                             _hd300703300741_
                                             _hd300700300731_)
                                            (_g300692300710_
                                             _g300693300714_))))
                                    (_g300692300710_ _g300693300714_))))
                            (_g300692300710_ _g300693300714_))))
                    (_g300692300710_ _g300693300714_)))))
        (_g300691300765_ _$stx300688_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx300769_)
      (let* ((_g300773300802_
              (lambda (_g300774300798_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300774300798_))))
             (_g300772300902_
              (lambda (_g300774300806_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300774300806_))
                    (let ((_e300779300809_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300774300806_))))
                      (let ((_hd300778300813_
                             (let ()
                               (declare (not safe))
                               (##car _e300779300809_)))
                            (_tl300777300816_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300779300809_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300777300816_))
                            (let ((_g308297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300777300816_
                                      '0))))
                              (begin
                                (let ((_g308298_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308297_)
                                             (##vector-length _g308297_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308298_ 2)))
                                      (error "Context expects 2 values"
                                             _g308298_)))
                                (let ((_target300780300819_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308297_ 0)))
                                      (_tl300782300822_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308297_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300782300822_))
                                      (letrec ((_loop300783300825_
                                                (lambda (_hd300781300829_
                                                         _type300787300832_
                                                         _symbol300788300834_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300781300829_))
                                                      (let ((_e300784300837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300781300829_))))
                (let ((_lp-hd300785300841_
                       (let () (declare (not safe)) (##car _e300784300837_)))
                      (_lp-tl300786300844_
                       (let () (declare (not safe)) (##cdr _e300784300837_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300785300841_))
                      (let ((_e300793300847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300785300841_))))
                        (let ((_hd300792300851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300793300847_)))
                              (_tl300791300854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300793300847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl300791300854_))
                              (let ((_e300796300857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl300791300854_))))
                                (let ((_hd300795300861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e300796300857_)))
                                      (_tl300794300864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e300796300857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300794300864_))
                                      (_loop300783300825_
                                       _lp-tl300786300844_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd300795300861_
                                               _type300787300832_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd300792300851_
                                               _symbol300788300834_)))
                                      (_g300773300802_ _g300774300806_))))
                              (_g300773300802_ _g300774300806_))))
                      (_g300773300802_ _g300774300806_))))
              (let ((_type300789300867_ (reverse _type300787300832_))
                    (_symbol300790300870_ (reverse _symbol300788300834_)))
                ((lambda (_L300873_ _L300875_)
                   (let ((__tmp308305
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308299
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L300873_
                               _L300875_))
                            (let ((__tmp308300
                                   (lambda (_g300890300894_
                                            _g300891300897_
                                            _g300892300899_)
                                     (let ((__tmp308301
                                            (let ((__tmp308304
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp308302
                                                   (let ((__tmp308303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g300890300894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g300891300897_
                                                           __tmp308303))))
                                              (declare (not safe))
                                              (cons __tmp308304 __tmp308302))))
                                       (declare (not safe))
                                       (cons __tmp308301 _g300892300899_)))))
                              (declare (not safe))
                              (foldr2 __tmp308300 '() _L300873_ _L300875_)))))
                     (declare (not safe))
                     (cons __tmp308305 __tmp308299)))
                 _type300789300867_
                 _symbol300790300870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300783300825_
                                         _target300780300819_
                                         '()
                                         '()))
                                      (_g300773300802_ _g300774300806_)))))
                            (_g300773300802_ _g300774300806_))))
                    (_g300773300802_ _g300774300806_)))))
        (_g300772300902_ _$stx300769_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx300907_)
      (let* ((___stx307856307857_ _$stx300907_)
             (_g300912300954_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307856307857_)))))
        (let ((___kont307859307860_
               (lambda (_L301082_ _L301084_ _L301085_ _L301086_)
                 (let ((__tmp308319
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp308306
                        (let ((__tmp308316
                               (let ((__tmp308318
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308317
                                      (let ()
                                        (declare (not safe))
                                        (cons _L301086_ '()))))
                                 (declare (not safe))
                                 (cons __tmp308318 __tmp308317)))
                              (__tmp308307
                               (let ((__tmp308313
                                      (let ((__tmp308315
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp308314
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301085_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308315 __tmp308314)))
                                     (__tmp308308
                                      (let ((__tmp308310
                                             (let ((__tmp308312
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp308311
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301084_ '()))))
                                               (declare (not safe))
                                               (cons __tmp308312 __tmp308311)))
                                            (__tmp308309
                                             (let ()
                                               (declare (not safe))
                                               (cons _L301082_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308310 __tmp308309))))
                                 (declare (not safe))
                                 (cons __tmp308313 __tmp308308))))
                          (declare (not safe))
                          (cons __tmp308316 __tmp308307))))
                   (declare (not safe))
                   (cons __tmp308319 __tmp308306))))
              (___kont307861307862_
               (lambda (_L301001_ _L301003_ _L301004_ _L301005_)
                 (let ((__tmp308320
                        (let ((__tmp308321
                               (let ((__tmp308322
                                      (let ((__tmp308323
                                             (let ((__tmp308324
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp308324 '()))))
                                        (declare (not safe))
                                        (cons _L301001_ __tmp308323))))
                                 (declare (not safe))
                                 (cons _L301003_ __tmp308322))))
                          (declare (not safe))
                          (cons _L301004_ __tmp308321))))
                   (declare (not safe))
                   (cons _L301005_ __tmp308320)))))
          (let ((___match307895307896_
                 (lambda (_e300920301032_
                          _hd300919301036_
                          _tl300918301039_
                          _e300923301042_
                          _hd300922301046_
                          _tl300921301049_
                          _e300926301052_
                          _hd300925301056_
                          _tl300924301059_
                          _e300929301062_
                          _hd300928301066_
                          _tl300927301069_
                          _e300932301072_
                          _hd300931301076_
                          _tl300930301079_)
                   (let ((_L301082_ _hd300931301076_)
                         (_L301084_ _hd300928301066_)
                         (_L301085_ _hd300925301056_)
                         (_L301086_ _hd300922301046_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L301086_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L301085_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L301084_)))
                         (___kont307859307860_
                          _L301082_
                          _L301084_
                          _L301085_
                          _L301086_)
                         (let () (declare (not safe)) (_g300912300954_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx307856307857_))
                (let ((_e300920301032_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx307856307857_))))
                  (let ((_tl300918301039_
                         (let () (declare (not safe)) (##cdr _e300920301032_)))
                        (_hd300919301036_
                         (let ()
                           (declare (not safe))
                           (##car _e300920301032_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300918301039_))
                        (let ((_e300923301042_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300918301039_))))
                          (let ((_tl300921301049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300923301042_)))
                                (_hd300922301046_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300923301042_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300921301049_))
                                (let ((_e300926301052_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300921301049_))))
                                  (let ((_tl300924301059_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300926301052_)))
                                        (_hd300925301056_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300926301052_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl300924301059_))
                                        (let ((_e300929301062_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl300924301059_))))
                                          (let ((_tl300927301069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e300929301062_)))
                                                (_hd300928301066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e300929301062_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl300927301069_))
                                                (let ((_e300932301072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl300927301069_))))
                                                  (let ((_tl300930301079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e300932301072_)))
                                                        (_hd300931301076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e300932301072_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300930301079_))
                                                        (___match307895307896_
                                                         _e300920301032_
                                                         _hd300919301036_
                                                         _tl300918301039_
                                                         _e300923301042_
                                                         _hd300922301046_
                                                         _tl300921301049_
                                                         _e300926301052_
                                                         _hd300925301056_
                                                         _tl300924301059_
                                                         _e300929301062_
                                                         _hd300928301066_
                                                         _tl300927301069_
                                                         _e300932301072_
                                                         _hd300931301076_
                                                         _tl300930301079_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300912300954_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300927301069_))
                                                    (___kont307861307862_
                                                     _hd300928301066_
                                                     _hd300925301056_
                                                     _hd300922301046_
                                                     _hd300919301036_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300912300954_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g300912300954_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g300912300954_)))))
                        (let () (declare (not safe)) (_g300912300954_)))))
                (let () (declare (not safe)) (_g300912300954_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx301111_)
      (let* ((_g301115301150_
              (lambda (_g301116301146_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301116301146_))))
             (_g301114301269_
              (lambda (_g301116301154_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301116301154_))
                    (let ((_e301122301157_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301116301154_))))
                      (let ((_hd301121301161_
                             (let ()
                               (declare (not safe))
                               (##car _e301122301157_)))
                            (_tl301120301164_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301122301157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301120301164_))
                            (let ((_g308325_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301120301164_
                                      '0))))
                              (begin
                                (let ((_g308326_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308325_)
                                             (##vector-length _g308325_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308326_ 2)))
                                      (error "Context expects 2 values"
                                             _g308326_)))
                                (let ((_target301123301167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308325_ 0)))
                                      (_tl301125301170_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308325_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301125301170_))
                                      (letrec ((_loop301126301173_
                                                (lambda (_hd301124301177_
                                                         _symbol301130301180_
                                                         _method301131301182_
                                                         _type-t301132301184_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301124301177_))
                                                      (let ((_e301127301187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301124301177_))))
                (let ((_lp-hd301128301191_
                       (let () (declare (not safe)) (##car _e301127301187_)))
                      (_lp-tl301129301194_
                       (let () (declare (not safe)) (##cdr _e301127301187_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301128301191_))
                      (let ((_e301138301197_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301128301191_))))
                        (let ((_hd301137301201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301138301197_)))
                              (_tl301136301204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301138301197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl301136301204_))
                              (let ((_e301141301207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl301136301204_))))
                                (let ((_hd301140301211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e301141301207_)))
                                      (_tl301139301214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e301141301207_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl301139301214_))
                                      (let ((_e301144301217_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl301139301214_))))
                                        (let ((_hd301143301221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e301144301217_)))
                                              (_tl301142301224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e301144301217_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl301142301224_))
                                              (_loop301126301173_
                                               _lp-tl301129301194_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd301143301221_
                                                       _symbol301130301180_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd301140301211_
                                                       _method301131301182_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd301137301201_
                                                       _type-t301132301184_)))
                                              (_g301115301150_
                                               _g301116301154_))))
                                      (_g301115301150_ _g301116301154_))))
                              (_g301115301150_ _g301116301154_))))
                      (_g301115301150_ _g301116301154_))))
              (let ((_symbol301133301227_ (reverse _symbol301130301180_))
                    (_method301134301230_ (reverse _method301131301182_))
                    (_type-t301135301232_ (reverse _type-t301132301184_)))
                ((lambda (_L301235_ _L301237_ _L301238_)
                   (let ((__tmp308334
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308327
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301235_
                               _L301237_
                               _L301238_))
                            (let ((__tmp308328
                                   (lambda (_g301254301259_
                                            _g301255301262_
                                            _g301256301264_
                                            _g301257301266_)
                                     (let ((__tmp308329
                                            (let ((__tmp308333
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp308330
                                                   (let ((__tmp308331
                                                          (let ((__tmp308332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g301254301259_ '()))))
                    (declare (not safe))
                    (cons _g301255301262_ __tmp308332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301256301264_
                                                           __tmp308331))))
                                              (declare (not safe))
                                              (cons __tmp308333 __tmp308330))))
                                       (declare (not safe))
                                       (cons __tmp308329 _g301257301266_)))))
                              (declare (not safe))
                              (foldr* __tmp308328
                                      '()
                                      _L301235_
                                      _L301237_
                                      _L301238_)))))
                     (declare (not safe))
                     (cons __tmp308334 __tmp308327)))
                 _symbol301133301227_
                 _method301134301230_
                 _type-t301135301232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301126301173_
                                         _target301123301167_
                                         '()
                                         '()
                                         '()))
                                      (_g301115301150_ _g301116301154_)))))
                            (_g301115301150_ _g301116301154_))))
                    (_g301115301150_ _g301116301154_)))))
        (_g301114301269_ _$stx301111_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx301274_)
      (let* ((_g301278301311_
              (lambda (_g301279301307_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301279301307_))))
             (_g301277301425_
              (lambda (_g301279301315_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301279301315_))
                    (let ((_e301285301318_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301279301315_))))
                      (let ((_hd301284301322_
                             (let ()
                               (declare (not safe))
                               (##car _e301285301318_)))
                            (_tl301283301325_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301285301318_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301283301325_))
                            (let ((_e301288301328_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301283301325_))))
                              (let ((_hd301287301332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301288301328_)))
                                    (_tl301286301335_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301288301328_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl301286301335_))
                                    (let ((_g308335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl301286301335_
                                              '0))))
                                      (begin
                                        (let ((_g308336_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g308335_)
                                                     (##vector-length
                                                      _g308335_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g308336_ 2)))
                                              (error "Context expects 2 values"
                                                     _g308336_)))
                                        (let ((_target301289301338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g308335_ 0)))
                                              (_tl301291301341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g308335_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl301291301341_))
                                              (letrec ((_loop301292301344_
                                                        (lambda (_hd301290301348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol301296301351_
                         _method301297301353_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd301290301348_))
                      (let ((_e301293301356_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd301290301348_))))
                        (let ((_lp-hd301294301360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301293301356_)))
                              (_lp-tl301295301363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301293301356_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd301294301360_))
                              (let ((_e301302301366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd301294301360_))))
                                (let ((_hd301301301370_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e301302301366_)))
                                      (_tl301300301373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e301302301366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl301300301373_))
                                      (let ((_e301305301376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl301300301373_))))
                                        (let ((_hd301304301380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e301305301376_)))
                                              (_tl301303301383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e301305301376_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl301303301383_))
                                              (_loop301292301344_
                                               _lp-tl301295301363_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd301304301380_
                                                       _symbol301296301351_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd301301301370_
                                                       _method301297301353_)))
                                              (_g301278301311_
                                               _g301279301315_))))
                                      (_g301278301311_ _g301279301315_))))
                              (_g301278301311_ _g301279301315_))))
                      (let ((_symbol301298301386_
                             (reverse _symbol301296301351_))
                            (_method301299301389_
                             (reverse _method301297301353_)))
                        ((lambda (_L301392_ _L301394_ _L301395_)
                           (let ((__tmp308344
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp308337
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L301392_
                                       _L301394_))
                                    (let ((__tmp308338
                                           (lambda (_g301413301417_
                                                    _g301414301420_
                                                    _g301415301422_)
                                             (let ((__tmp308339
                                                    (let ((__tmp308343
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp308340
                                                           (let ((__tmp308341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp308342
                                 (let ()
                                   (declare (not safe))
                                   (cons _g301413301417_ '()))))
                            (declare (not safe))
                            (cons _g301414301420_ __tmp308342))))
                     (declare (not safe))
                     (cons _L301395_ __tmp308341))))
              (declare (not safe))
              (cons __tmp308343 __tmp308340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp308339
                                                     _g301415301422_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp308338
                                              '()
                                              _L301392_
                                              _L301394_)))))
                             (declare (not safe))
                             (cons __tmp308344 __tmp308337)))
                         _symbol301298301386_
                         _method301299301389_
                         _hd301287301332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop301292301344_
                                                 _target301289301338_
                                                 '()
                                                 '()))
                                              (_g301278301311_
                                               _g301279301315_)))))
                                    (_g301278301311_ _g301279301315_))))
                            (_g301278301311_ _g301279301315_))))
                    (_g301278301311_ _g301279301315_)))))
        (_g301277301425_ _$stx301274_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx301430_)
      (let* ((_g301434301448_
              (lambda (_g301435301444_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301435301444_))))
             (_g301433301489_
              (lambda (_g301435301452_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301435301452_))
                    (let ((_e301439301455_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301435301452_))))
                      (let ((_hd301438301459_
                             (let ()
                               (declare (not safe))
                               (##car _e301439301455_)))
                            (_tl301437301462_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301439301455_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301437301462_))
                            (let ((_e301442301465_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301437301462_))))
                              (let ((_hd301441301469_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301442301465_)))
                                    (_tl301440301472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301442301465_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301440301472_))
                                    ((lambda (_L301475_)
                                       (let ((__tmp308349
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp308345
                                              (let ((__tmp308346
                                                     (let ((__tmp308348
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp308347
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L301475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp308348 __tmp308347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp308346 '()))))
                                         (declare (not safe))
                                         (cons __tmp308349 __tmp308345)))
                                     _hd301441301469_)
                                    (_g301434301448_ _g301435301452_))))
                            (_g301434301448_ _g301435301452_))))
                    (_g301434301448_ _g301435301452_)))))
        (_g301433301489_ _$stx301430_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx301493_)
      (let* ((_g301497301547_
              (lambda (_g301498301543_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301498301543_))))
             (_g301496301714_
              (lambda (_g301498301551_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301498301551_))
                    (let ((_e301511301554_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301498301551_))))
                      (let ((_hd301510301558_
                             (let ()
                               (declare (not safe))
                               (##car _e301511301554_)))
                            (_tl301509301561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301511301554_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301509301561_))
                            (let ((_e301514301564_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301509301561_))))
                              (let ((_hd301513301568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301514301564_)))
                                    (_tl301512301571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301514301564_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301512301571_))
                                    (let ((_e301517301574_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301512301571_))))
                                      (let ((_hd301516301578_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301517301574_)))
                                            (_tl301515301581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301517301574_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301515301581_))
                                            (let ((_e301520301584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301515301581_))))
                                              (let ((_hd301519301588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301520301584_)))
                                                    (_tl301518301591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301520301584_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl301518301591_))
                                                    (let ((_e301523301594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl301518301591_))))
                                                      (let ((_hd301522301598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e301523301594_)))
                    (_tl301521301601_
                     (let () (declare (not safe)) (##cdr _e301523301594_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl301521301601_))
                    (let ((_e301526301604_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl301521301601_))))
                      (let ((_hd301525301608_
                             (let ()
                               (declare (not safe))
                               (##car _e301526301604_)))
                            (_tl301524301611_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301526301604_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301524301611_))
                            (let ((_e301529301614_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301524301611_))))
                              (let ((_hd301528301618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301529301614_)))
                                    (_tl301527301621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301529301614_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301527301621_))
                                    (let ((_e301532301624_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301527301621_))))
                                      (let ((_hd301531301628_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301532301624_)))
                                            (_tl301530301631_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301532301624_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301530301631_))
                                            (let ((_e301535301634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301530301631_))))
                                              (let ((_hd301534301638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301535301634_)))
                                                    (_tl301533301641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301535301634_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl301533301641_))
                                                    (let ((_e301538301644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl301533301641_))))
                                                      (let ((_hd301537301648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e301538301644_)))
                    (_tl301536301651_
                     (let () (declare (not safe)) (##cdr _e301538301644_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl301536301651_))
                    (let ((_e301541301654_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl301536301651_))))
                      (let ((_hd301540301658_
                             (let ()
                               (declare (not safe))
                               (##car _e301541301654_)))
                            (_tl301539301661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301541301654_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl301539301661_))
                            ((lambda (_L301664_
                                      _L301666_
                                      _L301667_
                                      _L301668_
                                      _L301669_
                                      _L301670_
                                      _L301671_
                                      _L301672_
                                      _L301673_
                                      _L301674_)
                               (let ((__tmp308384
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp308350
                                      (let ((__tmp308381
                                             (let ((__tmp308383
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp308382
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L301674_ '()))))
                                               (declare (not safe))
                                               (cons __tmp308383 __tmp308382)))
                                            (__tmp308351
                                             (let ((__tmp308378
                                                    (let ((__tmp308380
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp308379
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L301673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp308380 __tmp308379)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp308352
                                                    (let ((__tmp308375
                                                           (let ((__tmp308377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp308376
                          (let () (declare (not safe)) (cons _L301672_ '()))))
                     (declare (not safe))
                     (cons __tmp308377 __tmp308376)))
                  (__tmp308353
                   (let ((__tmp308372
                          (let ((__tmp308374
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp308373
                                 (let ()
                                   (declare (not safe))
                                   (cons _L301671_ '()))))
                            (declare (not safe))
                            (cons __tmp308374 __tmp308373)))
                         (__tmp308354
                          (let ((__tmp308369
                                 (let ((__tmp308371
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp308370
                                        (let ()
                                          (declare (not safe))
                                          (cons _L301670_ '()))))
                                   (declare (not safe))
                                   (cons __tmp308371 __tmp308370)))
                                (__tmp308355
                                 (let ((__tmp308366
                                        (let ((__tmp308368
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp308367
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L301669_ '()))))
                                          (declare (not safe))
                                          (cons __tmp308368 __tmp308367)))
                                       (__tmp308356
                                        (let ((__tmp308357
                                               (let ((__tmp308358
                                                      (let ((__tmp308363
                                                             (let ((__tmp308365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp308364
                            (let ()
                              (declare (not safe))
                              (cons _L301666_ '()))))
                       (declare (not safe))
                       (cons __tmp308365 __tmp308364)))
                    (__tmp308359
                     (let ((__tmp308360
                            (let ((__tmp308362
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp308361
                                   (let ()
                                     (declare (not safe))
                                     (cons _L301664_ '()))))
                              (declare (not safe))
                              (cons __tmp308362 __tmp308361))))
                       (declare (not safe))
                       (cons __tmp308360 '()))))
                (declare (not safe))
                (cons __tmp308363 __tmp308359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L301667_
                                                       __tmp308358))))
                                          (declare (not safe))
                                          (cons _L301668_ __tmp308357))))
                                   (declare (not safe))
                                   (cons __tmp308366 __tmp308356))))
                            (declare (not safe))
                            (cons __tmp308369 __tmp308355))))
                     (declare (not safe))
                     (cons __tmp308372 __tmp308354))))
              (declare (not safe))
              (cons __tmp308375 __tmp308353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp308378
                                                     __tmp308352))))
                                        (declare (not safe))
                                        (cons __tmp308381 __tmp308351))))
                                 (declare (not safe))
                                 (cons __tmp308384 __tmp308350)))
                             _hd301540301658_
                             _hd301537301648_
                             _hd301534301638_
                             _hd301531301628_
                             _hd301528301618_
                             _hd301525301608_
                             _hd301522301598_
                             _hd301519301588_
                             _hd301516301578_
                             _hd301513301568_)
                            (_g301497301547_ _g301498301551_))))
                    (_g301497301547_ _g301498301551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g301497301547_
                                                     _g301498301551_))))
                                            (_g301497301547_
                                             _g301498301551_))))
                                    (_g301497301547_ _g301498301551_))))
                            (_g301497301547_ _g301498301551_))))
                    (_g301497301547_ _g301498301551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g301497301547_
                                                     _g301498301551_))))
                                            (_g301497301547_
                                             _g301498301551_))))
                                    (_g301497301547_ _g301498301551_))))
                            (_g301497301547_ _g301498301551_))))
                    (_g301497301547_ _g301498301551_)))))
        (_g301496301714_ _$stx301493_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx301718_)
      (let* ((_g301722301736_
              (lambda (_g301723301732_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301723301732_))))
             (_g301721301777_
              (lambda (_g301723301740_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301723301740_))
                    (let ((_e301727301743_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301723301740_))))
                      (let ((_hd301726301747_
                             (let ()
                               (declare (not safe))
                               (##car _e301727301743_)))
                            (_tl301725301750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301727301743_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301725301750_))
                            (let ((_e301730301753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301725301750_))))
                              (let ((_hd301729301757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301730301753_)))
                                    (_tl301728301760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301730301753_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301728301760_))
                                    ((lambda (_L301763_)
                                       (let ((__tmp308389
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp308385
                                              (let ((__tmp308386
                                                     (let ((__tmp308388
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp308387
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L301763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp308388 __tmp308387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp308386 '()))))
                                         (declare (not safe))
                                         (cons __tmp308389 __tmp308385)))
                                     _hd301729301757_)
                                    (_g301722301736_ _g301723301740_))))
                            (_g301722301736_ _g301723301740_))))
                    (_g301722301736_ _g301723301740_)))))
        (_g301721301777_ _$stx301718_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx301781_)
      (let* ((_g301785301799_
              (lambda (_g301786301795_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301786301795_))))
             (_g301784301840_
              (lambda (_g301786301803_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301786301803_))
                    (let ((_e301790301806_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301786301803_))))
                      (let ((_hd301789301810_
                             (let ()
                               (declare (not safe))
                               (##car _e301790301806_)))
                            (_tl301788301813_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301790301806_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301788301813_))
                            (let ((_e301793301816_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301788301813_))))
                              (let ((_hd301792301820_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301793301816_)))
                                    (_tl301791301823_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301793301816_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl301791301823_))
                                    ((lambda (_L301826_)
                                       (let ((__tmp308394
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp308390
                                              (let ((__tmp308391
                                                     (let ((__tmp308393
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp308392
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L301826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp308393 __tmp308392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp308391 '()))))
                                         (declare (not safe))
                                         (cons __tmp308394 __tmp308390)))
                                     _hd301792301820_)
                                    (_g301785301799_ _g301786301803_))))
                            (_g301785301799_ _g301786301803_))))
                    (_g301785301799_ _g301786301803_)))))
        (_g301784301840_ _$stx301781_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx301844_)
      (let* ((_g301848301870_
              (lambda (_g301849301866_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301849301866_))))
             (_g301847301939_
              (lambda (_g301849301874_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301849301874_))
                    (let ((_e301855301877_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301849301874_))))
                      (let ((_hd301854301881_
                             (let ()
                               (declare (not safe))
                               (##car _e301855301877_)))
                            (_tl301853301884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301855301877_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301853301884_))
                            (let ((_e301858301887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301853301884_))))
                              (let ((_hd301857301891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301858301887_)))
                                    (_tl301856301894_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301858301887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301856301894_))
                                    (let ((_e301861301897_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301856301894_))))
                                      (let ((_hd301860301901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301861301897_)))
                                            (_tl301859301904_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301861301897_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301859301904_))
                                            (let ((_e301864301907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301859301904_))))
                                              (let ((_hd301863301911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301864301907_)))
                                                    (_tl301862301914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301864301907_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301862301914_))
                                                    ((lambda (_L301917_
                                                              _L301919_
                                                              _L301920_)
                                                       (let ((__tmp308404
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp308395
                      (let ((__tmp308401
                             (let ((__tmp308403
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp308402
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301920_ '()))))
                               (declare (not safe))
                               (cons __tmp308403 __tmp308402)))
                            (__tmp308396
                             (let ((__tmp308398
                                    (let ((__tmp308400
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp308399
                                           (let ()
                                             (declare (not safe))
                                             (cons _L301919_ '()))))
                                      (declare (not safe))
                                      (cons __tmp308400 __tmp308399)))
                                   (__tmp308397
                                    (let ()
                                      (declare (not safe))
                                      (cons _L301917_ '()))))
                               (declare (not safe))
                               (cons __tmp308398 __tmp308397))))
                        (declare (not safe))
                        (cons __tmp308401 __tmp308396))))
                 (declare (not safe))
                 (cons __tmp308404 __tmp308395)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd301863301911_
                                                     _hd301860301901_
                                                     _hd301857301891_)
                                                    (_g301848301870_
                                                     _g301849301874_))))
                                            (_g301848301870_
                                             _g301849301874_))))
                                    (_g301848301870_ _g301849301874_))))
                            (_g301848301870_ _g301849301874_))))
                    (_g301848301870_ _g301849301874_)))))
        (_g301847301939_ _$stx301844_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx301943_)
      (let* ((_g301947301969_
              (lambda (_g301948301965_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301948301965_))))
             (_g301946302038_
              (lambda (_g301948301973_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301948301973_))
                    (let ((_e301954301976_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301948301973_))))
                      (let ((_hd301953301980_
                             (let ()
                               (declare (not safe))
                               (##car _e301954301976_)))
                            (_tl301952301983_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301954301976_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl301952301983_))
                            (let ((_e301957301986_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl301952301983_))))
                              (let ((_hd301956301990_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e301957301986_)))
                                    (_tl301955301993_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e301957301986_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl301955301993_))
                                    (let ((_e301960301996_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl301955301993_))))
                                      (let ((_hd301959302000_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e301960301996_)))
                                            (_tl301958302003_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e301960301996_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl301958302003_))
                                            (let ((_e301963302006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl301958302003_))))
                                              (let ((_hd301962302010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e301963302006_)))
                                                    (_tl301961302013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e301963302006_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl301961302013_))
                                                    ((lambda (_L302016_
                                                              _L302018_
                                                              _L302019_)
                                                       (let ((__tmp308414
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp308405
                      (let ((__tmp308411
                             (let ((__tmp308413
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp308412
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302019_ '()))))
                               (declare (not safe))
                               (cons __tmp308413 __tmp308412)))
                            (__tmp308406
                             (let ((__tmp308408
                                    (let ((__tmp308410
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp308409
                                           (let ()
                                             (declare (not safe))
                                             (cons _L302018_ '()))))
                                      (declare (not safe))
                                      (cons __tmp308410 __tmp308409)))
                                   (__tmp308407
                                    (let ()
                                      (declare (not safe))
                                      (cons _L302016_ '()))))
                               (declare (not safe))
                               (cons __tmp308408 __tmp308407))))
                        (declare (not safe))
                        (cons __tmp308411 __tmp308406))))
                 (declare (not safe))
                 (cons __tmp308414 __tmp308405)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd301962302010_
                                                     _hd301959302000_
                                                     _hd301956301990_)
                                                    (_g301947301969_
                                                     _g301948301973_))))
                                            (_g301947301969_
                                             _g301948301973_))))
                                    (_g301947301969_ _g301948301973_))))
                            (_g301947301969_ _g301948301973_))))
                    (_g301947301969_ _g301948301973_)))))
        (_g301946302038_ _$stx301943_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx302042_)
      (let* ((___stx307924307925_ _$stx302042_)
             (_g302050302118_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx307924307925_)))))
        (let ((___kont307927307928_
               (lambda (_L302396_ _L302398_)
                 (let ((__tmp308430
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp308415
                        (let ((__tmp308426
                               (let ((__tmp308429
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308427
                                      (let ((__tmp308428
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp308428 '()))))
                                 (declare (not safe))
                                 (cons __tmp308429 __tmp308427)))
                              (__tmp308416
                               (let ((__tmp308423
                                      (let ((__tmp308425
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp308424
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302398_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308425 __tmp308424)))
                                     (__tmp308417
                                      (let ((__tmp308418
                                             (let ((__tmp308419
                                                    (let ((__tmp308420
                                                           (let ((__tmp308422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp308421
                          (let () (declare (not safe)) (cons _L302396_ '()))))
                     (declare (not safe))
                     (cons __tmp308422 __tmp308421))))
              (declare (not safe))
              (cons __tmp308420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L302396_ __tmp308419))))
                                        (declare (not safe))
                                        (cons '#f __tmp308418))))
                                 (declare (not safe))
                                 (cons __tmp308423 __tmp308417))))
                          (declare (not safe))
                          (cons __tmp308426 __tmp308416))))
                   (declare (not safe))
                   (cons __tmp308430 __tmp308415))))
              (___kont307929307930_
               (lambda (_L302327_ _L302329_)
                 (let ((__tmp308431
                        (let ((__tmp308432
                               (let ((__tmp308433
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L302327_ __tmp308433))))
                          (declare (not safe))
                          (cons 'primitive: __tmp308432))))
                   (declare (not safe))
                   (cons _L302329_ __tmp308431))))
              (___kont307931307932_
               (lambda (_L302266_ _L302268_)
                 (let ((__tmp308447
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp308434
                        (let ((__tmp308443
                               (let ((__tmp308446
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308444
                                      (let ((__tmp308445
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp308445 '()))))
                                 (declare (not safe))
                                 (cons __tmp308446 __tmp308444)))
                              (__tmp308435
                               (let ((__tmp308440
                                      (let ((__tmp308442
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp308441
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302268_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308442 __tmp308441)))
                                     (__tmp308436
                                      (let ((__tmp308437
                                             (let ((__tmp308439
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp308438
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302266_ '()))))
                                               (declare (not safe))
                                               (cons __tmp308439
                                                     __tmp308438))))
                                        (declare (not safe))
                                        (cons __tmp308437 '()))))
                                 (declare (not safe))
                                 (cons __tmp308440 __tmp308436))))
                          (declare (not safe))
                          (cons __tmp308443 __tmp308435))))
                   (declare (not safe))
                   (cons __tmp308447 __tmp308434))))
              (___kont307933307934_
               (lambda (_L302198_ _L302200_)
                 (let ((__tmp308461
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp308448
                        (let ((__tmp308457
                               (let ((__tmp308460
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308458
                                      (let ((__tmp308459
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp308459 '()))))
                                 (declare (not safe))
                                 (cons __tmp308460 __tmp308458)))
                              (__tmp308449
                               (let ((__tmp308454
                                      (let ((__tmp308456
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp308455
                                             (let ()
                                               (declare (not safe))
                                               (cons _L302200_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308456 __tmp308455)))
                                     (__tmp308450
                                      (let ((__tmp308451
                                             (let ((__tmp308453
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp308452
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L302198_ '()))))
                                               (declare (not safe))
                                               (cons __tmp308453
                                                     __tmp308452))))
                                        (declare (not safe))
                                        (cons __tmp308451 '()))))
                                 (declare (not safe))
                                 (cons __tmp308454 __tmp308450))))
                          (declare (not safe))
                          (cons __tmp308457 __tmp308449))))
                   (declare (not safe))
                   (cons __tmp308461 __tmp308448))))
              (___kont307935307936_
               (lambda (_L302145_ _L302147_)
                 (let ((__tmp308462
                        (let ((__tmp308463
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L302145_ __tmp308463))))
                   (declare (not safe))
                   (cons _L302147_ __tmp308462)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx307924307925_))
              (let ((_e302056302352_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx307924307925_))))
                (let ((_tl302054302359_
                       (let () (declare (not safe)) (##cdr _e302056302352_)))
                      (_hd302055302356_
                       (let () (declare (not safe)) (##car _e302056302352_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl302054302359_))
                      (let ((_e302059302362_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl302054302359_))))
                        (let ((_tl302057302369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302059302362_)))
                              (_hd302058302366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302059302362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl302057302369_))
                              (let ((_e302062302372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl302057302369_))))
                                (let ((_tl302060302379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e302062302372_)))
                                      (_hd302061302376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e302062302372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd302061302376_))
                                      (let ((_e302063302382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd302061302376_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e302063302382_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl302060302379_))
                                                (let ((_e302066302386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl302060302379_))))
                                                  (let ((_tl302064302393_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e302066302386_)))
                                                        (_hd302065302390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e302066302386_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl302064302393_))
                                                        (___kont307927307928_
                                                         _hd302065302390_
                                                         _hd302058302366_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd302058302366_))
                                                            (let ((_e302075302313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd302058302366_))))
                      (declare (not safe))
                      (_g302050302118_))
                    (let () (declare (not safe)) (_g302050302118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd302058302366_))
                                                    (let ((_e302075302313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd302058302366_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e302075302313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302060302379_))
                      (___kont307929307930_ _hd302061302376_ _hd302055302356_)
                      (let () (declare (not safe)) (_g302050302118_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302060302379_))
                      (___kont307933307934_ _hd302061302376_ _hd302058302366_)
                      (let () (declare (not safe)) (_g302050302118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl302060302379_))
                                                        (___kont307933307934_
                                                         _hd302061302376_
                                                         _hd302058302366_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g302050302118_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd302058302366_))
                                                (let ((_e302075302313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd302058302366_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e302075302313_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl302060302379_))
                                                          (___kont307929307930_
                                                           _hd302061302376_
                                                           _hd302055302356_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl302060302379_))
                      (let ((_e302093302256_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl302060302379_))))
                        (let ((_tl302091302263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e302093302256_)))
                              (_hd302092302260_
                               (let ()
                                 (declare (not safe))
                                 (##car _e302093302256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl302091302263_))
                              (___kont307931307932_
                               _hd302092302260_
                               _hd302061302376_)
                              (let ()
                                (declare (not safe))
                                (_g302050302118_)))))
                      (let () (declare (not safe)) (_g302050302118_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl302060302379_))
                  (___kont307933307934_ _hd302061302376_ _hd302058302366_)
                  (let () (declare (not safe)) (_g302050302118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302060302379_))
                                                    (___kont307933307934_
                                                     _hd302061302376_
                                                     _hd302058302366_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g302050302118_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd302058302366_))
                                          (let ((_e302075302313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd302058302366_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e302075302313_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302060302379_))
                                                    (___kont307929307930_
                                                     _hd302061302376_
                                                     _hd302055302356_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl302060302379_))
                                                        (let ((_e302093302256_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl302060302379_))))
                  (let ((_tl302091302263_
                         (let () (declare (not safe)) (##cdr _e302093302256_)))
                        (_hd302092302260_
                         (let ()
                           (declare (not safe))
                           (##car _e302093302256_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl302091302263_))
                        (___kont307931307932_
                         _hd302092302260_
                         _hd302061302376_)
                        (let () (declare (not safe)) (_g302050302118_)))))
                (let () (declare (not safe)) (_g302050302118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl302060302379_))
                                                    (___kont307933307934_
                                                     _hd302061302376_
                                                     _hd302058302366_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g302050302118_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl302060302379_))
                                              (___kont307933307934_
                                               _hd302061302376_
                                               _hd302058302366_)
                                              (let ()
                                                (declare (not safe))
                                                (_g302050302118_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd302058302366_))
                                  (let ((_e302075302313_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd302058302366_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl302057302369_))
                                        (___kont307935307936_
                                         _hd302058302366_
                                         _hd302055302356_)
                                        (let ()
                                          (declare (not safe))
                                          (_g302050302118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302057302369_))
                                      (___kont307935307936_
                                       _hd302058302366_
                                       _hd302055302356_)
                                      (let ()
                                        (declare (not safe))
                                        (_g302050302118_)))))))
                      (let () (declare (not safe)) (_g302050302118_)))))
              (let () (declare (not safe)) (_g302050302118_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx302420_)
      (let* ((___stx308064308065_ _$stx302420_)
             (_g302425302480_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308064308065_)))))
        (let ((___kont308067308068_
               (lambda (_L302665_ _L302667_)
                 (let ((__tmp308479
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp308464
                        (let ((__tmp308475
                               (let ((__tmp308478
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308476
                                      (let ((__tmp308477
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp308477 '()))))
                                 (declare (not safe))
                                 (cons __tmp308478 __tmp308476)))
                              (__tmp308465
                               (let ((__tmp308466
                                      (let ((__tmp308474
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp308467
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L302665_
                                                  _L302667_))
                                               (let ((__tmp308468
                                                      (lambda (_g302684302688_
                                                               _g302685302691_
                                                               _g302686302693_)
                                                        (let ((__tmp308469
                                                               (let ((__tmp308473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp308470
                              (let ((__tmp308471
                                     (let ((__tmp308472
                                            (let ()
                                              (declare (not safe))
                                              (cons _g302684302688_ '()))))
                                       (declare (not safe))
                                       (cons _g302685302691_ __tmp308472))))
                                (declare (not safe))
                                (cons 'primitive: __tmp308471))))
                         (declare (not safe))
                         (cons __tmp308473 __tmp308470))))
                  (declare (not safe))
                  (cons __tmp308469 _g302686302693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp308468
                                                         '()
                                                         _L302665_
                                                         _L302667_)))))
                                        (declare (not safe))
                                        (cons __tmp308474 __tmp308467))))
                                 (declare (not safe))
                                 (cons __tmp308466 '()))))
                          (declare (not safe))
                          (cons __tmp308475 __tmp308465))))
                   (declare (not safe))
                   (cons __tmp308479 __tmp308464))))
              (___kont308071308072_
               (lambda (_L302551_ _L302553_)
                 (let ((__tmp308494
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp308480
                        (let ((__tmp308490
                               (let ((__tmp308493
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp308491
                                      (let ((__tmp308492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp308492 '()))))
                                 (declare (not safe))
                                 (cons __tmp308493 __tmp308491)))
                              (__tmp308481
                               (let ((__tmp308482
                                      (let ((__tmp308489
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp308483
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L302551_
                                                  _L302553_))
                                               (let ((__tmp308484
                                                      (lambda (_g302568302572_
                                                               _g302569302575_
                                                               _g302570302577_)
                                                        (let ((__tmp308485
                                                               (let ((__tmp308488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp308486
                              (let ((__tmp308487
                                     (let ()
                                       (declare (not safe))
                                       (cons _g302568302572_ '()))))
                                (declare (not safe))
                                (cons _g302569302575_ __tmp308487))))
                         (declare (not safe))
                         (cons __tmp308488 __tmp308486))))
                  (declare (not safe))
                  (cons __tmp308485 _g302570302577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp308484
                                                         '()
                                                         _L302551_
                                                         _L302553_)))))
                                        (declare (not safe))
                                        (cons __tmp308489 __tmp308483))))
                                 (declare (not safe))
                                 (cons __tmp308482 '()))))
                          (declare (not safe))
                          (cons __tmp308490 __tmp308481))))
                   (declare (not safe))
                   (cons __tmp308494 __tmp308480)))))
          (let* ((___match308115308116_
                  (lambda (_e302457302487_
                           _hd302456302491_
                           _tl302455302494_
                           ___splice308073308074_
                           _target302458302497_
                           _tl302460302500_)
                    (letrec ((_loop302461302503_
                              (lambda (_hd302459302507_
                                       _dispatch302465302510_
                                       _arity302466302512_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302459302507_))
                                    (let ((_e302462302515_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302459302507_))))
                                      (let ((_lp-tl302464302522_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302462302515_)))
                                            (_lp-hd302463302519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302462302515_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd302463302519_))
                                            (let ((_e302471302525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd302463302519_))))
                                              (let ((_tl302469302532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302471302525_)))
                                                    (_hd302470302529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302471302525_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302469302532_))
                                                    (let ((_e302474302535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302469302532_))))
                                                      (let ((_tl302472302542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e302474302535_)))
                    (_hd302473302539_
                     (let () (declare (not safe)) (##car _e302474302535_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl302472302542_))
                    (_loop302461302503_
                     _lp-tl302464302522_
                     (let ()
                       (declare (not safe))
                       (cons _hd302473302539_ _dispatch302465302510_))
                     (let ()
                       (declare (not safe))
                       (cons _hd302470302529_ _arity302466302512_)))
                    (let () (declare (not safe)) (_g302425302480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g302425302480_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g302425302480_)))))
                                    (let ((_arity302468302548_
                                           (reverse _arity302466302512_))
                                          (_dispatch302467302545_
                                           (reverse _dispatch302465302510_)))
                                      (___kont308071308072_
                                       _dispatch302467302545_
                                       _arity302468302548_))))))
                      (_loop302461302503_ _target302458302497_ '() '()))))
                 (___match308107308108_
                  (lambda (_e302457302487_ _hd302456302491_ _tl302455302494_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl302455302494_))
                        (let ((___splice308073308074_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl302455302494_
                                  '0))))
                          (let ((_tl302460302500_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice308073308074_ '1)))
                                (_target302458302497_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice308073308074_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl302460302500_))
                                (___match308115308116_
                                 _e302457302487_
                                 _hd302456302491_
                                 _tl302455302494_
                                 ___splice308073308074_
                                 _target302458302497_
                                 _tl302460302500_)
                                (let ()
                                  (declare (not safe))
                                  (_g302425302480_)))))
                        (let () (declare (not safe)) (_g302425302480_)))))
                 (___match308101308102_
                  (lambda (_e302431302587_
                           _hd302430302591_
                           _tl302429302594_
                           _e302434302597_
                           _hd302433302601_
                           _tl302432302604_
                           _e302435302607_
                           ___splice308069308070_
                           _target302436302611_
                           _tl302438302614_)
                    (letrec ((_loop302439302617_
                              (lambda (_hd302437302621_
                                       _dispatch302443302624_
                                       _arity302444302626_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302437302621_))
                                    (let ((_e302440302629_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302437302621_))))
                                      (let ((_lp-tl302442302636_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302440302629_)))
                                            (_lp-hd302441302633_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302440302629_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd302441302633_))
                                            (let ((_e302449302639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd302441302633_))))
                                              (let ((_tl302447302646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e302449302639_)))
                                                    (_hd302448302643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e302449302639_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl302447302646_))
                                                    (let ((_e302452302649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl302447302646_))))
                                                      (let ((_tl302450302656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e302452302649_)))
                    (_hd302451302653_
                     (let () (declare (not safe)) (##car _e302452302649_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl302450302656_))
                    (_loop302439302617_
                     _lp-tl302442302636_
                     (let ()
                       (declare (not safe))
                       (cons _hd302451302653_ _dispatch302443302624_))
                     (let ()
                       (declare (not safe))
                       (cons _hd302448302643_ _arity302444302626_)))
                    (___match308107308108_
                     _e302431302587_
                     _hd302430302591_
                     _tl302429302594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match308107308108_
                                                     _e302431302587_
                                                     _hd302430302591_
                                                     _tl302429302594_))))
                                            (___match308107308108_
                                             _e302431302587_
                                             _hd302430302591_
                                             _tl302429302594_))))
                                    (let ((_arity302446302662_
                                           (reverse _arity302444302626_))
                                          (_dispatch302445302659_
                                           (reverse _dispatch302443302624_)))
                                      (___kont308067308068_
                                       _dispatch302445302659_
                                       _arity302446302662_))))))
                      (_loop302439302617_ _target302436302611_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx308064308065_))
                (let ((_e302431302587_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx308064308065_))))
                  (let ((_tl302429302594_
                         (let () (declare (not safe)) (##cdr _e302431302587_)))
                        (_hd302430302591_
                         (let ()
                           (declare (not safe))
                           (##car _e302431302587_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl302429302594_))
                        (let ((_e302434302597_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl302429302594_))))
                          (let ((_tl302432302604_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e302434302597_)))
                                (_hd302433302601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e302434302597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd302433302601_))
                                (let ((_e302435302607_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd302433302601_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e302435302607_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl302432302604_))
                                          (let ((___splice308069308070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl302432302604_
                                                    '0))))
                                            (let ((_tl302438302614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice308069308070_
                                                      '1)))
                                                  (_target302436302611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice308069308070_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl302438302614_))
                                                  (___match308101308102_
                                                   _e302431302587_
                                                   _hd302430302591_
                                                   _tl302429302594_
                                                   _e302434302597_
                                                   _hd302433302601_
                                                   _tl302432302604_
                                                   _e302435302607_
                                                   ___splice308069308070_
                                                   _target302436302611_
                                                   _tl302438302614_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl302429302594_))
                                                      (let ((___splice308073308074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl302429302594_ '0))))
                (let ((_tl302460302500_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308073308074_ '1)))
                      (_target302458302497_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308073308074_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302460302500_))
                      (___match308115308116_
                       _e302431302587_
                       _hd302430302591_
                       _tl302429302594_
                       ___splice308073308074_
                       _target302458302497_
                       _tl302460302500_)
                      (let () (declare (not safe)) (_g302425302480_)))))
              (let () (declare (not safe)) (_g302425302480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl302429302594_))
                                              (let ((___splice308073308074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl302429302594_
                                                        '0))))
                                                (let ((_tl302460302500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice308073308074_
                                                          '1)))
                                                      (_target302458302497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice308073308074_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl302460302500_))
                                                      (___match308115308116_
                                                       _e302431302587_
                                                       _hd302430302591_
                                                       _tl302429302594_
                                                       ___splice308073308074_
                                                       _target302458302497_
                                                       _tl302460302500_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g302425302480_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g302425302480_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl302429302594_))
                                          (let ((___splice308073308074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl302429302594_
                                                    '0))))
                                            (let ((_tl302460302500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice308073308074_
                                                      '1)))
                                                  (_target302458302497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice308073308074_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl302460302500_))
                                                  (___match308115308116_
                                                   _e302431302587_
                                                   _hd302430302591_
                                                   _tl302429302594_
                                                   ___splice308073308074_
                                                   _target302458302497_
                                                   _tl302460302500_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g302425302480_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g302425302480_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302429302594_))
                                    (let ((___splice308073308074_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302429302594_
                                              '0))))
                                      (let ((_tl302460302500_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308073308074_
                                                '1)))
                                            (_target302458302497_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308073308074_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302460302500_))
                                            (___match308115308116_
                                             _e302431302587_
                                             _hd302430302591_
                                             _tl302429302594_
                                             ___splice308073308074_
                                             _target302458302497_
                                             _tl302460302500_)
                                            (let ()
                                              (declare (not safe))
                                              (_g302425302480_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g302425302480_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl302429302594_))
                            (let ((___splice308073308074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl302429302594_
                                      '0))))
                              (let ((_tl302460302500_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice308073308074_
                                        '1)))
                                    (_target302458302497_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice308073308074_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl302460302500_))
                                    (___match308115308116_
                                     _e302431302587_
                                     _hd302430302591_
                                     _tl302429302594_
                                     ___splice308073308074_
                                     _target302458302497_
                                     _tl302460302500_)
                                    (let ()
                                      (declare (not safe))
                                      (_g302425302480_)))))
                            (let () (declare (not safe)) (_g302425302480_))))))
                (let () (declare (not safe)) (_g302425302480_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx302702_)
      (let* ((_g302706302724_
              (lambda (_g302707302720_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302707302720_))))
             (_g302705302779_
              (lambda (_g302707302728_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302707302728_))
                    (let ((_e302712302731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302707302728_))))
                      (let ((_hd302711302735_
                             (let ()
                               (declare (not safe))
                               (##car _e302712302731_)))
                            (_tl302710302738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302712302731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302710302738_))
                            (let ((_e302715302741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302710302738_))))
                              (let ((_hd302714302745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302715302741_)))
                                    (_tl302713302748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302715302741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302713302748_))
                                    (let ((_e302718302751_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302713302748_))))
                                      (let ((_hd302717302755_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302718302751_)))
                                            (_tl302716302758_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302718302751_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302716302758_))
                                            ((lambda (_L302761_ _L302763_)
                                               (let ((__tmp308508
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp308495
                                                      (let ((__tmp308504
                                                             (let ((__tmp308507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp308505
                            (let ((__tmp308506
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp308506 '()))))
                       (declare (not safe))
                       (cons __tmp308507 __tmp308505)))
                    (__tmp308496
                     (let ((__tmp308501
                            (let ((__tmp308503
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp308502
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302763_ '()))))
                              (declare (not safe))
                              (cons __tmp308503 __tmp308502)))
                           (__tmp308497
                            (let ((__tmp308498
                                   (let ((__tmp308500
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp308499
                                          (let ()
                                            (declare (not safe))
                                            (cons _L302761_ '()))))
                                     (declare (not safe))
                                     (cons __tmp308500 __tmp308499))))
                              (declare (not safe))
                              (cons __tmp308498 '()))))
                       (declare (not safe))
                       (cons __tmp308501 __tmp308497))))
                (declare (not safe))
                (cons __tmp308504 __tmp308496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp308508
                                                       __tmp308495)))
                                             _hd302717302755_
                                             _hd302714302745_)
                                            (_g302706302724_
                                             _g302707302728_))))
                                    (_g302706302724_ _g302707302728_))))
                            (_g302706302724_ _g302707302728_))))
                    (_g302706302724_ _g302707302728_)))))
        (_g302705302779_ _$stx302702_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx302783_)
      (let* ((_g302787302805_
              (lambda (_g302788302801_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g302788302801_))))
             (_g302786302860_
              (lambda (_g302788302809_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g302788302809_))
                    (let ((_e302793302812_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g302788302809_))))
                      (let ((_hd302792302816_
                             (let ()
                               (declare (not safe))
                               (##car _e302793302812_)))
                            (_tl302791302819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e302793302812_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl302791302819_))
                            (let ((_e302796302822_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl302791302819_))))
                              (let ((_hd302795302826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e302796302822_)))
                                    (_tl302794302829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e302796302822_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl302794302829_))
                                    (let ((_e302799302832_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl302794302829_))))
                                      (let ((_hd302798302836_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302799302832_)))
                                            (_tl302797302839_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302799302832_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302797302839_))
                                            ((lambda (_L302842_ _L302844_)
                                               (let ((__tmp308522
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp308509
                                                      (let ((__tmp308518
                                                             (let ((__tmp308521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp308519
                            (let ((__tmp308520
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp308520 '()))))
                       (declare (not safe))
                       (cons __tmp308521 __tmp308519)))
                    (__tmp308510
                     (let ((__tmp308515
                            (let ((__tmp308517
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp308516
                                   (let ()
                                     (declare (not safe))
                                     (cons _L302844_ '()))))
                              (declare (not safe))
                              (cons __tmp308517 __tmp308516)))
                           (__tmp308511
                            (let ((__tmp308512
                                   (let ((__tmp308514
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp308513
                                          (let ()
                                            (declare (not safe))
                                            (cons _L302842_ '()))))
                                     (declare (not safe))
                                     (cons __tmp308514 __tmp308513))))
                              (declare (not safe))
                              (cons __tmp308512 '()))))
                       (declare (not safe))
                       (cons __tmp308515 __tmp308511))))
                (declare (not safe))
                (cons __tmp308518 __tmp308510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp308522
                                                       __tmp308509)))
                                             _hd302798302836_
                                             _hd302795302826_)
                                            (_g302787302805_
                                             _g302788302809_))))
                                    (_g302787302805_ _g302788302809_))))
                            (_g302787302805_ _g302788302809_))))
                    (_g302787302805_ _g302788302809_)))))
        (_g302786302860_ _$stx302783_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx302864_)
      (let* ((___stx308118308119_ _$stx302864_)
             (_g302871302942_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308118308119_)))))
        (let ((___kont308121308122_
               (lambda (_L303233_ _L303235_)
                 (let ((__tmp308528
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308523
                        (let ((__tmp308524
                               (let ((__tmp308525
                                      (let ((__tmp308527
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp308526
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303233_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308527 __tmp308526))))
                                 (declare (not safe))
                                 (cons __tmp308525 '()))))
                          (declare (not safe))
                          (cons _L303235_ __tmp308524))))
                   (declare (not safe))
                   (cons __tmp308528 __tmp308523))))
              (___kont308123308124_
               (lambda (_L303152_ _L303154_)
                 (let ((__tmp308537
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308529
                        (let ((__tmp308530
                               (let ((__tmp308531
                                      (let ((__tmp308536
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp308532
                                             (let ((__tmp308533
                                                    (lambda (_g303173303176_
                                                             _g303174303179_)
                                                      (let ((__tmp308534
                                                             (let ((__tmp308535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g303173303176_ __tmp308535))))
                (declare (not safe))
                (cons __tmp308534 _g303174303179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp308533
                                                       '()
                                                       _L303152_))))
                                        (declare (not safe))
                                        (cons __tmp308536 __tmp308532))))
                                 (declare (not safe))
                                 (cons __tmp308531 '()))))
                          (declare (not safe))
                          (cons _L303154_ __tmp308530))))
                   (declare (not safe))
                   (cons __tmp308537 __tmp308529))))
              (___kont308127308128_
               (lambda (_L303064_ _L303066_)
                 (let ((__tmp308544
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308538
                        (let ((__tmp308539
                               (let ((__tmp308540
                                      (let ((__tmp308543
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp308541
                                             (let ((__tmp308542
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L303064_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp308542))))
                                        (declare (not safe))
                                        (cons __tmp308543 __tmp308541))))
                                 (declare (not safe))
                                 (cons __tmp308540 '()))))
                          (declare (not safe))
                          (cons _L303066_ __tmp308539))))
                   (declare (not safe))
                   (cons __tmp308544 __tmp308538))))
              (___kont308129308130_
               (lambda (_L302999_ _L303001_)
                 (let ((__tmp308554
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308545
                        (let ((__tmp308546
                               (let ((__tmp308547
                                      (let ((__tmp308553
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp308548
                                             (let ((__tmp308549
                                                    (let ((__tmp308550
                                                           (lambda (_g303018303021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g303019303024_)
                     (let ((__tmp308551
                            (let ((__tmp308552
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g303018303021_ __tmp308552))))
                       (declare (not safe))
                       (cons __tmp308551 _g303019303024_)))))
              (declare (not safe))
              (foldr1 __tmp308550 '() _L302999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp308549))))
                                        (declare (not safe))
                                        (cons __tmp308553 __tmp308548))))
                                 (declare (not safe))
                                 (cons __tmp308547 '()))))
                          (declare (not safe))
                          (cons _L303001_ __tmp308546))))
                   (declare (not safe))
                   (cons __tmp308554 __tmp308545)))))
          (let* ((___match308237308238_
                  (lambda (_e302924302949_
                           _hd302923302953_
                           _tl302922302956_
                           _e302927302959_
                           _hd302926302963_
                           _tl302925302966_
                           ___splice308131308132_
                           _target302928302969_
                           _tl302930302972_)
                    (letrec ((_loop302931302975_
                              (lambda (_hd302929302979_ _arity302935302982_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302929302979_))
                                    (let ((_e302932302985_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302929302979_))))
                                      (let ((_lp-tl302934302992_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302932302985_)))
                                            (_lp-hd302933302989_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302932302985_))))
                                        (_loop302931302975_
                                         _lp-tl302934302992_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd302933302989_
                                                 _arity302935302982_)))))
                                    (let ((_arity302936302995_
                                           (reverse _arity302935302982_)))
                                      (___kont308129308130_
                                       _arity302936302995_
                                       _hd302926302963_))))))
                      (_loop302931302975_ _target302928302969_ '()))))
                 (___match308197308198_
                  (lambda (_e302892303088_
                           _hd302891303092_
                           _tl302890303095_
                           _e302895303098_
                           _hd302894303102_
                           _tl302893303105_
                           _e302898303108_
                           _hd302897303112_
                           _tl302896303115_
                           _e302899303118_
                           ___splice308125308126_
                           _target302900303122_
                           _tl302902303125_)
                    (letrec ((_loop302903303128_
                              (lambda (_hd302901303132_ _arity302907303135_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd302901303132_))
                                    (let ((_e302904303138_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd302901303132_))))
                                      (let ((_lp-tl302906303145_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e302904303138_)))
                                            (_lp-hd302905303142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e302904303138_))))
                                        (_loop302903303128_
                                         _lp-tl302906303145_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd302905303142_
                                                 _arity302907303135_)))))
                                    (let ((_arity302908303148_
                                           (reverse _arity302907303135_)))
                                      (___kont308123308124_
                                       _arity302908303148_
                                       _hd302894303102_))))))
                      (_loop302903303128_ _target302900303122_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx308118308119_))
                (let ((_e302877303189_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx308118308119_))))
                  (let ((_tl302875303196_
                         (let () (declare (not safe)) (##cdr _e302877303189_)))
                        (_hd302876303193_
                         (let ()
                           (declare (not safe))
                           (##car _e302877303189_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl302875303196_))
                        (let ((_e302880303199_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl302875303196_))))
                          (let ((_tl302878303206_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e302880303199_)))
                                (_hd302879303203_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e302880303199_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl302878303206_))
                                (let ((_e302883303209_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl302878303206_))))
                                  (let ((_tl302881303216_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e302883303209_)))
                                        (_hd302882303213_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e302883303209_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd302882303213_))
                                        (let ((_e302884303219_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd302882303213_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e302884303219_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl302881303216_))
                                                  (let ((_e302887303223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl302881303216_))))
                                                    (let ((_tl302885303230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e302887303223_)))
                                                          (_hd302886303227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e302887303223_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl302885303230_))
                                                          (___kont308121308122_
                                                           _hd302886303227_
                                                           _hd302879303203_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl302881303216_))
                      (let ((___splice308125308126_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl302881303216_ '0))))
                        (let ((_tl302902303125_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice308125308126_ '1)))
                              (_target302900303122_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice308125308126_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl302902303125_))
                              (___match308197308198_
                               _e302877303189_
                               _hd302876303193_
                               _tl302875303196_
                               _e302880303199_
                               _hd302879303203_
                               _tl302878303206_
                               _e302883303209_
                               _hd302882303213_
                               _tl302881303216_
                               _e302884303219_
                               ___splice308125308126_
                               _target302900303122_
                               _tl302902303125_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl302878303206_))
                                  (let ((___splice308131308132_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl302878303206_
                                            '0))))
                                    (let ((_tl302930302972_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice308131308132_
                                              '1)))
                                          (_target302928302969_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice308131308132_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl302930302972_))
                                          (___match308237308238_
                                           _e302877303189_
                                           _hd302876303193_
                                           _tl302875303196_
                                           _e302880303199_
                                           _hd302879303203_
                                           _tl302878303206_
                                           ___splice308131308132_
                                           _target302928302969_
                                           _tl302930302972_)
                                          (let ()
                                            (declare (not safe))
                                            (_g302871302942_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g302871302942_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl302878303206_))
                          (let ((___splice308131308132_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl302878303206_
                                    '0))))
                            (let ((_tl302930302972_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice308131308132_ '1)))
                                  (_target302928302969_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice308131308132_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl302930302972_))
                                  (___match308237308238_
                                   _e302877303189_
                                   _hd302876303193_
                                   _tl302875303196_
                                   _e302880303199_
                                   _hd302879303203_
                                   _tl302878303206_
                                   ___splice308131308132_
                                   _target302928302969_
                                   _tl302930302972_)
                                  (let ()
                                    (declare (not safe))
                                    (_g302871302942_)))))
                          (let () (declare (not safe)) (_g302871302942_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl302881303216_))
                                                      (let ((___splice308125308126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl302881303216_ '0))))
                (let ((_tl302902303125_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308125308126_ '1)))
                      (_target302900303122_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308125308126_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302902303125_))
                      (___match308197308198_
                       _e302877303189_
                       _hd302876303193_
                       _tl302875303196_
                       _e302880303199_
                       _hd302879303203_
                       _tl302878303206_
                       _e302883303209_
                       _hd302882303213_
                       _tl302881303216_
                       _e302884303219_
                       ___splice308125308126_
                       _target302900303122_
                       _tl302902303125_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl302881303216_))
                          (___kont308127308128_
                           _hd302882303213_
                           _hd302879303203_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl302878303206_))
                              (let ((___splice308131308132_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl302878303206_
                                        '0))))
                                (let ((_tl302930302972_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice308131308132_
                                          '1)))
                                      (_target302928302969_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice308131308132_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl302930302972_))
                                      (___match308237308238_
                                       _e302877303189_
                                       _hd302876303193_
                                       _tl302875303196_
                                       _e302880303199_
                                       _hd302879303203_
                                       _tl302878303206_
                                       ___splice308131308132_
                                       _target302928302969_
                                       _tl302930302972_)
                                      (let ()
                                        (declare (not safe))
                                        (_g302871302942_)))))
                              (let ()
                                (declare (not safe))
                                (_g302871302942_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl302881303216_))
                  (___kont308127308128_ _hd302882303213_ _hd302879303203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl302878303206_))
                      (let ((___splice308131308132_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl302878303206_ '0))))
                        (let ((_tl302930302972_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice308131308132_ '1)))
                              (_target302928302969_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice308131308132_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl302930302972_))
                              (___match308237308238_
                               _e302877303189_
                               _hd302876303193_
                               _tl302875303196_
                               _e302880303199_
                               _hd302879303203_
                               _tl302878303206_
                               ___splice308131308132_
                               _target302928302969_
                               _tl302930302972_)
                              (let ()
                                (declare (not safe))
                                (_g302871302942_)))))
                      (let () (declare (not safe)) (_g302871302942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl302881303216_))
                                                  (___kont308127308128_
                                                   _hd302882303213_
                                                   _hd302879303203_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl302878303206_))
                                                      (let ((___splice308131308132_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl302878303206_ '0))))
                (let ((_tl302930302972_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308131308132_ '1)))
                      (_target302928302969_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice308131308132_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl302930302972_))
                      (___match308237308238_
                       _e302877303189_
                       _hd302876303193_
                       _tl302875303196_
                       _e302880303199_
                       _hd302879303203_
                       _tl302878303206_
                       ___splice308131308132_
                       _target302928302969_
                       _tl302930302972_)
                      (let () (declare (not safe)) (_g302871302942_)))))
              (let () (declare (not safe)) (_g302871302942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302881303216_))
                                            (___kont308127308128_
                                             _hd302882303213_
                                             _hd302879303203_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl302878303206_))
                                                (let ((___splice308131308132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl302878303206_
                                                          '0))))
                                                  (let ((_tl302930302972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice308131308132_
                                                            '1)))
                                                        (_target302928302969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice308131308132_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl302930302972_))
                                                        (___match308237308238_
                                                         _e302877303189_
                                                         _hd302876303193_
                                                         _tl302875303196_
                                                         _e302880303199_
                                                         _hd302879303203_
                                                         _tl302878303206_
                                                         ___splice308131308132_
                                                         _target302928302969_
                                                         _tl302930302972_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g302871302942_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g302871302942_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl302878303206_))
                                    (let ((___splice308131308132_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl302878303206_
                                              '0))))
                                      (let ((_tl302930302972_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308131308132_
                                                '1)))
                                            (_target302928302969_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308131308132_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl302930302972_))
                                            (___match308237308238_
                                             _e302877303189_
                                             _hd302876303193_
                                             _tl302875303196_
                                             _e302880303199_
                                             _hd302879303203_
                                             _tl302878303206_
                                             ___splice308131308132_
                                             _target302928302969_
                                             _tl302930302972_)
                                            (let ()
                                              (declare (not safe))
                                              (_g302871302942_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g302871302942_))))))
                        (let () (declare (not safe)) (_g302871302942_)))))
                (let () (declare (not safe)) (_g302871302942_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx303259_)
      (let* ((___stx308240308241_ _$stx303259_)
             (_g303264303299_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx308240308241_)))))
        (let ((___kont308243308244_
               (lambda (_L303421_ _L303423_)
                 (let ((__tmp308560
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308555
                        (let ((__tmp308556
                               (let ((__tmp308557
                                      (let ((__tmp308559
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp308558
                                             (let ()
                                               (declare (not safe))
                                               (cons _L303421_ '()))))
                                        (declare (not safe))
                                        (cons __tmp308559 __tmp308558))))
                                 (declare (not safe))
                                 (cons __tmp308557 '()))))
                          (declare (not safe))
                          (cons _L303423_ __tmp308556))))
                   (declare (not safe))
                   (cons __tmp308560 __tmp308555))))
              (___kont308245308246_
               (lambda (_L303356_ _L303358_)
                 (let ((__tmp308569
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp308561
                        (let ((__tmp308562
                               (let ((__tmp308563
                                      (let ((__tmp308568
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp308564
                                             (let ((__tmp308565
                                                    (lambda (_g303375303378_
                                                             _g303376303381_)
                                                      (let ((__tmp308566
                                                             (let ((__tmp308567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g303375303378_ __tmp308567))))
                (declare (not safe))
                (cons __tmp308566 _g303376303381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp308565
                                                       '()
                                                       _L303356_))))
                                        (declare (not safe))
                                        (cons __tmp308568 __tmp308564))))
                                 (declare (not safe))
                                 (cons __tmp308563 '()))))
                          (declare (not safe))
                          (cons _L303358_ __tmp308562))))
                   (declare (not safe))
                   (cons __tmp308569 __tmp308561)))))
          (let ((___match308289308290_
                 (lambda (_e303281303306_
                          _hd303280303310_
                          _tl303279303313_
                          _e303284303316_
                          _hd303283303320_
                          _tl303282303323_
                          ___splice308247308248_
                          _target303285303326_
                          _tl303287303329_)
                   (letrec ((_loop303288303332_
                             (lambda (_hd303286303336_ _arity303292303339_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd303286303336_))
                                   (let ((_e303289303342_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd303286303336_))))
                                     (let ((_lp-tl303291303349_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e303289303342_)))
                                           (_lp-hd303290303346_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e303289303342_))))
                                       (_loop303288303332_
                                        _lp-tl303291303349_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd303290303346_
                                                _arity303292303339_)))))
                                   (let ((_arity303293303352_
                                          (reverse _arity303292303339_)))
                                     (___kont308245308246_
                                      _arity303293303352_
                                      _hd303283303320_))))))
                     (_loop303288303332_ _target303285303326_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx308240308241_))
                (let ((_e303270303391_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx308240308241_))))
                  (let ((_tl303268303398_
                         (let () (declare (not safe)) (##cdr _e303270303391_)))
                        (_hd303269303395_
                         (let ()
                           (declare (not safe))
                           (##car _e303270303391_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl303268303398_))
                        (let ((_e303273303401_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl303268303398_))))
                          (let ((_tl303271303408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e303273303401_)))
                                (_hd303272303405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e303273303401_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl303271303408_))
                                (let ((_e303276303411_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl303271303408_))))
                                  (let ((_tl303274303418_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e303276303411_)))
                                        (_hd303275303415_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e303276303411_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303274303418_))
                                        (___kont308243308244_
                                         _hd303275303415_
                                         _hd303272303405_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl303271303408_))
                                            (let ((___splice308247308248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl303271303408_
                                                      '0))))
                                              (let ((_tl303287303329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice308247308248_
                                                        '1)))
                                                    (_target303285303326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice308247308248_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl303287303329_))
                                                    (___match308289308290_
                                                     _e303270303391_
                                                     _hd303269303395_
                                                     _tl303268303398_
                                                     _e303273303401_
                                                     _hd303272303405_
                                                     _tl303271303408_
                                                     ___splice308247308248_
                                                     _target303285303326_
                                                     _tl303287303329_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g303264303299_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g303264303299_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl303271303408_))
                                    (let ((___splice308247308248_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl303271303408_
                                              '0))))
                                      (let ((_tl303287303329_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308247308248_
                                                '1)))
                                            (_target303285303326_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice308247308248_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl303287303329_))
                                            (___match308289308290_
                                             _e303270303391_
                                             _hd303269303395_
                                             _tl303268303398_
                                             _e303273303401_
                                             _hd303272303405_
                                             _tl303271303408_
                                             ___splice308247308248_
                                             _target303285303326_
                                             _tl303287303329_)
                                            (let ()
                                              (declare (not safe))
                                              (_g303264303299_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g303264303299_))))))
                        (let () (declare (not safe)) (_g303264303299_)))))
                (let () (declare (not safe)) (_g303264303299_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx303443_)
      (let* ((_g303447303482_
              (lambda (_g303448303478_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303448303478_))))
             (_g303446303610_
              (lambda (_g303448303486_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303448303486_))
                    (let ((_e303453303489_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303448303486_))))
                      (let ((_hd303452303493_
                             (let ()
                               (declare (not safe))
                               (##car _e303453303489_)))
                            (_tl303451303496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303453303489_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl303451303496_))
                            (let ((_g308570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl303451303496_
                                      '0))))
                              (begin
                                (let ((_g308571_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308570_)
                                             (##vector-length _g308570_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308571_ 2)))
                                      (error "Context expects 2 values"
                                             _g308571_)))
                                (let ((_target303454303499_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308570_ 0)))
                                      (_tl303456303502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308570_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303456303502_))
                                      (letrec ((_loop303457303505_
                                                (lambda (_hd303455303509_
                                                         _arity303461303512_
                                                         _prim303462303514_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd303455303509_))
                                                      (let ((_e303458303517_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd303455303509_))))
                (let ((_lp-hd303459303521_
                       (let () (declare (not safe)) (##car _e303458303517_)))
                      (_lp-tl303460303524_
                       (let () (declare (not safe)) (##cdr _e303458303517_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd303459303521_))
                      (let ((_e303467303527_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd303459303521_))))
                        (let ((_hd303466303531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303467303527_)))
                              (_tl303465303534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303467303527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl303465303534_))
                              (let ((_g308580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl303465303534_
                                        '0))))
                                (begin
                                  (let ((_g308581_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g308580_)
                                               (##vector-length _g308580_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g308581_ 2)))
                                        (error "Context expects 2 values"
                                               _g308581_)))
                                  (let ((_target303468303537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308580_ 0)))
                                        (_tl303470303540_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308580_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303470303540_))
                                        (letrec ((_loop303471303543_
                                                  (lambda (_hd303469303547_
                                                           _arity303475303550_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd303469303547_))
                                                        (let ((_e303472303553_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd303469303547_))))
                  (let ((_lp-hd303473303557_
                         (let () (declare (not safe)) (##car _e303472303553_)))
                        (_lp-tl303474303560_
                         (let ()
                           (declare (not safe))
                           (##cdr _e303472303553_))))
                    (_loop303471303543_
                     _lp-tl303474303560_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd303473303557_ _arity303475303550_)))))
                (let ((_arity303476303563_ (reverse _arity303475303550_)))
                  (_loop303457303505_
                   _lp-tl303460303524_
                   (let ()
                     (declare (not safe))
                     (cons _arity303476303563_ _arity303461303512_))
                   (let ()
                     (declare (not safe))
                     (cons _hd303466303531_ _prim303462303514_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop303471303543_
                                           _target303468303537_
                                           '()))
                                        (_g303447303482_ _g303448303486_)))))
                              (_g303447303482_ _g303448303486_))))
                      (_g303447303482_ _g303448303486_))))
              (let ((_arity303463303567_ (reverse _arity303461303512_))
                    (_prim303464303570_ (reverse _prim303462303514_)))
                ((lambda (_L303573_ _L303575_)
                   (let ((__tmp308579
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308572
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L303573_
                               _L303575_))
                            (let ((__tmp308573
                                   (lambda (_g303590303596_
                                            _g303591303599_
                                            _g303592303601_)
                                     (let ((__tmp308574
                                            (let ((__tmp308578
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp308575
                                                   (let ((__tmp308576
                                                          (let ((__tmp308577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g303593303604_ _g303594303607_)
                           (let ()
                             (declare (not safe))
                             (cons _g303593303604_ _g303594303607_)))))
                    (declare (not safe))
                    (foldr1 __tmp308577 '() _g303590303596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g303591303599_
                                                           __tmp308576))))
                                              (declare (not safe))
                                              (cons __tmp308578 __tmp308575))))
                                       (declare (not safe))
                                       (cons __tmp308574 _g303592303601_)))))
                              (declare (not safe))
                              (foldr2 __tmp308573 '() _L303573_ _L303575_)))))
                     (declare (not safe))
                     (cons __tmp308579 __tmp308572)))
                 _arity303463303567_
                 _prim303464303570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop303457303505_
                                         _target303454303499_
                                         '()
                                         '()))
                                      (_g303447303482_ _g303448303486_)))))
                            (_g303447303482_ _g303448303486_))))
                    (_g303447303482_ _g303448303486_)))))
        (_g303446303610_ _$stx303443_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx303616_)
      (let* ((_g303620303655_
              (lambda (_g303621303651_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g303621303651_))))
             (_g303619303783_
              (lambda (_g303621303659_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g303621303659_))
                    (let ((_e303626303662_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g303621303659_))))
                      (let ((_hd303625303666_
                             (let ()
                               (declare (not safe))
                               (##car _e303626303662_)))
                            (_tl303624303669_
                             (let ()
                               (declare (not safe))
                               (##cdr _e303626303662_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl303624303669_))
                            (let ((_g308582_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl303624303669_
                                      '0))))
                              (begin
                                (let ((_g308583_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g308582_)
                                             (##vector-length _g308582_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g308583_ 2)))
                                      (error "Context expects 2 values"
                                             _g308583_)))
                                (let ((_target303627303672_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308582_ 0)))
                                      (_tl303629303675_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g308582_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl303629303675_))
                                      (letrec ((_loop303630303678_
                                                (lambda (_hd303628303682_
                                                         _arity303634303685_
                                                         _prim303635303687_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd303628303682_))
                                                      (let ((_e303631303690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd303628303682_))))
                (let ((_lp-hd303632303694_
                       (let () (declare (not safe)) (##car _e303631303690_)))
                      (_lp-tl303633303697_
                       (let () (declare (not safe)) (##cdr _e303631303690_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd303632303694_))
                      (let ((_e303640303700_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd303632303694_))))
                        (let ((_hd303639303704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e303640303700_)))
                              (_tl303638303707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e303640303700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl303638303707_))
                              (let ((_g308592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl303638303707_
                                        '0))))
                                (begin
                                  (let ((_g308593_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g308592_)
                                               (##vector-length _g308592_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g308593_ 2)))
                                        (error "Context expects 2 values"
                                               _g308593_)))
                                  (let ((_target303641303710_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308592_ 0)))
                                        (_tl303643303713_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g308592_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl303643303713_))
                                        (letrec ((_loop303644303716_
                                                  (lambda (_hd303642303720_
                                                           _arity303648303723_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd303642303720_))
                                                        (let ((_e303645303726_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd303642303720_))))
                  (let ((_lp-hd303646303730_
                         (let () (declare (not safe)) (##car _e303645303726_)))
                        (_lp-tl303647303733_
                         (let ()
                           (declare (not safe))
                           (##cdr _e303645303726_))))
                    (_loop303644303716_
                     _lp-tl303647303733_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd303646303730_ _arity303648303723_)))))
                (let ((_arity303649303736_ (reverse _arity303648303723_)))
                  (_loop303630303678_
                   _lp-tl303633303697_
                   (let ()
                     (declare (not safe))
                     (cons _arity303649303736_ _arity303634303685_))
                   (let ()
                     (declare (not safe))
                     (cons _hd303639303704_ _prim303635303687_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop303644303716_
                                           _target303641303710_
                                           '()))
                                        (_g303620303655_ _g303621303659_)))))
                              (_g303620303655_ _g303621303659_))))
                      (_g303620303655_ _g303621303659_))))
              (let ((_arity303636303740_ (reverse _arity303634303685_))
                    (_prim303637303743_ (reverse _prim303635303687_)))
                ((lambda (_L303746_ _L303748_)
                   (let ((__tmp308591
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp308584
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L303746_
                               _L303748_))
                            (let ((__tmp308585
                                   (lambda (_g303763303769_
                                            _g303764303772_
                                            _g303765303774_)
                                     (let ((__tmp308586
                                            (let ((__tmp308590
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp308587
                                                   (let ((__tmp308588
                                                          (let ((__tmp308589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g303766303777_ _g303767303780_)
                           (let ()
                             (declare (not safe))
                             (cons _g303766303777_ _g303767303780_)))))
                    (declare (not safe))
                    (foldr1 __tmp308589 '() _g303763303769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g303764303772_
                                                           __tmp308588))))
                                              (declare (not safe))
                                              (cons __tmp308590 __tmp308587))))
                                       (declare (not safe))
                                       (cons __tmp308586 _g303765303774_)))))
                              (declare (not safe))
                              (foldr2 __tmp308585 '() _L303746_ _L303748_)))))
                     (declare (not safe))
                     (cons __tmp308591 __tmp308584)))
                 _arity303636303740_
                 _prim303637303743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop303630303678_
                                         _target303627303672_
                                         '()
                                         '()))
                                      (_g303620303655_ _g303621303659_)))))
                            (_g303620303655_ _g303621303659_))))
                    (_g303620303655_ _g303621303659_)))))
        (_g303619303783_ _$stx303616_)))))
