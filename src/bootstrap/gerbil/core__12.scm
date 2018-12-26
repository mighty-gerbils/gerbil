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
    (lambda _$args32422_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32422_)))
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
    (lambda _$args32418_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32418_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32415_)
      (if (gx#identifier? _stx32415_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx32415_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32412_)
      (if (gx#identifier? _stx32412_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx32412_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32426_)
      (let* ((___stx4137141372_ _stx32426_)
             (_g3243232491_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4137141372_))))
        (let ((___kont4137441375_
               (lambda (_L32764_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32764_)
                  _stx32426_)))
              (___kont4137641377_
               (lambda (_L32663_ _L32665_ _L32666_)
                 (let* ((_g3268832696_
                         (lambda (_g3268932692_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3268932692_)))
                        (_g3268732723_
                         (lambda (_g3268932700_)
                           ((lambda (_L32703_)
                              (let ()
                                (cons _L32703_
                                      (foldr (lambda (_g3271432717_
                                                      _g3271532720_)
                                               (cons _g3271432717_
                                                     _g3271532720_))
                                             (cons _L32663_ '())
                                             _L32665_))))
                            _g3268932700_))))
                   (_g3268732723_
                    (gx#stx-identifier _L32666_ _L32666_ '"-set!")))))
              (___kont4138041381_
               (lambda (_L32573_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32573_)
                  _stx32426_)))
              (___kont4138241383_
               (lambda (_L32528_ _L32530_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32530_ (cons _L32528_ '()))))))
          (let* ((___match4146241463_
                  (lambda (_e3247732498_
                           _hd3247832502_
                           _tl3247932505_
                           _e3248032508_
                           _hd3248132512_
                           _tl3248232515_
                           _e3248332518_
                           _hd3248432522_
                           _tl3248532525_)
                    (let ((_L32528_ _hd3248432522_) (_L32530_ _hd3248132512_))
                      (if (gx#identifier? _L32530_)
                          (___kont4138241383_ _L32528_ _L32530_)
                          (_g3243232491_)))))
                 (___match4144241443_
                  (lambda (_e3246932553_
                           _hd3247032557_
                           _tl3247132560_
                           _e3247232563_
                           _hd3247332567_
                           _tl3247432570_)
                    (let ((_L32573_ _hd3247332567_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32573_)
                          (___kont4138041381_ _L32573_)
                          (if (gx#stx-pair? _tl3247432570_)
                              (let ((_e3248332518_
                                     (gx#syntax-e _tl3247432570_)))
                                (let ((_tl3248532525_ (##cdr _e3248332518_))
                                      (_hd3248432522_ (##car _e3248332518_)))
                                  (if (gx#stx-null? _tl3248532525_)
                                      (___match4146241463_
                                       _e3246932553_
                                       _hd3247032557_
                                       _tl3247132560_
                                       _e3247232563_
                                       _hd3247332567_
                                       _tl3247432570_
                                       _e3248332518_
                                       _hd3248432522_
                                       _tl3248532525_)
                                      (_g3243232491_))))
                              (_g3243232491_))))))
                 (___match4143041431_
                  (lambda (_e3244732593_
                           _hd3244832597_
                           _tl3244932600_
                           _e3245032603_
                           _hd3245132607_
                           _tl3245232610_
                           _e3245332613_
                           _hd3245432617_
                           _tl3245532620_
                           ___splice4137841379_
                           _target3245632623_
                           _tl3245832626_)
                    (letrec ((_loop3245932629_
                              (lambda (_hd3245732633_ _arg3246332636_)
                                (if (gx#stx-pair? _hd3245732633_)
                                    (let ((_e3246032639_
                                           (gx#syntax-e _hd3245732633_)))
                                      (let ((_lp-tl3246232646_
                                             (##cdr _e3246032639_))
                                            (_lp-hd3246132643_
                                             (##car _e3246032639_)))
                                        (_loop3245932629_
                                         _lp-tl3246232646_
                                         (cons _lp-hd3246132643_
                                               _arg3246332636_))))
                                    (let ((_arg3246432649_
                                           (reverse _arg3246332636_)))
                                      (if (gx#stx-pair? _tl3245232610_)
                                          (let ((_e3246532653_
                                                 (gx#syntax-e _tl3245232610_)))
                                            (let ((_tl3246732660_
                                                   (##cdr _e3246532653_))
                                                  (_hd3246632657_
                                                   (##car _e3246532653_)))
                                              (if (gx#stx-null? _tl3246732660_)
                                                  (let ((_L32663_
                                                         _hd3246632657_)
                                                        (_L32665_
                                                         _arg3246432649_)
                                                        (_L32666_
                                                         _hd3245432617_))
                                                    (if (gx#identifier?
                                                         _L32666_)
                                                        (___kont4137641377_
                                                         _L32663_
                                                         _L32665_
                                                         _L32666_)
                                                        (___match4144241443_
                                                         _e3244732593_
                                                         _hd3244832597_
                                                         _tl3244932600_
                                                         _e3245032603_
                                                         _hd3245132607_
                                                         _tl3245232610_)))
                                                  (___match4144241443_
                                                   _e3244732593_
                                                   _hd3244832597_
                                                   _tl3244932600_
                                                   _e3245032603_
                                                   _hd3245132607_
                                                   _tl3245232610_))))
                                          (___match4144241443_
                                           _e3244732593_
                                           _hd3244832597_
                                           _tl3244932600_
                                           _e3245032603_
                                           _hd3245132607_
                                           _tl3245232610_)))))))
                      (_loop3245932629_ _target3245632623_ '())))))
            (if (gx#stx-pair? ___stx4137141372_)
                (let ((_e3243532734_ (gx#syntax-e ___stx4137141372_)))
                  (let ((_tl3243732741_ (##cdr _e3243532734_))
                        (_hd3243632738_ (##car _e3243532734_)))
                    (if (gx#stx-pair? _tl3243732741_)
                        (let ((_e3243832744_ (gx#syntax-e _tl3243732741_)))
                          (let ((_tl3244032751_ (##cdr _e3243832744_))
                                (_hd3243932748_ (##car _e3243832744_)))
                            (if (gx#stx-pair? _hd3243932748_)
                                (let ((_e3244132754_
                                       (gx#syntax-e _hd3243932748_)))
                                  (let ((_tl3244332761_ (##cdr _e3244132754_))
                                        (_hd3244232758_ (##car _e3244132754_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32764_ _hd3244232758_))
                                          (___kont4137441375_ _L32764_))
                                        (if (gx#stx-pair/null? _tl3244332761_)
                                            (let ((___splice4137841379_
                                                   (gx#syntax-split-splice
                                                    _tl3244332761_
                                                    '0)))
                                              (let ((_tl3245832626_
                                                     (##vector-ref
                                                      ___splice4137841379_
                                                      '1))
                                                    (_target3245632623_
                                                     (##vector-ref
                                                      ___splice4137841379_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3245832626_)
                                                    (___match4143041431_
                                                     _e3243532734_
                                                     _hd3243632738_
                                                     _tl3243732741_
                                                     _e3243832744_
                                                     _hd3243932748_
                                                     _tl3244032751_
                                                     _e3244132754_
                                                     _hd3244232758_
                                                     _tl3244332761_
                                                     ___splice4137841379_
                                                     _target3245632623_
                                                     _tl3245832626_)
                                                    (___match4144241443_
                                                     _e3243532734_
                                                     _hd3243632738_
                                                     _tl3243732741_
                                                     _e3243832744_
                                                     _hd3243932748_
                                                     _tl3244032751_))))
                                            (___match4144241443_
                                             _e3243532734_
                                             _hd3243632738_
                                             _tl3243732741_
                                             _e3243832744_
                                             _hd3243932748_
                                             _tl3244032751_)))))
                                (___match4144241443_
                                 _e3243532734_
                                 _hd3243632738_
                                 _tl3243732741_
                                 _e3243832744_
                                 _hd3243932748_
                                 _tl3244032751_))))
                        (_g3243232491_))))
                (_g3243232491_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32784_)
      (let* ((_g3278732811_
              (lambda (_g3278832807_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3278832807_)))
             (_g3278632989_
              (lambda (_g3278832815_)
                (if (gx#stx-pair? _g3278832815_)
                    (let ((_e3279132818_ (gx#syntax-e _g3278832815_)))
                      (let ((_hd3279232822_ (##car _e3279132818_))
                            (_tl3279332825_ (##cdr _e3279132818_)))
                        (if (gx#stx-pair/null? _tl3279332825_)
                            (if (fx>= (gx#stx-length _tl3279332825_) '1)
                                (let ((_g41947_
                                       (gx#syntax-split-splice
                                        _tl3279332825_
                                        '1)))
                                  (begin
                                    (let ((_g41948_
                                           (if (##values? _g41947_)
                                               (##vector-length _g41947_)
                                               1)))
                                      (if (not (##fx= _g41948_ 2))
                                          (error "Context expects 2 values"
                                                 _g41948_)))
                                    (let ((_target3279432828_
                                           (##vector-ref _g41947_ 0))
                                          (_tl3279632831_
                                           (##vector-ref _g41947_ 1)))
                                      (if (gx#stx-pair? _tl3279632831_)
                                          (let ((_e3280332834_
                                                 (gx#syntax-e _tl3279632831_)))
                                            (let ((_hd3280432838_
                                                   (##car _e3280332834_))
                                                  (_tl3280532841_
                                                   (##cdr _e3280332834_)))
                                              (if (gx#stx-null? _tl3280532841_)
                                                  (letrec ((_loop3279732844_
                                                            (lambda (_hd3279532848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3280132851_)
                      (if (gx#stx-pair? _hd3279532848_)
                          (let ((_e3279832854_ (gx#syntax-e _hd3279532848_)))
                            (let ((_lp-hd3279932858_ (##car _e3279832854_))
                                  (_lp-tl3280032861_ (##cdr _e3279832854_)))
                              (_loop3279732844_
                               _lp-tl3280032861_
                               (cons _lp-hd3279932858_ _tgt3280132851_))))
                          (let ((_tgt3280232864_ (reverse _tgt3280132851_)))
                            ((lambda (_L32868_ _L32870_)
                               (let* ((_g3288832905_
                                       (lambda (_g3288932901_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3288932901_)))
                                      (_g3288732977_
                                       (lambda (_g3288932909_)
                                         (if (gx#stx-pair/null? _g3288932909_)
                                             (let ((_g41949_
                                                    (gx#syntax-split-splice
                                                     _g3288932909_
                                                     '0)))
                                               (begin
                                                 (let ((_g41950_
                                                        (if (##values?
                                                             _g41949_)
                                                            (##vector-length
                                                             _g41949_)
                                                            1)))
                                                   (if (not (##fx= _g41950_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41950_)))
                                                 (let ((_target3289132912_
                                                        (##vector-ref
                                                         _g41949_
                                                         0))
                                                       (_tl3289332915_
                                                        (##vector-ref
                                                         _g41949_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3289332915_)
                                                       (letrec ((_loop3289432918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3289232922_ _$e3289832925_)
                           (if (gx#stx-pair? _hd3289232922_)
                               (let ((_e3289532928_
                                      (gx#syntax-e _hd3289232922_)))
                                 (let ((_lp-hd3289632932_
                                        (##car _e3289532928_))
                                       (_lp-tl3289732935_
                                        (##cdr _e3289532928_)))
                                   (_loop3289432918_
                                    _lp-tl3289732935_
                                    (cons _lp-hd3289632932_ _$e3289832925_))))
                               (let ((_$e3289932938_ (reverse _$e3289832925_)))
                                 ((lambda (_L32942_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3295732963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3295832966_)
                               (cons _g3295732963_ _g3295832966_))
                             '()
                             _L32942_)
                      (cons _L32868_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32942_
                                                     _L32870_)
                                                    (foldr (lambda (_g3295932969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3296032972_
                            _g3296132974_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3296032972_ (cons _g3295932969_ '())))
                           _g3296132974_))
                   '()
                   _L32942_
                   _L32870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3289932938_))))))
                 (_loop3289432918_ _target3289132912_ '()))
               (_g3288832905_ _g3288932909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3288832905_ _g3288932909_)))))
                                 (_g3288732977_
                                  (gx#gentemps
                                   (foldr (lambda (_g3298032983_ _g3298132986_)
                                            (cons _g3298032983_ _g3298132986_))
                                          '()
                                          _L32870_)))))
                             _hd3280432838_
                             _tgt3280232864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3279732844_
                                                     _target3279432828_
                                                     '()))
                                                  (_g3278732811_
                                                   _g3278832815_))))
                                          (_g3278732811_ _g3278832815_)))))
                                (_g3278732811_ _g3278832815_))
                            (_g3278732811_ _g3278832815_))))
                    (_g3278732811_ _g3278832815_)))))
        (_g3278632989_ _stx32784_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32995_)
      (let* ((___stx4146541466_ _stx32995_)
             (_g3299933057_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4146541466_))))
        (let ((___kont4146841469_
               (lambda (_L33391_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3340733410_ _g3340833413_)
                                      (cons _g3340733410_ _g3340833413_))
                                    '()
                                    _L33391_)))))
              (___kont4147241473_
               (lambda (_L33168_ _L33170_ _L33171_)
                 (let* ((_g3319433202_
                         (lambda (_g3319533198_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3319533198_)))
                        (_g3319333322_
                         (lambda (_g3319533206_)
                           ((lambda (_L33209_)
                              (let ()
                                (let* ((_g3322133238_
                                        (lambda (_g3322233234_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3322233234_)))
                                       (_g3322033302_
                                        (lambda (_g3322233242_)
                                          (if (gx#stx-pair/null? _g3322233242_)
                                              (let ((_g41951_
                                                     (gx#syntax-split-splice
                                                      _g3322233242_
                                                      '0)))
                                                (begin
                                                  (let ((_g41952_
                                                         (if (##values?
                                                              _g41951_)
                                                             (##vector-length
                                                              _g41951_)
                                                             1)))
                                                    (if (not (##fx= _g41952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3322433245_
                                                         (##vector-ref
                                                          _g41951_
                                                          0))
                                                        (_tl3322633248_
                                                         (##vector-ref
                                                          _g41951_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3322633248_)
                                                        (letrec ((_loop3322733251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3322533255_ _arg3323133258_)
                            (if (gx#stx-pair? _hd3322533255_)
                                (let ((_e3322833261_
                                       (gx#syntax-e _hd3322533255_)))
                                  (let ((_lp-hd3322933265_
                                         (##car _e3322833261_))
                                        (_lp-tl3323033268_
                                         (##cdr _e3322833261_)))
                                    (_loop3322733251_
                                     _lp-tl3323033268_
                                     (cons _lp-hd3322933265_
                                           _arg3323133258_))))
                                (let ((_arg3323233271_
                                       (reverse _arg3323133258_)))
                                  ((lambda (_L33275_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33209_
                                                     (foldr (lambda (_g3329333296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3329433299_)
                      (cons _g3329333296_ _g3329433299_))
                    '()
                    _L33275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3323233271_))))))
                  (_loop3322733251_ _target3322433245_ '()))
                (_g3322133238_ _g3322233242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3322133238_ _g3322233242_)))))
                                  (_g3322033302_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3330533308_
                                                           _g3330633311_)
                                                    (cons _g3330533308_
                                                          _g3330633311_))
                                                  '()
                                                  _L33171_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3331333316_
                                                           _g3331433319_)
                                                    (cons _g3331333316_
                                                          _g3331433319_))
                                                  '()
                                                  _L33170_)))))))
                            _g3319533206_))))
                   (_g3319333322_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3332533328_ _g3332633331_)
                                          (cons _g3332533328_ _g3332633331_))
                                        '()
                                        _L33168_)))
                     (gx#stx-source _stx32995_)))))))
          (let* ((___match4152041521_
                  (lambda (_e3302033064_
                           _hd3302133068_
                           _tl3302233071_
                           _e3302333074_
                           _hd3302433078_
                           _tl3302533081_
                           ___splice4147441475_
                           _target3302633084_
                           _tl3302833087_)
                    (letrec ((_loop3302933090_
                              (lambda (_hd3302733094_
                                       _expr3303333097_
                                       _param3303433099_)
                                (if (gx#stx-pair? _hd3302733094_)
                                    (let ((_e3303033102_
                                           (gx#syntax-e _hd3302733094_)))
                                      (let ((_lp-tl3303233109_
                                             (##cdr _e3303033102_))
                                            (_lp-hd3303133106_
                                             (##car _e3303033102_)))
                                        (if (gx#stx-pair? _lp-hd3303133106_)
                                            (let ((_e3303733112_
                                                   (gx#syntax-e
                                                    _lp-hd3303133106_)))
                                              (let ((_tl3303933119_
                                                     (##cdr _e3303733112_))
                                                    (_hd3303833116_
                                                     (##car _e3303733112_)))
                                                (if (gx#stx-pair?
                                                     _tl3303933119_)
                                                    (let ((_e3304033122_
                                                           (gx#syntax-e
                                                            _tl3303933119_)))
                                                      (let ((_tl3304233129_
                                                             (##cdr _e3304033122_))
                                                            (_hd3304133126_
                                                             (##car _e3304033122_)))
                                                        (if (gx#stx-null?
                                                             _tl3304233129_)
                                                            (_loop3302933090_
                                                             _lp-tl3303233109_
                                                             (cons _hd3304133126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3303333097_)
                     (cons _hd3303833116_ _param3303433099_))
                    (_g3299933057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3299933057_))))
                                            (_g3299933057_))))
                                    (let ((_param3303633135_
                                           (reverse _param3303433099_))
                                          (_expr3303533132_
                                           (reverse _expr3303333097_)))
                                      (if (gx#stx-pair/null? _tl3302533081_)
                                          (let ((___splice4147641477_
                                                 (gx#syntax-split-splice
                                                  _tl3302533081_
                                                  '0)))
                                            (let ((_tl3304533141_
                                                   (##vector-ref
                                                    ___splice4147641477_
                                                    '1))
                                                  (_target3304333138_
                                                   (##vector-ref
                                                    ___splice4147641477_
                                                    '0)))
                                              (if (gx#stx-null? _tl3304533141_)
                                                  (letrec ((_loop3304633144_
                                                            (lambda (_hd3304433148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3305033151_)
                      (if (gx#stx-pair? _hd3304433148_)
                          (let ((_e3304733154_ (gx#syntax-e _hd3304433148_)))
                            (let ((_lp-tl3304933161_ (##cdr _e3304733154_))
                                  (_lp-hd3304833158_ (##car _e3304733154_)))
                              (_loop3304633144_
                               _lp-tl3304933161_
                               (cons _lp-hd3304833158_ _body3305033151_))))
                          (let ((_body3305133164_ (reverse _body3305033151_)))
                            (___kont4147241473_
                             _body3305133164_
                             _expr3303533132_
                             _param3303633135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3304633144_
                                                     _target3304333138_
                                                     '()))
                                                  (_g3299933057_))))
                                          (_g3299933057_)))))))
                      (_loop3302933090_ _target3302633084_ '() '()))))
                 (___match4150041501_
                  (lambda (_e3300233341_
                           _hd3300333345_
                           _tl3300433348_
                           _e3300533351_
                           _hd3300633355_
                           _tl3300733358_
                           ___splice4147041471_
                           _target3300833361_
                           _tl3301033364_)
                    (letrec ((_loop3301133367_
                              (lambda (_hd3300933371_ _body3301533374_)
                                (if (gx#stx-pair? _hd3300933371_)
                                    (let ((_e3301233377_
                                           (gx#syntax-e _hd3300933371_)))
                                      (let ((_lp-tl3301433384_
                                             (##cdr _e3301233377_))
                                            (_lp-hd3301333381_
                                             (##car _e3301233377_)))
                                        (_loop3301133367_
                                         _lp-tl3301433384_
                                         (cons _lp-hd3301333381_
                                               _body3301533374_))))
                                    (let ((_body3301633387_
                                           (reverse _body3301533374_)))
                                      (___kont4146841469_
                                       _body3301633387_))))))
                      (_loop3301133367_ _target3300833361_ '())))))
            (if (gx#stx-pair? ___stx4146541466_)
                (let ((_e3300233341_ (gx#syntax-e ___stx4146541466_)))
                  (let ((_tl3300433348_ (##cdr _e3300233341_))
                        (_hd3300333345_ (##car _e3300233341_)))
                    (if (gx#stx-pair? _tl3300433348_)
                        (let ((_e3300533351_ (gx#syntax-e _tl3300433348_)))
                          (let ((_tl3300733358_ (##cdr _e3300533351_))
                                (_hd3300633355_ (##car _e3300533351_)))
                            (if (gx#stx-null? _hd3300633355_)
                                (if (gx#stx-pair/null? _tl3300733358_)
                                    (let ((___splice4147041471_
                                           (gx#syntax-split-splice
                                            _tl3300733358_
                                            '0)))
                                      (let ((_tl3301033364_
                                             (##vector-ref
                                              ___splice4147041471_
                                              '1))
                                            (_target3300833361_
                                             (##vector-ref
                                              ___splice4147041471_
                                              '0)))
                                        (if (gx#stx-null? _tl3301033364_)
                                            (___match4150041501_
                                             _e3300233341_
                                             _hd3300333345_
                                             _tl3300433348_
                                             _e3300533351_
                                             _hd3300633355_
                                             _tl3300733358_
                                             ___splice4147041471_
                                             _target3300833361_
                                             _tl3301033364_)
                                            (if (gx#stx-pair/null?
                                                 _hd3300633355_)
                                                (let ((___splice4147441475_
                                                       (gx#syntax-split-splice
                                                        _hd3300633355_
                                                        '0)))
                                                  (let ((_tl3302833087_
                                                         (##vector-ref
                                                          ___splice4147441475_
                                                          '1))
                                                        (_target3302633084_
                                                         (##vector-ref
                                                          ___splice4147441475_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3302833087_)
                                                        (___match4152041521_
                                                         _e3300233341_
                                                         _hd3300333345_
                                                         _tl3300433348_
                                                         _e3300533351_
                                                         _hd3300633355_
                                                         _tl3300733358_
                                                         ___splice4147441475_
                                                         _target3302633084_
                                                         _tl3302833087_)
                                                        (_g3299933057_))))
                                                (_g3299933057_)))))
                                    (if (gx#stx-pair/null? _hd3300633355_)
                                        (let ((___splice4147441475_
                                               (gx#syntax-split-splice
                                                _hd3300633355_
                                                '0)))
                                          (let ((_tl3302833087_
                                                 (##vector-ref
                                                  ___splice4147441475_
                                                  '1))
                                                (_target3302633084_
                                                 (##vector-ref
                                                  ___splice4147441475_
                                                  '0)))
                                            (if (gx#stx-null? _tl3302833087_)
                                                (___match4152041521_
                                                 _e3300233341_
                                                 _hd3300333345_
                                                 _tl3300433348_
                                                 _e3300533351_
                                                 _hd3300633355_
                                                 _tl3300733358_
                                                 ___splice4147441475_
                                                 _target3302633084_
                                                 _tl3302833087_)
                                                (_g3299933057_))))
                                        (_g3299933057_)))
                                (if (gx#stx-pair/null? _hd3300633355_)
                                    (let ((___splice4147441475_
                                           (gx#syntax-split-splice
                                            _hd3300633355_
                                            '0)))
                                      (let ((_tl3302833087_
                                             (##vector-ref
                                              ___splice4147441475_
                                              '1))
                                            (_target3302633084_
                                             (##vector-ref
                                              ___splice4147441475_
                                              '0)))
                                        (if (gx#stx-null? _tl3302833087_)
                                            (___match4152041521_
                                             _e3300233341_
                                             _hd3300333345_
                                             _tl3300433348_
                                             _e3300533351_
                                             _hd3300633355_
                                             _tl3300733358_
                                             ___splice4147441475_
                                             _target3302633084_
                                             _tl3302833087_)
                                            (_g3299933057_))))
                                    (_g3299933057_)))))
                        (_g3299933057_))))
                (_g3299933057_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33424_)
      (let* ((_g3342833452_
              (lambda (_g3342933448_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3342933448_)))
             (_g3342733537_
              (lambda (_g3342933456_)
                (if (gx#stx-pair? _g3342933456_)
                    (let ((_e3343233459_ (gx#syntax-e _g3342933456_)))
                      (let ((_hd3343333463_ (##car _e3343233459_))
                            (_tl3343433466_ (##cdr _e3343233459_)))
                        (if (gx#stx-pair? _tl3343433466_)
                            (let ((_e3343533469_ (gx#syntax-e _tl3343433466_)))
                              (let ((_hd3343633473_ (##car _e3343533469_))
                                    (_tl3343733476_ (##cdr _e3343533469_)))
                                (if (gx#stx-pair/null? _tl3343733476_)
                                    (let ((_g41953_
                                           (gx#syntax-split-splice
                                            _tl3343733476_
                                            '0)))
                                      (begin
                                        (let ((_g41954_
                                               (if (##values? _g41953_)
                                                   (##vector-length _g41953_)
                                                   1)))
                                          (if (not (##fx= _g41954_ 2))
                                              (error "Context expects 2 values"
                                                     _g41954_)))
                                        (let ((_target3343833479_
                                               (##vector-ref _g41953_ 0))
                                              (_tl3344033482_
                                               (##vector-ref _g41953_ 1)))
                                          (if (gx#stx-null? _tl3344033482_)
                                              (letrec ((_loop3344133485_
                                                        (lambda (_hd3343933489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3344533492_)
                  (if (gx#stx-pair? _hd3343933489_)
                      (let ((_e3344233495_ (gx#syntax-e _hd3343933489_)))
                        (let ((_lp-hd3344333499_ (##car _e3344233495_))
                              (_lp-tl3344433502_ (##cdr _e3344233495_)))
                          (_loop3344133485_
                           _lp-tl3344433502_
                           (cons _lp-hd3344333499_ _body3344533492_))))
                      (let ((_body3344633505_ (reverse _body3344533492_)))
                        ((lambda (_L33509_ _L33511_)
                           (if (gx#identifier? _L33511_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33511_ '())
                                                       (foldr (lambda (_g3352833531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3352933534_)
                        (cons _g3352833531_ _g3352933534_))
                      '()
                      _L33509_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3342833452_ _g3342933456_)))
                         _body3344633505_
                         _hd3343633473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3344133485_
                                                 _target3343833479_
                                                 '()))
                                              (_g3342833452_ _g3342933456_)))))
                                    (_g3342833452_ _g3342933456_))))
                            (_g3342833452_ _g3342933456_))))
                    (_g3342833452_ _g3342933456_)))))
        (_g3342733537_ _$stx33424_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33542_)
      (let* ((_g3354633570_
              (lambda (_g3354733566_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3354733566_)))
             (_g3354533655_
              (lambda (_g3354733574_)
                (if (gx#stx-pair? _g3354733574_)
                    (let ((_e3355033577_ (gx#syntax-e _g3354733574_)))
                      (let ((_hd3355133581_ (##car _e3355033577_))
                            (_tl3355233584_ (##cdr _e3355033577_)))
                        (if (gx#stx-pair? _tl3355233584_)
                            (let ((_e3355333587_ (gx#syntax-e _tl3355233584_)))
                              (let ((_hd3355433591_ (##car _e3355333587_))
                                    (_tl3355533594_ (##cdr _e3355333587_)))
                                (if (gx#stx-pair/null? _tl3355533594_)
                                    (let ((_g41955_
                                           (gx#syntax-split-splice
                                            _tl3355533594_
                                            '0)))
                                      (begin
                                        (let ((_g41956_
                                               (if (##values? _g41955_)
                                                   (##vector-length _g41955_)
                                                   1)))
                                          (if (not (##fx= _g41956_ 2))
                                              (error "Context expects 2 values"
                                                     _g41956_)))
                                        (let ((_target3355633597_
                                               (##vector-ref _g41955_ 0))
                                              (_tl3355833600_
                                               (##vector-ref _g41955_ 1)))
                                          (if (gx#stx-null? _tl3355833600_)
                                              (letrec ((_loop3355933603_
                                                        (lambda (_hd3355733607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3356333610_)
                  (if (gx#stx-pair? _hd3355733607_)
                      (let ((_e3356033613_ (gx#syntax-e _hd3355733607_)))
                        (let ((_lp-hd3356133617_ (##car _e3356033613_))
                              (_lp-tl3356233620_ (##cdr _e3356033613_)))
                          (_loop3355933603_
                           _lp-tl3356233620_
                           (cons _lp-hd3356133617_ _body3356333610_))))
                      (let ((_body3356433623_ (reverse _body3356333610_)))
                        ((lambda (_L33627_ _L33629_)
                           (if (gx#identifier? _L33629_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33629_ '())
                                                       (foldr (lambda (_g3364633649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3364733652_)
                        (cons _g3364633649_ _g3364733652_))
                      '()
                      _L33627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3354633570_ _g3354733574_)))
                         _body3356433623_
                         _hd3355433591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3355933603_
                                                 _target3355633597_
                                                 '()))
                                              (_g3354633570_ _g3354733574_)))))
                                    (_g3354633570_ _g3354733574_))))
                            (_g3354633570_ _g3354733574_))))
                    (_g3354633570_ _g3354733574_)))))
        (_g3354533655_ _$stx33542_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33660_)
      (let* ((_g3366433692_
              (lambda (_g3366533688_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3366533688_)))
             (_g3366333791_
              (lambda (_g3366533696_)
                (if (gx#stx-pair? _g3366533696_)
                    (let ((_e3366933699_ (gx#syntax-e _g3366533696_)))
                      (let ((_hd3367033703_ (##car _e3366933699_))
                            (_tl3367133706_ (##cdr _e3366933699_)))
                        (if (gx#stx-pair? _tl3367133706_)
                            (let ((_e3367233709_ (gx#syntax-e _tl3367133706_)))
                              (let ((_hd3367333713_ (##car _e3367233709_))
                                    (_tl3367433716_ (##cdr _e3367233709_)))
                                (if (gx#stx-pair? _tl3367433716_)
                                    (let ((_e3367533719_
                                           (gx#syntax-e _tl3367433716_)))
                                      (let ((_hd3367633723_
                                             (##car _e3367533719_))
                                            (_tl3367733726_
                                             (##cdr _e3367533719_)))
                                        (if (gx#stx-pair/null? _tl3367733726_)
                                            (let ((_g41957_
                                                   (gx#syntax-split-splice
                                                    _tl3367733726_
                                                    '0)))
                                              (begin
                                                (let ((_g41958_
                                                       (if (##values? _g41957_)
                                                           (##vector-length
                                                            _g41957_)
                                                           1)))
                                                  (if (not (##fx= _g41958_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41958_)))
                                                (let ((_target3367833729_
                                                       (##vector-ref
                                                        _g41957_
                                                        0))
                                                      (_tl3368033732_
                                                       (##vector-ref
                                                        _g41957_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3368033732_)
                                                      (letrec ((_loop3368133735_
                                                                (lambda (_hd3367933739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3368533742_)
                          (if (gx#stx-pair? _hd3367933739_)
                              (let ((_e3368233745_
                                     (gx#syntax-e _hd3367933739_)))
                                (let ((_lp-hd3368333749_ (##car _e3368233745_))
                                      (_lp-tl3368433752_
                                       (##cdr _e3368233745_)))
                                  (_loop3368133735_
                                   _lp-tl3368433752_
                                   (cons _lp-hd3368333749_ _rest3368533742_))))
                              (let ((_rest3368633755_
                                     (reverse _rest3368533742_)))
                                ((lambda (_L33759_ _L33761_ _L33762_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33761_
                               (foldr (lambda (_g3378233785_ _g3378333788_)
                                        (cons _g3378233785_ _g3378333788_))
                                      '()
                                      _L33759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3368633755_
                                 _hd3367633723_
                                 _hd3367333713_))))))
                (_loop3368133735_ _target3367833729_ '()))
              (_g3366433692_ _g3366533696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3366433692_ _g3366533696_))))
                                    (_g3366433692_ _g3366533696_))))
                            (_g3366433692_ _g3366533696_))))
                    (_g3366433692_ _g3366533696_)))))
        (_g3366333791_ _$stx33660_)))))
