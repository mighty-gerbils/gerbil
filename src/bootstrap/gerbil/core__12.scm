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
    (lambda _$args31993_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31993_)))
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
    (lambda _$args31989_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31989_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31986_)
      (if (gx#identifier? _stx31986_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31986_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31983_)
      (if (gx#identifier? _stx31983_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31983_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31997_)
      (let* ((___stx4083640837_ _stx31997_)
             (_g3200332062_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4083640837_))))
        (let ((___kont4083940840_
               (lambda (_L32335_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32335_)
                  _stx31997_)))
              (___kont4084140842_
               (lambda (_L32234_ _L32236_ _L32237_)
                 (let* ((_g3225932267_
                         (lambda (_g3226032263_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3226032263_)))
                        (_g3225832294_
                         (lambda (_g3226032271_)
                           ((lambda (_L32274_)
                              (let ()
                                (cons _L32274_
                                      (foldr (lambda (_g3228532288_
                                                      _g3228632291_)
                                               (cons _g3228532288_
                                                     _g3228632291_))
                                             (cons _L32234_ '())
                                             _L32236_))))
                            _g3226032271_))))
                   (_g3225832294_
                    (gx#stx-identifier _L32237_ _L32237_ '"-set!")))))
              (___kont4084540846_
               (lambda (_L32144_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32144_)
                  _stx31997_)))
              (___kont4084740848_
               (lambda (_L32099_ _L32101_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32101_ (cons _L32099_ '()))))))
          (let* ((___match4092740928_
                  (lambda (_e3204832069_
                           _hd3204932073_
                           _tl3205032076_
                           _e3205132079_
                           _hd3205232083_
                           _tl3205332086_
                           _e3205432089_
                           _hd3205532093_
                           _tl3205632096_)
                    (let ((_L32099_ _hd3205532093_) (_L32101_ _hd3205232083_))
                      (if (gx#identifier? _L32101_)
                          (___kont4084740848_ _L32099_ _L32101_)
                          (_g3200332062_)))))
                 (___match4090740908_
                  (lambda (_e3204032124_
                           _hd3204132128_
                           _tl3204232131_
                           _e3204332134_
                           _hd3204432138_
                           _tl3204532141_)
                    (let ((_L32144_ _hd3204432138_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32144_)
                          (___kont4084540846_ _L32144_)
                          (if (gx#stx-pair? _tl3204532141_)
                              (let ((_e3205432089_
                                     (gx#syntax-e _tl3204532141_)))
                                (let ((_tl3205632096_ (##cdr _e3205432089_))
                                      (_hd3205532093_ (##car _e3205432089_)))
                                  (if (gx#stx-null? _tl3205632096_)
                                      (___match4092740928_
                                       _e3204032124_
                                       _hd3204132128_
                                       _tl3204232131_
                                       _e3204332134_
                                       _hd3204432138_
                                       _tl3204532141_
                                       _e3205432089_
                                       _hd3205532093_
                                       _tl3205632096_)
                                      (_g3200332062_))))
                              (_g3200332062_))))))
                 (___match4089540896_
                  (lambda (_e3201832164_
                           _hd3201932168_
                           _tl3202032171_
                           _e3202132174_
                           _hd3202232178_
                           _tl3202332181_
                           _e3202432184_
                           _hd3202532188_
                           _tl3202632191_
                           ___splice4084340844_
                           _target3202732194_
                           _tl3202932197_)
                    (letrec ((_loop3203032200_
                              (lambda (_hd3202832204_ _arg3203432207_)
                                (if (gx#stx-pair? _hd3202832204_)
                                    (let ((_e3203132210_
                                           (gx#syntax-e _hd3202832204_)))
                                      (let ((_lp-tl3203332217_
                                             (##cdr _e3203132210_))
                                            (_lp-hd3203232214_
                                             (##car _e3203132210_)))
                                        (_loop3203032200_
                                         _lp-tl3203332217_
                                         (cons _lp-hd3203232214_
                                               _arg3203432207_))))
                                    (let ((_arg3203532220_
                                           (reverse _arg3203432207_)))
                                      (if (gx#stx-pair? _tl3202332181_)
                                          (let ((_e3203632224_
                                                 (gx#syntax-e _tl3202332181_)))
                                            (let ((_tl3203832231_
                                                   (##cdr _e3203632224_))
                                                  (_hd3203732228_
                                                   (##car _e3203632224_)))
                                              (if (gx#stx-null? _tl3203832231_)
                                                  (let ((_L32234_
                                                         _hd3203732228_)
                                                        (_L32236_
                                                         _arg3203532220_)
                                                        (_L32237_
                                                         _hd3202532188_))
                                                    (if (gx#identifier?
                                                         _L32237_)
                                                        (___kont4084140842_
                                                         _L32234_
                                                         _L32236_
                                                         _L32237_)
                                                        (___match4090740908_
                                                         _e3201832164_
                                                         _hd3201932168_
                                                         _tl3202032171_
                                                         _e3202132174_
                                                         _hd3202232178_
                                                         _tl3202332181_)))
                                                  (___match4090740908_
                                                   _e3201832164_
                                                   _hd3201932168_
                                                   _tl3202032171_
                                                   _e3202132174_
                                                   _hd3202232178_
                                                   _tl3202332181_))))
                                          (___match4090740908_
                                           _e3201832164_
                                           _hd3201932168_
                                           _tl3202032171_
                                           _e3202132174_
                                           _hd3202232178_
                                           _tl3202332181_)))))))
                      (_loop3203032200_ _target3202732194_ '())))))
            (if (gx#stx-pair? ___stx4083640837_)
                (let ((_e3200632305_ (gx#syntax-e ___stx4083640837_)))
                  (let ((_tl3200832312_ (##cdr _e3200632305_))
                        (_hd3200732309_ (##car _e3200632305_)))
                    (if (gx#stx-pair? _tl3200832312_)
                        (let ((_e3200932315_ (gx#syntax-e _tl3200832312_)))
                          (let ((_tl3201132322_ (##cdr _e3200932315_))
                                (_hd3201032319_ (##car _e3200932315_)))
                            (if (gx#stx-pair? _hd3201032319_)
                                (let ((_e3201232325_
                                       (gx#syntax-e _hd3201032319_)))
                                  (let ((_tl3201432332_ (##cdr _e3201232325_))
                                        (_hd3201332329_ (##car _e3201232325_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32335_ _hd3201332329_))
                                          (___kont4083940840_ _L32335_))
                                        (if (gx#stx-pair/null? _tl3201432332_)
                                            (let ((___splice4084340844_
                                                   (gx#syntax-split-splice
                                                    _tl3201432332_
                                                    '0)))
                                              (let ((_tl3202932197_
                                                     (##vector-ref
                                                      ___splice4084340844_
                                                      '1))
                                                    (_target3202732194_
                                                     (##vector-ref
                                                      ___splice4084340844_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3202932197_)
                                                    (___match4089540896_
                                                     _e3200632305_
                                                     _hd3200732309_
                                                     _tl3200832312_
                                                     _e3200932315_
                                                     _hd3201032319_
                                                     _tl3201132322_
                                                     _e3201232325_
                                                     _hd3201332329_
                                                     _tl3201432332_
                                                     ___splice4084340844_
                                                     _target3202732194_
                                                     _tl3202932197_)
                                                    (___match4090740908_
                                                     _e3200632305_
                                                     _hd3200732309_
                                                     _tl3200832312_
                                                     _e3200932315_
                                                     _hd3201032319_
                                                     _tl3201132322_))))
                                            (___match4090740908_
                                             _e3200632305_
                                             _hd3200732309_
                                             _tl3200832312_
                                             _e3200932315_
                                             _hd3201032319_
                                             _tl3201132322_)))))
                                (___match4090740908_
                                 _e3200632305_
                                 _hd3200732309_
                                 _tl3200832312_
                                 _e3200932315_
                                 _hd3201032319_
                                 _tl3201132322_))))
                        (_g3200332062_))))
                (_g3200332062_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32355_)
      (let* ((_g3235832382_
              (lambda (_g3235932378_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3235932378_)))
             (_g3235732560_
              (lambda (_g3235932386_)
                (if (gx#stx-pair? _g3235932386_)
                    (let ((_e3236232389_ (gx#syntax-e _g3235932386_)))
                      (let ((_hd3236332393_ (##car _e3236232389_))
                            (_tl3236432396_ (##cdr _e3236232389_)))
                        (if (gx#stx-pair/null? _tl3236432396_)
                            (if (fx>= (gx#stx-length _tl3236432396_) '1)
                                (let ((_g41410_
                                       (gx#syntax-split-splice
                                        _tl3236432396_
                                        '1)))
                                  (begin
                                    (let ((_g41411_
                                           (if (##values? _g41410_)
                                               (##vector-length _g41410_)
                                               1)))
                                      (if (not (##fx= _g41411_ 2))
                                          (error "Context expects 2 values"
                                                 _g41411_)))
                                    (let ((_target3236532399_
                                           (##vector-ref _g41410_ 0))
                                          (_tl3236732402_
                                           (##vector-ref _g41410_ 1)))
                                      (if (gx#stx-pair? _tl3236732402_)
                                          (let ((_e3237432405_
                                                 (gx#syntax-e _tl3236732402_)))
                                            (let ((_hd3237532409_
                                                   (##car _e3237432405_))
                                                  (_tl3237632412_
                                                   (##cdr _e3237432405_)))
                                              (if (gx#stx-null? _tl3237632412_)
                                                  (letrec ((_loop3236832415_
                                                            (lambda (_hd3236632419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3237232422_)
                      (if (gx#stx-pair? _hd3236632419_)
                          (let ((_e3236932425_ (gx#syntax-e _hd3236632419_)))
                            (let ((_lp-hd3237032429_ (##car _e3236932425_))
                                  (_lp-tl3237132432_ (##cdr _e3236932425_)))
                              (_loop3236832415_
                               _lp-tl3237132432_
                               (cons _lp-hd3237032429_ _tgt3237232422_))))
                          (let ((_tgt3237332435_ (reverse _tgt3237232422_)))
                            ((lambda (_L32439_ _L32441_)
                               (let* ((_g3245932476_
                                       (lambda (_g3246032472_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3246032472_)))
                                      (_g3245832548_
                                       (lambda (_g3246032480_)
                                         (if (gx#stx-pair/null? _g3246032480_)
                                             (let ((_g41412_
                                                    (gx#syntax-split-splice
                                                     _g3246032480_
                                                     '0)))
                                               (begin
                                                 (let ((_g41413_
                                                        (if (##values?
                                                             _g41412_)
                                                            (##vector-length
                                                             _g41412_)
                                                            1)))
                                                   (if (not (##fx= _g41413_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41413_)))
                                                 (let ((_target3246232483_
                                                        (##vector-ref
                                                         _g41412_
                                                         0))
                                                       (_tl3246432486_
                                                        (##vector-ref
                                                         _g41412_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3246432486_)
                                                       (letrec ((_loop3246532489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3246332493_ _$e3246932496_)
                           (if (gx#stx-pair? _hd3246332493_)
                               (let ((_e3246632499_
                                      (gx#syntax-e _hd3246332493_)))
                                 (let ((_lp-hd3246732503_
                                        (##car _e3246632499_))
                                       (_lp-tl3246832506_
                                        (##cdr _e3246632499_)))
                                   (_loop3246532489_
                                    _lp-tl3246832506_
                                    (cons _lp-hd3246732503_ _$e3246932496_))))
                               (let ((_$e3247032509_ (reverse _$e3246932496_)))
                                 ((lambda (_L32513_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3252832534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3252932537_)
                               (cons _g3252832534_ _g3252932537_))
                             '()
                             _L32513_)
                      (cons _L32439_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32513_
                                                     _L32441_)
                                                    (foldr (lambda (_g3253032540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3253132543_
                            _g3253232545_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3253132543_ (cons _g3253032540_ '())))
                           _g3253232545_))
                   '()
                   _L32513_
                   _L32441_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3247032509_))))))
                 (_loop3246532489_ _target3246232483_ '()))
               (_g3245932476_ _g3246032480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3245932476_ _g3246032480_)))))
                                 (_g3245832548_
                                  (gx#gentemps
                                   (foldr (lambda (_g3255132554_ _g3255232557_)
                                            (cons _g3255132554_ _g3255232557_))
                                          '()
                                          _L32441_)))))
                             _hd3237532409_
                             _tgt3237332435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3236832415_
                                                     _target3236532399_
                                                     '()))
                                                  (_g3235832382_
                                                   _g3235932386_))))
                                          (_g3235832382_ _g3235932386_)))))
                                (_g3235832382_ _g3235932386_))
                            (_g3235832382_ _g3235932386_))))
                    (_g3235832382_ _g3235932386_)))))
        (_g3235732560_ _stx32355_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32566_)
      (let* ((___stx4093040931_ _stx32566_)
             (_g3257032628_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4093040931_))))
        (let ((___kont4093340934_
               (lambda (_L32962_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3297832981_ _g3297932984_)
                                      (cons _g3297832981_ _g3297932984_))
                                    '()
                                    _L32962_)))))
              (___kont4093740938_
               (lambda (_L32739_ _L32741_ _L32742_)
                 (let* ((_g3276532773_
                         (lambda (_g3276632769_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3276632769_)))
                        (_g3276432893_
                         (lambda (_g3276632777_)
                           ((lambda (_L32780_)
                              (let ()
                                (let* ((_g3279232809_
                                        (lambda (_g3279332805_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3279332805_)))
                                       (_g3279132873_
                                        (lambda (_g3279332813_)
                                          (if (gx#stx-pair/null? _g3279332813_)
                                              (let ((_g41414_
                                                     (gx#syntax-split-splice
                                                      _g3279332813_
                                                      '0)))
                                                (begin
                                                  (let ((_g41415_
                                                         (if (##values?
                                                              _g41414_)
                                                             (##vector-length
                                                              _g41414_)
                                                             1)))
                                                    (if (not (##fx= _g41415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41415_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3279532816_
                                                         (##vector-ref
                                                          _g41414_
                                                          0))
                                                        (_tl3279732819_
                                                         (##vector-ref
                                                          _g41414_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3279732819_)
                                                        (letrec ((_loop3279832822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3279632826_ _arg3280232829_)
                            (if (gx#stx-pair? _hd3279632826_)
                                (let ((_e3279932832_
                                       (gx#syntax-e _hd3279632826_)))
                                  (let ((_lp-hd3280032836_
                                         (##car _e3279932832_))
                                        (_lp-tl3280132839_
                                         (##cdr _e3279932832_)))
                                    (_loop3279832822_
                                     _lp-tl3280132839_
                                     (cons _lp-hd3280032836_
                                           _arg3280232829_))))
                                (let ((_arg3280332842_
                                       (reverse _arg3280232829_)))
                                  ((lambda (_L32846_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L32780_
                                                     (foldr (lambda (_g3286432867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3286532870_)
                      (cons _g3286432867_ _g3286532870_))
                    '()
                    _L32846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3280332842_))))))
                  (_loop3279832822_ _target3279532816_ '()))
                (_g3279232809_ _g3279332813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3279232809_ _g3279332813_)))))
                                  (_g3279132873_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3287632879_
                                                           _g3287732882_)
                                                    (cons _g3287632879_
                                                          _g3287732882_))
                                                  '()
                                                  _L32742_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3288432887_
                                                           _g3288532890_)
                                                    (cons _g3288432887_
                                                          _g3288532890_))
                                                  '()
                                                  _L32741_)))))))
                            _g3276632777_))))
                   (_g3276432893_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3289632899_ _g3289732902_)
                                          (cons _g3289632899_ _g3289732902_))
                                        '()
                                        _L32739_)))
                     (gx#stx-source _stx32566_)))))))
          (let* ((___match4098540986_
                  (lambda (_e3259132635_
                           _hd3259232639_
                           _tl3259332642_
                           _e3259432645_
                           _hd3259532649_
                           _tl3259632652_
                           ___splice4093940940_
                           _target3259732655_
                           _tl3259932658_)
                    (letrec ((_loop3260032661_
                              (lambda (_hd3259832665_
                                       _expr3260432668_
                                       _param3260532670_)
                                (if (gx#stx-pair? _hd3259832665_)
                                    (let ((_e3260132673_
                                           (gx#syntax-e _hd3259832665_)))
                                      (let ((_lp-tl3260332680_
                                             (##cdr _e3260132673_))
                                            (_lp-hd3260232677_
                                             (##car _e3260132673_)))
                                        (if (gx#stx-pair? _lp-hd3260232677_)
                                            (let ((_e3260832683_
                                                   (gx#syntax-e
                                                    _lp-hd3260232677_)))
                                              (let ((_tl3261032690_
                                                     (##cdr _e3260832683_))
                                                    (_hd3260932687_
                                                     (##car _e3260832683_)))
                                                (if (gx#stx-pair?
                                                     _tl3261032690_)
                                                    (let ((_e3261132693_
                                                           (gx#syntax-e
                                                            _tl3261032690_)))
                                                      (let ((_tl3261332700_
                                                             (##cdr _e3261132693_))
                                                            (_hd3261232697_
                                                             (##car _e3261132693_)))
                                                        (if (gx#stx-null?
                                                             _tl3261332700_)
                                                            (_loop3260032661_
                                                             _lp-tl3260332680_
                                                             (cons _hd3261232697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3260432668_)
                     (cons _hd3260932687_ _param3260532670_))
                    (_g3257032628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3257032628_))))
                                            (_g3257032628_))))
                                    (let ((_param3260732706_
                                           (reverse _param3260532670_))
                                          (_expr3260632703_
                                           (reverse _expr3260432668_)))
                                      (if (gx#stx-pair/null? _tl3259632652_)
                                          (let ((___splice4094140942_
                                                 (gx#syntax-split-splice
                                                  _tl3259632652_
                                                  '0)))
                                            (let ((_tl3261632712_
                                                   (##vector-ref
                                                    ___splice4094140942_
                                                    '1))
                                                  (_target3261432709_
                                                   (##vector-ref
                                                    ___splice4094140942_
                                                    '0)))
                                              (if (gx#stx-null? _tl3261632712_)
                                                  (letrec ((_loop3261732715_
                                                            (lambda (_hd3261532719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3262132722_)
                      (if (gx#stx-pair? _hd3261532719_)
                          (let ((_e3261832725_ (gx#syntax-e _hd3261532719_)))
                            (let ((_lp-tl3262032732_ (##cdr _e3261832725_))
                                  (_lp-hd3261932729_ (##car _e3261832725_)))
                              (_loop3261732715_
                               _lp-tl3262032732_
                               (cons _lp-hd3261932729_ _body3262132722_))))
                          (let ((_body3262232735_ (reverse _body3262132722_)))
                            (___kont4093740938_
                             _body3262232735_
                             _expr3260632703_
                             _param3260732706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3261732715_
                                                     _target3261432709_
                                                     '()))
                                                  (_g3257032628_))))
                                          (_g3257032628_)))))))
                      (_loop3260032661_ _target3259732655_ '() '()))))
                 (___match4096540966_
                  (lambda (_e3257332912_
                           _hd3257432916_
                           _tl3257532919_
                           _e3257632922_
                           _hd3257732926_
                           _tl3257832929_
                           ___splice4093540936_
                           _target3257932932_
                           _tl3258132935_)
                    (letrec ((_loop3258232938_
                              (lambda (_hd3258032942_ _body3258632945_)
                                (if (gx#stx-pair? _hd3258032942_)
                                    (let ((_e3258332948_
                                           (gx#syntax-e _hd3258032942_)))
                                      (let ((_lp-tl3258532955_
                                             (##cdr _e3258332948_))
                                            (_lp-hd3258432952_
                                             (##car _e3258332948_)))
                                        (_loop3258232938_
                                         _lp-tl3258532955_
                                         (cons _lp-hd3258432952_
                                               _body3258632945_))))
                                    (let ((_body3258732958_
                                           (reverse _body3258632945_)))
                                      (___kont4093340934_
                                       _body3258732958_))))))
                      (_loop3258232938_ _target3257932932_ '())))))
            (if (gx#stx-pair? ___stx4093040931_)
                (let ((_e3257332912_ (gx#syntax-e ___stx4093040931_)))
                  (let ((_tl3257532919_ (##cdr _e3257332912_))
                        (_hd3257432916_ (##car _e3257332912_)))
                    (if (gx#stx-pair? _tl3257532919_)
                        (let ((_e3257632922_ (gx#syntax-e _tl3257532919_)))
                          (let ((_tl3257832929_ (##cdr _e3257632922_))
                                (_hd3257732926_ (##car _e3257632922_)))
                            (if (gx#stx-null? _hd3257732926_)
                                (if (gx#stx-pair/null? _tl3257832929_)
                                    (let ((___splice4093540936_
                                           (gx#syntax-split-splice
                                            _tl3257832929_
                                            '0)))
                                      (let ((_tl3258132935_
                                             (##vector-ref
                                              ___splice4093540936_
                                              '1))
                                            (_target3257932932_
                                             (##vector-ref
                                              ___splice4093540936_
                                              '0)))
                                        (if (gx#stx-null? _tl3258132935_)
                                            (___match4096540966_
                                             _e3257332912_
                                             _hd3257432916_
                                             _tl3257532919_
                                             _e3257632922_
                                             _hd3257732926_
                                             _tl3257832929_
                                             ___splice4093540936_
                                             _target3257932932_
                                             _tl3258132935_)
                                            (if (gx#stx-pair/null?
                                                 _hd3257732926_)
                                                (let ((___splice4093940940_
                                                       (gx#syntax-split-splice
                                                        _hd3257732926_
                                                        '0)))
                                                  (let ((_tl3259932658_
                                                         (##vector-ref
                                                          ___splice4093940940_
                                                          '1))
                                                        (_target3259732655_
                                                         (##vector-ref
                                                          ___splice4093940940_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3259932658_)
                                                        (___match4098540986_
                                                         _e3257332912_
                                                         _hd3257432916_
                                                         _tl3257532919_
                                                         _e3257632922_
                                                         _hd3257732926_
                                                         _tl3257832929_
                                                         ___splice4093940940_
                                                         _target3259732655_
                                                         _tl3259932658_)
                                                        (_g3257032628_))))
                                                (_g3257032628_)))))
                                    (if (gx#stx-pair/null? _hd3257732926_)
                                        (let ((___splice4093940940_
                                               (gx#syntax-split-splice
                                                _hd3257732926_
                                                '0)))
                                          (let ((_tl3259932658_
                                                 (##vector-ref
                                                  ___splice4093940940_
                                                  '1))
                                                (_target3259732655_
                                                 (##vector-ref
                                                  ___splice4093940940_
                                                  '0)))
                                            (if (gx#stx-null? _tl3259932658_)
                                                (___match4098540986_
                                                 _e3257332912_
                                                 _hd3257432916_
                                                 _tl3257532919_
                                                 _e3257632922_
                                                 _hd3257732926_
                                                 _tl3257832929_
                                                 ___splice4093940940_
                                                 _target3259732655_
                                                 _tl3259932658_)
                                                (_g3257032628_))))
                                        (_g3257032628_)))
                                (if (gx#stx-pair/null? _hd3257732926_)
                                    (let ((___splice4093940940_
                                           (gx#syntax-split-splice
                                            _hd3257732926_
                                            '0)))
                                      (let ((_tl3259932658_
                                             (##vector-ref
                                              ___splice4093940940_
                                              '1))
                                            (_target3259732655_
                                             (##vector-ref
                                              ___splice4093940940_
                                              '0)))
                                        (if (gx#stx-null? _tl3259932658_)
                                            (___match4098540986_
                                             _e3257332912_
                                             _hd3257432916_
                                             _tl3257532919_
                                             _e3257632922_
                                             _hd3257732926_
                                             _tl3257832929_
                                             ___splice4093940940_
                                             _target3259732655_
                                             _tl3259932658_)
                                            (_g3257032628_))))
                                    (_g3257032628_)))))
                        (_g3257032628_))))
                (_g3257032628_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32995_)
      (let* ((_g3299933023_
              (lambda (_g3300033019_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3300033019_)))
             (_g3299833108_
              (lambda (_g3300033027_)
                (if (gx#stx-pair? _g3300033027_)
                    (let ((_e3300333030_ (gx#syntax-e _g3300033027_)))
                      (let ((_hd3300433034_ (##car _e3300333030_))
                            (_tl3300533037_ (##cdr _e3300333030_)))
                        (if (gx#stx-pair? _tl3300533037_)
                            (let ((_e3300633040_ (gx#syntax-e _tl3300533037_)))
                              (let ((_hd3300733044_ (##car _e3300633040_))
                                    (_tl3300833047_ (##cdr _e3300633040_)))
                                (if (gx#stx-pair/null? _tl3300833047_)
                                    (let ((_g41416_
                                           (gx#syntax-split-splice
                                            _tl3300833047_
                                            '0)))
                                      (begin
                                        (let ((_g41417_
                                               (if (##values? _g41416_)
                                                   (##vector-length _g41416_)
                                                   1)))
                                          (if (not (##fx= _g41417_ 2))
                                              (error "Context expects 2 values"
                                                     _g41417_)))
                                        (let ((_target3300933050_
                                               (##vector-ref _g41416_ 0))
                                              (_tl3301133053_
                                               (##vector-ref _g41416_ 1)))
                                          (if (gx#stx-null? _tl3301133053_)
                                              (letrec ((_loop3301233056_
                                                        (lambda (_hd3301033060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3301633063_)
                  (if (gx#stx-pair? _hd3301033060_)
                      (let ((_e3301333066_ (gx#syntax-e _hd3301033060_)))
                        (let ((_lp-hd3301433070_ (##car _e3301333066_))
                              (_lp-tl3301533073_ (##cdr _e3301333066_)))
                          (_loop3301233056_
                           _lp-tl3301533073_
                           (cons _lp-hd3301433070_ _body3301633063_))))
                      (let ((_body3301733076_ (reverse _body3301633063_)))
                        ((lambda (_L33080_ _L33082_)
                           (if (gx#identifier? _L33082_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33082_ '())
                                                       (foldr (lambda (_g3309933102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3310033105_)
                        (cons _g3309933102_ _g3310033105_))
                      '()
                      _L33080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3299933023_ _g3300033027_)))
                         _body3301733076_
                         _hd3300733044_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3301233056_
                                                 _target3300933050_
                                                 '()))
                                              (_g3299933023_ _g3300033027_)))))
                                    (_g3299933023_ _g3300033027_))))
                            (_g3299933023_ _g3300033027_))))
                    (_g3299933023_ _g3300033027_)))))
        (_g3299833108_ _$stx32995_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33113_)
      (let* ((_g3311733141_
              (lambda (_g3311833137_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3311833137_)))
             (_g3311633226_
              (lambda (_g3311833145_)
                (if (gx#stx-pair? _g3311833145_)
                    (let ((_e3312133148_ (gx#syntax-e _g3311833145_)))
                      (let ((_hd3312233152_ (##car _e3312133148_))
                            (_tl3312333155_ (##cdr _e3312133148_)))
                        (if (gx#stx-pair? _tl3312333155_)
                            (let ((_e3312433158_ (gx#syntax-e _tl3312333155_)))
                              (let ((_hd3312533162_ (##car _e3312433158_))
                                    (_tl3312633165_ (##cdr _e3312433158_)))
                                (if (gx#stx-pair/null? _tl3312633165_)
                                    (let ((_g41418_
                                           (gx#syntax-split-splice
                                            _tl3312633165_
                                            '0)))
                                      (begin
                                        (let ((_g41419_
                                               (if (##values? _g41418_)
                                                   (##vector-length _g41418_)
                                                   1)))
                                          (if (not (##fx= _g41419_ 2))
                                              (error "Context expects 2 values"
                                                     _g41419_)))
                                        (let ((_target3312733168_
                                               (##vector-ref _g41418_ 0))
                                              (_tl3312933171_
                                               (##vector-ref _g41418_ 1)))
                                          (if (gx#stx-null? _tl3312933171_)
                                              (letrec ((_loop3313033174_
                                                        (lambda (_hd3312833178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3313433181_)
                  (if (gx#stx-pair? _hd3312833178_)
                      (let ((_e3313133184_ (gx#syntax-e _hd3312833178_)))
                        (let ((_lp-hd3313233188_ (##car _e3313133184_))
                              (_lp-tl3313333191_ (##cdr _e3313133184_)))
                          (_loop3313033174_
                           _lp-tl3313333191_
                           (cons _lp-hd3313233188_ _body3313433181_))))
                      (let ((_body3313533194_ (reverse _body3313433181_)))
                        ((lambda (_L33198_ _L33200_)
                           (if (gx#identifier? _L33200_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33200_ '())
                                                       (foldr (lambda (_g3321733220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3321833223_)
                        (cons _g3321733220_ _g3321833223_))
                      '()
                      _L33198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3311733141_ _g3311833145_)))
                         _body3313533194_
                         _hd3312533162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3313033174_
                                                 _target3312733168_
                                                 '()))
                                              (_g3311733141_ _g3311833145_)))))
                                    (_g3311733141_ _g3311833145_))))
                            (_g3311733141_ _g3311833145_))))
                    (_g3311733141_ _g3311833145_)))))
        (_g3311633226_ _$stx33113_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33231_)
      (let* ((_g3323533263_
              (lambda (_g3323633259_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3323633259_)))
             (_g3323433362_
              (lambda (_g3323633267_)
                (if (gx#stx-pair? _g3323633267_)
                    (let ((_e3324033270_ (gx#syntax-e _g3323633267_)))
                      (let ((_hd3324133274_ (##car _e3324033270_))
                            (_tl3324233277_ (##cdr _e3324033270_)))
                        (if (gx#stx-pair? _tl3324233277_)
                            (let ((_e3324333280_ (gx#syntax-e _tl3324233277_)))
                              (let ((_hd3324433284_ (##car _e3324333280_))
                                    (_tl3324533287_ (##cdr _e3324333280_)))
                                (if (gx#stx-pair? _tl3324533287_)
                                    (let ((_e3324633290_
                                           (gx#syntax-e _tl3324533287_)))
                                      (let ((_hd3324733294_
                                             (##car _e3324633290_))
                                            (_tl3324833297_
                                             (##cdr _e3324633290_)))
                                        (if (gx#stx-pair/null? _tl3324833297_)
                                            (let ((_g41420_
                                                   (gx#syntax-split-splice
                                                    _tl3324833297_
                                                    '0)))
                                              (begin
                                                (let ((_g41421_
                                                       (if (##values? _g41420_)
                                                           (##vector-length
                                                            _g41420_)
                                                           1)))
                                                  (if (not (##fx= _g41421_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41421_)))
                                                (let ((_target3324933300_
                                                       (##vector-ref
                                                        _g41420_
                                                        0))
                                                      (_tl3325133303_
                                                       (##vector-ref
                                                        _g41420_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3325133303_)
                                                      (letrec ((_loop3325233306_
                                                                (lambda (_hd3325033310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3325633313_)
                          (if (gx#stx-pair? _hd3325033310_)
                              (let ((_e3325333316_
                                     (gx#syntax-e _hd3325033310_)))
                                (let ((_lp-hd3325433320_ (##car _e3325333316_))
                                      (_lp-tl3325533323_
                                       (##cdr _e3325333316_)))
                                  (_loop3325233306_
                                   _lp-tl3325533323_
                                   (cons _lp-hd3325433320_ _rest3325633313_))))
                              (let ((_rest3325733326_
                                     (reverse _rest3325633313_)))
                                ((lambda (_L33330_ _L33332_ _L33333_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33332_
                               (foldr (lambda (_g3335333356_ _g3335433359_)
                                        (cons _g3335333356_ _g3335433359_))
                                      '()
                                      _L33330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3325733326_
                                 _hd3324733294_
                                 _hd3324433284_))))))
                (_loop3325233306_ _target3324933300_ '()))
              (_g3323533263_ _g3323633267_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3323533263_ _g3323633267_))))
                                    (_g3323533263_ _g3323633267_))))
                            (_g3323533263_ _g3323633267_))))
                    (_g3323533263_ _g3323633267_)))))
        (_g3323433362_ _$stx33231_)))))
