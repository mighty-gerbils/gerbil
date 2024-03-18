(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[:0:]#:|
    (lambda (_$stx48996_)
      (let ((_g4899949006_
             (lambda (_g4900049002_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4900049002_))))
        (_g4899949006_ _$stx48996_))))
  (define |gerbil/core/more-sugar[:0:]#:~|
    (lambda (_$stx49010_)
      (let ((_g4901349020_
             (lambda (_g4901449016_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4901449016_))))
        (_g4901349020_ _$stx49010_))))
  (define |gerbil/core/more-sugar[:0:]#:-|
    (lambda (_$stx49024_)
      (let ((_g4902749034_
             (lambda (_g4902849030_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4902849030_))))
        (_g4902749034_ _$stx49024_))))
  (define |gerbil/core/more-sugar[:0:]#:~-|
    (lambda (_$stx49038_)
      (let ((_g4904149048_
             (lambda (_g4904249044_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4904249044_))))
        (_g4904149048_ _$stx49038_))))
  (define |gerbil/core/more-sugar[:0:]#:=|
    (lambda (_$stx49052_)
      (let ((_g4905549062_
             (lambda (_g4905649058_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4905649058_))))
        (_g4905549062_ _$stx49052_))))
  (define |gerbil/core/more-sugar[1]#setq-macro::t|
    (let ((__tmp50640 (list gerbil/core/macro-object#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50640
       '()
       '()
       '#f)))
  (define |gerbil/core/more-sugar[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|)))
  (define |gerbil/core/more-sugar[1]#make-setq-macro|
    (lambda _$args49076_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _$args49076_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#setf-macro::t|
    (let ((__tmp50641 (list gerbil/core/macro-object#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50641
       '()
       '()
       '#f)))
  (define |gerbil/core/more-sugar[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|)))
  (define |gerbil/core/more-sugar[1]#make-setf-macro|
    (lambda _$args49072_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _$args49072_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_stx49069_)
      (if (gx#identifier? _stx49069_)
          (let ((__tmp50642 (gx#syntax-local-value _stx49069_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp50642))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_stx49066_)
      (if (gx#identifier? _stx49066_)
          (let ((__tmp50643 (gx#syntax-local-value _stx49066_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp50643))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_stx49080_)
      (let* ((___stx5048750488_ _stx49080_)
             (_g4908649145_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5048750488_))))
        (let ((___kont5049050491_
               (lambda (_L49418_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L49418_)
                  _stx49080_)))
              (___kont5049250493_
               (lambda (_L49317_ _L49319_ _L49320_)
                 (let* ((_g4934249350_
                         (lambda (_g4934349346_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4934349346_)))
                        (_g4934149377_
                         (lambda (_g4934349354_)
                           ((lambda (_L49357_)
                              (let ()
                                (let ((__tmp50644
                                       (let ((__tmp50646
                                              (lambda (_g4936849371_
                                                       _g4936949374_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g4936849371_
                                                        _g4936949374_))))
                                             (__tmp50645
                                              (let ()
                                                (declare (not safe))
                                                (cons _L49317_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50646
                                                 __tmp50645
                                                 _L49319_))))
                                  (declare (not safe))
                                  (cons _L49357_ __tmp50644))))
                            _g4934349354_))))
                   (_g4934149377_
                    (gx#stx-identifier _L49320_ _L49320_ '"-set!")))))
              (___kont5049650497_
               (lambda (_L49227_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L49227_)
                  _stx49080_)))
              (___kont5049850499_
               (lambda (_L49182_ _L49184_)
                 (let ((__tmp50649 (gx#datum->syntax '#f '%#set!))
                       (__tmp50647
                        (let ((__tmp50648
                               (let ()
                                 (declare (not safe))
                                 (cons _L49182_ '()))))
                          (declare (not safe))
                          (cons _L49184_ __tmp50648))))
                   (declare (not safe))
                   (cons __tmp50649 __tmp50647)))))
          (let* ((___match5057850579_
                  (lambda (_e4913349152_
                           _hd4913249156_
                           _tl4913149159_
                           _e4913649162_
                           _hd4913549166_
                           _tl4913449169_
                           _e4913949172_
                           _hd4913849176_
                           _tl4913749179_)
                    (let ((_L49182_ _hd4913849176_) (_L49184_ _hd4913549166_))
                      (if (gx#identifier? _L49184_)
                          (___kont5049850499_ _L49182_ _L49184_)
                          (let () (declare (not safe)) (_g4908649145_))))))
                 (___match5055850559_
                  (lambda (_e4912549207_
                           _hd4912449211_
                           _tl4912349214_
                           _e4912849217_
                           _hd4912749221_
                           _tl4912649224_)
                    (let ((_L49227_ _hd4912749221_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _L49227_))
                          (___kont5049650497_ _L49227_)
                          (if (gx#stx-pair? _tl4912649224_)
                              (let ((_e4913949172_
                                     (gx#syntax-e _tl4912649224_)))
                                (let ((_tl4913749179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4913949172_)))
                                      (_hd4913849176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4913949172_))))
                                  (if (gx#stx-null? _tl4913749179_)
                                      (___match5057850579_
                                       _e4912549207_
                                       _hd4912449211_
                                       _tl4912349214_
                                       _e4912849217_
                                       _hd4912749221_
                                       _tl4912649224_
                                       _e4913949172_
                                       _hd4913849176_
                                       _tl4913749179_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4908649145_)))))
                              (let ()
                                (declare (not safe))
                                (_g4908649145_)))))))
                 (___match5054650547_
                  (lambda (_e4910349247_
                           _hd4910249251_
                           _tl4910149254_
                           _e4910649257_
                           _hd4910549261_
                           _tl4910449264_
                           _e4910949267_
                           _hd4910849271_
                           _tl4910749274_
                           ___splice5049450495_
                           _target4911049277_
                           _tl4911249280_)
                    (letrec ((_loop4911349283_
                              (lambda (_hd4911149287_ _arg4911749290_)
                                (if (gx#stx-pair? _hd4911149287_)
                                    (let ((_e4911449293_
                                           (gx#syntax-e _hd4911149287_)))
                                      (let ((_lp-tl4911649300_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4911449293_)))
                                            (_lp-hd4911549297_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4911449293_))))
                                        (_loop4911349283_
                                         _lp-tl4911649300_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4911549297_
                                                 _arg4911749290_)))))
                                    (let ((_arg4911849303_
                                           (reverse _arg4911749290_)))
                                      (if (gx#stx-pair? _tl4910449264_)
                                          (let ((_e4912149307_
                                                 (gx#syntax-e _tl4910449264_)))
                                            (let ((_tl4911949314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4912149307_)))
                                                  (_hd4912049311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4912149307_))))
                                              (if (gx#stx-null? _tl4911949314_)
                                                  (let ((_L49317_
                                                         _hd4912049311_)
                                                        (_L49319_
                                                         _arg4911849303_)
                                                        (_L49320_
                                                         _hd4910849271_))
                                                    (if (gx#identifier?
                                                         _L49320_)
                                                        (___kont5049250493_
                                                         _L49317_
                                                         _L49319_
                                                         _L49320_)
                                                        (___match5055850559_
                                                         _e4910349247_
                                                         _hd4910249251_
                                                         _tl4910149254_
                                                         _e4910649257_
                                                         _hd4910549261_
                                                         _tl4910449264_)))
                                                  (___match5055850559_
                                                   _e4910349247_
                                                   _hd4910249251_
                                                   _tl4910149254_
                                                   _e4910649257_
                                                   _hd4910549261_
                                                   _tl4910449264_))))
                                          (___match5055850559_
                                           _e4910349247_
                                           _hd4910249251_
                                           _tl4910149254_
                                           _e4910649257_
                                           _hd4910549261_
                                           _tl4910449264_)))))))
                      (_loop4911349283_ _target4911049277_ '())))))
            (if (gx#stx-pair? ___stx5048750488_)
                (let ((_e4909149388_ (gx#syntax-e ___stx5048750488_)))
                  (let ((_tl4908949395_
                         (let () (declare (not safe)) (##cdr _e4909149388_)))
                        (_hd4909049392_
                         (let () (declare (not safe)) (##car _e4909149388_))))
                    (if (gx#stx-pair? _tl4908949395_)
                        (let ((_e4909449398_ (gx#syntax-e _tl4908949395_)))
                          (let ((_tl4909249405_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4909449398_)))
                                (_hd4909349402_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4909449398_))))
                            (if (gx#stx-pair? _hd4909349402_)
                                (let ((_e4909749408_
                                       (gx#syntax-e _hd4909349402_)))
                                  (let ((_tl4909549415_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4909749408_)))
                                        (_hd4909649412_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4909749408_))))
                                    (if (let ((__tmp50650
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp50650))
                                        (let ((_L49418_ _hd4909649412_))
                                          (___kont5049050491_ _L49418_))
                                        (if (gx#stx-pair/null? _tl4909549415_)
                                            (let ((___splice5049450495_
                                                   (gx#syntax-split-splice
                                                    _tl4909549415_
                                                    '0)))
                                              (let ((_tl4911249280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5049450495_
                                                        '1)))
                                                    (_target4911049277_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5049450495_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4911249280_)
                                                    (___match5054650547_
                                                     _e4909149388_
                                                     _hd4909049392_
                                                     _tl4908949395_
                                                     _e4909449398_
                                                     _hd4909349402_
                                                     _tl4909249405_
                                                     _e4909749408_
                                                     _hd4909649412_
                                                     _tl4909549415_
                                                     ___splice5049450495_
                                                     _target4911049277_
                                                     _tl4911249280_)
                                                    (___match5055850559_
                                                     _e4909149388_
                                                     _hd4909049392_
                                                     _tl4908949395_
                                                     _e4909449398_
                                                     _hd4909349402_
                                                     _tl4909249405_))))
                                            (___match5055850559_
                                             _e4909149388_
                                             _hd4909049392_
                                             _tl4908949395_
                                             _e4909449398_
                                             _hd4909349402_
                                             _tl4909249405_)))))
                                (___match5055850559_
                                 _e4909149388_
                                 _hd4909049392_
                                 _tl4908949395_
                                 _e4909449398_
                                 _hd4909349402_
                                 _tl4909249405_))))
                        (let () (declare (not safe)) (_g4908649145_)))))
                (let () (declare (not safe)) (_g4908649145_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_stx49438_)
      (let* ((_g4944149465_
              (lambda (_g4944249461_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4944249461_)))
             (_g4944049643_
              (lambda (_g4944249469_)
                (if (gx#stx-pair? _g4944249469_)
                    (let ((_e4944749472_ (gx#syntax-e _g4944249469_)))
                      (let ((_hd4944649476_
                             (let ()
                               (declare (not safe))
                               (##car _e4944749472_)))
                            (_tl4944549479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4944749472_))))
                        (if (gx#stx-pair/null? _tl4944549479_)
                            (if (fx>= (gx#stx-length _tl4944549479_) '1)
                                (let ((_g50651_
                                       (gx#syntax-split-splice
                                        _tl4944549479_
                                        '1)))
                                  (begin
                                    (let ((_g50652_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50651_)
                                                 (##vector-length _g50651_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50652_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50652_)))
                                    (let ((_target4944849482_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50651_ 0)))
                                          (_tl4945049485_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50651_ 1))))
                                      (if (gx#stx-pair? _tl4945049485_)
                                          (let ((_e4945949488_
                                                 (gx#syntax-e _tl4945049485_)))
                                            (let ((_hd4945849492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4945949488_)))
                                                  (_tl4945749495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4945949488_))))
                                              (if (gx#stx-null? _tl4945749495_)
                                                  (letrec ((_loop4945149498_
                                                            (lambda (_hd4944949502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt4945549505_)
                      (if (gx#stx-pair? _hd4944949502_)
                          (let ((_e4945249508_ (gx#syntax-e _hd4944949502_)))
                            (let ((_lp-hd4945349512_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4945249508_)))
                                  (_lp-tl4945449515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4945249508_))))
                              (_loop4945149498_
                               _lp-tl4945449515_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4945349512_ _tgt4945549505_)))))
                          (let ((_tgt4945649518_ (reverse _tgt4945549505_)))
                            ((lambda (_L49522_ _L49524_)
                               (let* ((_g4954249559_
                                       (lambda (_g4954349555_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g4954349555_)))
                                      (_g4954149631_
                                       (lambda (_g4954349563_)
                                         (if (gx#stx-pair/null? _g4954349563_)
                                             (let ((_g50653_
                                                    (gx#syntax-split-splice
                                                     _g4954349563_
                                                     '0)))
                                               (begin
                                                 (let ((_g50654_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50653_)
                                                              (##vector-length
                                                               _g50653_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target4954549566_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50653_
                                                           0)))
                                                       (_tl4954749569_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50653_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl4954749569_)
                                                       (letrec ((_loop4954849572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd4954649576_ _$e4955249579_)
                           (if (gx#stx-pair? _hd4954649576_)
                               (let ((_e4954949582_
                                      (gx#syntax-e _hd4954649576_)))
                                 (let ((_lp-hd4955049586_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4954949582_)))
                                       (_lp-tl4955149589_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4954949582_))))
                                   (_loop4954849572_
                                    _lp-tl4955149589_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd4955049586_
                                            _$e4955249579_)))))
                               (let ((_$e4955349592_ (reverse _$e4955249579_)))
                                 ((lambda (_L49596_)
                                    (let ()
                                      (let ((__tmp50667
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50655
                                             (let ((__tmp50662
                                                    (let ((__tmp50663
                                                           (let ((__tmp50665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50666
                                 (lambda (_g4961449617_ _g4961549620_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4961449617_ _g4961549620_)))))
                            (declare (not safe))
                            (foldr1 __tmp50666 '() _L49596_)))
                         (__tmp50664
                          (let () (declare (not safe)) (cons _L49522_ '()))))
                     (declare (not safe))
                     (cons __tmp50665 __tmp50664))))
              (declare (not safe))
              (cons __tmp50663 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50656
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L49596_
                                                       _L49524_)
                                                      (let ((__tmp50657
                                                             (lambda (_g4961149623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4961249626_
                              _g4961349628_)
                       (let ((__tmp50658
                              (let ((__tmp50661 (gx#datum->syntax '#f 'set!))
                                    (__tmp50659
                                     (let ((__tmp50660
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4961149623_ '()))))
                                       (declare (not safe))
                                       (cons _g4961249626_ __tmp50660))))
                                (declare (not safe))
                                (cons __tmp50661 __tmp50659))))
                         (declare (not safe))
                         (cons __tmp50658 _g4961349628_)))))
                (declare (not safe))
                (foldr2 __tmp50657 '() _L49596_ _L49524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50662 __tmp50656))))
                                        (declare (not safe))
                                        (cons __tmp50667 __tmp50655))))
                                  _$e4955349592_))))))
                 (_loop4954849572_ _target4954549566_ '()))
               (_g4954249559_ _g4954349563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4954249559_ _g4954349563_)))))
                                 (_g4954149631_
                                  (gx#gentemps
                                   (let ((__tmp50668
                                          (lambda (_g4963449637_ _g4963549640_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4963449637_
                                                    _g4963549640_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50668 '() _L49524_))))))
                             _hd4945849492_
                             _tgt4945649518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4945149498_
                                                     _target4944849482_
                                                     '()))
                                                  (_g4944149465_
                                                   _g4944249469_))))
                                          (_g4944149465_ _g4944249469_)))))
                                (_g4944149465_ _g4944249469_))
                            (_g4944149465_ _g4944249469_))))
                    (_g4944149465_ _g4944249469_)))))
        (_g4944049643_ _stx49438_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_stx49649_)
      (let* ((___stx5058150582_ _stx49649_)
             (_g4965349711_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx5058150582_))))
        (let ((___kont5058450585_
               (lambda (_L50045_)
                 (let ((__tmp50672 (gx#datum->syntax '#f 'let))
                       (__tmp50669
                        (let ((__tmp50670
                               (let ((__tmp50671
                                      (lambda (_g5006150064_ _g5006250067_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g5006150064_
                                                _g5006250067_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50671 '() _L50045_))))
                          (declare (not safe))
                          (cons '() __tmp50670))))
                   (declare (not safe))
                   (cons __tmp50672 __tmp50669))))
              (___kont5058850589_
               (lambda (_L49822_ _L49824_ _L49825_)
                 (let* ((_g4984849856_
                         (lambda (_g4984949852_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4984949852_)))
                        (_g4984749976_
                         (lambda (_g4984949860_)
                           ((lambda (_L49863_)
                              (let ()
                                (let* ((_g4987549892_
                                        (lambda (_g4987649888_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4987649888_)))
                                       (_g4987449956_
                                        (lambda (_g4987649896_)
                                          (if (gx#stx-pair/null? _g4987649896_)
                                              (let ((_g50673_
                                                     (gx#syntax-split-splice
                                                      _g4987649896_
                                                      '0)))
                                                (begin
                                                  (let ((_g50674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50673_)
                                                               (##vector-length
                                                                _g50673_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50674_ 2)))
                (error "Context expects 2 values" _g50674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4987849899_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50673_
                                                            0)))
                                                        (_tl4988049902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50673_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4988049902_)
                                                        (letrec ((_loop4988149905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4987949909_ _arg4988549912_)
                            (if (gx#stx-pair? _hd4987949909_)
                                (let ((_e4988249915_
                                       (gx#syntax-e _hd4987949909_)))
                                  (let ((_lp-hd4988349919_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4988249915_)))
                                        (_lp-tl4988449922_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4988249915_))))
                                    (_loop4988149905_
                                     _lp-tl4988449922_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd4988349919_
                                             _arg4988549912_)))))
                                (let ((_arg4988649925_
                                       (reverse _arg4988549912_)))
                                  ((lambda (_L49929_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50678
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50675
                                                (let ((__tmp50676
                                                       (let ((__tmp50677
                                                              (lambda (_g4994749950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4994849953_)
                        (let ()
                          (declare (not safe))
                          (cons _g4994749950_ _g4994849953_)))))
                 (declare (not safe))
                 (foldr1 __tmp50677 '() _L49929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L49863_ __tmp50676))))
                                           (declare (not safe))
                                           (cons __tmp50678 __tmp50675)))))
                                   _arg4988649925_))))))
                  (_loop4988149905_ _target4987849899_ '()))
                (_g4987549892_ _g4987649896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4987549892_ _g4987649896_)))))
                                  (_g4987449956_
                                   (let ((__tmp50681
                                          (gx#syntax->list
                                           (let ((__tmp50682
                                                  (lambda (_g4995949962_
                                                           _g4996049965_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4995949962_
                                                            _g4996049965_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50682
                                                     '()
                                                     _L49825_))))
                                         (__tmp50679
                                          (gx#syntax->list
                                           (let ((__tmp50680
                                                  (lambda (_g4996749970_
                                                           _g4996849973_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4996749970_
                                                            _g4996849973_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50680
                                                     '()
                                                     _L49824_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50681
                                             __tmp50679))))))
                            _g4984949860_))))
                   (_g4984749976_
                    (gx#stx-wrap-source
                     (let ((__tmp50686 (gx#datum->syntax '#f 'lambda))
                           (__tmp50683
                            (let ((__tmp50684
                                   (let ((__tmp50685
                                          (lambda (_g4997949982_ _g4998049985_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4997949982_
                                                    _g4998049985_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50685 '() _L49822_))))
                              (declare (not safe))
                              (cons '() __tmp50684))))
                       (declare (not safe))
                       (cons __tmp50686 __tmp50683))
                     (gx#stx-source _stx49649_)))))))
          (let* ((___match5063650637_
                  (lambda (_e4967649718_
                           _hd4967549722_
                           _tl4967449725_
                           _e4967949728_
                           _hd4967849732_
                           _tl4967749735_
                           ___splice5059050591_
                           _target4968049738_
                           _tl4968249741_)
                    (letrec ((_loop4968349744_
                              (lambda (_hd4968149748_
                                       _expr4968749751_
                                       _param4968849753_)
                                (if (gx#stx-pair? _hd4968149748_)
                                    (let ((_e4968449756_
                                           (gx#syntax-e _hd4968149748_)))
                                      (let ((_lp-tl4968649763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4968449756_)))
                                            (_lp-hd4968549760_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4968449756_))))
                                        (if (gx#stx-pair? _lp-hd4968549760_)
                                            (let ((_e4969349766_
                                                   (gx#syntax-e
                                                    _lp-hd4968549760_)))
                                              (let ((_tl4969149773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4969349766_)))
                                                    (_hd4969249770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4969349766_))))
                                                (if (gx#stx-pair?
                                                     _tl4969149773_)
                                                    (let ((_e4969649776_
                                                           (gx#syntax-e
                                                            _tl4969149773_)))
                                                      (let ((_tl4969449783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4969649776_)))
                    (_hd4969549780_
                     (let () (declare (not safe)) (##car _e4969649776_))))
                (if (gx#stx-null? _tl4969449783_)
                    (_loop4968349744_
                     _lp-tl4968649763_
                     (let ()
                       (declare (not safe))
                       (cons _hd4969549780_ _expr4968749751_))
                     (let ()
                       (declare (not safe))
                       (cons _hd4969249770_ _param4968849753_)))
                    (let () (declare (not safe)) (_g4965349711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4965349711_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4965349711_)))))
                                    (let ((_param4969049789_
                                           (reverse _param4968849753_))
                                          (_expr4968949786_
                                           (reverse _expr4968749751_)))
                                      (if (gx#stx-pair/null? _tl4967749735_)
                                          (let ((___splice5059250593_
                                                 (gx#syntax-split-splice
                                                  _tl4967749735_
                                                  '0)))
                                            (let ((_tl4969949795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5059250593_
                                                      '1)))
                                                  (_target4969749792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice5059250593_
                                                      '0))))
                                              (if (gx#stx-null? _tl4969949795_)
                                                  (letrec ((_loop4970049798_
                                                            (lambda (_hd4969849802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body4970449805_)
                      (if (gx#stx-pair? _hd4969849802_)
                          (let ((_e4970149808_ (gx#syntax-e _hd4969849802_)))
                            (let ((_lp-tl4970349815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4970149808_)))
                                  (_lp-hd4970249812_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4970149808_))))
                              (_loop4970049798_
                               _lp-tl4970349815_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4970249812_ _body4970449805_)))))
                          (let ((_body4970549818_ (reverse _body4970449805_)))
                            (___kont5058850589_
                             _body4970549818_
                             _expr4968949786_
                             _param4969049789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4970049798_
                                                     _target4969749792_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4965349711_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4965349711_))))))))
                      (_loop4968349744_ _target4968049738_ '() '()))))
                 (___match5061650617_
                  (lambda (_e4965849995_
                           _hd4965749999_
                           _tl4965650002_
                           _e4966150005_
                           _hd4966050009_
                           _tl4965950012_
                           ___splice5058650587_
                           _target4966250015_
                           _tl4966450018_)
                    (letrec ((_loop4966550021_
                              (lambda (_hd4966350025_ _body4966950028_)
                                (if (gx#stx-pair? _hd4966350025_)
                                    (let ((_e4966650031_
                                           (gx#syntax-e _hd4966350025_)))
                                      (let ((_lp-tl4966850038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4966650031_)))
                                            (_lp-hd4966750035_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4966650031_))))
                                        (_loop4966550021_
                                         _lp-tl4966850038_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4966750035_
                                                 _body4966950028_)))))
                                    (let ((_body4967050041_
                                           (reverse _body4966950028_)))
                                      (___kont5058450585_
                                       _body4967050041_))))))
                      (_loop4966550021_ _target4966250015_ '())))))
            (if (gx#stx-pair? ___stx5058150582_)
                (let ((_e4965849995_ (gx#syntax-e ___stx5058150582_)))
                  (let ((_tl4965650002_
                         (let () (declare (not safe)) (##cdr _e4965849995_)))
                        (_hd4965749999_
                         (let () (declare (not safe)) (##car _e4965849995_))))
                    (if (gx#stx-pair? _tl4965650002_)
                        (let ((_e4966150005_ (gx#syntax-e _tl4965650002_)))
                          (let ((_tl4965950012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4966150005_)))
                                (_hd4966050009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4966150005_))))
                            (if (gx#stx-null? _hd4966050009_)
                                (if (gx#stx-pair/null? _tl4965950012_)
                                    (let ((___splice5058650587_
                                           (gx#syntax-split-splice
                                            _tl4965950012_
                                            '0)))
                                      (let ((_tl4966450018_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5058650587_
                                                '1)))
                                            (_target4966250015_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5058650587_
                                                '0))))
                                        (if (gx#stx-null? _tl4966450018_)
                                            (___match5061650617_
                                             _e4965849995_
                                             _hd4965749999_
                                             _tl4965650002_
                                             _e4966150005_
                                             _hd4966050009_
                                             _tl4965950012_
                                             ___splice5058650587_
                                             _target4966250015_
                                             _tl4966450018_)
                                            (if (gx#stx-pair/null?
                                                 _hd4966050009_)
                                                (let ((___splice5059050591_
                                                       (gx#syntax-split-splice
                                                        _hd4966050009_
                                                        '0)))
                                                  (let ((_tl4968249741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5059050591_
                                                            '1)))
                                                        (_target4968049738_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5059050591_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4968249741_)
                                                        (___match5063650637_
                                                         _e4965849995_
                                                         _hd4965749999_
                                                         _tl4965650002_
                                                         _e4966150005_
                                                         _hd4966050009_
                                                         _tl4965950012_
                                                         ___splice5059050591_
                                                         _target4968049738_
                                                         _tl4968249741_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4965349711_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4965349711_))))))
                                    (if (gx#stx-pair/null? _hd4966050009_)
                                        (let ((___splice5059050591_
                                               (gx#syntax-split-splice
                                                _hd4966050009_
                                                '0)))
                                          (let ((_tl4968249741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice5059050591_
                                                    '1)))
                                                (_target4968049738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice5059050591_
                                                    '0))))
                                            (if (gx#stx-null? _tl4968249741_)
                                                (___match5063650637_
                                                 _e4965849995_
                                                 _hd4965749999_
                                                 _tl4965650002_
                                                 _e4966150005_
                                                 _hd4966050009_
                                                 _tl4965950012_
                                                 ___splice5059050591_
                                                 _target4968049738_
                                                 _tl4968249741_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4965349711_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4965349711_))))
                                (if (gx#stx-pair/null? _hd4966050009_)
                                    (let ((___splice5059050591_
                                           (gx#syntax-split-splice
                                            _hd4966050009_
                                            '0)))
                                      (let ((_tl4968249741_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5059050591_
                                                '1)))
                                            (_target4968049738_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5059050591_
                                                '0))))
                                        (if (gx#stx-null? _tl4968249741_)
                                            (___match5063650637_
                                             _e4965849995_
                                             _hd4965749999_
                                             _tl4965650002_
                                             _e4966150005_
                                             _hd4966050009_
                                             _tl4965950012_
                                             ___splice5059050591_
                                             _target4968049738_
                                             _tl4968249741_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4965349711_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4965349711_))))))
                        (let () (declare (not safe)) (_g4965349711_)))))
                (let () (declare (not safe)) (_g4965349711_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_$stx50078_)
      (let* ((_g5008250106_
              (lambda (_g5008350102_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5008350102_)))
             (_g5008150191_
              (lambda (_g5008350110_)
                (if (gx#stx-pair? _g5008350110_)
                    (let ((_e5008850113_ (gx#syntax-e _g5008350110_)))
                      (let ((_hd5008750117_
                             (let ()
                               (declare (not safe))
                               (##car _e5008850113_)))
                            (_tl5008650120_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5008850113_))))
                        (if (gx#stx-pair? _tl5008650120_)
                            (let ((_e5009150123_ (gx#syntax-e _tl5008650120_)))
                              (let ((_hd5009050127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5009150123_)))
                                    (_tl5008950130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5009150123_))))
                                (if (gx#stx-pair/null? _tl5008950130_)
                                    (let ((_g50687_
                                           (gx#syntax-split-splice
                                            _tl5008950130_
                                            '0)))
                                      (begin
                                        (let ((_g50688_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50687_)
                                                     (##vector-length _g50687_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50688_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50688_)))
                                        (let ((_target5009250133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50687_ 0)))
                                              (_tl5009450136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50687_ 1))))
                                          (if (gx#stx-null? _tl5009450136_)
                                              (letrec ((_loop5009550139_
                                                        (lambda (_hd5009350143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body5009950146_)
                  (if (gx#stx-pair? _hd5009350143_)
                      (let ((_e5009650149_ (gx#syntax-e _hd5009350143_)))
                        (let ((_lp-hd5009750153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5009650149_)))
                              (_lp-tl5009850156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5009650149_))))
                          (_loop5009550139_
                           _lp-tl5009850156_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd5009750153_ _body5009950146_)))))
                      (let ((_body5010050159_ (reverse _body5009950146_)))
                        ((lambda (_L50163_ _L50165_)
                           (if (gx#identifier? _L50165_)
                               (let ((__tmp50696
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50689
                                      (let ((__tmp50690
                                             (let ((__tmp50695
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50691
                                                    (let ((__tmp50694
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L50165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50692
                   (let ((__tmp50693
                          (lambda (_g5018250185_ _g5018350188_)
                            (let ()
                              (declare (not safe))
                              (cons _g5018250185_ _g5018350188_)))))
                     (declare (not safe))
                     (foldr1 __tmp50693 '() _L50163_))))
              (declare (not safe))
              (cons __tmp50694 __tmp50692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50695 __tmp50691))))
                                        (declare (not safe))
                                        (cons __tmp50690 '()))))
                                 (declare (not safe))
                                 (cons __tmp50696 __tmp50689))
                               (_g5008250106_ _g5008350110_)))
                         _body5010050159_
                         _hd5009050127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5009550139_
                                                 _target5009250133_
                                                 '()))
                                              (_g5008250106_ _g5008350110_)))))
                                    (_g5008250106_ _g5008350110_))))
                            (_g5008250106_ _g5008350110_))))
                    (_g5008250106_ _g5008350110_)))))
        (_g5008150191_ _$stx50078_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_$stx50196_)
      (let* ((_g5020050228_
              (lambda (_g5020150224_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5020150224_)))
             (_g5019950327_
              (lambda (_g5020150232_)
                (if (gx#stx-pair? _g5020150232_)
                    (let ((_e5020750235_ (gx#syntax-e _g5020150232_)))
                      (let ((_hd5020650239_
                             (let ()
                               (declare (not safe))
                               (##car _e5020750235_)))
                            (_tl5020550242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5020750235_))))
                        (if (gx#stx-pair? _tl5020550242_)
                            (let ((_e5021050245_ (gx#syntax-e _tl5020550242_)))
                              (let ((_hd5020950249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5021050245_)))
                                    (_tl5020850252_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5021050245_))))
                                (if (gx#stx-pair? _tl5020850252_)
                                    (let ((_e5021350255_
                                           (gx#syntax-e _tl5020850252_)))
                                      (let ((_hd5021250259_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5021350255_)))
                                            (_tl5021150262_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5021350255_))))
                                        (if (gx#stx-pair/null? _tl5021150262_)
                                            (let ((_g50697_
                                                   (gx#syntax-split-splice
                                                    _tl5021150262_
                                                    '0)))
                                              (begin
                                                (let ((_g50698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50697_)
                                                             (##vector-length
                                                              _g50697_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target5021450265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50697_
                                                          0)))
                                                      (_tl5021650268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50697_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl5021650268_)
                                                      (letrec ((_loop5021750271_
                                                                (lambda (_hd5021550275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest5022150278_)
                          (if (gx#stx-pair? _hd5021550275_)
                              (let ((_e5021850281_
                                     (gx#syntax-e _hd5021550275_)))
                                (let ((_lp-hd5021950285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5021850281_)))
                                      (_lp-tl5022050288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5021850281_))))
                                  (_loop5021750271_
                                   _lp-tl5022050288_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd5021950285_
                                           _rest5022150278_)))))
                              (let ((_rest5022250291_
                                     (reverse _rest5022150278_)))
                                ((lambda (_L50295_ _L50297_ _L50298_)
                                   (let ((__tmp50711
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50699
                                          (let ((__tmp50707
                                                 (let ((__tmp50710
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50708
                                                        (let ((__tmp50709
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L50298_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50710
                                                         __tmp50708)))
                                                (__tmp50700
                                                 (let ((__tmp50701
                                                        (let ((__tmp50706
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50702
                                                               (let ((__tmp50703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50704
                                     (let ((__tmp50705
                                            (lambda (_g5031850321_
                                                     _g5031950324_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5031850321_
                                                      _g5031950324_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50705 '() _L50295_))))
                                (declare (not safe))
                                (cons _L50297_ __tmp50704))))
                         (declare (not safe))
                         (cons '() __tmp50703))))
                  (declare (not safe))
                  (cons __tmp50706 __tmp50702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50701 '()))))
                                            (declare (not safe))
                                            (cons __tmp50707 __tmp50700))))
                                     (declare (not safe))
                                     (cons __tmp50711 __tmp50699)))
                                 _rest5022250291_
                                 _hd5021250259_
                                 _hd5020950249_))))))
                (_loop5021750271_ _target5021450265_ '()))
              (_g5020050228_ _g5020150232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g5020050228_ _g5020150232_))))
                                    (_g5020050228_ _g5020150232_))))
                            (_g5020050228_ _g5020150232_))))
                    (_g5020050228_ _g5020150232_)))))
        (_g5019950327_ _$stx50196_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_stx50332_)
      (let* ((_g5033550349_
              (lambda (_g5033650345_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5033650345_)))
             (_g5033450421_
              (lambda (_g5033650353_)
                (if (gx#stx-pair? _g5033650353_)
                    (let ((_e5034050356_ (gx#syntax-e _g5033650353_)))
                      (let ((_hd5033950360_
                             (let ()
                               (declare (not safe))
                               (##car _e5034050356_)))
                            (_tl5033850363_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5034050356_))))
                        (if (gx#stx-pair? _tl5033850363_)
                            (let ((_e5034350366_ (gx#syntax-e _tl5033850363_)))
                              (let ((_hd5034250370_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5034350366_)))
                                    (_tl5034150373_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5034350366_))))
                                (if (gx#stx-null? _tl5034150373_)
                                    ((lambda (_L50376_)
                                       (if (gx#stx-string? _L50376_)
                                           (let* ((_g5039050398_
                                                   (lambda (_g5039150394_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g5039150394_)))
                                                  (_g5038950417_
                                                   (lambda (_g5039150402_)
                                                     ((lambda (_L50405_)
                                                        (let ()
                                                          (let ((__tmp50713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50712
                         (let () (declare (not safe)) (cons _L50405_ '()))))
                    (declare (not safe))
                    (cons __tmp50713 __tmp50712))))
              _g5039150402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g5038950417_
                                              (string->bytes
                                               (gx#stx-e _L50376_))))
                                           (_g5033550349_ _g5033650353_)))
                                     _hd5034250370_)
                                    (_g5033550349_ _g5033650353_))))
                            (_g5033550349_ _g5033650353_))))
                    (_g5033550349_ _g5033650353_)))))
        (_g5033450421_ _stx50332_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_stx50425_)
      (let* ((_g5042850442_
              (lambda (_g5042950438_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5042950438_)))
             (_g5042750483_
              (lambda (_g5042950446_)
                (if (gx#stx-pair? _g5042950446_)
                    (let ((_e5043350449_ (gx#syntax-e _g5042950446_)))
                      (let ((_hd5043250453_
                             (let ()
                               (declare (not safe))
                               (##car _e5043350449_)))
                            (_tl5043150456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5043350449_))))
                        (if (gx#stx-pair? _tl5043150456_)
                            (let ((_e5043650459_ (gx#syntax-e _tl5043150456_)))
                              (let ((_hd5043550463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5043650459_)))
                                    (_tl5043450466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5043650459_))))
                                (if (gx#stx-null? _tl5043450466_)
                                    ((lambda (_L50469_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _L50469_)
                                           '#!void)
                                       (let ((__tmp50714
                                              (gx#datum->syntax '#f 'void)))
                                         (declare (not safe))
                                         (cons __tmp50714 '())))
                                     _hd5043550463_)
                                    (_g5042850442_ _g5042950446_))))
                            (_g5042850442_ _g5042950446_))))
                    (_g5042850442_ _g5042950446_)))))
        (_g5042750483_ _stx50425_)))))
