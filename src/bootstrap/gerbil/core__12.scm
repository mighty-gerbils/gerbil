(declare (block) (standard-bindings) (extended-bindings))
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
    (lambda _$args31841_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31841_)))
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
    (lambda _$args31837_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31837_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31834_)
      (if (gx#identifier? _stx31834_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31834_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31831_)
      (if (gx#identifier? _stx31831_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31831_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31845_)
      (let* ((___stx4065440655_ _stx31845_)
             (_g3185131910_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4065440655_))))
        (let ((___kont4065740658_
               (lambda (_L32183_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32183_)
                  _stx31845_)))
              (___kont4065940660_
               (lambda (_L32082_ _L32084_ _L32085_)
                 (let* ((_g3210732115_
                         (lambda (_g3210832111_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3210832111_)))
                        (_g3210632142_
                         (lambda (_g3210832119_)
                           ((lambda (_L32122_)
                              (let ()
                                (cons _L32122_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3213332136_
                                                        _g3213432139_)
                                                 (cons _g3213332136_
                                                       _g3213432139_))
                                               (cons _L32082_ '())
                                               _L32084_)))))
                            _g3210832119_))))
                   (_g3210632142_
                    (gx#stx-identifier _L32085_ _L32085_ '"-set!")))))
              (___kont4066340664_
               (lambda (_L31992_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L31992_)
                  _stx31845_)))
              (___kont4066540666_
               (lambda (_L31947_ _L31949_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L31949_ (cons _L31947_ '()))))))
          (let* ((___match4074540746_
                  (lambda (_e3189631917_
                           _hd3189731921_
                           _tl3189831924_
                           _e3189931927_
                           _hd3190031931_
                           _tl3190131934_
                           _e3190231937_
                           _hd3190331941_
                           _tl3190431944_)
                    (let ((_L31947_ _hd3190331941_) (_L31949_ _hd3190031931_))
                      (if (gx#identifier? _L31949_)
                          (___kont4066540666_ _L31947_ _L31949_)
                          (_g3185131910_)))))
                 (___match4072540726_
                  (lambda (_e3188831972_
                           _hd3188931976_
                           _tl3189031979_
                           _e3189131982_
                           _hd3189231986_
                           _tl3189331989_)
                    (let ((_L31992_ _hd3189231986_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L31992_)
                          (___kont4066340664_ _L31992_)
                          (if (gx#stx-pair? _tl3189331989_)
                              (let ((_e3190231937_
                                     (gx#syntax-e _tl3189331989_)))
                                (let ((_tl3190431944_ (##cdr _e3190231937_))
                                      (_hd3190331941_ (##car _e3190231937_)))
                                  (if (gx#stx-null? _tl3190431944_)
                                      (___match4074540746_
                                       _e3188831972_
                                       _hd3188931976_
                                       _tl3189031979_
                                       _e3189131982_
                                       _hd3189231986_
                                       _tl3189331989_
                                       _e3190231937_
                                       _hd3190331941_
                                       _tl3190431944_)
                                      (_g3185131910_))))
                              (_g3185131910_))))))
                 (___match4071340714_
                  (lambda (_e3186632012_
                           _hd3186732016_
                           _tl3186832019_
                           _e3186932022_
                           _hd3187032026_
                           _tl3187132029_
                           _e3187232032_
                           _hd3187332036_
                           _tl3187432039_
                           ___splice4066140662_
                           _target3187532042_
                           _tl3187732045_)
                    (letrec ((_loop3187832048_
                              (lambda (_hd3187632052_ _arg3188232055_)
                                (if (gx#stx-pair? _hd3187632052_)
                                    (let ((_e3187932058_
                                           (gx#syntax-e _hd3187632052_)))
                                      (let ((_lp-tl3188132065_
                                             (##cdr _e3187932058_))
                                            (_lp-hd3188032062_
                                             (##car _e3187932058_)))
                                        (_loop3187832048_
                                         _lp-tl3188132065_
                                         (cons _lp-hd3188032062_
                                               _arg3188232055_))))
                                    (let ((_arg3188332068_
                                           (reverse _arg3188232055_)))
                                      (if (gx#stx-pair? _tl3187132029_)
                                          (let ((_e3188432072_
                                                 (gx#syntax-e _tl3187132029_)))
                                            (let ((_tl3188632079_
                                                   (##cdr _e3188432072_))
                                                  (_hd3188532076_
                                                   (##car _e3188432072_)))
                                              (if (gx#stx-null? _tl3188632079_)
                                                  (let ((_L32082_
                                                         _hd3188532076_)
                                                        (_L32084_
                                                         _arg3188332068_)
                                                        (_L32085_
                                                         _hd3187332036_))
                                                    (if (gx#identifier?
                                                         _L32085_)
                                                        (___kont4065940660_
                                                         _L32082_
                                                         _L32084_
                                                         _L32085_)
                                                        (___match4072540726_
                                                         _e3186632012_
                                                         _hd3186732016_
                                                         _tl3186832019_
                                                         _e3186932022_
                                                         _hd3187032026_
                                                         _tl3187132029_)))
                                                  (___match4072540726_
                                                   _e3186632012_
                                                   _hd3186732016_
                                                   _tl3186832019_
                                                   _e3186932022_
                                                   _hd3187032026_
                                                   _tl3187132029_))))
                                          (___match4072540726_
                                           _e3186632012_
                                           _hd3186732016_
                                           _tl3186832019_
                                           _e3186932022_
                                           _hd3187032026_
                                           _tl3187132029_)))))))
                      (_loop3187832048_ _target3187532042_ '())))))
            (if (gx#stx-pair? ___stx4065440655_)
                (let ((_e3185432153_ (gx#syntax-e ___stx4065440655_)))
                  (let ((_tl3185632160_ (##cdr _e3185432153_))
                        (_hd3185532157_ (##car _e3185432153_)))
                    (if (gx#stx-pair? _tl3185632160_)
                        (let ((_e3185732163_ (gx#syntax-e _tl3185632160_)))
                          (let ((_tl3185932170_ (##cdr _e3185732163_))
                                (_hd3185832167_ (##car _e3185732163_)))
                            (if (gx#stx-pair? _hd3185832167_)
                                (let ((_e3186032173_
                                       (gx#syntax-e _hd3185832167_)))
                                  (let ((_tl3186232180_ (##cdr _e3186032173_))
                                        (_hd3186132177_ (##car _e3186032173_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32183_ _hd3186132177_))
                                          (___kont4065740658_ _L32183_))
                                        (if (gx#stx-pair/null? _tl3186232180_)
                                            (let ((___splice4066140662_
                                                   (gx#syntax-split-splice
                                                    _tl3186232180_
                                                    '0)))
                                              (let ((_tl3187732045_
                                                     (##vector-ref
                                                      ___splice4066140662_
                                                      '1))
                                                    (_target3187532042_
                                                     (##vector-ref
                                                      ___splice4066140662_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3187732045_)
                                                    (___match4071340714_
                                                     _e3185432153_
                                                     _hd3185532157_
                                                     _tl3185632160_
                                                     _e3185732163_
                                                     _hd3185832167_
                                                     _tl3185932170_
                                                     _e3186032173_
                                                     _hd3186132177_
                                                     _tl3186232180_
                                                     ___splice4066140662_
                                                     _target3187532042_
                                                     _tl3187732045_)
                                                    (___match4072540726_
                                                     _e3185432153_
                                                     _hd3185532157_
                                                     _tl3185632160_
                                                     _e3185732163_
                                                     _hd3185832167_
                                                     _tl3185932170_))))
                                            (___match4072540726_
                                             _e3185432153_
                                             _hd3185532157_
                                             _tl3185632160_
                                             _e3185732163_
                                             _hd3185832167_
                                             _tl3185932170_)))))
                                (___match4072540726_
                                 _e3185432153_
                                 _hd3185532157_
                                 _tl3185632160_
                                 _e3185732163_
                                 _hd3185832167_
                                 _tl3185932170_))))
                        (_g3185131910_))))
                (_g3185131910_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32203_)
      (let* ((_g3220632230_
              (lambda (_g3220732226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3220732226_)))
             (_g3220532408_
              (lambda (_g3220732234_)
                (if (gx#stx-pair? _g3220732234_)
                    (let ((_e3221032237_ (gx#syntax-e _g3220732234_)))
                      (let ((_hd3221132241_ (##car _e3221032237_))
                            (_tl3221232244_ (##cdr _e3221032237_)))
                        (if (gx#stx-pair/null? _tl3221232244_)
                            (if (fx>= (gx#stx-length _tl3221232244_) '1)
                                (let ((_g41254_
                                       (gx#syntax-split-splice
                                        _tl3221232244_
                                        '1)))
                                  (begin
                                    (let ((_g41255_
                                           (if (##values? _g41254_)
                                               (##vector-length _g41254_)
                                               1)))
                                      (if (not (##fx= _g41255_ 2))
                                          (error "Context expects 2 values"
                                                 _g41255_)))
                                    (let ((_target3221332247_
                                           (##vector-ref _g41254_ 0))
                                          (_tl3221532250_
                                           (##vector-ref _g41254_ 1)))
                                      (if (gx#stx-pair? _tl3221532250_)
                                          (let ((_e3222232253_
                                                 (gx#syntax-e _tl3221532250_)))
                                            (let ((_hd3222332257_
                                                   (##car _e3222232253_))
                                                  (_tl3222432260_
                                                   (##cdr _e3222232253_)))
                                              (if (gx#stx-null? _tl3222432260_)
                                                  (letrec ((_loop3221632263_
                                                            (lambda (_hd3221432267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3222032270_)
                      (if (gx#stx-pair? _hd3221432267_)
                          (let ((_e3221732273_ (gx#syntax-e _hd3221432267_)))
                            (let ((_lp-hd3221832277_ (##car _e3221732273_))
                                  (_lp-tl3221932280_ (##cdr _e3221732273_)))
                              (_loop3221632263_
                               _lp-tl3221932280_
                               (cons _lp-hd3221832277_ _tgt3222032270_))))
                          (let ((_tgt3222132283_ (reverse _tgt3222032270_)))
                            ((lambda (_L32287_ _L32289_)
                               (let* ((_g3230732324_
                                       (lambda (_g3230832320_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3230832320_)))
                                      (_g3230632396_
                                       (lambda (_g3230832328_)
                                         (if (gx#stx-pair/null? _g3230832328_)
                                             (let ((_g41256_
                                                    (gx#syntax-split-splice
                                                     _g3230832328_
                                                     '0)))
                                               (begin
                                                 (let ((_g41257_
                                                        (if (##values?
                                                             _g41256_)
                                                            (##vector-length
                                                             _g41256_)
                                                            1)))
                                                   (if (not (##fx= _g41257_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41257_)))
                                                 (let ((_target3231032331_
                                                        (##vector-ref
                                                         _g41256_
                                                         0))
                                                       (_tl3231232334_
                                                        (##vector-ref
                                                         _g41256_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3231232334_)
                                                       (letrec ((_loop3231332337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3231132341_ _$e3231732344_)
                           (if (gx#stx-pair? _hd3231132341_)
                               (let ((_e3231432347_
                                      (gx#syntax-e _hd3231132341_)))
                                 (let ((_lp-hd3231532351_
                                        (##car _e3231432347_))
                                       (_lp-tl3231632354_
                                        (##cdr _e3231432347_)))
                                   (_loop3231332337_
                                    _lp-tl3231632354_
                                    (cons _lp-hd3231532351_ _$e3231732344_))))
                               (let ((_$e3231832357_ (reverse _$e3231732344_)))
                                 ((lambda (_L32361_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g3237632382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g3237732385_)
                                 (cons _g3237632382_ _g3237732385_))
                               '()
                               _L32361_))
                      (cons _L32287_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32361_
                                                     _L32289_)
                                                    (foldr (lambda (_g3237832388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3237932391_
                            _g3238032393_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3237932391_ (cons _g3237832388_ '())))
                           _g3238032393_))
                   '()
                   _L32361_
                   _L32289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3231832357_))))))
                 (_loop3231332337_ _target3231032331_ '()))
               (_g3230732324_ _g3230832328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3230732324_ _g3230832328_)))))
                                 (_g3230632396_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3239932402_
                                                     _g3240032405_)
                                              (cons _g3239932402_
                                                    _g3240032405_))
                                            '()
                                            _L32289_))))))
                             _hd3222332257_
                             _tgt3222132283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3221632263_
                                                     _target3221332247_
                                                     '()))
                                                  (_g3220632230_
                                                   _g3220732234_))))
                                          (_g3220632230_ _g3220732234_)))))
                                (_g3220632230_ _g3220732234_))
                            (_g3220632230_ _g3220732234_))))
                    (_g3220632230_ _g3220732234_)))))
        (_g3220532408_ _stx32203_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32414_)
      (let* ((___stx4074840749_ _stx32414_)
             (_g3241832476_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4074840749_))))
        (let ((___kont4075140752_
               (lambda (_L32810_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (begin
                               '#!void
                               (foldr (lambda (_g3282632829_ _g3282732832_)
                                        (cons _g3282632829_ _g3282732832_))
                                      '()
                                      _L32810_))))))
              (___kont4075540756_
               (lambda (_L32587_ _L32589_ _L32590_)
                 (let* ((_g3261332621_
                         (lambda (_g3261432617_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3261432617_)))
                        (_g3261232741_
                         (lambda (_g3261432625_)
                           ((lambda (_L32628_)
                              (let ()
                                (let* ((_g3264032657_
                                        (lambda (_g3264132653_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3264132653_)))
                                       (_g3263932721_
                                        (lambda (_g3264132661_)
                                          (if (gx#stx-pair/null? _g3264132661_)
                                              (let ((_g41258_
                                                     (gx#syntax-split-splice
                                                      _g3264132661_
                                                      '0)))
                                                (begin
                                                  (let ((_g41259_
                                                         (if (##values?
                                                              _g41258_)
                                                             (##vector-length
                                                              _g41258_)
                                                             1)))
                                                    (if (not (##fx= _g41259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41259_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3264332664_
                                                         (##vector-ref
                                                          _g41258_
                                                          0))
                                                        (_tl3264532667_
                                                         (##vector-ref
                                                          _g41258_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3264532667_)
                                                        (letrec ((_loop3264632670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3264432674_ _arg3265032677_)
                            (if (gx#stx-pair? _hd3264432674_)
                                (let ((_e3264732680_
                                       (gx#syntax-e _hd3264432674_)))
                                  (let ((_lp-hd3264832684_
                                         (##car _e3264732680_))
                                        (_lp-tl3264932687_
                                         (##cdr _e3264732680_)))
                                    (_loop3264632670_
                                     _lp-tl3264932687_
                                     (cons _lp-hd3264832684_
                                           _arg3265032677_))))
                                (let ((_arg3265132690_
                                       (reverse _arg3265032677_)))
                                  ((lambda (_L32694_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L32628_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3271232715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3271332718_)
                        (cons _g3271232715_ _g3271332718_))
                      '()
                      _L32694_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3265132690_))))))
                  (_loop3264632670_ _target3264332664_ '()))
                (_g3264032657_ _g3264132661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3264032657_ _g3264132661_)))))
                                  (_g3263932721_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3272432727_
                                                             _g3272532730_)
                                                      (cons _g3272432727_
                                                            _g3272532730_))
                                                    '()
                                                    _L32590_)))
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3273232735_
                                                             _g3273332738_)
                                                      (cons _g3273232735_
                                                            _g3273332738_))
                                                    '()
                                                    _L32589_))))))))
                            _g3261432625_))))
                   (_g3261232741_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g3274432747_ _g3274532750_)
                                            (cons _g3274432747_ _g3274532750_))
                                          '()
                                          _L32587_))))
                     (gx#stx-source _stx32414_)))))))
          (let* ((___match4080340804_
                  (lambda (_e3243932483_
                           _hd3244032487_
                           _tl3244132490_
                           _e3244232493_
                           _hd3244332497_
                           _tl3244432500_
                           ___splice4075740758_
                           _target3244532503_
                           _tl3244732506_)
                    (letrec ((_loop3244832509_
                              (lambda (_hd3244632513_
                                       _expr3245232516_
                                       _param3245332518_)
                                (if (gx#stx-pair? _hd3244632513_)
                                    (let ((_e3244932521_
                                           (gx#syntax-e _hd3244632513_)))
                                      (let ((_lp-tl3245132528_
                                             (##cdr _e3244932521_))
                                            (_lp-hd3245032525_
                                             (##car _e3244932521_)))
                                        (if (gx#stx-pair? _lp-hd3245032525_)
                                            (let ((_e3245632531_
                                                   (gx#syntax-e
                                                    _lp-hd3245032525_)))
                                              (let ((_tl3245832538_
                                                     (##cdr _e3245632531_))
                                                    (_hd3245732535_
                                                     (##car _e3245632531_)))
                                                (if (gx#stx-pair?
                                                     _tl3245832538_)
                                                    (let ((_e3245932541_
                                                           (gx#syntax-e
                                                            _tl3245832538_)))
                                                      (let ((_tl3246132548_
                                                             (##cdr _e3245932541_))
                                                            (_hd3246032545_
                                                             (##car _e3245932541_)))
                                                        (if (gx#stx-null?
                                                             _tl3246132548_)
                                                            (_loop3244832509_
                                                             _lp-tl3245132528_
                                                             (cons _hd3246032545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3245232516_)
                     (cons _hd3245732535_ _param3245332518_))
                    (_g3241832476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3241832476_))))
                                            (_g3241832476_))))
                                    (let ((_param3245532554_
                                           (reverse _param3245332518_))
                                          (_expr3245432551_
                                           (reverse _expr3245232516_)))
                                      (if (gx#stx-pair/null? _tl3244432500_)
                                          (let ((___splice4075940760_
                                                 (gx#syntax-split-splice
                                                  _tl3244432500_
                                                  '0)))
                                            (let ((_tl3246432560_
                                                   (##vector-ref
                                                    ___splice4075940760_
                                                    '1))
                                                  (_target3246232557_
                                                   (##vector-ref
                                                    ___splice4075940760_
                                                    '0)))
                                              (if (gx#stx-null? _tl3246432560_)
                                                  (letrec ((_loop3246532563_
                                                            (lambda (_hd3246332567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3246932570_)
                      (if (gx#stx-pair? _hd3246332567_)
                          (let ((_e3246632573_ (gx#syntax-e _hd3246332567_)))
                            (let ((_lp-tl3246832580_ (##cdr _e3246632573_))
                                  (_lp-hd3246732577_ (##car _e3246632573_)))
                              (_loop3246532563_
                               _lp-tl3246832580_
                               (cons _lp-hd3246732577_ _body3246932570_))))
                          (let ((_body3247032583_ (reverse _body3246932570_)))
                            (___kont4075540756_
                             _body3247032583_
                             _expr3245432551_
                             _param3245532554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3246532563_
                                                     _target3246232557_
                                                     '()))
                                                  (_g3241832476_))))
                                          (_g3241832476_)))))))
                      (_loop3244832509_ _target3244532503_ '() '()))))
                 (___match4078340784_
                  (lambda (_e3242132760_
                           _hd3242232764_
                           _tl3242332767_
                           _e3242432770_
                           _hd3242532774_
                           _tl3242632777_
                           ___splice4075340754_
                           _target3242732780_
                           _tl3242932783_)
                    (letrec ((_loop3243032786_
                              (lambda (_hd3242832790_ _body3243432793_)
                                (if (gx#stx-pair? _hd3242832790_)
                                    (let ((_e3243132796_
                                           (gx#syntax-e _hd3242832790_)))
                                      (let ((_lp-tl3243332803_
                                             (##cdr _e3243132796_))
                                            (_lp-hd3243232800_
                                             (##car _e3243132796_)))
                                        (_loop3243032786_
                                         _lp-tl3243332803_
                                         (cons _lp-hd3243232800_
                                               _body3243432793_))))
                                    (let ((_body3243532806_
                                           (reverse _body3243432793_)))
                                      (___kont4075140752_
                                       _body3243532806_))))))
                      (_loop3243032786_ _target3242732780_ '())))))
            (if (gx#stx-pair? ___stx4074840749_)
                (let ((_e3242132760_ (gx#syntax-e ___stx4074840749_)))
                  (let ((_tl3242332767_ (##cdr _e3242132760_))
                        (_hd3242232764_ (##car _e3242132760_)))
                    (if (gx#stx-pair? _tl3242332767_)
                        (let ((_e3242432770_ (gx#syntax-e _tl3242332767_)))
                          (let ((_tl3242632777_ (##cdr _e3242432770_))
                                (_hd3242532774_ (##car _e3242432770_)))
                            (if (gx#stx-null? _hd3242532774_)
                                (if (gx#stx-pair/null? _tl3242632777_)
                                    (let ((___splice4075340754_
                                           (gx#syntax-split-splice
                                            _tl3242632777_
                                            '0)))
                                      (let ((_tl3242932783_
                                             (##vector-ref
                                              ___splice4075340754_
                                              '1))
                                            (_target3242732780_
                                             (##vector-ref
                                              ___splice4075340754_
                                              '0)))
                                        (if (gx#stx-null? _tl3242932783_)
                                            (___match4078340784_
                                             _e3242132760_
                                             _hd3242232764_
                                             _tl3242332767_
                                             _e3242432770_
                                             _hd3242532774_
                                             _tl3242632777_
                                             ___splice4075340754_
                                             _target3242732780_
                                             _tl3242932783_)
                                            (if (gx#stx-pair/null?
                                                 _hd3242532774_)
                                                (let ((___splice4075740758_
                                                       (gx#syntax-split-splice
                                                        _hd3242532774_
                                                        '0)))
                                                  (let ((_tl3244732506_
                                                         (##vector-ref
                                                          ___splice4075740758_
                                                          '1))
                                                        (_target3244532503_
                                                         (##vector-ref
                                                          ___splice4075740758_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3244732506_)
                                                        (___match4080340804_
                                                         _e3242132760_
                                                         _hd3242232764_
                                                         _tl3242332767_
                                                         _e3242432770_
                                                         _hd3242532774_
                                                         _tl3242632777_
                                                         ___splice4075740758_
                                                         _target3244532503_
                                                         _tl3244732506_)
                                                        (_g3241832476_))))
                                                (_g3241832476_)))))
                                    (if (gx#stx-pair/null? _hd3242532774_)
                                        (let ((___splice4075740758_
                                               (gx#syntax-split-splice
                                                _hd3242532774_
                                                '0)))
                                          (let ((_tl3244732506_
                                                 (##vector-ref
                                                  ___splice4075740758_
                                                  '1))
                                                (_target3244532503_
                                                 (##vector-ref
                                                  ___splice4075740758_
                                                  '0)))
                                            (if (gx#stx-null? _tl3244732506_)
                                                (___match4080340804_
                                                 _e3242132760_
                                                 _hd3242232764_
                                                 _tl3242332767_
                                                 _e3242432770_
                                                 _hd3242532774_
                                                 _tl3242632777_
                                                 ___splice4075740758_
                                                 _target3244532503_
                                                 _tl3244732506_)
                                                (_g3241832476_))))
                                        (_g3241832476_)))
                                (if (gx#stx-pair/null? _hd3242532774_)
                                    (let ((___splice4075740758_
                                           (gx#syntax-split-splice
                                            _hd3242532774_
                                            '0)))
                                      (let ((_tl3244732506_
                                             (##vector-ref
                                              ___splice4075740758_
                                              '1))
                                            (_target3244532503_
                                             (##vector-ref
                                              ___splice4075740758_
                                              '0)))
                                        (if (gx#stx-null? _tl3244732506_)
                                            (___match4080340804_
                                             _e3242132760_
                                             _hd3242232764_
                                             _tl3242332767_
                                             _e3242432770_
                                             _hd3242532774_
                                             _tl3242632777_
                                             ___splice4075740758_
                                             _target3244532503_
                                             _tl3244732506_)
                                            (_g3241832476_))))
                                    (_g3241832476_)))))
                        (_g3241832476_))))
                (_g3241832476_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32843_)
      (let* ((_g3284732871_
              (lambda (_g3284832867_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3284832867_)))
             (_g3284632956_
              (lambda (_g3284832875_)
                (if (gx#stx-pair? _g3284832875_)
                    (let ((_e3285132878_ (gx#syntax-e _g3284832875_)))
                      (let ((_hd3285232882_ (##car _e3285132878_))
                            (_tl3285332885_ (##cdr _e3285132878_)))
                        (if (gx#stx-pair? _tl3285332885_)
                            (let ((_e3285432888_ (gx#syntax-e _tl3285332885_)))
                              (let ((_hd3285532892_ (##car _e3285432888_))
                                    (_tl3285632895_ (##cdr _e3285432888_)))
                                (if (gx#stx-pair/null? _tl3285632895_)
                                    (let ((_g41260_
                                           (gx#syntax-split-splice
                                            _tl3285632895_
                                            '0)))
                                      (begin
                                        (let ((_g41261_
                                               (if (##values? _g41260_)
                                                   (##vector-length _g41260_)
                                                   1)))
                                          (if (not (##fx= _g41261_ 2))
                                              (error "Context expects 2 values"
                                                     _g41261_)))
                                        (let ((_target3285732898_
                                               (##vector-ref _g41260_ 0))
                                              (_tl3285932901_
                                               (##vector-ref _g41260_ 1)))
                                          (if (gx#stx-null? _tl3285932901_)
                                              (letrec ((_loop3286032904_
                                                        (lambda (_hd3285832908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3286432911_)
                  (if (gx#stx-pair? _hd3285832908_)
                      (let ((_e3286132914_ (gx#syntax-e _hd3285832908_)))
                        (let ((_lp-hd3286232918_ (##car _e3286132914_))
                              (_lp-tl3286332921_ (##cdr _e3286132914_)))
                          (_loop3286032904_
                           _lp-tl3286332921_
                           (cons _lp-hd3286232918_ _body3286432911_))))
                      (let ((_body3286532924_ (reverse _body3286432911_)))
                        ((lambda (_L32928_ _L32930_)
                           (if (gx#identifier? _L32930_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L32930_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3294732950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3294832953_)
                          (cons _g3294732950_ _g3294832953_))
                        '()
                        _L32928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3284732871_ _g3284832875_)))
                         _body3286532924_
                         _hd3285532892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3286032904_
                                                 _target3285732898_
                                                 '()))
                                              (_g3284732871_ _g3284832875_)))))
                                    (_g3284732871_ _g3284832875_))))
                            (_g3284732871_ _g3284832875_))))
                    (_g3284732871_ _g3284832875_)))))
        (_g3284632956_ _$stx32843_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32961_)
      (let* ((_g3296532989_
              (lambda (_g3296632985_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3296632985_)))
             (_g3296433074_
              (lambda (_g3296632993_)
                (if (gx#stx-pair? _g3296632993_)
                    (let ((_e3296932996_ (gx#syntax-e _g3296632993_)))
                      (let ((_hd3297033000_ (##car _e3296932996_))
                            (_tl3297133003_ (##cdr _e3296932996_)))
                        (if (gx#stx-pair? _tl3297133003_)
                            (let ((_e3297233006_ (gx#syntax-e _tl3297133003_)))
                              (let ((_hd3297333010_ (##car _e3297233006_))
                                    (_tl3297433013_ (##cdr _e3297233006_)))
                                (if (gx#stx-pair/null? _tl3297433013_)
                                    (let ((_g41262_
                                           (gx#syntax-split-splice
                                            _tl3297433013_
                                            '0)))
                                      (begin
                                        (let ((_g41263_
                                               (if (##values? _g41262_)
                                                   (##vector-length _g41262_)
                                                   1)))
                                          (if (not (##fx= _g41263_ 2))
                                              (error "Context expects 2 values"
                                                     _g41263_)))
                                        (let ((_target3297533016_
                                               (##vector-ref _g41262_ 0))
                                              (_tl3297733019_
                                               (##vector-ref _g41262_ 1)))
                                          (if (gx#stx-null? _tl3297733019_)
                                              (letrec ((_loop3297833022_
                                                        (lambda (_hd3297633026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3298233029_)
                  (if (gx#stx-pair? _hd3297633026_)
                      (let ((_e3297933032_ (gx#syntax-e _hd3297633026_)))
                        (let ((_lp-hd3298033036_ (##car _e3297933032_))
                              (_lp-tl3298133039_ (##cdr _e3297933032_)))
                          (_loop3297833022_
                           _lp-tl3298133039_
                           (cons _lp-hd3298033036_ _body3298233029_))))
                      (let ((_body3298333042_ (reverse _body3298233029_)))
                        ((lambda (_L33046_ _L33048_)
                           (if (gx#identifier? _L33048_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33048_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3306533068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3306633071_)
                          (cons _g3306533068_ _g3306633071_))
                        '()
                        _L33046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3296532989_ _g3296632993_)))
                         _body3298333042_
                         _hd3297333010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3297833022_
                                                 _target3297533016_
                                                 '()))
                                              (_g3296532989_ _g3296632993_)))))
                                    (_g3296532989_ _g3296632993_))))
                            (_g3296532989_ _g3296632993_))))
                    (_g3296532989_ _g3296632993_)))))
        (_g3296433074_ _$stx32961_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33079_)
      (let* ((_g3308333111_
              (lambda (_g3308433107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3308433107_)))
             (_g3308233210_
              (lambda (_g3308433115_)
                (if (gx#stx-pair? _g3308433115_)
                    (let ((_e3308833118_ (gx#syntax-e _g3308433115_)))
                      (let ((_hd3308933122_ (##car _e3308833118_))
                            (_tl3309033125_ (##cdr _e3308833118_)))
                        (if (gx#stx-pair? _tl3309033125_)
                            (let ((_e3309133128_ (gx#syntax-e _tl3309033125_)))
                              (let ((_hd3309233132_ (##car _e3309133128_))
                                    (_tl3309333135_ (##cdr _e3309133128_)))
                                (if (gx#stx-pair? _tl3309333135_)
                                    (let ((_e3309433138_
                                           (gx#syntax-e _tl3309333135_)))
                                      (let ((_hd3309533142_
                                             (##car _e3309433138_))
                                            (_tl3309633145_
                                             (##cdr _e3309433138_)))
                                        (if (gx#stx-pair/null? _tl3309633145_)
                                            (let ((_g41264_
                                                   (gx#syntax-split-splice
                                                    _tl3309633145_
                                                    '0)))
                                              (begin
                                                (let ((_g41265_
                                                       (if (##values? _g41264_)
                                                           (##vector-length
                                                            _g41264_)
                                                           1)))
                                                  (if (not (##fx= _g41265_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41265_)))
                                                (let ((_target3309733148_
                                                       (##vector-ref
                                                        _g41264_
                                                        0))
                                                      (_tl3309933151_
                                                       (##vector-ref
                                                        _g41264_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3309933151_)
                                                      (letrec ((_loop3310033154_
                                                                (lambda (_hd3309833158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3310433161_)
                          (if (gx#stx-pair? _hd3309833158_)
                              (let ((_e3310133164_
                                     (gx#syntax-e _hd3309833158_)))
                                (let ((_lp-hd3310233168_ (##car _e3310133164_))
                                      (_lp-tl3310333171_
                                       (##cdr _e3310133164_)))
                                  (_loop3310033154_
                                   _lp-tl3310333171_
                                   (cons _lp-hd3310233168_ _rest3310433161_))))
                              (let ((_rest3310533174_
                                     (reverse _rest3310433161_)))
                                ((lambda (_L33178_ _L33180_ _L33181_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33180_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3320133204_ _g3320233207_)
                                          (cons _g3320133204_ _g3320233207_))
                                        '()
                                        _L33178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3310533174_
                                 _hd3309533142_
                                 _hd3309233132_))))))
                (_loop3310033154_ _target3309733148_ '()))
              (_g3308333111_ _g3308433115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3308333111_ _g3308433115_))))
                                    (_g3308333111_ _g3308433115_))))
                            (_g3308333111_ _g3308433115_))))
                    (_g3308333111_ _g3308433115_)))))
        (_g3308233210_ _$stx33079_)))))
