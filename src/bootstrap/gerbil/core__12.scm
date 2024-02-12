(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32836_)
      (let ((_g3283932846_
             (lambda (_g3284032842_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3284032842_))))
        (_g3283932846_ _$stx32836_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32850_)
      (let ((_g3285332860_
             (lambda (_g3285432856_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3285432856_))))
        (_g3285332860_ _$stx32850_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32864_)
      (let ((_g3286732874_
             (lambda (_g3286832870_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3286832870_))))
        (_g3286732874_ _$stx32864_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32878_)
      (let ((_g3288132888_
             (lambda (_g3288232884_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3288232884_))))
        (_g3288132888_ _$stx32878_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (let ((__tmp50480 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setq-macro::t
       'setq-macro
       __tmp50480
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32903_
      (apply make-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32903_)))
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
    (let ((__tmp50481 (list gerbil/core$<macro-object>#macro-object::t)))
      (declare (not safe))
      (make-class-type
       'gerbil.core#setf-macro::t
       'setf-macro
       __tmp50481
       '()
       '()
       '#f)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (let ()
      (declare (not safe))
      (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|)))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32899_
      (apply make-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32899_)))
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
    (lambda (_stx32896_)
      (if (gx#identifier? _stx32896_)
          (let ((__tmp50482 (gx#syntax-local-value _stx32896_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp50482))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32893_)
      (if (gx#identifier? _stx32893_)
          (let ((__tmp50483 (gx#syntax-local-value _stx32893_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp50483))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32907_)
      (let* ((___stx4690446905_ _stx32907_)
             (_g3291332972_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4690446905_))))
        (let ((___kont4690746908_
               (lambda (_L33245_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33245_)
                  _stx32907_)))
              (___kont4690946910_
               (lambda (_L33144_ _L33146_ _L33147_)
                 (let* ((_g3316933177_
                         (lambda (_g3317033173_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3317033173_)))
                        (_g3316833204_
                         (lambda (_g3317033181_)
                           ((lambda (_L33184_)
                              (let ()
                                (let ((__tmp50484
                                       (let ((__tmp50486
                                              (lambda (_g3319533198_
                                                       _g3319633201_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g3319533198_
                                                        _g3319633201_))))
                                             (__tmp50485
                                              (let ()
                                                (declare (not safe))
                                                (cons _L33144_ '()))))
                                         (declare (not safe))
                                         (foldr1 __tmp50486
                                                 __tmp50485
                                                 _L33146_))))
                                  (declare (not safe))
                                  (cons _L33184_ __tmp50484))))
                            _g3317033181_))))
                   (_g3316833204_
                    (gx#stx-identifier _L33147_ _L33147_ '"-set!")))))
              (___kont4691346914_
               (lambda (_L33054_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33054_)
                  _stx32907_)))
              (___kont4691546916_
               (lambda (_L33009_ _L33011_)
                 (let ((__tmp50489 (gx#datum->syntax '#f '%#set!))
                       (__tmp50487
                        (let ((__tmp50488
                               (let ()
                                 (declare (not safe))
                                 (cons _L33009_ '()))))
                          (declare (not safe))
                          (cons _L33011_ __tmp50488))))
                   (declare (not safe))
                   (cons __tmp50489 __tmp50487)))))
          (let* ((___match4699546996_
                  (lambda (_e3296032979_
                           _hd3295932983_
                           _tl3295832986_
                           _e3296332989_
                           _hd3296232993_
                           _tl3296132996_
                           _e3296632999_
                           _hd3296533003_
                           _tl3296433006_)
                    (let ((_L33009_ _hd3296533003_) (_L33011_ _hd3296232993_))
                      (if (gx#identifier? _L33011_)
                          (___kont4691546916_ _L33009_ _L33011_)
                          (let () (declare (not safe)) (_g3291332972_))))))
                 (___match4697546976_
                  (lambda (_e3295233034_
                           _hd3295133038_
                           _tl3295033041_
                           _e3295533044_
                           _hd3295433048_
                           _tl3295333051_)
                    (let ((_L33054_ _hd3295433048_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L33054_))
                          (___kont4691346914_ _L33054_)
                          (if (gx#stx-pair? _tl3295333051_)
                              (let ((_e3296632999_
                                     (gx#syntax-e _tl3295333051_)))
                                (let ((_tl3296433006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3296632999_)))
                                      (_hd3296533003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3296632999_))))
                                  (if (gx#stx-null? _tl3296433006_)
                                      (___match4699546996_
                                       _e3295233034_
                                       _hd3295133038_
                                       _tl3295033041_
                                       _e3295533044_
                                       _hd3295433048_
                                       _tl3295333051_
                                       _e3296632999_
                                       _hd3296533003_
                                       _tl3296433006_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3291332972_)))))
                              (let ()
                                (declare (not safe))
                                (_g3291332972_)))))))
                 (___match4696346964_
                  (lambda (_e3293033074_
                           _hd3292933078_
                           _tl3292833081_
                           _e3293333084_
                           _hd3293233088_
                           _tl3293133091_
                           _e3293633094_
                           _hd3293533098_
                           _tl3293433101_
                           ___splice4691146912_
                           _target3293733104_
                           _tl3293933107_)
                    (letrec ((_loop3294033110_
                              (lambda (_hd3293833114_ _arg3294433117_)
                                (if (gx#stx-pair? _hd3293833114_)
                                    (let ((_e3294133120_
                                           (gx#syntax-e _hd3293833114_)))
                                      (let ((_lp-tl3294333127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3294133120_)))
                                            (_lp-hd3294233124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3294133120_))))
                                        (_loop3294033110_
                                         _lp-tl3294333127_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3294233124_
                                                 _arg3294433117_)))))
                                    (let ((_arg3294533130_
                                           (reverse _arg3294433117_)))
                                      (if (gx#stx-pair? _tl3293133091_)
                                          (let ((_e3294833134_
                                                 (gx#syntax-e _tl3293133091_)))
                                            (let ((_tl3294633141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3294833134_)))
                                                  (_hd3294733138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3294833134_))))
                                              (if (gx#stx-null? _tl3294633141_)
                                                  (let ((_L33144_
                                                         _hd3294733138_)
                                                        (_L33146_
                                                         _arg3294533130_)
                                                        (_L33147_
                                                         _hd3293533098_))
                                                    (if (gx#identifier?
                                                         _L33147_)
                                                        (___kont4690946910_
                                                         _L33144_
                                                         _L33146_
                                                         _L33147_)
                                                        (___match4697546976_
                                                         _e3293033074_
                                                         _hd3292933078_
                                                         _tl3292833081_
                                                         _e3293333084_
                                                         _hd3293233088_
                                                         _tl3293133091_)))
                                                  (___match4697546976_
                                                   _e3293033074_
                                                   _hd3292933078_
                                                   _tl3292833081_
                                                   _e3293333084_
                                                   _hd3293233088_
                                                   _tl3293133091_))))
                                          (___match4697546976_
                                           _e3293033074_
                                           _hd3292933078_
                                           _tl3292833081_
                                           _e3293333084_
                                           _hd3293233088_
                                           _tl3293133091_)))))))
                      (_loop3294033110_ _target3293733104_ '())))))
            (if (gx#stx-pair? ___stx4690446905_)
                (let ((_e3291833215_ (gx#syntax-e ___stx4690446905_)))
                  (let ((_tl3291633222_
                         (let () (declare (not safe)) (##cdr _e3291833215_)))
                        (_hd3291733219_
                         (let () (declare (not safe)) (##car _e3291833215_))))
                    (if (gx#stx-pair? _tl3291633222_)
                        (let ((_e3292133225_ (gx#syntax-e _tl3291633222_)))
                          (let ((_tl3291933232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3292133225_)))
                                (_hd3292033229_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3292133225_))))
                            (if (gx#stx-pair? _hd3292033229_)
                                (let ((_e3292433235_
                                       (gx#syntax-e _hd3292033229_)))
                                  (let ((_tl3292233242_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3292433235_)))
                                        (_hd3292333239_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3292433235_))))
                                    (if (let ((__tmp50490
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp50490))
                                        (let ((_L33245_ _hd3292333239_))
                                          (___kont4690746908_ _L33245_))
                                        (if (gx#stx-pair/null? _tl3292233242_)
                                            (let ((___splice4691146912_
                                                   (gx#syntax-split-splice
                                                    _tl3292233242_
                                                    '0)))
                                              (let ((_tl3293933107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4691146912_
                                                        '1)))
                                                    (_target3293733104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4691146912_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3293933107_)
                                                    (___match4696346964_
                                                     _e3291833215_
                                                     _hd3291733219_
                                                     _tl3291633222_
                                                     _e3292133225_
                                                     _hd3292033229_
                                                     _tl3291933232_
                                                     _e3292433235_
                                                     _hd3292333239_
                                                     _tl3292233242_
                                                     ___splice4691146912_
                                                     _target3293733104_
                                                     _tl3293933107_)
                                                    (___match4697546976_
                                                     _e3291833215_
                                                     _hd3291733219_
                                                     _tl3291633222_
                                                     _e3292133225_
                                                     _hd3292033229_
                                                     _tl3291933232_))))
                                            (___match4697546976_
                                             _e3291833215_
                                             _hd3291733219_
                                             _tl3291633222_
                                             _e3292133225_
                                             _hd3292033229_
                                             _tl3291933232_)))))
                                (___match4697546976_
                                 _e3291833215_
                                 _hd3291733219_
                                 _tl3291633222_
                                 _e3292133225_
                                 _hd3292033229_
                                 _tl3291933232_))))
                        (let () (declare (not safe)) (_g3291332972_)))))
                (let () (declare (not safe)) (_g3291332972_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33265_)
      (let* ((_g3326833292_
              (lambda (_g3326933288_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3326933288_)))
             (_g3326733470_
              (lambda (_g3326933296_)
                (if (gx#stx-pair? _g3326933296_)
                    (let ((_e3327433299_ (gx#syntax-e _g3326933296_)))
                      (let ((_hd3327333303_
                             (let ()
                               (declare (not safe))
                               (##car _e3327433299_)))
                            (_tl3327233306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3327433299_))))
                        (if (gx#stx-pair/null? _tl3327233306_)
                            (if (fx>= (gx#stx-length _tl3327233306_) '1)
                                (let ((_g50491_
                                       (gx#syntax-split-splice
                                        _tl3327233306_
                                        '1)))
                                  (begin
                                    (let ((_g50492_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g50491_)
                                                 (##vector-length _g50491_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g50492_ 2)))
                                          (error "Context expects 2 values"
                                                 _g50492_)))
                                    (let ((_target3327533309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50491_ 0)))
                                          (_tl3327733312_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g50491_ 1))))
                                      (if (gx#stx-pair? _tl3327733312_)
                                          (let ((_e3328633315_
                                                 (gx#syntax-e _tl3327733312_)))
                                            (let ((_hd3328533319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3328633315_)))
                                                  (_tl3328433322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3328633315_))))
                                              (if (gx#stx-null? _tl3328433322_)
                                                  (letrec ((_loop3327833325_
                                                            (lambda (_hd3327633329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3328233332_)
                      (if (gx#stx-pair? _hd3327633329_)
                          (let ((_e3327933335_ (gx#syntax-e _hd3327633329_)))
                            (let ((_lp-hd3328033339_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3327933335_)))
                                  (_lp-tl3328133342_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3327933335_))))
                              (_loop3327833325_
                               _lp-tl3328133342_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3328033339_ _tgt3328233332_)))))
                          (let ((_tgt3328333345_ (reverse _tgt3328233332_)))
                            ((lambda (_L33349_ _L33351_)
                               (let* ((_g3336933386_
                                       (lambda (_g3337033382_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3337033382_)))
                                      (_g3336833458_
                                       (lambda (_g3337033390_)
                                         (if (gx#stx-pair/null? _g3337033390_)
                                             (let ((_g50493_
                                                    (gx#syntax-split-splice
                                                     _g3337033390_
                                                     '0)))
                                               (begin
                                                 (let ((_g50494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g50493_)
                                                              (##vector-length
                                                               _g50493_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g50494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g50494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3337233393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50493_
                                                           0)))
                                                       (_tl3337433396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g50493_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3337433396_)
                                                       (letrec ((_loop3337533399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3337333403_ _$e3337933406_)
                           (if (gx#stx-pair? _hd3337333403_)
                               (let ((_e3337633409_
                                      (gx#syntax-e _hd3337333403_)))
                                 (let ((_lp-hd3337733413_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3337633409_)))
                                       (_lp-tl3337833416_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3337633409_))))
                                   (_loop3337533399_
                                    _lp-tl3337833416_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd3337733413_
                                            _$e3337933406_)))))
                               (let ((_$e3338033419_ (reverse _$e3337933406_)))
                                 ((lambda (_L33423_)
                                    (let ()
                                      (let ((__tmp50507
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp50495
                                             (let ((__tmp50502
                                                    (let ((__tmp50503
                                                           (let ((__tmp50505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50506
                                 (lambda (_g3344133444_ _g3344233447_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g3344133444_ _g3344233447_)))))
                            (declare (not safe))
                            (foldr1 __tmp50506 '() _L33423_)))
                         (__tmp50504
                          (let () (declare (not safe)) (cons _L33349_ '()))))
                     (declare (not safe))
                     (cons __tmp50505 __tmp50504))))
              (declare (not safe))
              (cons __tmp50503 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp50496
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L33423_
                                                       _L33351_)
                                                      (let ((__tmp50497
                                                             (lambda (_g3343833450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3343933453_
                              _g3344033455_)
                       (let ((__tmp50498
                              (let ((__tmp50501 (gx#datum->syntax '#f 'set!))
                                    (__tmp50499
                                     (let ((__tmp50500
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3343833450_ '()))))
                                       (declare (not safe))
                                       (cons _g3343933453_ __tmp50500))))
                                (declare (not safe))
                                (cons __tmp50501 __tmp50499))))
                         (declare (not safe))
                         (cons __tmp50498 _g3344033455_)))))
                (declare (not safe))
                (foldr2 __tmp50497 '() _L33423_ _L33351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50502 __tmp50496))))
                                        (declare (not safe))
                                        (cons __tmp50507 __tmp50495))))
                                  _$e3338033419_))))))
                 (_loop3337533399_ _target3337233393_ '()))
               (_g3336933386_ _g3337033390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3336933386_ _g3337033390_)))))
                                 (_g3336833458_
                                  (gx#gentemps
                                   (let ((__tmp50508
                                          (lambda (_g3346133464_ _g3346233467_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3346133464_
                                                    _g3346233467_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50508 '() _L33351_))))))
                             _hd3328533319_
                             _tgt3328333345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3327833325_
                                                     _target3327533309_
                                                     '()))
                                                  (_g3326833292_
                                                   _g3326933296_))))
                                          (_g3326833292_ _g3326933296_)))))
                                (_g3326833292_ _g3326933296_))
                            (_g3326833292_ _g3326933296_))))
                    (_g3326833292_ _g3326933296_)))))
        (_g3326733470_ _stx33265_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33476_)
      (let* ((___stx4699846999_ _stx33476_)
             (_g3348033538_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4699846999_))))
        (let ((___kont4700147002_
               (lambda (_L33872_)
                 (let ((__tmp50512 (gx#datum->syntax '#f 'let))
                       (__tmp50509
                        (let ((__tmp50510
                               (let ((__tmp50511
                                      (lambda (_g3388833891_ _g3388933894_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3388833891_
                                                _g3388933894_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp50511 '() _L33872_))))
                          (declare (not safe))
                          (cons '() __tmp50510))))
                   (declare (not safe))
                   (cons __tmp50512 __tmp50509))))
              (___kont4700547006_
               (lambda (_L33649_ _L33651_ _L33652_)
                 (let* ((_g3367533683_
                         (lambda (_g3367633679_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3367633679_)))
                        (_g3367433803_
                         (lambda (_g3367633687_)
                           ((lambda (_L33690_)
                              (let ()
                                (let* ((_g3370233719_
                                        (lambda (_g3370333715_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3370333715_)))
                                       (_g3370133783_
                                        (lambda (_g3370333723_)
                                          (if (gx#stx-pair/null? _g3370333723_)
                                              (let ((_g50513_
                                                     (gx#syntax-split-splice
                                                      _g3370333723_
                                                      '0)))
                                                (begin
                                                  (let ((_g50514_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50513_)
                                                               (##vector-length
                                                                _g50513_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50514_ 2)))
                (error "Context expects 2 values" _g50514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3370533726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50513_
                                                            0)))
                                                        (_tl3370733729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g50513_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3370733729_)
                                                        (letrec ((_loop3370833732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3370633736_ _arg3371233739_)
                            (if (gx#stx-pair? _hd3370633736_)
                                (let ((_e3370933742_
                                       (gx#syntax-e _hd3370633736_)))
                                  (let ((_lp-hd3371033746_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3370933742_)))
                                        (_lp-tl3371133749_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3370933742_))))
                                    (_loop3370833732_
                                     _lp-tl3371133749_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd3371033746_
                                             _arg3371233739_)))))
                                (let ((_arg3371333752_
                                       (reverse _arg3371233739_)))
                                  ((lambda (_L33756_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp50518
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp50515
                                                (let ((__tmp50516
                                                       (let ((__tmp50517
                                                              (lambda (_g3377433777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3377533780_)
                        (let ()
                          (declare (not safe))
                          (cons _g3377433777_ _g3377533780_)))))
                 (declare (not safe))
                 (foldr1 __tmp50517 '() _L33756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L33690_ __tmp50516))))
                                           (declare (not safe))
                                           (cons __tmp50518 __tmp50515)))))
                                   _arg3371333752_))))))
                  (_loop3370833732_ _target3370533726_ '()))
                (_g3370233719_ _g3370333723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3370233719_ _g3370333723_)))))
                                  (_g3370133783_
                                   (let ((__tmp50521
                                          (gx#syntax->list
                                           (let ((__tmp50522
                                                  (lambda (_g3378633789_
                                                           _g3378733792_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3378633789_
                                                            _g3378733792_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50522
                                                     '()
                                                     _L33652_))))
                                         (__tmp50519
                                          (gx#syntax->list
                                           (let ((__tmp50520
                                                  (lambda (_g3379433797_
                                                           _g3379533800_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g3379433797_
                                                            _g3379533800_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp50520
                                                     '()
                                                     _L33651_)))))
                                     (declare (not safe))
                                     (foldr2 cons*
                                             '()
                                             __tmp50521
                                             __tmp50519))))))
                            _g3367633687_))))
                   (_g3367433803_
                    (gx#stx-wrap-source
                     (let ((__tmp50526 (gx#datum->syntax '#f 'lambda))
                           (__tmp50523
                            (let ((__tmp50524
                                   (let ((__tmp50525
                                          (lambda (_g3380633809_ _g3380733812_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3380633809_
                                                    _g3380733812_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50525 '() _L33649_))))
                              (declare (not safe))
                              (cons '() __tmp50524))))
                       (declare (not safe))
                       (cons __tmp50526 __tmp50523))
                     (gx#stx-source _stx33476_)))))))
          (let* ((___match4705347054_
                  (lambda (_e3350333545_
                           _hd3350233549_
                           _tl3350133552_
                           _e3350633555_
                           _hd3350533559_
                           _tl3350433562_
                           ___splice4700747008_
                           _target3350733565_
                           _tl3350933568_)
                    (letrec ((_loop3351033571_
                              (lambda (_hd3350833575_
                                       _expr3351433578_
                                       _param3351533580_)
                                (if (gx#stx-pair? _hd3350833575_)
                                    (let ((_e3351133583_
                                           (gx#syntax-e _hd3350833575_)))
                                      (let ((_lp-tl3351333590_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3351133583_)))
                                            (_lp-hd3351233587_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3351133583_))))
                                        (if (gx#stx-pair? _lp-hd3351233587_)
                                            (let ((_e3352033593_
                                                   (gx#syntax-e
                                                    _lp-hd3351233587_)))
                                              (let ((_tl3351833600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3352033593_)))
                                                    (_hd3351933597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3352033593_))))
                                                (if (gx#stx-pair?
                                                     _tl3351833600_)
                                                    (let ((_e3352333603_
                                                           (gx#syntax-e
                                                            _tl3351833600_)))
                                                      (let ((_tl3352133610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3352333603_)))
                    (_hd3352233607_
                     (let () (declare (not safe)) (##car _e3352333603_))))
                (if (gx#stx-null? _tl3352133610_)
                    (_loop3351033571_
                     _lp-tl3351333590_
                     (let ()
                       (declare (not safe))
                       (cons _hd3352233607_ _expr3351433578_))
                     (let ()
                       (declare (not safe))
                       (cons _hd3351933597_ _param3351533580_)))
                    (let () (declare (not safe)) (_g3348033538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3348033538_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3348033538_)))))
                                    (let ((_param3351733616_
                                           (reverse _param3351533580_))
                                          (_expr3351633613_
                                           (reverse _expr3351433578_)))
                                      (if (gx#stx-pair/null? _tl3350433562_)
                                          (let ((___splice4700947010_
                                                 (gx#syntax-split-splice
                                                  _tl3350433562_
                                                  '0)))
                                            (let ((_tl3352633622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4700947010_
                                                      '1)))
                                                  (_target3352433619_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4700947010_
                                                      '0))))
                                              (if (gx#stx-null? _tl3352633622_)
                                                  (letrec ((_loop3352733625_
                                                            (lambda (_hd3352533629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3353133632_)
                      (if (gx#stx-pair? _hd3352533629_)
                          (let ((_e3352833635_ (gx#syntax-e _hd3352533629_)))
                            (let ((_lp-tl3353033642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3352833635_)))
                                  (_lp-hd3352933639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3352833635_))))
                              (_loop3352733625_
                               _lp-tl3353033642_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3352933639_ _body3353133632_)))))
                          (let ((_body3353233645_ (reverse _body3353133632_)))
                            (___kont4700547006_
                             _body3353233645_
                             _expr3351633613_
                             _param3351733616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3352733625_
                                                     _target3352433619_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3348033538_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3348033538_))))))))
                      (_loop3351033571_ _target3350733565_ '() '()))))
                 (___match4703347034_
                  (lambda (_e3348533822_
                           _hd3348433826_
                           _tl3348333829_
                           _e3348833832_
                           _hd3348733836_
                           _tl3348633839_
                           ___splice4700347004_
                           _target3348933842_
                           _tl3349133845_)
                    (letrec ((_loop3349233848_
                              (lambda (_hd3349033852_ _body3349633855_)
                                (if (gx#stx-pair? _hd3349033852_)
                                    (let ((_e3349333858_
                                           (gx#syntax-e _hd3349033852_)))
                                      (let ((_lp-tl3349533865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3349333858_)))
                                            (_lp-hd3349433862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3349333858_))))
                                        (_loop3349233848_
                                         _lp-tl3349533865_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd3349433862_
                                                 _body3349633855_)))))
                                    (let ((_body3349733868_
                                           (reverse _body3349633855_)))
                                      (___kont4700147002_
                                       _body3349733868_))))))
                      (_loop3349233848_ _target3348933842_ '())))))
            (if (gx#stx-pair? ___stx4699846999_)
                (let ((_e3348533822_ (gx#syntax-e ___stx4699846999_)))
                  (let ((_tl3348333829_
                         (let () (declare (not safe)) (##cdr _e3348533822_)))
                        (_hd3348433826_
                         (let () (declare (not safe)) (##car _e3348533822_))))
                    (if (gx#stx-pair? _tl3348333829_)
                        (let ((_e3348833832_ (gx#syntax-e _tl3348333829_)))
                          (let ((_tl3348633839_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3348833832_)))
                                (_hd3348733836_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3348833832_))))
                            (if (gx#stx-null? _hd3348733836_)
                                (if (gx#stx-pair/null? _tl3348633839_)
                                    (let ((___splice4700347004_
                                           (gx#syntax-split-splice
                                            _tl3348633839_
                                            '0)))
                                      (let ((_tl3349133845_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4700347004_
                                                '1)))
                                            (_target3348933842_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4700347004_
                                                '0))))
                                        (if (gx#stx-null? _tl3349133845_)
                                            (___match4703347034_
                                             _e3348533822_
                                             _hd3348433826_
                                             _tl3348333829_
                                             _e3348833832_
                                             _hd3348733836_
                                             _tl3348633839_
                                             ___splice4700347004_
                                             _target3348933842_
                                             _tl3349133845_)
                                            (if (gx#stx-pair/null?
                                                 _hd3348733836_)
                                                (let ((___splice4700747008_
                                                       (gx#syntax-split-splice
                                                        _hd3348733836_
                                                        '0)))
                                                  (let ((_tl3350933568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4700747008_
                                                            '1)))
                                                        (_target3350733565_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4700747008_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3350933568_)
                                                        (___match4705347054_
                                                         _e3348533822_
                                                         _hd3348433826_
                                                         _tl3348333829_
                                                         _e3348833832_
                                                         _hd3348733836_
                                                         _tl3348633839_
                                                         ___splice4700747008_
                                                         _target3350733565_
                                                         _tl3350933568_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3348033538_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3348033538_))))))
                                    (if (gx#stx-pair/null? _hd3348733836_)
                                        (let ((___splice4700747008_
                                               (gx#syntax-split-splice
                                                _hd3348733836_
                                                '0)))
                                          (let ((_tl3350933568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4700747008_
                                                    '1)))
                                                (_target3350733565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4700747008_
                                                    '0))))
                                            (if (gx#stx-null? _tl3350933568_)
                                                (___match4705347054_
                                                 _e3348533822_
                                                 _hd3348433826_
                                                 _tl3348333829_
                                                 _e3348833832_
                                                 _hd3348733836_
                                                 _tl3348633839_
                                                 ___splice4700747008_
                                                 _target3350733565_
                                                 _tl3350933568_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3348033538_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3348033538_))))
                                (if (gx#stx-pair/null? _hd3348733836_)
                                    (let ((___splice4700747008_
                                           (gx#syntax-split-splice
                                            _hd3348733836_
                                            '0)))
                                      (let ((_tl3350933568_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4700747008_
                                                '1)))
                                            (_target3350733565_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4700747008_
                                                '0))))
                                        (if (gx#stx-null? _tl3350933568_)
                                            (___match4705347054_
                                             _e3348533822_
                                             _hd3348433826_
                                             _tl3348333829_
                                             _e3348833832_
                                             _hd3348733836_
                                             _tl3348633839_
                                             ___splice4700747008_
                                             _target3350733565_
                                             _tl3350933568_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3348033538_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3348033538_))))))
                        (let () (declare (not safe)) (_g3348033538_)))))
                (let () (declare (not safe)) (_g3348033538_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33905_)
      (let* ((_g3390933933_
              (lambda (_g3391033929_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3391033929_)))
             (_g3390834018_
              (lambda (_g3391033937_)
                (if (gx#stx-pair? _g3391033937_)
                    (let ((_e3391533940_ (gx#syntax-e _g3391033937_)))
                      (let ((_hd3391433944_
                             (let ()
                               (declare (not safe))
                               (##car _e3391533940_)))
                            (_tl3391333947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3391533940_))))
                        (if (gx#stx-pair? _tl3391333947_)
                            (let ((_e3391833950_ (gx#syntax-e _tl3391333947_)))
                              (let ((_hd3391733954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3391833950_)))
                                    (_tl3391633957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3391833950_))))
                                (if (gx#stx-pair/null? _tl3391633957_)
                                    (let ((_g50527_
                                           (gx#syntax-split-splice
                                            _tl3391633957_
                                            '0)))
                                      (begin
                                        (let ((_g50528_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50527_)
                                                     (##vector-length _g50527_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50528_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50528_)))
                                        (let ((_target3391933960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50527_ 0)))
                                              (_tl3392133963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50527_ 1))))
                                          (if (gx#stx-null? _tl3392133963_)
                                              (letrec ((_loop3392233966_
                                                        (lambda (_hd3392033970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3392633973_)
                  (if (gx#stx-pair? _hd3392033970_)
                      (let ((_e3392333976_ (gx#syntax-e _hd3392033970_)))
                        (let ((_lp-hd3392433980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3392333976_)))
                              (_lp-tl3392533983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3392333976_))))
                          (_loop3392233966_
                           _lp-tl3392533983_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3392433980_ _body3392633973_)))))
                      (let ((_body3392733986_ (reverse _body3392633973_)))
                        ((lambda (_L33990_ _L33992_)
                           (if (gx#identifier? _L33992_)
                               (let ((__tmp50536
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp50529
                                      (let ((__tmp50530
                                             (let ((__tmp50535
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50531
                                                    (let ((__tmp50534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L33992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50532
                   (let ((__tmp50533
                          (lambda (_g3400934012_ _g3401034015_)
                            (let ()
                              (declare (not safe))
                              (cons _g3400934012_ _g3401034015_)))))
                     (declare (not safe))
                     (foldr1 __tmp50533 '() _L33990_))))
              (declare (not safe))
              (cons __tmp50534 __tmp50532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50535 __tmp50531))))
                                        (declare (not safe))
                                        (cons __tmp50530 '()))))
                                 (declare (not safe))
                                 (cons __tmp50536 __tmp50529))
                               (_g3390933933_ _g3391033937_)))
                         _body3392733986_
                         _hd3391733954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3392233966_
                                                 _target3391933960_
                                                 '()))
                                              (_g3390933933_ _g3391033937_)))))
                                    (_g3390933933_ _g3391033937_))))
                            (_g3390933933_ _g3391033937_))))
                    (_g3390933933_ _g3391033937_)))))
        (_g3390834018_ _$stx33905_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx34023_)
      (let* ((_g3402734051_
              (lambda (_g3402834047_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3402834047_)))
             (_g3402634136_
              (lambda (_g3402834055_)
                (if (gx#stx-pair? _g3402834055_)
                    (let ((_e3403334058_ (gx#syntax-e _g3402834055_)))
                      (let ((_hd3403234062_
                             (let ()
                               (declare (not safe))
                               (##car _e3403334058_)))
                            (_tl3403134065_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3403334058_))))
                        (if (gx#stx-pair? _tl3403134065_)
                            (let ((_e3403634068_ (gx#syntax-e _tl3403134065_)))
                              (let ((_hd3403534072_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3403634068_)))
                                    (_tl3403434075_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3403634068_))))
                                (if (gx#stx-pair/null? _tl3403434075_)
                                    (let ((_g50537_
                                           (gx#syntax-split-splice
                                            _tl3403434075_
                                            '0)))
                                      (begin
                                        (let ((_g50538_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g50537_)
                                                     (##vector-length _g50537_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g50538_ 2)))
                                              (error "Context expects 2 values"
                                                     _g50538_)))
                                        (let ((_target3403734078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50537_ 0)))
                                              (_tl3403934081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g50537_ 1))))
                                          (if (gx#stx-null? _tl3403934081_)
                                              (letrec ((_loop3404034084_
                                                        (lambda (_hd3403834088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3404434091_)
                  (if (gx#stx-pair? _hd3403834088_)
                      (let ((_e3404134094_ (gx#syntax-e _hd3403834088_)))
                        (let ((_lp-hd3404234098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3404134094_)))
                              (_lp-tl3404334101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3404134094_))))
                          (_loop3404034084_
                           _lp-tl3404334101_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd3404234098_ _body3404434091_)))))
                      (let ((_body3404534104_ (reverse _body3404434091_)))
                        ((lambda (_L34108_ _L34110_)
                           (if (gx#identifier? _L34110_)
                               (let ((__tmp50546
                                      (gx#datum->syntax '#f 'call/esc))
                                     (__tmp50539
                                      (let ((__tmp50540
                                             (let ((__tmp50545
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp50541
                                                    (let ((__tmp50544
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L34110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp50542
                   (let ((__tmp50543
                          (lambda (_g3412734130_ _g3412834133_)
                            (let ()
                              (declare (not safe))
                              (cons _g3412734130_ _g3412834133_)))))
                     (declare (not safe))
                     (foldr1 __tmp50543 '() _L34108_))))
              (declare (not safe))
              (cons __tmp50544 __tmp50542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50545 __tmp50541))))
                                        (declare (not safe))
                                        (cons __tmp50540 '()))))
                                 (declare (not safe))
                                 (cons __tmp50546 __tmp50539))
                               (_g3402734051_ _g3402834055_)))
                         _body3404534104_
                         _hd3403534072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3404034084_
                                                 _target3403734078_
                                                 '()))
                                              (_g3402734051_ _g3402834055_)))))
                                    (_g3402734051_ _g3402834055_))))
                            (_g3402734051_ _g3402834055_))))
                    (_g3402734051_ _g3402834055_)))))
        (_g3402634136_ _$stx34023_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34141_)
      (let* ((_g3414534173_
              (lambda (_g3414634169_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3414634169_)))
             (_g3414434272_
              (lambda (_g3414634177_)
                (if (gx#stx-pair? _g3414634177_)
                    (let ((_e3415234180_ (gx#syntax-e _g3414634177_)))
                      (let ((_hd3415134184_
                             (let ()
                               (declare (not safe))
                               (##car _e3415234180_)))
                            (_tl3415034187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3415234180_))))
                        (if (gx#stx-pair? _tl3415034187_)
                            (let ((_e3415534190_ (gx#syntax-e _tl3415034187_)))
                              (let ((_hd3415434194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3415534190_)))
                                    (_tl3415334197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3415534190_))))
                                (if (gx#stx-pair? _tl3415334197_)
                                    (let ((_e3415834200_
                                           (gx#syntax-e _tl3415334197_)))
                                      (let ((_hd3415734204_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3415834200_)))
                                            (_tl3415634207_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3415834200_))))
                                        (if (gx#stx-pair/null? _tl3415634207_)
                                            (let ((_g50547_
                                                   (gx#syntax-split-splice
                                                    _tl3415634207_
                                                    '0)))
                                              (begin
                                                (let ((_g50548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g50547_)
                                                             (##vector-length
                                                              _g50547_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g50548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g50548_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3415934210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50547_
                                                          0)))
                                                      (_tl3416134213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g50547_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3416134213_)
                                                      (letrec ((_loop3416234216_
                                                                (lambda (_hd3416034220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3416634223_)
                          (if (gx#stx-pair? _hd3416034220_)
                              (let ((_e3416334226_
                                     (gx#syntax-e _hd3416034220_)))
                                (let ((_lp-hd3416434230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3416334226_)))
                                      (_lp-tl3416534233_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3416334226_))))
                                  (_loop3416234216_
                                   _lp-tl3416534233_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd3416434230_
                                           _rest3416634223_)))))
                              (let ((_rest3416734236_
                                     (reverse _rest3416634223_)))
                                ((lambda (_L34240_ _L34242_ _L34243_)
                                   (let ((__tmp50561
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp50549
                                          (let ((__tmp50557
                                                 (let ((__tmp50560
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp50558
                                                        (let ((__tmp50559
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34243_ '()))))
                  (declare (not safe))
                  (cons '() __tmp50559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50560
                                                         __tmp50558)))
                                                (__tmp50550
                                                 (let ((__tmp50551
                                                        (let ((__tmp50556
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp50552
                                                               (let ((__tmp50553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50554
                                     (let ((__tmp50555
                                            (lambda (_g3426334266_
                                                     _g3426434269_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3426334266_
                                                      _g3426434269_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50555 '() _L34240_))))
                                (declare (not safe))
                                (cons _L34242_ __tmp50554))))
                         (declare (not safe))
                         (cons '() __tmp50553))))
                  (declare (not safe))
                  (cons __tmp50556 __tmp50552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50551 '()))))
                                            (declare (not safe))
                                            (cons __tmp50557 __tmp50550))))
                                     (declare (not safe))
                                     (cons __tmp50561 __tmp50549)))
                                 _rest3416734236_
                                 _hd3415734204_
                                 _hd3415434194_))))))
                (_loop3416234216_ _target3415934210_ '()))
              (_g3414534173_ _g3414634177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3414534173_ _g3414634177_))))
                                    (_g3414534173_ _g3414634177_))))
                            (_g3414534173_ _g3414634177_))))
                    (_g3414534173_ _g3414634177_)))))
        (_g3414434272_ _$stx34141_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34277_)
      (let* ((_g3428034294_
              (lambda (_g3428134290_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3428134290_)))
             (_g3427934366_
              (lambda (_g3428134298_)
                (if (gx#stx-pair? _g3428134298_)
                    (let ((_e3428534301_ (gx#syntax-e _g3428134298_)))
                      (let ((_hd3428434305_
                             (let ()
                               (declare (not safe))
                               (##car _e3428534301_)))
                            (_tl3428334308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3428534301_))))
                        (if (gx#stx-pair? _tl3428334308_)
                            (let ((_e3428834311_ (gx#syntax-e _tl3428334308_)))
                              (let ((_hd3428734315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3428834311_)))
                                    (_tl3428634318_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3428834311_))))
                                (if (gx#stx-null? _tl3428634318_)
                                    ((lambda (_L34321_)
                                       (if (gx#stx-string? _L34321_)
                                           (let* ((_g3433534343_
                                                   (lambda (_g3433634339_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g3433634339_)))
                                                  (_g3433434362_
                                                   (lambda (_g3433634347_)
                                                     ((lambda (_L34350_)
                                                        (let ()
                                                          (let ((__tmp50563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50562
                         (let () (declare (not safe)) (cons _L34350_ '()))))
                    (declare (not safe))
                    (cons __tmp50563 __tmp50562))))
              _g3433634347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3433434362_
                                              (string->bytes
                                               (gx#stx-e _L34321_))))
                                           (_g3428034294_ _g3428134298_)))
                                     _hd3428734315_)
                                    (_g3428034294_ _g3428134298_))))
                            (_g3428034294_ _g3428134298_))))
                    (_g3428034294_ _g3428134298_)))))
        (_g3427934366_ _stx34277_)))))
