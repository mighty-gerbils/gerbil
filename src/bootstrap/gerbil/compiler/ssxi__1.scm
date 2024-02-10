(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293491_)
      (let* ((_g293495293513_
              (lambda (_g293496293509_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293496293509_))))
             (_g293494293568_
              (lambda (_g293496293517_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293496293517_))
                    (let ((_e293501293520_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293496293517_))))
                      (let ((_hd293500293524_
                             (let ()
                               (declare (not safe))
                               (##car _e293501293520_)))
                            (_tl293499293527_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293501293520_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293499293527_))
                            (let ((_e293504293530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293499293527_))))
                              (let ((_hd293503293534_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293504293530_)))
                                    (_tl293502293537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293504293530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293502293537_))
                                    (let ((_e293507293540_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293502293537_))))
                                      (let ((_hd293506293544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293507293540_)))
                                            (_tl293505293547_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293507293540_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293505293547_))
                                            ((lambda (_L293550_ _L293552_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293552_))
                                                   (let ((__tmp301482
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301477
                                                          (let ((__tmp301479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301481
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301480
                                (let ()
                                  (declare (not safe))
                                  (cons _L293552_ '()))))
                           (declare (not safe))
                           (cons __tmp301481 __tmp301480)))
                        (__tmp301478
                         (let () (declare (not safe)) (cons _L293550_ '()))))
                    (declare (not safe))
                    (cons __tmp301479 __tmp301478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301482
                                                           __tmp301477))
                                                   (_g293495293513_
                                                    _g293496293517_)))
                                             _hd293506293544_
                                             _hd293503293534_)
                                            (_g293495293513_
                                             _g293496293517_))))
                                    (_g293495293513_ _g293496293517_))))
                            (_g293495293513_ _g293496293517_))))
                    (_g293495293513_ _g293496293517_)))))
        (_g293494293568_ _$stx293491_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293572_)
      (let* ((_g293576293605_
              (lambda (_g293577293601_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293577293601_))))
             (_g293575293705_
              (lambda (_g293577293609_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293577293609_))
                    (let ((_e293582293612_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293577293609_))))
                      (let ((_hd293581293616_
                             (let ()
                               (declare (not safe))
                               (##car _e293582293612_)))
                            (_tl293580293619_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293582293612_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293580293619_))
                            (let ((_g301483_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293580293619_
                                      '0))))
                              (begin
                                (let ((_g301484_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301483_)
                                             (##vector-length _g301483_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301484_ 2)))
                                      (error "Context expects 2 values"
                                             _g301484_)))
                                (let ((_target293583293622_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301483_ 0)))
                                      (_tl293585293625_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301483_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293585293625_))
                                      (letrec ((_loop293586293628_
                                                (lambda (_hd293584293632_
                                                         _type293590293635_
                                                         _symbol293591293637_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293584293632_))
                                                      (let ((_e293587293640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293584293632_))))
                (let ((_lp-hd293588293644_
                       (let () (declare (not safe)) (##car _e293587293640_)))
                      (_lp-tl293589293647_
                       (let () (declare (not safe)) (##cdr _e293587293640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293588293644_))
                      (let ((_e293596293650_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293588293644_))))
                        (let ((_hd293595293654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293596293650_)))
                              (_tl293594293657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293596293650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293594293657_))
                              (let ((_e293599293660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293594293657_))))
                                (let ((_hd293598293664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293599293660_)))
                                      (_tl293597293667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293599293660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293597293667_))
                                      (_loop293586293628_
                                       _lp-tl293589293647_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293598293664_
                                               _type293590293635_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293595293654_
                                               _symbol293591293637_)))
                                      (_g293576293605_ _g293577293609_))))
                              (_g293576293605_ _g293577293609_))))
                      (_g293576293605_ _g293577293609_))))
              (let ((_type293592293670_ (reverse _type293590293635_))
                    (_symbol293593293673_ (reverse _symbol293591293637_)))
                ((lambda (_L293676_ _L293678_)
                   (let ((__tmp301491
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301485
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293676_
                               _L293678_))
                            (let ((__tmp301486
                                   (lambda (_g293693293697_
                                            _g293694293700_
                                            _g293695293702_)
                                     (let ((__tmp301487
                                            (let ((__tmp301490
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301488
                                                   (let ((__tmp301489
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293693293697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293694293700_
                                                           __tmp301489))))
                                              (declare (not safe))
                                              (cons __tmp301490 __tmp301488))))
                                       (declare (not safe))
                                       (cons __tmp301487 _g293695293702_)))))
                              (declare (not safe))
                              (foldr2 __tmp301486 '() _L293676_ _L293678_)))))
                     (declare (not safe))
                     (cons __tmp301491 __tmp301485)))
                 _type293592293670_
                 _symbol293593293673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293586293628_
                                         _target293583293622_
                                         '()
                                         '()))
                                      (_g293576293605_ _g293577293609_)))))
                            (_g293576293605_ _g293577293609_))))
                    (_g293576293605_ _g293577293609_)))))
        (_g293575293705_ _$stx293572_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293710_)
      (let* ((___stx301042301043_ _$stx293710_)
             (_g293715293757_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301042301043_)))))
        (let ((___kont301045301046_
               (lambda (_L293885_ _L293887_ _L293888_ _L293889_)
                 (let ((__tmp301505
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301492
                        (let ((__tmp301502
                               (let ((__tmp301504
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301503
                                      (let ()
                                        (declare (not safe))
                                        (cons _L293889_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301504 __tmp301503)))
                              (__tmp301493
                               (let ((__tmp301499
                                      (let ((__tmp301501
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301500
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293888_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301501 __tmp301500)))
                                     (__tmp301494
                                      (let ((__tmp301496
                                             (let ((__tmp301498
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301497
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L293887_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301498 __tmp301497)))
                                            (__tmp301495
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293885_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301496 __tmp301495))))
                                 (declare (not safe))
                                 (cons __tmp301499 __tmp301494))))
                          (declare (not safe))
                          (cons __tmp301502 __tmp301493))))
                   (declare (not safe))
                   (cons __tmp301505 __tmp301492))))
              (___kont301047301048_
               (lambda (_L293804_ _L293806_ _L293807_ _L293808_)
                 (let ((__tmp301506
                        (let ((__tmp301507
                               (let ((__tmp301508
                                      (let ((__tmp301509
                                             (let ((__tmp301510
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301510 '()))))
                                        (declare (not safe))
                                        (cons _L293804_ __tmp301509))))
                                 (declare (not safe))
                                 (cons _L293806_ __tmp301508))))
                          (declare (not safe))
                          (cons _L293807_ __tmp301507))))
                   (declare (not safe))
                   (cons _L293808_ __tmp301506)))))
          (let ((___match301081301082_
                 (lambda (_e293723293835_
                          _hd293722293839_
                          _tl293721293842_
                          _e293726293845_
                          _hd293725293849_
                          _tl293724293852_
                          _e293729293855_
                          _hd293728293859_
                          _tl293727293862_
                          _e293732293865_
                          _hd293731293869_
                          _tl293730293872_
                          _e293735293875_
                          _hd293734293879_
                          _tl293733293882_)
                   (let ((_L293885_ _hd293734293879_)
                         (_L293887_ _hd293731293869_)
                         (_L293888_ _hd293728293859_)
                         (_L293889_ _hd293725293849_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L293889_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293888_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293887_)))
                         (___kont301045301046_
                          _L293885_
                          _L293887_
                          _L293888_
                          _L293889_)
                         (let () (declare (not safe)) (_g293715293757_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301042301043_))
                (let ((_e293723293835_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301042301043_))))
                  (let ((_tl293721293842_
                         (let () (declare (not safe)) (##cdr _e293723293835_)))
                        (_hd293722293839_
                         (let ()
                           (declare (not safe))
                           (##car _e293723293835_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293721293842_))
                        (let ((_e293726293845_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293721293842_))))
                          (let ((_tl293724293852_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293726293845_)))
                                (_hd293725293849_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293726293845_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293724293852_))
                                (let ((_e293729293855_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293724293852_))))
                                  (let ((_tl293727293862_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293729293855_)))
                                        (_hd293728293859_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293729293855_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293727293862_))
                                        (let ((_e293732293865_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293727293862_))))
                                          (let ((_tl293730293872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293732293865_)))
                                                (_hd293731293869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293732293865_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293730293872_))
                                                (let ((_e293735293875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293730293872_))))
                                                  (let ((_tl293733293882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293735293875_)))
                                                        (_hd293734293879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293735293875_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293733293882_))
                                                        (___match301081301082_
                                                         _e293723293835_
                                                         _hd293722293839_
                                                         _tl293721293842_
                                                         _e293726293845_
                                                         _hd293725293849_
                                                         _tl293724293852_
                                                         _e293729293855_
                                                         _hd293728293859_
                                                         _tl293727293862_
                                                         _e293732293865_
                                                         _hd293731293869_
                                                         _tl293730293872_
                                                         _e293735293875_
                                                         _hd293734293879_
                                                         _tl293733293882_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293715293757_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293730293872_))
                                                    (___kont301047301048_
                                                     _hd293731293869_
                                                     _hd293728293859_
                                                     _hd293725293849_
                                                     _hd293722293839_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293715293757_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293715293757_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293715293757_)))))
                        (let () (declare (not safe)) (_g293715293757_)))))
                (let () (declare (not safe)) (_g293715293757_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx293914_)
      (let* ((_g293918293953_
              (lambda (_g293919293949_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293919293949_))))
             (_g293917294072_
              (lambda (_g293919293957_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293919293957_))
                    (let ((_e293925293960_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293919293957_))))
                      (let ((_hd293924293964_
                             (let ()
                               (declare (not safe))
                               (##car _e293925293960_)))
                            (_tl293923293967_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293925293960_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293923293967_))
                            (let ((_g301511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293923293967_
                                      '0))))
                              (begin
                                (let ((_g301512_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301511_)
                                             (##vector-length _g301511_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301512_ 2)))
                                      (error "Context expects 2 values"
                                             _g301512_)))
                                (let ((_target293926293970_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301511_ 0)))
                                      (_tl293928293973_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301511_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293928293973_))
                                      (letrec ((_loop293929293976_
                                                (lambda (_hd293927293980_
                                                         _symbol293933293983_
                                                         _method293934293985_
                                                         _type-t293935293987_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293927293980_))
                                                      (let ((_e293930293990_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293927293980_))))
                (let ((_lp-hd293931293994_
                       (let () (declare (not safe)) (##car _e293930293990_)))
                      (_lp-tl293932293997_
                       (let () (declare (not safe)) (##cdr _e293930293990_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293931293994_))
                      (let ((_e293941294000_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293931293994_))))
                        (let ((_hd293940294004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293941294000_)))
                              (_tl293939294007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293941294000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293939294007_))
                              (let ((_e293944294010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293939294007_))))
                                (let ((_hd293943294014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293944294010_)))
                                      (_tl293942294017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293944294010_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293942294017_))
                                      (let ((_e293947294020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293942294017_))))
                                        (let ((_hd293946294024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293947294020_)))
                                              (_tl293945294027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293947294020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293945294027_))
                                              (_loop293929293976_
                                               _lp-tl293932293997_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293946294024_
                                                       _symbol293933293983_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293943294014_
                                                       _method293934293985_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293940294004_
                                                       _type-t293935293987_)))
                                              (_g293918293953_
                                               _g293919293957_))))
                                      (_g293918293953_ _g293919293957_))))
                              (_g293918293953_ _g293919293957_))))
                      (_g293918293953_ _g293919293957_))))
              (let ((_symbol293936294030_ (reverse _symbol293933293983_))
                    (_method293937294033_ (reverse _method293934293985_))
                    (_type-t293938294035_ (reverse _type-t293935293987_)))
                ((lambda (_L294038_ _L294040_ _L294041_)
                   (let ((__tmp301520
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301513
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L294038_
                               _L294040_
                               _L294041_))
                            (let ((__tmp301514
                                   (lambda (_g294057294062_
                                            _g294058294065_
                                            _g294059294067_
                                            _g294060294069_)
                                     (let ((__tmp301515
                                            (let ((__tmp301519
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301516
                                                   (let ((__tmp301517
                                                          (let ((__tmp301518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g294057294062_ '()))))
                    (declare (not safe))
                    (cons _g294058294065_ __tmp301518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g294059294067_
                                                           __tmp301517))))
                                              (declare (not safe))
                                              (cons __tmp301519 __tmp301516))))
                                       (declare (not safe))
                                       (cons __tmp301515 _g294060294069_)))))
                              (declare (not safe))
                              (foldr* __tmp301514
                                      '()
                                      _L294038_
                                      _L294040_
                                      _L294041_)))))
                     (declare (not safe))
                     (cons __tmp301520 __tmp301513)))
                 _symbol293936294030_
                 _method293937294033_
                 _type-t293938294035_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293929293976_
                                         _target293926293970_
                                         '()
                                         '()
                                         '()))
                                      (_g293918293953_ _g293919293957_)))))
                            (_g293918293953_ _g293919293957_))))
                    (_g293918293953_ _g293919293957_)))))
        (_g293917294072_ _$stx293914_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx294077_)
      (let* ((_g294081294114_
              (lambda (_g294082294110_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294082294110_))))
             (_g294080294228_
              (lambda (_g294082294118_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294082294118_))
                    (let ((_e294088294121_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294082294118_))))
                      (let ((_hd294087294125_
                             (let ()
                               (declare (not safe))
                               (##car _e294088294121_)))
                            (_tl294086294128_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294088294121_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294086294128_))
                            (let ((_e294091294131_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294086294128_))))
                              (let ((_hd294090294135_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294091294131_)))
                                    (_tl294089294138_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294091294131_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294089294138_))
                                    (let ((_g301521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294089294138_
                                              '0))))
                                      (begin
                                        (let ((_g301522_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301521_)
                                                     (##vector-length
                                                      _g301521_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301522_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301522_)))
                                        (let ((_target294092294141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301521_ 0)))
                                              (_tl294094294144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301521_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294094294144_))
                                              (letrec ((_loop294095294147_
                                                        (lambda (_hd294093294151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol294099294154_
                         _method294100294156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd294093294151_))
                      (let ((_e294096294159_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd294093294151_))))
                        (let ((_lp-hd294097294163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294096294159_)))
                              (_lp-tl294098294166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294096294159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd294097294163_))
                              (let ((_e294105294169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd294097294163_))))
                                (let ((_hd294104294173_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294105294169_)))
                                      (_tl294103294176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294105294169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294103294176_))
                                      (let ((_e294108294179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294103294176_))))
                                        (let ((_hd294107294183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294108294179_)))
                                              (_tl294106294186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294108294179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294106294186_))
                                              (_loop294095294147_
                                               _lp-tl294098294166_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294107294183_
                                                       _symbol294099294154_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294104294173_
                                                       _method294100294156_)))
                                              (_g294081294114_
                                               _g294082294118_))))
                                      (_g294081294114_ _g294082294118_))))
                              (_g294081294114_ _g294082294118_))))
                      (let ((_symbol294101294189_
                             (reverse _symbol294099294154_))
                            (_method294102294192_
                             (reverse _method294100294156_)))
                        ((lambda (_L294195_ _L294197_ _L294198_)
                           (let ((__tmp301530
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301523
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294195_
                                       _L294197_))
                                    (let ((__tmp301524
                                           (lambda (_g294216294220_
                                                    _g294217294223_
                                                    _g294218294225_)
                                             (let ((__tmp301525
                                                    (let ((__tmp301529
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301526
                                                           (let ((__tmp301527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301528
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294216294220_ '()))))
                            (declare (not safe))
                            (cons _g294217294223_ __tmp301528))))
                     (declare (not safe))
                     (cons _L294198_ __tmp301527))))
              (declare (not safe))
              (cons __tmp301529 __tmp301526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301525
                                                     _g294218294225_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301524
                                              '()
                                              _L294195_
                                              _L294197_)))))
                             (declare (not safe))
                             (cons __tmp301530 __tmp301523)))
                         _symbol294101294189_
                         _method294102294192_
                         _hd294090294135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop294095294147_
                                                 _target294092294141_
                                                 '()
                                                 '()))
                                              (_g294081294114_
                                               _g294082294118_)))))
                                    (_g294081294114_ _g294082294118_))))
                            (_g294081294114_ _g294082294118_))))
                    (_g294081294114_ _g294082294118_)))))
        (_g294080294228_ _$stx294077_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294233_)
      (let* ((_g294237294251_
              (lambda (_g294238294247_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294238294247_))))
             (_g294236294292_
              (lambda (_g294238294255_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294238294255_))
                    (let ((_e294242294258_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294238294255_))))
                      (let ((_hd294241294262_
                             (let ()
                               (declare (not safe))
                               (##car _e294242294258_)))
                            (_tl294240294265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294242294258_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294240294265_))
                            (let ((_e294245294268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294240294265_))))
                              (let ((_hd294244294272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294245294268_)))
                                    (_tl294243294275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294245294268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294243294275_))
                                    ((lambda (_L294278_)
                                       (let ((__tmp301535
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301531
                                              (let ((__tmp301532
                                                     (let ((__tmp301534
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301533
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301534 __tmp301533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301532 '()))))
                                         (declare (not safe))
                                         (cons __tmp301535 __tmp301531)))
                                     _hd294244294272_)
                                    (_g294237294251_ _g294238294255_))))
                            (_g294237294251_ _g294238294255_))))
                    (_g294237294251_ _g294238294255_)))))
        (_g294236294292_ _$stx294233_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294296_)
      (let* ((_g294300294346_
              (lambda (_g294301294342_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294301294342_))))
             (_g294299294499_
              (lambda (_g294301294350_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294301294350_))
                    (let ((_e294313294353_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294301294350_))))
                      (let ((_hd294312294357_
                             (let ()
                               (declare (not safe))
                               (##car _e294313294353_)))
                            (_tl294311294360_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294313294353_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294311294360_))
                            (let ((_e294316294363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294311294360_))))
                              (let ((_hd294315294367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294316294363_)))
                                    (_tl294314294370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294316294363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294314294370_))
                                    (let ((_e294319294373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294314294370_))))
                                      (let ((_hd294318294377_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294319294373_)))
                                            (_tl294317294380_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294319294373_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294317294380_))
                                            (let ((_e294322294383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294317294380_))))
                                              (let ((_hd294321294387_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294322294383_)))
                                                    (_tl294320294390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294322294383_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294320294390_))
                                                    (let ((_e294325294393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294320294390_))))
                                                      (let ((_hd294324294397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294325294393_)))
                    (_tl294323294400_
                     (let () (declare (not safe)) (##cdr _e294325294393_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294323294400_))
                    (let ((_e294328294403_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294323294400_))))
                      (let ((_hd294327294407_
                             (let ()
                               (declare (not safe))
                               (##car _e294328294403_)))
                            (_tl294326294410_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294328294403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294326294410_))
                            (let ((_e294331294413_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294326294410_))))
                              (let ((_hd294330294417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294331294413_)))
                                    (_tl294329294420_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294331294413_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294329294420_))
                                    (let ((_e294334294423_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294329294420_))))
                                      (let ((_hd294333294427_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294334294423_)))
                                            (_tl294332294430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294334294423_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294332294430_))
                                            (let ((_e294337294433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294332294430_))))
                                              (let ((_hd294336294437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294337294433_)))
                                                    (_tl294335294440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294337294433_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294335294440_))
                                                    (let ((_e294340294443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294335294440_))))
                                                      (let ((_hd294339294447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294340294443_)))
                    (_tl294338294450_
                     (let () (declare (not safe)) (##cdr _e294340294443_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294338294450_))
                    ((lambda (_L294453_
                              _L294455_
                              _L294456_
                              _L294457_
                              _L294458_
                              _L294459_
                              _L294460_
                              _L294461_
                              _L294462_)
                       (let ((__tmp301572
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301536
                              (let ((__tmp301569
                                     (let ((__tmp301571
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301570
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294462_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301571 __tmp301570)))
                                    (__tmp301537
                                     (let ((__tmp301566
                                            (let ((__tmp301568
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301567
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294461_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301568 __tmp301567)))
                                           (__tmp301538
                                            (let ((__tmp301563
                                                   (let ((__tmp301565
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301564
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301565
                                                           __tmp301564)))
                                                  (__tmp301539
                                                   (let ((__tmp301560
                                                          (let ((__tmp301562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301561
                         (let () (declare (not safe)) (cons _L294459_ '()))))
                    (declare (not safe))
                    (cons __tmp301562 __tmp301561)))
                 (__tmp301540
                  (let ((__tmp301557
                         (let ((__tmp301559
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301558
                                (let ()
                                  (declare (not safe))
                                  (cons _L294458_ '()))))
                           (declare (not safe))
                           (cons __tmp301559 __tmp301558)))
                        (__tmp301541
                         (let ((__tmp301554
                                (let ((__tmp301556
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301555
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294457_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301556 __tmp301555)))
                               (__tmp301542
                                (let ((__tmp301551
                                       (let ((__tmp301553
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301552
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294456_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301553 __tmp301552)))
                                      (__tmp301543
                                       (let ((__tmp301548
                                              (let ((__tmp301550
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301549
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294455_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301550
                                                      __tmp301549)))
                                             (__tmp301544
                                              (let ((__tmp301545
                                                     (let ((__tmp301547
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301546
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301547 __tmp301546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301545 '()))))
                                         (declare (not safe))
                                         (cons __tmp301548 __tmp301544))))
                                  (declare (not safe))
                                  (cons __tmp301551 __tmp301543))))
                           (declare (not safe))
                           (cons __tmp301554 __tmp301542))))
                    (declare (not safe))
                    (cons __tmp301557 __tmp301541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301560
                                                           __tmp301540))))
                                              (declare (not safe))
                                              (cons __tmp301563 __tmp301539))))
                                       (declare (not safe))
                                       (cons __tmp301566 __tmp301538))))
                                (declare (not safe))
                                (cons __tmp301569 __tmp301537))))
                         (declare (not safe))
                         (cons __tmp301572 __tmp301536)))
                     _hd294339294447_
                     _hd294336294437_
                     _hd294333294427_
                     _hd294330294417_
                     _hd294327294407_
                     _hd294324294397_
                     _hd294321294387_
                     _hd294318294377_
                     _hd294315294367_)
                    (_g294300294346_ _g294301294350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294300294346_
                                                     _g294301294350_))))
                                            (_g294300294346_
                                             _g294301294350_))))
                                    (_g294300294346_ _g294301294350_))))
                            (_g294300294346_ _g294301294350_))))
                    (_g294300294346_ _g294301294350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294300294346_
                                                     _g294301294350_))))
                                            (_g294300294346_
                                             _g294301294350_))))
                                    (_g294300294346_ _g294301294350_))))
                            (_g294300294346_ _g294301294350_))))
                    (_g294300294346_ _g294301294350_)))))
        (_g294299294499_ _$stx294296_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294503_)
      (let* ((_g294507294521_
              (lambda (_g294508294517_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294508294517_))))
             (_g294506294562_
              (lambda (_g294508294525_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294508294525_))
                    (let ((_e294512294528_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294508294525_))))
                      (let ((_hd294511294532_
                             (let ()
                               (declare (not safe))
                               (##car _e294512294528_)))
                            (_tl294510294535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294512294528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294510294535_))
                            (let ((_e294515294538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294510294535_))))
                              (let ((_hd294514294542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294515294538_)))
                                    (_tl294513294545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294515294538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294513294545_))
                                    ((lambda (_L294548_)
                                       (let ((__tmp301577
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301573
                                              (let ((__tmp301574
                                                     (let ((__tmp301576
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301575
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301576 __tmp301575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301574 '()))))
                                         (declare (not safe))
                                         (cons __tmp301577 __tmp301573)))
                                     _hd294514294542_)
                                    (_g294507294521_ _g294508294525_))))
                            (_g294507294521_ _g294508294525_))))
                    (_g294507294521_ _g294508294525_)))))
        (_g294506294562_ _$stx294503_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294566_)
      (let* ((_g294570294584_
              (lambda (_g294571294580_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294571294580_))))
             (_g294569294625_
              (lambda (_g294571294588_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294571294588_))
                    (let ((_e294575294591_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294571294588_))))
                      (let ((_hd294574294595_
                             (let ()
                               (declare (not safe))
                               (##car _e294575294591_)))
                            (_tl294573294598_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294575294591_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294573294598_))
                            (let ((_e294578294601_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294573294598_))))
                              (let ((_hd294577294605_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294578294601_)))
                                    (_tl294576294608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294578294601_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294576294608_))
                                    ((lambda (_L294611_)
                                       (let ((__tmp301582
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301578
                                              (let ((__tmp301579
                                                     (let ((__tmp301581
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301580
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301581 __tmp301580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301579 '()))))
                                         (declare (not safe))
                                         (cons __tmp301582 __tmp301578)))
                                     _hd294577294605_)
                                    (_g294570294584_ _g294571294588_))))
                            (_g294570294584_ _g294571294588_))))
                    (_g294570294584_ _g294571294588_)))))
        (_g294569294625_ _$stx294566_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294629_)
      (let* ((_g294633294655_
              (lambda (_g294634294651_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294634294651_))))
             (_g294632294724_
              (lambda (_g294634294659_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294634294659_))
                    (let ((_e294640294662_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294634294659_))))
                      (let ((_hd294639294666_
                             (let ()
                               (declare (not safe))
                               (##car _e294640294662_)))
                            (_tl294638294669_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294640294662_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294638294669_))
                            (let ((_e294643294672_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294638294669_))))
                              (let ((_hd294642294676_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294643294672_)))
                                    (_tl294641294679_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294643294672_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294641294679_))
                                    (let ((_e294646294682_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294641294679_))))
                                      (let ((_hd294645294686_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294646294682_)))
                                            (_tl294644294689_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294646294682_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294644294689_))
                                            (let ((_e294649294692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294644294689_))))
                                              (let ((_hd294648294696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294649294692_)))
                                                    (_tl294647294699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294649294692_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294647294699_))
                                                    ((lambda (_L294702_
                                                              _L294704_
                                                              _L294705_)
                                                       (let ((__tmp301592
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301583
                      (let ((__tmp301589
                             (let ((__tmp301591
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301590
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294705_ '()))))
                               (declare (not safe))
                               (cons __tmp301591 __tmp301590)))
                            (__tmp301584
                             (let ((__tmp301586
                                    (let ((__tmp301588
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301587
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294704_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301588 __tmp301587)))
                                   (__tmp301585
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294702_ '()))))
                               (declare (not safe))
                               (cons __tmp301586 __tmp301585))))
                        (declare (not safe))
                        (cons __tmp301589 __tmp301584))))
                 (declare (not safe))
                 (cons __tmp301592 __tmp301583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294648294696_
                                                     _hd294645294686_
                                                     _hd294642294676_)
                                                    (_g294633294655_
                                                     _g294634294659_))))
                                            (_g294633294655_
                                             _g294634294659_))))
                                    (_g294633294655_ _g294634294659_))))
                            (_g294633294655_ _g294634294659_))))
                    (_g294633294655_ _g294634294659_)))))
        (_g294632294724_ _$stx294629_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294728_)
      (let* ((_g294732294754_
              (lambda (_g294733294750_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294733294750_))))
             (_g294731294823_
              (lambda (_g294733294758_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294733294758_))
                    (let ((_e294739294761_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294733294758_))))
                      (let ((_hd294738294765_
                             (let ()
                               (declare (not safe))
                               (##car _e294739294761_)))
                            (_tl294737294768_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294739294761_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294737294768_))
                            (let ((_e294742294771_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294737294768_))))
                              (let ((_hd294741294775_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294742294771_)))
                                    (_tl294740294778_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294742294771_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294740294778_))
                                    (let ((_e294745294781_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294740294778_))))
                                      (let ((_hd294744294785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294745294781_)))
                                            (_tl294743294788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294745294781_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294743294788_))
                                            (let ((_e294748294791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294743294788_))))
                                              (let ((_hd294747294795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294748294791_)))
                                                    (_tl294746294798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294748294791_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294746294798_))
                                                    ((lambda (_L294801_
                                                              _L294803_
                                                              _L294804_)
                                                       (let ((__tmp301602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301593
                      (let ((__tmp301599
                             (let ((__tmp301601
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301600
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294804_ '()))))
                               (declare (not safe))
                               (cons __tmp301601 __tmp301600)))
                            (__tmp301594
                             (let ((__tmp301596
                                    (let ((__tmp301598
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301597
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294803_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301598 __tmp301597)))
                                   (__tmp301595
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294801_ '()))))
                               (declare (not safe))
                               (cons __tmp301596 __tmp301595))))
                        (declare (not safe))
                        (cons __tmp301599 __tmp301594))))
                 (declare (not safe))
                 (cons __tmp301602 __tmp301593)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294747294795_
                                                     _hd294744294785_
                                                     _hd294741294775_)
                                                    (_g294732294754_
                                                     _g294733294758_))))
                                            (_g294732294754_
                                             _g294733294758_))))
                                    (_g294732294754_ _g294733294758_))))
                            (_g294732294754_ _g294733294758_))))
                    (_g294732294754_ _g294733294758_)))))
        (_g294731294823_ _$stx294728_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx294827_)
      (let* ((___stx301110301111_ _$stx294827_)
             (_g294835294903_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301110301111_)))))
        (let ((___kont301113301114_
               (lambda (_L295181_ _L295183_)
                 (let ((__tmp301618
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301603
                        (let ((__tmp301614
                               (let ((__tmp301617
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301615
                                      (let ((__tmp301616
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301616 '()))))
                                 (declare (not safe))
                                 (cons __tmp301617 __tmp301615)))
                              (__tmp301604
                               (let ((__tmp301611
                                      (let ((__tmp301613
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301612
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295183_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301613 __tmp301612)))
                                     (__tmp301605
                                      (let ((__tmp301606
                                             (let ((__tmp301607
                                                    (let ((__tmp301608
                                                           (let ((__tmp301610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301609
                          (let () (declare (not safe)) (cons _L295181_ '()))))
                     (declare (not safe))
                     (cons __tmp301610 __tmp301609))))
              (declare (not safe))
              (cons __tmp301608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295181_ __tmp301607))))
                                        (declare (not safe))
                                        (cons '#f __tmp301606))))
                                 (declare (not safe))
                                 (cons __tmp301611 __tmp301605))))
                          (declare (not safe))
                          (cons __tmp301614 __tmp301604))))
                   (declare (not safe))
                   (cons __tmp301618 __tmp301603))))
              (___kont301115301116_
               (lambda (_L295112_ _L295114_)
                 (let ((__tmp301619
                        (let ((__tmp301620
                               (let ((__tmp301621
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L295112_ __tmp301621))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301620))))
                   (declare (not safe))
                   (cons _L295114_ __tmp301619))))
              (___kont301117301118_
               (lambda (_L295051_ _L295053_)
                 (let ((__tmp301635
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301622
                        (let ((__tmp301631
                               (let ((__tmp301634
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301632
                                      (let ((__tmp301633
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301633 '()))))
                                 (declare (not safe))
                                 (cons __tmp301634 __tmp301632)))
                              (__tmp301623
                               (let ((__tmp301628
                                      (let ((__tmp301630
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301629
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295053_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301630 __tmp301629)))
                                     (__tmp301624
                                      (let ((__tmp301625
                                             (let ((__tmp301627
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301626
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295051_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301627
                                                     __tmp301626))))
                                        (declare (not safe))
                                        (cons __tmp301625 '()))))
                                 (declare (not safe))
                                 (cons __tmp301628 __tmp301624))))
                          (declare (not safe))
                          (cons __tmp301631 __tmp301623))))
                   (declare (not safe))
                   (cons __tmp301635 __tmp301622))))
              (___kont301119301120_
               (lambda (_L294983_ _L294985_)
                 (let ((__tmp301649
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301636
                        (let ((__tmp301645
                               (let ((__tmp301648
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301646
                                      (let ((__tmp301647
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301647 '()))))
                                 (declare (not safe))
                                 (cons __tmp301648 __tmp301646)))
                              (__tmp301637
                               (let ((__tmp301642
                                      (let ((__tmp301644
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301643
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294985_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301644 __tmp301643)))
                                     (__tmp301638
                                      (let ((__tmp301639
                                             (let ((__tmp301641
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301640
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294983_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301641
                                                     __tmp301640))))
                                        (declare (not safe))
                                        (cons __tmp301639 '()))))
                                 (declare (not safe))
                                 (cons __tmp301642 __tmp301638))))
                          (declare (not safe))
                          (cons __tmp301645 __tmp301637))))
                   (declare (not safe))
                   (cons __tmp301649 __tmp301636))))
              (___kont301121301122_
               (lambda (_L294930_ _L294932_)
                 (let ((__tmp301650
                        (let ((__tmp301651
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L294930_ __tmp301651))))
                   (declare (not safe))
                   (cons _L294932_ __tmp301650)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx301110301111_))
              (let ((_e294841295137_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx301110301111_))))
                (let ((_tl294839295144_
                       (let () (declare (not safe)) (##cdr _e294841295137_)))
                      (_hd294840295141_
                       (let () (declare (not safe)) (##car _e294841295137_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl294839295144_))
                      (let ((_e294844295147_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294839295144_))))
                        (let ((_tl294842295154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294844295147_)))
                              (_hd294843295151_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294844295147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294842295154_))
                              (let ((_e294847295157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294842295154_))))
                                (let ((_tl294845295164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294847295157_)))
                                      (_hd294846295161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294847295157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd294846295161_))
                                      (let ((_e294848295167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd294846295161_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e294848295167_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl294845295164_))
                                                (let ((_e294851295171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl294845295164_))))
                                                  (let ((_tl294849295178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e294851295171_)))
                                                        (_hd294850295175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e294851295171_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294849295178_))
                                                        (___kont301113301114_
                                                         _hd294850295175_
                                                         _hd294843295151_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd294843295151_))
                                                            (let ((_e294860295098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd294843295151_))))
                      (declare (not safe))
                      (_g294835294903_))
                    (let () (declare (not safe)) (_g294835294903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd294843295151_))
                                                    (let ((_e294860295098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd294843295151_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e294860295098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294845295164_))
                      (___kont301115301116_ _hd294846295161_ _hd294840295141_)
                      (let () (declare (not safe)) (_g294835294903_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294845295164_))
                      (___kont301119301120_ _hd294846295161_ _hd294843295151_)
                      (let () (declare (not safe)) (_g294835294903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294845295164_))
                                                        (___kont301119301120_
                                                         _hd294846295161_
                                                         _hd294843295151_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g294835294903_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd294843295151_))
                                                (let ((_e294860295098_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd294843295151_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e294860295098_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl294845295164_))
                                                          (___kont301115301116_
                                                           _hd294846295161_
                                                           _hd294840295141_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl294845295164_))
                      (let ((_e294878295041_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294845295164_))))
                        (let ((_tl294876295048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294878295041_)))
                              (_hd294877295045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294878295041_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl294876295048_))
                              (___kont301117301118_
                               _hd294877295045_
                               _hd294846295161_)
                              (let ()
                                (declare (not safe))
                                (_g294835294903_)))))
                      (let () (declare (not safe)) (_g294835294903_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl294845295164_))
                  (___kont301119301120_ _hd294846295161_ _hd294843295151_)
                  (let () (declare (not safe)) (_g294835294903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294845295164_))
                                                    (___kont301119301120_
                                                     _hd294846295161_
                                                     _hd294843295151_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294835294903_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd294843295151_))
                                          (let ((_e294860295098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd294843295151_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e294860295098_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294845295164_))
                                                    (___kont301115301116_
                                                     _hd294846295161_
                                                     _hd294840295141_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl294845295164_))
                                                        (let ((_e294878295041_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl294845295164_))))
                  (let ((_tl294876295048_
                         (let () (declare (not safe)) (##cdr _e294878295041_)))
                        (_hd294877295045_
                         (let ()
                           (declare (not safe))
                           (##car _e294878295041_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl294876295048_))
                        (___kont301117301118_
                         _hd294877295045_
                         _hd294846295161_)
                        (let () (declare (not safe)) (_g294835294903_)))))
                (let () (declare (not safe)) (_g294835294903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294845295164_))
                                                    (___kont301119301120_
                                                     _hd294846295161_
                                                     _hd294843295151_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294835294903_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294845295164_))
                                              (___kont301119301120_
                                               _hd294846295161_
                                               _hd294843295151_)
                                              (let ()
                                                (declare (not safe))
                                                (_g294835294903_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd294843295151_))
                                  (let ((_e294860295098_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd294843295151_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl294842295154_))
                                        (___kont301121301122_
                                         _hd294843295151_
                                         _hd294840295141_)
                                        (let ()
                                          (declare (not safe))
                                          (_g294835294903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294842295154_))
                                      (___kont301121301122_
                                       _hd294843295151_
                                       _hd294840295141_)
                                      (let ()
                                        (declare (not safe))
                                        (_g294835294903_)))))))
                      (let () (declare (not safe)) (_g294835294903_)))))
              (let () (declare (not safe)) (_g294835294903_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295205_)
      (let* ((___stx301250301251_ _$stx295205_)
             (_g295210295265_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301250301251_)))))
        (let ((___kont301253301254_
               (lambda (_L295450_ _L295452_)
                 (let ((__tmp301667
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301652
                        (let ((__tmp301663
                               (let ((__tmp301666
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301664
                                      (let ((__tmp301665
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301665 '()))))
                                 (declare (not safe))
                                 (cons __tmp301666 __tmp301664)))
                              (__tmp301653
                               (let ((__tmp301654
                                      (let ((__tmp301662
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301655
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295450_
                                                  _L295452_))
                                               (let ((__tmp301656
                                                      (lambda (_g295469295473_
                                                               _g295470295476_
                                                               _g295471295478_)
                                                        (let ((__tmp301657
                                                               (let ((__tmp301661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301658
                              (let ((__tmp301659
                                     (let ((__tmp301660
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295469295473_ '()))))
                                       (declare (not safe))
                                       (cons _g295470295476_ __tmp301660))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301659))))
                         (declare (not safe))
                         (cons __tmp301661 __tmp301658))))
                  (declare (not safe))
                  (cons __tmp301657 _g295471295478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301656
                                                         '()
                                                         _L295450_
                                                         _L295452_)))))
                                        (declare (not safe))
                                        (cons __tmp301662 __tmp301655))))
                                 (declare (not safe))
                                 (cons __tmp301654 '()))))
                          (declare (not safe))
                          (cons __tmp301663 __tmp301653))))
                   (declare (not safe))
                   (cons __tmp301667 __tmp301652))))
              (___kont301257301258_
               (lambda (_L295336_ _L295338_)
                 (let ((__tmp301682
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301668
                        (let ((__tmp301678
                               (let ((__tmp301681
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301679
                                      (let ((__tmp301680
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301680 '()))))
                                 (declare (not safe))
                                 (cons __tmp301681 __tmp301679)))
                              (__tmp301669
                               (let ((__tmp301670
                                      (let ((__tmp301677
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301671
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295336_
                                                  _L295338_))
                                               (let ((__tmp301672
                                                      (lambda (_g295353295357_
                                                               _g295354295360_
                                                               _g295355295362_)
                                                        (let ((__tmp301673
                                                               (let ((__tmp301676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301674
                              (let ((__tmp301675
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295353295357_ '()))))
                                (declare (not safe))
                                (cons _g295354295360_ __tmp301675))))
                         (declare (not safe))
                         (cons __tmp301676 __tmp301674))))
                  (declare (not safe))
                  (cons __tmp301673 _g295355295362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301672
                                                         '()
                                                         _L295336_
                                                         _L295338_)))))
                                        (declare (not safe))
                                        (cons __tmp301677 __tmp301671))))
                                 (declare (not safe))
                                 (cons __tmp301670 '()))))
                          (declare (not safe))
                          (cons __tmp301678 __tmp301669))))
                   (declare (not safe))
                   (cons __tmp301682 __tmp301668)))))
          (let* ((___match301301301302_
                  (lambda (_e295242295272_
                           _hd295241295276_
                           _tl295240295279_
                           ___splice301259301260_
                           _target295243295282_
                           _tl295245295285_)
                    (letrec ((_loop295246295288_
                              (lambda (_hd295244295292_
                                       _dispatch295250295295_
                                       _arity295251295297_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295244295292_))
                                    (let ((_e295247295300_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295244295292_))))
                                      (let ((_lp-tl295249295307_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295247295300_)))
                                            (_lp-hd295248295304_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295247295300_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295248295304_))
                                            (let ((_e295256295310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295248295304_))))
                                              (let ((_tl295254295317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295256295310_)))
                                                    (_hd295255295314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295256295310_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295254295317_))
                                                    (let ((_e295259295320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295254295317_))))
                                                      (let ((_tl295257295327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295259295320_)))
                    (_hd295258295324_
                     (let () (declare (not safe)) (##car _e295259295320_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295257295327_))
                    (_loop295246295288_
                     _lp-tl295249295307_
                     (let ()
                       (declare (not safe))
                       (cons _hd295258295324_ _dispatch295250295295_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295255295314_ _arity295251295297_)))
                    (let () (declare (not safe)) (_g295210295265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295210295265_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295210295265_)))))
                                    (let ((_arity295253295333_
                                           (reverse _arity295251295297_))
                                          (_dispatch295252295330_
                                           (reverse _dispatch295250295295_)))
                                      (___kont301257301258_
                                       _dispatch295252295330_
                                       _arity295253295333_))))))
                      (_loop295246295288_ _target295243295282_ '() '()))))
                 (___match301293301294_
                  (lambda (_e295242295272_ _hd295241295276_ _tl295240295279_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295240295279_))
                        (let ((___splice301259301260_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295240295279_
                                  '0))))
                          (let ((_tl295245295285_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301259301260_ '1)))
                                (_target295243295282_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301259301260_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295245295285_))
                                (___match301301301302_
                                 _e295242295272_
                                 _hd295241295276_
                                 _tl295240295279_
                                 ___splice301259301260_
                                 _target295243295282_
                                 _tl295245295285_)
                                (let ()
                                  (declare (not safe))
                                  (_g295210295265_)))))
                        (let () (declare (not safe)) (_g295210295265_)))))
                 (___match301287301288_
                  (lambda (_e295216295372_
                           _hd295215295376_
                           _tl295214295379_
                           _e295219295382_
                           _hd295218295386_
                           _tl295217295389_
                           _e295220295392_
                           ___splice301255301256_
                           _target295221295396_
                           _tl295223295399_)
                    (letrec ((_loop295224295402_
                              (lambda (_hd295222295406_
                                       _dispatch295228295409_
                                       _arity295229295411_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295222295406_))
                                    (let ((_e295225295414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295222295406_))))
                                      (let ((_lp-tl295227295421_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295225295414_)))
                                            (_lp-hd295226295418_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295225295414_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295226295418_))
                                            (let ((_e295234295424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295226295418_))))
                                              (let ((_tl295232295431_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295234295424_)))
                                                    (_hd295233295428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295234295424_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295232295431_))
                                                    (let ((_e295237295434_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295232295431_))))
                                                      (let ((_tl295235295441_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295237295434_)))
                    (_hd295236295438_
                     (let () (declare (not safe)) (##car _e295237295434_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295235295441_))
                    (_loop295224295402_
                     _lp-tl295227295421_
                     (let ()
                       (declare (not safe))
                       (cons _hd295236295438_ _dispatch295228295409_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295233295428_ _arity295229295411_)))
                    (___match301293301294_
                     _e295216295372_
                     _hd295215295376_
                     _tl295214295379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301293301294_
                                                     _e295216295372_
                                                     _hd295215295376_
                                                     _tl295214295379_))))
                                            (___match301293301294_
                                             _e295216295372_
                                             _hd295215295376_
                                             _tl295214295379_))))
                                    (let ((_arity295231295447_
                                           (reverse _arity295229295411_))
                                          (_dispatch295230295444_
                                           (reverse _dispatch295228295409_)))
                                      (___kont301253301254_
                                       _dispatch295230295444_
                                       _arity295231295447_))))))
                      (_loop295224295402_ _target295221295396_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301250301251_))
                (let ((_e295216295372_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301250301251_))))
                  (let ((_tl295214295379_
                         (let () (declare (not safe)) (##cdr _e295216295372_)))
                        (_hd295215295376_
                         (let ()
                           (declare (not safe))
                           (##car _e295216295372_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295214295379_))
                        (let ((_e295219295382_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295214295379_))))
                          (let ((_tl295217295389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295219295382_)))
                                (_hd295218295386_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295219295382_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295218295386_))
                                (let ((_e295220295392_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295218295386_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295220295392_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295217295389_))
                                          (let ((___splice301255301256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295217295389_
                                                    '0))))
                                            (let ((_tl295223295399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301255301256_
                                                      '1)))
                                                  (_target295221295396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301255301256_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295223295399_))
                                                  (___match301287301288_
                                                   _e295216295372_
                                                   _hd295215295376_
                                                   _tl295214295379_
                                                   _e295219295382_
                                                   _hd295218295386_
                                                   _tl295217295389_
                                                   _e295220295392_
                                                   ___splice301255301256_
                                                   _target295221295396_
                                                   _tl295223295399_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295214295379_))
                                                      (let ((___splice301259301260_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295214295379_ '0))))
                (let ((_tl295245295285_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301259301260_ '1)))
                      (_target295243295282_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301259301260_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295245295285_))
                      (___match301301301302_
                       _e295216295372_
                       _hd295215295376_
                       _tl295214295379_
                       ___splice301259301260_
                       _target295243295282_
                       _tl295245295285_)
                      (let () (declare (not safe)) (_g295210295265_)))))
              (let () (declare (not safe)) (_g295210295265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295214295379_))
                                              (let ((___splice301259301260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295214295379_
                                                        '0))))
                                                (let ((_tl295245295285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301259301260_
                                                          '1)))
                                                      (_target295243295282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301259301260_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295245295285_))
                                                      (___match301301301302_
                                                       _e295216295372_
                                                       _hd295215295376_
                                                       _tl295214295379_
                                                       ___splice301259301260_
                                                       _target295243295282_
                                                       _tl295245295285_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295210295265_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295210295265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295214295379_))
                                          (let ((___splice301259301260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295214295379_
                                                    '0))))
                                            (let ((_tl295245295285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301259301260_
                                                      '1)))
                                                  (_target295243295282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301259301260_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295245295285_))
                                                  (___match301301301302_
                                                   _e295216295372_
                                                   _hd295215295376_
                                                   _tl295214295379_
                                                   ___splice301259301260_
                                                   _target295243295282_
                                                   _tl295245295285_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295210295265_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295210295265_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295214295379_))
                                    (let ((___splice301259301260_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295214295379_
                                              '0))))
                                      (let ((_tl295245295285_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301259301260_
                                                '1)))
                                            (_target295243295282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301259301260_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295245295285_))
                                            (___match301301301302_
                                             _e295216295372_
                                             _hd295215295376_
                                             _tl295214295379_
                                             ___splice301259301260_
                                             _target295243295282_
                                             _tl295245295285_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295210295265_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295210295265_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295214295379_))
                            (let ((___splice301259301260_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295214295379_
                                      '0))))
                              (let ((_tl295245295285_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301259301260_
                                        '1)))
                                    (_target295243295282_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301259301260_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295245295285_))
                                    (___match301301301302_
                                     _e295216295372_
                                     _hd295215295376_
                                     _tl295214295379_
                                     ___splice301259301260_
                                     _target295243295282_
                                     _tl295245295285_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295210295265_)))))
                            (let () (declare (not safe)) (_g295210295265_))))))
                (let () (declare (not safe)) (_g295210295265_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295487_)
      (let* ((_g295491295509_
              (lambda (_g295492295505_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295492295505_))))
             (_g295490295564_
              (lambda (_g295492295513_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295492295513_))
                    (let ((_e295497295516_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295492295513_))))
                      (let ((_hd295496295520_
                             (let ()
                               (declare (not safe))
                               (##car _e295497295516_)))
                            (_tl295495295523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295497295516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295495295523_))
                            (let ((_e295500295526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295495295523_))))
                              (let ((_hd295499295530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295500295526_)))
                                    (_tl295498295533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295500295526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295498295533_))
                                    (let ((_e295503295536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295498295533_))))
                                      (let ((_hd295502295540_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295503295536_)))
                                            (_tl295501295543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295503295536_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295501295543_))
                                            ((lambda (_L295546_ _L295548_)
                                               (let ((__tmp301696
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301683
                                                      (let ((__tmp301692
                                                             (let ((__tmp301695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301693
                            (let ((__tmp301694
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301694 '()))))
                       (declare (not safe))
                       (cons __tmp301695 __tmp301693)))
                    (__tmp301684
                     (let ((__tmp301689
                            (let ((__tmp301691
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301690
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295548_ '()))))
                              (declare (not safe))
                              (cons __tmp301691 __tmp301690)))
                           (__tmp301685
                            (let ((__tmp301686
                                   (let ((__tmp301688
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301687
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295546_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301688 __tmp301687))))
                              (declare (not safe))
                              (cons __tmp301686 '()))))
                       (declare (not safe))
                       (cons __tmp301689 __tmp301685))))
                (declare (not safe))
                (cons __tmp301692 __tmp301684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301696
                                                       __tmp301683)))
                                             _hd295502295540_
                                             _hd295499295530_)
                                            (_g295491295509_
                                             _g295492295513_))))
                                    (_g295491295509_ _g295492295513_))))
                            (_g295491295509_ _g295492295513_))))
                    (_g295491295509_ _g295492295513_)))))
        (_g295490295564_ _$stx295487_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295568_)
      (let* ((_g295572295590_
              (lambda (_g295573295586_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295573295586_))))
             (_g295571295645_
              (lambda (_g295573295594_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295573295594_))
                    (let ((_e295578295597_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295573295594_))))
                      (let ((_hd295577295601_
                             (let ()
                               (declare (not safe))
                               (##car _e295578295597_)))
                            (_tl295576295604_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295578295597_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295576295604_))
                            (let ((_e295581295607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295576295604_))))
                              (let ((_hd295580295611_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295581295607_)))
                                    (_tl295579295614_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295581295607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295579295614_))
                                    (let ((_e295584295617_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295579295614_))))
                                      (let ((_hd295583295621_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295584295617_)))
                                            (_tl295582295624_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295584295617_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295582295624_))
                                            ((lambda (_L295627_ _L295629_)
                                               (let ((__tmp301710
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301697
                                                      (let ((__tmp301706
                                                             (let ((__tmp301709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301707
                            (let ((__tmp301708
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301708 '()))))
                       (declare (not safe))
                       (cons __tmp301709 __tmp301707)))
                    (__tmp301698
                     (let ((__tmp301703
                            (let ((__tmp301705
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301704
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295629_ '()))))
                              (declare (not safe))
                              (cons __tmp301705 __tmp301704)))
                           (__tmp301699
                            (let ((__tmp301700
                                   (let ((__tmp301702
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301701
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295627_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301702 __tmp301701))))
                              (declare (not safe))
                              (cons __tmp301700 '()))))
                       (declare (not safe))
                       (cons __tmp301703 __tmp301699))))
                (declare (not safe))
                (cons __tmp301706 __tmp301698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301710
                                                       __tmp301697)))
                                             _hd295583295621_
                                             _hd295580295611_)
                                            (_g295572295590_
                                             _g295573295594_))))
                                    (_g295572295590_ _g295573295594_))))
                            (_g295572295590_ _g295573295594_))))
                    (_g295572295590_ _g295573295594_)))))
        (_g295571295645_ _$stx295568_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295649_)
      (let* ((___stx301304301305_ _$stx295649_)
             (_g295656295727_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301304301305_)))))
        (let ((___kont301307301308_
               (lambda (_L296018_ _L296020_)
                 (let ((__tmp301716
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301711
                        (let ((__tmp301712
                               (let ((__tmp301713
                                      (let ((__tmp301715
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301714
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296018_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301715 __tmp301714))))
                                 (declare (not safe))
                                 (cons __tmp301713 '()))))
                          (declare (not safe))
                          (cons _L296020_ __tmp301712))))
                   (declare (not safe))
                   (cons __tmp301716 __tmp301711))))
              (___kont301309301310_
               (lambda (_L295937_ _L295939_)
                 (let ((__tmp301725
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301717
                        (let ((__tmp301718
                               (let ((__tmp301719
                                      (let ((__tmp301724
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301720
                                             (let ((__tmp301721
                                                    (lambda (_g295958295961_
                                                             _g295959295964_)
                                                      (let ((__tmp301722
                                                             (let ((__tmp301723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295958295961_ __tmp301723))))
                (declare (not safe))
                (cons __tmp301722 _g295959295964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301721
                                                       '()
                                                       _L295937_))))
                                        (declare (not safe))
                                        (cons __tmp301724 __tmp301720))))
                                 (declare (not safe))
                                 (cons __tmp301719 '()))))
                          (declare (not safe))
                          (cons _L295939_ __tmp301718))))
                   (declare (not safe))
                   (cons __tmp301725 __tmp301717))))
              (___kont301313301314_
               (lambda (_L295849_ _L295851_)
                 (let ((__tmp301732
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301726
                        (let ((__tmp301727
                               (let ((__tmp301728
                                      (let ((__tmp301731
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301729
                                             (let ((__tmp301730
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295849_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301730))))
                                        (declare (not safe))
                                        (cons __tmp301731 __tmp301729))))
                                 (declare (not safe))
                                 (cons __tmp301728 '()))))
                          (declare (not safe))
                          (cons _L295851_ __tmp301727))))
                   (declare (not safe))
                   (cons __tmp301732 __tmp301726))))
              (___kont301315301316_
               (lambda (_L295784_ _L295786_)
                 (let ((__tmp301742
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301733
                        (let ((__tmp301734
                               (let ((__tmp301735
                                      (let ((__tmp301741
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301736
                                             (let ((__tmp301737
                                                    (let ((__tmp301738
                                                           (lambda (_g295803295806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295804295809_)
                     (let ((__tmp301739
                            (let ((__tmp301740
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295803295806_ __tmp301740))))
                       (declare (not safe))
                       (cons __tmp301739 _g295804295809_)))))
              (declare (not safe))
              (foldr1 __tmp301738 '() _L295784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301737))))
                                        (declare (not safe))
                                        (cons __tmp301741 __tmp301736))))
                                 (declare (not safe))
                                 (cons __tmp301735 '()))))
                          (declare (not safe))
                          (cons _L295786_ __tmp301734))))
                   (declare (not safe))
                   (cons __tmp301742 __tmp301733)))))
          (let* ((___match301423301424_
                  (lambda (_e295709295734_
                           _hd295708295738_
                           _tl295707295741_
                           _e295712295744_
                           _hd295711295748_
                           _tl295710295751_
                           ___splice301317301318_
                           _target295713295754_
                           _tl295715295757_)
                    (letrec ((_loop295716295760_
                              (lambda (_hd295714295764_ _arity295720295767_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295714295764_))
                                    (let ((_e295717295770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295714295764_))))
                                      (let ((_lp-tl295719295777_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295717295770_)))
                                            (_lp-hd295718295774_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295717295770_))))
                                        (_loop295716295760_
                                         _lp-tl295719295777_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295718295774_
                                                 _arity295720295767_)))))
                                    (let ((_arity295721295780_
                                           (reverse _arity295720295767_)))
                                      (___kont301315301316_
                                       _arity295721295780_
                                       _hd295711295748_))))))
                      (_loop295716295760_ _target295713295754_ '()))))
                 (___match301383301384_
                  (lambda (_e295677295873_
                           _hd295676295877_
                           _tl295675295880_
                           _e295680295883_
                           _hd295679295887_
                           _tl295678295890_
                           _e295683295893_
                           _hd295682295897_
                           _tl295681295900_
                           _e295684295903_
                           ___splice301311301312_
                           _target295685295907_
                           _tl295687295910_)
                    (letrec ((_loop295688295913_
                              (lambda (_hd295686295917_ _arity295692295920_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295686295917_))
                                    (let ((_e295689295923_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295686295917_))))
                                      (let ((_lp-tl295691295930_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295689295923_)))
                                            (_lp-hd295690295927_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295689295923_))))
                                        (_loop295688295913_
                                         _lp-tl295691295930_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295690295927_
                                                 _arity295692295920_)))))
                                    (let ((_arity295693295933_
                                           (reverse _arity295692295920_)))
                                      (___kont301309301310_
                                       _arity295693295933_
                                       _hd295679295887_))))))
                      (_loop295688295913_ _target295685295907_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301304301305_))
                (let ((_e295662295974_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301304301305_))))
                  (let ((_tl295660295981_
                         (let () (declare (not safe)) (##cdr _e295662295974_)))
                        (_hd295661295978_
                         (let ()
                           (declare (not safe))
                           (##car _e295662295974_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295660295981_))
                        (let ((_e295665295984_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295660295981_))))
                          (let ((_tl295663295991_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295665295984_)))
                                (_hd295664295988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295665295984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295663295991_))
                                (let ((_e295668295994_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295663295991_))))
                                  (let ((_tl295666296001_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295668295994_)))
                                        (_hd295667295998_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295668295994_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295667295998_))
                                        (let ((_e295669296004_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295667295998_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295669296004_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295666296001_))
                                                  (let ((_e295672296008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295666296001_))))
                                                    (let ((_tl295670296015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295672296008_)))
                                                          (_hd295671296012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295672296008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295670296015_))
                                                          (___kont301307301308_
                                                           _hd295671296012_
                                                           _hd295664295988_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295666296001_))
                      (let ((___splice301311301312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295666296001_ '0))))
                        (let ((_tl295687295910_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301311301312_ '1)))
                              (_target295685295907_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301311301312_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295687295910_))
                              (___match301383301384_
                               _e295662295974_
                               _hd295661295978_
                               _tl295660295981_
                               _e295665295984_
                               _hd295664295988_
                               _tl295663295991_
                               _e295668295994_
                               _hd295667295998_
                               _tl295666296001_
                               _e295669296004_
                               ___splice301311301312_
                               _target295685295907_
                               _tl295687295910_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295663295991_))
                                  (let ((___splice301317301318_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295663295991_
                                            '0))))
                                    (let ((_tl295715295757_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301317301318_
                                              '1)))
                                          (_target295713295754_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301317301318_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295715295757_))
                                          (___match301423301424_
                                           _e295662295974_
                                           _hd295661295978_
                                           _tl295660295981_
                                           _e295665295984_
                                           _hd295664295988_
                                           _tl295663295991_
                                           ___splice301317301318_
                                           _target295713295754_
                                           _tl295715295757_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295656295727_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295656295727_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295663295991_))
                          (let ((___splice301317301318_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295663295991_
                                    '0))))
                            (let ((_tl295715295757_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301317301318_ '1)))
                                  (_target295713295754_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301317301318_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295715295757_))
                                  (___match301423301424_
                                   _e295662295974_
                                   _hd295661295978_
                                   _tl295660295981_
                                   _e295665295984_
                                   _hd295664295988_
                                   _tl295663295991_
                                   ___splice301317301318_
                                   _target295713295754_
                                   _tl295715295757_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295656295727_)))))
                          (let () (declare (not safe)) (_g295656295727_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295666296001_))
                                                      (let ((___splice301311301312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295666296001_ '0))))
                (let ((_tl295687295910_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301311301312_ '1)))
                      (_target295685295907_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301311301312_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295687295910_))
                      (___match301383301384_
                       _e295662295974_
                       _hd295661295978_
                       _tl295660295981_
                       _e295665295984_
                       _hd295664295988_
                       _tl295663295991_
                       _e295668295994_
                       _hd295667295998_
                       _tl295666296001_
                       _e295669296004_
                       ___splice301311301312_
                       _target295685295907_
                       _tl295687295910_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295666296001_))
                          (___kont301313301314_
                           _hd295667295998_
                           _hd295664295988_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295663295991_))
                              (let ((___splice301317301318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295663295991_
                                        '0))))
                                (let ((_tl295715295757_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301317301318_
                                          '1)))
                                      (_target295713295754_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301317301318_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295715295757_))
                                      (___match301423301424_
                                       _e295662295974_
                                       _hd295661295978_
                                       _tl295660295981_
                                       _e295665295984_
                                       _hd295664295988_
                                       _tl295663295991_
                                       ___splice301317301318_
                                       _target295713295754_
                                       _tl295715295757_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295656295727_)))))
                              (let ()
                                (declare (not safe))
                                (_g295656295727_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295666296001_))
                  (___kont301313301314_ _hd295667295998_ _hd295664295988_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295663295991_))
                      (let ((___splice301317301318_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295663295991_ '0))))
                        (let ((_tl295715295757_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301317301318_ '1)))
                              (_target295713295754_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301317301318_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295715295757_))
                              (___match301423301424_
                               _e295662295974_
                               _hd295661295978_
                               _tl295660295981_
                               _e295665295984_
                               _hd295664295988_
                               _tl295663295991_
                               ___splice301317301318_
                               _target295713295754_
                               _tl295715295757_)
                              (let ()
                                (declare (not safe))
                                (_g295656295727_)))))
                      (let () (declare (not safe)) (_g295656295727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295666296001_))
                                                  (___kont301313301314_
                                                   _hd295667295998_
                                                   _hd295664295988_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295663295991_))
                                                      (let ((___splice301317301318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295663295991_ '0))))
                (let ((_tl295715295757_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301317301318_ '1)))
                      (_target295713295754_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301317301318_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295715295757_))
                      (___match301423301424_
                       _e295662295974_
                       _hd295661295978_
                       _tl295660295981_
                       _e295665295984_
                       _hd295664295988_
                       _tl295663295991_
                       ___splice301317301318_
                       _target295713295754_
                       _tl295715295757_)
                      (let () (declare (not safe)) (_g295656295727_)))))
              (let () (declare (not safe)) (_g295656295727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295666296001_))
                                            (___kont301313301314_
                                             _hd295667295998_
                                             _hd295664295988_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295663295991_))
                                                (let ((___splice301317301318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295663295991_
                                                          '0))))
                                                  (let ((_tl295715295757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301317301318_
                                                            '1)))
                                                        (_target295713295754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301317301318_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295715295757_))
                                                        (___match301423301424_
                                                         _e295662295974_
                                                         _hd295661295978_
                                                         _tl295660295981_
                                                         _e295665295984_
                                                         _hd295664295988_
                                                         _tl295663295991_
                                                         ___splice301317301318_
                                                         _target295713295754_
                                                         _tl295715295757_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295656295727_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295656295727_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295663295991_))
                                    (let ((___splice301317301318_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295663295991_
                                              '0))))
                                      (let ((_tl295715295757_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301317301318_
                                                '1)))
                                            (_target295713295754_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301317301318_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295715295757_))
                                            (___match301423301424_
                                             _e295662295974_
                                             _hd295661295978_
                                             _tl295660295981_
                                             _e295665295984_
                                             _hd295664295988_
                                             _tl295663295991_
                                             ___splice301317301318_
                                             _target295713295754_
                                             _tl295715295757_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295656295727_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295656295727_))))))
                        (let () (declare (not safe)) (_g295656295727_)))))
                (let () (declare (not safe)) (_g295656295727_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx296044_)
      (let* ((___stx301426301427_ _$stx296044_)
             (_g296049296084_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301426301427_)))))
        (let ((___kont301429301430_
               (lambda (_L296206_ _L296208_)
                 (let ((__tmp301748
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301743
                        (let ((__tmp301744
                               (let ((__tmp301745
                                      (let ((__tmp301747
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301746
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296206_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301747 __tmp301746))))
                                 (declare (not safe))
                                 (cons __tmp301745 '()))))
                          (declare (not safe))
                          (cons _L296208_ __tmp301744))))
                   (declare (not safe))
                   (cons __tmp301748 __tmp301743))))
              (___kont301431301432_
               (lambda (_L296141_ _L296143_)
                 (let ((__tmp301757
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301749
                        (let ((__tmp301750
                               (let ((__tmp301751
                                      (let ((__tmp301756
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301752
                                             (let ((__tmp301753
                                                    (lambda (_g296160296163_
                                                             _g296161296166_)
                                                      (let ((__tmp301754
                                                             (let ((__tmp301755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296160296163_ __tmp301755))))
                (declare (not safe))
                (cons __tmp301754 _g296161296166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301753
                                                       '()
                                                       _L296141_))))
                                        (declare (not safe))
                                        (cons __tmp301756 __tmp301752))))
                                 (declare (not safe))
                                 (cons __tmp301751 '()))))
                          (declare (not safe))
                          (cons _L296143_ __tmp301750))))
                   (declare (not safe))
                   (cons __tmp301757 __tmp301749)))))
          (let ((___match301475301476_
                 (lambda (_e296066296091_
                          _hd296065296095_
                          _tl296064296098_
                          _e296069296101_
                          _hd296068296105_
                          _tl296067296108_
                          ___splice301433301434_
                          _target296070296111_
                          _tl296072296114_)
                   (letrec ((_loop296073296117_
                             (lambda (_hd296071296121_ _arity296077296124_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd296071296121_))
                                   (let ((_e296074296127_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd296071296121_))))
                                     (let ((_lp-tl296076296134_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e296074296127_)))
                                           (_lp-hd296075296131_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e296074296127_))))
                                       (_loop296073296117_
                                        _lp-tl296076296134_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd296075296131_
                                                _arity296077296124_)))))
                                   (let ((_arity296078296137_
                                          (reverse _arity296077296124_)))
                                     (___kont301431301432_
                                      _arity296078296137_
                                      _hd296068296105_))))))
                     (_loop296073296117_ _target296070296111_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301426301427_))
                (let ((_e296055296176_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301426301427_))))
                  (let ((_tl296053296183_
                         (let () (declare (not safe)) (##cdr _e296055296176_)))
                        (_hd296054296180_
                         (let ()
                           (declare (not safe))
                           (##car _e296055296176_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296053296183_))
                        (let ((_e296058296186_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296053296183_))))
                          (let ((_tl296056296193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296058296186_)))
                                (_hd296057296190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296058296186_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296056296193_))
                                (let ((_e296061296196_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296056296193_))))
                                  (let ((_tl296059296203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296061296196_)))
                                        (_hd296060296200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296061296196_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296059296203_))
                                        (___kont301429301430_
                                         _hd296060296200_
                                         _hd296057296190_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl296056296193_))
                                            (let ((___splice301433301434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl296056296193_
                                                      '0))))
                                              (let ((_tl296072296114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301433301434_
                                                        '1)))
                                                    (_target296070296111_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301433301434_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296072296114_))
                                                    (___match301475301476_
                                                     _e296055296176_
                                                     _hd296054296180_
                                                     _tl296053296183_
                                                     _e296058296186_
                                                     _hd296057296190_
                                                     _tl296056296193_
                                                     ___splice301433301434_
                                                     _target296070296111_
                                                     _tl296072296114_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296049296084_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g296049296084_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296056296193_))
                                    (let ((___splice301433301434_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296056296193_
                                              '0))))
                                      (let ((_tl296072296114_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301433301434_
                                                '1)))
                                            (_target296070296111_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301433301434_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296072296114_))
                                            (___match301475301476_
                                             _e296055296176_
                                             _hd296054296180_
                                             _tl296053296183_
                                             _e296058296186_
                                             _hd296057296190_
                                             _tl296056296193_
                                             ___splice301433301434_
                                             _target296070296111_
                                             _tl296072296114_)
                                            (let ()
                                              (declare (not safe))
                                              (_g296049296084_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g296049296084_))))))
                        (let () (declare (not safe)) (_g296049296084_)))))
                (let () (declare (not safe)) (_g296049296084_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296228_)
      (let* ((_g296232296267_
              (lambda (_g296233296263_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296233296263_))))
             (_g296231296395_
              (lambda (_g296233296271_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296233296271_))
                    (let ((_e296238296274_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296233296271_))))
                      (let ((_hd296237296278_
                             (let ()
                               (declare (not safe))
                               (##car _e296238296274_)))
                            (_tl296236296281_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296238296274_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296236296281_))
                            (let ((_g301758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296236296281_
                                      '0))))
                              (begin
                                (let ((_g301759_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301758_)
                                             (##vector-length _g301758_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301759_ 2)))
                                      (error "Context expects 2 values"
                                             _g301759_)))
                                (let ((_target296239296284_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301758_ 0)))
                                      (_tl296241296287_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301758_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296241296287_))
                                      (letrec ((_loop296242296290_
                                                (lambda (_hd296240296294_
                                                         _arity296246296297_
                                                         _prim296247296299_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296240296294_))
                                                      (let ((_e296243296302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296240296294_))))
                (let ((_lp-hd296244296306_
                       (let () (declare (not safe)) (##car _e296243296302_)))
                      (_lp-tl296245296309_
                       (let () (declare (not safe)) (##cdr _e296243296302_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296244296306_))
                      (let ((_e296252296312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296244296306_))))
                        (let ((_hd296251296316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296252296312_)))
                              (_tl296250296319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296252296312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296250296319_))
                              (let ((_g301768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296250296319_
                                        '0))))
                                (begin
                                  (let ((_g301769_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301768_)
                                               (##vector-length _g301768_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301769_ 2)))
                                        (error "Context expects 2 values"
                                               _g301769_)))
                                  (let ((_target296253296322_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301768_ 0)))
                                        (_tl296255296325_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301768_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296255296325_))
                                        (letrec ((_loop296256296328_
                                                  (lambda (_hd296254296332_
                                                           _arity296260296335_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296254296332_))
                                                        (let ((_e296257296338_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296254296332_))))
                  (let ((_lp-hd296258296342_
                         (let () (declare (not safe)) (##car _e296257296338_)))
                        (_lp-tl296259296345_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296257296338_))))
                    (_loop296256296328_
                     _lp-tl296259296345_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296258296342_ _arity296260296335_)))))
                (let ((_arity296261296348_ (reverse _arity296260296335_)))
                  (_loop296242296290_
                   _lp-tl296245296309_
                   (let ()
                     (declare (not safe))
                     (cons _arity296261296348_ _arity296246296297_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296251296316_ _prim296247296299_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296256296328_
                                           _target296253296322_
                                           '()))
                                        (_g296232296267_ _g296233296271_)))))
                              (_g296232296267_ _g296233296271_))))
                      (_g296232296267_ _g296233296271_))))
              (let ((_arity296248296352_ (reverse _arity296246296297_))
                    (_prim296249296355_ (reverse _prim296247296299_)))
                ((lambda (_L296358_ _L296360_)
                   (let ((__tmp301767
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301760
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296358_
                               _L296360_))
                            (let ((__tmp301761
                                   (lambda (_g296375296381_
                                            _g296376296384_
                                            _g296377296386_)
                                     (let ((__tmp301762
                                            (let ((__tmp301766
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301763
                                                   (let ((__tmp301764
                                                          (let ((__tmp301765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296378296389_ _g296379296392_)
                           (let ()
                             (declare (not safe))
                             (cons _g296378296389_ _g296379296392_)))))
                    (declare (not safe))
                    (foldr1 __tmp301765 '() _g296375296381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296376296384_
                                                           __tmp301764))))
                                              (declare (not safe))
                                              (cons __tmp301766 __tmp301763))))
                                       (declare (not safe))
                                       (cons __tmp301762 _g296377296386_)))))
                              (declare (not safe))
                              (foldr2 __tmp301761 '() _L296358_ _L296360_)))))
                     (declare (not safe))
                     (cons __tmp301767 __tmp301760)))
                 _arity296248296352_
                 _prim296249296355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296242296290_
                                         _target296239296284_
                                         '()
                                         '()))
                                      (_g296232296267_ _g296233296271_)))))
                            (_g296232296267_ _g296233296271_))))
                    (_g296232296267_ _g296233296271_)))))
        (_g296231296395_ _$stx296228_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296401_)
      (let* ((_g296405296440_
              (lambda (_g296406296436_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296406296436_))))
             (_g296404296568_
              (lambda (_g296406296444_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296406296444_))
                    (let ((_e296411296447_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296406296444_))))
                      (let ((_hd296410296451_
                             (let ()
                               (declare (not safe))
                               (##car _e296411296447_)))
                            (_tl296409296454_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296411296447_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296409296454_))
                            (let ((_g301770_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296409296454_
                                      '0))))
                              (begin
                                (let ((_g301771_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301770_)
                                             (##vector-length _g301770_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301771_ 2)))
                                      (error "Context expects 2 values"
                                             _g301771_)))
                                (let ((_target296412296457_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301770_ 0)))
                                      (_tl296414296460_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301770_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296414296460_))
                                      (letrec ((_loop296415296463_
                                                (lambda (_hd296413296467_
                                                         _arity296419296470_
                                                         _prim296420296472_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296413296467_))
                                                      (let ((_e296416296475_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296413296467_))))
                (let ((_lp-hd296417296479_
                       (let () (declare (not safe)) (##car _e296416296475_)))
                      (_lp-tl296418296482_
                       (let () (declare (not safe)) (##cdr _e296416296475_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296417296479_))
                      (let ((_e296425296485_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296417296479_))))
                        (let ((_hd296424296489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296425296485_)))
                              (_tl296423296492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296425296485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296423296492_))
                              (let ((_g301780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296423296492_
                                        '0))))
                                (begin
                                  (let ((_g301781_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301780_)
                                               (##vector-length _g301780_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301781_ 2)))
                                        (error "Context expects 2 values"
                                               _g301781_)))
                                  (let ((_target296426296495_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301780_ 0)))
                                        (_tl296428296498_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301780_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296428296498_))
                                        (letrec ((_loop296429296501_
                                                  (lambda (_hd296427296505_
                                                           _arity296433296508_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296427296505_))
                                                        (let ((_e296430296511_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296427296505_))))
                  (let ((_lp-hd296431296515_
                         (let () (declare (not safe)) (##car _e296430296511_)))
                        (_lp-tl296432296518_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296430296511_))))
                    (_loop296429296501_
                     _lp-tl296432296518_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296431296515_ _arity296433296508_)))))
                (let ((_arity296434296521_ (reverse _arity296433296508_)))
                  (_loop296415296463_
                   _lp-tl296418296482_
                   (let ()
                     (declare (not safe))
                     (cons _arity296434296521_ _arity296419296470_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296424296489_ _prim296420296472_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296429296501_
                                           _target296426296495_
                                           '()))
                                        (_g296405296440_ _g296406296444_)))))
                              (_g296405296440_ _g296406296444_))))
                      (_g296405296440_ _g296406296444_))))
              (let ((_arity296421296525_ (reverse _arity296419296470_))
                    (_prim296422296528_ (reverse _prim296420296472_)))
                ((lambda (_L296531_ _L296533_)
                   (let ((__tmp301779
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301772
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296531_
                               _L296533_))
                            (let ((__tmp301773
                                   (lambda (_g296548296554_
                                            _g296549296557_
                                            _g296550296559_)
                                     (let ((__tmp301774
                                            (let ((__tmp301778
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301775
                                                   (let ((__tmp301776
                                                          (let ((__tmp301777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296551296562_ _g296552296565_)
                           (let ()
                             (declare (not safe))
                             (cons _g296551296562_ _g296552296565_)))))
                    (declare (not safe))
                    (foldr1 __tmp301777 '() _g296548296554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296549296557_
                                                           __tmp301776))))
                                              (declare (not safe))
                                              (cons __tmp301778 __tmp301775))))
                                       (declare (not safe))
                                       (cons __tmp301774 _g296550296559_)))))
                              (declare (not safe))
                              (foldr2 __tmp301773 '() _L296531_ _L296533_)))))
                     (declare (not safe))
                     (cons __tmp301779 __tmp301772)))
                 _arity296421296525_
                 _prim296422296528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296415296463_
                                         _target296412296457_
                                         '()
                                         '()))
                                      (_g296405296440_ _g296406296444_)))))
                            (_g296405296440_ _g296406296444_))))
                    (_g296405296440_ _g296406296444_)))))
        (_g296404296568_ _$stx296401_)))))
