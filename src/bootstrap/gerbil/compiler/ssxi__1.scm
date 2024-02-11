(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293711_)
      (let* ((_g293715293733_
              (lambda (_g293716293729_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293716293729_))))
             (_g293714293788_
              (lambda (_g293716293737_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293716293737_))
                    (let ((_e293721293740_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293716293737_))))
                      (let ((_hd293720293744_
                             (let ()
                               (declare (not safe))
                               (##car _e293721293740_)))
                            (_tl293719293747_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293721293740_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293719293747_))
                            (let ((_e293724293750_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293719293747_))))
                              (let ((_hd293723293754_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293724293750_)))
                                    (_tl293722293757_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293724293750_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293722293757_))
                                    (let ((_e293727293760_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293722293757_))))
                                      (let ((_hd293726293764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293727293760_)))
                                            (_tl293725293767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293727293760_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293725293767_))
                                            ((lambda (_L293770_ _L293772_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293772_))
                                                   (let ((__tmp301702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301697
                                                          (let ((__tmp301699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301701
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301700
                                (let ()
                                  (declare (not safe))
                                  (cons _L293772_ '()))))
                           (declare (not safe))
                           (cons __tmp301701 __tmp301700)))
                        (__tmp301698
                         (let () (declare (not safe)) (cons _L293770_ '()))))
                    (declare (not safe))
                    (cons __tmp301699 __tmp301698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301702
                                                           __tmp301697))
                                                   (_g293715293733_
                                                    _g293716293737_)))
                                             _hd293726293764_
                                             _hd293723293754_)
                                            (_g293715293733_
                                             _g293716293737_))))
                                    (_g293715293733_ _g293716293737_))))
                            (_g293715293733_ _g293716293737_))))
                    (_g293715293733_ _g293716293737_)))))
        (_g293714293788_ _$stx293711_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293792_)
      (let* ((_g293796293825_
              (lambda (_g293797293821_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293797293821_))))
             (_g293795293925_
              (lambda (_g293797293829_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293797293829_))
                    (let ((_e293802293832_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293797293829_))))
                      (let ((_hd293801293836_
                             (let ()
                               (declare (not safe))
                               (##car _e293802293832_)))
                            (_tl293800293839_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293802293832_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293800293839_))
                            (let ((_g301703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293800293839_
                                      '0))))
                              (begin
                                (let ((_g301704_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301703_)
                                             (##vector-length _g301703_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301704_ 2)))
                                      (error "Context expects 2 values"
                                             _g301704_)))
                                (let ((_target293803293842_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301703_ 0)))
                                      (_tl293805293845_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301703_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293805293845_))
                                      (letrec ((_loop293806293848_
                                                (lambda (_hd293804293852_
                                                         _type293810293855_
                                                         _symbol293811293857_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293804293852_))
                                                      (let ((_e293807293860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293804293852_))))
                (let ((_lp-hd293808293864_
                       (let () (declare (not safe)) (##car _e293807293860_)))
                      (_lp-tl293809293867_
                       (let () (declare (not safe)) (##cdr _e293807293860_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293808293864_))
                      (let ((_e293816293870_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293808293864_))))
                        (let ((_hd293815293874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293816293870_)))
                              (_tl293814293877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293816293870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293814293877_))
                              (let ((_e293819293880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293814293877_))))
                                (let ((_hd293818293884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293819293880_)))
                                      (_tl293817293887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293819293880_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293817293887_))
                                      (_loop293806293848_
                                       _lp-tl293809293867_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293818293884_
                                               _type293810293855_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293815293874_
                                               _symbol293811293857_)))
                                      (_g293796293825_ _g293797293829_))))
                              (_g293796293825_ _g293797293829_))))
                      (_g293796293825_ _g293797293829_))))
              (let ((_type293812293890_ (reverse _type293810293855_))
                    (_symbol293813293893_ (reverse _symbol293811293857_)))
                ((lambda (_L293896_ _L293898_)
                   (let ((__tmp301711
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301705
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293896_
                               _L293898_))
                            (let ((__tmp301706
                                   (lambda (_g293913293917_
                                            _g293914293920_
                                            _g293915293922_)
                                     (let ((__tmp301707
                                            (let ((__tmp301710
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301708
                                                   (let ((__tmp301709
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293913293917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293914293920_
                                                           __tmp301709))))
                                              (declare (not safe))
                                              (cons __tmp301710 __tmp301708))))
                                       (declare (not safe))
                                       (cons __tmp301707 _g293915293922_)))))
                              (declare (not safe))
                              (foldr2 __tmp301706 '() _L293896_ _L293898_)))))
                     (declare (not safe))
                     (cons __tmp301711 __tmp301705)))
                 _type293812293890_
                 _symbol293813293893_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293806293848_
                                         _target293803293842_
                                         '()
                                         '()))
                                      (_g293796293825_ _g293797293829_)))))
                            (_g293796293825_ _g293797293829_))))
                    (_g293796293825_ _g293797293829_)))))
        (_g293795293925_ _$stx293792_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293930_)
      (let* ((___stx301262301263_ _$stx293930_)
             (_g293935293977_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301262301263_)))))
        (let ((___kont301265301266_
               (lambda (_L294105_ _L294107_ _L294108_ _L294109_)
                 (let ((__tmp301725
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301712
                        (let ((__tmp301722
                               (let ((__tmp301724
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301723
                                      (let ()
                                        (declare (not safe))
                                        (cons _L294109_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301724 __tmp301723)))
                              (__tmp301713
                               (let ((__tmp301719
                                      (let ((__tmp301721
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301720
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294108_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301721 __tmp301720)))
                                     (__tmp301714
                                      (let ((__tmp301716
                                             (let ((__tmp301718
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301717
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294107_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301718 __tmp301717)))
                                            (__tmp301715
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294105_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301716 __tmp301715))))
                                 (declare (not safe))
                                 (cons __tmp301719 __tmp301714))))
                          (declare (not safe))
                          (cons __tmp301722 __tmp301713))))
                   (declare (not safe))
                   (cons __tmp301725 __tmp301712))))
              (___kont301267301268_
               (lambda (_L294024_ _L294026_ _L294027_ _L294028_)
                 (let ((__tmp301726
                        (let ((__tmp301727
                               (let ((__tmp301728
                                      (let ((__tmp301729
                                             (let ((__tmp301730
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301730 '()))))
                                        (declare (not safe))
                                        (cons _L294024_ __tmp301729))))
                                 (declare (not safe))
                                 (cons _L294026_ __tmp301728))))
                          (declare (not safe))
                          (cons _L294027_ __tmp301727))))
                   (declare (not safe))
                   (cons _L294028_ __tmp301726)))))
          (let ((___match301301301302_
                 (lambda (_e293943294055_
                          _hd293942294059_
                          _tl293941294062_
                          _e293946294065_
                          _hd293945294069_
                          _tl293944294072_
                          _e293949294075_
                          _hd293948294079_
                          _tl293947294082_
                          _e293952294085_
                          _hd293951294089_
                          _tl293950294092_
                          _e293955294095_
                          _hd293954294099_
                          _tl293953294102_)
                   (let ((_L294105_ _hd293954294099_)
                         (_L294107_ _hd293951294089_)
                         (_L294108_ _hd293948294079_)
                         (_L294109_ _hd293945294069_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L294109_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294108_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L294107_)))
                         (___kont301265301266_
                          _L294105_
                          _L294107_
                          _L294108_
                          _L294109_)
                         (let () (declare (not safe)) (_g293935293977_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301262301263_))
                (let ((_e293943294055_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301262301263_))))
                  (let ((_tl293941294062_
                         (let () (declare (not safe)) (##cdr _e293943294055_)))
                        (_hd293942294059_
                         (let ()
                           (declare (not safe))
                           (##car _e293943294055_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293941294062_))
                        (let ((_e293946294065_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293941294062_))))
                          (let ((_tl293944294072_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293946294065_)))
                                (_hd293945294069_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293946294065_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293944294072_))
                                (let ((_e293949294075_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293944294072_))))
                                  (let ((_tl293947294082_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293949294075_)))
                                        (_hd293948294079_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293949294075_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293947294082_))
                                        (let ((_e293952294085_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293947294082_))))
                                          (let ((_tl293950294092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293952294085_)))
                                                (_hd293951294089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293952294085_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293950294092_))
                                                (let ((_e293955294095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293950294092_))))
                                                  (let ((_tl293953294102_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293955294095_)))
                                                        (_hd293954294099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293955294095_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293953294102_))
                                                        (___match301301301302_
                                                         _e293943294055_
                                                         _hd293942294059_
                                                         _tl293941294062_
                                                         _e293946294065_
                                                         _hd293945294069_
                                                         _tl293944294072_
                                                         _e293949294075_
                                                         _hd293948294079_
                                                         _tl293947294082_
                                                         _e293952294085_
                                                         _hd293951294089_
                                                         _tl293950294092_
                                                         _e293955294095_
                                                         _hd293954294099_
                                                         _tl293953294102_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293935293977_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293950294092_))
                                                    (___kont301267301268_
                                                     _hd293951294089_
                                                     _hd293948294079_
                                                     _hd293945294069_
                                                     _hd293942294059_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293935293977_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293935293977_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293935293977_)))))
                        (let () (declare (not safe)) (_g293935293977_)))))
                (let () (declare (not safe)) (_g293935293977_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx294134_)
      (let* ((_g294138294173_
              (lambda (_g294139294169_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294139294169_))))
             (_g294137294292_
              (lambda (_g294139294177_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294139294177_))
                    (let ((_e294145294180_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294139294177_))))
                      (let ((_hd294144294184_
                             (let ()
                               (declare (not safe))
                               (##car _e294145294180_)))
                            (_tl294143294187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294145294180_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294143294187_))
                            (let ((_g301731_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294143294187_
                                      '0))))
                              (begin
                                (let ((_g301732_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301731_)
                                             (##vector-length _g301731_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301732_ 2)))
                                      (error "Context expects 2 values"
                                             _g301732_)))
                                (let ((_target294146294190_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301731_ 0)))
                                      (_tl294148294193_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301731_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294148294193_))
                                      (letrec ((_loop294149294196_
                                                (lambda (_hd294147294200_
                                                         _symbol294153294203_
                                                         _method294154294205_
                                                         _type-t294155294207_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd294147294200_))
                                                      (let ((_e294150294210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd294147294200_))))
                (let ((_lp-hd294151294214_
                       (let () (declare (not safe)) (##car _e294150294210_)))
                      (_lp-tl294152294217_
                       (let () (declare (not safe)) (##cdr _e294150294210_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd294151294214_))
                      (let ((_e294161294220_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd294151294214_))))
                        (let ((_hd294160294224_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294161294220_)))
                              (_tl294159294227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294161294220_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294159294227_))
                              (let ((_e294164294230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294159294227_))))
                                (let ((_hd294163294234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294164294230_)))
                                      (_tl294162294237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294164294230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294162294237_))
                                      (let ((_e294167294240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294162294237_))))
                                        (let ((_hd294166294244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294167294240_)))
                                              (_tl294165294247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294167294240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294165294247_))
                                              (_loop294149294196_
                                               _lp-tl294152294217_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294166294244_
                                                       _symbol294153294203_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294163294234_
                                                       _method294154294205_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294160294224_
                                                       _type-t294155294207_)))
                                              (_g294138294173_
                                               _g294139294177_))))
                                      (_g294138294173_ _g294139294177_))))
                              (_g294138294173_ _g294139294177_))))
                      (_g294138294173_ _g294139294177_))))
              (let ((_symbol294156294250_ (reverse _symbol294153294203_))
                    (_method294157294253_ (reverse _method294154294205_))
                    (_type-t294158294255_ (reverse _type-t294155294207_)))
                ((lambda (_L294258_ _L294260_ _L294261_)
                   (let ((__tmp301740
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301733
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L294258_
                               _L294260_
                               _L294261_))
                            (let ((__tmp301734
                                   (lambda (_g294277294282_
                                            _g294278294285_
                                            _g294279294287_
                                            _g294280294289_)
                                     (let ((__tmp301735
                                            (let ((__tmp301739
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301736
                                                   (let ((__tmp301737
                                                          (let ((__tmp301738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g294277294282_ '()))))
                    (declare (not safe))
                    (cons _g294278294285_ __tmp301738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g294279294287_
                                                           __tmp301737))))
                                              (declare (not safe))
                                              (cons __tmp301739 __tmp301736))))
                                       (declare (not safe))
                                       (cons __tmp301735 _g294280294289_)))))
                              (declare (not safe))
                              (foldr* __tmp301734
                                      '()
                                      _L294258_
                                      _L294260_
                                      _L294261_)))))
                     (declare (not safe))
                     (cons __tmp301740 __tmp301733)))
                 _symbol294156294250_
                 _method294157294253_
                 _type-t294158294255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop294149294196_
                                         _target294146294190_
                                         '()
                                         '()
                                         '()))
                                      (_g294138294173_ _g294139294177_)))))
                            (_g294138294173_ _g294139294177_))))
                    (_g294138294173_ _g294139294177_)))))
        (_g294137294292_ _$stx294134_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx294297_)
      (let* ((_g294301294334_
              (lambda (_g294302294330_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294302294330_))))
             (_g294300294448_
              (lambda (_g294302294338_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294302294338_))
                    (let ((_e294308294341_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294302294338_))))
                      (let ((_hd294307294345_
                             (let ()
                               (declare (not safe))
                               (##car _e294308294341_)))
                            (_tl294306294348_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294308294341_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294306294348_))
                            (let ((_e294311294351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294306294348_))))
                              (let ((_hd294310294355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294311294351_)))
                                    (_tl294309294358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294311294351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294309294358_))
                                    (let ((_g301741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294309294358_
                                              '0))))
                                      (begin
                                        (let ((_g301742_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301741_)
                                                     (##vector-length
                                                      _g301741_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301742_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301742_)))
                                        (let ((_target294312294361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301741_ 0)))
                                              (_tl294314294364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301741_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294314294364_))
                                              (letrec ((_loop294315294367_
                                                        (lambda (_hd294313294371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol294319294374_
                         _method294320294376_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd294313294371_))
                      (let ((_e294316294379_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd294313294371_))))
                        (let ((_lp-hd294317294383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294316294379_)))
                              (_lp-tl294318294386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294316294379_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd294317294383_))
                              (let ((_e294325294389_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd294317294383_))))
                                (let ((_hd294324294393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294325294389_)))
                                      (_tl294323294396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294325294389_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294323294396_))
                                      (let ((_e294328294399_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294323294396_))))
                                        (let ((_hd294327294403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294328294399_)))
                                              (_tl294326294406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294328294399_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294326294406_))
                                              (_loop294315294367_
                                               _lp-tl294318294386_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294327294403_
                                                       _symbol294319294374_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294324294393_
                                                       _method294320294376_)))
                                              (_g294301294334_
                                               _g294302294338_))))
                                      (_g294301294334_ _g294302294338_))))
                              (_g294301294334_ _g294302294338_))))
                      (let ((_symbol294321294409_
                             (reverse _symbol294319294374_))
                            (_method294322294412_
                             (reverse _method294320294376_)))
                        ((lambda (_L294415_ _L294417_ _L294418_)
                           (let ((__tmp301750
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301743
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294415_
                                       _L294417_))
                                    (let ((__tmp301744
                                           (lambda (_g294436294440_
                                                    _g294437294443_
                                                    _g294438294445_)
                                             (let ((__tmp301745
                                                    (let ((__tmp301749
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301746
                                                           (let ((__tmp301747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301748
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294436294440_ '()))))
                            (declare (not safe))
                            (cons _g294437294443_ __tmp301748))))
                     (declare (not safe))
                     (cons _L294418_ __tmp301747))))
              (declare (not safe))
              (cons __tmp301749 __tmp301746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301745
                                                     _g294438294445_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301744
                                              '()
                                              _L294415_
                                              _L294417_)))))
                             (declare (not safe))
                             (cons __tmp301750 __tmp301743)))
                         _symbol294321294409_
                         _method294322294412_
                         _hd294310294355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop294315294367_
                                                 _target294312294361_
                                                 '()
                                                 '()))
                                              (_g294301294334_
                                               _g294302294338_)))))
                                    (_g294301294334_ _g294302294338_))))
                            (_g294301294334_ _g294302294338_))))
                    (_g294301294334_ _g294302294338_)))))
        (_g294300294448_ _$stx294297_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294453_)
      (let* ((_g294457294471_
              (lambda (_g294458294467_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294458294467_))))
             (_g294456294512_
              (lambda (_g294458294475_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294458294475_))
                    (let ((_e294462294478_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294458294475_))))
                      (let ((_hd294461294482_
                             (let ()
                               (declare (not safe))
                               (##car _e294462294478_)))
                            (_tl294460294485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294462294478_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294460294485_))
                            (let ((_e294465294488_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294460294485_))))
                              (let ((_hd294464294492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294465294488_)))
                                    (_tl294463294495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294465294488_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294463294495_))
                                    ((lambda (_L294498_)
                                       (let ((__tmp301755
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301751
                                              (let ((__tmp301752
                                                     (let ((__tmp301754
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301753
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301754 __tmp301753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301752 '()))))
                                         (declare (not safe))
                                         (cons __tmp301755 __tmp301751)))
                                     _hd294464294492_)
                                    (_g294457294471_ _g294458294475_))))
                            (_g294457294471_ _g294458294475_))))
                    (_g294457294471_ _g294458294475_)))))
        (_g294456294512_ _$stx294453_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294516_)
      (let* ((_g294520294566_
              (lambda (_g294521294562_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294521294562_))))
             (_g294519294719_
              (lambda (_g294521294570_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294521294570_))
                    (let ((_e294533294573_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294521294570_))))
                      (let ((_hd294532294577_
                             (let ()
                               (declare (not safe))
                               (##car _e294533294573_)))
                            (_tl294531294580_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294533294573_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294531294580_))
                            (let ((_e294536294583_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294531294580_))))
                              (let ((_hd294535294587_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294536294583_)))
                                    (_tl294534294590_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294536294583_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294534294590_))
                                    (let ((_e294539294593_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294534294590_))))
                                      (let ((_hd294538294597_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294539294593_)))
                                            (_tl294537294600_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294539294593_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294537294600_))
                                            (let ((_e294542294603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294537294600_))))
                                              (let ((_hd294541294607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294542294603_)))
                                                    (_tl294540294610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294542294603_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294540294610_))
                                                    (let ((_e294545294613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294540294610_))))
                                                      (let ((_hd294544294617_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294545294613_)))
                    (_tl294543294620_
                     (let () (declare (not safe)) (##cdr _e294545294613_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294543294620_))
                    (let ((_e294548294623_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294543294620_))))
                      (let ((_hd294547294627_
                             (let ()
                               (declare (not safe))
                               (##car _e294548294623_)))
                            (_tl294546294630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294548294623_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294546294630_))
                            (let ((_e294551294633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294546294630_))))
                              (let ((_hd294550294637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294551294633_)))
                                    (_tl294549294640_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294551294633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294549294640_))
                                    (let ((_e294554294643_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294549294640_))))
                                      (let ((_hd294553294647_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294554294643_)))
                                            (_tl294552294650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294554294643_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294552294650_))
                                            (let ((_e294557294653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294552294650_))))
                                              (let ((_hd294556294657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294557294653_)))
                                                    (_tl294555294660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294557294653_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294555294660_))
                                                    (let ((_e294560294663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294555294660_))))
                                                      (let ((_hd294559294667_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294560294663_)))
                    (_tl294558294670_
                     (let () (declare (not safe)) (##cdr _e294560294663_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294558294670_))
                    ((lambda (_L294673_
                              _L294675_
                              _L294676_
                              _L294677_
                              _L294678_
                              _L294679_
                              _L294680_
                              _L294681_
                              _L294682_)
                       (let ((__tmp301792
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301756
                              (let ((__tmp301789
                                     (let ((__tmp301791
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301790
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294682_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301791 __tmp301790)))
                                    (__tmp301757
                                     (let ((__tmp301786
                                            (let ((__tmp301788
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301787
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294681_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301788 __tmp301787)))
                                           (__tmp301758
                                            (let ((__tmp301783
                                                   (let ((__tmp301785
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301784
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301785
                                                           __tmp301784)))
                                                  (__tmp301759
                                                   (let ((__tmp301780
                                                          (let ((__tmp301782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301781
                         (let () (declare (not safe)) (cons _L294679_ '()))))
                    (declare (not safe))
                    (cons __tmp301782 __tmp301781)))
                 (__tmp301760
                  (let ((__tmp301777
                         (let ((__tmp301779
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301778
                                (let ()
                                  (declare (not safe))
                                  (cons _L294678_ '()))))
                           (declare (not safe))
                           (cons __tmp301779 __tmp301778)))
                        (__tmp301761
                         (let ((__tmp301774
                                (let ((__tmp301776
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301775
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294677_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301776 __tmp301775)))
                               (__tmp301762
                                (let ((__tmp301771
                                       (let ((__tmp301773
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301772
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294676_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301773 __tmp301772)))
                                      (__tmp301763
                                       (let ((__tmp301768
                                              (let ((__tmp301770
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301769
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294675_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301770
                                                      __tmp301769)))
                                             (__tmp301764
                                              (let ((__tmp301765
                                                     (let ((__tmp301767
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301766
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301767 __tmp301766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301765 '()))))
                                         (declare (not safe))
                                         (cons __tmp301768 __tmp301764))))
                                  (declare (not safe))
                                  (cons __tmp301771 __tmp301763))))
                           (declare (not safe))
                           (cons __tmp301774 __tmp301762))))
                    (declare (not safe))
                    (cons __tmp301777 __tmp301761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301780
                                                           __tmp301760))))
                                              (declare (not safe))
                                              (cons __tmp301783 __tmp301759))))
                                       (declare (not safe))
                                       (cons __tmp301786 __tmp301758))))
                                (declare (not safe))
                                (cons __tmp301789 __tmp301757))))
                         (declare (not safe))
                         (cons __tmp301792 __tmp301756)))
                     _hd294559294667_
                     _hd294556294657_
                     _hd294553294647_
                     _hd294550294637_
                     _hd294547294627_
                     _hd294544294617_
                     _hd294541294607_
                     _hd294538294597_
                     _hd294535294587_)
                    (_g294520294566_ _g294521294570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294520294566_
                                                     _g294521294570_))))
                                            (_g294520294566_
                                             _g294521294570_))))
                                    (_g294520294566_ _g294521294570_))))
                            (_g294520294566_ _g294521294570_))))
                    (_g294520294566_ _g294521294570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294520294566_
                                                     _g294521294570_))))
                                            (_g294520294566_
                                             _g294521294570_))))
                                    (_g294520294566_ _g294521294570_))))
                            (_g294520294566_ _g294521294570_))))
                    (_g294520294566_ _g294521294570_)))))
        (_g294519294719_ _$stx294516_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294723_)
      (let* ((_g294727294741_
              (lambda (_g294728294737_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294728294737_))))
             (_g294726294782_
              (lambda (_g294728294745_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294728294745_))
                    (let ((_e294732294748_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294728294745_))))
                      (let ((_hd294731294752_
                             (let ()
                               (declare (not safe))
                               (##car _e294732294748_)))
                            (_tl294730294755_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294732294748_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294730294755_))
                            (let ((_e294735294758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294730294755_))))
                              (let ((_hd294734294762_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294735294758_)))
                                    (_tl294733294765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294735294758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294733294765_))
                                    ((lambda (_L294768_)
                                       (let ((__tmp301797
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301793
                                              (let ((__tmp301794
                                                     (let ((__tmp301796
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301795
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301796 __tmp301795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301794 '()))))
                                         (declare (not safe))
                                         (cons __tmp301797 __tmp301793)))
                                     _hd294734294762_)
                                    (_g294727294741_ _g294728294745_))))
                            (_g294727294741_ _g294728294745_))))
                    (_g294727294741_ _g294728294745_)))))
        (_g294726294782_ _$stx294723_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294786_)
      (let* ((_g294790294804_
              (lambda (_g294791294800_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294791294800_))))
             (_g294789294845_
              (lambda (_g294791294808_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294791294808_))
                    (let ((_e294795294811_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294791294808_))))
                      (let ((_hd294794294815_
                             (let ()
                               (declare (not safe))
                               (##car _e294795294811_)))
                            (_tl294793294818_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294795294811_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294793294818_))
                            (let ((_e294798294821_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294793294818_))))
                              (let ((_hd294797294825_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294798294821_)))
                                    (_tl294796294828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294798294821_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294796294828_))
                                    ((lambda (_L294831_)
                                       (let ((__tmp301802
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301798
                                              (let ((__tmp301799
                                                     (let ((__tmp301801
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301800
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301801 __tmp301800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301799 '()))))
                                         (declare (not safe))
                                         (cons __tmp301802 __tmp301798)))
                                     _hd294797294825_)
                                    (_g294790294804_ _g294791294808_))))
                            (_g294790294804_ _g294791294808_))))
                    (_g294790294804_ _g294791294808_)))))
        (_g294789294845_ _$stx294786_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294849_)
      (let* ((_g294853294875_
              (lambda (_g294854294871_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294854294871_))))
             (_g294852294944_
              (lambda (_g294854294879_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294854294879_))
                    (let ((_e294860294882_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294854294879_))))
                      (let ((_hd294859294886_
                             (let ()
                               (declare (not safe))
                               (##car _e294860294882_)))
                            (_tl294858294889_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294860294882_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294858294889_))
                            (let ((_e294863294892_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294858294889_))))
                              (let ((_hd294862294896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294863294892_)))
                                    (_tl294861294899_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294863294892_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294861294899_))
                                    (let ((_e294866294902_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294861294899_))))
                                      (let ((_hd294865294906_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294866294902_)))
                                            (_tl294864294909_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294866294902_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294864294909_))
                                            (let ((_e294869294912_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294864294909_))))
                                              (let ((_hd294868294916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294869294912_)))
                                                    (_tl294867294919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294869294912_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294867294919_))
                                                    ((lambda (_L294922_
                                                              _L294924_
                                                              _L294925_)
                                                       (let ((__tmp301812
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301803
                      (let ((__tmp301809
                             (let ((__tmp301811
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301810
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294925_ '()))))
                               (declare (not safe))
                               (cons __tmp301811 __tmp301810)))
                            (__tmp301804
                             (let ((__tmp301806
                                    (let ((__tmp301808
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301807
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294924_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301808 __tmp301807)))
                                   (__tmp301805
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294922_ '()))))
                               (declare (not safe))
                               (cons __tmp301806 __tmp301805))))
                        (declare (not safe))
                        (cons __tmp301809 __tmp301804))))
                 (declare (not safe))
                 (cons __tmp301812 __tmp301803)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294868294916_
                                                     _hd294865294906_
                                                     _hd294862294896_)
                                                    (_g294853294875_
                                                     _g294854294879_))))
                                            (_g294853294875_
                                             _g294854294879_))))
                                    (_g294853294875_ _g294854294879_))))
                            (_g294853294875_ _g294854294879_))))
                    (_g294853294875_ _g294854294879_)))))
        (_g294852294944_ _$stx294849_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294948_)
      (let* ((_g294952294974_
              (lambda (_g294953294970_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294953294970_))))
             (_g294951295043_
              (lambda (_g294953294978_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294953294978_))
                    (let ((_e294959294981_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294953294978_))))
                      (let ((_hd294958294985_
                             (let ()
                               (declare (not safe))
                               (##car _e294959294981_)))
                            (_tl294957294988_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294959294981_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294957294988_))
                            (let ((_e294962294991_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294957294988_))))
                              (let ((_hd294961294995_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294962294991_)))
                                    (_tl294960294998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294962294991_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294960294998_))
                                    (let ((_e294965295001_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294960294998_))))
                                      (let ((_hd294964295005_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294965295001_)))
                                            (_tl294963295008_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294965295001_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294963295008_))
                                            (let ((_e294968295011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294963295008_))))
                                              (let ((_hd294967295015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294968295011_)))
                                                    (_tl294966295018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294968295011_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294966295018_))
                                                    ((lambda (_L295021_
                                                              _L295023_
                                                              _L295024_)
                                                       (let ((__tmp301822
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301813
                      (let ((__tmp301819
                             (let ((__tmp301821
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301820
                                    (let ()
                                      (declare (not safe))
                                      (cons _L295024_ '()))))
                               (declare (not safe))
                               (cons __tmp301821 __tmp301820)))
                            (__tmp301814
                             (let ((__tmp301816
                                    (let ((__tmp301818
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301817
                                           (let ()
                                             (declare (not safe))
                                             (cons _L295023_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301818 __tmp301817)))
                                   (__tmp301815
                                    (let ()
                                      (declare (not safe))
                                      (cons _L295021_ '()))))
                               (declare (not safe))
                               (cons __tmp301816 __tmp301815))))
                        (declare (not safe))
                        (cons __tmp301819 __tmp301814))))
                 (declare (not safe))
                 (cons __tmp301822 __tmp301813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294967295015_
                                                     _hd294964295005_
                                                     _hd294961294995_)
                                                    (_g294952294974_
                                                     _g294953294978_))))
                                            (_g294952294974_
                                             _g294953294978_))))
                                    (_g294952294974_ _g294953294978_))))
                            (_g294952294974_ _g294953294978_))))
                    (_g294952294974_ _g294953294978_)))))
        (_g294951295043_ _$stx294948_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx295047_)
      (let* ((___stx301330301331_ _$stx295047_)
             (_g295055295123_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301330301331_)))))
        (let ((___kont301333301334_
               (lambda (_L295401_ _L295403_)
                 (let ((__tmp301838
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301823
                        (let ((__tmp301834
                               (let ((__tmp301837
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301835
                                      (let ((__tmp301836
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301836 '()))))
                                 (declare (not safe))
                                 (cons __tmp301837 __tmp301835)))
                              (__tmp301824
                               (let ((__tmp301831
                                      (let ((__tmp301833
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301832
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295403_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301833 __tmp301832)))
                                     (__tmp301825
                                      (let ((__tmp301826
                                             (let ((__tmp301827
                                                    (let ((__tmp301828
                                                           (let ((__tmp301830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301829
                          (let () (declare (not safe)) (cons _L295401_ '()))))
                     (declare (not safe))
                     (cons __tmp301830 __tmp301829))))
              (declare (not safe))
              (cons __tmp301828 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295401_ __tmp301827))))
                                        (declare (not safe))
                                        (cons '#f __tmp301826))))
                                 (declare (not safe))
                                 (cons __tmp301831 __tmp301825))))
                          (declare (not safe))
                          (cons __tmp301834 __tmp301824))))
                   (declare (not safe))
                   (cons __tmp301838 __tmp301823))))
              (___kont301335301336_
               (lambda (_L295332_ _L295334_)
                 (let ((__tmp301839
                        (let ((__tmp301840
                               (let ((__tmp301841
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L295332_ __tmp301841))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301840))))
                   (declare (not safe))
                   (cons _L295334_ __tmp301839))))
              (___kont301337301338_
               (lambda (_L295271_ _L295273_)
                 (let ((__tmp301855
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301842
                        (let ((__tmp301851
                               (let ((__tmp301854
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301852
                                      (let ((__tmp301853
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301853 '()))))
                                 (declare (not safe))
                                 (cons __tmp301854 __tmp301852)))
                              (__tmp301843
                               (let ((__tmp301848
                                      (let ((__tmp301850
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301849
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295273_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301850 __tmp301849)))
                                     (__tmp301844
                                      (let ((__tmp301845
                                             (let ((__tmp301847
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301846
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295271_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301847
                                                     __tmp301846))))
                                        (declare (not safe))
                                        (cons __tmp301845 '()))))
                                 (declare (not safe))
                                 (cons __tmp301848 __tmp301844))))
                          (declare (not safe))
                          (cons __tmp301851 __tmp301843))))
                   (declare (not safe))
                   (cons __tmp301855 __tmp301842))))
              (___kont301339301340_
               (lambda (_L295203_ _L295205_)
                 (let ((__tmp301869
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301856
                        (let ((__tmp301865
                               (let ((__tmp301868
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301866
                                      (let ((__tmp301867
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301867 '()))))
                                 (declare (not safe))
                                 (cons __tmp301868 __tmp301866)))
                              (__tmp301857
                               (let ((__tmp301862
                                      (let ((__tmp301864
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301863
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295205_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301864 __tmp301863)))
                                     (__tmp301858
                                      (let ((__tmp301859
                                             (let ((__tmp301861
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301860
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295203_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301861
                                                     __tmp301860))))
                                        (declare (not safe))
                                        (cons __tmp301859 '()))))
                                 (declare (not safe))
                                 (cons __tmp301862 __tmp301858))))
                          (declare (not safe))
                          (cons __tmp301865 __tmp301857))))
                   (declare (not safe))
                   (cons __tmp301869 __tmp301856))))
              (___kont301341301342_
               (lambda (_L295150_ _L295152_)
                 (let ((__tmp301870
                        (let ((__tmp301871
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L295150_ __tmp301871))))
                   (declare (not safe))
                   (cons _L295152_ __tmp301870)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx301330301331_))
              (let ((_e295061295357_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx301330301331_))))
                (let ((_tl295059295364_
                       (let () (declare (not safe)) (##cdr _e295061295357_)))
                      (_hd295060295361_
                       (let () (declare (not safe)) (##car _e295061295357_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl295059295364_))
                      (let ((_e295064295367_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295059295364_))))
                        (let ((_tl295062295374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295064295367_)))
                              (_hd295063295371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295064295367_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl295062295374_))
                              (let ((_e295067295377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl295062295374_))))
                                (let ((_tl295065295384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e295067295377_)))
                                      (_hd295066295381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e295067295377_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd295066295381_))
                                      (let ((_e295068295387_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd295066295381_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e295068295387_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl295065295384_))
                                                (let ((_e295071295391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl295065295384_))))
                                                  (let ((_tl295069295398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e295071295391_)))
                                                        (_hd295070295395_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e295071295391_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295069295398_))
                                                        (___kont301333301334_
                                                         _hd295070295395_
                                                         _hd295063295371_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd295063295371_))
                                                            (let ((_e295080295318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd295063295371_))))
                      (declare (not safe))
                      (_g295055295123_))
                    (let () (declare (not safe)) (_g295055295123_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd295063295371_))
                                                    (let ((_e295080295318_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd295063295371_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e295080295318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295065295384_))
                      (___kont301335301336_ _hd295066295381_ _hd295060295361_)
                      (let () (declare (not safe)) (_g295055295123_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295065295384_))
                      (___kont301339301340_ _hd295066295381_ _hd295063295371_)
                      (let () (declare (not safe)) (_g295055295123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295065295384_))
                                                        (___kont301339301340_
                                                         _hd295066295381_
                                                         _hd295063295371_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295055295123_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd295063295371_))
                                                (let ((_e295080295318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd295063295371_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e295080295318_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295065295384_))
                                                          (___kont301335301336_
                                                           _hd295066295381_
                                                           _hd295060295361_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl295065295384_))
                      (let ((_e295098295261_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl295065295384_))))
                        (let ((_tl295096295268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295098295261_)))
                              (_hd295097295265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295098295261_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295096295268_))
                              (___kont301337301338_
                               _hd295097295265_
                               _hd295066295381_)
                              (let ()
                                (declare (not safe))
                                (_g295055295123_)))))
                      (let () (declare (not safe)) (_g295055295123_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295065295384_))
                  (___kont301339301340_ _hd295066295381_ _hd295063295371_)
                  (let () (declare (not safe)) (_g295055295123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295065295384_))
                                                    (___kont301339301340_
                                                     _hd295066295381_
                                                     _hd295063295371_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295055295123_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd295063295371_))
                                          (let ((_e295080295318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd295063295371_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e295080295318_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295065295384_))
                                                    (___kont301335301336_
                                                     _hd295066295381_
                                                     _hd295060295361_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl295065295384_))
                                                        (let ((_e295098295261_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl295065295384_))))
                  (let ((_tl295096295268_
                         (let () (declare (not safe)) (##cdr _e295098295261_)))
                        (_hd295097295265_
                         (let ()
                           (declare (not safe))
                           (##car _e295098295261_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl295096295268_))
                        (___kont301337301338_
                         _hd295097295265_
                         _hd295066295381_)
                        (let () (declare (not safe)) (_g295055295123_)))))
                (let () (declare (not safe)) (_g295055295123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295065295384_))
                                                    (___kont301339301340_
                                                     _hd295066295381_
                                                     _hd295063295371_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295055295123_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl295065295384_))
                                              (___kont301339301340_
                                               _hd295066295381_
                                               _hd295063295371_)
                                              (let ()
                                                (declare (not safe))
                                                (_g295055295123_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd295063295371_))
                                  (let ((_e295080295318_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd295063295371_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295062295374_))
                                        (___kont301341301342_
                                         _hd295063295371_
                                         _hd295060295361_)
                                        (let ()
                                          (declare (not safe))
                                          (_g295055295123_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295062295374_))
                                      (___kont301341301342_
                                       _hd295063295371_
                                       _hd295060295361_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295055295123_)))))))
                      (let () (declare (not safe)) (_g295055295123_)))))
              (let () (declare (not safe)) (_g295055295123_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295425_)
      (let* ((___stx301470301471_ _$stx295425_)
             (_g295430295485_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301470301471_)))))
        (let ((___kont301473301474_
               (lambda (_L295670_ _L295672_)
                 (let ((__tmp301887
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301872
                        (let ((__tmp301883
                               (let ((__tmp301886
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301884
                                      (let ((__tmp301885
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301885 '()))))
                                 (declare (not safe))
                                 (cons __tmp301886 __tmp301884)))
                              (__tmp301873
                               (let ((__tmp301874
                                      (let ((__tmp301882
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301875
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295670_
                                                  _L295672_))
                                               (let ((__tmp301876
                                                      (lambda (_g295689295693_
                                                               _g295690295696_
                                                               _g295691295698_)
                                                        (let ((__tmp301877
                                                               (let ((__tmp301881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301878
                              (let ((__tmp301879
                                     (let ((__tmp301880
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295689295693_ '()))))
                                       (declare (not safe))
                                       (cons _g295690295696_ __tmp301880))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301879))))
                         (declare (not safe))
                         (cons __tmp301881 __tmp301878))))
                  (declare (not safe))
                  (cons __tmp301877 _g295691295698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301876
                                                         '()
                                                         _L295670_
                                                         _L295672_)))))
                                        (declare (not safe))
                                        (cons __tmp301882 __tmp301875))))
                                 (declare (not safe))
                                 (cons __tmp301874 '()))))
                          (declare (not safe))
                          (cons __tmp301883 __tmp301873))))
                   (declare (not safe))
                   (cons __tmp301887 __tmp301872))))
              (___kont301477301478_
               (lambda (_L295556_ _L295558_)
                 (let ((__tmp301902
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301888
                        (let ((__tmp301898
                               (let ((__tmp301901
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301899
                                      (let ((__tmp301900
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301900 '()))))
                                 (declare (not safe))
                                 (cons __tmp301901 __tmp301899)))
                              (__tmp301889
                               (let ((__tmp301890
                                      (let ((__tmp301897
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301891
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295556_
                                                  _L295558_))
                                               (let ((__tmp301892
                                                      (lambda (_g295573295577_
                                                               _g295574295580_
                                                               _g295575295582_)
                                                        (let ((__tmp301893
                                                               (let ((__tmp301896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301894
                              (let ((__tmp301895
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295573295577_ '()))))
                                (declare (not safe))
                                (cons _g295574295580_ __tmp301895))))
                         (declare (not safe))
                         (cons __tmp301896 __tmp301894))))
                  (declare (not safe))
                  (cons __tmp301893 _g295575295582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301892
                                                         '()
                                                         _L295556_
                                                         _L295558_)))))
                                        (declare (not safe))
                                        (cons __tmp301897 __tmp301891))))
                                 (declare (not safe))
                                 (cons __tmp301890 '()))))
                          (declare (not safe))
                          (cons __tmp301898 __tmp301889))))
                   (declare (not safe))
                   (cons __tmp301902 __tmp301888)))))
          (let* ((___match301521301522_
                  (lambda (_e295462295492_
                           _hd295461295496_
                           _tl295460295499_
                           ___splice301479301480_
                           _target295463295502_
                           _tl295465295505_)
                    (letrec ((_loop295466295508_
                              (lambda (_hd295464295512_
                                       _dispatch295470295515_
                                       _arity295471295517_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295464295512_))
                                    (let ((_e295467295520_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295464295512_))))
                                      (let ((_lp-tl295469295527_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295467295520_)))
                                            (_lp-hd295468295524_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295467295520_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295468295524_))
                                            (let ((_e295476295530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295468295524_))))
                                              (let ((_tl295474295537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295476295530_)))
                                                    (_hd295475295534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295476295530_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295474295537_))
                                                    (let ((_e295479295540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295474295537_))))
                                                      (let ((_tl295477295547_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295479295540_)))
                    (_hd295478295544_
                     (let () (declare (not safe)) (##car _e295479295540_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295477295547_))
                    (_loop295466295508_
                     _lp-tl295469295527_
                     (let ()
                       (declare (not safe))
                       (cons _hd295478295544_ _dispatch295470295515_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295475295534_ _arity295471295517_)))
                    (let () (declare (not safe)) (_g295430295485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295430295485_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295430295485_)))))
                                    (let ((_arity295473295553_
                                           (reverse _arity295471295517_))
                                          (_dispatch295472295550_
                                           (reverse _dispatch295470295515_)))
                                      (___kont301477301478_
                                       _dispatch295472295550_
                                       _arity295473295553_))))))
                      (_loop295466295508_ _target295463295502_ '() '()))))
                 (___match301513301514_
                  (lambda (_e295462295492_ _hd295461295496_ _tl295460295499_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295460295499_))
                        (let ((___splice301479301480_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295460295499_
                                  '0))))
                          (let ((_tl295465295505_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301479301480_ '1)))
                                (_target295463295502_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301479301480_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295465295505_))
                                (___match301521301522_
                                 _e295462295492_
                                 _hd295461295496_
                                 _tl295460295499_
                                 ___splice301479301480_
                                 _target295463295502_
                                 _tl295465295505_)
                                (let ()
                                  (declare (not safe))
                                  (_g295430295485_)))))
                        (let () (declare (not safe)) (_g295430295485_)))))
                 (___match301507301508_
                  (lambda (_e295436295592_
                           _hd295435295596_
                           _tl295434295599_
                           _e295439295602_
                           _hd295438295606_
                           _tl295437295609_
                           _e295440295612_
                           ___splice301475301476_
                           _target295441295616_
                           _tl295443295619_)
                    (letrec ((_loop295444295622_
                              (lambda (_hd295442295626_
                                       _dispatch295448295629_
                                       _arity295449295631_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295442295626_))
                                    (let ((_e295445295634_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295442295626_))))
                                      (let ((_lp-tl295447295641_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295445295634_)))
                                            (_lp-hd295446295638_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295445295634_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295446295638_))
                                            (let ((_e295454295644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295446295638_))))
                                              (let ((_tl295452295651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295454295644_)))
                                                    (_hd295453295648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295454295644_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295452295651_))
                                                    (let ((_e295457295654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295452295651_))))
                                                      (let ((_tl295455295661_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295457295654_)))
                    (_hd295456295658_
                     (let () (declare (not safe)) (##car _e295457295654_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295455295661_))
                    (_loop295444295622_
                     _lp-tl295447295641_
                     (let ()
                       (declare (not safe))
                       (cons _hd295456295658_ _dispatch295448295629_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295453295648_ _arity295449295631_)))
                    (___match301513301514_
                     _e295436295592_
                     _hd295435295596_
                     _tl295434295599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301513301514_
                                                     _e295436295592_
                                                     _hd295435295596_
                                                     _tl295434295599_))))
                                            (___match301513301514_
                                             _e295436295592_
                                             _hd295435295596_
                                             _tl295434295599_))))
                                    (let ((_arity295451295667_
                                           (reverse _arity295449295631_))
                                          (_dispatch295450295664_
                                           (reverse _dispatch295448295629_)))
                                      (___kont301473301474_
                                       _dispatch295450295664_
                                       _arity295451295667_))))))
                      (_loop295444295622_ _target295441295616_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301470301471_))
                (let ((_e295436295592_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301470301471_))))
                  (let ((_tl295434295599_
                         (let () (declare (not safe)) (##cdr _e295436295592_)))
                        (_hd295435295596_
                         (let ()
                           (declare (not safe))
                           (##car _e295436295592_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295434295599_))
                        (let ((_e295439295602_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295434295599_))))
                          (let ((_tl295437295609_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295439295602_)))
                                (_hd295438295606_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295439295602_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295438295606_))
                                (let ((_e295440295612_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295438295606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295440295612_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295437295609_))
                                          (let ((___splice301475301476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295437295609_
                                                    '0))))
                                            (let ((_tl295443295619_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301475301476_
                                                      '1)))
                                                  (_target295441295616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301475301476_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295443295619_))
                                                  (___match301507301508_
                                                   _e295436295592_
                                                   _hd295435295596_
                                                   _tl295434295599_
                                                   _e295439295602_
                                                   _hd295438295606_
                                                   _tl295437295609_
                                                   _e295440295612_
                                                   ___splice301475301476_
                                                   _target295441295616_
                                                   _tl295443295619_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295434295599_))
                                                      (let ((___splice301479301480_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295434295599_ '0))))
                (let ((_tl295465295505_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301479301480_ '1)))
                      (_target295463295502_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301479301480_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295465295505_))
                      (___match301521301522_
                       _e295436295592_
                       _hd295435295596_
                       _tl295434295599_
                       ___splice301479301480_
                       _target295463295502_
                       _tl295465295505_)
                      (let () (declare (not safe)) (_g295430295485_)))))
              (let () (declare (not safe)) (_g295430295485_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295434295599_))
                                              (let ((___splice301479301480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295434295599_
                                                        '0))))
                                                (let ((_tl295465295505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301479301480_
                                                          '1)))
                                                      (_target295463295502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301479301480_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295465295505_))
                                                      (___match301521301522_
                                                       _e295436295592_
                                                       _hd295435295596_
                                                       _tl295434295599_
                                                       ___splice301479301480_
                                                       _target295463295502_
                                                       _tl295465295505_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295430295485_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295430295485_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295434295599_))
                                          (let ((___splice301479301480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295434295599_
                                                    '0))))
                                            (let ((_tl295465295505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301479301480_
                                                      '1)))
                                                  (_target295463295502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301479301480_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295465295505_))
                                                  (___match301521301522_
                                                   _e295436295592_
                                                   _hd295435295596_
                                                   _tl295434295599_
                                                   ___splice301479301480_
                                                   _target295463295502_
                                                   _tl295465295505_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295430295485_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295430295485_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295434295599_))
                                    (let ((___splice301479301480_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295434295599_
                                              '0))))
                                      (let ((_tl295465295505_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301479301480_
                                                '1)))
                                            (_target295463295502_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301479301480_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295465295505_))
                                            (___match301521301522_
                                             _e295436295592_
                                             _hd295435295596_
                                             _tl295434295599_
                                             ___splice301479301480_
                                             _target295463295502_
                                             _tl295465295505_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295430295485_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295430295485_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295434295599_))
                            (let ((___splice301479301480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295434295599_
                                      '0))))
                              (let ((_tl295465295505_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301479301480_
                                        '1)))
                                    (_target295463295502_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301479301480_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295465295505_))
                                    (___match301521301522_
                                     _e295436295592_
                                     _hd295435295596_
                                     _tl295434295599_
                                     ___splice301479301480_
                                     _target295463295502_
                                     _tl295465295505_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295430295485_)))))
                            (let () (declare (not safe)) (_g295430295485_))))))
                (let () (declare (not safe)) (_g295430295485_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295707_)
      (let* ((_g295711295729_
              (lambda (_g295712295725_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295712295725_))))
             (_g295710295784_
              (lambda (_g295712295733_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295712295733_))
                    (let ((_e295717295736_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295712295733_))))
                      (let ((_hd295716295740_
                             (let ()
                               (declare (not safe))
                               (##car _e295717295736_)))
                            (_tl295715295743_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295717295736_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295715295743_))
                            (let ((_e295720295746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295715295743_))))
                              (let ((_hd295719295750_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295720295746_)))
                                    (_tl295718295753_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295720295746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295718295753_))
                                    (let ((_e295723295756_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295718295753_))))
                                      (let ((_hd295722295760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295723295756_)))
                                            (_tl295721295763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295723295756_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295721295763_))
                                            ((lambda (_L295766_ _L295768_)
                                               (let ((__tmp301916
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301903
                                                      (let ((__tmp301912
                                                             (let ((__tmp301915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301913
                            (let ((__tmp301914
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301914 '()))))
                       (declare (not safe))
                       (cons __tmp301915 __tmp301913)))
                    (__tmp301904
                     (let ((__tmp301909
                            (let ((__tmp301911
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301910
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295768_ '()))))
                              (declare (not safe))
                              (cons __tmp301911 __tmp301910)))
                           (__tmp301905
                            (let ((__tmp301906
                                   (let ((__tmp301908
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301907
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295766_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301908 __tmp301907))))
                              (declare (not safe))
                              (cons __tmp301906 '()))))
                       (declare (not safe))
                       (cons __tmp301909 __tmp301905))))
                (declare (not safe))
                (cons __tmp301912 __tmp301904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301916
                                                       __tmp301903)))
                                             _hd295722295760_
                                             _hd295719295750_)
                                            (_g295711295729_
                                             _g295712295733_))))
                                    (_g295711295729_ _g295712295733_))))
                            (_g295711295729_ _g295712295733_))))
                    (_g295711295729_ _g295712295733_)))))
        (_g295710295784_ _$stx295707_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295788_)
      (let* ((_g295792295810_
              (lambda (_g295793295806_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295793295806_))))
             (_g295791295865_
              (lambda (_g295793295814_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295793295814_))
                    (let ((_e295798295817_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295793295814_))))
                      (let ((_hd295797295821_
                             (let ()
                               (declare (not safe))
                               (##car _e295798295817_)))
                            (_tl295796295824_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295798295817_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295796295824_))
                            (let ((_e295801295827_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295796295824_))))
                              (let ((_hd295800295831_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295801295827_)))
                                    (_tl295799295834_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295801295827_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295799295834_))
                                    (let ((_e295804295837_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295799295834_))))
                                      (let ((_hd295803295841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295804295837_)))
                                            (_tl295802295844_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295804295837_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295802295844_))
                                            ((lambda (_L295847_ _L295849_)
                                               (let ((__tmp301930
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301917
                                                      (let ((__tmp301926
                                                             (let ((__tmp301929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301927
                            (let ((__tmp301928
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301928 '()))))
                       (declare (not safe))
                       (cons __tmp301929 __tmp301927)))
                    (__tmp301918
                     (let ((__tmp301923
                            (let ((__tmp301925
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301924
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295849_ '()))))
                              (declare (not safe))
                              (cons __tmp301925 __tmp301924)))
                           (__tmp301919
                            (let ((__tmp301920
                                   (let ((__tmp301922
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301921
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295847_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301922 __tmp301921))))
                              (declare (not safe))
                              (cons __tmp301920 '()))))
                       (declare (not safe))
                       (cons __tmp301923 __tmp301919))))
                (declare (not safe))
                (cons __tmp301926 __tmp301918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301930
                                                       __tmp301917)))
                                             _hd295803295841_
                                             _hd295800295831_)
                                            (_g295792295810_
                                             _g295793295814_))))
                                    (_g295792295810_ _g295793295814_))))
                            (_g295792295810_ _g295793295814_))))
                    (_g295792295810_ _g295793295814_)))))
        (_g295791295865_ _$stx295788_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295869_)
      (let* ((___stx301524301525_ _$stx295869_)
             (_g295876295947_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301524301525_)))))
        (let ((___kont301527301528_
               (lambda (_L296238_ _L296240_)
                 (let ((__tmp301936
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301931
                        (let ((__tmp301932
                               (let ((__tmp301933
                                      (let ((__tmp301935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301934
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296238_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301935 __tmp301934))))
                                 (declare (not safe))
                                 (cons __tmp301933 '()))))
                          (declare (not safe))
                          (cons _L296240_ __tmp301932))))
                   (declare (not safe))
                   (cons __tmp301936 __tmp301931))))
              (___kont301529301530_
               (lambda (_L296157_ _L296159_)
                 (let ((__tmp301945
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301937
                        (let ((__tmp301938
                               (let ((__tmp301939
                                      (let ((__tmp301944
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301940
                                             (let ((__tmp301941
                                                    (lambda (_g296178296181_
                                                             _g296179296184_)
                                                      (let ((__tmp301942
                                                             (let ((__tmp301943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296178296181_ __tmp301943))))
                (declare (not safe))
                (cons __tmp301942 _g296179296184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301941
                                                       '()
                                                       _L296157_))))
                                        (declare (not safe))
                                        (cons __tmp301944 __tmp301940))))
                                 (declare (not safe))
                                 (cons __tmp301939 '()))))
                          (declare (not safe))
                          (cons _L296159_ __tmp301938))))
                   (declare (not safe))
                   (cons __tmp301945 __tmp301937))))
              (___kont301533301534_
               (lambda (_L296069_ _L296071_)
                 (let ((__tmp301952
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301946
                        (let ((__tmp301947
                               (let ((__tmp301948
                                      (let ((__tmp301951
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301949
                                             (let ((__tmp301950
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L296069_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301950))))
                                        (declare (not safe))
                                        (cons __tmp301951 __tmp301949))))
                                 (declare (not safe))
                                 (cons __tmp301948 '()))))
                          (declare (not safe))
                          (cons _L296071_ __tmp301947))))
                   (declare (not safe))
                   (cons __tmp301952 __tmp301946))))
              (___kont301535301536_
               (lambda (_L296004_ _L296006_)
                 (let ((__tmp301962
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301953
                        (let ((__tmp301954
                               (let ((__tmp301955
                                      (let ((__tmp301961
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301956
                                             (let ((__tmp301957
                                                    (let ((__tmp301958
                                                           (lambda (_g296023296026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g296024296029_)
                     (let ((__tmp301959
                            (let ((__tmp301960
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g296023296026_ __tmp301960))))
                       (declare (not safe))
                       (cons __tmp301959 _g296024296029_)))))
              (declare (not safe))
              (foldr1 __tmp301958 '() _L296004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301957))))
                                        (declare (not safe))
                                        (cons __tmp301961 __tmp301956))))
                                 (declare (not safe))
                                 (cons __tmp301955 '()))))
                          (declare (not safe))
                          (cons _L296006_ __tmp301954))))
                   (declare (not safe))
                   (cons __tmp301962 __tmp301953)))))
          (let* ((___match301643301644_
                  (lambda (_e295929295954_
                           _hd295928295958_
                           _tl295927295961_
                           _e295932295964_
                           _hd295931295968_
                           _tl295930295971_
                           ___splice301537301538_
                           _target295933295974_
                           _tl295935295977_)
                    (letrec ((_loop295936295980_
                              (lambda (_hd295934295984_ _arity295940295987_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295934295984_))
                                    (let ((_e295937295990_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295934295984_))))
                                      (let ((_lp-tl295939295997_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295937295990_)))
                                            (_lp-hd295938295994_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295937295990_))))
                                        (_loop295936295980_
                                         _lp-tl295939295997_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295938295994_
                                                 _arity295940295987_)))))
                                    (let ((_arity295941296000_
                                           (reverse _arity295940295987_)))
                                      (___kont301535301536_
                                       _arity295941296000_
                                       _hd295931295968_))))))
                      (_loop295936295980_ _target295933295974_ '()))))
                 (___match301603301604_
                  (lambda (_e295897296093_
                           _hd295896296097_
                           _tl295895296100_
                           _e295900296103_
                           _hd295899296107_
                           _tl295898296110_
                           _e295903296113_
                           _hd295902296117_
                           _tl295901296120_
                           _e295904296123_
                           ___splice301531301532_
                           _target295905296127_
                           _tl295907296130_)
                    (letrec ((_loop295908296133_
                              (lambda (_hd295906296137_ _arity295912296140_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295906296137_))
                                    (let ((_e295909296143_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295906296137_))))
                                      (let ((_lp-tl295911296150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295909296143_)))
                                            (_lp-hd295910296147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295909296143_))))
                                        (_loop295908296133_
                                         _lp-tl295911296150_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295910296147_
                                                 _arity295912296140_)))))
                                    (let ((_arity295913296153_
                                           (reverse _arity295912296140_)))
                                      (___kont301529301530_
                                       _arity295913296153_
                                       _hd295899296107_))))))
                      (_loop295908296133_ _target295905296127_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301524301525_))
                (let ((_e295882296194_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301524301525_))))
                  (let ((_tl295880296201_
                         (let () (declare (not safe)) (##cdr _e295882296194_)))
                        (_hd295881296198_
                         (let ()
                           (declare (not safe))
                           (##car _e295882296194_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295880296201_))
                        (let ((_e295885296204_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295880296201_))))
                          (let ((_tl295883296211_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295885296204_)))
                                (_hd295884296208_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295885296204_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295883296211_))
                                (let ((_e295888296214_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295883296211_))))
                                  (let ((_tl295886296221_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295888296214_)))
                                        (_hd295887296218_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295888296214_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295887296218_))
                                        (let ((_e295889296224_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295887296218_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295889296224_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295886296221_))
                                                  (let ((_e295892296228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295886296221_))))
                                                    (let ((_tl295890296235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295892296228_)))
                                                          (_hd295891296232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295892296228_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295890296235_))
                                                          (___kont301527301528_
                                                           _hd295891296232_
                                                           _hd295884296208_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295886296221_))
                      (let ((___splice301531301532_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295886296221_ '0))))
                        (let ((_tl295907296130_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301531301532_ '1)))
                              (_target295905296127_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301531301532_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295907296130_))
                              (___match301603301604_
                               _e295882296194_
                               _hd295881296198_
                               _tl295880296201_
                               _e295885296204_
                               _hd295884296208_
                               _tl295883296211_
                               _e295888296214_
                               _hd295887296218_
                               _tl295886296221_
                               _e295889296224_
                               ___splice301531301532_
                               _target295905296127_
                               _tl295907296130_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295883296211_))
                                  (let ((___splice301537301538_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295883296211_
                                            '0))))
                                    (let ((_tl295935295977_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301537301538_
                                              '1)))
                                          (_target295933295974_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301537301538_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295935295977_))
                                          (___match301643301644_
                                           _e295882296194_
                                           _hd295881296198_
                                           _tl295880296201_
                                           _e295885296204_
                                           _hd295884296208_
                                           _tl295883296211_
                                           ___splice301537301538_
                                           _target295933295974_
                                           _tl295935295977_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295876295947_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295876295947_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295883296211_))
                          (let ((___splice301537301538_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295883296211_
                                    '0))))
                            (let ((_tl295935295977_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301537301538_ '1)))
                                  (_target295933295974_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301537301538_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295935295977_))
                                  (___match301643301644_
                                   _e295882296194_
                                   _hd295881296198_
                                   _tl295880296201_
                                   _e295885296204_
                                   _hd295884296208_
                                   _tl295883296211_
                                   ___splice301537301538_
                                   _target295933295974_
                                   _tl295935295977_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295876295947_)))))
                          (let () (declare (not safe)) (_g295876295947_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295886296221_))
                                                      (let ((___splice301531301532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295886296221_ '0))))
                (let ((_tl295907296130_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301531301532_ '1)))
                      (_target295905296127_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301531301532_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295907296130_))
                      (___match301603301604_
                       _e295882296194_
                       _hd295881296198_
                       _tl295880296201_
                       _e295885296204_
                       _hd295884296208_
                       _tl295883296211_
                       _e295888296214_
                       _hd295887296218_
                       _tl295886296221_
                       _e295889296224_
                       ___splice301531301532_
                       _target295905296127_
                       _tl295907296130_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295886296221_))
                          (___kont301533301534_
                           _hd295887296218_
                           _hd295884296208_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295883296211_))
                              (let ((___splice301537301538_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295883296211_
                                        '0))))
                                (let ((_tl295935295977_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301537301538_
                                          '1)))
                                      (_target295933295974_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301537301538_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295935295977_))
                                      (___match301643301644_
                                       _e295882296194_
                                       _hd295881296198_
                                       _tl295880296201_
                                       _e295885296204_
                                       _hd295884296208_
                                       _tl295883296211_
                                       ___splice301537301538_
                                       _target295933295974_
                                       _tl295935295977_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295876295947_)))))
                              (let ()
                                (declare (not safe))
                                (_g295876295947_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295886296221_))
                  (___kont301533301534_ _hd295887296218_ _hd295884296208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295883296211_))
                      (let ((___splice301537301538_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295883296211_ '0))))
                        (let ((_tl295935295977_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301537301538_ '1)))
                              (_target295933295974_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301537301538_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295935295977_))
                              (___match301643301644_
                               _e295882296194_
                               _hd295881296198_
                               _tl295880296201_
                               _e295885296204_
                               _hd295884296208_
                               _tl295883296211_
                               ___splice301537301538_
                               _target295933295974_
                               _tl295935295977_)
                              (let ()
                                (declare (not safe))
                                (_g295876295947_)))))
                      (let () (declare (not safe)) (_g295876295947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295886296221_))
                                                  (___kont301533301534_
                                                   _hd295887296218_
                                                   _hd295884296208_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295883296211_))
                                                      (let ((___splice301537301538_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295883296211_ '0))))
                (let ((_tl295935295977_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301537301538_ '1)))
                      (_target295933295974_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301537301538_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295935295977_))
                      (___match301643301644_
                       _e295882296194_
                       _hd295881296198_
                       _tl295880296201_
                       _e295885296204_
                       _hd295884296208_
                       _tl295883296211_
                       ___splice301537301538_
                       _target295933295974_
                       _tl295935295977_)
                      (let () (declare (not safe)) (_g295876295947_)))))
              (let () (declare (not safe)) (_g295876295947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295886296221_))
                                            (___kont301533301534_
                                             _hd295887296218_
                                             _hd295884296208_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295883296211_))
                                                (let ((___splice301537301538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295883296211_
                                                          '0))))
                                                  (let ((_tl295935295977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301537301538_
                                                            '1)))
                                                        (_target295933295974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301537301538_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295935295977_))
                                                        (___match301643301644_
                                                         _e295882296194_
                                                         _hd295881296198_
                                                         _tl295880296201_
                                                         _e295885296204_
                                                         _hd295884296208_
                                                         _tl295883296211_
                                                         ___splice301537301538_
                                                         _target295933295974_
                                                         _tl295935295977_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295876295947_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295876295947_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295883296211_))
                                    (let ((___splice301537301538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295883296211_
                                              '0))))
                                      (let ((_tl295935295977_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301537301538_
                                                '1)))
                                            (_target295933295974_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301537301538_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295935295977_))
                                            (___match301643301644_
                                             _e295882296194_
                                             _hd295881296198_
                                             _tl295880296201_
                                             _e295885296204_
                                             _hd295884296208_
                                             _tl295883296211_
                                             ___splice301537301538_
                                             _target295933295974_
                                             _tl295935295977_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295876295947_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295876295947_))))))
                        (let () (declare (not safe)) (_g295876295947_)))))
                (let () (declare (not safe)) (_g295876295947_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx296264_)
      (let* ((___stx301646301647_ _$stx296264_)
             (_g296269296304_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301646301647_)))))
        (let ((___kont301649301650_
               (lambda (_L296426_ _L296428_)
                 (let ((__tmp301968
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301963
                        (let ((__tmp301964
                               (let ((__tmp301965
                                      (let ((__tmp301967
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301966
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296426_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301967 __tmp301966))))
                                 (declare (not safe))
                                 (cons __tmp301965 '()))))
                          (declare (not safe))
                          (cons _L296428_ __tmp301964))))
                   (declare (not safe))
                   (cons __tmp301968 __tmp301963))))
              (___kont301651301652_
               (lambda (_L296361_ _L296363_)
                 (let ((__tmp301977
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301969
                        (let ((__tmp301970
                               (let ((__tmp301971
                                      (let ((__tmp301976
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301972
                                             (let ((__tmp301973
                                                    (lambda (_g296380296383_
                                                             _g296381296386_)
                                                      (let ((__tmp301974
                                                             (let ((__tmp301975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296380296383_ __tmp301975))))
                (declare (not safe))
                (cons __tmp301974 _g296381296386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301973
                                                       '()
                                                       _L296361_))))
                                        (declare (not safe))
                                        (cons __tmp301976 __tmp301972))))
                                 (declare (not safe))
                                 (cons __tmp301971 '()))))
                          (declare (not safe))
                          (cons _L296363_ __tmp301970))))
                   (declare (not safe))
                   (cons __tmp301977 __tmp301969)))))
          (let ((___match301695301696_
                 (lambda (_e296286296311_
                          _hd296285296315_
                          _tl296284296318_
                          _e296289296321_
                          _hd296288296325_
                          _tl296287296328_
                          ___splice301653301654_
                          _target296290296331_
                          _tl296292296334_)
                   (letrec ((_loop296293296337_
                             (lambda (_hd296291296341_ _arity296297296344_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd296291296341_))
                                   (let ((_e296294296347_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd296291296341_))))
                                     (let ((_lp-tl296296296354_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e296294296347_)))
                                           (_lp-hd296295296351_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e296294296347_))))
                                       (_loop296293296337_
                                        _lp-tl296296296354_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd296295296351_
                                                _arity296297296344_)))))
                                   (let ((_arity296298296357_
                                          (reverse _arity296297296344_)))
                                     (___kont301651301652_
                                      _arity296298296357_
                                      _hd296288296325_))))))
                     (_loop296293296337_ _target296290296331_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301646301647_))
                (let ((_e296275296396_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301646301647_))))
                  (let ((_tl296273296403_
                         (let () (declare (not safe)) (##cdr _e296275296396_)))
                        (_hd296274296400_
                         (let ()
                           (declare (not safe))
                           (##car _e296275296396_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296273296403_))
                        (let ((_e296278296406_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296273296403_))))
                          (let ((_tl296276296413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296278296406_)))
                                (_hd296277296410_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296278296406_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296276296413_))
                                (let ((_e296281296416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296276296413_))))
                                  (let ((_tl296279296423_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296281296416_)))
                                        (_hd296280296420_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296281296416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296279296423_))
                                        (___kont301649301650_
                                         _hd296280296420_
                                         _hd296277296410_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl296276296413_))
                                            (let ((___splice301653301654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl296276296413_
                                                      '0))))
                                              (let ((_tl296292296334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301653301654_
                                                        '1)))
                                                    (_target296290296331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301653301654_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296292296334_))
                                                    (___match301695301696_
                                                     _e296275296396_
                                                     _hd296274296400_
                                                     _tl296273296403_
                                                     _e296278296406_
                                                     _hd296277296410_
                                                     _tl296276296413_
                                                     ___splice301653301654_
                                                     _target296290296331_
                                                     _tl296292296334_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296269296304_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g296269296304_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296276296413_))
                                    (let ((___splice301653301654_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296276296413_
                                              '0))))
                                      (let ((_tl296292296334_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301653301654_
                                                '1)))
                                            (_target296290296331_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301653301654_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296292296334_))
                                            (___match301695301696_
                                             _e296275296396_
                                             _hd296274296400_
                                             _tl296273296403_
                                             _e296278296406_
                                             _hd296277296410_
                                             _tl296276296413_
                                             ___splice301653301654_
                                             _target296290296331_
                                             _tl296292296334_)
                                            (let ()
                                              (declare (not safe))
                                              (_g296269296304_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g296269296304_))))))
                        (let () (declare (not safe)) (_g296269296304_)))))
                (let () (declare (not safe)) (_g296269296304_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296448_)
      (let* ((_g296452296487_
              (lambda (_g296453296483_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296453296483_))))
             (_g296451296615_
              (lambda (_g296453296491_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296453296491_))
                    (let ((_e296458296494_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296453296491_))))
                      (let ((_hd296457296498_
                             (let ()
                               (declare (not safe))
                               (##car _e296458296494_)))
                            (_tl296456296501_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296458296494_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296456296501_))
                            (let ((_g301978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296456296501_
                                      '0))))
                              (begin
                                (let ((_g301979_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301978_)
                                             (##vector-length _g301978_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301979_ 2)))
                                      (error "Context expects 2 values"
                                             _g301979_)))
                                (let ((_target296459296504_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301978_ 0)))
                                      (_tl296461296507_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301978_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296461296507_))
                                      (letrec ((_loop296462296510_
                                                (lambda (_hd296460296514_
                                                         _arity296466296517_
                                                         _prim296467296519_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296460296514_))
                                                      (let ((_e296463296522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296460296514_))))
                (let ((_lp-hd296464296526_
                       (let () (declare (not safe)) (##car _e296463296522_)))
                      (_lp-tl296465296529_
                       (let () (declare (not safe)) (##cdr _e296463296522_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296464296526_))
                      (let ((_e296472296532_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296464296526_))))
                        (let ((_hd296471296536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296472296532_)))
                              (_tl296470296539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296472296532_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296470296539_))
                              (let ((_g301988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296470296539_
                                        '0))))
                                (begin
                                  (let ((_g301989_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301988_)
                                               (##vector-length _g301988_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301989_ 2)))
                                        (error "Context expects 2 values"
                                               _g301989_)))
                                  (let ((_target296473296542_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301988_ 0)))
                                        (_tl296475296545_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301988_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296475296545_))
                                        (letrec ((_loop296476296548_
                                                  (lambda (_hd296474296552_
                                                           _arity296480296555_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296474296552_))
                                                        (let ((_e296477296558_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296474296552_))))
                  (let ((_lp-hd296478296562_
                         (let () (declare (not safe)) (##car _e296477296558_)))
                        (_lp-tl296479296565_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296477296558_))))
                    (_loop296476296548_
                     _lp-tl296479296565_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296478296562_ _arity296480296555_)))))
                (let ((_arity296481296568_ (reverse _arity296480296555_)))
                  (_loop296462296510_
                   _lp-tl296465296529_
                   (let ()
                     (declare (not safe))
                     (cons _arity296481296568_ _arity296466296517_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296471296536_ _prim296467296519_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296476296548_
                                           _target296473296542_
                                           '()))
                                        (_g296452296487_ _g296453296491_)))))
                              (_g296452296487_ _g296453296491_))))
                      (_g296452296487_ _g296453296491_))))
              (let ((_arity296468296572_ (reverse _arity296466296517_))
                    (_prim296469296575_ (reverse _prim296467296519_)))
                ((lambda (_L296578_ _L296580_)
                   (let ((__tmp301987
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301980
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296578_
                               _L296580_))
                            (let ((__tmp301981
                                   (lambda (_g296595296601_
                                            _g296596296604_
                                            _g296597296606_)
                                     (let ((__tmp301982
                                            (let ((__tmp301986
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301983
                                                   (let ((__tmp301984
                                                          (let ((__tmp301985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296598296609_ _g296599296612_)
                           (let ()
                             (declare (not safe))
                             (cons _g296598296609_ _g296599296612_)))))
                    (declare (not safe))
                    (foldr1 __tmp301985 '() _g296595296601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296596296604_
                                                           __tmp301984))))
                                              (declare (not safe))
                                              (cons __tmp301986 __tmp301983))))
                                       (declare (not safe))
                                       (cons __tmp301982 _g296597296606_)))))
                              (declare (not safe))
                              (foldr2 __tmp301981 '() _L296578_ _L296580_)))))
                     (declare (not safe))
                     (cons __tmp301987 __tmp301980)))
                 _arity296468296572_
                 _prim296469296575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296462296510_
                                         _target296459296504_
                                         '()
                                         '()))
                                      (_g296452296487_ _g296453296491_)))))
                            (_g296452296487_ _g296453296491_))))
                    (_g296452296487_ _g296453296491_)))))
        (_g296451296615_ _$stx296448_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296621_)
      (let* ((_g296625296660_
              (lambda (_g296626296656_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296626296656_))))
             (_g296624296788_
              (lambda (_g296626296664_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296626296664_))
                    (let ((_e296631296667_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296626296664_))))
                      (let ((_hd296630296671_
                             (let ()
                               (declare (not safe))
                               (##car _e296631296667_)))
                            (_tl296629296674_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296631296667_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296629296674_))
                            (let ((_g301990_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296629296674_
                                      '0))))
                              (begin
                                (let ((_g301991_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301990_)
                                             (##vector-length _g301990_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301991_ 2)))
                                      (error "Context expects 2 values"
                                             _g301991_)))
                                (let ((_target296632296677_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301990_ 0)))
                                      (_tl296634296680_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301990_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296634296680_))
                                      (letrec ((_loop296635296683_
                                                (lambda (_hd296633296687_
                                                         _arity296639296690_
                                                         _prim296640296692_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296633296687_))
                                                      (let ((_e296636296695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296633296687_))))
                (let ((_lp-hd296637296699_
                       (let () (declare (not safe)) (##car _e296636296695_)))
                      (_lp-tl296638296702_
                       (let () (declare (not safe)) (##cdr _e296636296695_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296637296699_))
                      (let ((_e296645296705_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296637296699_))))
                        (let ((_hd296644296709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296645296705_)))
                              (_tl296643296712_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296645296705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296643296712_))
                              (let ((_g302000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296643296712_
                                        '0))))
                                (begin
                                  (let ((_g302001_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g302000_)
                                               (##vector-length _g302000_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g302001_ 2)))
                                        (error "Context expects 2 values"
                                               _g302001_)))
                                  (let ((_target296646296715_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g302000_ 0)))
                                        (_tl296648296718_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g302000_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296648296718_))
                                        (letrec ((_loop296649296721_
                                                  (lambda (_hd296647296725_
                                                           _arity296653296728_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296647296725_))
                                                        (let ((_e296650296731_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296647296725_))))
                  (let ((_lp-hd296651296735_
                         (let () (declare (not safe)) (##car _e296650296731_)))
                        (_lp-tl296652296738_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296650296731_))))
                    (_loop296649296721_
                     _lp-tl296652296738_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296651296735_ _arity296653296728_)))))
                (let ((_arity296654296741_ (reverse _arity296653296728_)))
                  (_loop296635296683_
                   _lp-tl296638296702_
                   (let ()
                     (declare (not safe))
                     (cons _arity296654296741_ _arity296639296690_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296644296709_ _prim296640296692_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296649296721_
                                           _target296646296715_
                                           '()))
                                        (_g296625296660_ _g296626296664_)))))
                              (_g296625296660_ _g296626296664_))))
                      (_g296625296660_ _g296626296664_))))
              (let ((_arity296641296745_ (reverse _arity296639296690_))
                    (_prim296642296748_ (reverse _prim296640296692_)))
                ((lambda (_L296751_ _L296753_)
                   (let ((__tmp301999
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301992
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296751_
                               _L296753_))
                            (let ((__tmp301993
                                   (lambda (_g296768296774_
                                            _g296769296777_
                                            _g296770296779_)
                                     (let ((__tmp301994
                                            (let ((__tmp301998
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301995
                                                   (let ((__tmp301996
                                                          (let ((__tmp301997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296771296782_ _g296772296785_)
                           (let ()
                             (declare (not safe))
                             (cons _g296771296782_ _g296772296785_)))))
                    (declare (not safe))
                    (foldr1 __tmp301997 '() _g296768296774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296769296777_
                                                           __tmp301996))))
                                              (declare (not safe))
                                              (cons __tmp301998 __tmp301995))))
                                       (declare (not safe))
                                       (cons __tmp301994 _g296770296779_)))))
                              (declare (not safe))
                              (foldr2 __tmp301993 '() _L296751_ _L296753_)))))
                     (declare (not safe))
                     (cons __tmp301999 __tmp301992)))
                 _arity296641296745_
                 _prim296642296748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296635296683_
                                         _target296632296677_
                                         '()
                                         '()))
                                      (_g296625296660_ _g296626296664_)))))
                            (_g296625296660_ _g296626296664_))))
                    (_g296625296660_ _g296626296664_)))))
        (_g296624296788_ _$stx296621_)))))
