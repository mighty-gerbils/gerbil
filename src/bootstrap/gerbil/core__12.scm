(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32928_)
      (let ((_g3293132938_
             (lambda (_g3293232934_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3293232934_))))
        (_g3293132938_ _$stx32928_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32942_)
      (let ((_g3294532952_
             (lambda (_g3294632948_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3294632948_))))
        (_g3294532952_ _$stx32942_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32956_)
      (let ((_g3295932966_
             (lambda (_g3296032962_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3296032962_))))
        (_g3295932966_ _$stx32956_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32970_)
      (let ((_g3297332980_
             (lambda (_g3297432976_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3297432976_))))
        (_g3297332980_ _$stx32970_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (let ((__tmp50686 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50686
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32995_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32995_)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setq-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setq-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core$<more-sugar>[1]#setq-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (let ((__tmp50687 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50687
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32991_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32991_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-accessor
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-mutator
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setf-macro-macro|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-accessor
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#&setf-macro-macro-set!|
    (let ()
      (declare (not safe))
      (make-class-slot-unchecked-mutator
       |gerbil/core$<more-sugar>[1]#setf-macro::t|
       'macro)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32988_)
      (if (gx#identifier? _stx32988_)
          (let ((__tmp50688 (gx#syntax-local-value _stx32988_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50688))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32985_)
      (if (gx#identifier? _stx32985_)
          (let ((__tmp50689 (gx#syntax-local-value _stx32985_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50689))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32999_)
      (let* ((___stx4689546896_ _stx32999_)
             (_g3300533064_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4689546896_))))
        (let ((___kont4689846899_
               (lambda (_L33337_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33337_)
                  _stx32999_)))
              (___kont4690046901_
               (lambda (_L33236_ _L33238_ _L33239_)
                 (let* ((_g3326133269_
                         (lambda (_g3326233265_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3326233265_)))
                        (_g3326033296_
                         (lambda (_g3326233273_)
                           ((lambda (_L33276_)
                              (let ()
                                (let ((__tmp50690
                                       (let ((__tmp50692
                                              (lambda (_g3328733290_
                                                       _g3328833293_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3328733290_
                                                        _g3328833293_))))
                                             (__tmp50691
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33236_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50692
                                                 __tmp50691
                                                 _L33238_))))
                                  (declare (not safe))
                                  (cons _L33276_ __tmp50690))))
                            _g3326233273_))))
                   (_g3326033296_
                    (gx#stx-identifier _L33239_ _L33239_ '"-set!")))))
              (___kont4690446905_
               (lambda (_L33146_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33146_)
                  _stx32999_)))
              (___kont4690646907_
               (lambda (_L33101_ _L33103_)
                 (let ((__tmp50695 (gx#datum->syntax '#f '%#set!))
                       (__tmp50693
                        (let ((__tmp50694
                               (let ()
                                 (declare (not safe))
                                 (cons _L33101_ '()))))
                          (declare (not safe))
                          (cons _L33103_ __tmp50694))))
                   (declare (not safe))
                   (cons __tmp50695 __tmp50693)))))
          (let* ((___match4698646987_
                  (lambda (_e3305233071_
                           _hd3305133075_
                           _tl3305033078_
                           _e3305533081_
                           _hd3305433085_
                           _tl3305333088_
                           _e3305833091_
                           _hd3305733095_
                           _tl3305633098_)
                    (let ((_L33101_ _hd3305733095_) (_L33103_ _hd3305433085_))
                      (if (gx#identifier? _L33103_)
                          (___kont4690646907_ _L33101_ _L33103_)
                          (let () (declare (not safe)) (_g3300533064_))))))
                 (___match4696646967_
                  (lambda (_e3304433126_
                           _hd3304333130_
                           _tl3304233133_
                           _e3304733136_
                           _hd3304633140_
                           _tl3304533143_)
                    (let ((_L33146_ _hd3304633140_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33146_))
                          (___kont4690446905_ _L33146_)
                          (if (gx#stx-pair? _tl3304533143_)
                              (let ((_e3305833091_
                                     (gx#syntax-e _tl3304533143_)))
                                (let ((_tl3305633098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3305833091_)))
                                      (_hd3305733095_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3305833091_))))
                                  (if (gx#stx-null? _tl3305633098_)
                                      (___match4698646987_
                                       _e3304433126_
                                       _hd3304333130_
                                       _tl3304233133_
                                       _e3304733136_
                                       _hd3304633140_
                                       _tl3304533143_
                                       _e3305833091_
                                       _hd3305733095_
                                       _tl3305633098_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3300533064_)))))
                              (let ()
                                (declare (not safe))
                                (_g3300533064_)))))))
                 (___match4695446955_
                  (lambda (_e3302233166_
                           _hd3302133170_
                           _tl3302033173_
                           _e3302533176_
                           _hd3302433180_
                           _tl3302333183_
                           _e3302833186_
                           _hd3302733190_
                           _tl3302633193_
                           ___splice4690246903_
                           _target3302933196_
                           _tl3303133199_)
                    (letrec ((_loop3303233202_
                              (lambda (_hd3303033206_ _arg3303633209_)
                                (if (gx#stx-pair? _hd3303033206_)
                                    (let ((_e3303333212_
                                           (gx#syntax-e _hd3303033206_)))
                                      (let ((_lp-tl3303533219_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3303333212_)))
                                            (_lp-hd3303433216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3303333212_))))
                                        (_loop3303233202_
                                         _lp-tl3303533219_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3303433216_
                                                 _arg3303633209_)))))
                                    (let ((_arg3303733222_
                                           (reverse _arg3303633209_)))
                                      (if (gx#stx-pair? _tl3302333183_)
                                          (let ((_e3304033226_
                                                 (gx#syntax-e _tl3302333183_)))
                                            (let ((_tl3303833233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3304033226_)))
                                                  (_hd3303933230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3304033226_))))
                                              (if (gx#stx-null? _tl3303833233_)
                                                  (let ((_L33236_
                                                         _hd3303933230_)
                                                        (_L33238_
                                                         _arg3303733222_)
                                                        (_L33239_
                                                         _hd3302733190_))
                                                    (if (gx#identifier?
                                                         _L33239_)
                                                        (___kont4690046901_
                                                         _L33236_
                                                         _L33238_
                                                         _L33239_)
                                                        (___match4696646967_
                                                         _e3302233166_
                                                         _hd3302133170_
                                                         _tl3302033173_
                                                         _e3302533176_
                                                         _hd3302433180_
                                                         _tl3302333183_)))
                                                  (___match4696646967_
                                                   _e3302233166_
                                                   _hd3302133170_
                                                   _tl3302033173_
                                                   _e3302533176_
                                                   _hd3302433180_
                                                   _tl3302333183_))))
                                          (___match4696646967_
                                           _e3302233166_
                                           _hd3302133170_
                                           _tl3302033173_
                                           _e3302533176_
                                           _hd3302433180_
                                           _tl3302333183_)))))))
                      (_loop3303233202_ _target3302933196_ '())))))
            (if (gx#stx-pair? ___stx4689546896_)
                (let ((_e3301033307_ (gx#syntax-e ___stx4689546896_)))
                  (let ((_tl3300833314_
                         (let () (declare (not safe)) (##cdr _e3301033307_)))
                        (_hd3300933311_
                         (let () (declare (not safe)) (##car _e3301033307_))))
                    (if (gx#stx-pair? _tl3300833314_)
                        (let ((_e3301333317_ (gx#syntax-e _tl3300833314_)))
                          (let ((_tl3301133324_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3301333317_)))
                                (_hd3301233321_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3301333317_))))
                            (if (gx#stx-pair? _hd3301233321_)
                                (let ((_e3301633327_
                                       (gx#syntax-e _hd3301233321_)))
                                  (let ((_tl3301433334_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3301633327_)))
                                        (_hd3301533331_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3301633327_))))
                                    (if (let ((__tmp50696
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50696))
                                        (let ((_L33337_ _hd3301533331_))
                                          (___kont4689846899_ _L33337_))
                                        (if (gx#stx-pair/null? _tl3301433334_)
                                            (let ((___splice4690246903_
                                                   (gx#syntax-split-splice
                                                    _tl3301433334_
                                                    '0)))
                                              (let ((_tl3303133199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4690246903_
                                                        '1)))
                                                    (_target3302933196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4690246903_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3303133199_)
                                                    (___match4695446955_
                                                     _e3301033307_
                                                     _hd3300933311_
                                                     _tl3300833314_
                                                     _e3301333317_
                                                     _hd3301233321_
                                                     _tl3301133324_
                                                     _e3301633327_
                                                     _hd3301533331_
                                                     _tl3301433334_
                                                     ___splice4690246903_
                                                     _target3302933196_
                                                     _tl3303133199_)
                                                    (___match4696646967_
                                                     _e3301033307_
                                                     _hd3300933311_
                                                     _tl3300833314_
                                                     _e3301333317_
                                                     _hd3301233321_
                                                     _tl3301133324_))))
                                            (___match4696646967_
                                             _e3301033307_
                                             _hd3300933311_
                                             _tl3300833314_
                                             _e3301333317_
                                             _hd3301233321_
                                             _tl3301133324_)))))
                                (___match4696646967_
                                 _e3301033307_
                                 _hd3300933311_
                                 _tl3300833314_
                                 _e3301333317_
                                 _hd3301233321_
                                 _tl3301133324_))))
                        (let () (declare (not safe)) (_g3300533064_)))))
                (let () (declare (not safe)) (_g3300533064_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33357_)
      (let* ((_g3336033384_
              (lambda (_g3336133380_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3336133380_)))
             (_g3335933562_
              (lambda (_g3336133388_)
                (if (gx#stx-pair? _g3336133388_)
                    (let ((_e3336633391_ (gx#syntax-e _g3336133388_)))
                      (let ((_hd3336533395_
                             (let ()
                               (declare (not safe))
                               (##car _e3336633391_)))
                            (_tl3336433398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3336633391_))))
                        (if (gx#stx-pair/null? _tl3336433398_)
                            (if (fx>= (gx#stx-length _tl3336433398_) '1)
                                (let ((_g50697_
                                       (gx#syntax-split-splice
                                        _tl3336433398_
                                        '1)))
                                  (begin
                                    (let ((_g50698_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50697_)
                                                 (##vector-length _g50697_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50698_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50698_)))
                                    (let ((_target3336733401_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50697_ 0)))
                                          (_tl3336933404_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50697_ 1))))
                                      (if (gx#stx-pair? _tl3336933404_)
                                          (let ((_e3337833407_
                                                 (gx#syntax-e _tl3336933404_)))
                                            (let ((_hd3337733411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3337833407_)))
                                                  (_tl3337633414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3337833407_))))
                                              (if (gx#stx-null? _tl3337633414_)
                                                  (letrec ((_loop3337033417_
                                                            (lambda (_hd3336833421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3337433424_)
                      (if (gx#stx-pair? _hd3336833421_)
                          (let ((_e3337133427_ (gx#syntax-e _hd3336833421_)))
                            (let ((_lp-hd3337233431_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3337133427_)))
                                  (_lp-tl3337333434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3337133427_))))
                              (_loop3337033417_
                               _lp-tl3337333434_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3337233431_ _tgt3337433424_)))))
                          (let ((_tgt3337533437_ (reverse _tgt3337433424_)))
                            ((lambda (_L33441_ _L33443_)
                               (let* ((_g3346133478_
                                       (lambda (_g3346233474_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3346233474_)))
                                      (_g3346033550_
                                       (lambda (_g3346233482_)
                                         (if (gx#stx-pair/null? _g3346233482_)
                                             (let ((_g50699_
                                                    (gx#syntax-split-splice
                                                     _g3346233482_
                                                     '0)))
                                               (begin
                                                 (let ((_g50700_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50699_)
                                                              (##vector-length
                                                               _g50699_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3346433485_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50699_
                                                           0)))
                                                       (_tl3346633488_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50699_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3346633488_)
                                                       (letrec ((_loop3346733491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3346533495_ _$e3347133498_)
                           (if (gx#stx-pair? _hd3346533495_)
                               (let ((_e3346833501_
                                      (gx#syntax-e _hd3346533495_)))
                                 (let ((_lp-hd3346933505_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3346833501_)))
                                       (_lp-tl3347033508_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3346833501_))))
                                   (_loop3346733491_
                                    _lp-tl3347033508_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd3346933505_
                                            _$e3347133498_)))))
                               (let ((_$e3347233511_ (reverse _$e3347133498_)))
                                 ((lambda (_L33515_)
                                    (let ()
                                      (let ((__tmp50713
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50701
                                             (let ((__tmp50708
                                                    (let ((__tmp50709
                                                           (let ((__tmp50711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50712
                                 (lambda (_g3353333536_ _g3353433539_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3353333536_ _g3353433539_)))))
                            (declare (not safe))
                            (foldr1 __tmp50712 '() _L33515_)))
                         (__tmp50710
                          (let () (declare (not safe)) (cons _L33441_ '()))))
                     (declare (not safe))
                     (cons __tmp50711 __tmp50710))))
              (declare (not safe))
              (cons __tmp50709 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50702
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33515_
                                                       _L33443_)
                                                      (let ((__tmp50703
                                                             (lambda (_g3353033542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3353133545_
                              _g3353233547_)
                       (let ((__tmp50704
                              (let ((__tmp50707 (gx#datum->syntax '#f 'set!))
                                    (__tmp50705
                                     (let ((__tmp50706
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3353033542_ '()))))
                                       (declare (not safe))
                                       (cons _g3353133545_ __tmp50706))))
                                (declare (not safe))
                                (cons __tmp50707 __tmp50705))))
                         (declare (not safe))
                         (cons __tmp50704 _g3353233547_)))))
                (declare (not safe))
                (foldr2 __tmp50703 '() _L33515_ _L33443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50708 __tmp50702))))
                                        (declare (not safe))
                                        (cons __tmp50713 __tmp50701))))
                                  _$e3347233511_))))))
                 (_loop3346733491_ _target3346433485_ '()))
               (_g3346133478_ _g3346233482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3346133478_ _g3346233482_)))))
                                 (_g3346033550_
                                  (gx#gentemps
                                   (let ((__tmp50714
                                          (lambda (_g3355333556_ _g3355433559_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3355333556_
                                                    _g3355433559_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50714 '() _L33443_))))))
                             _hd3337733411_
                             _tgt3337533437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3337033417_
                                                     _target3336733401_
                                                     '()))
                                                  (_g3336033384_
                                                   _g3336133388_))))
                                          (_g3336033384_ _g3336133388_)))))
                                (_g3336033384_ _g3336133388_))
                            (_g3336033384_ _g3336133388_))))
                    (_g3336033384_ _g3336133388_)))))
        (_g3335933562_ _stx33357_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33568_)
      (let* ((___stx4698946990_ _stx33568_)
             (_g3357233630_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4698946990_))))
        (let ((___kont4699246993_
               (lambda (_L33964_)
                 (let ((__tmp50718 (gx#datum->syntax '#f 'let))
                       (__tmp50715
                        (let ((__tmp50716
                               (let ((__tmp50717
                                      (lambda (_g3398033983_ _g3398133986_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3398033983_
                                                _g3398133986_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50717 '() _L33964_))))
                          (declare (not safe))
                          (cons '() __tmp50716))))
                   (declare (not safe))
                   (cons __tmp50718 __tmp50715))))
              (___kont4699646997_
               (lambda (_L33741_ _L33743_ _L33744_)
                 (let* ((_g3376733775_
                         (lambda (_g3376833771_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3376833771_)))
                        (_g3376633895_
                         (lambda (_g3376833779_)
                           ((lambda (_L33782_)
                              (let ()
                                (let* ((_g3379433811_
                                        (lambda (_g3379533807_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3379533807_)))
                                       (_g3379333875_
                                        (lambda (_g3379533815_)
                                          (if (gx#stx-pair/null? _g3379533815_)
                                              (let ((_g50719_
                                                     (gx#syntax-split-splice
                                                      _g3379533815_
                                                      '0)))
                                                (begin
                                                  (let ((_g50720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50719_)
                                                               (##vector-length
                                                                _g50719_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50720_ 2)))
                (error "Context expects 2 values" _g50720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3379733818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50719_
                                                            0)))
                                                        (_tl3379933821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50719_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3379933821_)
                                                        (letrec ((_loop3380033824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3379833828_ _arg3380433831_)
                            (if (gx#stx-pair? _hd3379833828_)
                                (let ((_e3380133834_
                                       (gx#syntax-e _hd3379833828_)))
                                  (let ((_lp-hd3380233838_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3380133834_)))
                                        (_lp-tl3380333841_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3380133834_))))
                                    (_loop3380033824_
                                     _lp-tl3380333841_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3380233838_
                                             _arg3380433831_)))))
                                (let ((_arg3380533844_
                                       (reverse _arg3380433831_)))
                                  ((lambda (_L33848_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50724
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50721
                                                (let ((__tmp50722
                                                       (let ((__tmp50723
                                                              (lambda (_g3386633869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3386733872_)
                        (let ()
                          (declare (not safe))
                          (cons _g3386633869_ _g3386733872_)))))
                 (declare (not safe))
                 (foldr1 __tmp50723 '() _L33848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33782_ __tmp50722))))
                                           (declare (not safe))
                                           (cons __tmp50724 __tmp50721)))))
                                   _arg3380533844_))))))
                  (_loop3380033824_ _target3379733818_ '()))
                (_g3379433811_ _g3379533815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3379433811_ _g3379533815_)))))
                                  (_g3379333875_
                                   (let ((__tmp50727
                                          (gx#syntax->list
                                           (let ((__tmp50728
                                                  (lambda (_g3387833881_
                                                           _g3387933884_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3387833881_
                                                            _g3387933884_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50728
                                                     '()
                                                     _L33744_))))
                                         (__tmp50725
                                          (gx#syntax->list
                                           (let ((__tmp50726
                                                  (lambda (_g3388633889_
                                                           _g3388733892_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3388633889_
                                                            _g3388733892_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50726
                                                     '()
                                                     _L33743_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50727
                                             __tmp50725))))))
                            _g3376833779_))))
                   (_g3376633895_
                    (gx#stx-wrap-source
                     (let ((__tmp50732 (gx#datum->syntax '#f 'lambda))
                           (__tmp50729
                            (let ((__tmp50730
                                   (let ((__tmp50731
                                          (lambda (_g3389833901_ _g3389933904_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3389833901_
                                                    _g3389933904_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50731 '() _L33741_))))
                              (declare (not safe))
                              (cons '() __tmp50730))))
                       (declare (not safe))
                       (cons __tmp50732 __tmp50729))
                     (gx#stx-source _stx33568_)))))))
          (let* ((___match4704447045_
                  (lambda (_e3359533637_
                           _hd3359433641_
                           _tl3359333644_
                           _e3359833647_
                           _hd3359733651_
                           _tl3359633654_
                           ___splice4699846999_
                           _target3359933657_
                           _tl3360133660_)
                    (letrec ((_loop3360233663_
                              (lambda (_hd3360033667_
                                       _expr3360633670_
                                       _param3360733672_)
                                (if (gx#stx-pair? _hd3360033667_)
                                    (let ((_e3360333675_
                                           (gx#syntax-e _hd3360033667_)))
                                      (let ((_lp-tl3360533682_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3360333675_)))
                                            (_lp-hd3360433679_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3360333675_))))
                                        (if (gx#stx-pair? _lp-hd3360433679_)
                                            (let ((_e3361233685_
                                                   (gx#syntax-e
                                                    _lp-hd3360433679_)))
                                              (let ((_tl3361033692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3361233685_)))
                                                    (_hd3361133689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3361233685_))))
                                                (if (gx#stx-pair?
                                                     _tl3361033692_)
                                                    (let ((_e3361533695_
                                                           (gx#syntax-e
                                                            _tl3361033692_)))
                                                      (let ((_tl3361333702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3361533695_)))
                    (_hd3361433699_
                     (let () (declare (not safe)) (##car _e3361533695_))))
                (if (gx#stx-null? _tl3361333702_)
                    (_loop3360233663_
                     _lp-tl3360533682_
                     (let ()
                       (declare (not safe))
                       (cons _hd3361433699_ _expr3360633670_))
                     (let ()
                       (declare (not safe))
                       (cons _hd3361133689_ _param3360733672_)))
                    (let () (declare (not safe)) (_g3357233630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3357233630_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3357233630_)))))
                                    (let ((_param3360933708_
                                           (reverse _param3360733672_))
                                          (_expr3360833705_
                                           (reverse _expr3360633670_)))
                                      (if (gx#stx-pair/null? _tl3359633654_)
                                          (let ((___splice4700047001_
                                                 (gx#syntax-split-splice
                                                  _tl3359633654_
                                                  '0)))
                                            (let ((_tl3361833714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4700047001_
                                                      '1)))
                                                  (_target3361633711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4700047001_
                                                      '0))))
                                              (if (gx#stx-null? _tl3361833714_)
                                                  (letrec ((_loop3361933717_
                                                            (lambda (_hd3361733721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3362333724_)
                      (if (gx#stx-pair? _hd3361733721_)
                          (let ((_e3362033727_ (gx#syntax-e _hd3361733721_)))
                            (let ((_lp-tl3362233734_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3362033727_)))
                                  (_lp-hd3362133731_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3362033727_))))
                              (_loop3361933717_
                               _lp-tl3362233734_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3362133731_ _body3362333724_)))))
                          (let ((_body3362433737_ (reverse _body3362333724_)))
                            (___kont4699646997_
                             _body3362433737_
                             _expr3360833705_
                             _param3360933708_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3361933717_
                                                     _target3361633711_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3357233630_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3357233630_))))))))
                      (_loop3360233663_ _target3359933657_ '() '()))))
                 (___match4702447025_
                  (lambda (_e3357733914_
                           _hd3357633918_
                           _tl3357533921_
                           _e3358033924_
                           _hd3357933928_
                           _tl3357833931_
                           ___splice4699446995_
                           _target3358133934_
                           _tl3358333937_)
                    (letrec ((_loop3358433940_
                              (lambda (_hd3358233944_ _body3358833947_)
                                (if (gx#stx-pair? _hd3358233944_)
                                    (let ((_e3358533950_
                                           (gx#syntax-e _hd3358233944_)))
                                      (let ((_lp-tl3358733957_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3358533950_)))
                                            (_lp-hd3358633954_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3358533950_))))
                                        (_loop3358433940_
                                         _lp-tl3358733957_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3358633954_
                                                 _body3358833947_)))))
                                    (let ((_body3358933960_
                                           (reverse _body3358833947_)))
                                      (___kont4699246993_
                                       _body3358933960_))))))
                      (_loop3358433940_ _target3358133934_ '())))))
            (if (gx#stx-pair? ___stx4698946990_)
                (let ((_e3357733914_ (gx#syntax-e ___stx4698946990_)))
                  (let ((_tl3357533921_
                         (let () (declare (not safe)) (##cdr _e3357733914_)))
                        (_hd3357633918_
                         (let () (declare (not safe)) (##car _e3357733914_))))
                    (if (gx#stx-pair? _tl3357533921_)
                        (let ((_e3358033924_ (gx#syntax-e _tl3357533921_)))
                          (let ((_tl3357833931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3358033924_)))
                                (_hd3357933928_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3358033924_))))
                            (if (gx#stx-null? _hd3357933928_)
                                (if (gx#stx-pair/null? _tl3357833931_)
                                    (let ((___splice4699446995_
                                           (gx#syntax-split-splice
                                            _tl3357833931_
                                            '0)))
                                      (let ((_tl3358333937_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4699446995_
                                                '1)))
                                            (_target3358133934_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4699446995_
                                                '0))))
                                        (if (gx#stx-null? _tl3358333937_)
                                            (___match4702447025_
                                             _e3357733914_
                                             _hd3357633918_
                                             _tl3357533921_
                                             _e3358033924_
                                             _hd3357933928_
                                             _tl3357833931_
                                             ___splice4699446995_
                                             _target3358133934_
                                             _tl3358333937_)
                                            (if (gx#stx-pair/null?
                                                 _hd3357933928_)
                                                (let ((___splice4699846999_
                                                       (gx#syntax-split-splice
                                                        _hd3357933928_
                                                        '0)))
                                                  (let ((_tl3360133660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4699846999_
                                                            '1)))
                                                        (_target3359933657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4699846999_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3360133660_)
                                                        (___match4704447045_
                                                         _e3357733914_
                                                         _hd3357633918_
                                                         _tl3357533921_
                                                         _e3358033924_
                                                         _hd3357933928_
                                                         _tl3357833931_
                                                         ___splice4699846999_
                                                         _target3359933657_
                                                         _tl3360133660_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3357233630_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3357233630_))))))
                                    (if (gx#stx-pair/null? _hd3357933928_)
                                        (let ((___splice4699846999_
                                               (gx#syntax-split-splice
                                                _hd3357933928_
                                                '0)))
                                          (let ((_tl3360133660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4699846999_
                                                    '1)))
                                                (_target3359933657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4699846999_
                                                    '0))))
                                            (if (gx#stx-null? _tl3360133660_)
                                                (___match4704447045_
                                                 _e3357733914_
                                                 _hd3357633918_
                                                 _tl3357533921_
                                                 _e3358033924_
                                                 _hd3357933928_
                                                 _tl3357833931_
                                                 ___splice4699846999_
                                                 _target3359933657_
                                                 _tl3360133660_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3357233630_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3357233630_))))
                                (if (gx#stx-pair/null? _hd3357933928_)
                                    (let ((___splice4699846999_
                                           (gx#syntax-split-splice
                                            _hd3357933928_
                                            '0)))
                                      (let ((_tl3360133660_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4699846999_
                                                '1)))
                                            (_target3359933657_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4699846999_
                                                '0))))
                                        (if (gx#stx-null? _tl3360133660_)
                                            (___match4704447045_
                                             _e3357733914_
                                             _hd3357633918_
                                             _tl3357533921_
                                             _e3358033924_
                                             _hd3357933928_
                                             _tl3357833931_
                                             ___splice4699846999_
                                             _target3359933657_
                                             _tl3360133660_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3357233630_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3357233630_))))))
                        (let () (declare (not safe)) (_g3357233630_)))))
                (let () (declare (not safe)) (_g3357233630_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33997_)
      (let* ((_g3400134025_
              (lambda (_g3400234021_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3400234021_)))
             (_g3400034110_
              (lambda (_g3400234029_)
                (if (gx#stx-pair? _g3400234029_)
                    (let ((_e3400734032_ (gx#syntax-e _g3400234029_)))
                      (let ((_hd3400634036_
                             (let ()
                               (declare (not safe))
                               (##car _e3400734032_)))
                            (_tl3400534039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3400734032_))))
                        (if (gx#stx-pair? _tl3400534039_)
                            (let ((_e3401034042_ (gx#syntax-e _tl3400534039_)))
                              (let ((_hd3400934046_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3401034042_)))
                                    (_tl3400834049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3401034042_))))
                                (if (gx#stx-pair/null? _tl3400834049_)
                                    (let ((_g50733_
                                           (gx#syntax-split-splice
                                            _tl3400834049_
                                            '0)))
                                      (begin
                                        (let ((_g50734_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50733_)
                                                     (##vector-length _g50733_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50734_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50734_)))
                                        (let ((_target3401134052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50733_ 0)))
                                              (_tl3401334055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50733_ 1))))
                                          (if (gx#stx-null? _tl3401334055_)
                                              (letrec ((_loop3401434058_
                                                        (lambda (_hd3401234062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3401834065_)
                  (if (gx#stx-pair? _hd3401234062_)
                      (let ((_e3401534068_ (gx#syntax-e _hd3401234062_)))
                        (let ((_lp-hd3401634072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3401534068_)))
                              (_lp-tl3401734075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3401534068_))))
                          (_loop3401434058_
                           _lp-tl3401734075_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3401634072_ _body3401834065_)))))
                      (let ((_body3401934078_ (reverse _body3401834065_)))
                        ((lambda (_L34082_ _L34084_)
                           (if (gx#identifier? _L34084_)
                               (let ((__tmp50742
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50735
                                      (let ((__tmp50736
                                             (let ((__tmp50741
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50737
                                                    (let ((__tmp50740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50738
                   (let ((__tmp50739
                          (lambda (_g3410134104_ _g3410234107_)
                            (let ()
                              (declare (not safe))
                              (cons _g3410134104_ _g3410234107_)))))
                     (declare (not safe))
                     (foldr1 __tmp50739 '() _L34082_))))
              (declare (not safe))
              (cons __tmp50740 __tmp50738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50741 __tmp50737))))
                                        (declare (not safe))
                                        (cons __tmp50736 '()))))
                                 (declare (not safe))
                                 (cons __tmp50742 __tmp50735))
                               (_g3400134025_ _g3400234029_)))
                         _body3401934078_
                         _hd3400934046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3401434058_
                                                 _target3401134052_
                                                 '()))
                                              (_g3400134025_ _g3400234029_)))))
                                    (_g3400134025_ _g3400234029_))))
                            (_g3400134025_ _g3400234029_))))
                    (_g3400134025_ _g3400234029_)))))
        (_g3400034110_ _$stx33997_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx34115_)
      (let* ((_g3411934143_
              (lambda (_g3412034139_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3412034139_)))
             (_g3411834228_
              (lambda (_g3412034147_)
                (if (gx#stx-pair? _g3412034147_)
                    (let ((_e3412534150_ (gx#syntax-e _g3412034147_)))
                      (let ((_hd3412434154_
                             (let ()
                               (declare (not safe))
                               (##car _e3412534150_)))
                            (_tl3412334157_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3412534150_))))
                        (if (gx#stx-pair? _tl3412334157_)
                            (let ((_e3412834160_ (gx#syntax-e _tl3412334157_)))
                              (let ((_hd3412734164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3412834160_)))
                                    (_tl3412634167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3412834160_))))
                                (if (gx#stx-pair/null? _tl3412634167_)
                                    (let ((_g50743_
                                           (gx#syntax-split-splice
                                            _tl3412634167_
                                            '0)))
                                      (begin
                                        (let ((_g50744_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50743_)
                                                     (##vector-length _g50743_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50744_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50744_)))
                                        (let ((_target3412934170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50743_ 0)))
                                              (_tl3413134173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50743_ 1))))
                                          (if (gx#stx-null? _tl3413134173_)
                                              (letrec ((_loop3413234176_
                                                        (lambda (_hd3413034180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3413634183_)
                  (if (gx#stx-pair? _hd3413034180_)
                      (let ((_e3413334186_ (gx#syntax-e _hd3413034180_)))
                        (let ((_lp-hd3413434190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3413334186_)))
                              (_lp-tl3413534193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3413334186_))))
                          (_loop3413234176_
                           _lp-tl3413534193_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3413434190_ _body3413634183_)))))
                      (let ((_body3413734196_ (reverse _body3413634183_)))
                        ((lambda (_L34200_ _L34202_)
                           (if (gx#identifier? _L34202_)
                               (let ((__tmp50752
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50745
                                      (let ((__tmp50746
                                             (let ((__tmp50751
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50747
                                                    (let ((__tmp50750
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50748
                   (let ((__tmp50749
                          (lambda (_g3421934222_ _g3422034225_)
                            (let ()
                              (declare (not safe))
                              (cons _g3421934222_ _g3422034225_)))))
                     (declare (not safe))
                     (foldr1 __tmp50749 '() _L34200_))))
              (declare (not safe))
              (cons __tmp50750 __tmp50748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50751 __tmp50747))))
                                        (declare (not safe))
                                        (cons __tmp50746 '()))))
                                 (declare (not safe))
                                 (cons __tmp50752 __tmp50745))
                               (_g3411934143_ _g3412034147_)))
                         _body3413734196_
                         _hd3412734164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3413234176_
                                                 _target3412934170_
                                                 '()))
                                              (_g3411934143_ _g3412034147_)))))
                                    (_g3411934143_ _g3412034147_))))
                            (_g3411934143_ _g3412034147_))))
                    (_g3411934143_ _g3412034147_)))))
        (_g3411834228_ _$stx34115_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34233_)
      (let* ((_g3423734265_
              (lambda (_g3423834261_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3423834261_)))
             (_g3423634364_
              (lambda (_g3423834269_)
                (if (gx#stx-pair? _g3423834269_)
                    (let ((_e3424434272_ (gx#syntax-e _g3423834269_)))
                      (let ((_hd3424334276_
                             (let ()
                               (declare (not safe))
                               (##car _e3424434272_)))
                            (_tl3424234279_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3424434272_))))
                        (if (gx#stx-pair? _tl3424234279_)
                            (let ((_e3424734282_ (gx#syntax-e _tl3424234279_)))
                              (let ((_hd3424634286_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3424734282_)))
                                    (_tl3424534289_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3424734282_))))
                                (if (gx#stx-pair? _tl3424534289_)
                                    (let ((_e3425034292_
                                           (gx#syntax-e _tl3424534289_)))
                                      (let ((_hd3424934296_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3425034292_)))
                                            (_tl3424834299_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3425034292_))))
                                        (if (gx#stx-pair/null? _tl3424834299_)
                                            (let ((_g50753_
                                                   (gx#syntax-split-splice
                                                    _tl3424834299_
                                                    '0)))
                                              (begin
                                                (let ((_g50754_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50753_)
                                                             (##vector-length
                                                              _g50753_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3425134302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50753_
                                                          0)))
                                                      (_tl3425334305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50753_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3425334305_)
                                                      (letrec ((_loop3425434308_
                                                                (lambda (_hd3425234312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3425834315_)
                          (if (gx#stx-pair? _hd3425234312_)
                              (let ((_e3425534318_
                                     (gx#syntax-e _hd3425234312_)))
                                (let ((_lp-hd3425634322_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3425534318_)))
                                      (_lp-tl3425734325_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3425534318_))))
                                  (_loop3425434308_
                                   _lp-tl3425734325_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd3425634322_
                                           _rest3425834315_)))))
                              (let ((_rest3425934328_
                                     (reverse _rest3425834315_)))
                                ((lambda (_L34332_ _L34334_ _L34335_)
                                   (let ((__tmp50767
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50755
                                          (let ((__tmp50763
                                                 (let ((__tmp50766
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50764
                                                        (let ((__tmp50765
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34335_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50766
                                                         __tmp50764)))
                                                (__tmp50756
                                                 (let ((__tmp50757
                                                        (let ((__tmp50762
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50758
                                                               (let ((__tmp50759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50760
                                     (let ((__tmp50761
                                            (lambda (_g3435534358_
                                                     _g3435634361_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3435534358_
                                                      _g3435634361_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50761 '() _L34332_))))
                                (declare (not safe))
                                (cons _L34334_ __tmp50760))))
                         (declare (not safe))
                         (cons '() __tmp50759))))
                  (declare (not safe))
                  (cons __tmp50762 __tmp50758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50757 '()))))
                                            (declare (not safe))
                                            (cons __tmp50763 __tmp50756))))
                                     (declare (not safe))
                                     (cons __tmp50767 __tmp50755)))
                                 _rest3425934328_
                                 _hd3424934296_
                                 _hd3424634286_))))))
                (_loop3425434308_ _target3425134302_ '()))
              (_g3423734265_ _g3423834269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3423734265_ _g3423834269_))))
                                    (_g3423734265_ _g3423834269_))))
                            (_g3423734265_ _g3423834269_))))
                    (_g3423734265_ _g3423834269_)))))
        (_g3423634364_ _$stx34233_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34369_)
      (let* ((_g3437234386_
              (lambda (_g3437334382_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3437334382_)))
             (_g3437134458_
              (lambda (_g3437334390_)
                (if (gx#stx-pair? _g3437334390_)
                    (let ((_e3437734393_ (gx#syntax-e _g3437334390_)))
                      (let ((_hd3437634397_
                             (let ()
                               (declare (not safe))
                               (##car _e3437734393_)))
                            (_tl3437534400_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3437734393_))))
                        (if (gx#stx-pair? _tl3437534400_)
                            (let ((_e3438034403_ (gx#syntax-e _tl3437534400_)))
                              (let ((_hd3437934407_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3438034403_)))
                                    (_tl3437834410_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3438034403_))))
                                (if (gx#stx-null? _tl3437834410_)
                                    ((lambda (_L34413_)
                                       (if (gx#stx-string? _L34413_)
                                           (let* ((_g3442734435_
                                                   (lambda (_g3442834431_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3442834431_)))
                                                  (_g3442634454_
                                                   (lambda (_g3442834439_)
                                                     ((lambda (_L34442_)
                                                        (let ()
                                                          (let ((__tmp50769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50768
                         (let () (declare (not safe)) (cons _L34442_ '()))))
                    (declare (not safe))
                    (cons __tmp50769 __tmp50768))))
              _g3442834439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3442634454_
                                              (string->bytes
                                               (gx#stx-e _L34413_))))
                                           (_g3437234386_ _g3437334390_)))
                                     _hd3437934407_)
                                    (_g3437234386_ _g3437334390_))))
                            (_g3437234386_ _g3437334390_))))
                    (_g3437234386_ _g3437334390_)))))
        (_g3437134458_ _stx34369_)))))
