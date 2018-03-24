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
    (lambda _$args31994_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31994_)))
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
    (lambda _$args31990_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31990_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31987_)
      (if (gx#identifier? _stx31987_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31987_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31984_)
      (if (gx#identifier? _stx31984_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31984_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31998_)
      (let* ((___stx4083740838_ _stx31998_)
             (_g3200432063_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4083740838_))))
        (let ((___kont4084040841_
               (lambda (_L32336_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32336_)
                  _stx31998_)))
              (___kont4084240843_
               (lambda (_L32235_ _L32237_ _L32238_)
                 (let* ((_g3226032268_
                         (lambda (_g3226132264_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3226132264_)))
                        (_g3225932295_
                         (lambda (_g3226132272_)
                           ((lambda (_L32275_)
                              (let ()
                                (cons _L32275_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3228632289_
                                                        _g3228732292_)
                                                 (cons _g3228632289_
                                                       _g3228732292_))
                                               (cons _L32235_ '())
                                               _L32237_)))))
                            _g3226132272_))))
                   (_g3225932295_
                    (gx#stx-identifier _L32238_ _L32238_ '"-set!")))))
              (___kont4084640847_
               (lambda (_L32145_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32145_)
                  _stx31998_)))
              (___kont4084840849_
               (lambda (_L32100_ _L32102_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32102_ (cons _L32100_ '()))))))
          (let* ((___match4092840929_
                  (lambda (_e3204932070_
                           _hd3205032074_
                           _tl3205132077_
                           _e3205232080_
                           _hd3205332084_
                           _tl3205432087_
                           _e3205532090_
                           _hd3205632094_
                           _tl3205732097_)
                    (let ((_L32100_ _hd3205632094_) (_L32102_ _hd3205332084_))
                      (if (gx#identifier? _L32102_)
                          (___kont4084840849_ _L32100_ _L32102_)
                          (_g3200432063_)))))
                 (___match4090840909_
                  (lambda (_e3204132125_
                           _hd3204232129_
                           _tl3204332132_
                           _e3204432135_
                           _hd3204532139_
                           _tl3204632142_)
                    (let ((_L32145_ _hd3204532139_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32145_)
                          (___kont4084640847_ _L32145_)
                          (if (gx#stx-pair? _tl3204632142_)
                              (let ((_e3205532090_
                                     (gx#syntax-e _tl3204632142_)))
                                (let ((_tl3205732097_ (##cdr _e3205532090_))
                                      (_hd3205632094_ (##car _e3205532090_)))
                                  (if (gx#stx-null? _tl3205732097_)
                                      (___match4092840929_
                                       _e3204132125_
                                       _hd3204232129_
                                       _tl3204332132_
                                       _e3204432135_
                                       _hd3204532139_
                                       _tl3204632142_
                                       _e3205532090_
                                       _hd3205632094_
                                       _tl3205732097_)
                                      (_g3200432063_))))
                              (_g3200432063_))))))
                 (___match4089640897_
                  (lambda (_e3201932165_
                           _hd3202032169_
                           _tl3202132172_
                           _e3202232175_
                           _hd3202332179_
                           _tl3202432182_
                           _e3202532185_
                           _hd3202632189_
                           _tl3202732192_
                           ___splice4084440845_
                           _target3202832195_
                           _tl3203032198_)
                    (letrec ((_loop3203132201_
                              (lambda (_hd3202932205_ _arg3203532208_)
                                (if (gx#stx-pair? _hd3202932205_)
                                    (let ((_e3203232211_
                                           (gx#syntax-e _hd3202932205_)))
                                      (let ((_lp-tl3203432218_
                                             (##cdr _e3203232211_))
                                            (_lp-hd3203332215_
                                             (##car _e3203232211_)))
                                        (_loop3203132201_
                                         _lp-tl3203432218_
                                         (cons _lp-hd3203332215_
                                               _arg3203532208_))))
                                    (let ((_arg3203632221_
                                           (reverse _arg3203532208_)))
                                      (if (gx#stx-pair? _tl3202432182_)
                                          (let ((_e3203732225_
                                                 (gx#syntax-e _tl3202432182_)))
                                            (let ((_tl3203932232_
                                                   (##cdr _e3203732225_))
                                                  (_hd3203832229_
                                                   (##car _e3203732225_)))
                                              (if (gx#stx-null? _tl3203932232_)
                                                  (let ((_L32235_
                                                         _hd3203832229_)
                                                        (_L32237_
                                                         _arg3203632221_)
                                                        (_L32238_
                                                         _hd3202632189_))
                                                    (if (gx#identifier?
                                                         _L32238_)
                                                        (___kont4084240843_
                                                         _L32235_
                                                         _L32237_
                                                         _L32238_)
                                                        (___match4090840909_
                                                         _e3201932165_
                                                         _hd3202032169_
                                                         _tl3202132172_
                                                         _e3202232175_
                                                         _hd3202332179_
                                                         _tl3202432182_)))
                                                  (___match4090840909_
                                                   _e3201932165_
                                                   _hd3202032169_
                                                   _tl3202132172_
                                                   _e3202232175_
                                                   _hd3202332179_
                                                   _tl3202432182_))))
                                          (___match4090840909_
                                           _e3201932165_
                                           _hd3202032169_
                                           _tl3202132172_
                                           _e3202232175_
                                           _hd3202332179_
                                           _tl3202432182_)))))))
                      (_loop3203132201_ _target3202832195_ '())))))
            (if (gx#stx-pair? ___stx4083740838_)
                (let ((_e3200732306_ (gx#syntax-e ___stx4083740838_)))
                  (let ((_tl3200932313_ (##cdr _e3200732306_))
                        (_hd3200832310_ (##car _e3200732306_)))
                    (if (gx#stx-pair? _tl3200932313_)
                        (let ((_e3201032316_ (gx#syntax-e _tl3200932313_)))
                          (let ((_tl3201232323_ (##cdr _e3201032316_))
                                (_hd3201132320_ (##car _e3201032316_)))
                            (if (gx#stx-pair? _hd3201132320_)
                                (let ((_e3201332326_
                                       (gx#syntax-e _hd3201132320_)))
                                  (let ((_tl3201532333_ (##cdr _e3201332326_))
                                        (_hd3201432330_ (##car _e3201332326_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32336_ _hd3201432330_))
                                          (___kont4084040841_ _L32336_))
                                        (if (gx#stx-pair/null? _tl3201532333_)
                                            (let ((___splice4084440845_
                                                   (gx#syntax-split-splice
                                                    _tl3201532333_
                                                    '0)))
                                              (let ((_tl3203032198_
                                                     (##vector-ref
                                                      ___splice4084440845_
                                                      '1))
                                                    (_target3202832195_
                                                     (##vector-ref
                                                      ___splice4084440845_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3203032198_)
                                                    (___match4089640897_
                                                     _e3200732306_
                                                     _hd3200832310_
                                                     _tl3200932313_
                                                     _e3201032316_
                                                     _hd3201132320_
                                                     _tl3201232323_
                                                     _e3201332326_
                                                     _hd3201432330_
                                                     _tl3201532333_
                                                     ___splice4084440845_
                                                     _target3202832195_
                                                     _tl3203032198_)
                                                    (___match4090840909_
                                                     _e3200732306_
                                                     _hd3200832310_
                                                     _tl3200932313_
                                                     _e3201032316_
                                                     _hd3201132320_
                                                     _tl3201232323_))))
                                            (___match4090840909_
                                             _e3200732306_
                                             _hd3200832310_
                                             _tl3200932313_
                                             _e3201032316_
                                             _hd3201132320_
                                             _tl3201232323_)))))
                                (___match4090840909_
                                 _e3200732306_
                                 _hd3200832310_
                                 _tl3200932313_
                                 _e3201032316_
                                 _hd3201132320_
                                 _tl3201232323_))))
                        (_g3200432063_))))
                (_g3200432063_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32356_)
      (let* ((_g3235932383_
              (lambda (_g3236032379_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3236032379_)))
             (_g3235832561_
              (lambda (_g3236032387_)
                (if (gx#stx-pair? _g3236032387_)
                    (let ((_e3236332390_ (gx#syntax-e _g3236032387_)))
                      (let ((_hd3236432394_ (##car _e3236332390_))
                            (_tl3236532397_ (##cdr _e3236332390_)))
                        (if (gx#stx-pair/null? _tl3236532397_)
                            (if (fx>= (gx#stx-length _tl3236532397_) '1)
                                (let ((_g41438_
                                       (gx#syntax-split-splice
                                        _tl3236532397_
                                        '1)))
                                  (begin
                                    (let ((_g41439_
                                           (if (##values? _g41438_)
                                               (##vector-length _g41438_)
                                               1)))
                                      (if (not (##fx= _g41439_ 2))
                                          (error "Context expects 2 values"
                                                 _g41439_)))
                                    (let ((_target3236632400_
                                           (##vector-ref _g41438_ 0))
                                          (_tl3236832403_
                                           (##vector-ref _g41438_ 1)))
                                      (if (gx#stx-pair? _tl3236832403_)
                                          (let ((_e3237532406_
                                                 (gx#syntax-e _tl3236832403_)))
                                            (let ((_hd3237632410_
                                                   (##car _e3237532406_))
                                                  (_tl3237732413_
                                                   (##cdr _e3237532406_)))
                                              (if (gx#stx-null? _tl3237732413_)
                                                  (letrec ((_loop3236932416_
                                                            (lambda (_hd3236732420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3237332423_)
                      (if (gx#stx-pair? _hd3236732420_)
                          (let ((_e3237032426_ (gx#syntax-e _hd3236732420_)))
                            (let ((_lp-hd3237132430_ (##car _e3237032426_))
                                  (_lp-tl3237232433_ (##cdr _e3237032426_)))
                              (_loop3236932416_
                               _lp-tl3237232433_
                               (cons _lp-hd3237132430_ _tgt3237332423_))))
                          (let ((_tgt3237432436_ (reverse _tgt3237332423_)))
                            ((lambda (_L32440_ _L32442_)
                               (let* ((_g3246032477_
                                       (lambda (_g3246132473_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3246132473_)))
                                      (_g3245932549_
                                       (lambda (_g3246132481_)
                                         (if (gx#stx-pair/null? _g3246132481_)
                                             (let ((_g41440_
                                                    (gx#syntax-split-splice
                                                     _g3246132481_
                                                     '0)))
                                               (begin
                                                 (let ((_g41441_
                                                        (if (##values?
                                                             _g41440_)
                                                            (##vector-length
                                                             _g41440_)
                                                            1)))
                                                   (if (not (##fx= _g41441_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41441_)))
                                                 (let ((_target3246332484_
                                                        (##vector-ref
                                                         _g41440_
                                                         0))
                                                       (_tl3246532487_
                                                        (##vector-ref
                                                         _g41440_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3246532487_)
                                                       (letrec ((_loop3246632490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3246432494_ _$e3247032497_)
                           (if (gx#stx-pair? _hd3246432494_)
                               (let ((_e3246732500_
                                      (gx#syntax-e _hd3246432494_)))
                                 (let ((_lp-hd3246832504_
                                        (##car _e3246732500_))
                                       (_lp-tl3246932507_
                                        (##cdr _e3246732500_)))
                                   (_loop3246632490_
                                    _lp-tl3246932507_
                                    (cons _lp-hd3246832504_ _$e3247032497_))))
                               (let ((_$e3247132510_ (reverse _$e3247032497_)))
                                 ((lambda (_L32514_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g3252932535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g3253032538_)
                                 (cons _g3252932535_ _g3253032538_))
                               '()
                               _L32514_))
                      (cons _L32440_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32514_
                                                     _L32442_)
                                                    (foldr (lambda (_g3253132541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3253232544_
                            _g3253332546_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3253232544_ (cons _g3253132541_ '())))
                           _g3253332546_))
                   '()
                   _L32514_
                   _L32442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3247132510_))))))
                 (_loop3246632490_ _target3246332484_ '()))
               (_g3246032477_ _g3246132481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3246032477_ _g3246132481_)))))
                                 (_g3245932549_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3255232555_
                                                     _g3255332558_)
                                              (cons _g3255232555_
                                                    _g3255332558_))
                                            '()
                                            _L32442_))))))
                             _hd3237632410_
                             _tgt3237432436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3236932416_
                                                     _target3236632400_
                                                     '()))
                                                  (_g3235932383_
                                                   _g3236032387_))))
                                          (_g3235932383_ _g3236032387_)))))
                                (_g3235932383_ _g3236032387_))
                            (_g3235932383_ _g3236032387_))))
                    (_g3235932383_ _g3236032387_)))))
        (_g3235832561_ _stx32356_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32567_)
      (let* ((___stx4093140932_ _stx32567_)
             (_g3257132629_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4093140932_))))
        (let ((___kont4093440935_
               (lambda (_L32963_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (begin
                               '#!void
                               (foldr (lambda (_g3297932982_ _g3298032985_)
                                        (cons _g3297932982_ _g3298032985_))
                                      '()
                                      _L32963_))))))
              (___kont4093840939_
               (lambda (_L32740_ _L32742_ _L32743_)
                 (let* ((_g3276632774_
                         (lambda (_g3276732770_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3276732770_)))
                        (_g3276532894_
                         (lambda (_g3276732778_)
                           ((lambda (_L32781_)
                              (let ()
                                (let* ((_g3279332810_
                                        (lambda (_g3279432806_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3279432806_)))
                                       (_g3279232874_
                                        (lambda (_g3279432814_)
                                          (if (gx#stx-pair/null? _g3279432814_)
                                              (let ((_g41442_
                                                     (gx#syntax-split-splice
                                                      _g3279432814_
                                                      '0)))
                                                (begin
                                                  (let ((_g41443_
                                                         (if (##values?
                                                              _g41442_)
                                                             (##vector-length
                                                              _g41442_)
                                                             1)))
                                                    (if (not (##fx= _g41443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41443_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3279632817_
                                                         (##vector-ref
                                                          _g41442_
                                                          0))
                                                        (_tl3279832820_
                                                         (##vector-ref
                                                          _g41442_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3279832820_)
                                                        (letrec ((_loop3279932823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3279732827_ _arg3280332830_)
                            (if (gx#stx-pair? _hd3279732827_)
                                (let ((_e3280032833_
                                       (gx#syntax-e _hd3279732827_)))
                                  (let ((_lp-hd3280132837_
                                         (##car _e3280032833_))
                                        (_lp-tl3280232840_
                                         (##cdr _e3280032833_)))
                                    (_loop3279932823_
                                     _lp-tl3280232840_
                                     (cons _lp-hd3280132837_
                                           _arg3280332830_))))
                                (let ((_arg3280432843_
                                       (reverse _arg3280332830_)))
                                  ((lambda (_L32847_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L32781_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3286532868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3286632871_)
                        (cons _g3286532868_ _g3286632871_))
                      '()
                      _L32847_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3280432843_))))))
                  (_loop3279932823_ _target3279632817_ '()))
                (_g3279332810_ _g3279432814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3279332810_ _g3279432814_)))))
                                  (_g3279232874_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3287732880_
                                                             _g3287832883_)
                                                      (cons _g3287732880_
                                                            _g3287832883_))
                                                    '()
                                                    _L32743_)))
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3288532888_
                                                             _g3288632891_)
                                                      (cons _g3288532888_
                                                            _g3288632891_))
                                                    '()
                                                    _L32742_))))))))
                            _g3276732778_))))
                   (_g3276532894_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g3289732900_ _g3289832903_)
                                            (cons _g3289732900_ _g3289832903_))
                                          '()
                                          _L32740_))))
                     (gx#stx-source _stx32567_)))))))
          (let* ((___match4098640987_
                  (lambda (_e3259232636_
                           _hd3259332640_
                           _tl3259432643_
                           _e3259532646_
                           _hd3259632650_
                           _tl3259732653_
                           ___splice4094040941_
                           _target3259832656_
                           _tl3260032659_)
                    (letrec ((_loop3260132662_
                              (lambda (_hd3259932666_
                                       _expr3260532669_
                                       _param3260632671_)
                                (if (gx#stx-pair? _hd3259932666_)
                                    (let ((_e3260232674_
                                           (gx#syntax-e _hd3259932666_)))
                                      (let ((_lp-tl3260432681_
                                             (##cdr _e3260232674_))
                                            (_lp-hd3260332678_
                                             (##car _e3260232674_)))
                                        (if (gx#stx-pair? _lp-hd3260332678_)
                                            (let ((_e3260932684_
                                                   (gx#syntax-e
                                                    _lp-hd3260332678_)))
                                              (let ((_tl3261132691_
                                                     (##cdr _e3260932684_))
                                                    (_hd3261032688_
                                                     (##car _e3260932684_)))
                                                (if (gx#stx-pair?
                                                     _tl3261132691_)
                                                    (let ((_e3261232694_
                                                           (gx#syntax-e
                                                            _tl3261132691_)))
                                                      (let ((_tl3261432701_
                                                             (##cdr _e3261232694_))
                                                            (_hd3261332698_
                                                             (##car _e3261232694_)))
                                                        (if (gx#stx-null?
                                                             _tl3261432701_)
                                                            (_loop3260132662_
                                                             _lp-tl3260432681_
                                                             (cons _hd3261332698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3260532669_)
                     (cons _hd3261032688_ _param3260632671_))
                    (_g3257132629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3257132629_))))
                                            (_g3257132629_))))
                                    (let ((_param3260832707_
                                           (reverse _param3260632671_))
                                          (_expr3260732704_
                                           (reverse _expr3260532669_)))
                                      (if (gx#stx-pair/null? _tl3259732653_)
                                          (let ((___splice4094240943_
                                                 (gx#syntax-split-splice
                                                  _tl3259732653_
                                                  '0)))
                                            (let ((_tl3261732713_
                                                   (##vector-ref
                                                    ___splice4094240943_
                                                    '1))
                                                  (_target3261532710_
                                                   (##vector-ref
                                                    ___splice4094240943_
                                                    '0)))
                                              (if (gx#stx-null? _tl3261732713_)
                                                  (letrec ((_loop3261832716_
                                                            (lambda (_hd3261632720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3262232723_)
                      (if (gx#stx-pair? _hd3261632720_)
                          (let ((_e3261932726_ (gx#syntax-e _hd3261632720_)))
                            (let ((_lp-tl3262132733_ (##cdr _e3261932726_))
                                  (_lp-hd3262032730_ (##car _e3261932726_)))
                              (_loop3261832716_
                               _lp-tl3262132733_
                               (cons _lp-hd3262032730_ _body3262232723_))))
                          (let ((_body3262332736_ (reverse _body3262232723_)))
                            (___kont4093840939_
                             _body3262332736_
                             _expr3260732704_
                             _param3260832707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3261832716_
                                                     _target3261532710_
                                                     '()))
                                                  (_g3257132629_))))
                                          (_g3257132629_)))))))
                      (_loop3260132662_ _target3259832656_ '() '()))))
                 (___match4096640967_
                  (lambda (_e3257432913_
                           _hd3257532917_
                           _tl3257632920_
                           _e3257732923_
                           _hd3257832927_
                           _tl3257932930_
                           ___splice4093640937_
                           _target3258032933_
                           _tl3258232936_)
                    (letrec ((_loop3258332939_
                              (lambda (_hd3258132943_ _body3258732946_)
                                (if (gx#stx-pair? _hd3258132943_)
                                    (let ((_e3258432949_
                                           (gx#syntax-e _hd3258132943_)))
                                      (let ((_lp-tl3258632956_
                                             (##cdr _e3258432949_))
                                            (_lp-hd3258532953_
                                             (##car _e3258432949_)))
                                        (_loop3258332939_
                                         _lp-tl3258632956_
                                         (cons _lp-hd3258532953_
                                               _body3258732946_))))
                                    (let ((_body3258832959_
                                           (reverse _body3258732946_)))
                                      (___kont4093440935_
                                       _body3258832959_))))))
                      (_loop3258332939_ _target3258032933_ '())))))
            (if (gx#stx-pair? ___stx4093140932_)
                (let ((_e3257432913_ (gx#syntax-e ___stx4093140932_)))
                  (let ((_tl3257632920_ (##cdr _e3257432913_))
                        (_hd3257532917_ (##car _e3257432913_)))
                    (if (gx#stx-pair? _tl3257632920_)
                        (let ((_e3257732923_ (gx#syntax-e _tl3257632920_)))
                          (let ((_tl3257932930_ (##cdr _e3257732923_))
                                (_hd3257832927_ (##car _e3257732923_)))
                            (if (gx#stx-null? _hd3257832927_)
                                (if (gx#stx-pair/null? _tl3257932930_)
                                    (let ((___splice4093640937_
                                           (gx#syntax-split-splice
                                            _tl3257932930_
                                            '0)))
                                      (let ((_tl3258232936_
                                             (##vector-ref
                                              ___splice4093640937_
                                              '1))
                                            (_target3258032933_
                                             (##vector-ref
                                              ___splice4093640937_
                                              '0)))
                                        (if (gx#stx-null? _tl3258232936_)
                                            (___match4096640967_
                                             _e3257432913_
                                             _hd3257532917_
                                             _tl3257632920_
                                             _e3257732923_
                                             _hd3257832927_
                                             _tl3257932930_
                                             ___splice4093640937_
                                             _target3258032933_
                                             _tl3258232936_)
                                            (if (gx#stx-pair/null?
                                                 _hd3257832927_)
                                                (let ((___splice4094040941_
                                                       (gx#syntax-split-splice
                                                        _hd3257832927_
                                                        '0)))
                                                  (let ((_tl3260032659_
                                                         (##vector-ref
                                                          ___splice4094040941_
                                                          '1))
                                                        (_target3259832656_
                                                         (##vector-ref
                                                          ___splice4094040941_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3260032659_)
                                                        (___match4098640987_
                                                         _e3257432913_
                                                         _hd3257532917_
                                                         _tl3257632920_
                                                         _e3257732923_
                                                         _hd3257832927_
                                                         _tl3257932930_
                                                         ___splice4094040941_
                                                         _target3259832656_
                                                         _tl3260032659_)
                                                        (_g3257132629_))))
                                                (_g3257132629_)))))
                                    (if (gx#stx-pair/null? _hd3257832927_)
                                        (let ((___splice4094040941_
                                               (gx#syntax-split-splice
                                                _hd3257832927_
                                                '0)))
                                          (let ((_tl3260032659_
                                                 (##vector-ref
                                                  ___splice4094040941_
                                                  '1))
                                                (_target3259832656_
                                                 (##vector-ref
                                                  ___splice4094040941_
                                                  '0)))
                                            (if (gx#stx-null? _tl3260032659_)
                                                (___match4098640987_
                                                 _e3257432913_
                                                 _hd3257532917_
                                                 _tl3257632920_
                                                 _e3257732923_
                                                 _hd3257832927_
                                                 _tl3257932930_
                                                 ___splice4094040941_
                                                 _target3259832656_
                                                 _tl3260032659_)
                                                (_g3257132629_))))
                                        (_g3257132629_)))
                                (if (gx#stx-pair/null? _hd3257832927_)
                                    (let ((___splice4094040941_
                                           (gx#syntax-split-splice
                                            _hd3257832927_
                                            '0)))
                                      (let ((_tl3260032659_
                                             (##vector-ref
                                              ___splice4094040941_
                                              '1))
                                            (_target3259832656_
                                             (##vector-ref
                                              ___splice4094040941_
                                              '0)))
                                        (if (gx#stx-null? _tl3260032659_)
                                            (___match4098640987_
                                             _e3257432913_
                                             _hd3257532917_
                                             _tl3257632920_
                                             _e3257732923_
                                             _hd3257832927_
                                             _tl3257932930_
                                             ___splice4094040941_
                                             _target3259832656_
                                             _tl3260032659_)
                                            (_g3257132629_))))
                                    (_g3257132629_)))))
                        (_g3257132629_))))
                (_g3257132629_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32996_)
      (let* ((_g3300033024_
              (lambda (_g3300133020_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3300133020_)))
             (_g3299933109_
              (lambda (_g3300133028_)
                (if (gx#stx-pair? _g3300133028_)
                    (let ((_e3300433031_ (gx#syntax-e _g3300133028_)))
                      (let ((_hd3300533035_ (##car _e3300433031_))
                            (_tl3300633038_ (##cdr _e3300433031_)))
                        (if (gx#stx-pair? _tl3300633038_)
                            (let ((_e3300733041_ (gx#syntax-e _tl3300633038_)))
                              (let ((_hd3300833045_ (##car _e3300733041_))
                                    (_tl3300933048_ (##cdr _e3300733041_)))
                                (if (gx#stx-pair/null? _tl3300933048_)
                                    (let ((_g41444_
                                           (gx#syntax-split-splice
                                            _tl3300933048_
                                            '0)))
                                      (begin
                                        (let ((_g41445_
                                               (if (##values? _g41444_)
                                                   (##vector-length _g41444_)
                                                   1)))
                                          (if (not (##fx= _g41445_ 2))
                                              (error "Context expects 2 values"
                                                     _g41445_)))
                                        (let ((_target3301033051_
                                               (##vector-ref _g41444_ 0))
                                              (_tl3301233054_
                                               (##vector-ref _g41444_ 1)))
                                          (if (gx#stx-null? _tl3301233054_)
                                              (letrec ((_loop3301333057_
                                                        (lambda (_hd3301133061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3301733064_)
                  (if (gx#stx-pair? _hd3301133061_)
                      (let ((_e3301433067_ (gx#syntax-e _hd3301133061_)))
                        (let ((_lp-hd3301533071_ (##car _e3301433067_))
                              (_lp-tl3301633074_ (##cdr _e3301433067_)))
                          (_loop3301333057_
                           _lp-tl3301633074_
                           (cons _lp-hd3301533071_ _body3301733064_))))
                      (let ((_body3301833077_ (reverse _body3301733064_)))
                        ((lambda (_L33081_ _L33083_)
                           (if (gx#identifier? _L33083_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33083_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3310033103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3310133106_)
                          (cons _g3310033103_ _g3310133106_))
                        '()
                        _L33081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3300033024_ _g3300133028_)))
                         _body3301833077_
                         _hd3300833045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3301333057_
                                                 _target3301033051_
                                                 '()))
                                              (_g3300033024_ _g3300133028_)))))
                                    (_g3300033024_ _g3300133028_))))
                            (_g3300033024_ _g3300133028_))))
                    (_g3300033024_ _g3300133028_)))))
        (_g3299933109_ _$stx32996_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33114_)
      (let* ((_g3311833142_
              (lambda (_g3311933138_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3311933138_)))
             (_g3311733227_
              (lambda (_g3311933146_)
                (if (gx#stx-pair? _g3311933146_)
                    (let ((_e3312233149_ (gx#syntax-e _g3311933146_)))
                      (let ((_hd3312333153_ (##car _e3312233149_))
                            (_tl3312433156_ (##cdr _e3312233149_)))
                        (if (gx#stx-pair? _tl3312433156_)
                            (let ((_e3312533159_ (gx#syntax-e _tl3312433156_)))
                              (let ((_hd3312633163_ (##car _e3312533159_))
                                    (_tl3312733166_ (##cdr _e3312533159_)))
                                (if (gx#stx-pair/null? _tl3312733166_)
                                    (let ((_g41446_
                                           (gx#syntax-split-splice
                                            _tl3312733166_
                                            '0)))
                                      (begin
                                        (let ((_g41447_
                                               (if (##values? _g41446_)
                                                   (##vector-length _g41446_)
                                                   1)))
                                          (if (not (##fx= _g41447_ 2))
                                              (error "Context expects 2 values"
                                                     _g41447_)))
                                        (let ((_target3312833169_
                                               (##vector-ref _g41446_ 0))
                                              (_tl3313033172_
                                               (##vector-ref _g41446_ 1)))
                                          (if (gx#stx-null? _tl3313033172_)
                                              (letrec ((_loop3313133175_
                                                        (lambda (_hd3312933179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3313533182_)
                  (if (gx#stx-pair? _hd3312933179_)
                      (let ((_e3313233185_ (gx#syntax-e _hd3312933179_)))
                        (let ((_lp-hd3313333189_ (##car _e3313233185_))
                              (_lp-tl3313433192_ (##cdr _e3313233185_)))
                          (_loop3313133175_
                           _lp-tl3313433192_
                           (cons _lp-hd3313333189_ _body3313533182_))))
                      (let ((_body3313633195_ (reverse _body3313533182_)))
                        ((lambda (_L33199_ _L33201_)
                           (if (gx#identifier? _L33201_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33201_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3321833221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3321933224_)
                          (cons _g3321833221_ _g3321933224_))
                        '()
                        _L33199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3311833142_ _g3311933146_)))
                         _body3313633195_
                         _hd3312633163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3313133175_
                                                 _target3312833169_
                                                 '()))
                                              (_g3311833142_ _g3311933146_)))))
                                    (_g3311833142_ _g3311933146_))))
                            (_g3311833142_ _g3311933146_))))
                    (_g3311833142_ _g3311933146_)))))
        (_g3311733227_ _$stx33114_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33232_)
      (let* ((_g3323633264_
              (lambda (_g3323733260_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3323733260_)))
             (_g3323533363_
              (lambda (_g3323733268_)
                (if (gx#stx-pair? _g3323733268_)
                    (let ((_e3324133271_ (gx#syntax-e _g3323733268_)))
                      (let ((_hd3324233275_ (##car _e3324133271_))
                            (_tl3324333278_ (##cdr _e3324133271_)))
                        (if (gx#stx-pair? _tl3324333278_)
                            (let ((_e3324433281_ (gx#syntax-e _tl3324333278_)))
                              (let ((_hd3324533285_ (##car _e3324433281_))
                                    (_tl3324633288_ (##cdr _e3324433281_)))
                                (if (gx#stx-pair? _tl3324633288_)
                                    (let ((_e3324733291_
                                           (gx#syntax-e _tl3324633288_)))
                                      (let ((_hd3324833295_
                                             (##car _e3324733291_))
                                            (_tl3324933298_
                                             (##cdr _e3324733291_)))
                                        (if (gx#stx-pair/null? _tl3324933298_)
                                            (let ((_g41448_
                                                   (gx#syntax-split-splice
                                                    _tl3324933298_
                                                    '0)))
                                              (begin
                                                (let ((_g41449_
                                                       (if (##values? _g41448_)
                                                           (##vector-length
                                                            _g41448_)
                                                           1)))
                                                  (if (not (##fx= _g41449_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41449_)))
                                                (let ((_target3325033301_
                                                       (##vector-ref
                                                        _g41448_
                                                        0))
                                                      (_tl3325233304_
                                                       (##vector-ref
                                                        _g41448_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3325233304_)
                                                      (letrec ((_loop3325333307_
                                                                (lambda (_hd3325133311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3325733314_)
                          (if (gx#stx-pair? _hd3325133311_)
                              (let ((_e3325433317_
                                     (gx#syntax-e _hd3325133311_)))
                                (let ((_lp-hd3325533321_ (##car _e3325433317_))
                                      (_lp-tl3325633324_
                                       (##cdr _e3325433317_)))
                                  (_loop3325333307_
                                   _lp-tl3325633324_
                                   (cons _lp-hd3325533321_ _rest3325733314_))))
                              (let ((_rest3325833327_
                                     (reverse _rest3325733314_)))
                                ((lambda (_L33331_ _L33333_ _L33334_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33333_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3335433357_ _g3335533360_)
                                          (cons _g3335433357_ _g3335533360_))
                                        '()
                                        _L33331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3325833327_
                                 _hd3324833295_
                                 _hd3324533285_))))))
                (_loop3325333307_ _target3325033301_ '()))
              (_g3323633264_ _g3323733268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3323633264_ _g3323733268_))))
                                    (_g3323633264_ _g3323733268_))))
                            (_g3323633264_ _g3323733268_))))
                    (_g3323633264_ _g3323733268_)))))
        (_g3323533363_ _$stx33232_)))))
