(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293715_)
      (let* ((_g293719293737_
              (lambda (_g293720293733_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293720293733_))))
             (_g293718293792_
              (lambda (_g293720293741_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293720293741_))
                    (let ((_e293725293744_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293720293741_))))
                      (let ((_hd293724293748_
                             (let ()
                               (declare (not safe))
                               (##car _e293725293744_)))
                            (_tl293723293751_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293725293744_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293723293751_))
                            (let ((_e293728293754_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293723293751_))))
                              (let ((_hd293727293758_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293728293754_)))
                                    (_tl293726293761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293728293754_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293726293761_))
                                    (let ((_e293731293764_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293726293761_))))
                                      (let ((_hd293730293768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293731293764_)))
                                            (_tl293729293771_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293731293764_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293729293771_))
                                            ((lambda (_L293774_ _L293776_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293776_))
                                                   (let ((__tmp301706
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301701
                                                          (let ((__tmp301703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301705
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301704
                                (let ()
                                  (declare (not safe))
                                  (cons _L293776_ '()))))
                           (declare (not safe))
                           (cons __tmp301705 __tmp301704)))
                        (__tmp301702
                         (let () (declare (not safe)) (cons _L293774_ '()))))
                    (declare (not safe))
                    (cons __tmp301703 __tmp301702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301706
                                                           __tmp301701))
                                                   (_g293719293737_
                                                    _g293720293741_)))
                                             _hd293730293768_
                                             _hd293727293758_)
                                            (_g293719293737_
                                             _g293720293741_))))
                                    (_g293719293737_ _g293720293741_))))
                            (_g293719293737_ _g293720293741_))))
                    (_g293719293737_ _g293720293741_)))))
        (_g293718293792_ _$stx293715_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293796_)
      (let* ((_g293800293829_
              (lambda (_g293801293825_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293801293825_))))
             (_g293799293929_
              (lambda (_g293801293833_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293801293833_))
                    (let ((_e293806293836_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293801293833_))))
                      (let ((_hd293805293840_
                             (let ()
                               (declare (not safe))
                               (##car _e293806293836_)))
                            (_tl293804293843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293806293836_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293804293843_))
                            (let ((_g301707_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293804293843_
                                      '0))))
                              (begin
                                (let ((_g301708_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301707_)
                                             (##vector-length _g301707_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301708_ 2)))
                                      (error "Context expects 2 values"
                                             _g301708_)))
                                (let ((_target293807293846_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301707_ 0)))
                                      (_tl293809293849_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301707_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293809293849_))
                                      (letrec ((_loop293810293852_
                                                (lambda (_hd293808293856_
                                                         _type293814293859_
                                                         _symbol293815293861_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293808293856_))
                                                      (let ((_e293811293864_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293808293856_))))
                (let ((_lp-hd293812293868_
                       (let () (declare (not safe)) (##car _e293811293864_)))
                      (_lp-tl293813293871_
                       (let () (declare (not safe)) (##cdr _e293811293864_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293812293868_))
                      (let ((_e293820293874_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293812293868_))))
                        (let ((_hd293819293878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293820293874_)))
                              (_tl293818293881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293820293874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293818293881_))
                              (let ((_e293823293884_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293818293881_))))
                                (let ((_hd293822293888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293823293884_)))
                                      (_tl293821293891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293823293884_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293821293891_))
                                      (_loop293810293852_
                                       _lp-tl293813293871_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293822293888_
                                               _type293814293859_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293819293878_
                                               _symbol293815293861_)))
                                      (_g293800293829_ _g293801293833_))))
                              (_g293800293829_ _g293801293833_))))
                      (_g293800293829_ _g293801293833_))))
              (let ((_type293816293894_ (reverse _type293814293859_))
                    (_symbol293817293897_ (reverse _symbol293815293861_)))
                ((lambda (_L293900_ _L293902_)
                   (let ((__tmp301715
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301709
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293900_
                               _L293902_))
                            (let ((__tmp301710
                                   (lambda (_g293917293921_
                                            _g293918293924_
                                            _g293919293926_)
                                     (let ((__tmp301711
                                            (let ((__tmp301714
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301712
                                                   (let ((__tmp301713
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293917293921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293918293924_
                                                           __tmp301713))))
                                              (declare (not safe))
                                              (cons __tmp301714 __tmp301712))))
                                       (declare (not safe))
                                       (cons __tmp301711 _g293919293926_)))))
                              (declare (not safe))
                              (foldr2 __tmp301710 '() _L293900_ _L293902_)))))
                     (declare (not safe))
                     (cons __tmp301715 __tmp301709)))
                 _type293816293894_
                 _symbol293817293897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293810293852_
                                         _target293807293846_
                                         '()
                                         '()))
                                      (_g293800293829_ _g293801293833_)))))
                            (_g293800293829_ _g293801293833_))))
                    (_g293800293829_ _g293801293833_)))))
        (_g293799293929_ _$stx293796_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293934_)
      (let* ((___stx301266301267_ _$stx293934_)
             (_g293939293981_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301266301267_)))))
        (let ((___kont301269301270_
               (lambda (_L294109_ _L294111_ _L294112_ _L294113_)
                 (let ((__tmp301729
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301716
                        (let ((__tmp301726
                               (let ((__tmp301728
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301727
                                      (let ()
                                        (declare (not safe))
                                        (cons _L294113_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301728 __tmp301727)))
                              (__tmp301717
                               (let ((__tmp301723
                                      (let ((__tmp301725
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301724
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294112_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301725 __tmp301724)))
                                     (__tmp301718
                                      (let ((__tmp301720
                                             (let ((__tmp301722
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301721
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294111_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301722 __tmp301721)))
                                            (__tmp301719
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294109_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301720 __tmp301719))))
                                 (declare (not safe))
                                 (cons __tmp301723 __tmp301718))))
                          (declare (not safe))
                          (cons __tmp301726 __tmp301717))))
                   (declare (not safe))
                   (cons __tmp301729 __tmp301716))))
              (___kont301271301272_
               (lambda (_L294028_ _L294030_ _L294031_ _L294032_)
                 (let ((__tmp301730
                        (let ((__tmp301731
                               (let ((__tmp301732
                                      (let ((__tmp301733
                                             (let ((__tmp301734
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301734 '()))))
                                        (declare (not safe))
                                        (cons _L294028_ __tmp301733))))
                                 (declare (not safe))
                                 (cons _L294030_ __tmp301732))))
                          (declare (not safe))
                          (cons _L294031_ __tmp301731))))
                   (declare (not safe))
                   (cons _L294032_ __tmp301730)))))
          (let ((___match301305301306_
                 (lambda (_e293947294059_
                          _hd293946294063_
                          _tl293945294066_
                          _e293950294069_
                          _hd293949294073_
                          _tl293948294076_
                          _e293953294079_
                          _hd293952294083_
                          _tl293951294086_
                          _e293956294089_
                          _hd293955294093_
                          _tl293954294096_
                          _e293959294099_
                          _hd293958294103_
                          _tl293957294106_)
                   (let ((_L294109_ _hd293958294103_)
                         (_L294111_ _hd293955294093_)
                         (_L294112_ _hd293952294083_)
                         (_L294113_ _hd293949294073_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L294113_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294112_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294111_)))
                         (___kont301269301270_
                          _L294109_
                          _L294111_
                          _L294112_
                          _L294113_)
                         (let () (declare (not safe)) (_g293939293981_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301266301267_))
                (let ((_e293947294059_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301266301267_))))
                  (let ((_tl293945294066_
                         (let () (declare (not safe)) (##cdr _e293947294059_)))
                        (_hd293946294063_
                         (let ()
                           (declare (not safe))
                           (##car _e293947294059_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293945294066_))
                        (let ((_e293950294069_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293945294066_))))
                          (let ((_tl293948294076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293950294069_)))
                                (_hd293949294073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293950294069_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293948294076_))
                                (let ((_e293953294079_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293948294076_))))
                                  (let ((_tl293951294086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293953294079_)))
                                        (_hd293952294083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293953294079_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293951294086_))
                                        (let ((_e293956294089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293951294086_))))
                                          (let ((_tl293954294096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293956294089_)))
                                                (_hd293955294093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293956294089_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293954294096_))
                                                (let ((_e293959294099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293954294096_))))
                                                  (let ((_tl293957294106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293959294099_)))
                                                        (_hd293958294103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293959294099_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293957294106_))
                                                        (___match301305301306_
                                                         _e293947294059_
                                                         _hd293946294063_
                                                         _tl293945294066_
                                                         _e293950294069_
                                                         _hd293949294073_
                                                         _tl293948294076_
                                                         _e293953294079_
                                                         _hd293952294083_
                                                         _tl293951294086_
                                                         _e293956294089_
                                                         _hd293955294093_
                                                         _tl293954294096_
                                                         _e293959294099_
                                                         _hd293958294103_
                                                         _tl293957294106_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293939293981_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293954294096_))
                                                    (___kont301271301272_
                                                     _hd293955294093_
                                                     _hd293952294083_
                                                     _hd293949294073_
                                                     _hd293946294063_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293939293981_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293939293981_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293939293981_)))))
                        (let () (declare (not safe)) (_g293939293981_)))))
                (let () (declare (not safe)) (_g293939293981_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx294138_)
      (let* ((_g294142294177_
              (lambda (_g294143294173_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294143294173_))))
             (_g294141294296_
              (lambda (_g294143294181_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294143294181_))
                    (let ((_e294149294184_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294143294181_))))
                      (let ((_hd294148294188_
                             (let ()
                               (declare (not safe))
                               (##car _e294149294184_)))
                            (_tl294147294191_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294149294184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294147294191_))
                            (let ((_g301735_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294147294191_
                                      '0))))
                              (begin
                                (let ((_g301736_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301735_)
                                             (##vector-length _g301735_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301736_ 2)))
                                      (error "Context expects 2 values"
                                             _g301736_)))
                                (let ((_target294150294194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301735_ 0)))
                                      (_tl294152294197_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301735_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294152294197_))
                                      (letrec ((_loop294153294200_
                                                (lambda (_hd294151294204_
                                                         _symbol294157294207_
                                                         _method294158294209_
                                                         _type-t294159294211_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd294151294204_))
                                                      (let ((_e294154294214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd294151294204_))))
                (let ((_lp-hd294155294218_
                       (let () (declare (not safe)) (##car _e294154294214_)))
                      (_lp-tl294156294221_
                       (let () (declare (not safe)) (##cdr _e294154294214_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd294155294218_))
                      (let ((_e294165294224_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd294155294218_))))
                        (let ((_hd294164294228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294165294224_)))
                              (_tl294163294231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294165294224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294163294231_))
                              (let ((_e294168294234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294163294231_))))
                                (let ((_hd294167294238_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294168294234_)))
                                      (_tl294166294241_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294168294234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294166294241_))
                                      (let ((_e294171294244_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294166294241_))))
                                        (let ((_hd294170294248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294171294244_)))
                                              (_tl294169294251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294171294244_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294169294251_))
                                              (_loop294153294200_
                                               _lp-tl294156294221_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294170294248_
                                                       _symbol294157294207_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294167294238_
                                                       _method294158294209_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294164294228_
                                                       _type-t294159294211_)))
                                              (_g294142294177_
                                               _g294143294181_))))
                                      (_g294142294177_ _g294143294181_))))
                              (_g294142294177_ _g294143294181_))))
                      (_g294142294177_ _g294143294181_))))
              (let ((_symbol294160294254_ (reverse _symbol294157294207_))
                    (_method294161294257_ (reverse _method294158294209_))
                    (_type-t294162294259_ (reverse _type-t294159294211_)))
                ((lambda (_L294262_ _L294264_ _L294265_)
                   (let ((__tmp301744
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301737
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L294262_
                               _L294264_
                               _L294265_))
                            (let ((__tmp301738
                                   (lambda (_g294281294286_
                                            _g294282294289_
                                            _g294283294291_
                                            _g294284294293_)
                                     (let ((__tmp301739
                                            (let ((__tmp301743
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301740
                                                   (let ((__tmp301741
                                                          (let ((__tmp301742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g294281294286_ '()))))
                    (declare (not safe))
                    (cons _g294282294289_ __tmp301742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g294283294291_
                                                           __tmp301741))))
                                              (declare (not safe))
                                              (cons __tmp301743 __tmp301740))))
                                       (declare (not safe))
                                       (cons __tmp301739 _g294284294293_)))))
                              (declare (not safe))
                              (foldr* __tmp301738
                                      '()
                                      _L294262_
                                      _L294264_
                                      _L294265_)))))
                     (declare (not safe))
                     (cons __tmp301744 __tmp301737)))
                 _symbol294160294254_
                 _method294161294257_
                 _type-t294162294259_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop294153294200_
                                         _target294150294194_
                                         '()
                                         '()
                                         '()))
                                      (_g294142294177_ _g294143294181_)))))
                            (_g294142294177_ _g294143294181_))))
                    (_g294142294177_ _g294143294181_)))))
        (_g294141294296_ _$stx294138_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx294301_)
      (let* ((_g294305294338_
              (lambda (_g294306294334_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294306294334_))))
             (_g294304294452_
              (lambda (_g294306294342_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294306294342_))
                    (let ((_e294312294345_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294306294342_))))
                      (let ((_hd294311294349_
                             (let ()
                               (declare (not safe))
                               (##car _e294312294345_)))
                            (_tl294310294352_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294312294345_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294310294352_))
                            (let ((_e294315294355_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294310294352_))))
                              (let ((_hd294314294359_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294315294355_)))
                                    (_tl294313294362_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294315294355_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294313294362_))
                                    (let ((_g301745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294313294362_
                                              '0))))
                                      (begin
                                        (let ((_g301746_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301745_)
                                                     (##vector-length
                                                      _g301745_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301746_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301746_)))
                                        (let ((_target294316294365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301745_ 0)))
                                              (_tl294318294368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301745_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294318294368_))
                                              (letrec ((_loop294319294371_
                                                        (lambda (_hd294317294375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol294323294378_
                         _method294324294380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd294317294375_))
                      (let ((_e294320294383_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd294317294375_))))
                        (let ((_lp-hd294321294387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294320294383_)))
                              (_lp-tl294322294390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294320294383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd294321294387_))
                              (let ((_e294329294393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd294321294387_))))
                                (let ((_hd294328294397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294329294393_)))
                                      (_tl294327294400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294329294393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294327294400_))
                                      (let ((_e294332294403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294327294400_))))
                                        (let ((_hd294331294407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294332294403_)))
                                              (_tl294330294410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294332294403_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294330294410_))
                                              (_loop294319294371_
                                               _lp-tl294322294390_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294331294407_
                                                       _symbol294323294378_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294328294397_
                                                       _method294324294380_)))
                                              (_g294305294338_
                                               _g294306294342_))))
                                      (_g294305294338_ _g294306294342_))))
                              (_g294305294338_ _g294306294342_))))
                      (let ((_symbol294325294413_
                             (reverse _symbol294323294378_))
                            (_method294326294416_
                             (reverse _method294324294380_)))
                        ((lambda (_L294419_ _L294421_ _L294422_)
                           (let ((__tmp301754
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301747
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294419_
                                       _L294421_))
                                    (let ((__tmp301748
                                           (lambda (_g294440294444_
                                                    _g294441294447_
                                                    _g294442294449_)
                                             (let ((__tmp301749
                                                    (let ((__tmp301753
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301750
                                                           (let ((__tmp301751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301752
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294440294444_ '()))))
                            (declare (not safe))
                            (cons _g294441294447_ __tmp301752))))
                     (declare (not safe))
                     (cons _L294422_ __tmp301751))))
              (declare (not safe))
              (cons __tmp301753 __tmp301750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301749
                                                     _g294442294449_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301748
                                              '()
                                              _L294419_
                                              _L294421_)))))
                             (declare (not safe))
                             (cons __tmp301754 __tmp301747)))
                         _symbol294325294413_
                         _method294326294416_
                         _hd294314294359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop294319294371_
                                                 _target294316294365_
                                                 '()
                                                 '()))
                                              (_g294305294338_
                                               _g294306294342_)))))
                                    (_g294305294338_ _g294306294342_))))
                            (_g294305294338_ _g294306294342_))))
                    (_g294305294338_ _g294306294342_)))))
        (_g294304294452_ _$stx294301_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294457_)
      (let* ((_g294461294475_
              (lambda (_g294462294471_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294462294471_))))
             (_g294460294516_
              (lambda (_g294462294479_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294462294479_))
                    (let ((_e294466294482_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294462294479_))))
                      (let ((_hd294465294486_
                             (let ()
                               (declare (not safe))
                               (##car _e294466294482_)))
                            (_tl294464294489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294466294482_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294464294489_))
                            (let ((_e294469294492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294464294489_))))
                              (let ((_hd294468294496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294469294492_)))
                                    (_tl294467294499_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294469294492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294467294499_))
                                    ((lambda (_L294502_)
                                       (let ((__tmp301759
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301755
                                              (let ((__tmp301756
                                                     (let ((__tmp301758
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301757
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301758 __tmp301757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301756 '()))))
                                         (declare (not safe))
                                         (cons __tmp301759 __tmp301755)))
                                     _hd294468294496_)
                                    (_g294461294475_ _g294462294479_))))
                            (_g294461294475_ _g294462294479_))))
                    (_g294461294475_ _g294462294479_)))))
        (_g294460294516_ _$stx294457_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294520_)
      (let* ((_g294524294570_
              (lambda (_g294525294566_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294525294566_))))
             (_g294523294723_
              (lambda (_g294525294574_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294525294574_))
                    (let ((_e294537294577_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294525294574_))))
                      (let ((_hd294536294581_
                             (let ()
                               (declare (not safe))
                               (##car _e294537294577_)))
                            (_tl294535294584_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294537294577_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294535294584_))
                            (let ((_e294540294587_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294535294584_))))
                              (let ((_hd294539294591_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294540294587_)))
                                    (_tl294538294594_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294540294587_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294538294594_))
                                    (let ((_e294543294597_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294538294594_))))
                                      (let ((_hd294542294601_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294543294597_)))
                                            (_tl294541294604_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294543294597_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294541294604_))
                                            (let ((_e294546294607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294541294604_))))
                                              (let ((_hd294545294611_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294546294607_)))
                                                    (_tl294544294614_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294546294607_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294544294614_))
                                                    (let ((_e294549294617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294544294614_))))
                                                      (let ((_hd294548294621_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294549294617_)))
                    (_tl294547294624_
                     (let () (declare (not safe)) (##cdr _e294549294617_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294547294624_))
                    (let ((_e294552294627_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294547294624_))))
                      (let ((_hd294551294631_
                             (let ()
                               (declare (not safe))
                               (##car _e294552294627_)))
                            (_tl294550294634_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294552294627_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294550294634_))
                            (let ((_e294555294637_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294550294634_))))
                              (let ((_hd294554294641_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294555294637_)))
                                    (_tl294553294644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294555294637_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294553294644_))
                                    (let ((_e294558294647_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294553294644_))))
                                      (let ((_hd294557294651_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294558294647_)))
                                            (_tl294556294654_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294558294647_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294556294654_))
                                            (let ((_e294561294657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294556294654_))))
                                              (let ((_hd294560294661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294561294657_)))
                                                    (_tl294559294664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294561294657_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294559294664_))
                                                    (let ((_e294564294667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294559294664_))))
                                                      (let ((_hd294563294671_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294564294667_)))
                    (_tl294562294674_
                     (let () (declare (not safe)) (##cdr _e294564294667_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294562294674_))
                    ((lambda (_L294677_
                              _L294679_
                              _L294680_
                              _L294681_
                              _L294682_
                              _L294683_
                              _L294684_
                              _L294685_
                              _L294686_)
                       (let ((__tmp301796
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301760
                              (let ((__tmp301793
                                     (let ((__tmp301795
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301794
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294686_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301795 __tmp301794)))
                                    (__tmp301761
                                     (let ((__tmp301790
                                            (let ((__tmp301792
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301791
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294685_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301792 __tmp301791)))
                                           (__tmp301762
                                            (let ((__tmp301787
                                                   (let ((__tmp301789
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301788
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301789
                                                           __tmp301788)))
                                                  (__tmp301763
                                                   (let ((__tmp301784
                                                          (let ((__tmp301786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301785
                         (let () (declare (not safe)) (cons _L294683_ '()))))
                    (declare (not safe))
                    (cons __tmp301786 __tmp301785)))
                 (__tmp301764
                  (let ((__tmp301781
                         (let ((__tmp301783
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301782
                                (let ()
                                  (declare (not safe))
                                  (cons _L294682_ '()))))
                           (declare (not safe))
                           (cons __tmp301783 __tmp301782)))
                        (__tmp301765
                         (let ((__tmp301778
                                (let ((__tmp301780
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301779
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294681_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301780 __tmp301779)))
                               (__tmp301766
                                (let ((__tmp301775
                                       (let ((__tmp301777
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301776
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294680_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301777 __tmp301776)))
                                      (__tmp301767
                                       (let ((__tmp301772
                                              (let ((__tmp301774
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301773
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294679_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301774
                                                      __tmp301773)))
                                             (__tmp301768
                                              (let ((__tmp301769
                                                     (let ((__tmp301771
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301770
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301771 __tmp301770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301769 '()))))
                                         (declare (not safe))
                                         (cons __tmp301772 __tmp301768))))
                                  (declare (not safe))
                                  (cons __tmp301775 __tmp301767))))
                           (declare (not safe))
                           (cons __tmp301778 __tmp301766))))
                    (declare (not safe))
                    (cons __tmp301781 __tmp301765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301784
                                                           __tmp301764))))
                                              (declare (not safe))
                                              (cons __tmp301787 __tmp301763))))
                                       (declare (not safe))
                                       (cons __tmp301790 __tmp301762))))
                                (declare (not safe))
                                (cons __tmp301793 __tmp301761))))
                         (declare (not safe))
                         (cons __tmp301796 __tmp301760)))
                     _hd294563294671_
                     _hd294560294661_
                     _hd294557294651_
                     _hd294554294641_
                     _hd294551294631_
                     _hd294548294621_
                     _hd294545294611_
                     _hd294542294601_
                     _hd294539294591_)
                    (_g294524294570_ _g294525294574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294524294570_
                                                     _g294525294574_))))
                                            (_g294524294570_
                                             _g294525294574_))))
                                    (_g294524294570_ _g294525294574_))))
                            (_g294524294570_ _g294525294574_))))
                    (_g294524294570_ _g294525294574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294524294570_
                                                     _g294525294574_))))
                                            (_g294524294570_
                                             _g294525294574_))))
                                    (_g294524294570_ _g294525294574_))))
                            (_g294524294570_ _g294525294574_))))
                    (_g294524294570_ _g294525294574_)))))
        (_g294523294723_ _$stx294520_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294727_)
      (let* ((_g294731294745_
              (lambda (_g294732294741_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294732294741_))))
             (_g294730294786_
              (lambda (_g294732294749_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294732294749_))
                    (let ((_e294736294752_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294732294749_))))
                      (let ((_hd294735294756_
                             (let ()
                               (declare (not safe))
                               (##car _e294736294752_)))
                            (_tl294734294759_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294736294752_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294734294759_))
                            (let ((_e294739294762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294734294759_))))
                              (let ((_hd294738294766_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294739294762_)))
                                    (_tl294737294769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294739294762_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294737294769_))
                                    ((lambda (_L294772_)
                                       (let ((__tmp301801
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301797
                                              (let ((__tmp301798
                                                     (let ((__tmp301800
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301799
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301800 __tmp301799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301798 '()))))
                                         (declare (not safe))
                                         (cons __tmp301801 __tmp301797)))
                                     _hd294738294766_)
                                    (_g294731294745_ _g294732294749_))))
                            (_g294731294745_ _g294732294749_))))
                    (_g294731294745_ _g294732294749_)))))
        (_g294730294786_ _$stx294727_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294790_)
      (let* ((_g294794294808_
              (lambda (_g294795294804_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294795294804_))))
             (_g294793294849_
              (lambda (_g294795294812_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294795294812_))
                    (let ((_e294799294815_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294795294812_))))
                      (let ((_hd294798294819_
                             (let ()
                               (declare (not safe))
                               (##car _e294799294815_)))
                            (_tl294797294822_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294799294815_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294797294822_))
                            (let ((_e294802294825_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294797294822_))))
                              (let ((_hd294801294829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294802294825_)))
                                    (_tl294800294832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294802294825_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294800294832_))
                                    ((lambda (_L294835_)
                                       (let ((__tmp301806
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301802
                                              (let ((__tmp301803
                                                     (let ((__tmp301805
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301804
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301805 __tmp301804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301803 '()))))
                                         (declare (not safe))
                                         (cons __tmp301806 __tmp301802)))
                                     _hd294801294829_)
                                    (_g294794294808_ _g294795294812_))))
                            (_g294794294808_ _g294795294812_))))
                    (_g294794294808_ _g294795294812_)))))
        (_g294793294849_ _$stx294790_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294853_)
      (let* ((_g294857294879_
              (lambda (_g294858294875_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294858294875_))))
             (_g294856294948_
              (lambda (_g294858294883_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294858294883_))
                    (let ((_e294864294886_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294858294883_))))
                      (let ((_hd294863294890_
                             (let ()
                               (declare (not safe))
                               (##car _e294864294886_)))
                            (_tl294862294893_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294864294886_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294862294893_))
                            (let ((_e294867294896_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294862294893_))))
                              (let ((_hd294866294900_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294867294896_)))
                                    (_tl294865294903_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294867294896_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294865294903_))
                                    (let ((_e294870294906_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294865294903_))))
                                      (let ((_hd294869294910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294870294906_)))
                                            (_tl294868294913_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294870294906_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294868294913_))
                                            (let ((_e294873294916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294868294913_))))
                                              (let ((_hd294872294920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294873294916_)))
                                                    (_tl294871294923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294873294916_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294871294923_))
                                                    ((lambda (_L294926_
                                                              _L294928_
                                                              _L294929_)
                                                       (let ((__tmp301816
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301807
                      (let ((__tmp301813
                             (let ((__tmp301815
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301814
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294929_ '()))))
                               (declare (not safe))
                               (cons __tmp301815 __tmp301814)))
                            (__tmp301808
                             (let ((__tmp301810
                                    (let ((__tmp301812
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301811
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294928_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301812 __tmp301811)))
                                   (__tmp301809
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294926_ '()))))
                               (declare (not safe))
                               (cons __tmp301810 __tmp301809))))
                        (declare (not safe))
                        (cons __tmp301813 __tmp301808))))
                 (declare (not safe))
                 (cons __tmp301816 __tmp301807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294872294920_
                                                     _hd294869294910_
                                                     _hd294866294900_)
                                                    (_g294857294879_
                                                     _g294858294883_))))
                                            (_g294857294879_
                                             _g294858294883_))))
                                    (_g294857294879_ _g294858294883_))))
                            (_g294857294879_ _g294858294883_))))
                    (_g294857294879_ _g294858294883_)))))
        (_g294856294948_ _$stx294853_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294952_)
      (let* ((_g294956294978_
              (lambda (_g294957294974_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294957294974_))))
             (_g294955295047_
              (lambda (_g294957294982_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294957294982_))
                    (let ((_e294963294985_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294957294982_))))
                      (let ((_hd294962294989_
                             (let ()
                               (declare (not safe))
                               (##car _e294963294985_)))
                            (_tl294961294992_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294963294985_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294961294992_))
                            (let ((_e294966294995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294961294992_))))
                              (let ((_hd294965294999_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294966294995_)))
                                    (_tl294964295002_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294966294995_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294964295002_))
                                    (let ((_e294969295005_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294964295002_))))
                                      (let ((_hd294968295009_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294969295005_)))
                                            (_tl294967295012_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294969295005_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294967295012_))
                                            (let ((_e294972295015_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294967295012_))))
                                              (let ((_hd294971295019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294972295015_)))
                                                    (_tl294970295022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294972295015_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294970295022_))
                                                    ((lambda (_L295025_
                                                              _L295027_
                                                              _L295028_)
                                                       (let ((__tmp301826
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301817
                      (let ((__tmp301823
                             (let ((__tmp301825
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301824
                                    (let ()
                                      (declare (not safe))
                                      (cons _L295028_ '()))))
                               (declare (not safe))
                               (cons __tmp301825 __tmp301824)))
                            (__tmp301818
                             (let ((__tmp301820
                                    (let ((__tmp301822
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301821
                                           (let ()
                                             (declare (not safe))
                                             (cons _L295027_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301822 __tmp301821)))
                                   (__tmp301819
                                    (let ()
                                      (declare (not safe))
                                      (cons _L295025_ '()))))
                               (declare (not safe))
                               (cons __tmp301820 __tmp301819))))
                        (declare (not safe))
                        (cons __tmp301823 __tmp301818))))
                 (declare (not safe))
                 (cons __tmp301826 __tmp301817)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294971295019_
                                                     _hd294968295009_
                                                     _hd294965294999_)
                                                    (_g294956294978_
                                                     _g294957294982_))))
                                            (_g294956294978_
                                             _g294957294982_))))
                                    (_g294956294978_ _g294957294982_))))
                            (_g294956294978_ _g294957294982_))))
                    (_g294956294978_ _g294957294982_)))))
        (_g294955295047_ _$stx294952_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx295051_)
      (let* ((___stx301334301335_ _$stx295051_)
             (_g295059295127_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301334301335_)))))
        (let ((___kont301337301338_
               (lambda (_L295405_ _L295407_)
                 (let ((__tmp301842
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301827
                        (let ((__tmp301838
                               (let ((__tmp301841
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301839
                                      (let ((__tmp301840
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301840 '()))))
                                 (declare (not safe))
                                 (cons __tmp301841 __tmp301839)))
                              (__tmp301828
                               (let ((__tmp301835
                                      (let ((__tmp301837
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301836
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295407_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301837 __tmp301836)))
                                     (__tmp301829
                                      (let ((__tmp301830
                                             (let ((__tmp301831
                                                    (let ((__tmp301832
                                                           (let ((__tmp301834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301833
                          (let () (declare (not safe)) (cons _L295405_ '()))))
                     (declare (not safe))
                     (cons __tmp301834 __tmp301833))))
              (declare (not safe))
              (cons __tmp301832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295405_ __tmp301831))))
                                        (declare (not safe))
                                        (cons '#f __tmp301830))))
                                 (declare (not safe))
                                 (cons __tmp301835 __tmp301829))))
                          (declare (not safe))
                          (cons __tmp301838 __tmp301828))))
                   (declare (not safe))
                   (cons __tmp301842 __tmp301827))))
              (___kont301339301340_
               (lambda (_L295336_ _L295338_)
                 (let ((__tmp301843
                        (let ((__tmp301844
                               (let ((__tmp301845
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L295336_ __tmp301845))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301844))))
                   (declare (not safe))
                   (cons _L295338_ __tmp301843))))
              (___kont301341301342_
               (lambda (_L295275_ _L295277_)
                 (let ((__tmp301859
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301846
                        (let ((__tmp301855
                               (let ((__tmp301858
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301856
                                      (let ((__tmp301857
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301857 '()))))
                                 (declare (not safe))
                                 (cons __tmp301858 __tmp301856)))
                              (__tmp301847
                               (let ((__tmp301852
                                      (let ((__tmp301854
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301853
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295277_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301854 __tmp301853)))
                                     (__tmp301848
                                      (let ((__tmp301849
                                             (let ((__tmp301851
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301850
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295275_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301851
                                                     __tmp301850))))
                                        (declare (not safe))
                                        (cons __tmp301849 '()))))
                                 (declare (not safe))
                                 (cons __tmp301852 __tmp301848))))
                          (declare (not safe))
                          (cons __tmp301855 __tmp301847))))
                   (declare (not safe))
                   (cons __tmp301859 __tmp301846))))
              (___kont301343301344_
               (lambda (_L295207_ _L295209_)
                 (let ((__tmp301873
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301860
                        (let ((__tmp301869
                               (let ((__tmp301872
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301870
                                      (let ((__tmp301871
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301871 '()))))
                                 (declare (not safe))
                                 (cons __tmp301872 __tmp301870)))
                              (__tmp301861
                               (let ((__tmp301866
                                      (let ((__tmp301868
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301867
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295209_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301868 __tmp301867)))
                                     (__tmp301862
                                      (let ((__tmp301863
                                             (let ((__tmp301865
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295207_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301865
                                                     __tmp301864))))
                                        (declare (not safe))
                                        (cons __tmp301863 '()))))
                                 (declare (not safe))
                                 (cons __tmp301866 __tmp301862))))
                          (declare (not safe))
                          (cons __tmp301869 __tmp301861))))
                   (declare (not safe))
                   (cons __tmp301873 __tmp301860))))
              (___kont301345301346_
               (lambda (_L295154_ _L295156_)
                 (let ((__tmp301874
                        (let ((__tmp301875
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L295154_ __tmp301875))))
                   (declare (not safe))
                   (cons _L295156_ __tmp301874)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx301334301335_))
              (let ((_e295065295361_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx301334301335_))))
                (let ((_tl295063295368_
                       (let () (declare (not safe)) (##cdr _e295065295361_)))
                      (_hd295064295365_
                       (let () (declare (not safe)) (##car _e295065295361_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl295063295368_))
                      (let ((_e295068295371_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295063295368_))))
                        (let ((_tl295066295378_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295068295371_)))
                              (_hd295067295375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295068295371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl295066295378_))
                              (let ((_e295071295381_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl295066295378_))))
                                (let ((_tl295069295388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e295071295381_)))
                                      (_hd295070295385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e295071295381_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd295070295385_))
                                      (let ((_e295072295391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd295070295385_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e295072295391_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl295069295388_))
                                                (let ((_e295075295395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl295069295388_))))
                                                  (let ((_tl295073295402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e295075295395_)))
                                                        (_hd295074295399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e295075295395_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295073295402_))
                                                        (___kont301337301338_
                                                         _hd295074295399_
                                                         _hd295067295375_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd295067295375_))
                                                            (let ((_e295084295322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd295067295375_))))
                      (declare (not safe))
                      (_g295059295127_))
                    (let () (declare (not safe)) (_g295059295127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd295067295375_))
                                                    (let ((_e295084295322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd295067295375_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e295084295322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295069295388_))
                      (___kont301339301340_ _hd295070295385_ _hd295064295365_)
                      (let () (declare (not safe)) (_g295059295127_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295069295388_))
                      (___kont301343301344_ _hd295070295385_ _hd295067295375_)
                      (let () (declare (not safe)) (_g295059295127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295069295388_))
                                                        (___kont301343301344_
                                                         _hd295070295385_
                                                         _hd295067295375_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295059295127_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd295067295375_))
                                                (let ((_e295084295322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd295067295375_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e295084295322_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295069295388_))
                                                          (___kont301339301340_
                                                           _hd295070295385_
                                                           _hd295064295365_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl295069295388_))
                      (let ((_e295102295265_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295069295388_))))
                        (let ((_tl295100295272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295102295265_)))
                              (_hd295101295269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295102295265_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295100295272_))
                              (___kont301341301342_
                               _hd295101295269_
                               _hd295070295385_)
                              (let ()
                                (declare (not safe))
                                (_g295059295127_)))))
                      (let () (declare (not safe)) (_g295059295127_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295069295388_))
                  (___kont301343301344_ _hd295070295385_ _hd295067295375_)
                  (let () (declare (not safe)) (_g295059295127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295069295388_))
                                                    (___kont301343301344_
                                                     _hd295070295385_
                                                     _hd295067295375_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295059295127_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd295067295375_))
                                          (let ((_e295084295322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd295067295375_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e295084295322_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295069295388_))
                                                    (___kont301339301340_
                                                     _hd295070295385_
                                                     _hd295064295365_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl295069295388_))
                                                        (let ((_e295102295265_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl295069295388_))))
                  (let ((_tl295100295272_
                         (let () (declare (not safe)) (##cdr _e295102295265_)))
                        (_hd295101295269_
                         (let ()
                           (declare (not safe))
                           (##car _e295102295265_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl295100295272_))
                        (___kont301341301342_
                         _hd295101295269_
                         _hd295070295385_)
                        (let () (declare (not safe)) (_g295059295127_)))))
                (let () (declare (not safe)) (_g295059295127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295069295388_))
                                                    (___kont301343301344_
                                                     _hd295070295385_
                                                     _hd295067295375_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295059295127_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl295069295388_))
                                              (___kont301343301344_
                                               _hd295070295385_
                                               _hd295067295375_)
                                              (let ()
                                                (declare (not safe))
                                                (_g295059295127_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd295067295375_))
                                  (let ((_e295084295322_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd295067295375_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295066295378_))
                                        (___kont301345301346_
                                         _hd295067295375_
                                         _hd295064295365_)
                                        (let ()
                                          (declare (not safe))
                                          (_g295059295127_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295066295378_))
                                      (___kont301345301346_
                                       _hd295067295375_
                                       _hd295064295365_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295059295127_)))))))
                      (let () (declare (not safe)) (_g295059295127_)))))
              (let () (declare (not safe)) (_g295059295127_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295429_)
      (let* ((___stx301474301475_ _$stx295429_)
             (_g295434295489_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301474301475_)))))
        (let ((___kont301477301478_
               (lambda (_L295674_ _L295676_)
                 (let ((__tmp301891
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301876
                        (let ((__tmp301887
                               (let ((__tmp301890
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301888
                                      (let ((__tmp301889
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301889 '()))))
                                 (declare (not safe))
                                 (cons __tmp301890 __tmp301888)))
                              (__tmp301877
                               (let ((__tmp301878
                                      (let ((__tmp301886
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301879
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295674_
                                                  _L295676_))
                                               (let ((__tmp301880
                                                      (lambda (_g295693295697_
                                                               _g295694295700_
                                                               _g295695295702_)
                                                        (let ((__tmp301881
                                                               (let ((__tmp301885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301882
                              (let ((__tmp301883
                                     (let ((__tmp301884
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295693295697_ '()))))
                                       (declare (not safe))
                                       (cons _g295694295700_ __tmp301884))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301883))))
                         (declare (not safe))
                         (cons __tmp301885 __tmp301882))))
                  (declare (not safe))
                  (cons __tmp301881 _g295695295702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301880
                                                         '()
                                                         _L295674_
                                                         _L295676_)))))
                                        (declare (not safe))
                                        (cons __tmp301886 __tmp301879))))
                                 (declare (not safe))
                                 (cons __tmp301878 '()))))
                          (declare (not safe))
                          (cons __tmp301887 __tmp301877))))
                   (declare (not safe))
                   (cons __tmp301891 __tmp301876))))
              (___kont301481301482_
               (lambda (_L295560_ _L295562_)
                 (let ((__tmp301906
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301892
                        (let ((__tmp301902
                               (let ((__tmp301905
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301903
                                      (let ((__tmp301904
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301904 '()))))
                                 (declare (not safe))
                                 (cons __tmp301905 __tmp301903)))
                              (__tmp301893
                               (let ((__tmp301894
                                      (let ((__tmp301901
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301895
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295560_
                                                  _L295562_))
                                               (let ((__tmp301896
                                                      (lambda (_g295577295581_
                                                               _g295578295584_
                                                               _g295579295586_)
                                                        (let ((__tmp301897
                                                               (let ((__tmp301900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301898
                              (let ((__tmp301899
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295577295581_ '()))))
                                (declare (not safe))
                                (cons _g295578295584_ __tmp301899))))
                         (declare (not safe))
                         (cons __tmp301900 __tmp301898))))
                  (declare (not safe))
                  (cons __tmp301897 _g295579295586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301896
                                                         '()
                                                         _L295560_
                                                         _L295562_)))))
                                        (declare (not safe))
                                        (cons __tmp301901 __tmp301895))))
                                 (declare (not safe))
                                 (cons __tmp301894 '()))))
                          (declare (not safe))
                          (cons __tmp301902 __tmp301893))))
                   (declare (not safe))
                   (cons __tmp301906 __tmp301892)))))
          (let* ((___match301525301526_
                  (lambda (_e295466295496_
                           _hd295465295500_
                           _tl295464295503_
                           ___splice301483301484_
                           _target295467295506_
                           _tl295469295509_)
                    (letrec ((_loop295470295512_
                              (lambda (_hd295468295516_
                                       _dispatch295474295519_
                                       _arity295475295521_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295468295516_))
                                    (let ((_e295471295524_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295468295516_))))
                                      (let ((_lp-tl295473295531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295471295524_)))
                                            (_lp-hd295472295528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295471295524_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295472295528_))
                                            (let ((_e295480295534_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295472295528_))))
                                              (let ((_tl295478295541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295480295534_)))
                                                    (_hd295479295538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295480295534_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295478295541_))
                                                    (let ((_e295483295544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295478295541_))))
                                                      (let ((_tl295481295551_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295483295544_)))
                    (_hd295482295548_
                     (let () (declare (not safe)) (##car _e295483295544_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295481295551_))
                    (_loop295470295512_
                     _lp-tl295473295531_
                     (let ()
                       (declare (not safe))
                       (cons _hd295482295548_ _dispatch295474295519_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295479295538_ _arity295475295521_)))
                    (let () (declare (not safe)) (_g295434295489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295434295489_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295434295489_)))))
                                    (let ((_arity295477295557_
                                           (reverse _arity295475295521_))
                                          (_dispatch295476295554_
                                           (reverse _dispatch295474295519_)))
                                      (___kont301481301482_
                                       _dispatch295476295554_
                                       _arity295477295557_))))))
                      (_loop295470295512_ _target295467295506_ '() '()))))
                 (___match301517301518_
                  (lambda (_e295466295496_ _hd295465295500_ _tl295464295503_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295464295503_))
                        (let ((___splice301483301484_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295464295503_
                                  '0))))
                          (let ((_tl295469295509_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301483301484_ '1)))
                                (_target295467295506_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301483301484_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295469295509_))
                                (___match301525301526_
                                 _e295466295496_
                                 _hd295465295500_
                                 _tl295464295503_
                                 ___splice301483301484_
                                 _target295467295506_
                                 _tl295469295509_)
                                (let ()
                                  (declare (not safe))
                                  (_g295434295489_)))))
                        (let () (declare (not safe)) (_g295434295489_)))))
                 (___match301511301512_
                  (lambda (_e295440295596_
                           _hd295439295600_
                           _tl295438295603_
                           _e295443295606_
                           _hd295442295610_
                           _tl295441295613_
                           _e295444295616_
                           ___splice301479301480_
                           _target295445295620_
                           _tl295447295623_)
                    (letrec ((_loop295448295626_
                              (lambda (_hd295446295630_
                                       _dispatch295452295633_
                                       _arity295453295635_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295446295630_))
                                    (let ((_e295449295638_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295446295630_))))
                                      (let ((_lp-tl295451295645_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295449295638_)))
                                            (_lp-hd295450295642_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295449295638_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295450295642_))
                                            (let ((_e295458295648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295450295642_))))
                                              (let ((_tl295456295655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295458295648_)))
                                                    (_hd295457295652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295458295648_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295456295655_))
                                                    (let ((_e295461295658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295456295655_))))
                                                      (let ((_tl295459295665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295461295658_)))
                    (_hd295460295662_
                     (let () (declare (not safe)) (##car _e295461295658_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295459295665_))
                    (_loop295448295626_
                     _lp-tl295451295645_
                     (let ()
                       (declare (not safe))
                       (cons _hd295460295662_ _dispatch295452295633_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295457295652_ _arity295453295635_)))
                    (___match301517301518_
                     _e295440295596_
                     _hd295439295600_
                     _tl295438295603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301517301518_
                                                     _e295440295596_
                                                     _hd295439295600_
                                                     _tl295438295603_))))
                                            (___match301517301518_
                                             _e295440295596_
                                             _hd295439295600_
                                             _tl295438295603_))))
                                    (let ((_arity295455295671_
                                           (reverse _arity295453295635_))
                                          (_dispatch295454295668_
                                           (reverse _dispatch295452295633_)))
                                      (___kont301477301478_
                                       _dispatch295454295668_
                                       _arity295455295671_))))))
                      (_loop295448295626_ _target295445295620_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301474301475_))
                (let ((_e295440295596_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301474301475_))))
                  (let ((_tl295438295603_
                         (let () (declare (not safe)) (##cdr _e295440295596_)))
                        (_hd295439295600_
                         (let ()
                           (declare (not safe))
                           (##car _e295440295596_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295438295603_))
                        (let ((_e295443295606_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295438295603_))))
                          (let ((_tl295441295613_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295443295606_)))
                                (_hd295442295610_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295443295606_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295442295610_))
                                (let ((_e295444295616_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295442295610_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295444295616_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295441295613_))
                                          (let ((___splice301479301480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295441295613_
                                                    '0))))
                                            (let ((_tl295447295623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301479301480_
                                                      '1)))
                                                  (_target295445295620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301479301480_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295447295623_))
                                                  (___match301511301512_
                                                   _e295440295596_
                                                   _hd295439295600_
                                                   _tl295438295603_
                                                   _e295443295606_
                                                   _hd295442295610_
                                                   _tl295441295613_
                                                   _e295444295616_
                                                   ___splice301479301480_
                                                   _target295445295620_
                                                   _tl295447295623_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295438295603_))
                                                      (let ((___splice301483301484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295438295603_ '0))))
                (let ((_tl295469295509_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301483301484_ '1)))
                      (_target295467295506_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301483301484_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295469295509_))
                      (___match301525301526_
                       _e295440295596_
                       _hd295439295600_
                       _tl295438295603_
                       ___splice301483301484_
                       _target295467295506_
                       _tl295469295509_)
                      (let () (declare (not safe)) (_g295434295489_)))))
              (let () (declare (not safe)) (_g295434295489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295438295603_))
                                              (let ((___splice301483301484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295438295603_
                                                        '0))))
                                                (let ((_tl295469295509_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301483301484_
                                                          '1)))
                                                      (_target295467295506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301483301484_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295469295509_))
                                                      (___match301525301526_
                                                       _e295440295596_
                                                       _hd295439295600_
                                                       _tl295438295603_
                                                       ___splice301483301484_
                                                       _target295467295506_
                                                       _tl295469295509_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295434295489_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295434295489_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295438295603_))
                                          (let ((___splice301483301484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295438295603_
                                                    '0))))
                                            (let ((_tl295469295509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301483301484_
                                                      '1)))
                                                  (_target295467295506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301483301484_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295469295509_))
                                                  (___match301525301526_
                                                   _e295440295596_
                                                   _hd295439295600_
                                                   _tl295438295603_
                                                   ___splice301483301484_
                                                   _target295467295506_
                                                   _tl295469295509_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295434295489_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295434295489_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295438295603_))
                                    (let ((___splice301483301484_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295438295603_
                                              '0))))
                                      (let ((_tl295469295509_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301483301484_
                                                '1)))
                                            (_target295467295506_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301483301484_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295469295509_))
                                            (___match301525301526_
                                             _e295440295596_
                                             _hd295439295600_
                                             _tl295438295603_
                                             ___splice301483301484_
                                             _target295467295506_
                                             _tl295469295509_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295434295489_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295434295489_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295438295603_))
                            (let ((___splice301483301484_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295438295603_
                                      '0))))
                              (let ((_tl295469295509_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301483301484_
                                        '1)))
                                    (_target295467295506_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301483301484_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295469295509_))
                                    (___match301525301526_
                                     _e295440295596_
                                     _hd295439295600_
                                     _tl295438295603_
                                     ___splice301483301484_
                                     _target295467295506_
                                     _tl295469295509_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295434295489_)))))
                            (let () (declare (not safe)) (_g295434295489_))))))
                (let () (declare (not safe)) (_g295434295489_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295711_)
      (let* ((_g295715295733_
              (lambda (_g295716295729_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295716295729_))))
             (_g295714295788_
              (lambda (_g295716295737_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295716295737_))
                    (let ((_e295721295740_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295716295737_))))
                      (let ((_hd295720295744_
                             (let ()
                               (declare (not safe))
                               (##car _e295721295740_)))
                            (_tl295719295747_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295721295740_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295719295747_))
                            (let ((_e295724295750_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295719295747_))))
                              (let ((_hd295723295754_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295724295750_)))
                                    (_tl295722295757_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295724295750_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295722295757_))
                                    (let ((_e295727295760_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295722295757_))))
                                      (let ((_hd295726295764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295727295760_)))
                                            (_tl295725295767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295727295760_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295725295767_))
                                            ((lambda (_L295770_ _L295772_)
                                               (let ((__tmp301920
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301907
                                                      (let ((__tmp301916
                                                             (let ((__tmp301919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301917
                            (let ((__tmp301918
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301918 '()))))
                       (declare (not safe))
                       (cons __tmp301919 __tmp301917)))
                    (__tmp301908
                     (let ((__tmp301913
                            (let ((__tmp301915
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301914
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295772_ '()))))
                              (declare (not safe))
                              (cons __tmp301915 __tmp301914)))
                           (__tmp301909
                            (let ((__tmp301910
                                   (let ((__tmp301912
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301911
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295770_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301912 __tmp301911))))
                              (declare (not safe))
                              (cons __tmp301910 '()))))
                       (declare (not safe))
                       (cons __tmp301913 __tmp301909))))
                (declare (not safe))
                (cons __tmp301916 __tmp301908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301920
                                                       __tmp301907)))
                                             _hd295726295764_
                                             _hd295723295754_)
                                            (_g295715295733_
                                             _g295716295737_))))
                                    (_g295715295733_ _g295716295737_))))
                            (_g295715295733_ _g295716295737_))))
                    (_g295715295733_ _g295716295737_)))))
        (_g295714295788_ _$stx295711_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295792_)
      (let* ((_g295796295814_
              (lambda (_g295797295810_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295797295810_))))
             (_g295795295869_
              (lambda (_g295797295818_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295797295818_))
                    (let ((_e295802295821_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295797295818_))))
                      (let ((_hd295801295825_
                             (let ()
                               (declare (not safe))
                               (##car _e295802295821_)))
                            (_tl295800295828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295802295821_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295800295828_))
                            (let ((_e295805295831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295800295828_))))
                              (let ((_hd295804295835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295805295831_)))
                                    (_tl295803295838_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295805295831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295803295838_))
                                    (let ((_e295808295841_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295803295838_))))
                                      (let ((_hd295807295845_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295808295841_)))
                                            (_tl295806295848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295808295841_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295806295848_))
                                            ((lambda (_L295851_ _L295853_)
                                               (let ((__tmp301934
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301921
                                                      (let ((__tmp301930
                                                             (let ((__tmp301933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301931
                            (let ((__tmp301932
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301932 '()))))
                       (declare (not safe))
                       (cons __tmp301933 __tmp301931)))
                    (__tmp301922
                     (let ((__tmp301927
                            (let ((__tmp301929
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301928
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295853_ '()))))
                              (declare (not safe))
                              (cons __tmp301929 __tmp301928)))
                           (__tmp301923
                            (let ((__tmp301924
                                   (let ((__tmp301926
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301925
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295851_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301926 __tmp301925))))
                              (declare (not safe))
                              (cons __tmp301924 '()))))
                       (declare (not safe))
                       (cons __tmp301927 __tmp301923))))
                (declare (not safe))
                (cons __tmp301930 __tmp301922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301934
                                                       __tmp301921)))
                                             _hd295807295845_
                                             _hd295804295835_)
                                            (_g295796295814_
                                             _g295797295818_))))
                                    (_g295796295814_ _g295797295818_))))
                            (_g295796295814_ _g295797295818_))))
                    (_g295796295814_ _g295797295818_)))))
        (_g295795295869_ _$stx295792_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295873_)
      (let* ((___stx301528301529_ _$stx295873_)
             (_g295880295951_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301528301529_)))))
        (let ((___kont301531301532_
               (lambda (_L296242_ _L296244_)
                 (let ((__tmp301940
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301935
                        (let ((__tmp301936
                               (let ((__tmp301937
                                      (let ((__tmp301939
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301938
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296242_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301939 __tmp301938))))
                                 (declare (not safe))
                                 (cons __tmp301937 '()))))
                          (declare (not safe))
                          (cons _L296244_ __tmp301936))))
                   (declare (not safe))
                   (cons __tmp301940 __tmp301935))))
              (___kont301533301534_
               (lambda (_L296161_ _L296163_)
                 (let ((__tmp301949
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301941
                        (let ((__tmp301942
                               (let ((__tmp301943
                                      (let ((__tmp301948
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301944
                                             (let ((__tmp301945
                                                    (lambda (_g296182296185_
                                                             _g296183296188_)
                                                      (let ((__tmp301946
                                                             (let ((__tmp301947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296182296185_ __tmp301947))))
                (declare (not safe))
                (cons __tmp301946 _g296183296188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301945
                                                       '()
                                                       _L296161_))))
                                        (declare (not safe))
                                        (cons __tmp301948 __tmp301944))))
                                 (declare (not safe))
                                 (cons __tmp301943 '()))))
                          (declare (not safe))
                          (cons _L296163_ __tmp301942))))
                   (declare (not safe))
                   (cons __tmp301949 __tmp301941))))
              (___kont301537301538_
               (lambda (_L296073_ _L296075_)
                 (let ((__tmp301956
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301950
                        (let ((__tmp301951
                               (let ((__tmp301952
                                      (let ((__tmp301955
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301953
                                             (let ((__tmp301954
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296073_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301954))))
                                        (declare (not safe))
                                        (cons __tmp301955 __tmp301953))))
                                 (declare (not safe))
                                 (cons __tmp301952 '()))))
                          (declare (not safe))
                          (cons _L296075_ __tmp301951))))
                   (declare (not safe))
                   (cons __tmp301956 __tmp301950))))
              (___kont301539301540_
               (lambda (_L296008_ _L296010_)
                 (let ((__tmp301966
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301957
                        (let ((__tmp301958
                               (let ((__tmp301959
                                      (let ((__tmp301965
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301960
                                             (let ((__tmp301961
                                                    (let ((__tmp301962
                                                           (lambda (_g296027296030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g296028296033_)
                     (let ((__tmp301963
                            (let ((__tmp301964
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g296027296030_ __tmp301964))))
                       (declare (not safe))
                       (cons __tmp301963 _g296028296033_)))))
              (declare (not safe))
              (foldr1 __tmp301962 '() _L296008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301961))))
                                        (declare (not safe))
                                        (cons __tmp301965 __tmp301960))))
                                 (declare (not safe))
                                 (cons __tmp301959 '()))))
                          (declare (not safe))
                          (cons _L296010_ __tmp301958))))
                   (declare (not safe))
                   (cons __tmp301966 __tmp301957)))))
          (let* ((___match301647301648_
                  (lambda (_e295933295958_
                           _hd295932295962_
                           _tl295931295965_
                           _e295936295968_
                           _hd295935295972_
                           _tl295934295975_
                           ___splice301541301542_
                           _target295937295978_
                           _tl295939295981_)
                    (letrec ((_loop295940295984_
                              (lambda (_hd295938295988_ _arity295944295991_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295938295988_))
                                    (let ((_e295941295994_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295938295988_))))
                                      (let ((_lp-tl295943296001_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295941295994_)))
                                            (_lp-hd295942295998_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295941295994_))))
                                        (_loop295940295984_
                                         _lp-tl295943296001_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295942295998_
                                                 _arity295944295991_)))))
                                    (let ((_arity295945296004_
                                           (reverse _arity295944295991_)))
                                      (___kont301539301540_
                                       _arity295945296004_
                                       _hd295935295972_))))))
                      (_loop295940295984_ _target295937295978_ '()))))
                 (___match301607301608_
                  (lambda (_e295901296097_
                           _hd295900296101_
                           _tl295899296104_
                           _e295904296107_
                           _hd295903296111_
                           _tl295902296114_
                           _e295907296117_
                           _hd295906296121_
                           _tl295905296124_
                           _e295908296127_
                           ___splice301535301536_
                           _target295909296131_
                           _tl295911296134_)
                    (letrec ((_loop295912296137_
                              (lambda (_hd295910296141_ _arity295916296144_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295910296141_))
                                    (let ((_e295913296147_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295910296141_))))
                                      (let ((_lp-tl295915296154_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295913296147_)))
                                            (_lp-hd295914296151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295913296147_))))
                                        (_loop295912296137_
                                         _lp-tl295915296154_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295914296151_
                                                 _arity295916296144_)))))
                                    (let ((_arity295917296157_
                                           (reverse _arity295916296144_)))
                                      (___kont301533301534_
                                       _arity295917296157_
                                       _hd295903296111_))))))
                      (_loop295912296137_ _target295909296131_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301528301529_))
                (let ((_e295886296198_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301528301529_))))
                  (let ((_tl295884296205_
                         (let () (declare (not safe)) (##cdr _e295886296198_)))
                        (_hd295885296202_
                         (let ()
                           (declare (not safe))
                           (##car _e295886296198_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295884296205_))
                        (let ((_e295889296208_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295884296205_))))
                          (let ((_tl295887296215_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295889296208_)))
                                (_hd295888296212_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295889296208_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295887296215_))
                                (let ((_e295892296218_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295887296215_))))
                                  (let ((_tl295890296225_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295892296218_)))
                                        (_hd295891296222_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295892296218_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295891296222_))
                                        (let ((_e295893296228_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295891296222_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295893296228_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295890296225_))
                                                  (let ((_e295896296232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295890296225_))))
                                                    (let ((_tl295894296239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295896296232_)))
                                                          (_hd295895296236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295896296232_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295894296239_))
                                                          (___kont301531301532_
                                                           _hd295895296236_
                                                           _hd295888296212_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295890296225_))
                      (let ((___splice301535301536_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295890296225_ '0))))
                        (let ((_tl295911296134_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301535301536_ '1)))
                              (_target295909296131_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301535301536_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295911296134_))
                              (___match301607301608_
                               _e295886296198_
                               _hd295885296202_
                               _tl295884296205_
                               _e295889296208_
                               _hd295888296212_
                               _tl295887296215_
                               _e295892296218_
                               _hd295891296222_
                               _tl295890296225_
                               _e295893296228_
                               ___splice301535301536_
                               _target295909296131_
                               _tl295911296134_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295887296215_))
                                  (let ((___splice301541301542_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295887296215_
                                            '0))))
                                    (let ((_tl295939295981_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301541301542_
                                              '1)))
                                          (_target295937295978_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301541301542_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295939295981_))
                                          (___match301647301648_
                                           _e295886296198_
                                           _hd295885296202_
                                           _tl295884296205_
                                           _e295889296208_
                                           _hd295888296212_
                                           _tl295887296215_
                                           ___splice301541301542_
                                           _target295937295978_
                                           _tl295939295981_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295880295951_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295880295951_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295887296215_))
                          (let ((___splice301541301542_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295887296215_
                                    '0))))
                            (let ((_tl295939295981_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301541301542_ '1)))
                                  (_target295937295978_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301541301542_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295939295981_))
                                  (___match301647301648_
                                   _e295886296198_
                                   _hd295885296202_
                                   _tl295884296205_
                                   _e295889296208_
                                   _hd295888296212_
                                   _tl295887296215_
                                   ___splice301541301542_
                                   _target295937295978_
                                   _tl295939295981_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295880295951_)))))
                          (let () (declare (not safe)) (_g295880295951_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295890296225_))
                                                      (let ((___splice301535301536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295890296225_ '0))))
                (let ((_tl295911296134_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301535301536_ '1)))
                      (_target295909296131_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301535301536_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295911296134_))
                      (___match301607301608_
                       _e295886296198_
                       _hd295885296202_
                       _tl295884296205_
                       _e295889296208_
                       _hd295888296212_
                       _tl295887296215_
                       _e295892296218_
                       _hd295891296222_
                       _tl295890296225_
                       _e295893296228_
                       ___splice301535301536_
                       _target295909296131_
                       _tl295911296134_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295890296225_))
                          (___kont301537301538_
                           _hd295891296222_
                           _hd295888296212_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295887296215_))
                              (let ((___splice301541301542_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295887296215_
                                        '0))))
                                (let ((_tl295939295981_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301541301542_
                                          '1)))
                                      (_target295937295978_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301541301542_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295939295981_))
                                      (___match301647301648_
                                       _e295886296198_
                                       _hd295885296202_
                                       _tl295884296205_
                                       _e295889296208_
                                       _hd295888296212_
                                       _tl295887296215_
                                       ___splice301541301542_
                                       _target295937295978_
                                       _tl295939295981_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295880295951_)))))
                              (let ()
                                (declare (not safe))
                                (_g295880295951_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295890296225_))
                  (___kont301537301538_ _hd295891296222_ _hd295888296212_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295887296215_))
                      (let ((___splice301541301542_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295887296215_ '0))))
                        (let ((_tl295939295981_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301541301542_ '1)))
                              (_target295937295978_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301541301542_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295939295981_))
                              (___match301647301648_
                               _e295886296198_
                               _hd295885296202_
                               _tl295884296205_
                               _e295889296208_
                               _hd295888296212_
                               _tl295887296215_
                               ___splice301541301542_
                               _target295937295978_
                               _tl295939295981_)
                              (let ()
                                (declare (not safe))
                                (_g295880295951_)))))
                      (let () (declare (not safe)) (_g295880295951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295890296225_))
                                                  (___kont301537301538_
                                                   _hd295891296222_
                                                   _hd295888296212_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295887296215_))
                                                      (let ((___splice301541301542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295887296215_ '0))))
                (let ((_tl295939295981_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301541301542_ '1)))
                      (_target295937295978_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301541301542_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295939295981_))
                      (___match301647301648_
                       _e295886296198_
                       _hd295885296202_
                       _tl295884296205_
                       _e295889296208_
                       _hd295888296212_
                       _tl295887296215_
                       ___splice301541301542_
                       _target295937295978_
                       _tl295939295981_)
                      (let () (declare (not safe)) (_g295880295951_)))))
              (let () (declare (not safe)) (_g295880295951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295890296225_))
                                            (___kont301537301538_
                                             _hd295891296222_
                                             _hd295888296212_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295887296215_))
                                                (let ((___splice301541301542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295887296215_
                                                          '0))))
                                                  (let ((_tl295939295981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301541301542_
                                                            '1)))
                                                        (_target295937295978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301541301542_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295939295981_))
                                                        (___match301647301648_
                                                         _e295886296198_
                                                         _hd295885296202_
                                                         _tl295884296205_
                                                         _e295889296208_
                                                         _hd295888296212_
                                                         _tl295887296215_
                                                         ___splice301541301542_
                                                         _target295937295978_
                                                         _tl295939295981_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295880295951_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295880295951_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295887296215_))
                                    (let ((___splice301541301542_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295887296215_
                                              '0))))
                                      (let ((_tl295939295981_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301541301542_
                                                '1)))
                                            (_target295937295978_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301541301542_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295939295981_))
                                            (___match301647301648_
                                             _e295886296198_
                                             _hd295885296202_
                                             _tl295884296205_
                                             _e295889296208_
                                             _hd295888296212_
                                             _tl295887296215_
                                             ___splice301541301542_
                                             _target295937295978_
                                             _tl295939295981_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295880295951_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295880295951_))))))
                        (let () (declare (not safe)) (_g295880295951_)))))
                (let () (declare (not safe)) (_g295880295951_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx296268_)
      (let* ((___stx301650301651_ _$stx296268_)
             (_g296273296308_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301650301651_)))))
        (let ((___kont301653301654_
               (lambda (_L296430_ _L296432_)
                 (let ((__tmp301972
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301967
                        (let ((__tmp301968
                               (let ((__tmp301969
                                      (let ((__tmp301971
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301970
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296430_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301971 __tmp301970))))
                                 (declare (not safe))
                                 (cons __tmp301969 '()))))
                          (declare (not safe))
                          (cons _L296432_ __tmp301968))))
                   (declare (not safe))
                   (cons __tmp301972 __tmp301967))))
              (___kont301655301656_
               (lambda (_L296365_ _L296367_)
                 (let ((__tmp301981
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301973
                        (let ((__tmp301974
                               (let ((__tmp301975
                                      (let ((__tmp301980
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301976
                                             (let ((__tmp301977
                                                    (lambda (_g296384296387_
                                                             _g296385296390_)
                                                      (let ((__tmp301978
                                                             (let ((__tmp301979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296384296387_ __tmp301979))))
                (declare (not safe))
                (cons __tmp301978 _g296385296390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301977
                                                       '()
                                                       _L296365_))))
                                        (declare (not safe))
                                        (cons __tmp301980 __tmp301976))))
                                 (declare (not safe))
                                 (cons __tmp301975 '()))))
                          (declare (not safe))
                          (cons _L296367_ __tmp301974))))
                   (declare (not safe))
                   (cons __tmp301981 __tmp301973)))))
          (let ((___match301699301700_
                 (lambda (_e296290296315_
                          _hd296289296319_
                          _tl296288296322_
                          _e296293296325_
                          _hd296292296329_
                          _tl296291296332_
                          ___splice301657301658_
                          _target296294296335_
                          _tl296296296338_)
                   (letrec ((_loop296297296341_
                             (lambda (_hd296295296345_ _arity296301296348_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd296295296345_))
                                   (let ((_e296298296351_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd296295296345_))))
                                     (let ((_lp-tl296300296358_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e296298296351_)))
                                           (_lp-hd296299296355_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e296298296351_))))
                                       (_loop296297296341_
                                        _lp-tl296300296358_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd296299296355_
                                                _arity296301296348_)))))
                                   (let ((_arity296302296361_
                                          (reverse _arity296301296348_)))
                                     (___kont301655301656_
                                      _arity296302296361_
                                      _hd296292296329_))))))
                     (_loop296297296341_ _target296294296335_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301650301651_))
                (let ((_e296279296400_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301650301651_))))
                  (let ((_tl296277296407_
                         (let () (declare (not safe)) (##cdr _e296279296400_)))
                        (_hd296278296404_
                         (let ()
                           (declare (not safe))
                           (##car _e296279296400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296277296407_))
                        (let ((_e296282296410_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296277296407_))))
                          (let ((_tl296280296417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296282296410_)))
                                (_hd296281296414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296282296410_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296280296417_))
                                (let ((_e296285296420_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296280296417_))))
                                  (let ((_tl296283296427_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296285296420_)))
                                        (_hd296284296424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296285296420_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296283296427_))
                                        (___kont301653301654_
                                         _hd296284296424_
                                         _hd296281296414_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl296280296417_))
                                            (let ((___splice301657301658_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl296280296417_
                                                      '0))))
                                              (let ((_tl296296296338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301657301658_
                                                        '1)))
                                                    (_target296294296335_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301657301658_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296296296338_))
                                                    (___match301699301700_
                                                     _e296279296400_
                                                     _hd296278296404_
                                                     _tl296277296407_
                                                     _e296282296410_
                                                     _hd296281296414_
                                                     _tl296280296417_
                                                     ___splice301657301658_
                                                     _target296294296335_
                                                     _tl296296296338_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296273296308_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g296273296308_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296280296417_))
                                    (let ((___splice301657301658_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296280296417_
                                              '0))))
                                      (let ((_tl296296296338_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301657301658_
                                                '1)))
                                            (_target296294296335_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301657301658_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296296296338_))
                                            (___match301699301700_
                                             _e296279296400_
                                             _hd296278296404_
                                             _tl296277296407_
                                             _e296282296410_
                                             _hd296281296414_
                                             _tl296280296417_
                                             ___splice301657301658_
                                             _target296294296335_
                                             _tl296296296338_)
                                            (let ()
                                              (declare (not safe))
                                              (_g296273296308_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g296273296308_))))))
                        (let () (declare (not safe)) (_g296273296308_)))))
                (let () (declare (not safe)) (_g296273296308_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296452_)
      (let* ((_g296456296491_
              (lambda (_g296457296487_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296457296487_))))
             (_g296455296619_
              (lambda (_g296457296495_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296457296495_))
                    (let ((_e296462296498_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296457296495_))))
                      (let ((_hd296461296502_
                             (let ()
                               (declare (not safe))
                               (##car _e296462296498_)))
                            (_tl296460296505_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296462296498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296460296505_))
                            (let ((_g301982_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296460296505_
                                      '0))))
                              (begin
                                (let ((_g301983_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301982_)
                                             (##vector-length _g301982_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301983_ 2)))
                                      (error "Context expects 2 values"
                                             _g301983_)))
                                (let ((_target296463296508_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301982_ 0)))
                                      (_tl296465296511_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301982_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296465296511_))
                                      (letrec ((_loop296466296514_
                                                (lambda (_hd296464296518_
                                                         _arity296470296521_
                                                         _prim296471296523_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296464296518_))
                                                      (let ((_e296467296526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296464296518_))))
                (let ((_lp-hd296468296530_
                       (let () (declare (not safe)) (##car _e296467296526_)))
                      (_lp-tl296469296533_
                       (let () (declare (not safe)) (##cdr _e296467296526_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296468296530_))
                      (let ((_e296476296536_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296468296530_))))
                        (let ((_hd296475296540_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296476296536_)))
                              (_tl296474296543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296476296536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296474296543_))
                              (let ((_g301992_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296474296543_
                                        '0))))
                                (begin
                                  (let ((_g301993_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301992_)
                                               (##vector-length _g301992_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301993_ 2)))
                                        (error "Context expects 2 values"
                                               _g301993_)))
                                  (let ((_target296477296546_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301992_ 0)))
                                        (_tl296479296549_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301992_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296479296549_))
                                        (letrec ((_loop296480296552_
                                                  (lambda (_hd296478296556_
                                                           _arity296484296559_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296478296556_))
                                                        (let ((_e296481296562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296478296556_))))
                  (let ((_lp-hd296482296566_
                         (let () (declare (not safe)) (##car _e296481296562_)))
                        (_lp-tl296483296569_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296481296562_))))
                    (_loop296480296552_
                     _lp-tl296483296569_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296482296566_ _arity296484296559_)))))
                (let ((_arity296485296572_ (reverse _arity296484296559_)))
                  (_loop296466296514_
                   _lp-tl296469296533_
                   (let ()
                     (declare (not safe))
                     (cons _arity296485296572_ _arity296470296521_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296475296540_ _prim296471296523_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296480296552_
                                           _target296477296546_
                                           '()))
                                        (_g296456296491_ _g296457296495_)))))
                              (_g296456296491_ _g296457296495_))))
                      (_g296456296491_ _g296457296495_))))
              (let ((_arity296472296576_ (reverse _arity296470296521_))
                    (_prim296473296579_ (reverse _prim296471296523_)))
                ((lambda (_L296582_ _L296584_)
                   (let ((__tmp301991
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301984
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296582_
                               _L296584_))
                            (let ((__tmp301985
                                   (lambda (_g296599296605_
                                            _g296600296608_
                                            _g296601296610_)
                                     (let ((__tmp301986
                                            (let ((__tmp301990
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301987
                                                   (let ((__tmp301988
                                                          (let ((__tmp301989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296602296613_ _g296603296616_)
                           (let ()
                             (declare (not safe))
                             (cons _g296602296613_ _g296603296616_)))))
                    (declare (not safe))
                    (foldr1 __tmp301989 '() _g296599296605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296600296608_
                                                           __tmp301988))))
                                              (declare (not safe))
                                              (cons __tmp301990 __tmp301987))))
                                       (declare (not safe))
                                       (cons __tmp301986 _g296601296610_)))))
                              (declare (not safe))
                              (foldr2 __tmp301985 '() _L296582_ _L296584_)))))
                     (declare (not safe))
                     (cons __tmp301991 __tmp301984)))
                 _arity296472296576_
                 _prim296473296579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296466296514_
                                         _target296463296508_
                                         '()
                                         '()))
                                      (_g296456296491_ _g296457296495_)))))
                            (_g296456296491_ _g296457296495_))))
                    (_g296456296491_ _g296457296495_)))))
        (_g296455296619_ _$stx296452_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296625_)
      (let* ((_g296629296664_
              (lambda (_g296630296660_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296630296660_))))
             (_g296628296792_
              (lambda (_g296630296668_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296630296668_))
                    (let ((_e296635296671_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296630296668_))))
                      (let ((_hd296634296675_
                             (let ()
                               (declare (not safe))
                               (##car _e296635296671_)))
                            (_tl296633296678_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296635296671_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296633296678_))
                            (let ((_g301994_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296633296678_
                                      '0))))
                              (begin
                                (let ((_g301995_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301994_)
                                             (##vector-length _g301994_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301995_ 2)))
                                      (error "Context expects 2 values"
                                             _g301995_)))
                                (let ((_target296636296681_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301994_ 0)))
                                      (_tl296638296684_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301994_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296638296684_))
                                      (letrec ((_loop296639296687_
                                                (lambda (_hd296637296691_
                                                         _arity296643296694_
                                                         _prim296644296696_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296637296691_))
                                                      (let ((_e296640296699_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296637296691_))))
                (let ((_lp-hd296641296703_
                       (let () (declare (not safe)) (##car _e296640296699_)))
                      (_lp-tl296642296706_
                       (let () (declare (not safe)) (##cdr _e296640296699_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296641296703_))
                      (let ((_e296649296709_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296641296703_))))
                        (let ((_hd296648296713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296649296709_)))
                              (_tl296647296716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296649296709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296647296716_))
                              (let ((_g302004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296647296716_
                                        '0))))
                                (begin
                                  (let ((_g302005_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g302004_)
                                               (##vector-length _g302004_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g302005_ 2)))
                                        (error "Context expects 2 values"
                                               _g302005_)))
                                  (let ((_target296650296719_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g302004_ 0)))
                                        (_tl296652296722_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g302004_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296652296722_))
                                        (letrec ((_loop296653296725_
                                                  (lambda (_hd296651296729_
                                                           _arity296657296732_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296651296729_))
                                                        (let ((_e296654296735_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296651296729_))))
                  (let ((_lp-hd296655296739_
                         (let () (declare (not safe)) (##car _e296654296735_)))
                        (_lp-tl296656296742_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296654296735_))))
                    (_loop296653296725_
                     _lp-tl296656296742_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296655296739_ _arity296657296732_)))))
                (let ((_arity296658296745_ (reverse _arity296657296732_)))
                  (_loop296639296687_
                   _lp-tl296642296706_
                   (let ()
                     (declare (not safe))
                     (cons _arity296658296745_ _arity296643296694_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296648296713_ _prim296644296696_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296653296725_
                                           _target296650296719_
                                           '()))
                                        (_g296629296664_ _g296630296668_)))))
                              (_g296629296664_ _g296630296668_))))
                      (_g296629296664_ _g296630296668_))))
              (let ((_arity296645296749_ (reverse _arity296643296694_))
                    (_prim296646296752_ (reverse _prim296644296696_)))
                ((lambda (_L296755_ _L296757_)
                   (let ((__tmp302003
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301996
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296755_
                               _L296757_))
                            (let ((__tmp301997
                                   (lambda (_g296772296778_
                                            _g296773296781_
                                            _g296774296783_)
                                     (let ((__tmp301998
                                            (let ((__tmp302002
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301999
                                                   (let ((__tmp302000
                                                          (let ((__tmp302001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296775296786_ _g296776296789_)
                           (let ()
                             (declare (not safe))
                             (cons _g296775296786_ _g296776296789_)))))
                    (declare (not safe))
                    (foldr1 __tmp302001 '() _g296772296778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296773296781_
                                                           __tmp302000))))
                                              (declare (not safe))
                                              (cons __tmp302002 __tmp301999))))
                                       (declare (not safe))
                                       (cons __tmp301998 _g296774296783_)))))
                              (declare (not safe))
                              (foldr2 __tmp301997 '() _L296755_ _L296757_)))))
                     (declare (not safe))
                     (cons __tmp302003 __tmp301996)))
                 _arity296645296749_
                 _prim296646296752_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296639296687_
                                         _target296636296681_
                                         '()
                                         '()))
                                      (_g296629296664_ _g296630296668_)))))
                            (_g296629296664_ _g296630296668_))))
                    (_g296629296664_ _g296630296668_)))))
        (_g296628296792_ _$stx296625_)))))
