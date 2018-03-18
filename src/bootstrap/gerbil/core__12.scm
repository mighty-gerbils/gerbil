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
    (lambda _$args31567_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31567_)))
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
    (lambda _$args31563_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31563_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31560_)
      (if (gx#identifier? _stx31560_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31560_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31557_)
      (if (gx#identifier? _stx31557_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31557_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31571_)
      (let* ((_g3157731636_
              (lambda (_g3157831632_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3157831632_)))
             (_g3157631691_
              (lambda (_g3157831640_)
                (if (gx#stx-pair? _g3157831640_)
                    (let ((_e3162231643_ (gx#syntax-e _g3157831640_)))
                      (let ((_hd3162331647_ (##car _e3162231643_))
                            (_tl3162431650_ (##cdr _e3162231643_)))
                        (if (gx#stx-pair? _tl3162431650_)
                            (let ((_e3162531653_ (gx#syntax-e _tl3162431650_)))
                              (let ((_hd3162631657_ (##car _e3162531653_))
                                    (_tl3162731660_ (##cdr _e3162531653_)))
                                (if (gx#stx-pair? _tl3162731660_)
                                    (let ((_e3162831663_
                                           (gx#syntax-e _tl3162731660_)))
                                      (let ((_hd3162931667_
                                             (##car _e3162831663_))
                                            (_tl3163031670_
                                             (##cdr _e3162831663_)))
                                        (if (gx#stx-null? _tl3163031670_)
                                            ((lambda (_L31673_ _L31675_)
                                               (if (gx#identifier? _L31675_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L31675_
                                                               (cons _L31673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3157731636_
                                                    _g3157831640_)))
                                             _hd3162931667_
                                             _hd3162631657_)
                                            (_g3157731636_ _g3157831640_))))
                                    (_g3157731636_ _g3157831640_))))
                            (_g3157731636_ _g3157831640_))))
                    (_g3157731636_ _g3157831640_))))
             (_g3157531731_
              (lambda (_g3157831695_)
                (if (gx#stx-pair? _g3157831695_)
                    (let ((_e3161431698_ (gx#syntax-e _g3157831695_)))
                      (let ((_hd3161531702_ (##car _e3161431698_))
                            (_tl3161631705_ (##cdr _e3161431698_)))
                        (if (gx#stx-pair? _tl3161631705_)
                            (let ((_e3161731708_ (gx#syntax-e _tl3161631705_)))
                              (let ((_hd3161831712_ (##car _e3161731708_))
                                    (_tl3161931715_ (##cdr _e3161731708_)))
                                ((lambda (_L31718_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L31718_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L31718_)
                                        _stx31571_)
                                       (_g3157631691_ _g3157831695_)))
                                 _hd3161831712_)))
                            (_g3157631691_ _g3157831695_))))
                    (_g3157631691_ _g3157831695_))))
             (_g3157431872_
              (lambda (_g3157831735_)
                (if (gx#stx-pair? _g3157831735_)
                    (let ((_e3159231738_ (gx#syntax-e _g3157831735_)))
                      (let ((_hd3159331742_ (##car _e3159231738_))
                            (_tl3159431745_ (##cdr _e3159231738_)))
                        (if (gx#stx-pair? _tl3159431745_)
                            (let ((_e3159531748_ (gx#syntax-e _tl3159431745_)))
                              (let ((_hd3159631752_ (##car _e3159531748_))
                                    (_tl3159731755_ (##cdr _e3159531748_)))
                                (if (gx#stx-pair? _hd3159631752_)
                                    (let ((_e3159831758_
                                           (gx#syntax-e _hd3159631752_)))
                                      (let ((_hd3159931762_
                                             (##car _e3159831758_))
                                            (_tl3160031765_
                                             (##cdr _e3159831758_)))
                                        (if (gx#stx-pair/null? _tl3160031765_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3160031765_)
                                                      '0)
                                                (let ((_g35661_
                                                       (gx#syntax-split-splice
                                                        _tl3160031765_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35662_
                                                           (if (##values?
                                                                _g35661_)
                                                               (##vector-length
                                                                _g35661_)
                                                               1)))
                                                      (if (not (##fx= _g35662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3160131768_
                                                           (##vector-ref
                                                            _g35661_
                                                            0))
                                                          (_tl3160331771_
                                                           (##vector-ref
                                                            _g35661_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3160331771_)
                                                          (letrec ((_loop3160431774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3160231778_ _arg3160831781_)
                              (if (gx#stx-pair? _hd3160231778_)
                                  (let ((_e3160531784_
                                         (gx#syntax-e _hd3160231778_)))
                                    (let ((_lp-hd3160631788_
                                           (##car _e3160531784_))
                                          (_lp-tl3160731791_
                                           (##cdr _e3160531784_)))
                                      (_loop3160431774_
                                       _lp-tl3160731791_
                                       (cons _lp-hd3160631788_
                                             _arg3160831781_))))
                                  (let ((_arg3160931794_
                                         (reverse _arg3160831781_)))
                                    (if (gx#stx-pair? _tl3159731755_)
                                        (let ((_e3161031798_
                                               (gx#syntax-e _tl3159731755_)))
                                          (let ((_hd3161131802_
                                                 (##car _e3161031798_))
                                                (_tl3161231805_
                                                 (##cdr _e3161031798_)))
                                            (if (gx#stx-null? _tl3161231805_)
                                                ((lambda (_L31808_
                                                          _L31810_
                                                          _L31811_)
                                                   (if (gx#identifier?
                                                        _L31811_)
                                                       (let* ((_g3183331841_
                                                               (lambda (_g3183431837_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3183431837_)))
                      (_g3183231868_
                       (lambda (_g3183431845_)
                         ((lambda (_L31848_)
                            (let ()
                              (cons _L31848_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3185931862_
                                                      _g3186031865_)
                                               (cons _g3185931862_
                                                     _g3186031865_))
                                             (cons _L31808_ '())
                                             _L31810_)))))
                          _g3183431845_))))
                 (_g3183231868_
                  (gx#stx-identifier _L31811_ _L31811_ '"-set!")))
               (_g3157531731_ _g3157831735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3161131802_
                                                 _arg3160931794_
                                                 _hd3159931762_)
                                                (_g3157531731_
                                                 _g3157831735_))))
                                        (_g3157531731_ _g3157831735_)))))))
                    (_loop3160431774_ _target3160131768_ '()))
                  (_g3157531731_ _g3157831735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3157531731_ _g3157831735_))
                                            (_g3157531731_ _g3157831735_))))
                                    (_g3157531731_ _g3157831735_))))
                            (_g3157531731_ _g3157831735_))))
                    (_g3157531731_ _g3157831735_))))
             (_g3157331924_
              (lambda (_g3157831876_)
                (if (gx#stx-pair? _g3157831876_)
                    (let ((_e3158031879_ (gx#syntax-e _g3157831876_)))
                      (let ((_hd3158131883_ (##car _e3158031879_))
                            (_tl3158231886_ (##cdr _e3158031879_)))
                        (if (gx#stx-pair? _tl3158231886_)
                            (let ((_e3158331889_ (gx#syntax-e _tl3158231886_)))
                              (let ((_hd3158431893_ (##car _e3158331889_))
                                    (_tl3158531896_ (##cdr _e3158331889_)))
                                (if (gx#stx-pair? _hd3158431893_)
                                    (let ((_e3158631899_
                                           (gx#syntax-e _hd3158431893_)))
                                      (let ((_hd3158731903_
                                             (##car _e3158631899_))
                                            (_tl3158831906_
                                             (##cdr _e3158631899_)))
                                        ((lambda (_L31909_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31909_)
                                                _stx31571_)
                                               (_g3157431872_ _g3157831876_)))
                                         _hd3158731903_)))
                                    (_g3157431872_ _g3157831876_))))
                            (_g3157431872_ _g3157831876_))))
                    (_g3157431872_ _g3157831876_)))))
        (_g3157331924_ _stx31571_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31929_)
      (let* ((_g3193231956_
              (lambda (_g3193331952_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3193331952_)))
             (_g3193132134_
              (lambda (_g3193331960_)
                (if (gx#stx-pair? _g3193331960_)
                    (let ((_e3193631963_ (gx#syntax-e _g3193331960_)))
                      (let ((_hd3193731967_ (##car _e3193631963_))
                            (_tl3193831970_ (##cdr _e3193631963_)))
                        (if (gx#stx-pair/null? _tl3193831970_)
                            (if (fx>= (gx#stx-length _tl3193831970_) '1)
                                (let ((_g35663_
                                       (gx#syntax-split-splice
                                        _tl3193831970_
                                        '1)))
                                  (begin
                                    (let ((_g35664_
                                           (if (##values? _g35663_)
                                               (##vector-length _g35663_)
                                               1)))
                                      (if (not (##fx= _g35664_ 2))
                                          (error "Context expects 2 values"
                                                 _g35664_)))
                                    (let ((_target3193931973_
                                           (##vector-ref _g35663_ 0))
                                          (_tl3194131976_
                                           (##vector-ref _g35663_ 1)))
                                      (if (gx#stx-pair? _tl3194131976_)
                                          (let ((_e3194831979_
                                                 (gx#syntax-e _tl3194131976_)))
                                            (let ((_hd3194931983_
                                                   (##car _e3194831979_))
                                                  (_tl3195031986_
                                                   (##cdr _e3194831979_)))
                                              (if (gx#stx-null? _tl3195031986_)
                                                  (letrec ((_loop3194231989_
                                                            (lambda (_hd3194031993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3194631996_)
                      (if (gx#stx-pair? _hd3194031993_)
                          (let ((_e3194331999_ (gx#syntax-e _hd3194031993_)))
                            (let ((_lp-hd3194432003_ (##car _e3194331999_))
                                  (_lp-tl3194532006_ (##cdr _e3194331999_)))
                              (_loop3194231989_
                               _lp-tl3194532006_
                               (cons _lp-hd3194432003_ _tgt3194631996_))))
                          (let ((_tgt3194732009_ (reverse _tgt3194631996_)))
                            ((lambda (_L32013_ _L32015_)
                               (let* ((_g3203332050_
                                       (lambda (_g3203432046_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3203432046_)))
                                      (_g3203232122_
                                       (lambda (_g3203432054_)
                                         (if (gx#stx-pair/null? _g3203432054_)
                                             (if (fx>= (gx#stx-length
                                                        _g3203432054_)
                                                       '0)
                                                 (let ((_g35665_
                                                        (gx#syntax-split-splice
                                                         _g3203432054_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35666_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35665_)
                        (##vector-length _g35665_)
                        1)))
               (if (not (##fx= _g35666_ 2))
                   (error "Context expects 2 values" _g35666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3203632057_
                                                            (##vector-ref
                                                             _g35665_
                                                             0))
                                                           (_tl3203832060_
                                                            (##vector-ref
                                                             _g35665_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3203832060_)
                                                           (letrec ((_loop3203932063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3203732067_ _$e3204332070_)
                               (if (gx#stx-pair? _hd3203732067_)
                                   (let ((_e3204032073_
                                          (gx#syntax-e _hd3203732067_)))
                                     (let ((_lp-hd3204132077_
                                            (##car _e3204032073_))
                                           (_lp-tl3204232080_
                                            (##cdr _e3204032073_)))
                                       (_loop3203932063_
                                        _lp-tl3204232080_
                                        (cons _lp-hd3204132077_
                                              _$e3204332070_))))
                                   (let ((_$e3204432083_
                                          (reverse _$e3204332070_)))
                                     ((lambda (_L32087_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3210232108_ _g3210332111_)
                                     (cons _g3210232108_ _g3210332111_))
                                   '()
                                   _L32087_))
                          (cons _L32013_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L32087_ _L32015_)
                (foldr (lambda (_g3210432114_ _g3210532117_ _g3210632119_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3210532117_
                                           (cons _g3210432114_ '())))
                               _g3210632119_))
                       '()
                       _L32087_
                       _L32015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3204432083_))))))
                     (_loop3203932063_ _target3203632057_ '()))
                   (_g3203332050_ _g3203432054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3203332050_ _g3203432054_))
                                             (_g3203332050_ _g3203432054_)))))
                                 (_g3203232122_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3212532128_
                                                     _g3212632131_)
                                              (cons _g3212532128_
                                                    _g3212632131_))
                                            '()
                                            _L32015_))))))
                             _hd3194931983_
                             _tgt3194732009_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3194231989_
                                                     _target3193931973_
                                                     '()))
                                                  (_g3193231956_
                                                   _g3193331960_))))
                                          (_g3193231956_ _g3193331960_)))))
                                (_g3193231956_ _g3193331960_))
                            (_g3193231956_ _g3193331960_))))
                    (_g3193231956_ _g3193331960_)))))
        (_g3193132134_ _stx31929_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32140_)
      (let* ((_g3214432202_
              (lambda (_g3214532198_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3214532198_)))
             (_g3214332479_
              (lambda (_g3214532206_)
                (if (gx#stx-pair? _g3214532206_)
                    (let ((_e3216532209_ (gx#syntax-e _g3214532206_)))
                      (let ((_hd3216632213_ (##car _e3216532209_))
                            (_tl3216732216_ (##cdr _e3216532209_)))
                        (if (gx#stx-pair? _tl3216732216_)
                            (let ((_e3216832219_ (gx#syntax-e _tl3216732216_)))
                              (let ((_hd3216932223_ (##car _e3216832219_))
                                    (_tl3217032226_ (##cdr _e3216832219_)))
                                (if (gx#stx-pair/null? _hd3216932223_)
                                    (if (fx>= (gx#stx-length _hd3216932223_)
                                              '0)
                                        (let ((_g35667_
                                               (gx#syntax-split-splice
                                                _hd3216932223_
                                                '0)))
                                          (begin
                                            (let ((_g35668_
                                                   (if (##values? _g35667_)
                                                       (##vector-length
                                                        _g35667_)
                                                       1)))
                                              (if (not (##fx= _g35668_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35668_)))
                                            (let ((_target3217132229_
                                                   (##vector-ref _g35667_ 0))
                                                  (_tl3217332232_
                                                   (##vector-ref _g35667_ 1)))
                                              (if (gx#stx-null? _tl3217332232_)
                                                  (letrec ((_loop3217432235_
                                                            (lambda (_hd3217232239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3217832242_
                             _param3217932244_)
                      (if (gx#stx-pair? _hd3217232239_)
                          (let ((_e3217532247_ (gx#syntax-e _hd3217232239_)))
                            (let ((_lp-hd3217632251_ (##car _e3217532247_))
                                  (_lp-tl3217732254_ (##cdr _e3217532247_)))
                              (if (gx#stx-pair? _lp-hd3217632251_)
                                  (let ((_e3218232257_
                                         (gx#syntax-e _lp-hd3217632251_)))
                                    (let ((_hd3218332261_
                                           (##car _e3218232257_))
                                          (_tl3218432264_
                                           (##cdr _e3218232257_)))
                                      (if (gx#stx-pair? _tl3218432264_)
                                          (let ((_e3218532267_
                                                 (gx#syntax-e _tl3218432264_)))
                                            (let ((_hd3218632271_
                                                   (##car _e3218532267_))
                                                  (_tl3218732274_
                                                   (##cdr _e3218532267_)))
                                              (if (gx#stx-null? _tl3218732274_)
                                                  (_loop3217432235_
                                                   _lp-tl3217732254_
                                                   (cons _hd3218632271_
                                                         _expr3217832242_)
                                                   (cons _hd3218332261_
                                                         _param3217932244_))
                                                  (_g3214432202_
                                                   _g3214532206_))))
                                          (_g3214432202_ _g3214532206_))))
                                  (_g3214432202_ _g3214532206_))))
                          (let ((_expr3218032277_ (reverse _expr3217832242_))
                                (_param3218132280_
                                 (reverse _param3217932244_)))
                            (if (gx#stx-pair/null? _tl3217032226_)
                                (if (fx>= (gx#stx-length _tl3217032226_) '0)
                                    (let ((_g35669_
                                           (gx#syntax-split-splice
                                            _tl3217032226_
                                            '0)))
                                      (begin
                                        (let ((_g35670_
                                               (if (##values? _g35669_)
                                                   (##vector-length _g35669_)
                                                   1)))
                                          (if (not (##fx= _g35670_ 2))
                                              (error "Context expects 2 values"
                                                     _g35670_)))
                                        (let ((_target3218832283_
                                               (##vector-ref _g35669_ 0))
                                              (_tl3219032286_
                                               (##vector-ref _g35669_ 1)))
                                          (if (gx#stx-null? _tl3219032286_)
                                              (letrec ((_loop3219132289_
                                                        (lambda (_hd3218932293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3219532296_)
                  (if (gx#stx-pair? _hd3218932293_)
                      (let ((_e3219232299_ (gx#syntax-e _hd3218932293_)))
                        (let ((_lp-hd3219332303_ (##car _e3219232299_))
                              (_lp-tl3219432306_ (##cdr _e3219232299_)))
                          (_loop3219132289_
                           _lp-tl3219432306_
                           (cons _lp-hd3219332303_ _body3219532296_))))
                      (let ((_body3219632309_ (reverse _body3219532296_)))
                        ((lambda (_L32313_ _L32315_ _L32316_)
                           (let* ((_g3233932347_
                                   (lambda (_g3234032343_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3234032343_)))
                                  (_g3233832467_
                                   (lambda (_g3234032351_)
                                     ((lambda (_L32354_)
                                        (let ()
                                          (let* ((_g3236632383_
                                                  (lambda (_g3236732379_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3236732379_)))
                                                 (_g3236532447_
                                                  (lambda (_g3236732387_)
                                                    (if (gx#stx-pair/null?
                                                         _g3236732387_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3236732387_)
                          '0)
                    (let ((_g35671_ (gx#syntax-split-splice _g3236732387_ '0)))
                      (begin
                        (let ((_g35672_
                               (if (##values? _g35671_)
                                   (##vector-length _g35671_)
                                   1)))
                          (if (not (##fx= _g35672_ 2))
                              (error "Context expects 2 values" _g35672_)))
                        (let ((_target3236932390_ (##vector-ref _g35671_ 0))
                              (_tl3237132393_ (##vector-ref _g35671_ 1)))
                          (if (gx#stx-null? _tl3237132393_)
                              (letrec ((_loop3237232396_
                                        (lambda (_hd3237032400_
                                                 _arg3237632403_)
                                          (if (gx#stx-pair? _hd3237032400_)
                                              (let ((_e3237332406_
                                                     (gx#syntax-e
                                                      _hd3237032400_)))
                                                (let ((_lp-hd3237432410_
                                                       (##car _e3237332406_))
                                                      (_lp-tl3237532413_
                                                       (##cdr _e3237332406_)))
                                                  (_loop3237232396_
                                                   _lp-tl3237532413_
                                                   (cons _lp-hd3237432410_
                                                         _arg3237632403_))))
                                              (let ((_arg3237732416_
                                                     (reverse _arg3237632403_)))
                                                ((lambda (_L32420_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L32354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3243832441_ _g3243932444_)
                                      (cons _g3243832441_ _g3243932444_))
                                    '()
                                    _L32420_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3237732416_))))))
                                (_loop3237232396_ _target3236932390_ '()))
                              (_g3236632383_ _g3236732387_)))))
                    (_g3236632383_ _g3236732387_))
                (_g3236632383_ _g3236732387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3236532447_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3245032453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3245132456_)
                        (cons _g3245032453_ _g3245132456_))
                      '()
                      _L32316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3245832461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3245932464_)
                        (cons _g3245832461_ _g3245932464_))
                      '()
                      _L32315_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3234032351_))))
                             (_g3233832467_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3247032473_
                                                             _g3247132476_)
                                                      (cons _g3247032473_
                                                            _g3247132476_))
                                                    '()
                                                    _L32313_))))
                               (gx#stx-source _stx32140_)))))
                         _body3219632309_
                         _expr3218032277_
                         _param3218132280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3219132289_
                                                 _target3218832283_
                                                 '()))
                                              (_g3214432202_ _g3214532206_)))))
                                    (_g3214432202_ _g3214532206_))
                                (_g3214432202_ _g3214532206_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3217432235_
                                                     _target3217132229_
                                                     '()
                                                     '()))
                                                  (_g3214432202_
                                                   _g3214532206_)))))
                                        (_g3214432202_ _g3214532206_))
                                    (_g3214432202_ _g3214532206_))))
                            (_g3214432202_ _g3214532206_))))
                    (_g3214432202_ _g3214532206_))))
             (_g3214232561_
              (lambda (_g3214532483_)
                (if (gx#stx-pair? _g3214532483_)
                    (let ((_e3214732486_ (gx#syntax-e _g3214532483_)))
                      (let ((_hd3214832490_ (##car _e3214732486_))
                            (_tl3214932493_ (##cdr _e3214732486_)))
                        (if (gx#stx-pair? _tl3214932493_)
                            (let ((_e3215032496_ (gx#syntax-e _tl3214932493_)))
                              (let ((_hd3215132500_ (##car _e3215032496_))
                                    (_tl3215232503_ (##cdr _e3215032496_)))
                                (if (gx#stx-null? _hd3215132500_)
                                    (if (gx#stx-pair/null? _tl3215232503_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3215232503_)
                                                  '0)
                                            (let ((_g35673_
                                                   (gx#syntax-split-splice
                                                    _tl3215232503_
                                                    '0)))
                                              (begin
                                                (let ((_g35674_
                                                       (if (##values? _g35673_)
                                                           (##vector-length
                                                            _g35673_)
                                                           1)))
                                                  (if (not (##fx= _g35674_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35674_)))
                                                (let ((_target3215332506_
                                                       (##vector-ref
                                                        _g35673_
                                                        0))
                                                      (_tl3215532509_
                                                       (##vector-ref
                                                        _g35673_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3215532509_)
                                                      (letrec ((_loop3215632512_
                                                                (lambda (_hd3215432516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3216032519_)
                          (if (gx#stx-pair? _hd3215432516_)
                              (let ((_e3215732522_
                                     (gx#syntax-e _hd3215432516_)))
                                (let ((_lp-hd3215832526_ (##car _e3215732522_))
                                      (_lp-tl3215932529_
                                       (##cdr _e3215732522_)))
                                  (_loop3215632512_
                                   _lp-tl3215932529_
                                   (cons _lp-hd3215832526_ _body3216032519_))))
                              (let ((_body3216132532_
                                     (reverse _body3216032519_)))
                                ((lambda (_L32536_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3255232555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3255332558_)
                  (cons _g3255232555_ _g3255332558_))
                '()
                _L32536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3216132532_))))))
                (_loop3215632512_ _target3215332506_ '()))
              (_g3214332479_ _g3214532483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3214332479_ _g3214532483_))
                                        (_g3214332479_ _g3214532483_))
                                    (_g3214332479_ _g3214532483_))))
                            (_g3214332479_ _g3214532483_))))
                    (_g3214332479_ _g3214532483_)))))
        (_g3214232561_ _stx32140_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32569_)
      (let* ((_g3257332597_
              (lambda (_g3257432593_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3257432593_)))
             (_g3257232682_
              (lambda (_g3257432601_)
                (if (gx#stx-pair? _g3257432601_)
                    (let ((_e3257732604_ (gx#syntax-e _g3257432601_)))
                      (let ((_hd3257832608_ (##car _e3257732604_))
                            (_tl3257932611_ (##cdr _e3257732604_)))
                        (if (gx#stx-pair? _tl3257932611_)
                            (let ((_e3258032614_ (gx#syntax-e _tl3257932611_)))
                              (let ((_hd3258132618_ (##car _e3258032614_))
                                    (_tl3258232621_ (##cdr _e3258032614_)))
                                (if (gx#stx-pair/null? _tl3258232621_)
                                    (if (fx>= (gx#stx-length _tl3258232621_)
                                              '0)
                                        (let ((_g35675_
                                               (gx#syntax-split-splice
                                                _tl3258232621_
                                                '0)))
                                          (begin
                                            (let ((_g35676_
                                                   (if (##values? _g35675_)
                                                       (##vector-length
                                                        _g35675_)
                                                       1)))
                                              (if (not (##fx= _g35676_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35676_)))
                                            (let ((_target3258332624_
                                                   (##vector-ref _g35675_ 0))
                                                  (_tl3258532627_
                                                   (##vector-ref _g35675_ 1)))
                                              (if (gx#stx-null? _tl3258532627_)
                                                  (letrec ((_loop3258632630_
                                                            (lambda (_hd3258432634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3259032637_)
                      (if (gx#stx-pair? _hd3258432634_)
                          (let ((_e3258732640_ (gx#syntax-e _hd3258432634_)))
                            (let ((_lp-hd3258832644_ (##car _e3258732640_))
                                  (_lp-tl3258932647_ (##cdr _e3258732640_)))
                              (_loop3258632630_
                               _lp-tl3258932647_
                               (cons _lp-hd3258832644_ _body3259032637_))))
                          (let ((_body3259132650_ (reverse _body3259032637_)))
                            ((lambda (_L32654_ _L32656_)
                               (if (gx#identifier? _L32656_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32656_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3267332676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3267432679_)
                              (cons _g3267332676_ _g3267432679_))
                            '()
                            _L32654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3257332597_ _g3257432601_)))
                             _body3259132650_
                             _hd3258132618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3258632630_
                                                     _target3258332624_
                                                     '()))
                                                  (_g3257332597_
                                                   _g3257432601_)))))
                                        (_g3257332597_ _g3257432601_))
                                    (_g3257332597_ _g3257432601_))))
                            (_g3257332597_ _g3257432601_))))
                    (_g3257332597_ _g3257432601_)))))
        (_g3257232682_ _$stx32569_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32687_)
      (let* ((_g3269132715_
              (lambda (_g3269232711_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3269232711_)))
             (_g3269032800_
              (lambda (_g3269232719_)
                (if (gx#stx-pair? _g3269232719_)
                    (let ((_e3269532722_ (gx#syntax-e _g3269232719_)))
                      (let ((_hd3269632726_ (##car _e3269532722_))
                            (_tl3269732729_ (##cdr _e3269532722_)))
                        (if (gx#stx-pair? _tl3269732729_)
                            (let ((_e3269832732_ (gx#syntax-e _tl3269732729_)))
                              (let ((_hd3269932736_ (##car _e3269832732_))
                                    (_tl3270032739_ (##cdr _e3269832732_)))
                                (if (gx#stx-pair/null? _tl3270032739_)
                                    (if (fx>= (gx#stx-length _tl3270032739_)
                                              '0)
                                        (let ((_g35677_
                                               (gx#syntax-split-splice
                                                _tl3270032739_
                                                '0)))
                                          (begin
                                            (let ((_g35678_
                                                   (if (##values? _g35677_)
                                                       (##vector-length
                                                        _g35677_)
                                                       1)))
                                              (if (not (##fx= _g35678_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35678_)))
                                            (let ((_target3270132742_
                                                   (##vector-ref _g35677_ 0))
                                                  (_tl3270332745_
                                                   (##vector-ref _g35677_ 1)))
                                              (if (gx#stx-null? _tl3270332745_)
                                                  (letrec ((_loop3270432748_
                                                            (lambda (_hd3270232752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3270832755_)
                      (if (gx#stx-pair? _hd3270232752_)
                          (let ((_e3270532758_ (gx#syntax-e _hd3270232752_)))
                            (let ((_lp-hd3270632762_ (##car _e3270532758_))
                                  (_lp-tl3270732765_ (##cdr _e3270532758_)))
                              (_loop3270432748_
                               _lp-tl3270732765_
                               (cons _lp-hd3270632762_ _body3270832755_))))
                          (let ((_body3270932768_ (reverse _body3270832755_)))
                            ((lambda (_L32772_ _L32774_)
                               (if (gx#identifier? _L32774_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32774_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3279132794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3279232797_)
                              (cons _g3279132794_ _g3279232797_))
                            '()
                            _L32772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3269132715_ _g3269232719_)))
                             _body3270932768_
                             _hd3269932736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3270432748_
                                                     _target3270132742_
                                                     '()))
                                                  (_g3269132715_
                                                   _g3269232719_)))))
                                        (_g3269132715_ _g3269232719_))
                                    (_g3269132715_ _g3269232719_))))
                            (_g3269132715_ _g3269232719_))))
                    (_g3269132715_ _g3269232719_)))))
        (_g3269032800_ _$stx32687_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32805_)
      (let* ((_g3280932837_
              (lambda (_g3281032833_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3281032833_)))
             (_g3280832936_
              (lambda (_g3281032841_)
                (if (gx#stx-pair? _g3281032841_)
                    (let ((_e3281432844_ (gx#syntax-e _g3281032841_)))
                      (let ((_hd3281532848_ (##car _e3281432844_))
                            (_tl3281632851_ (##cdr _e3281432844_)))
                        (if (gx#stx-pair? _tl3281632851_)
                            (let ((_e3281732854_ (gx#syntax-e _tl3281632851_)))
                              (let ((_hd3281832858_ (##car _e3281732854_))
                                    (_tl3281932861_ (##cdr _e3281732854_)))
                                (if (gx#stx-pair? _tl3281932861_)
                                    (let ((_e3282032864_
                                           (gx#syntax-e _tl3281932861_)))
                                      (let ((_hd3282132868_
                                             (##car _e3282032864_))
                                            (_tl3282232871_
                                             (##cdr _e3282032864_)))
                                        (if (gx#stx-pair/null? _tl3282232871_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3282232871_)
                                                      '0)
                                                (let ((_g35679_
                                                       (gx#syntax-split-splice
                                                        _tl3282232871_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35680_
                                                           (if (##values?
                                                                _g35679_)
                                                               (##vector-length
                                                                _g35679_)
                                                               1)))
                                                      (if (not (##fx= _g35680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3282332874_
                                                           (##vector-ref
                                                            _g35679_
                                                            0))
                                                          (_tl3282532877_
                                                           (##vector-ref
                                                            _g35679_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3282532877_)
                                                          (letrec ((_loop3282632880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3282432884_ _rest3283032887_)
                              (if (gx#stx-pair? _hd3282432884_)
                                  (let ((_e3282732890_
                                         (gx#syntax-e _hd3282432884_)))
                                    (let ((_lp-hd3282832894_
                                           (##car _e3282732890_))
                                          (_lp-tl3282932897_
                                           (##cdr _e3282732890_)))
                                      (_loop3282632880_
                                       _lp-tl3282932897_
                                       (cons _lp-hd3282832894_
                                             _rest3283032887_))))
                                  (let ((_rest3283132900_
                                         (reverse _rest3283032887_)))
                                    ((lambda (_L32904_ _L32906_ _L32907_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32906_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3292732930_
                                                     _g3292832933_)
                                              (cons _g3292732930_
                                                    _g3292832933_))
                                            '()
                                            _L32904_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3283132900_
                                     _hd3282132868_
                                     _hd3281832858_))))))
                    (_loop3282632880_ _target3282332874_ '()))
                  (_g3280932837_ _g3281032841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3280932837_ _g3281032841_))
                                            (_g3280932837_ _g3281032841_))))
                                    (_g3280932837_ _g3281032841_))))
                            (_g3280932837_ _g3281032841_))))
                    (_g3280932837_ _g3281032841_)))))
        (_g3280832936_ _$stx32805_)))))
