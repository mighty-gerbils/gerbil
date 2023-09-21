(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32346_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32346_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32342_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32342_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32339_)
      (if (gx#identifier? _stx32339_)
          (let ((__tmp42481 (gx#syntax-local-value _stx32339_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp42481))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32336_)
      (if (gx#identifier? _stx32336_)
          (let ((__tmp42482 (gx#syntax-local-value _stx32336_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp42482))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32350_)
      (let* ((___stx4172341724_ _stx32350_)
             (_g3235632415_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4172341724_))))
        (let ((___kont4172641727_
               (lambda (_L32688_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32688_)
                  _stx32350_)))
              (___kont4172841729_
               (lambda (_L32587_ _L32589_ _L32590_)
                 (let* ((_g3261232620_
                         (lambda (_g3261332616_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3261332616_)))
                        (_g3261132647_
                         (lambda (_g3261332624_)
                           ((lambda (_L32627_)
                              (let ()
                                (cons _L32627_
                                      (foldr (lambda (_g3263832641_
                                                      _g3263932644_)
                                               (cons _g3263832641_
                                                     _g3263932644_))
                                             (cons _L32587_ '())
                                             _L32589_))))
                            _g3261332624_))))
                   (_g3261132647_
                    (gx#stx-identifier _L32590_ _L32590_ '"-set!")))))
              (___kont4173241733_
               (lambda (_L32497_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32497_)
                  _stx32350_)))
              (___kont4173441735_
               (lambda (_L32452_ _L32454_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32454_ (cons _L32452_ '()))))))
          (let* ((___match4181441815_
                  (lambda (_e3240332422_
                           _hd3240232426_
                           _tl3240132429_
                           _e3240632432_
                           _hd3240532436_
                           _tl3240432439_
                           _e3240932442_
                           _hd3240832446_
                           _tl3240732449_)
                    (let ((_L32452_ _hd3240832446_) (_L32454_ _hd3240532436_))
                      (if (gx#identifier? _L32454_)
                          (___kont4173441735_ _L32452_ _L32454_)
                          (let () (declare (not safe)) (_g3235632415_))))))
                 (___match4179441795_
                  (lambda (_e3239532477_
                           _hd3239432481_
                           _tl3239332484_
                           _e3239832487_
                           _hd3239732491_
                           _tl3239632494_)
                    (let ((_L32497_ _hd3239732491_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L32497_))
                          (___kont4173241733_ _L32497_)
                          (if (gx#stx-pair? _tl3239632494_)
                              (let ((_e3240932442_
                                     (gx#syntax-e _tl3239632494_)))
                                (let ((_tl3240732449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3240932442_)))
                                      (_hd3240832446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3240932442_))))
                                  (if (gx#stx-null? _tl3240732449_)
                                      (___match4181441815_
                                       _e3239532477_
                                       _hd3239432481_
                                       _tl3239332484_
                                       _e3239832487_
                                       _hd3239732491_
                                       _tl3239632494_
                                       _e3240932442_
                                       _hd3240832446_
                                       _tl3240732449_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3235632415_)))))
                              (let ()
                                (declare (not safe))
                                (_g3235632415_)))))))
                 (___match4178241783_
                  (lambda (_e3237332517_
                           _hd3237232521_
                           _tl3237132524_
                           _e3237632527_
                           _hd3237532531_
                           _tl3237432534_
                           _e3237932537_
                           _hd3237832541_
                           _tl3237732544_
                           ___splice4173041731_
                           _target3238032547_
                           _tl3238232550_)
                    (letrec ((_loop3238332553_
                              (lambda (_hd3238132557_ _arg3238732560_)
                                (if (gx#stx-pair? _hd3238132557_)
                                    (let ((_e3238432563_
                                           (gx#syntax-e _hd3238132557_)))
                                      (let ((_lp-tl3238632570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3238432563_)))
                                            (_lp-hd3238532567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3238432563_))))
                                        (_loop3238332553_
                                         _lp-tl3238632570_
                                         (cons _lp-hd3238532567_
                                               _arg3238732560_))))
                                    (let ((_arg3238832573_
                                           (reverse _arg3238732560_)))
                                      (if (gx#stx-pair? _tl3237432534_)
                                          (let ((_e3239132577_
                                                 (gx#syntax-e _tl3237432534_)))
                                            (let ((_tl3238932584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3239132577_)))
                                                  (_hd3239032581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3239132577_))))
                                              (if (gx#stx-null? _tl3238932584_)
                                                  (let ((_L32587_
                                                         _hd3239032581_)
                                                        (_L32589_
                                                         _arg3238832573_)
                                                        (_L32590_
                                                         _hd3237832541_))
                                                    (if (gx#identifier?
                                                         _L32590_)
                                                        (___kont4172841729_
                                                         _L32587_
                                                         _L32589_
                                                         _L32590_)
                                                        (___match4179441795_
                                                         _e3237332517_
                                                         _hd3237232521_
                                                         _tl3237132524_
                                                         _e3237632527_
                                                         _hd3237532531_
                                                         _tl3237432534_)))
                                                  (___match4179441795_
                                                   _e3237332517_
                                                   _hd3237232521_
                                                   _tl3237132524_
                                                   _e3237632527_
                                                   _hd3237532531_
                                                   _tl3237432534_))))
                                          (___match4179441795_
                                           _e3237332517_
                                           _hd3237232521_
                                           _tl3237132524_
                                           _e3237632527_
                                           _hd3237532531_
                                           _tl3237432534_)))))))
                      (_loop3238332553_ _target3238032547_ '())))))
            (if (gx#stx-pair? ___stx4172341724_)
                (let ((_e3236132658_ (gx#syntax-e ___stx4172341724_)))
                  (let ((_tl3235932665_
                         (let () (declare (not safe)) (##cdr _e3236132658_)))
                        (_hd3236032662_
                         (let () (declare (not safe)) (##car _e3236132658_))))
                    (if (gx#stx-pair? _tl3235932665_)
                        (let ((_e3236432668_ (gx#syntax-e _tl3235932665_)))
                          (let ((_tl3236232675_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3236432668_)))
                                (_hd3236332672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3236432668_))))
                            (if (gx#stx-pair? _hd3236332672_)
                                (let ((_e3236732678_
                                       (gx#syntax-e _hd3236332672_)))
                                  (let ((_tl3236532685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3236732678_)))
                                        (_hd3236632682_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3236732678_))))
                                    (if (let ((__tmp42483
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp42483))
                                        (let ((_L32688_ _hd3236632682_))
                                          (___kont4172641727_ _L32688_))
                                        (if (gx#stx-pair/null? _tl3236532685_)
                                            (let ((___splice4173041731_
                                                   (gx#syntax-split-splice
                                                    _tl3236532685_
                                                    '0)))
                                              (let ((_tl3238232550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4173041731_
                                                        '1)))
                                                    (_target3238032547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4173041731_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3238232550_)
                                                    (___match4178241783_
                                                     _e3236132658_
                                                     _hd3236032662_
                                                     _tl3235932665_
                                                     _e3236432668_
                                                     _hd3236332672_
                                                     _tl3236232675_
                                                     _e3236732678_
                                                     _hd3236632682_
                                                     _tl3236532685_
                                                     ___splice4173041731_
                                                     _target3238032547_
                                                     _tl3238232550_)
                                                    (___match4179441795_
                                                     _e3236132658_
                                                     _hd3236032662_
                                                     _tl3235932665_
                                                     _e3236432668_
                                                     _hd3236332672_
                                                     _tl3236232675_))))
                                            (___match4179441795_
                                             _e3236132658_
                                             _hd3236032662_
                                             _tl3235932665_
                                             _e3236432668_
                                             _hd3236332672_
                                             _tl3236232675_)))))
                                (___match4179441795_
                                 _e3236132658_
                                 _hd3236032662_
                                 _tl3235932665_
                                 _e3236432668_
                                 _hd3236332672_
                                 _tl3236232675_))))
                        (let () (declare (not safe)) (_g3235632415_)))))
                (let () (declare (not safe)) (_g3235632415_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32708_)
      (let* ((_g3271132735_
              (lambda (_g3271232731_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3271232731_)))
             (_g3271032913_
              (lambda (_g3271232739_)
                (if (gx#stx-pair? _g3271232739_)
                    (let ((_e3271732742_ (gx#syntax-e _g3271232739_)))
                      (let ((_hd3271632746_
                             (let ()
                               (declare (not safe))
                               (##car _e3271732742_)))
                            (_tl3271532749_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3271732742_))))
                        (if (gx#stx-pair/null? _tl3271532749_)
                            (if (fx>= (gx#stx-length _tl3271532749_) '1)
                                (let ((_g42484_
                                       (gx#syntax-split-splice
                                        _tl3271532749_
                                        '1)))
                                  (begin
                                    (let ((_g42485_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42484_)
                                                 (##vector-length _g42484_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42485_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42485_)))
                                    (let ((_target3271832752_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42484_ 0)))
                                          (_tl3272032755_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42484_ 1))))
                                      (if (gx#stx-pair? _tl3272032755_)
                                          (let ((_e3272932758_
                                                 (gx#syntax-e _tl3272032755_)))
                                            (let ((_hd3272832762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3272932758_)))
                                                  (_tl3272732765_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3272932758_))))
                                              (if (gx#stx-null? _tl3272732765_)
                                                  (letrec ((_loop3272132768_
                                                            (lambda (_hd3271932772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3272532775_)
                      (if (gx#stx-pair? _hd3271932772_)
                          (let ((_e3272232778_ (gx#syntax-e _hd3271932772_)))
                            (let ((_lp-hd3272332782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3272232778_)))
                                  (_lp-tl3272432785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3272232778_))))
                              (_loop3272132768_
                               _lp-tl3272432785_
                               (cons _lp-hd3272332782_ _tgt3272532775_))))
                          (let ((_tgt3272632788_ (reverse _tgt3272532775_)))
                            ((lambda (_L32792_ _L32794_)
                               (let* ((_g3281232829_
                                       (lambda (_g3281332825_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3281332825_)))
                                      (_g3281132901_
                                       (lambda (_g3281332833_)
                                         (if (gx#stx-pair/null? _g3281332833_)
                                             (let ((_g42486_
                                                    (gx#syntax-split-splice
                                                     _g3281332833_
                                                     '0)))
                                               (begin
                                                 (let ((_g42487_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g42486_)
                                                              (##vector-length
                                                               _g42486_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g42487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g42487_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3281532836_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g42486_
                                                           0)))
                                                       (_tl3281732839_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g42486_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3281732839_)
                                                       (letrec ((_loop3281832842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3281632846_ _$e3282232849_)
                           (if (gx#stx-pair? _hd3281632846_)
                               (let ((_e3281932852_
                                      (gx#syntax-e _hd3281632846_)))
                                 (let ((_lp-hd3282032856_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3281932852_)))
                                       (_lp-tl3282132859_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3281932852_))))
                                   (_loop3281832842_
                                    _lp-tl3282132859_
                                    (cons _lp-hd3282032856_ _$e3282232849_))))
                               (let ((_$e3282332862_ (reverse _$e3282232849_)))
                                 ((lambda (_L32866_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3288432887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3288532890_)
                               (cons _g3288432887_ _g3288532890_))
                             '()
                             _L32866_)
                      (cons _L32792_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32866_
                                                     _L32794_)
                                                    (foldr (lambda (_g3288132893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3288232896_
                            _g3288332898_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3288232896_ (cons _g3288132893_ '())))
                           _g3288332898_))
                   '()
                   _L32866_
                   _L32794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3282332862_))))))
                 (_loop3281832842_ _target3281532836_ '()))
               (_g3281232829_ _g3281332833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3281232829_ _g3281332833_)))))
                                 (_g3281132901_
                                  (gx#gentemps
                                   (foldr (lambda (_g3290432907_ _g3290532910_)
                                            (cons _g3290432907_ _g3290532910_))
                                          '()
                                          _L32794_)))))
                             _hd3272832762_
                             _tgt3272632788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3272132768_
                                                     _target3271832752_
                                                     '()))
                                                  (_g3271132735_
                                                   _g3271232739_))))
                                          (_g3271132735_ _g3271232739_)))))
                                (_g3271132735_ _g3271232739_))
                            (_g3271132735_ _g3271232739_))))
                    (_g3271132735_ _g3271232739_)))))
        (_g3271032913_ _stx32708_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32919_)
      (let* ((___stx4181741818_ _stx32919_)
             (_g3292332981_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4181741818_))))
        (let ((___kont4182041821_
               (lambda (_L33315_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3333133334_ _g3333233337_)
                                      (cons _g3333133334_ _g3333233337_))
                                    '()
                                    _L33315_)))))
              (___kont4182441825_
               (lambda (_L33092_ _L33094_ _L33095_)
                 (let* ((_g3311833126_
                         (lambda (_g3311933122_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3311933122_)))
                        (_g3311733246_
                         (lambda (_g3311933130_)
                           ((lambda (_L33133_)
                              (let ()
                                (let* ((_g3314533162_
                                        (lambda (_g3314633158_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3314633158_)))
                                       (_g3314433226_
                                        (lambda (_g3314633166_)
                                          (if (gx#stx-pair/null? _g3314633166_)
                                              (let ((_g42488_
                                                     (gx#syntax-split-splice
                                                      _g3314633166_
                                                      '0)))
                                                (begin
                                                  (let ((_g42489_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42488_)
                                                               (##vector-length
                                                                _g42488_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42489_ 2)))
                (error "Context expects 2 values" _g42489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3314833169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42488_
                                                            0)))
                                                        (_tl3315033172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42488_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3315033172_)
                                                        (letrec ((_loop3315133175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3314933179_ _arg3315533182_)
                            (if (gx#stx-pair? _hd3314933179_)
                                (let ((_e3315233185_
                                       (gx#syntax-e _hd3314933179_)))
                                  (let ((_lp-hd3315333189_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3315233185_)))
                                        (_lp-tl3315433192_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3315233185_))))
                                    (_loop3315133175_
                                     _lp-tl3315433192_
                                     (cons _lp-hd3315333189_
                                           _arg3315533182_))))
                                (let ((_arg3315633195_
                                       (reverse _arg3315533182_)))
                                  ((lambda (_L33199_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33133_
                                                     (foldr (lambda (_g3321733220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3321833223_)
                      (cons _g3321733220_ _g3321833223_))
                    '()
                    _L33199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3315633195_))))))
                  (_loop3315133175_ _target3314833169_ '()))
                (_g3314533162_ _g3314633166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3314533162_ _g3314633166_)))))
                                  (_g3314433226_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3322933232_
                                                           _g3323033235_)
                                                    (cons _g3322933232_
                                                          _g3323033235_))
                                                  '()
                                                  _L33095_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3323733240_
                                                           _g3323833243_)
                                                    (cons _g3323733240_
                                                          _g3323833243_))
                                                  '()
                                                  _L33094_)))))))
                            _g3311933130_))))
                   (_g3311733246_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3324933252_ _g3325033255_)
                                          (cons _g3324933252_ _g3325033255_))
                                        '()
                                        _L33092_)))
                     (gx#stx-source _stx32919_)))))))
          (let* ((___match4187241873_
                  (lambda (_e3294632988_
                           _hd3294532992_
                           _tl3294432995_
                           _e3294932998_
                           _hd3294833002_
                           _tl3294733005_
                           ___splice4182641827_
                           _target3295033008_
                           _tl3295233011_)
                    (letrec ((_loop3295333014_
                              (lambda (_hd3295133018_
                                       _expr3295733021_
                                       _param3295833023_)
                                (if (gx#stx-pair? _hd3295133018_)
                                    (let ((_e3295433026_
                                           (gx#syntax-e _hd3295133018_)))
                                      (let ((_lp-tl3295633033_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3295433026_)))
                                            (_lp-hd3295533030_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3295433026_))))
                                        (if (gx#stx-pair? _lp-hd3295533030_)
                                            (let ((_e3296333036_
                                                   (gx#syntax-e
                                                    _lp-hd3295533030_)))
                                              (let ((_tl3296133043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3296333036_)))
                                                    (_hd3296233040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3296333036_))))
                                                (if (gx#stx-pair?
                                                     _tl3296133043_)
                                                    (let ((_e3296633046_
                                                           (gx#syntax-e
                                                            _tl3296133043_)))
                                                      (let ((_tl3296433053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3296633046_)))
                    (_hd3296533050_
                     (let () (declare (not safe)) (##car _e3296633046_))))
                (if (gx#stx-null? _tl3296433053_)
                    (_loop3295333014_
                     _lp-tl3295633033_
                     (cons _hd3296533050_ _expr3295733021_)
                     (cons _hd3296233040_ _param3295833023_))
                    (let () (declare (not safe)) (_g3292332981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3292332981_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3292332981_)))))
                                    (let ((_param3296033059_
                                           (reverse _param3295833023_))
                                          (_expr3295933056_
                                           (reverse _expr3295733021_)))
                                      (if (gx#stx-pair/null? _tl3294733005_)
                                          (let ((___splice4182841829_
                                                 (gx#syntax-split-splice
                                                  _tl3294733005_
                                                  '0)))
                                            (let ((_tl3296933065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182841829_
                                                      '1)))
                                                  (_target3296733062_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4182841829_
                                                      '0))))
                                              (if (gx#stx-null? _tl3296933065_)
                                                  (letrec ((_loop3297033068_
                                                            (lambda (_hd3296833072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3297433075_)
                      (if (gx#stx-pair? _hd3296833072_)
                          (let ((_e3297133078_ (gx#syntax-e _hd3296833072_)))
                            (let ((_lp-tl3297333085_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3297133078_)))
                                  (_lp-hd3297233082_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3297133078_))))
                              (_loop3297033068_
                               _lp-tl3297333085_
                               (cons _lp-hd3297233082_ _body3297433075_))))
                          (let ((_body3297533088_ (reverse _body3297433075_)))
                            (___kont4182441825_
                             _body3297533088_
                             _expr3295933056_
                             _param3296033059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3297033068_
                                                     _target3296733062_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3292332981_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3292332981_))))))))
                      (_loop3295333014_ _target3295033008_ '() '()))))
                 (___match4185241853_
                  (lambda (_e3292833265_
                           _hd3292733269_
                           _tl3292633272_
                           _e3293133275_
                           _hd3293033279_
                           _tl3292933282_
                           ___splice4182241823_
                           _target3293233285_
                           _tl3293433288_)
                    (letrec ((_loop3293533291_
                              (lambda (_hd3293333295_ _body3293933298_)
                                (if (gx#stx-pair? _hd3293333295_)
                                    (let ((_e3293633301_
                                           (gx#syntax-e _hd3293333295_)))
                                      (let ((_lp-tl3293833308_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3293633301_)))
                                            (_lp-hd3293733305_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3293633301_))))
                                        (_loop3293533291_
                                         _lp-tl3293833308_
                                         (cons _lp-hd3293733305_
                                               _body3293933298_))))
                                    (let ((_body3294033311_
                                           (reverse _body3293933298_)))
                                      (___kont4182041821_
                                       _body3294033311_))))))
                      (_loop3293533291_ _target3293233285_ '())))))
            (if (gx#stx-pair? ___stx4181741818_)
                (let ((_e3292833265_ (gx#syntax-e ___stx4181741818_)))
                  (let ((_tl3292633272_
                         (let () (declare (not safe)) (##cdr _e3292833265_)))
                        (_hd3292733269_
                         (let () (declare (not safe)) (##car _e3292833265_))))
                    (if (gx#stx-pair? _tl3292633272_)
                        (let ((_e3293133275_ (gx#syntax-e _tl3292633272_)))
                          (let ((_tl3292933282_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3293133275_)))
                                (_hd3293033279_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3293133275_))))
                            (if (gx#stx-null? _hd3293033279_)
                                (if (gx#stx-pair/null? _tl3292933282_)
                                    (let ((___splice4182241823_
                                           (gx#syntax-split-splice
                                            _tl3292933282_
                                            '0)))
                                      (let ((_tl3293433288_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4182241823_
                                                '1)))
                                            (_target3293233285_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4182241823_
                                                '0))))
                                        (if (gx#stx-null? _tl3293433288_)
                                            (___match4185241853_
                                             _e3292833265_
                                             _hd3292733269_
                                             _tl3292633272_
                                             _e3293133275_
                                             _hd3293033279_
                                             _tl3292933282_
                                             ___splice4182241823_
                                             _target3293233285_
                                             _tl3293433288_)
                                            (if (gx#stx-pair/null?
                                                 _hd3293033279_)
                                                (let ((___splice4182641827_
                                                       (gx#syntax-split-splice
                                                        _hd3293033279_
                                                        '0)))
                                                  (let ((_tl3295233011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4182641827_
                                                            '1)))
                                                        (_target3295033008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4182641827_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3295233011_)
                                                        (___match4187241873_
                                                         _e3292833265_
                                                         _hd3292733269_
                                                         _tl3292633272_
                                                         _e3293133275_
                                                         _hd3293033279_
                                                         _tl3292933282_
                                                         ___splice4182641827_
                                                         _target3295033008_
                                                         _tl3295233011_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3292332981_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3292332981_))))))
                                    (if (gx#stx-pair/null? _hd3293033279_)
                                        (let ((___splice4182641827_
                                               (gx#syntax-split-splice
                                                _hd3293033279_
                                                '0)))
                                          (let ((_tl3295233011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4182641827_
                                                    '1)))
                                                (_target3295033008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4182641827_
                                                    '0))))
                                            (if (gx#stx-null? _tl3295233011_)
                                                (___match4187241873_
                                                 _e3292833265_
                                                 _hd3292733269_
                                                 _tl3292633272_
                                                 _e3293133275_
                                                 _hd3293033279_
                                                 _tl3292933282_
                                                 ___splice4182641827_
                                                 _target3295033008_
                                                 _tl3295233011_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3292332981_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3292332981_))))
                                (if (gx#stx-pair/null? _hd3293033279_)
                                    (let ((___splice4182641827_
                                           (gx#syntax-split-splice
                                            _hd3293033279_
                                            '0)))
                                      (let ((_tl3295233011_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4182641827_
                                                '1)))
                                            (_target3295033008_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4182641827_
                                                '0))))
                                        (if (gx#stx-null? _tl3295233011_)
                                            (___match4187241873_
                                             _e3292833265_
                                             _hd3292733269_
                                             _tl3292633272_
                                             _e3293133275_
                                             _hd3293033279_
                                             _tl3292933282_
                                             ___splice4182641827_
                                             _target3295033008_
                                             _tl3295233011_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3292332981_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3292332981_))))))
                        (let () (declare (not safe)) (_g3292332981_)))))
                (let () (declare (not safe)) (_g3292332981_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33348_)
      (let* ((_g3335233376_
              (lambda (_g3335333372_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3335333372_)))
             (_g3335133461_
              (lambda (_g3335333380_)
                (if (gx#stx-pair? _g3335333380_)
                    (let ((_e3335833383_ (gx#syntax-e _g3335333380_)))
                      (let ((_hd3335733387_
                             (let ()
                               (declare (not safe))
                               (##car _e3335833383_)))
                            (_tl3335633390_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3335833383_))))
                        (if (gx#stx-pair? _tl3335633390_)
                            (let ((_e3336133393_ (gx#syntax-e _tl3335633390_)))
                              (let ((_hd3336033397_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3336133393_)))
                                    (_tl3335933400_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3336133393_))))
                                (if (gx#stx-pair/null? _tl3335933400_)
                                    (let ((_g42490_
                                           (gx#syntax-split-splice
                                            _tl3335933400_
                                            '0)))
                                      (begin
                                        (let ((_g42491_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42490_)
                                                     (##vector-length _g42490_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42491_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42491_)))
                                        (let ((_target3336233403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42490_ 0)))
                                              (_tl3336433406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42490_ 1))))
                                          (if (gx#stx-null? _tl3336433406_)
                                              (letrec ((_loop3336533409_
                                                        (lambda (_hd3336333413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3336933416_)
                  (if (gx#stx-pair? _hd3336333413_)
                      (let ((_e3336633419_ (gx#syntax-e _hd3336333413_)))
                        (let ((_lp-hd3336733423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3336633419_)))
                              (_lp-tl3336833426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3336633419_))))
                          (_loop3336533409_
                           _lp-tl3336833426_
                           (cons _lp-hd3336733423_ _body3336933416_))))
                      (let ((_body3337033429_ (reverse _body3336933416_)))
                        ((lambda (_L33433_ _L33435_)
                           (if (gx#identifier? _L33435_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33435_ '())
                                                       (foldr (lambda (_g3345233455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3345333458_)
                        (cons _g3345233455_ _g3345333458_))
                      '()
                      _L33433_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3335233376_ _g3335333380_)))
                         _body3337033429_
                         _hd3336033397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3336533409_
                                                 _target3336233403_
                                                 '()))
                                              (_g3335233376_ _g3335333380_)))))
                                    (_g3335233376_ _g3335333380_))))
                            (_g3335233376_ _g3335333380_))))
                    (_g3335233376_ _g3335333380_)))))
        (_g3335133461_ _$stx33348_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33466_)
      (let* ((_g3347033494_
              (lambda (_g3347133490_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3347133490_)))
             (_g3346933579_
              (lambda (_g3347133498_)
                (if (gx#stx-pair? _g3347133498_)
                    (let ((_e3347633501_ (gx#syntax-e _g3347133498_)))
                      (let ((_hd3347533505_
                             (let ()
                               (declare (not safe))
                               (##car _e3347633501_)))
                            (_tl3347433508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3347633501_))))
                        (if (gx#stx-pair? _tl3347433508_)
                            (let ((_e3347933511_ (gx#syntax-e _tl3347433508_)))
                              (let ((_hd3347833515_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3347933511_)))
                                    (_tl3347733518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3347933511_))))
                                (if (gx#stx-pair/null? _tl3347733518_)
                                    (let ((_g42492_
                                           (gx#syntax-split-splice
                                            _tl3347733518_
                                            '0)))
                                      (begin
                                        (let ((_g42493_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42492_)
                                                     (##vector-length _g42492_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42493_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42493_)))
                                        (let ((_target3348033521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42492_ 0)))
                                              (_tl3348233524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42492_ 1))))
                                          (if (gx#stx-null? _tl3348233524_)
                                              (letrec ((_loop3348333527_
                                                        (lambda (_hd3348133531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3348733534_)
                  (if (gx#stx-pair? _hd3348133531_)
                      (let ((_e3348433537_ (gx#syntax-e _hd3348133531_)))
                        (let ((_lp-hd3348533541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3348433537_)))
                              (_lp-tl3348633544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3348433537_))))
                          (_loop3348333527_
                           _lp-tl3348633544_
                           (cons _lp-hd3348533541_ _body3348733534_))))
                      (let ((_body3348833547_ (reverse _body3348733534_)))
                        ((lambda (_L33551_ _L33553_)
                           (if (gx#identifier? _L33553_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33553_ '())
                                                       (foldr (lambda (_g3357033573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3357133576_)
                        (cons _g3357033573_ _g3357133576_))
                      '()
                      _L33551_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3347033494_ _g3347133498_)))
                         _body3348833547_
                         _hd3347833515_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3348333527_
                                                 _target3348033521_
                                                 '()))
                                              (_g3347033494_ _g3347133498_)))))
                                    (_g3347033494_ _g3347133498_))))
                            (_g3347033494_ _g3347133498_))))
                    (_g3347033494_ _g3347133498_)))))
        (_g3346933579_ _$stx33466_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33584_)
      (let* ((_g3358833616_
              (lambda (_g3358933612_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3358933612_)))
             (_g3358733715_
              (lambda (_g3358933620_)
                (if (gx#stx-pair? _g3358933620_)
                    (let ((_e3359533623_ (gx#syntax-e _g3358933620_)))
                      (let ((_hd3359433627_
                             (let ()
                               (declare (not safe))
                               (##car _e3359533623_)))
                            (_tl3359333630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3359533623_))))
                        (if (gx#stx-pair? _tl3359333630_)
                            (let ((_e3359833633_ (gx#syntax-e _tl3359333630_)))
                              (let ((_hd3359733637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3359833633_)))
                                    (_tl3359633640_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3359833633_))))
                                (if (gx#stx-pair? _tl3359633640_)
                                    (let ((_e3360133643_
                                           (gx#syntax-e _tl3359633640_)))
                                      (let ((_hd3360033647_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3360133643_)))
                                            (_tl3359933650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3360133643_))))
                                        (if (gx#stx-pair/null? _tl3359933650_)
                                            (let ((_g42494_
                                                   (gx#syntax-split-splice
                                                    _tl3359933650_
                                                    '0)))
                                              (begin
                                                (let ((_g42495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g42494_)
                                                             (##vector-length
                                                              _g42494_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g42495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g42495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3360233653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g42494_
                                                          0)))
                                                      (_tl3360433656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g42494_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3360433656_)
                                                      (letrec ((_loop3360533659_
                                                                (lambda (_hd3360333663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3360933666_)
                          (if (gx#stx-pair? _hd3360333663_)
                              (let ((_e3360633669_
                                     (gx#syntax-e _hd3360333663_)))
                                (let ((_lp-hd3360733673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3360633669_)))
                                      (_lp-tl3360833676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3360633669_))))
                                  (_loop3360533659_
                                   _lp-tl3360833676_
                                   (cons _lp-hd3360733673_ _rest3360933666_))))
                              (let ((_rest3361033679_
                                     (reverse _rest3360933666_)))
                                ((lambda (_L33683_ _L33685_ _L33686_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33685_
                               (foldr (lambda (_g3370633709_ _g3370733712_)
                                        (cons _g3370633709_ _g3370733712_))
                                      '()
                                      _L33683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3361033679_
                                 _hd3360033647_
                                 _hd3359733637_))))))
                (_loop3360533659_ _target3360233653_ '()))
              (_g3358833616_ _g3358933620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3358833616_ _g3358933620_))))
                                    (_g3358833616_ _g3358933620_))))
                            (_g3358833616_ _g3358933620_))))
                    (_g3358833616_ _g3358933620_)))))
        (_g3358733715_ _$stx33584_)))))
