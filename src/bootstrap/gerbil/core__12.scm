(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32832_)
      (let ((_g3283532842_
             (lambda (_g3283632838_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3283632838_))))
        (_g3283532842_ _$stx32832_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32846_)
      (let ((_g3284932856_
             (lambda (_g3285032852_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3285032852_))))
        (_g3284932856_ _$stx32846_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32860_)
      (let ((_g3286332870_
             (lambda (_g3286432866_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3286432866_))))
        (_g3286332870_ _$stx32860_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32874_)
      (let ((_g3287732884_
             (lambda (_g3287832880_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3287832880_))))
        (_g3287732884_ _$stx32874_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (let ((__tmp50590 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50590
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32899_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32899_)))
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
    (let ((__tmp50591 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50591
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32895_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32895_)))
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
    (lambda (_stx32892_)
      (if (gx#identifier? _stx32892_)
          (let ((__tmp50592 (gx#syntax-local-value _stx32892_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50592))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32889_)
      (if (gx#identifier? _stx32889_)
          (let ((__tmp50593 (gx#syntax-local-value _stx32889_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50593))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32903_)
      (let* ((___stx4679946800_ _stx32903_)
             (_g3290932968_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4679946800_))))
        (let ((___kont4680246803_
               (lambda (_L33241_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33241_)
                  _stx32903_)))
              (___kont4680446805_
               (lambda (_L33140_ _L33142_ _L33143_)
                 (let* ((_g3316533173_
                         (lambda (_g3316633169_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3316633169_)))
                        (_g3316433200_
                         (lambda (_g3316633177_)
                           ((lambda (_L33180_)
                              (let ()
                                (let ((__tmp50594
                                       (let ((__tmp50596
                                              (lambda (_g3319133194_
                                                       _g3319233197_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3319133194_
                                                        _g3319233197_))))
                                             (__tmp50595
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33140_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50596
                                                 __tmp50595
                                                 _L33142_))))
                                  (declare (not safe))
                                  (cons _L33180_ __tmp50594))))
                            _g3316633177_))))
                   (_g3316433200_
                    (gx#stx-identifier _L33143_ _L33143_ '"-set!")))))
              (___kont4680846809_
               (lambda (_L33050_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33050_)
                  _stx32903_)))
              (___kont4681046811_
               (lambda (_L33005_ _L33007_)
                 (let ((__tmp50599 (gx#datum->syntax '#f '%#set!))
                       (__tmp50597
                        (let ((__tmp50598
                               (let ()
                                 (declare (not safe))
                                 (cons _L33005_ '()))))
                          (declare (not safe))
                          (cons _L33007_ __tmp50598))))
                   (declare (not safe))
                   (cons __tmp50599 __tmp50597)))))
          (let* ((___match4689046891_
                  (lambda (_e3295632975_
                           _hd3295532979_
                           _tl3295432982_
                           _e3295932985_
                           _hd3295832989_
                           _tl3295732992_
                           _e3296232995_
                           _hd3296132999_
                           _tl3296033002_)
                    (let ((_L33005_ _hd3296132999_) (_L33007_ _hd3295832989_))
                      (if (gx#identifier? _L33007_)
                          (___kont4681046811_ _L33005_ _L33007_)
                          (let () (declare (not safe)) (_g3290932968_))))))
                 (___match4687046871_
                  (lambda (_e3294833030_
                           _hd3294733034_
                           _tl3294633037_
                           _e3295133040_
                           _hd3295033044_
                           _tl3294933047_)
                    (let ((_L33050_ _hd3295033044_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33050_))
                          (___kont4680846809_ _L33050_)
                          (if (gx#stx-pair? _tl3294933047_)
                              (let ((_e3296232995_
                                     (gx#syntax-e _tl3294933047_)))
                                (let ((_tl3296033002_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3296232995_)))
                                      (_hd3296132999_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3296232995_))))
                                  (if (gx#stx-null? _tl3296033002_)
                                      (___match4689046891_
                                       _e3294833030_
                                       _hd3294733034_
                                       _tl3294633037_
                                       _e3295133040_
                                       _hd3295033044_
                                       _tl3294933047_
                                       _e3296232995_
                                       _hd3296132999_
                                       _tl3296033002_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3290932968_)))))
                              (let ()
                                (declare (not safe))
                                (_g3290932968_)))))))
                 (___match4685846859_
                  (lambda (_e3292633070_
                           _hd3292533074_
                           _tl3292433077_
                           _e3292933080_
                           _hd3292833084_
                           _tl3292733087_
                           _e3293233090_
                           _hd3293133094_
                           _tl3293033097_
                           ___splice4680646807_
                           _target3293333100_
                           _tl3293533103_)
                    (letrec ((_loop3293633106_
                              (lambda (_hd3293433110_ _arg3294033113_)
                                (if (gx#stx-pair? _hd3293433110_)
                                    (let ((_e3293733116_
                                           (gx#syntax-e _hd3293433110_)))
                                      (let ((_lp-tl3293933123_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3293733116_)))
                                            (_lp-hd3293833120_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3293733116_))))
                                        (_loop3293633106_
                                         _lp-tl3293933123_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3293833120_
                                                 _arg3294033113_)))))
                                    (let ((_arg3294133126_
                                           (reverse _arg3294033113_)))
                                      (if (gx#stx-pair? _tl3292733087_)
                                          (let ((_e3294433130_
                                                 (gx#syntax-e _tl3292733087_)))
                                            (let ((_tl3294233137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3294433130_)))
                                                  (_hd3294333134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3294433130_))))
                                              (if (gx#stx-null? _tl3294233137_)
                                                  (let ((_L33140_
                                                         _hd3294333134_)
                                                        (_L33142_
                                                         _arg3294133126_)
                                                        (_L33143_
                                                         _hd3293133094_))
                                                    (if (gx#identifier?
                                                         _L33143_)
                                                        (___kont4680446805_
                                                         _L33140_
                                                         _L33142_
                                                         _L33143_)
                                                        (___match4687046871_
                                                         _e3292633070_
                                                         _hd3292533074_
                                                         _tl3292433077_
                                                         _e3292933080_
                                                         _hd3292833084_
                                                         _tl3292733087_)))
                                                  (___match4687046871_
                                                   _e3292633070_
                                                   _hd3292533074_
                                                   _tl3292433077_
                                                   _e3292933080_
                                                   _hd3292833084_
                                                   _tl3292733087_))))
                                          (___match4687046871_
                                           _e3292633070_
                                           _hd3292533074_
                                           _tl3292433077_
                                           _e3292933080_
                                           _hd3292833084_
                                           _tl3292733087_)))))))
                      (_loop3293633106_ _target3293333100_ '())))))
            (if (gx#stx-pair? ___stx4679946800_)
                (let ((_e3291433211_ (gx#syntax-e ___stx4679946800_)))
                  (let ((_tl3291233218_
                         (let () (declare (not safe)) (##cdr _e3291433211_)))
                        (_hd3291333215_
                         (let () (declare (not safe)) (##car _e3291433211_))))
                    (if (gx#stx-pair? _tl3291233218_)
                        (let ((_e3291733221_ (gx#syntax-e _tl3291233218_)))
                          (let ((_tl3291533228_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3291733221_)))
                                (_hd3291633225_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3291733221_))))
                            (if (gx#stx-pair? _hd3291633225_)
                                (let ((_e3292033231_
                                       (gx#syntax-e _hd3291633225_)))
                                  (let ((_tl3291833238_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3292033231_)))
                                        (_hd3291933235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3292033231_))))
                                    (if (let ((__tmp50600
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50600))
                                        (let ((_L33241_ _hd3291933235_))
                                          (___kont4680246803_ _L33241_))
                                        (if (gx#stx-pair/null? _tl3291833238_)
                                            (let ((___splice4680646807_
                                                   (gx#syntax-split-splice
                                                    _tl3291833238_
                                                    '0)))
                                              (let ((_tl3293533103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4680646807_
                                                        '1)))
                                                    (_target3293333100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4680646807_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3293533103_)
                                                    (___match4685846859_
                                                     _e3291433211_
                                                     _hd3291333215_
                                                     _tl3291233218_
                                                     _e3291733221_
                                                     _hd3291633225_
                                                     _tl3291533228_
                                                     _e3292033231_
                                                     _hd3291933235_
                                                     _tl3291833238_
                                                     ___splice4680646807_
                                                     _target3293333100_
                                                     _tl3293533103_)
                                                    (___match4687046871_
                                                     _e3291433211_
                                                     _hd3291333215_
                                                     _tl3291233218_
                                                     _e3291733221_
                                                     _hd3291633225_
                                                     _tl3291533228_))))
                                            (___match4687046871_
                                             _e3291433211_
                                             _hd3291333215_
                                             _tl3291233218_
                                             _e3291733221_
                                             _hd3291633225_
                                             _tl3291533228_)))))
                                (___match4687046871_
                                 _e3291433211_
                                 _hd3291333215_
                                 _tl3291233218_
                                 _e3291733221_
                                 _hd3291633225_
                                 _tl3291533228_))))
                        (let () (declare (not safe)) (_g3290932968_)))))
                (let () (declare (not safe)) (_g3290932968_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33261_)
      (let* ((_g3326433288_
              (lambda (_g3326533284_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3326533284_)))
             (_g3326333466_
              (lambda (_g3326533292_)
                (if (gx#stx-pair? _g3326533292_)
                    (let ((_e3327033295_ (gx#syntax-e _g3326533292_)))
                      (let ((_hd3326933299_
                             (let ()
                               (declare (not safe))
                               (##car _e3327033295_)))
                            (_tl3326833302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3327033295_))))
                        (if (gx#stx-pair/null? _tl3326833302_)
                            (if (fx>= (gx#stx-length _tl3326833302_) '1)
                                (let ((_g50601_
                                       (gx#syntax-split-splice
                                        _tl3326833302_
                                        '1)))
                                  (begin
                                    (let ((_g50602_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50601_)
                                                 (##vector-length _g50601_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50602_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50602_)))
                                    (let ((_target3327133305_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50601_ 0)))
                                          (_tl3327333308_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50601_ 1))))
                                      (if (gx#stx-pair? _tl3327333308_)
                                          (let ((_e3328233311_
                                                 (gx#syntax-e _tl3327333308_)))
                                            (let ((_hd3328133315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3328233311_)))
                                                  (_tl3328033318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3328233311_))))
                                              (if (gx#stx-null? _tl3328033318_)
                                                  (letrec ((_loop3327433321_
                                                            (lambda (_hd3327233325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3327833328_)
                      (if (gx#stx-pair? _hd3327233325_)
                          (let ((_e3327533331_ (gx#syntax-e _hd3327233325_)))
                            (let ((_lp-hd3327633335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3327533331_)))
                                  (_lp-tl3327733338_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3327533331_))))
                              (_loop3327433321_
                               _lp-tl3327733338_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3327633335_ _tgt3327833328_)))))
                          (let ((_tgt3327933341_ (reverse _tgt3327833328_)))
                            ((lambda (_L33345_ _L33347_)
                               (let* ((_g3336533382_
                                       (lambda (_g3336633378_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3336633378_)))
                                      (_g3336433454_
                                       (lambda (_g3336633386_)
                                         (if (gx#stx-pair/null? _g3336633386_)
                                             (let ((_g50603_
                                                    (gx#syntax-split-splice
                                                     _g3336633386_
                                                     '0)))
                                               (begin
                                                 (let ((_g50604_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50603_)
                                                              (##vector-length
                                                               _g50603_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50604_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3336833389_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50603_
                                                           0)))
                                                       (_tl3337033392_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50603_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3337033392_)
                                                       (letrec ((_loop3337133395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3336933399_ _$e3337533402_)
                           (if (gx#stx-pair? _hd3336933399_)
                               (let ((_e3337233405_
                                      (gx#syntax-e _hd3336933399_)))
                                 (let ((_lp-hd3337333409_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3337233405_)))
                                       (_lp-tl3337433412_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3337233405_))))
                                   (_loop3337133395_
                                    _lp-tl3337433412_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd3337333409_
                                            _$e3337533402_)))))
                               (let ((_$e3337633415_ (reverse _$e3337533402_)))
                                 ((lambda (_L33419_)
                                    (let ()
                                      (let ((__tmp50617
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50605
                                             (let ((__tmp50612
                                                    (let ((__tmp50613
                                                           (let ((__tmp50615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50616
                                 (lambda (_g3343733440_ _g3343833443_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3343733440_ _g3343833443_)))))
                            (declare (not safe))
                            (foldr1 __tmp50616 '() _L33419_)))
                         (__tmp50614
                          (let () (declare (not safe)) (cons _L33345_ '()))))
                     (declare (not safe))
                     (cons __tmp50615 __tmp50614))))
              (declare (not safe))
              (cons __tmp50613 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50606
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33419_
                                                       _L33347_)
                                                      (let ((__tmp50607
                                                             (lambda (_g3343433446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3343533449_
                              _g3343633451_)
                       (let ((__tmp50608
                              (let ((__tmp50611 (gx#datum->syntax '#f 'set!))
                                    (__tmp50609
                                     (let ((__tmp50610
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3343433446_ '()))))
                                       (declare (not safe))
                                       (cons _g3343533449_ __tmp50610))))
                                (declare (not safe))
                                (cons __tmp50611 __tmp50609))))
                         (declare (not safe))
                         (cons __tmp50608 _g3343633451_)))))
                (declare (not safe))
                (foldr2 __tmp50607 '() _L33419_ _L33347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50612 __tmp50606))))
                                        (declare (not safe))
                                        (cons __tmp50617 __tmp50605))))
                                  _$e3337633415_))))))
                 (_loop3337133395_ _target3336833389_ '()))
               (_g3336533382_ _g3336633386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3336533382_ _g3336633386_)))))
                                 (_g3336433454_
                                  (gx#gentemps
                                   (let ((__tmp50618
                                          (lambda (_g3345733460_ _g3345833463_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3345733460_
                                                    _g3345833463_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50618 '() _L33347_))))))
                             _hd3328133315_
                             _tgt3327933341_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3327433321_
                                                     _target3327133305_
                                                     '()))
                                                  (_g3326433288_
                                                   _g3326533292_))))
                                          (_g3326433288_ _g3326533292_)))))
                                (_g3326433288_ _g3326533292_))
                            (_g3326433288_ _g3326533292_))))
                    (_g3326433288_ _g3326533292_)))))
        (_g3326333466_ _stx33261_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33472_)
      (let* ((___stx4689346894_ _stx33472_)
             (_g3347633534_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4689346894_))))
        (let ((___kont4689646897_
               (lambda (_L33868_)
                 (let ((__tmp50622 (gx#datum->syntax '#f 'let))
                       (__tmp50619
                        (let ((__tmp50620
                               (let ((__tmp50621
                                      (lambda (_g3388433887_ _g3388533890_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3388433887_
                                                _g3388533890_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50621 '() _L33868_))))
                          (declare (not safe))
                          (cons '() __tmp50620))))
                   (declare (not safe))
                   (cons __tmp50622 __tmp50619))))
              (___kont4690046901_
               (lambda (_L33645_ _L33647_ _L33648_)
                 (let* ((_g3367133679_
                         (lambda (_g3367233675_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3367233675_)))
                        (_g3367033799_
                         (lambda (_g3367233683_)
                           ((lambda (_L33686_)
                              (let ()
                                (let* ((_g3369833715_
                                        (lambda (_g3369933711_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3369933711_)))
                                       (_g3369733779_
                                        (lambda (_g3369933719_)
                                          (if (gx#stx-pair/null? _g3369933719_)
                                              (let ((_g50623_
                                                     (gx#syntax-split-splice
                                                      _g3369933719_
                                                      '0)))
                                                (begin
                                                  (let ((_g50624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50623_)
                                                               (##vector-length
                                                                _g50623_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50624_ 2)))
                (error "Context expects 2 values" _g50624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3370133722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50623_
                                                            0)))
                                                        (_tl3370333725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50623_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3370333725_)
                                                        (letrec ((_loop3370433728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3370233732_ _arg3370833735_)
                            (if (gx#stx-pair? _hd3370233732_)
                                (let ((_e3370533738_
                                       (gx#syntax-e _hd3370233732_)))
                                  (let ((_lp-hd3370633742_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3370533738_)))
                                        (_lp-tl3370733745_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3370533738_))))
                                    (_loop3370433728_
                                     _lp-tl3370733745_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3370633742_
                                             _arg3370833735_)))))
                                (let ((_arg3370933748_
                                       (reverse _arg3370833735_)))
                                  ((lambda (_L33752_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50628
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50625
                                                (let ((__tmp50626
                                                       (let ((__tmp50627
                                                              (lambda (_g3377033773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3377133776_)
                        (let ()
                          (declare (not safe))
                          (cons _g3377033773_ _g3377133776_)))))
                 (declare (not safe))
                 (foldr1 __tmp50627 '() _L33752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33686_ __tmp50626))))
                                           (declare (not safe))
                                           (cons __tmp50628 __tmp50625)))))
                                   _arg3370933748_))))))
                  (_loop3370433728_ _target3370133722_ '()))
                (_g3369833715_ _g3369933719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3369833715_ _g3369933719_)))))
                                  (_g3369733779_
                                   (let ((__tmp50631
                                          (gx#syntax->list
                                           (let ((__tmp50632
                                                  (lambda (_g3378233785_
                                                           _g3378333788_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3378233785_
                                                            _g3378333788_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50632
                                                     '()
                                                     _L33648_))))
                                         (__tmp50629
                                          (gx#syntax->list
                                           (let ((__tmp50630
                                                  (lambda (_g3379033793_
                                                           _g3379133796_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3379033793_
                                                            _g3379133796_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50630
                                                     '()
                                                     _L33647_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50631
                                             __tmp50629))))))
                            _g3367233683_))))
                   (_g3367033799_
                    (gx#stx-wrap-source
                     (let ((__tmp50636 (gx#datum->syntax '#f 'lambda))
                           (__tmp50633
                            (let ((__tmp50634
                                   (let ((__tmp50635
                                          (lambda (_g3380233805_ _g3380333808_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3380233805_
                                                    _g3380333808_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50635 '() _L33645_))))
                              (declare (not safe))
                              (cons '() __tmp50634))))
                       (declare (not safe))
                       (cons __tmp50636 __tmp50633))
                     (gx#stx-source _stx33472_)))))))
          (let* ((___match4694846949_
                  (lambda (_e3349933541_
                           _hd3349833545_
                           _tl3349733548_
                           _e3350233551_
                           _hd3350133555_
                           _tl3350033558_
                           ___splice4690246903_
                           _target3350333561_
                           _tl3350533564_)
                    (letrec ((_loop3350633567_
                              (lambda (_hd3350433571_
                                       _expr3351033574_
                                       _param3351133576_)
                                (if (gx#stx-pair? _hd3350433571_)
                                    (let ((_e3350733579_
                                           (gx#syntax-e _hd3350433571_)))
                                      (let ((_lp-tl3350933586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3350733579_)))
                                            (_lp-hd3350833583_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3350733579_))))
                                        (if (gx#stx-pair? _lp-hd3350833583_)
                                            (let ((_e3351633589_
                                                   (gx#syntax-e
                                                    _lp-hd3350833583_)))
                                              (let ((_tl3351433596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3351633589_)))
                                                    (_hd3351533593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3351633589_))))
                                                (if (gx#stx-pair?
                                                     _tl3351433596_)
                                                    (let ((_e3351933599_
                                                           (gx#syntax-e
                                                            _tl3351433596_)))
                                                      (let ((_tl3351733606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3351933599_)))
                    (_hd3351833603_
                     (let () (declare (not safe)) (##car _e3351933599_))))
                (if (gx#stx-null? _tl3351733606_)
                    (_loop3350633567_
                     _lp-tl3350933586_
                     (let ()
                       (declare (not safe))
                       (cons _hd3351833603_ _expr3351033574_))
                     (let ()
                       (declare (not safe))
                       (cons _hd3351533593_ _param3351133576_)))
                    (let () (declare (not safe)) (_g3347633534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3347633534_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3347633534_)))))
                                    (let ((_param3351333612_
                                           (reverse _param3351133576_))
                                          (_expr3351233609_
                                           (reverse _expr3351033574_)))
                                      (if (gx#stx-pair/null? _tl3350033558_)
                                          (let ((___splice4690446905_
                                                 (gx#syntax-split-splice
                                                  _tl3350033558_
                                                  '0)))
                                            (let ((_tl3352233618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4690446905_
                                                      '1)))
                                                  (_target3352033615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4690446905_
                                                      '0))))
                                              (if (gx#stx-null? _tl3352233618_)
                                                  (letrec ((_loop3352333621_
                                                            (lambda (_hd3352133625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3352733628_)
                      (if (gx#stx-pair? _hd3352133625_)
                          (let ((_e3352433631_ (gx#syntax-e _hd3352133625_)))
                            (let ((_lp-tl3352633638_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3352433631_)))
                                  (_lp-hd3352533635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3352433631_))))
                              (_loop3352333621_
                               _lp-tl3352633638_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3352533635_ _body3352733628_)))))
                          (let ((_body3352833641_ (reverse _body3352733628_)))
                            (___kont4690046901_
                             _body3352833641_
                             _expr3351233609_
                             _param3351333612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3352333621_
                                                     _target3352033615_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3347633534_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3347633534_))))))))
                      (_loop3350633567_ _target3350333561_ '() '()))))
                 (___match4692846929_
                  (lambda (_e3348133818_
                           _hd3348033822_
                           _tl3347933825_
                           _e3348433828_
                           _hd3348333832_
                           _tl3348233835_
                           ___splice4689846899_
                           _target3348533838_
                           _tl3348733841_)
                    (letrec ((_loop3348833844_
                              (lambda (_hd3348633848_ _body3349233851_)
                                (if (gx#stx-pair? _hd3348633848_)
                                    (let ((_e3348933854_
                                           (gx#syntax-e _hd3348633848_)))
                                      (let ((_lp-tl3349133861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3348933854_)))
                                            (_lp-hd3349033858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3348933854_))))
                                        (_loop3348833844_
                                         _lp-tl3349133861_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3349033858_
                                                 _body3349233851_)))))
                                    (let ((_body3349333864_
                                           (reverse _body3349233851_)))
                                      (___kont4689646897_
                                       _body3349333864_))))))
                      (_loop3348833844_ _target3348533838_ '())))))
            (if (gx#stx-pair? ___stx4689346894_)
                (let ((_e3348133818_ (gx#syntax-e ___stx4689346894_)))
                  (let ((_tl3347933825_
                         (let () (declare (not safe)) (##cdr _e3348133818_)))
                        (_hd3348033822_
                         (let () (declare (not safe)) (##car _e3348133818_))))
                    (if (gx#stx-pair? _tl3347933825_)
                        (let ((_e3348433828_ (gx#syntax-e _tl3347933825_)))
                          (let ((_tl3348233835_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3348433828_)))
                                (_hd3348333832_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3348433828_))))
                            (if (gx#stx-null? _hd3348333832_)
                                (if (gx#stx-pair/null? _tl3348233835_)
                                    (let ((___splice4689846899_
                                           (gx#syntax-split-splice
                                            _tl3348233835_
                                            '0)))
                                      (let ((_tl3348733841_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4689846899_
                                                '1)))
                                            (_target3348533838_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4689846899_
                                                '0))))
                                        (if (gx#stx-null? _tl3348733841_)
                                            (___match4692846929_
                                             _e3348133818_
                                             _hd3348033822_
                                             _tl3347933825_
                                             _e3348433828_
                                             _hd3348333832_
                                             _tl3348233835_
                                             ___splice4689846899_
                                             _target3348533838_
                                             _tl3348733841_)
                                            (if (gx#stx-pair/null?
                                                 _hd3348333832_)
                                                (let ((___splice4690246903_
                                                       (gx#syntax-split-splice
                                                        _hd3348333832_
                                                        '0)))
                                                  (let ((_tl3350533564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4690246903_
                                                            '1)))
                                                        (_target3350333561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4690246903_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3350533564_)
                                                        (___match4694846949_
                                                         _e3348133818_
                                                         _hd3348033822_
                                                         _tl3347933825_
                                                         _e3348433828_
                                                         _hd3348333832_
                                                         _tl3348233835_
                                                         ___splice4690246903_
                                                         _target3350333561_
                                                         _tl3350533564_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3347633534_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3347633534_))))))
                                    (if (gx#stx-pair/null? _hd3348333832_)
                                        (let ((___splice4690246903_
                                               (gx#syntax-split-splice
                                                _hd3348333832_
                                                '0)))
                                          (let ((_tl3350533564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4690246903_
                                                    '1)))
                                                (_target3350333561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4690246903_
                                                    '0))))
                                            (if (gx#stx-null? _tl3350533564_)
                                                (___match4694846949_
                                                 _e3348133818_
                                                 _hd3348033822_
                                                 _tl3347933825_
                                                 _e3348433828_
                                                 _hd3348333832_
                                                 _tl3348233835_
                                                 ___splice4690246903_
                                                 _target3350333561_
                                                 _tl3350533564_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3347633534_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3347633534_))))
                                (if (gx#stx-pair/null? _hd3348333832_)
                                    (let ((___splice4690246903_
                                           (gx#syntax-split-splice
                                            _hd3348333832_
                                            '0)))
                                      (let ((_tl3350533564_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4690246903_
                                                '1)))
                                            (_target3350333561_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4690246903_
                                                '0))))
                                        (if (gx#stx-null? _tl3350533564_)
                                            (___match4694846949_
                                             _e3348133818_
                                             _hd3348033822_
                                             _tl3347933825_
                                             _e3348433828_
                                             _hd3348333832_
                                             _tl3348233835_
                                             ___splice4690246903_
                                             _target3350333561_
                                             _tl3350533564_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3347633534_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3347633534_))))))
                        (let () (declare (not safe)) (_g3347633534_)))))
                (let () (declare (not safe)) (_g3347633534_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33901_)
      (let* ((_g3390533929_
              (lambda (_g3390633925_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3390633925_)))
             (_g3390434014_
              (lambda (_g3390633933_)
                (if (gx#stx-pair? _g3390633933_)
                    (let ((_e3391133936_ (gx#syntax-e _g3390633933_)))
                      (let ((_hd3391033940_
                             (let ()
                               (declare (not safe))
                               (##car _e3391133936_)))
                            (_tl3390933943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3391133936_))))
                        (if (gx#stx-pair? _tl3390933943_)
                            (let ((_e3391433946_ (gx#syntax-e _tl3390933943_)))
                              (let ((_hd3391333950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3391433946_)))
                                    (_tl3391233953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3391433946_))))
                                (if (gx#stx-pair/null? _tl3391233953_)
                                    (let ((_g50637_
                                           (gx#syntax-split-splice
                                            _tl3391233953_
                                            '0)))
                                      (begin
                                        (let ((_g50638_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50637_)
                                                     (##vector-length _g50637_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50638_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50638_)))
                                        (let ((_target3391533956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50637_ 0)))
                                              (_tl3391733959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50637_ 1))))
                                          (if (gx#stx-null? _tl3391733959_)
                                              (letrec ((_loop3391833962_
                                                        (lambda (_hd3391633966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3392233969_)
                  (if (gx#stx-pair? _hd3391633966_)
                      (let ((_e3391933972_ (gx#syntax-e _hd3391633966_)))
                        (let ((_lp-hd3392033976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3391933972_)))
                              (_lp-tl3392133979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3391933972_))))
                          (_loop3391833962_
                           _lp-tl3392133979_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3392033976_ _body3392233969_)))))
                      (let ((_body3392333982_ (reverse _body3392233969_)))
                        ((lambda (_L33986_ _L33988_)
                           (if (gx#identifier? _L33988_)
                               (let ((__tmp50646
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50639
                                      (let ((__tmp50640
                                             (let ((__tmp50645
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50641
                                                    (let ((__tmp50644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L33988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50642
                   (let ((__tmp50643
                          (lambda (_g3400534008_ _g3400634011_)
                            (let ()
                              (declare (not safe))
                              (cons _g3400534008_ _g3400634011_)))))
                     (declare (not safe))
                     (foldr1 __tmp50643 '() _L33986_))))
              (declare (not safe))
              (cons __tmp50644 __tmp50642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50645 __tmp50641))))
                                        (declare (not safe))
                                        (cons __tmp50640 '()))))
                                 (declare (not safe))
                                 (cons __tmp50646 __tmp50639))
                               (_g3390533929_ _g3390633933_)))
                         _body3392333982_
                         _hd3391333950_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3391833962_
                                                 _target3391533956_
                                                 '()))
                                              (_g3390533929_ _g3390633933_)))))
                                    (_g3390533929_ _g3390633933_))))
                            (_g3390533929_ _g3390633933_))))
                    (_g3390533929_ _g3390633933_)))))
        (_g3390434014_ _$stx33901_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx34019_)
      (let* ((_g3402334047_
              (lambda (_g3402434043_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3402434043_)))
             (_g3402234132_
              (lambda (_g3402434051_)
                (if (gx#stx-pair? _g3402434051_)
                    (let ((_e3402934054_ (gx#syntax-e _g3402434051_)))
                      (let ((_hd3402834058_
                             (let ()
                               (declare (not safe))
                               (##car _e3402934054_)))
                            (_tl3402734061_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3402934054_))))
                        (if (gx#stx-pair? _tl3402734061_)
                            (let ((_e3403234064_ (gx#syntax-e _tl3402734061_)))
                              (let ((_hd3403134068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3403234064_)))
                                    (_tl3403034071_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3403234064_))))
                                (if (gx#stx-pair/null? _tl3403034071_)
                                    (let ((_g50647_
                                           (gx#syntax-split-splice
                                            _tl3403034071_
                                            '0)))
                                      (begin
                                        (let ((_g50648_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50647_)
                                                     (##vector-length _g50647_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50648_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50648_)))
                                        (let ((_target3403334074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50647_ 0)))
                                              (_tl3403534077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50647_ 1))))
                                          (if (gx#stx-null? _tl3403534077_)
                                              (letrec ((_loop3403634080_
                                                        (lambda (_hd3403434084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3404034087_)
                  (if (gx#stx-pair? _hd3403434084_)
                      (let ((_e3403734090_ (gx#syntax-e _hd3403434084_)))
                        (let ((_lp-hd3403834094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3403734090_)))
                              (_lp-tl3403934097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3403734090_))))
                          (_loop3403634080_
                           _lp-tl3403934097_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3403834094_ _body3404034087_)))))
                      (let ((_body3404134100_ (reverse _body3404034087_)))
                        ((lambda (_L34104_ _L34106_)
                           (if (gx#identifier? _L34106_)
                               (let ((__tmp50656
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50649
                                      (let ((__tmp50650
                                             (let ((__tmp50655
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50651
                                                    (let ((__tmp50654
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50652
                   (let ((__tmp50653
                          (lambda (_g3412334126_ _g3412434129_)
                            (let ()
                              (declare (not safe))
                              (cons _g3412334126_ _g3412434129_)))))
                     (declare (not safe))
                     (foldr1 __tmp50653 '() _L34104_))))
              (declare (not safe))
              (cons __tmp50654 __tmp50652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50655 __tmp50651))))
                                        (declare (not safe))
                                        (cons __tmp50650 '()))))
                                 (declare (not safe))
                                 (cons __tmp50656 __tmp50649))
                               (_g3402334047_ _g3402434051_)))
                         _body3404134100_
                         _hd3403134068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3403634080_
                                                 _target3403334074_
                                                 '()))
                                              (_g3402334047_ _g3402434051_)))))
                                    (_g3402334047_ _g3402434051_))))
                            (_g3402334047_ _g3402434051_))))
                    (_g3402334047_ _g3402434051_)))))
        (_g3402234132_ _$stx34019_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34137_)
      (let* ((_g3414134169_
              (lambda (_g3414234165_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3414234165_)))
             (_g3414034268_
              (lambda (_g3414234173_)
                (if (gx#stx-pair? _g3414234173_)
                    (let ((_e3414834176_ (gx#syntax-e _g3414234173_)))
                      (let ((_hd3414734180_
                             (let ()
                               (declare (not safe))
                               (##car _e3414834176_)))
                            (_tl3414634183_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3414834176_))))
                        (if (gx#stx-pair? _tl3414634183_)
                            (let ((_e3415134186_ (gx#syntax-e _tl3414634183_)))
                              (let ((_hd3415034190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3415134186_)))
                                    (_tl3414934193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3415134186_))))
                                (if (gx#stx-pair? _tl3414934193_)
                                    (let ((_e3415434196_
                                           (gx#syntax-e _tl3414934193_)))
                                      (let ((_hd3415334200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3415434196_)))
                                            (_tl3415234203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3415434196_))))
                                        (if (gx#stx-pair/null? _tl3415234203_)
                                            (let ((_g50657_
                                                   (gx#syntax-split-splice
                                                    _tl3415234203_
                                                    '0)))
                                              (begin
                                                (let ((_g50658_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50657_)
                                                             (##vector-length
                                                              _g50657_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50658_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3415534206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50657_
                                                          0)))
                                                      (_tl3415734209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50657_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3415734209_)
                                                      (letrec ((_loop3415834212_
                                                                (lambda (_hd3415634216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3416234219_)
                          (if (gx#stx-pair? _hd3415634216_)
                              (let ((_e3415934222_
                                     (gx#syntax-e _hd3415634216_)))
                                (let ((_lp-hd3416034226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3415934222_)))
                                      (_lp-tl3416134229_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3415934222_))))
                                  (_loop3415834212_
                                   _lp-tl3416134229_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd3416034226_
                                           _rest3416234219_)))))
                              (let ((_rest3416334232_
                                     (reverse _rest3416234219_)))
                                ((lambda (_L34236_ _L34238_ _L34239_)
                                   (let ((__tmp50671
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50659
                                          (let ((__tmp50667
                                                 (let ((__tmp50670
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50668
                                                        (let ((__tmp50669
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34239_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50670
                                                         __tmp50668)))
                                                (__tmp50660
                                                 (let ((__tmp50661
                                                        (let ((__tmp50666
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50662
                                                               (let ((__tmp50663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50664
                                     (let ((__tmp50665
                                            (lambda (_g3425934262_
                                                     _g3426034265_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3425934262_
                                                      _g3426034265_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50665 '() _L34236_))))
                                (declare (not safe))
                                (cons _L34238_ __tmp50664))))
                         (declare (not safe))
                         (cons '() __tmp50663))))
                  (declare (not safe))
                  (cons __tmp50666 __tmp50662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50661 '()))))
                                            (declare (not safe))
                                            (cons __tmp50667 __tmp50660))))
                                     (declare (not safe))
                                     (cons __tmp50671 __tmp50659)))
                                 _rest3416334232_
                                 _hd3415334200_
                                 _hd3415034190_))))))
                (_loop3415834212_ _target3415534206_ '()))
              (_g3414134169_ _g3414234173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3414134169_ _g3414234173_))))
                                    (_g3414134169_ _g3414234173_))))
                            (_g3414134169_ _g3414234173_))))
                    (_g3414134169_ _g3414234173_)))))
        (_g3414034268_ _$stx34137_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34273_)
      (let* ((_g3427634290_
              (lambda (_g3427734286_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3427734286_)))
             (_g3427534362_
              (lambda (_g3427734294_)
                (if (gx#stx-pair? _g3427734294_)
                    (let ((_e3428134297_ (gx#syntax-e _g3427734294_)))
                      (let ((_hd3428034301_
                             (let ()
                               (declare (not safe))
                               (##car _e3428134297_)))
                            (_tl3427934304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3428134297_))))
                        (if (gx#stx-pair? _tl3427934304_)
                            (let ((_e3428434307_ (gx#syntax-e _tl3427934304_)))
                              (let ((_hd3428334311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3428434307_)))
                                    (_tl3428234314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3428434307_))))
                                (if (gx#stx-null? _tl3428234314_)
                                    ((lambda (_L34317_)
                                       (if (gx#stx-string? _L34317_)
                                           (let* ((_g3433134339_
                                                   (lambda (_g3433234335_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3433234335_)))
                                                  (_g3433034358_
                                                   (lambda (_g3433234343_)
                                                     ((lambda (_L34346_)
                                                        (let ()
                                                          (let ((__tmp50673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50672
                         (let () (declare (not safe)) (cons _L34346_ '()))))
                    (declare (not safe))
                    (cons __tmp50673 __tmp50672))))
              _g3433234343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3433034358_
                                              (string->bytes
                                               (gx#stx-e _L34317_))))
                                           (_g3427634290_ _g3427734294_)))
                                     _hd3428334311_)
                                    (_g3427634290_ _g3427734294_))))
                            (_g3427634290_ _g3427734294_))))
                    (_g3427634290_ _g3427734294_)))))
        (_g3427534362_ _stx34273_)))))
