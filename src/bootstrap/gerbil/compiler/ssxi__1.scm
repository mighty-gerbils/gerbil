(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293577_)
      (let* ((_g293581293599_
              (lambda (_g293582293595_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293582293595_))))
             (_g293580293654_
              (lambda (_g293582293603_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293582293603_))
                    (let ((_e293587293606_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293582293603_))))
                      (let ((_hd293586293610_
                             (let ()
                               (declare (not safe))
                               (##car _e293587293606_)))
                            (_tl293585293613_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293587293606_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293585293613_))
                            (let ((_e293590293616_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293585293613_))))
                              (let ((_hd293589293620_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293590293616_)))
                                    (_tl293588293623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293590293616_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293588293623_))
                                    (let ((_e293593293626_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293588293623_))))
                                      (let ((_hd293592293630_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293593293626_)))
                                            (_tl293591293633_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293593293626_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293591293633_))
                                            ((lambda (_L293636_ _L293638_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293638_))
                                                   (let ((__tmp301568
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301563
                                                          (let ((__tmp301565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301567
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301566
                                (let ()
                                  (declare (not safe))
                                  (cons _L293638_ '()))))
                           (declare (not safe))
                           (cons __tmp301567 __tmp301566)))
                        (__tmp301564
                         (let () (declare (not safe)) (cons _L293636_ '()))))
                    (declare (not safe))
                    (cons __tmp301565 __tmp301564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301568
                                                           __tmp301563))
                                                   (_g293581293599_
                                                    _g293582293603_)))
                                             _hd293592293630_
                                             _hd293589293620_)
                                            (_g293581293599_
                                             _g293582293603_))))
                                    (_g293581293599_ _g293582293603_))))
                            (_g293581293599_ _g293582293603_))))
                    (_g293581293599_ _g293582293603_)))))
        (_g293580293654_ _$stx293577_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293658_)
      (let* ((_g293662293691_
              (lambda (_g293663293687_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293663293687_))))
             (_g293661293791_
              (lambda (_g293663293695_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293663293695_))
                    (let ((_e293668293698_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293663293695_))))
                      (let ((_hd293667293702_
                             (let ()
                               (declare (not safe))
                               (##car _e293668293698_)))
                            (_tl293666293705_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293668293698_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293666293705_))
                            (let ((_g301569_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293666293705_
                                      '0))))
                              (begin
                                (let ((_g301570_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301569_)
                                             (##vector-length _g301569_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301570_ 2)))
                                      (error "Context expects 2 values"
                                             _g301570_)))
                                (let ((_target293669293708_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301569_ 0)))
                                      (_tl293671293711_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301569_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293671293711_))
                                      (letrec ((_loop293672293714_
                                                (lambda (_hd293670293718_
                                                         _type293676293721_
                                                         _symbol293677293723_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293670293718_))
                                                      (let ((_e293673293726_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293670293718_))))
                (let ((_lp-hd293674293730_
                       (let () (declare (not safe)) (##car _e293673293726_)))
                      (_lp-tl293675293733_
                       (let () (declare (not safe)) (##cdr _e293673293726_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293674293730_))
                      (let ((_e293682293736_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293674293730_))))
                        (let ((_hd293681293740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293682293736_)))
                              (_tl293680293743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293682293736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293680293743_))
                              (let ((_e293685293746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293680293743_))))
                                (let ((_hd293684293750_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293685293746_)))
                                      (_tl293683293753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293685293746_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293683293753_))
                                      (_loop293672293714_
                                       _lp-tl293675293733_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293684293750_
                                               _type293676293721_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293681293740_
                                               _symbol293677293723_)))
                                      (_g293662293691_ _g293663293695_))))
                              (_g293662293691_ _g293663293695_))))
                      (_g293662293691_ _g293663293695_))))
              (let ((_type293678293756_ (reverse _type293676293721_))
                    (_symbol293679293759_ (reverse _symbol293677293723_)))
                ((lambda (_L293762_ _L293764_)
                   (let ((__tmp301577
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301571
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293762_
                               _L293764_))
                            (let ((__tmp301572
                                   (lambda (_g293779293783_
                                            _g293780293786_
                                            _g293781293788_)
                                     (let ((__tmp301573
                                            (let ((__tmp301576
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301574
                                                   (let ((__tmp301575
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293779293783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293780293786_
                                                           __tmp301575))))
                                              (declare (not safe))
                                              (cons __tmp301576 __tmp301574))))
                                       (declare (not safe))
                                       (cons __tmp301573 _g293781293788_)))))
                              (declare (not safe))
                              (foldr2 __tmp301572 '() _L293762_ _L293764_)))))
                     (declare (not safe))
                     (cons __tmp301577 __tmp301571)))
                 _type293678293756_
                 _symbol293679293759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293672293714_
                                         _target293669293708_
                                         '()
                                         '()))
                                      (_g293662293691_ _g293663293695_)))))
                            (_g293662293691_ _g293663293695_))))
                    (_g293662293691_ _g293663293695_)))))
        (_g293661293791_ _$stx293658_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293796_)
      (let* ((___stx301128301129_ _$stx293796_)
             (_g293801293843_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301128301129_)))))
        (let ((___kont301131301132_
               (lambda (_L293971_ _L293973_ _L293974_ _L293975_)
                 (let ((__tmp301591
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301578
                        (let ((__tmp301588
                               (let ((__tmp301590
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301589
                                      (let ()
                                        (declare (not safe))
                                        (cons _L293975_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301590 __tmp301589)))
                              (__tmp301579
                               (let ((__tmp301585
                                      (let ((__tmp301587
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301586
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293974_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301587 __tmp301586)))
                                     (__tmp301580
                                      (let ((__tmp301582
                                             (let ((__tmp301584
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301583
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L293973_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301584 __tmp301583)))
                                            (__tmp301581
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293971_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301582 __tmp301581))))
                                 (declare (not safe))
                                 (cons __tmp301585 __tmp301580))))
                          (declare (not safe))
                          (cons __tmp301588 __tmp301579))))
                   (declare (not safe))
                   (cons __tmp301591 __tmp301578))))
              (___kont301133301134_
               (lambda (_L293890_ _L293892_ _L293893_ _L293894_)
                 (let ((__tmp301592
                        (let ((__tmp301593
                               (let ((__tmp301594
                                      (let ((__tmp301595
                                             (let ((__tmp301596
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301596 '()))))
                                        (declare (not safe))
                                        (cons _L293890_ __tmp301595))))
                                 (declare (not safe))
                                 (cons _L293892_ __tmp301594))))
                          (declare (not safe))
                          (cons _L293893_ __tmp301593))))
                   (declare (not safe))
                   (cons _L293894_ __tmp301592)))))
          (let ((___match301167301168_
                 (lambda (_e293809293921_
                          _hd293808293925_
                          _tl293807293928_
                          _e293812293931_
                          _hd293811293935_
                          _tl293810293938_
                          _e293815293941_
                          _hd293814293945_
                          _tl293813293948_
                          _e293818293951_
                          _hd293817293955_
                          _tl293816293958_
                          _e293821293961_
                          _hd293820293965_
                          _tl293819293968_)
                   (let ((_L293971_ _hd293820293965_)
                         (_L293973_ _hd293817293955_)
                         (_L293974_ _hd293814293945_)
                         (_L293975_ _hd293811293935_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L293975_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293974_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293973_)))
                         (___kont301131301132_
                          _L293971_
                          _L293973_
                          _L293974_
                          _L293975_)
                         (let () (declare (not safe)) (_g293801293843_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301128301129_))
                (let ((_e293809293921_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301128301129_))))
                  (let ((_tl293807293928_
                         (let () (declare (not safe)) (##cdr _e293809293921_)))
                        (_hd293808293925_
                         (let ()
                           (declare (not safe))
                           (##car _e293809293921_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293807293928_))
                        (let ((_e293812293931_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293807293928_))))
                          (let ((_tl293810293938_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293812293931_)))
                                (_hd293811293935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293812293931_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293810293938_))
                                (let ((_e293815293941_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293810293938_))))
                                  (let ((_tl293813293948_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293815293941_)))
                                        (_hd293814293945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293815293941_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293813293948_))
                                        (let ((_e293818293951_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293813293948_))))
                                          (let ((_tl293816293958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293818293951_)))
                                                (_hd293817293955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293818293951_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293816293958_))
                                                (let ((_e293821293961_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293816293958_))))
                                                  (let ((_tl293819293968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293821293961_)))
                                                        (_hd293820293965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293821293961_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293819293968_))
                                                        (___match301167301168_
                                                         _e293809293921_
                                                         _hd293808293925_
                                                         _tl293807293928_
                                                         _e293812293931_
                                                         _hd293811293935_
                                                         _tl293810293938_
                                                         _e293815293941_
                                                         _hd293814293945_
                                                         _tl293813293948_
                                                         _e293818293951_
                                                         _hd293817293955_
                                                         _tl293816293958_
                                                         _e293821293961_
                                                         _hd293820293965_
                                                         _tl293819293968_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293801293843_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293816293958_))
                                                    (___kont301133301134_
                                                     _hd293817293955_
                                                     _hd293814293945_
                                                     _hd293811293935_
                                                     _hd293808293925_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293801293843_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293801293843_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293801293843_)))))
                        (let () (declare (not safe)) (_g293801293843_)))))
                (let () (declare (not safe)) (_g293801293843_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx294000_)
      (let* ((_g294004294039_
              (lambda (_g294005294035_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294005294035_))))
             (_g294003294158_
              (lambda (_g294005294043_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294005294043_))
                    (let ((_e294011294046_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294005294043_))))
                      (let ((_hd294010294050_
                             (let ()
                               (declare (not safe))
                               (##car _e294011294046_)))
                            (_tl294009294053_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294011294046_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294009294053_))
                            (let ((_g301597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294009294053_
                                      '0))))
                              (begin
                                (let ((_g301598_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301597_)
                                             (##vector-length _g301597_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301598_ 2)))
                                      (error "Context expects 2 values"
                                             _g301598_)))
                                (let ((_target294012294056_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301597_ 0)))
                                      (_tl294014294059_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301597_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294014294059_))
                                      (letrec ((_loop294015294062_
                                                (lambda (_hd294013294066_
                                                         _symbol294019294069_
                                                         _method294020294071_
                                                         _type-t294021294073_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd294013294066_))
                                                      (let ((_e294016294076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd294013294066_))))
                (let ((_lp-hd294017294080_
                       (let () (declare (not safe)) (##car _e294016294076_)))
                      (_lp-tl294018294083_
                       (let () (declare (not safe)) (##cdr _e294016294076_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd294017294080_))
                      (let ((_e294027294086_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd294017294080_))))
                        (let ((_hd294026294090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294027294086_)))
                              (_tl294025294093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294027294086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294025294093_))
                              (let ((_e294030294096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294025294093_))))
                                (let ((_hd294029294100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294030294096_)))
                                      (_tl294028294103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294030294096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294028294103_))
                                      (let ((_e294033294106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294028294103_))))
                                        (let ((_hd294032294110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294033294106_)))
                                              (_tl294031294113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294033294106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294031294113_))
                                              (_loop294015294062_
                                               _lp-tl294018294083_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294032294110_
                                                       _symbol294019294069_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294029294100_
                                                       _method294020294071_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294026294090_
                                                       _type-t294021294073_)))
                                              (_g294004294039_
                                               _g294005294043_))))
                                      (_g294004294039_ _g294005294043_))))
                              (_g294004294039_ _g294005294043_))))
                      (_g294004294039_ _g294005294043_))))
              (let ((_symbol294022294116_ (reverse _symbol294019294069_))
                    (_method294023294119_ (reverse _method294020294071_))
                    (_type-t294024294121_ (reverse _type-t294021294073_)))
                ((lambda (_L294124_ _L294126_ _L294127_)
                   (let ((__tmp301606
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301599
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L294124_
                               _L294126_
                               _L294127_))
                            (let ((__tmp301600
                                   (lambda (_g294143294148_
                                            _g294144294151_
                                            _g294145294153_
                                            _g294146294155_)
                                     (let ((__tmp301601
                                            (let ((__tmp301605
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301602
                                                   (let ((__tmp301603
                                                          (let ((__tmp301604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g294143294148_ '()))))
                    (declare (not safe))
                    (cons _g294144294151_ __tmp301604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g294145294153_
                                                           __tmp301603))))
                                              (declare (not safe))
                                              (cons __tmp301605 __tmp301602))))
                                       (declare (not safe))
                                       (cons __tmp301601 _g294146294155_)))))
                              (declare (not safe))
                              (foldr* __tmp301600
                                      '()
                                      _L294124_
                                      _L294126_
                                      _L294127_)))))
                     (declare (not safe))
                     (cons __tmp301606 __tmp301599)))
                 _symbol294022294116_
                 _method294023294119_
                 _type-t294024294121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop294015294062_
                                         _target294012294056_
                                         '()
                                         '()
                                         '()))
                                      (_g294004294039_ _g294005294043_)))))
                            (_g294004294039_ _g294005294043_))))
                    (_g294004294039_ _g294005294043_)))))
        (_g294003294158_ _$stx294000_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx294163_)
      (let* ((_g294167294200_
              (lambda (_g294168294196_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294168294196_))))
             (_g294166294314_
              (lambda (_g294168294204_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294168294204_))
                    (let ((_e294174294207_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294168294204_))))
                      (let ((_hd294173294211_
                             (let ()
                               (declare (not safe))
                               (##car _e294174294207_)))
                            (_tl294172294214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294174294207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294172294214_))
                            (let ((_e294177294217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294172294214_))))
                              (let ((_hd294176294221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294177294217_)))
                                    (_tl294175294224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294177294217_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294175294224_))
                                    (let ((_g301607_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294175294224_
                                              '0))))
                                      (begin
                                        (let ((_g301608_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301607_)
                                                     (##vector-length
                                                      _g301607_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301608_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301608_)))
                                        (let ((_target294178294227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301607_ 0)))
                                              (_tl294180294230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301607_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294180294230_))
                                              (letrec ((_loop294181294233_
                                                        (lambda (_hd294179294237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol294185294240_
                         _method294186294242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd294179294237_))
                      (let ((_e294182294245_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd294179294237_))))
                        (let ((_lp-hd294183294249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294182294245_)))
                              (_lp-tl294184294252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294182294245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd294183294249_))
                              (let ((_e294191294255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd294183294249_))))
                                (let ((_hd294190294259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294191294255_)))
                                      (_tl294189294262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294191294255_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl294189294262_))
                                      (let ((_e294194294265_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl294189294262_))))
                                        (let ((_hd294193294269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e294194294265_)))
                                              (_tl294192294272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e294194294265_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294192294272_))
                                              (_loop294181294233_
                                               _lp-tl294184294252_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294193294269_
                                                       _symbol294185294240_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd294190294259_
                                                       _method294186294242_)))
                                              (_g294167294200_
                                               _g294168294204_))))
                                      (_g294167294200_ _g294168294204_))))
                              (_g294167294200_ _g294168294204_))))
                      (let ((_symbol294187294275_
                             (reverse _symbol294185294240_))
                            (_method294188294278_
                             (reverse _method294186294242_)))
                        ((lambda (_L294281_ _L294283_ _L294284_)
                           (let ((__tmp301616
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301609
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L294281_
                                       _L294283_))
                                    (let ((__tmp301610
                                           (lambda (_g294302294306_
                                                    _g294303294309_
                                                    _g294304294311_)
                                             (let ((__tmp301611
                                                    (let ((__tmp301615
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301612
                                                           (let ((__tmp301613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301614
                                 (let ()
                                   (declare (not safe))
                                   (cons _g294302294306_ '()))))
                            (declare (not safe))
                            (cons _g294303294309_ __tmp301614))))
                     (declare (not safe))
                     (cons _L294284_ __tmp301613))))
              (declare (not safe))
              (cons __tmp301615 __tmp301612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301611
                                                     _g294304294311_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301610
                                              '()
                                              _L294281_
                                              _L294283_)))))
                             (declare (not safe))
                             (cons __tmp301616 __tmp301609)))
                         _symbol294187294275_
                         _method294188294278_
                         _hd294176294221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop294181294233_
                                                 _target294178294227_
                                                 '()
                                                 '()))
                                              (_g294167294200_
                                               _g294168294204_)))))
                                    (_g294167294200_ _g294168294204_))))
                            (_g294167294200_ _g294168294204_))))
                    (_g294167294200_ _g294168294204_)))))
        (_g294166294314_ _$stx294163_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx294319_)
      (let* ((_g294323294337_
              (lambda (_g294324294333_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294324294333_))))
             (_g294322294378_
              (lambda (_g294324294341_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294324294341_))
                    (let ((_e294328294344_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294324294341_))))
                      (let ((_hd294327294348_
                             (let ()
                               (declare (not safe))
                               (##car _e294328294344_)))
                            (_tl294326294351_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294328294344_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294326294351_))
                            (let ((_e294331294354_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294326294351_))))
                              (let ((_hd294330294358_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294331294354_)))
                                    (_tl294329294361_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294331294354_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294329294361_))
                                    ((lambda (_L294364_)
                                       (let ((__tmp301621
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301617
                                              (let ((__tmp301618
                                                     (let ((__tmp301620
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301619
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301620 __tmp301619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301618 '()))))
                                         (declare (not safe))
                                         (cons __tmp301621 __tmp301617)))
                                     _hd294330294358_)
                                    (_g294323294337_ _g294324294341_))))
                            (_g294323294337_ _g294324294341_))))
                    (_g294323294337_ _g294324294341_)))))
        (_g294322294378_ _$stx294319_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx294382_)
      (let* ((_g294386294432_
              (lambda (_g294387294428_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294387294428_))))
             (_g294385294585_
              (lambda (_g294387294436_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294387294436_))
                    (let ((_e294399294439_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294387294436_))))
                      (let ((_hd294398294443_
                             (let ()
                               (declare (not safe))
                               (##car _e294399294439_)))
                            (_tl294397294446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294399294439_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294397294446_))
                            (let ((_e294402294449_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294397294446_))))
                              (let ((_hd294401294453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294402294449_)))
                                    (_tl294400294456_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294402294449_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294400294456_))
                                    (let ((_e294405294459_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294400294456_))))
                                      (let ((_hd294404294463_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294405294459_)))
                                            (_tl294403294466_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294405294459_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294403294466_))
                                            (let ((_e294408294469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294403294466_))))
                                              (let ((_hd294407294473_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294408294469_)))
                                                    (_tl294406294476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294408294469_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294406294476_))
                                                    (let ((_e294411294479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294406294476_))))
                                                      (let ((_hd294410294483_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294411294479_)))
                    (_tl294409294486_
                     (let () (declare (not safe)) (##cdr _e294411294479_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294409294486_))
                    (let ((_e294414294489_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294409294486_))))
                      (let ((_hd294413294493_
                             (let ()
                               (declare (not safe))
                               (##car _e294414294489_)))
                            (_tl294412294496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294414294489_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294412294496_))
                            (let ((_e294417294499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294412294496_))))
                              (let ((_hd294416294503_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294417294499_)))
                                    (_tl294415294506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294417294499_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294415294506_))
                                    (let ((_e294420294509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294415294506_))))
                                      (let ((_hd294419294513_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294420294509_)))
                                            (_tl294418294516_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294420294509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294418294516_))
                                            (let ((_e294423294519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294418294516_))))
                                              (let ((_hd294422294523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294423294519_)))
                                                    (_tl294421294526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294423294519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294421294526_))
                                                    (let ((_e294426294529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294421294526_))))
                                                      (let ((_hd294425294533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294426294529_)))
                    (_tl294424294536_
                     (let () (declare (not safe)) (##cdr _e294426294529_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294424294536_))
                    ((lambda (_L294539_
                              _L294541_
                              _L294542_
                              _L294543_
                              _L294544_
                              _L294545_
                              _L294546_
                              _L294547_
                              _L294548_)
                       (let ((__tmp301658
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301622
                              (let ((__tmp301655
                                     (let ((__tmp301657
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301656
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294548_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301657 __tmp301656)))
                                    (__tmp301623
                                     (let ((__tmp301652
                                            (let ((__tmp301654
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301653
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294547_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301654 __tmp301653)))
                                           (__tmp301624
                                            (let ((__tmp301649
                                                   (let ((__tmp301651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301650
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301651
                                                           __tmp301650)))
                                                  (__tmp301625
                                                   (let ((__tmp301646
                                                          (let ((__tmp301648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301647
                         (let () (declare (not safe)) (cons _L294545_ '()))))
                    (declare (not safe))
                    (cons __tmp301648 __tmp301647)))
                 (__tmp301626
                  (let ((__tmp301643
                         (let ((__tmp301645
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301644
                                (let ()
                                  (declare (not safe))
                                  (cons _L294544_ '()))))
                           (declare (not safe))
                           (cons __tmp301645 __tmp301644)))
                        (__tmp301627
                         (let ((__tmp301640
                                (let ((__tmp301642
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301641
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294543_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301642 __tmp301641)))
                               (__tmp301628
                                (let ((__tmp301637
                                       (let ((__tmp301639
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301638
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294542_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301639 __tmp301638)))
                                      (__tmp301629
                                       (let ((__tmp301634
                                              (let ((__tmp301636
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301635
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294541_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301636
                                                      __tmp301635)))
                                             (__tmp301630
                                              (let ((__tmp301631
                                                     (let ((__tmp301633
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301632
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301633 __tmp301632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301631 '()))))
                                         (declare (not safe))
                                         (cons __tmp301634 __tmp301630))))
                                  (declare (not safe))
                                  (cons __tmp301637 __tmp301629))))
                           (declare (not safe))
                           (cons __tmp301640 __tmp301628))))
                    (declare (not safe))
                    (cons __tmp301643 __tmp301627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301646
                                                           __tmp301626))))
                                              (declare (not safe))
                                              (cons __tmp301649 __tmp301625))))
                                       (declare (not safe))
                                       (cons __tmp301652 __tmp301624))))
                                (declare (not safe))
                                (cons __tmp301655 __tmp301623))))
                         (declare (not safe))
                         (cons __tmp301658 __tmp301622)))
                     _hd294425294533_
                     _hd294422294523_
                     _hd294419294513_
                     _hd294416294503_
                     _hd294413294493_
                     _hd294410294483_
                     _hd294407294473_
                     _hd294404294463_
                     _hd294401294453_)
                    (_g294386294432_ _g294387294436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294386294432_
                                                     _g294387294436_))))
                                            (_g294386294432_
                                             _g294387294436_))))
                                    (_g294386294432_ _g294387294436_))))
                            (_g294386294432_ _g294387294436_))))
                    (_g294386294432_ _g294387294436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294386294432_
                                                     _g294387294436_))))
                                            (_g294386294432_
                                             _g294387294436_))))
                                    (_g294386294432_ _g294387294436_))))
                            (_g294386294432_ _g294387294436_))))
                    (_g294386294432_ _g294387294436_)))))
        (_g294385294585_ _$stx294382_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294589_)
      (let* ((_g294593294607_
              (lambda (_g294594294603_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294594294603_))))
             (_g294592294648_
              (lambda (_g294594294611_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294594294611_))
                    (let ((_e294598294614_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294594294611_))))
                      (let ((_hd294597294618_
                             (let ()
                               (declare (not safe))
                               (##car _e294598294614_)))
                            (_tl294596294621_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294598294614_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294596294621_))
                            (let ((_e294601294624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294596294621_))))
                              (let ((_hd294600294628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294601294624_)))
                                    (_tl294599294631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294601294624_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294599294631_))
                                    ((lambda (_L294634_)
                                       (let ((__tmp301663
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301659
                                              (let ((__tmp301660
                                                     (let ((__tmp301662
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301661
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301662 __tmp301661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301660 '()))))
                                         (declare (not safe))
                                         (cons __tmp301663 __tmp301659)))
                                     _hd294600294628_)
                                    (_g294593294607_ _g294594294611_))))
                            (_g294593294607_ _g294594294611_))))
                    (_g294593294607_ _g294594294611_)))))
        (_g294592294648_ _$stx294589_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294652_)
      (let* ((_g294656294670_
              (lambda (_g294657294666_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294657294666_))))
             (_g294655294711_
              (lambda (_g294657294674_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294657294674_))
                    (let ((_e294661294677_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294657294674_))))
                      (let ((_hd294660294681_
                             (let ()
                               (declare (not safe))
                               (##car _e294661294677_)))
                            (_tl294659294684_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294661294677_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294659294684_))
                            (let ((_e294664294687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294659294684_))))
                              (let ((_hd294663294691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294664294687_)))
                                    (_tl294662294694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294664294687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294662294694_))
                                    ((lambda (_L294697_)
                                       (let ((__tmp301668
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301664
                                              (let ((__tmp301665
                                                     (let ((__tmp301667
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301666
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301667 __tmp301666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301665 '()))))
                                         (declare (not safe))
                                         (cons __tmp301668 __tmp301664)))
                                     _hd294663294691_)
                                    (_g294656294670_ _g294657294674_))))
                            (_g294656294670_ _g294657294674_))))
                    (_g294656294670_ _g294657294674_)))))
        (_g294655294711_ _$stx294652_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294715_)
      (let* ((_g294719294741_
              (lambda (_g294720294737_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294720294737_))))
             (_g294718294810_
              (lambda (_g294720294745_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294720294745_))
                    (let ((_e294726294748_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294720294745_))))
                      (let ((_hd294725294752_
                             (let ()
                               (declare (not safe))
                               (##car _e294726294748_)))
                            (_tl294724294755_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294726294748_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294724294755_))
                            (let ((_e294729294758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294724294755_))))
                              (let ((_hd294728294762_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294729294758_)))
                                    (_tl294727294765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294729294758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294727294765_))
                                    (let ((_e294732294768_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294727294765_))))
                                      (let ((_hd294731294772_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294732294768_)))
                                            (_tl294730294775_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294732294768_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294730294775_))
                                            (let ((_e294735294778_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294730294775_))))
                                              (let ((_hd294734294782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294735294778_)))
                                                    (_tl294733294785_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294735294778_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294733294785_))
                                                    ((lambda (_L294788_
                                                              _L294790_
                                                              _L294791_)
                                                       (let ((__tmp301678
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301669
                      (let ((__tmp301675
                             (let ((__tmp301677
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301676
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294791_ '()))))
                               (declare (not safe))
                               (cons __tmp301677 __tmp301676)))
                            (__tmp301670
                             (let ((__tmp301672
                                    (let ((__tmp301674
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301673
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294790_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301674 __tmp301673)))
                                   (__tmp301671
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294788_ '()))))
                               (declare (not safe))
                               (cons __tmp301672 __tmp301671))))
                        (declare (not safe))
                        (cons __tmp301675 __tmp301670))))
                 (declare (not safe))
                 (cons __tmp301678 __tmp301669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294734294782_
                                                     _hd294731294772_
                                                     _hd294728294762_)
                                                    (_g294719294741_
                                                     _g294720294745_))))
                                            (_g294719294741_
                                             _g294720294745_))))
                                    (_g294719294741_ _g294720294745_))))
                            (_g294719294741_ _g294720294745_))))
                    (_g294719294741_ _g294720294745_)))))
        (_g294718294810_ _$stx294715_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294814_)
      (let* ((_g294818294840_
              (lambda (_g294819294836_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294819294836_))))
             (_g294817294909_
              (lambda (_g294819294844_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294819294844_))
                    (let ((_e294825294847_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294819294844_))))
                      (let ((_hd294824294851_
                             (let ()
                               (declare (not safe))
                               (##car _e294825294847_)))
                            (_tl294823294854_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294825294847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294823294854_))
                            (let ((_e294828294857_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294823294854_))))
                              (let ((_hd294827294861_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294828294857_)))
                                    (_tl294826294864_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294828294857_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294826294864_))
                                    (let ((_e294831294867_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294826294864_))))
                                      (let ((_hd294830294871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294831294867_)))
                                            (_tl294829294874_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294831294867_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294829294874_))
                                            (let ((_e294834294877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294829294874_))))
                                              (let ((_hd294833294881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294834294877_)))
                                                    (_tl294832294884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294834294877_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294832294884_))
                                                    ((lambda (_L294887_
                                                              _L294889_
                                                              _L294890_)
                                                       (let ((__tmp301688
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301679
                      (let ((__tmp301685
                             (let ((__tmp301687
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301686
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294890_ '()))))
                               (declare (not safe))
                               (cons __tmp301687 __tmp301686)))
                            (__tmp301680
                             (let ((__tmp301682
                                    (let ((__tmp301684
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301683
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294889_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301684 __tmp301683)))
                                   (__tmp301681
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294887_ '()))))
                               (declare (not safe))
                               (cons __tmp301682 __tmp301681))))
                        (declare (not safe))
                        (cons __tmp301685 __tmp301680))))
                 (declare (not safe))
                 (cons __tmp301688 __tmp301679)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294833294881_
                                                     _hd294830294871_
                                                     _hd294827294861_)
                                                    (_g294818294840_
                                                     _g294819294844_))))
                                            (_g294818294840_
                                             _g294819294844_))))
                                    (_g294818294840_ _g294819294844_))))
                            (_g294818294840_ _g294819294844_))))
                    (_g294818294840_ _g294819294844_)))))
        (_g294817294909_ _$stx294814_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx294913_)
      (let* ((___stx301196301197_ _$stx294913_)
             (_g294921294989_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301196301197_)))))
        (let ((___kont301199301200_
               (lambda (_L295267_ _L295269_)
                 (let ((__tmp301704
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301689
                        (let ((__tmp301700
                               (let ((__tmp301703
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301701
                                      (let ((__tmp301702
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301702 '()))))
                                 (declare (not safe))
                                 (cons __tmp301703 __tmp301701)))
                              (__tmp301690
                               (let ((__tmp301697
                                      (let ((__tmp301699
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301698
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295269_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301699 __tmp301698)))
                                     (__tmp301691
                                      (let ((__tmp301692
                                             (let ((__tmp301693
                                                    (let ((__tmp301694
                                                           (let ((__tmp301696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301695
                          (let () (declare (not safe)) (cons _L295267_ '()))))
                     (declare (not safe))
                     (cons __tmp301696 __tmp301695))))
              (declare (not safe))
              (cons __tmp301694 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L295267_ __tmp301693))))
                                        (declare (not safe))
                                        (cons '#f __tmp301692))))
                                 (declare (not safe))
                                 (cons __tmp301697 __tmp301691))))
                          (declare (not safe))
                          (cons __tmp301700 __tmp301690))))
                   (declare (not safe))
                   (cons __tmp301704 __tmp301689))))
              (___kont301201301202_
               (lambda (_L295198_ _L295200_)
                 (let ((__tmp301705
                        (let ((__tmp301706
                               (let ((__tmp301707
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L295198_ __tmp301707))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301706))))
                   (declare (not safe))
                   (cons _L295200_ __tmp301705))))
              (___kont301203301204_
               (lambda (_L295137_ _L295139_)
                 (let ((__tmp301721
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301708
                        (let ((__tmp301717
                               (let ((__tmp301720
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301718
                                      (let ((__tmp301719
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301719 '()))))
                                 (declare (not safe))
                                 (cons __tmp301720 __tmp301718)))
                              (__tmp301709
                               (let ((__tmp301714
                                      (let ((__tmp301716
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301715
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295139_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301716 __tmp301715)))
                                     (__tmp301710
                                      (let ((__tmp301711
                                             (let ((__tmp301713
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301712
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295137_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301713
                                                     __tmp301712))))
                                        (declare (not safe))
                                        (cons __tmp301711 '()))))
                                 (declare (not safe))
                                 (cons __tmp301714 __tmp301710))))
                          (declare (not safe))
                          (cons __tmp301717 __tmp301709))))
                   (declare (not safe))
                   (cons __tmp301721 __tmp301708))))
              (___kont301205301206_
               (lambda (_L295069_ _L295071_)
                 (let ((__tmp301735
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301722
                        (let ((__tmp301731
                               (let ((__tmp301734
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301732
                                      (let ((__tmp301733
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301733 '()))))
                                 (declare (not safe))
                                 (cons __tmp301734 __tmp301732)))
                              (__tmp301723
                               (let ((__tmp301728
                                      (let ((__tmp301730
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301729
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295071_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301730 __tmp301729)))
                                     (__tmp301724
                                      (let ((__tmp301725
                                             (let ((__tmp301727
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301726
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295069_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301727
                                                     __tmp301726))))
                                        (declare (not safe))
                                        (cons __tmp301725 '()))))
                                 (declare (not safe))
                                 (cons __tmp301728 __tmp301724))))
                          (declare (not safe))
                          (cons __tmp301731 __tmp301723))))
                   (declare (not safe))
                   (cons __tmp301735 __tmp301722))))
              (___kont301207301208_
               (lambda (_L295016_ _L295018_)
                 (let ((__tmp301736
                        (let ((__tmp301737
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L295016_ __tmp301737))))
                   (declare (not safe))
                   (cons _L295018_ __tmp301736)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx301196301197_))
              (let ((_e294927295223_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx301196301197_))))
                (let ((_tl294925295230_
                       (let () (declare (not safe)) (##cdr _e294927295223_)))
                      (_hd294926295227_
                       (let () (declare (not safe)) (##car _e294927295223_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl294925295230_))
                      (let ((_e294930295233_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294925295230_))))
                        (let ((_tl294928295240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294930295233_)))
                              (_hd294929295237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294930295233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294928295240_))
                              (let ((_e294933295243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294928295240_))))
                                (let ((_tl294931295250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294933295243_)))
                                      (_hd294932295247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294933295243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd294932295247_))
                                      (let ((_e294934295253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd294932295247_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e294934295253_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl294931295250_))
                                                (let ((_e294937295257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl294931295250_))))
                                                  (let ((_tl294935295264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e294937295257_)))
                                                        (_hd294936295261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e294937295257_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294935295264_))
                                                        (___kont301199301200_
                                                         _hd294936295261_
                                                         _hd294929295237_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd294929295237_))
                                                            (let ((_e294946295184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd294929295237_))))
                      (declare (not safe))
                      (_g294921294989_))
                    (let () (declare (not safe)) (_g294921294989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd294929295237_))
                                                    (let ((_e294946295184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd294929295237_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e294946295184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294931295250_))
                      (___kont301201301202_ _hd294932295247_ _hd294926295227_)
                      (let () (declare (not safe)) (_g294921294989_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294931295250_))
                      (___kont301205301206_ _hd294932295247_ _hd294929295237_)
                      (let () (declare (not safe)) (_g294921294989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294931295250_))
                                                        (___kont301205301206_
                                                         _hd294932295247_
                                                         _hd294929295237_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g294921294989_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd294929295237_))
                                                (let ((_e294946295184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd294929295237_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e294946295184_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl294931295250_))
                                                          (___kont301201301202_
                                                           _hd294932295247_
                                                           _hd294926295227_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl294931295250_))
                      (let ((_e294964295127_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294931295250_))))
                        (let ((_tl294962295134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294964295127_)))
                              (_hd294963295131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294964295127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl294962295134_))
                              (___kont301203301204_
                               _hd294963295131_
                               _hd294932295247_)
                              (let ()
                                (declare (not safe))
                                (_g294921294989_)))))
                      (let () (declare (not safe)) (_g294921294989_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl294931295250_))
                  (___kont301205301206_ _hd294932295247_ _hd294929295237_)
                  (let () (declare (not safe)) (_g294921294989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294931295250_))
                                                    (___kont301205301206_
                                                     _hd294932295247_
                                                     _hd294929295237_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294921294989_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd294929295237_))
                                          (let ((_e294946295184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd294929295237_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e294946295184_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294931295250_))
                                                    (___kont301201301202_
                                                     _hd294932295247_
                                                     _hd294926295227_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl294931295250_))
                                                        (let ((_e294964295127_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl294931295250_))))
                  (let ((_tl294962295134_
                         (let () (declare (not safe)) (##cdr _e294964295127_)))
                        (_hd294963295131_
                         (let ()
                           (declare (not safe))
                           (##car _e294964295127_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl294962295134_))
                        (___kont301203301204_
                         _hd294963295131_
                         _hd294932295247_)
                        (let () (declare (not safe)) (_g294921294989_)))))
                (let () (declare (not safe)) (_g294921294989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294931295250_))
                                                    (___kont301205301206_
                                                     _hd294932295247_
                                                     _hd294929295237_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294921294989_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294931295250_))
                                              (___kont301205301206_
                                               _hd294932295247_
                                               _hd294929295237_)
                                              (let ()
                                                (declare (not safe))
                                                (_g294921294989_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd294929295237_))
                                  (let ((_e294946295184_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd294929295237_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl294928295240_))
                                        (___kont301207301208_
                                         _hd294929295237_
                                         _hd294926295227_)
                                        (let ()
                                          (declare (not safe))
                                          (_g294921294989_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294928295240_))
                                      (___kont301207301208_
                                       _hd294929295237_
                                       _hd294926295227_)
                                      (let ()
                                        (declare (not safe))
                                        (_g294921294989_)))))))
                      (let () (declare (not safe)) (_g294921294989_)))))
              (let () (declare (not safe)) (_g294921294989_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx295291_)
      (let* ((___stx301336301337_ _$stx295291_)
             (_g295296295351_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301336301337_)))))
        (let ((___kont301339301340_
               (lambda (_L295536_ _L295538_)
                 (let ((__tmp301753
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301738
                        (let ((__tmp301749
                               (let ((__tmp301752
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301750
                                      (let ((__tmp301751
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301751 '()))))
                                 (declare (not safe))
                                 (cons __tmp301752 __tmp301750)))
                              (__tmp301739
                               (let ((__tmp301740
                                      (let ((__tmp301748
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301741
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295536_
                                                  _L295538_))
                                               (let ((__tmp301742
                                                      (lambda (_g295555295559_
                                                               _g295556295562_
                                                               _g295557295564_)
                                                        (let ((__tmp301743
                                                               (let ((__tmp301747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301744
                              (let ((__tmp301745
                                     (let ((__tmp301746
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295555295559_ '()))))
                                       (declare (not safe))
                                       (cons _g295556295562_ __tmp301746))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301745))))
                         (declare (not safe))
                         (cons __tmp301747 __tmp301744))))
                  (declare (not safe))
                  (cons __tmp301743 _g295557295564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301742
                                                         '()
                                                         _L295536_
                                                         _L295538_)))))
                                        (declare (not safe))
                                        (cons __tmp301748 __tmp301741))))
                                 (declare (not safe))
                                 (cons __tmp301740 '()))))
                          (declare (not safe))
                          (cons __tmp301749 __tmp301739))))
                   (declare (not safe))
                   (cons __tmp301753 __tmp301738))))
              (___kont301343301344_
               (lambda (_L295422_ _L295424_)
                 (let ((__tmp301768
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301754
                        (let ((__tmp301764
                               (let ((__tmp301767
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301765
                                      (let ((__tmp301766
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301766 '()))))
                                 (declare (not safe))
                                 (cons __tmp301767 __tmp301765)))
                              (__tmp301755
                               (let ((__tmp301756
                                      (let ((__tmp301763
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301757
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295422_
                                                  _L295424_))
                                               (let ((__tmp301758
                                                      (lambda (_g295439295443_
                                                               _g295440295446_
                                                               _g295441295448_)
                                                        (let ((__tmp301759
                                                               (let ((__tmp301762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301760
                              (let ((__tmp301761
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295439295443_ '()))))
                                (declare (not safe))
                                (cons _g295440295446_ __tmp301761))))
                         (declare (not safe))
                         (cons __tmp301762 __tmp301760))))
                  (declare (not safe))
                  (cons __tmp301759 _g295441295448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301758
                                                         '()
                                                         _L295422_
                                                         _L295424_)))))
                                        (declare (not safe))
                                        (cons __tmp301763 __tmp301757))))
                                 (declare (not safe))
                                 (cons __tmp301756 '()))))
                          (declare (not safe))
                          (cons __tmp301764 __tmp301755))))
                   (declare (not safe))
                   (cons __tmp301768 __tmp301754)))))
          (let* ((___match301387301388_
                  (lambda (_e295328295358_
                           _hd295327295362_
                           _tl295326295365_
                           ___splice301345301346_
                           _target295329295368_
                           _tl295331295371_)
                    (letrec ((_loop295332295374_
                              (lambda (_hd295330295378_
                                       _dispatch295336295381_
                                       _arity295337295383_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295330295378_))
                                    (let ((_e295333295386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295330295378_))))
                                      (let ((_lp-tl295335295393_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295333295386_)))
                                            (_lp-hd295334295390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295333295386_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295334295390_))
                                            (let ((_e295342295396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295334295390_))))
                                              (let ((_tl295340295403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295342295396_)))
                                                    (_hd295341295400_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295342295396_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295340295403_))
                                                    (let ((_e295345295406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295340295403_))))
                                                      (let ((_tl295343295413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295345295406_)))
                    (_hd295344295410_
                     (let () (declare (not safe)) (##car _e295345295406_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295343295413_))
                    (_loop295332295374_
                     _lp-tl295335295393_
                     (let ()
                       (declare (not safe))
                       (cons _hd295344295410_ _dispatch295336295381_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295341295400_ _arity295337295383_)))
                    (let () (declare (not safe)) (_g295296295351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295296295351_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295296295351_)))))
                                    (let ((_arity295339295419_
                                           (reverse _arity295337295383_))
                                          (_dispatch295338295416_
                                           (reverse _dispatch295336295381_)))
                                      (___kont301343301344_
                                       _dispatch295338295416_
                                       _arity295339295419_))))))
                      (_loop295332295374_ _target295329295368_ '() '()))))
                 (___match301379301380_
                  (lambda (_e295328295358_ _hd295327295362_ _tl295326295365_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl295326295365_))
                        (let ((___splice301345301346_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl295326295365_
                                  '0))))
                          (let ((_tl295331295371_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301345301346_ '1)))
                                (_target295329295368_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice301345301346_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl295331295371_))
                                (___match301387301388_
                                 _e295328295358_
                                 _hd295327295362_
                                 _tl295326295365_
                                 ___splice301345301346_
                                 _target295329295368_
                                 _tl295331295371_)
                                (let ()
                                  (declare (not safe))
                                  (_g295296295351_)))))
                        (let () (declare (not safe)) (_g295296295351_)))))
                 (___match301373301374_
                  (lambda (_e295302295458_
                           _hd295301295462_
                           _tl295300295465_
                           _e295305295468_
                           _hd295304295472_
                           _tl295303295475_
                           _e295306295478_
                           ___splice301341301342_
                           _target295307295482_
                           _tl295309295485_)
                    (letrec ((_loop295310295488_
                              (lambda (_hd295308295492_
                                       _dispatch295314295495_
                                       _arity295315295497_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295308295492_))
                                    (let ((_e295311295500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295308295492_))))
                                      (let ((_lp-tl295313295507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295311295500_)))
                                            (_lp-hd295312295504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295311295500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd295312295504_))
                                            (let ((_e295320295510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd295312295504_))))
                                              (let ((_tl295318295517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e295320295510_)))
                                                    (_hd295319295514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e295320295510_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl295318295517_))
                                                    (let ((_e295323295520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl295318295517_))))
                                                      (let ((_tl295321295527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e295323295520_)))
                    (_hd295322295524_
                     (let () (declare (not safe)) (##car _e295323295520_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl295321295527_))
                    (_loop295310295488_
                     _lp-tl295313295507_
                     (let ()
                       (declare (not safe))
                       (cons _hd295322295524_ _dispatch295314295495_))
                     (let ()
                       (declare (not safe))
                       (cons _hd295319295514_ _arity295315295497_)))
                    (___match301379301380_
                     _e295302295458_
                     _hd295301295462_
                     _tl295300295465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match301379301380_
                                                     _e295302295458_
                                                     _hd295301295462_
                                                     _tl295300295465_))))
                                            (___match301379301380_
                                             _e295302295458_
                                             _hd295301295462_
                                             _tl295300295465_))))
                                    (let ((_arity295317295533_
                                           (reverse _arity295315295497_))
                                          (_dispatch295316295530_
                                           (reverse _dispatch295314295495_)))
                                      (___kont301339301340_
                                       _dispatch295316295530_
                                       _arity295317295533_))))))
                      (_loop295310295488_ _target295307295482_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301336301337_))
                (let ((_e295302295458_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301336301337_))))
                  (let ((_tl295300295465_
                         (let () (declare (not safe)) (##cdr _e295302295458_)))
                        (_hd295301295462_
                         (let ()
                           (declare (not safe))
                           (##car _e295302295458_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295300295465_))
                        (let ((_e295305295468_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295300295465_))))
                          (let ((_tl295303295475_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295305295468_)))
                                (_hd295304295472_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295305295468_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd295304295472_))
                                (let ((_e295306295478_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd295304295472_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e295306295478_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295303295475_))
                                          (let ((___splice301341301342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295303295475_
                                                    '0))))
                                            (let ((_tl295309295485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301341301342_
                                                      '1)))
                                                  (_target295307295482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301341301342_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295309295485_))
                                                  (___match301373301374_
                                                   _e295302295458_
                                                   _hd295301295462_
                                                   _tl295300295465_
                                                   _e295305295468_
                                                   _hd295304295472_
                                                   _tl295303295475_
                                                   _e295306295478_
                                                   ___splice301341301342_
                                                   _target295307295482_
                                                   _tl295309295485_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295300295465_))
                                                      (let ((___splice301345301346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295300295465_ '0))))
                (let ((_tl295331295371_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301345301346_ '1)))
                      (_target295329295368_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301345301346_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295331295371_))
                      (___match301387301388_
                       _e295302295458_
                       _hd295301295462_
                       _tl295300295465_
                       ___splice301345301346_
                       _target295329295368_
                       _tl295331295371_)
                      (let () (declare (not safe)) (_g295296295351_)))))
              (let () (declare (not safe)) (_g295296295351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl295300295465_))
                                              (let ((___splice301345301346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl295300295465_
                                                        '0))))
                                                (let ((_tl295331295371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301345301346_
                                                          '1)))
                                                      (_target295329295368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice301345301346_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl295331295371_))
                                                      (___match301387301388_
                                                       _e295302295458_
                                                       _hd295301295462_
                                                       _tl295300295465_
                                                       ___splice301345301346_
                                                       _target295329295368_
                                                       _tl295331295371_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g295296295351_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g295296295351_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl295300295465_))
                                          (let ((___splice301345301346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl295300295465_
                                                    '0))))
                                            (let ((_tl295331295371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301345301346_
                                                      '1)))
                                                  (_target295329295368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice301345301346_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295331295371_))
                                                  (___match301387301388_
                                                   _e295302295458_
                                                   _hd295301295462_
                                                   _tl295300295465_
                                                   ___splice301345301346_
                                                   _target295329295368_
                                                   _tl295331295371_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g295296295351_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g295296295351_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295300295465_))
                                    (let ((___splice301345301346_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295300295465_
                                              '0))))
                                      (let ((_tl295331295371_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301345301346_
                                                '1)))
                                            (_target295329295368_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301345301346_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295331295371_))
                                            (___match301387301388_
                                             _e295302295458_
                                             _hd295301295462_
                                             _tl295300295465_
                                             ___splice301345301346_
                                             _target295329295368_
                                             _tl295331295371_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295296295351_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295296295351_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295300295465_))
                            (let ((___splice301345301346_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295300295465_
                                      '0))))
                              (let ((_tl295331295371_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301345301346_
                                        '1)))
                                    (_target295329295368_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice301345301346_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl295331295371_))
                                    (___match301387301388_
                                     _e295302295458_
                                     _hd295301295462_
                                     _tl295300295465_
                                     ___splice301345301346_
                                     _target295329295368_
                                     _tl295331295371_)
                                    (let ()
                                      (declare (not safe))
                                      (_g295296295351_)))))
                            (let () (declare (not safe)) (_g295296295351_))))))
                (let () (declare (not safe)) (_g295296295351_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295573_)
      (let* ((_g295577295595_
              (lambda (_g295578295591_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295578295591_))))
             (_g295576295650_
              (lambda (_g295578295599_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295578295599_))
                    (let ((_e295583295602_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295578295599_))))
                      (let ((_hd295582295606_
                             (let ()
                               (declare (not safe))
                               (##car _e295583295602_)))
                            (_tl295581295609_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295583295602_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295581295609_))
                            (let ((_e295586295612_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295581295609_))))
                              (let ((_hd295585295616_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295586295612_)))
                                    (_tl295584295619_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295586295612_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295584295619_))
                                    (let ((_e295589295622_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295584295619_))))
                                      (let ((_hd295588295626_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295589295622_)))
                                            (_tl295587295629_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295589295622_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295587295629_))
                                            ((lambda (_L295632_ _L295634_)
                                               (let ((__tmp301782
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301769
                                                      (let ((__tmp301778
                                                             (let ((__tmp301781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301779
                            (let ((__tmp301780
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301780 '()))))
                       (declare (not safe))
                       (cons __tmp301781 __tmp301779)))
                    (__tmp301770
                     (let ((__tmp301775
                            (let ((__tmp301777
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301776
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295634_ '()))))
                              (declare (not safe))
                              (cons __tmp301777 __tmp301776)))
                           (__tmp301771
                            (let ((__tmp301772
                                   (let ((__tmp301774
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301773
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295632_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301774 __tmp301773))))
                              (declare (not safe))
                              (cons __tmp301772 '()))))
                       (declare (not safe))
                       (cons __tmp301775 __tmp301771))))
                (declare (not safe))
                (cons __tmp301778 __tmp301770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301782
                                                       __tmp301769)))
                                             _hd295588295626_
                                             _hd295585295616_)
                                            (_g295577295595_
                                             _g295578295599_))))
                                    (_g295577295595_ _g295578295599_))))
                            (_g295577295595_ _g295578295599_))))
                    (_g295577295595_ _g295578295599_)))))
        (_g295576295650_ _$stx295573_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295654_)
      (let* ((_g295658295676_
              (lambda (_g295659295672_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295659295672_))))
             (_g295657295731_
              (lambda (_g295659295680_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295659295680_))
                    (let ((_e295664295683_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295659295680_))))
                      (let ((_hd295663295687_
                             (let ()
                               (declare (not safe))
                               (##car _e295664295683_)))
                            (_tl295662295690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295664295683_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295662295690_))
                            (let ((_e295667295693_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295662295690_))))
                              (let ((_hd295666295697_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295667295693_)))
                                    (_tl295665295700_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295667295693_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295665295700_))
                                    (let ((_e295670295703_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295665295700_))))
                                      (let ((_hd295669295707_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295670295703_)))
                                            (_tl295668295710_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295670295703_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295668295710_))
                                            ((lambda (_L295713_ _L295715_)
                                               (let ((__tmp301796
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301783
                                                      (let ((__tmp301792
                                                             (let ((__tmp301795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301793
                            (let ((__tmp301794
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301794 '()))))
                       (declare (not safe))
                       (cons __tmp301795 __tmp301793)))
                    (__tmp301784
                     (let ((__tmp301789
                            (let ((__tmp301791
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301790
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295715_ '()))))
                              (declare (not safe))
                              (cons __tmp301791 __tmp301790)))
                           (__tmp301785
                            (let ((__tmp301786
                                   (let ((__tmp301788
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301787
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295713_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301788 __tmp301787))))
                              (declare (not safe))
                              (cons __tmp301786 '()))))
                       (declare (not safe))
                       (cons __tmp301789 __tmp301785))))
                (declare (not safe))
                (cons __tmp301792 __tmp301784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301796
                                                       __tmp301783)))
                                             _hd295669295707_
                                             _hd295666295697_)
                                            (_g295658295676_
                                             _g295659295680_))))
                                    (_g295658295676_ _g295659295680_))))
                            (_g295658295676_ _g295659295680_))))
                    (_g295658295676_ _g295659295680_)))))
        (_g295657295731_ _$stx295654_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295735_)
      (let* ((___stx301390301391_ _$stx295735_)
             (_g295742295813_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301390301391_)))))
        (let ((___kont301393301394_
               (lambda (_L296104_ _L296106_)
                 (let ((__tmp301802
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301797
                        (let ((__tmp301798
                               (let ((__tmp301799
                                      (let ((__tmp301801
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301800
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296104_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301801 __tmp301800))))
                                 (declare (not safe))
                                 (cons __tmp301799 '()))))
                          (declare (not safe))
                          (cons _L296106_ __tmp301798))))
                   (declare (not safe))
                   (cons __tmp301802 __tmp301797))))
              (___kont301395301396_
               (lambda (_L296023_ _L296025_)
                 (let ((__tmp301811
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301803
                        (let ((__tmp301804
                               (let ((__tmp301805
                                      (let ((__tmp301810
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301806
                                             (let ((__tmp301807
                                                    (lambda (_g296044296047_
                                                             _g296045296050_)
                                                      (let ((__tmp301808
                                                             (let ((__tmp301809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296044296047_ __tmp301809))))
                (declare (not safe))
                (cons __tmp301808 _g296045296050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301807
                                                       '()
                                                       _L296023_))))
                                        (declare (not safe))
                                        (cons __tmp301810 __tmp301806))))
                                 (declare (not safe))
                                 (cons __tmp301805 '()))))
                          (declare (not safe))
                          (cons _L296025_ __tmp301804))))
                   (declare (not safe))
                   (cons __tmp301811 __tmp301803))))
              (___kont301399301400_
               (lambda (_L295935_ _L295937_)
                 (let ((__tmp301818
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301812
                        (let ((__tmp301813
                               (let ((__tmp301814
                                      (let ((__tmp301817
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301815
                                             (let ((__tmp301816
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295935_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301816))))
                                        (declare (not safe))
                                        (cons __tmp301817 __tmp301815))))
                                 (declare (not safe))
                                 (cons __tmp301814 '()))))
                          (declare (not safe))
                          (cons _L295937_ __tmp301813))))
                   (declare (not safe))
                   (cons __tmp301818 __tmp301812))))
              (___kont301401301402_
               (lambda (_L295870_ _L295872_)
                 (let ((__tmp301828
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301819
                        (let ((__tmp301820
                               (let ((__tmp301821
                                      (let ((__tmp301827
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301822
                                             (let ((__tmp301823
                                                    (let ((__tmp301824
                                                           (lambda (_g295889295892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295890295895_)
                     (let ((__tmp301825
                            (let ((__tmp301826
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295889295892_ __tmp301826))))
                       (declare (not safe))
                       (cons __tmp301825 _g295890295895_)))))
              (declare (not safe))
              (foldr1 __tmp301824 '() _L295870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301823))))
                                        (declare (not safe))
                                        (cons __tmp301827 __tmp301822))))
                                 (declare (not safe))
                                 (cons __tmp301821 '()))))
                          (declare (not safe))
                          (cons _L295872_ __tmp301820))))
                   (declare (not safe))
                   (cons __tmp301828 __tmp301819)))))
          (let* ((___match301509301510_
                  (lambda (_e295795295820_
                           _hd295794295824_
                           _tl295793295827_
                           _e295798295830_
                           _hd295797295834_
                           _tl295796295837_
                           ___splice301403301404_
                           _target295799295840_
                           _tl295801295843_)
                    (letrec ((_loop295802295846_
                              (lambda (_hd295800295850_ _arity295806295853_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295800295850_))
                                    (let ((_e295803295856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295800295850_))))
                                      (let ((_lp-tl295805295863_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295803295856_)))
                                            (_lp-hd295804295860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295803295856_))))
                                        (_loop295802295846_
                                         _lp-tl295805295863_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295804295860_
                                                 _arity295806295853_)))))
                                    (let ((_arity295807295866_
                                           (reverse _arity295806295853_)))
                                      (___kont301401301402_
                                       _arity295807295866_
                                       _hd295797295834_))))))
                      (_loop295802295846_ _target295799295840_ '()))))
                 (___match301469301470_
                  (lambda (_e295763295959_
                           _hd295762295963_
                           _tl295761295966_
                           _e295766295969_
                           _hd295765295973_
                           _tl295764295976_
                           _e295769295979_
                           _hd295768295983_
                           _tl295767295986_
                           _e295770295989_
                           ___splice301397301398_
                           _target295771295993_
                           _tl295773295996_)
                    (letrec ((_loop295774295999_
                              (lambda (_hd295772296003_ _arity295778296006_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295772296003_))
                                    (let ((_e295775296009_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295772296003_))))
                                      (let ((_lp-tl295777296016_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295775296009_)))
                                            (_lp-hd295776296013_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295775296009_))))
                                        (_loop295774295999_
                                         _lp-tl295777296016_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295776296013_
                                                 _arity295778296006_)))))
                                    (let ((_arity295779296019_
                                           (reverse _arity295778296006_)))
                                      (___kont301395301396_
                                       _arity295779296019_
                                       _hd295765295973_))))))
                      (_loop295774295999_ _target295771295993_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301390301391_))
                (let ((_e295748296060_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301390301391_))))
                  (let ((_tl295746296067_
                         (let () (declare (not safe)) (##cdr _e295748296060_)))
                        (_hd295747296064_
                         (let ()
                           (declare (not safe))
                           (##car _e295748296060_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295746296067_))
                        (let ((_e295751296070_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295746296067_))))
                          (let ((_tl295749296077_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295751296070_)))
                                (_hd295750296074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295751296070_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295749296077_))
                                (let ((_e295754296080_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295749296077_))))
                                  (let ((_tl295752296087_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295754296080_)))
                                        (_hd295753296084_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295754296080_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295753296084_))
                                        (let ((_e295755296090_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295753296084_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295755296090_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295752296087_))
                                                  (let ((_e295758296094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295752296087_))))
                                                    (let ((_tl295756296101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295758296094_)))
                                                          (_hd295757296098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295758296094_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295756296101_))
                                                          (___kont301393301394_
                                                           _hd295757296098_
                                                           _hd295750296074_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295752296087_))
                      (let ((___splice301397301398_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295752296087_ '0))))
                        (let ((_tl295773295996_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301397301398_ '1)))
                              (_target295771295993_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301397301398_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295773295996_))
                              (___match301469301470_
                               _e295748296060_
                               _hd295747296064_
                               _tl295746296067_
                               _e295751296070_
                               _hd295750296074_
                               _tl295749296077_
                               _e295754296080_
                               _hd295753296084_
                               _tl295752296087_
                               _e295755296090_
                               ___splice301397301398_
                               _target295771295993_
                               _tl295773295996_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295749296077_))
                                  (let ((___splice301403301404_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295749296077_
                                            '0))))
                                    (let ((_tl295801295843_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301403301404_
                                              '1)))
                                          (_target295799295840_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301403301404_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295801295843_))
                                          (___match301509301510_
                                           _e295748296060_
                                           _hd295747296064_
                                           _tl295746296067_
                                           _e295751296070_
                                           _hd295750296074_
                                           _tl295749296077_
                                           ___splice301403301404_
                                           _target295799295840_
                                           _tl295801295843_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295742295813_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295742295813_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295749296077_))
                          (let ((___splice301403301404_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295749296077_
                                    '0))))
                            (let ((_tl295801295843_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301403301404_ '1)))
                                  (_target295799295840_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301403301404_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295801295843_))
                                  (___match301509301510_
                                   _e295748296060_
                                   _hd295747296064_
                                   _tl295746296067_
                                   _e295751296070_
                                   _hd295750296074_
                                   _tl295749296077_
                                   ___splice301403301404_
                                   _target295799295840_
                                   _tl295801295843_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295742295813_)))))
                          (let () (declare (not safe)) (_g295742295813_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295752296087_))
                                                      (let ((___splice301397301398_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295752296087_ '0))))
                (let ((_tl295773295996_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301397301398_ '1)))
                      (_target295771295993_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301397301398_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295773295996_))
                      (___match301469301470_
                       _e295748296060_
                       _hd295747296064_
                       _tl295746296067_
                       _e295751296070_
                       _hd295750296074_
                       _tl295749296077_
                       _e295754296080_
                       _hd295753296084_
                       _tl295752296087_
                       _e295755296090_
                       ___splice301397301398_
                       _target295771295993_
                       _tl295773295996_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295752296087_))
                          (___kont301399301400_
                           _hd295753296084_
                           _hd295750296074_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295749296077_))
                              (let ((___splice301403301404_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295749296077_
                                        '0))))
                                (let ((_tl295801295843_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301403301404_
                                          '1)))
                                      (_target295799295840_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301403301404_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295801295843_))
                                      (___match301509301510_
                                       _e295748296060_
                                       _hd295747296064_
                                       _tl295746296067_
                                       _e295751296070_
                                       _hd295750296074_
                                       _tl295749296077_
                                       ___splice301403301404_
                                       _target295799295840_
                                       _tl295801295843_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295742295813_)))))
                              (let ()
                                (declare (not safe))
                                (_g295742295813_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295752296087_))
                  (___kont301399301400_ _hd295753296084_ _hd295750296074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295749296077_))
                      (let ((___splice301403301404_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295749296077_ '0))))
                        (let ((_tl295801295843_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301403301404_ '1)))
                              (_target295799295840_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301403301404_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295801295843_))
                              (___match301509301510_
                               _e295748296060_
                               _hd295747296064_
                               _tl295746296067_
                               _e295751296070_
                               _hd295750296074_
                               _tl295749296077_
                               ___splice301403301404_
                               _target295799295840_
                               _tl295801295843_)
                              (let ()
                                (declare (not safe))
                                (_g295742295813_)))))
                      (let () (declare (not safe)) (_g295742295813_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295752296087_))
                                                  (___kont301399301400_
                                                   _hd295753296084_
                                                   _hd295750296074_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295749296077_))
                                                      (let ((___splice301403301404_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295749296077_ '0))))
                (let ((_tl295801295843_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301403301404_ '1)))
                      (_target295799295840_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301403301404_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295801295843_))
                      (___match301509301510_
                       _e295748296060_
                       _hd295747296064_
                       _tl295746296067_
                       _e295751296070_
                       _hd295750296074_
                       _tl295749296077_
                       ___splice301403301404_
                       _target295799295840_
                       _tl295801295843_)
                      (let () (declare (not safe)) (_g295742295813_)))))
              (let () (declare (not safe)) (_g295742295813_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295752296087_))
                                            (___kont301399301400_
                                             _hd295753296084_
                                             _hd295750296074_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295749296077_))
                                                (let ((___splice301403301404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295749296077_
                                                          '0))))
                                                  (let ((_tl295801295843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301403301404_
                                                            '1)))
                                                        (_target295799295840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301403301404_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295801295843_))
                                                        (___match301509301510_
                                                         _e295748296060_
                                                         _hd295747296064_
                                                         _tl295746296067_
                                                         _e295751296070_
                                                         _hd295750296074_
                                                         _tl295749296077_
                                                         ___splice301403301404_
                                                         _target295799295840_
                                                         _tl295801295843_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295742295813_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295742295813_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295749296077_))
                                    (let ((___splice301403301404_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295749296077_
                                              '0))))
                                      (let ((_tl295801295843_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301403301404_
                                                '1)))
                                            (_target295799295840_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301403301404_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295801295843_))
                                            (___match301509301510_
                                             _e295748296060_
                                             _hd295747296064_
                                             _tl295746296067_
                                             _e295751296070_
                                             _hd295750296074_
                                             _tl295749296077_
                                             ___splice301403301404_
                                             _target295799295840_
                                             _tl295801295843_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295742295813_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295742295813_))))))
                        (let () (declare (not safe)) (_g295742295813_)))))
                (let () (declare (not safe)) (_g295742295813_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx296130_)
      (let* ((___stx301512301513_ _$stx296130_)
             (_g296135296170_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301512301513_)))))
        (let ((___kont301515301516_
               (lambda (_L296292_ _L296294_)
                 (let ((__tmp301834
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301829
                        (let ((__tmp301830
                               (let ((__tmp301831
                                      (let ((__tmp301833
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301832
                                             (let ()
                                               (declare (not safe))
                                               (cons _L296292_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301833 __tmp301832))))
                                 (declare (not safe))
                                 (cons __tmp301831 '()))))
                          (declare (not safe))
                          (cons _L296294_ __tmp301830))))
                   (declare (not safe))
                   (cons __tmp301834 __tmp301829))))
              (___kont301517301518_
               (lambda (_L296227_ _L296229_)
                 (let ((__tmp301843
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301835
                        (let ((__tmp301836
                               (let ((__tmp301837
                                      (let ((__tmp301842
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301838
                                             (let ((__tmp301839
                                                    (lambda (_g296246296249_
                                                             _g296247296252_)
                                                      (let ((__tmp301840
                                                             (let ((__tmp301841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g296246296249_ __tmp301841))))
                (declare (not safe))
                (cons __tmp301840 _g296247296252_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301839
                                                       '()
                                                       _L296227_))))
                                        (declare (not safe))
                                        (cons __tmp301842 __tmp301838))))
                                 (declare (not safe))
                                 (cons __tmp301837 '()))))
                          (declare (not safe))
                          (cons _L296229_ __tmp301836))))
                   (declare (not safe))
                   (cons __tmp301843 __tmp301835)))))
          (let ((___match301561301562_
                 (lambda (_e296152296177_
                          _hd296151296181_
                          _tl296150296184_
                          _e296155296187_
                          _hd296154296191_
                          _tl296153296194_
                          ___splice301519301520_
                          _target296156296197_
                          _tl296158296200_)
                   (letrec ((_loop296159296203_
                             (lambda (_hd296157296207_ _arity296163296210_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd296157296207_))
                                   (let ((_e296160296213_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd296157296207_))))
                                     (let ((_lp-tl296162296220_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e296160296213_)))
                                           (_lp-hd296161296217_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e296160296213_))))
                                       (_loop296159296203_
                                        _lp-tl296162296220_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd296161296217_
                                                _arity296163296210_)))))
                                   (let ((_arity296164296223_
                                          (reverse _arity296163296210_)))
                                     (___kont301517301518_
                                      _arity296164296223_
                                      _hd296154296191_))))))
                     (_loop296159296203_ _target296156296197_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301512301513_))
                (let ((_e296141296262_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301512301513_))))
                  (let ((_tl296139296269_
                         (let () (declare (not safe)) (##cdr _e296141296262_)))
                        (_hd296140296266_
                         (let ()
                           (declare (not safe))
                           (##car _e296141296262_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl296139296269_))
                        (let ((_e296144296272_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl296139296269_))))
                          (let ((_tl296142296279_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e296144296272_)))
                                (_hd296143296276_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e296144296272_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl296142296279_))
                                (let ((_e296147296282_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl296142296279_))))
                                  (let ((_tl296145296289_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e296147296282_)))
                                        (_hd296146296286_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e296147296282_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296145296289_))
                                        (___kont301515301516_
                                         _hd296146296286_
                                         _hd296143296276_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl296142296279_))
                                            (let ((___splice301519301520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl296142296279_
                                                      '0))))
                                              (let ((_tl296158296200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301519301520_
                                                        '1)))
                                                    (_target296156296197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301519301520_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl296158296200_))
                                                    (___match301561301562_
                                                     _e296141296262_
                                                     _hd296140296266_
                                                     _tl296139296269_
                                                     _e296144296272_
                                                     _hd296143296276_
                                                     _tl296142296279_
                                                     ___splice301519301520_
                                                     _target296156296197_
                                                     _tl296158296200_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g296135296170_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g296135296170_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl296142296279_))
                                    (let ((___splice301519301520_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl296142296279_
                                              '0))))
                                      (let ((_tl296158296200_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301519301520_
                                                '1)))
                                            (_target296156296197_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301519301520_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296158296200_))
                                            (___match301561301562_
                                             _e296141296262_
                                             _hd296140296266_
                                             _tl296139296269_
                                             _e296144296272_
                                             _hd296143296276_
                                             _tl296142296279_
                                             ___splice301519301520_
                                             _target296156296197_
                                             _tl296158296200_)
                                            (let ()
                                              (declare (not safe))
                                              (_g296135296170_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g296135296170_))))))
                        (let () (declare (not safe)) (_g296135296170_)))))
                (let () (declare (not safe)) (_g296135296170_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx296314_)
      (let* ((_g296318296353_
              (lambda (_g296319296349_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296319296349_))))
             (_g296317296481_
              (lambda (_g296319296357_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296319296357_))
                    (let ((_e296324296360_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296319296357_))))
                      (let ((_hd296323296364_
                             (let ()
                               (declare (not safe))
                               (##car _e296324296360_)))
                            (_tl296322296367_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296324296360_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296322296367_))
                            (let ((_g301844_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296322296367_
                                      '0))))
                              (begin
                                (let ((_g301845_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301844_)
                                             (##vector-length _g301844_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301845_ 2)))
                                      (error "Context expects 2 values"
                                             _g301845_)))
                                (let ((_target296325296370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301844_ 0)))
                                      (_tl296327296373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301844_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296327296373_))
                                      (letrec ((_loop296328296376_
                                                (lambda (_hd296326296380_
                                                         _arity296332296383_
                                                         _prim296333296385_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296326296380_))
                                                      (let ((_e296329296388_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296326296380_))))
                (let ((_lp-hd296330296392_
                       (let () (declare (not safe)) (##car _e296329296388_)))
                      (_lp-tl296331296395_
                       (let () (declare (not safe)) (##cdr _e296329296388_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296330296392_))
                      (let ((_e296338296398_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296330296392_))))
                        (let ((_hd296337296402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296338296398_)))
                              (_tl296336296405_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296338296398_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296336296405_))
                              (let ((_g301854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296336296405_
                                        '0))))
                                (begin
                                  (let ((_g301855_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301854_)
                                               (##vector-length _g301854_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301855_ 2)))
                                        (error "Context expects 2 values"
                                               _g301855_)))
                                  (let ((_target296339296408_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301854_ 0)))
                                        (_tl296341296411_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301854_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296341296411_))
                                        (letrec ((_loop296342296414_
                                                  (lambda (_hd296340296418_
                                                           _arity296346296421_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296340296418_))
                                                        (let ((_e296343296424_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296340296418_))))
                  (let ((_lp-hd296344296428_
                         (let () (declare (not safe)) (##car _e296343296424_)))
                        (_lp-tl296345296431_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296343296424_))))
                    (_loop296342296414_
                     _lp-tl296345296431_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296344296428_ _arity296346296421_)))))
                (let ((_arity296347296434_ (reverse _arity296346296421_)))
                  (_loop296328296376_
                   _lp-tl296331296395_
                   (let ()
                     (declare (not safe))
                     (cons _arity296347296434_ _arity296332296383_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296337296402_ _prim296333296385_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296342296414_
                                           _target296339296408_
                                           '()))
                                        (_g296318296353_ _g296319296357_)))))
                              (_g296318296353_ _g296319296357_))))
                      (_g296318296353_ _g296319296357_))))
              (let ((_arity296334296438_ (reverse _arity296332296383_))
                    (_prim296335296441_ (reverse _prim296333296385_)))
                ((lambda (_L296444_ _L296446_)
                   (let ((__tmp301853
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301846
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296444_
                               _L296446_))
                            (let ((__tmp301847
                                   (lambda (_g296461296467_
                                            _g296462296470_
                                            _g296463296472_)
                                     (let ((__tmp301848
                                            (let ((__tmp301852
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301849
                                                   (let ((__tmp301850
                                                          (let ((__tmp301851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296464296475_ _g296465296478_)
                           (let ()
                             (declare (not safe))
                             (cons _g296464296475_ _g296465296478_)))))
                    (declare (not safe))
                    (foldr1 __tmp301851 '() _g296461296467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296462296470_
                                                           __tmp301850))))
                                              (declare (not safe))
                                              (cons __tmp301852 __tmp301849))))
                                       (declare (not safe))
                                       (cons __tmp301848 _g296463296472_)))))
                              (declare (not safe))
                              (foldr2 __tmp301847 '() _L296444_ _L296446_)))))
                     (declare (not safe))
                     (cons __tmp301853 __tmp301846)))
                 _arity296334296438_
                 _prim296335296441_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296328296376_
                                         _target296325296370_
                                         '()
                                         '()))
                                      (_g296318296353_ _g296319296357_)))))
                            (_g296318296353_ _g296319296357_))))
                    (_g296318296353_ _g296319296357_)))))
        (_g296317296481_ _$stx296314_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296487_)
      (let* ((_g296491296526_
              (lambda (_g296492296522_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296492296522_))))
             (_g296490296654_
              (lambda (_g296492296530_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296492296530_))
                    (let ((_e296497296533_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296492296530_))))
                      (let ((_hd296496296537_
                             (let ()
                               (declare (not safe))
                               (##car _e296497296533_)))
                            (_tl296495296540_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296497296533_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296495296540_))
                            (let ((_g301856_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296495296540_
                                      '0))))
                              (begin
                                (let ((_g301857_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301856_)
                                             (##vector-length _g301856_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301857_ 2)))
                                      (error "Context expects 2 values"
                                             _g301857_)))
                                (let ((_target296498296543_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301856_ 0)))
                                      (_tl296500296546_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301856_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296500296546_))
                                      (letrec ((_loop296501296549_
                                                (lambda (_hd296499296553_
                                                         _arity296505296556_
                                                         _prim296506296558_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296499296553_))
                                                      (let ((_e296502296561_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296499296553_))))
                (let ((_lp-hd296503296565_
                       (let () (declare (not safe)) (##car _e296502296561_)))
                      (_lp-tl296504296568_
                       (let () (declare (not safe)) (##cdr _e296502296561_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296503296565_))
                      (let ((_e296511296571_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296503296565_))))
                        (let ((_hd296510296575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296511296571_)))
                              (_tl296509296578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296511296571_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296509296578_))
                              (let ((_g301866_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296509296578_
                                        '0))))
                                (begin
                                  (let ((_g301867_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301866_)
                                               (##vector-length _g301866_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301867_ 2)))
                                        (error "Context expects 2 values"
                                               _g301867_)))
                                  (let ((_target296512296581_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301866_ 0)))
                                        (_tl296514296584_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301866_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296514296584_))
                                        (letrec ((_loop296515296587_
                                                  (lambda (_hd296513296591_
                                                           _arity296519296594_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296513296591_))
                                                        (let ((_e296516296597_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296513296591_))))
                  (let ((_lp-hd296517296601_
                         (let () (declare (not safe)) (##car _e296516296597_)))
                        (_lp-tl296518296604_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296516296597_))))
                    (_loop296515296587_
                     _lp-tl296518296604_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296517296601_ _arity296519296594_)))))
                (let ((_arity296520296607_ (reverse _arity296519296594_)))
                  (_loop296501296549_
                   _lp-tl296504296568_
                   (let ()
                     (declare (not safe))
                     (cons _arity296520296607_ _arity296505296556_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296510296575_ _prim296506296558_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296515296587_
                                           _target296512296581_
                                           '()))
                                        (_g296491296526_ _g296492296530_)))))
                              (_g296491296526_ _g296492296530_))))
                      (_g296491296526_ _g296492296530_))))
              (let ((_arity296507296611_ (reverse _arity296505296556_))
                    (_prim296508296614_ (reverse _prim296506296558_)))
                ((lambda (_L296617_ _L296619_)
                   (let ((__tmp301865
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301858
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296617_
                               _L296619_))
                            (let ((__tmp301859
                                   (lambda (_g296634296640_
                                            _g296635296643_
                                            _g296636296645_)
                                     (let ((__tmp301860
                                            (let ((__tmp301864
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301861
                                                   (let ((__tmp301862
                                                          (let ((__tmp301863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296637296648_ _g296638296651_)
                           (let ()
                             (declare (not safe))
                             (cons _g296637296648_ _g296638296651_)))))
                    (declare (not safe))
                    (foldr1 __tmp301863 '() _g296634296640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296635296643_
                                                           __tmp301862))))
                                              (declare (not safe))
                                              (cons __tmp301864 __tmp301861))))
                                       (declare (not safe))
                                       (cons __tmp301860 _g296636296645_)))))
                              (declare (not safe))
                              (foldr2 __tmp301859 '() _L296617_ _L296619_)))))
                     (declare (not safe))
                     (cons __tmp301865 __tmp301858)))
                 _arity296507296611_
                 _prim296508296614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296501296549_
                                         _target296498296543_
                                         '()
                                         '()))
                                      (_g296491296526_ _g296492296530_)))))
                            (_g296491296526_ _g296492296530_))))
                    (_g296491296526_ _g296492296530_)))))
        (_g296490296654_ _$stx296487_)))))
