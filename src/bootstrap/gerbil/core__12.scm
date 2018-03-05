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
    (lambda _$args30812_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args30812_)))
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
    (lambda _$args30808_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args30808_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx30805_)
      (if (gx#identifier? _stx30805_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx30805_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx30802_)
      (if (gx#identifier? _stx30802_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx30802_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx30816_)
      (let* ((_g3082230881_
              (lambda (_g3082330877_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3082330877_)))
             (_g3082130936_
              (lambda (_g3082330885_)
                (if (gx#stx-pair? _g3082330885_)
                    (let ((_e3086730888_ (gx#syntax-e _g3082330885_)))
                      (let ((_hd3086830892_ (##car _e3086730888_))
                            (_tl3086930895_ (##cdr _e3086730888_)))
                        (if (gx#stx-pair? _tl3086930895_)
                            (let ((_e3087030898_ (gx#syntax-e _tl3086930895_)))
                              (let ((_hd3087130902_ (##car _e3087030898_))
                                    (_tl3087230905_ (##cdr _e3087030898_)))
                                (if (gx#stx-pair? _tl3087230905_)
                                    (let ((_e3087330908_
                                           (gx#syntax-e _tl3087230905_)))
                                      (let ((_hd3087430912_
                                             (##car _e3087330908_))
                                            (_tl3087530915_
                                             (##cdr _e3087330908_)))
                                        (if (gx#stx-null? _tl3087530915_)
                                            ((lambda (_L30918_ _L30920_)
                                               (if (gx#identifier? _L30920_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L30920_
                                                               (cons _L30918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3082230881_
                                                    _g3082330885_)))
                                             _hd3087430912_
                                             _hd3087130902_)
                                            (_g3082230881_ _g3082330885_))))
                                    (_g3082230881_ _g3082330885_))))
                            (_g3082230881_ _g3082330885_))))
                    (_g3082230881_ _g3082330885_))))
             (_g3082030976_
              (lambda (_g3082330940_)
                (if (gx#stx-pair? _g3082330940_)
                    (let ((_e3085930943_ (gx#syntax-e _g3082330940_)))
                      (let ((_hd3086030947_ (##car _e3085930943_))
                            (_tl3086130950_ (##cdr _e3085930943_)))
                        (if (gx#stx-pair? _tl3086130950_)
                            (let ((_e3086230953_ (gx#syntax-e _tl3086130950_)))
                              (let ((_hd3086330957_ (##car _e3086230953_))
                                    (_tl3086430960_ (##cdr _e3086230953_)))
                                ((lambda (_L30963_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L30963_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L30963_)
                                        _stx30816_)
                                       (_g3082130936_ _g3082330940_)))
                                 _hd3086330957_)))
                            (_g3082130936_ _g3082330940_))))
                    (_g3082130936_ _g3082330940_))))
             (_g3081931117_
              (lambda (_g3082330980_)
                (if (gx#stx-pair? _g3082330980_)
                    (let ((_e3083730983_ (gx#syntax-e _g3082330980_)))
                      (let ((_hd3083830987_ (##car _e3083730983_))
                            (_tl3083930990_ (##cdr _e3083730983_)))
                        (if (gx#stx-pair? _tl3083930990_)
                            (let ((_e3084030993_ (gx#syntax-e _tl3083930990_)))
                              (let ((_hd3084130997_ (##car _e3084030993_))
                                    (_tl3084231000_ (##cdr _e3084030993_)))
                                (if (gx#stx-pair? _hd3084130997_)
                                    (let ((_e3084331003_
                                           (gx#syntax-e _hd3084130997_)))
                                      (let ((_hd3084431007_
                                             (##car _e3084331003_))
                                            (_tl3084531010_
                                             (##cdr _e3084331003_)))
                                        (if (gx#stx-pair/null? _tl3084531010_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3084531010_)
                                                      '0)
                                                (let ((_g34902_
                                                       (gx#syntax-split-splice
                                                        _tl3084531010_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34903_
                                                           (values-count
                                                            _g34902_)))
                                                      (if (not (fx= _g34903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3084631013_
                                                           (values-ref
                                                            _g34902_
                                                            0))
                                                          (_tl3084831016_
                                                           (values-ref
                                                            _g34902_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3084831016_)
                                                          (letrec ((_loop3084931019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3084731023_ _arg3085331026_)
                              (if (gx#stx-pair? _hd3084731023_)
                                  (let ((_e3085031029_
                                         (gx#syntax-e _hd3084731023_)))
                                    (let ((_lp-hd3085131033_
                                           (##car _e3085031029_))
                                          (_lp-tl3085231036_
                                           (##cdr _e3085031029_)))
                                      (_loop3084931019_
                                       _lp-tl3085231036_
                                       (cons _lp-hd3085131033_
                                             _arg3085331026_))))
                                  (let ((_arg3085431039_
                                         (reverse _arg3085331026_)))
                                    (if (gx#stx-pair? _tl3084231000_)
                                        (let ((_e3085531043_
                                               (gx#syntax-e _tl3084231000_)))
                                          (let ((_hd3085631047_
                                                 (##car _e3085531043_))
                                                (_tl3085731050_
                                                 (##cdr _e3085531043_)))
                                            (if (gx#stx-null? _tl3085731050_)
                                                ((lambda (_L31053_
                                                          _L31055_
                                                          _L31056_)
                                                   (if (gx#identifier?
                                                        _L31056_)
                                                       (let* ((_g3107831086_
                                                               (lambda (_g3107931082_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3107931082_)))
                      (_g3107731113_
                       (lambda (_g3107931090_)
                         ((lambda (_L31093_)
                            (let ()
                              (cons _L31093_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3110431107_
                                                      _g3110531110_)
                                               (cons _g3110431107_
                                                     _g3110531110_))
                                             (cons _L31053_ '())
                                             _L31055_)))))
                          _g3107931090_))))
                 (_g3107731113_
                  (gx#stx-identifier _L31056_ _L31056_ '"-set!")))
               (_g3082030976_ _g3082330980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3085631047_
                                                 _arg3085431039_
                                                 _hd3084431007_)
                                                (_g3082030976_
                                                 _g3082330980_))))
                                        (_g3082030976_ _g3082330980_)))))))
                    (_loop3084931019_ _target3084631013_ '()))
                  (_g3082030976_ _g3082330980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3082030976_ _g3082330980_))
                                            (_g3082030976_ _g3082330980_))))
                                    (_g3082030976_ _g3082330980_))))
                            (_g3082030976_ _g3082330980_))))
                    (_g3082030976_ _g3082330980_))))
             (_g3081831169_
              (lambda (_g3082331121_)
                (if (gx#stx-pair? _g3082331121_)
                    (let ((_e3082531124_ (gx#syntax-e _g3082331121_)))
                      (let ((_hd3082631128_ (##car _e3082531124_))
                            (_tl3082731131_ (##cdr _e3082531124_)))
                        (if (gx#stx-pair? _tl3082731131_)
                            (let ((_e3082831134_ (gx#syntax-e _tl3082731131_)))
                              (let ((_hd3082931138_ (##car _e3082831134_))
                                    (_tl3083031141_ (##cdr _e3082831134_)))
                                (if (gx#stx-pair? _hd3082931138_)
                                    (let ((_e3083131144_
                                           (gx#syntax-e _hd3082931138_)))
                                      (let ((_hd3083231148_
                                             (##car _e3083131144_))
                                            (_tl3083331151_
                                             (##cdr _e3083131144_)))
                                        ((lambda (_L31154_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31154_)
                                                _stx30816_)
                                               (_g3081931117_ _g3082331121_)))
                                         _hd3083231148_)))
                                    (_g3081931117_ _g3082331121_))))
                            (_g3081931117_ _g3082331121_))))
                    (_g3081931117_ _g3082331121_)))))
        (_g3081831169_ _stx30816_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31174_)
      (let* ((_g3117731201_
              (lambda (_g3117831197_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3117831197_)))
             (_g3117631379_
              (lambda (_g3117831205_)
                (if (gx#stx-pair? _g3117831205_)
                    (let ((_e3118131208_ (gx#syntax-e _g3117831205_)))
                      (let ((_hd3118231212_ (##car _e3118131208_))
                            (_tl3118331215_ (##cdr _e3118131208_)))
                        (if (gx#stx-pair/null? _tl3118331215_)
                            (if (fx>= (gx#stx-length _tl3118331215_) '1)
                                (let ((_g34904_
                                       (gx#syntax-split-splice
                                        _tl3118331215_
                                        '1)))
                                  (begin
                                    (let ((_g34905_ (values-count _g34904_)))
                                      (if (not (fx= _g34905_ 2))
                                          (error "Context expects 2 values"
                                                 _g34905_)))
                                    (let ((_target3118431218_
                                           (values-ref _g34904_ 0))
                                          (_tl3118631221_
                                           (values-ref _g34904_ 1)))
                                      (if (gx#stx-pair? _tl3118631221_)
                                          (let ((_e3119331224_
                                                 (gx#syntax-e _tl3118631221_)))
                                            (let ((_hd3119431228_
                                                   (##car _e3119331224_))
                                                  (_tl3119531231_
                                                   (##cdr _e3119331224_)))
                                              (if (gx#stx-null? _tl3119531231_)
                                                  (letrec ((_loop3118731234_
                                                            (lambda (_hd3118531238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3119131241_)
                      (if (gx#stx-pair? _hd3118531238_)
                          (let ((_e3118831244_ (gx#syntax-e _hd3118531238_)))
                            (let ((_lp-hd3118931248_ (##car _e3118831244_))
                                  (_lp-tl3119031251_ (##cdr _e3118831244_)))
                              (_loop3118731234_
                               _lp-tl3119031251_
                               (cons _lp-hd3118931248_ _tgt3119131241_))))
                          (let ((_tgt3119231254_ (reverse _tgt3119131241_)))
                            ((lambda (_L31258_ _L31260_)
                               (let* ((_g3127831295_
                                       (lambda (_g3127931291_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3127931291_)))
                                      (_g3127731367_
                                       (lambda (_g3127931299_)
                                         (if (gx#stx-pair/null? _g3127931299_)
                                             (if (fx>= (gx#stx-length
                                                        _g3127931299_)
                                                       '0)
                                                 (let ((_g34906_
                                                        (gx#syntax-split-splice
                                                         _g3127931299_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34907_
                                                            (values-count
                                                             _g34906_)))
                                                       (if (not (fx= _g34907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3128131302_
                                                            (values-ref
                                                             _g34906_
                                                             0))
                                                           (_tl3128331305_
                                                            (values-ref
                                                             _g34906_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3128331305_)
                                                           (letrec ((_loop3128431308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3128231312_ _$e3128831315_)
                               (if (gx#stx-pair? _hd3128231312_)
                                   (let ((_e3128531318_
                                          (gx#syntax-e _hd3128231312_)))
                                     (let ((_lp-hd3128631322_
                                            (##car _e3128531318_))
                                           (_lp-tl3128731325_
                                            (##cdr _e3128531318_)))
                                       (_loop3128431308_
                                        _lp-tl3128731325_
                                        (cons _lp-hd3128631322_
                                              _$e3128831315_))))
                                   (let ((_$e3128931328_
                                          (reverse _$e3128831315_)))
                                     ((lambda (_L31332_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3134731353_ _g3134831356_)
                                     (cons _g3134731353_ _g3134831356_))
                                   '()
                                   _L31332_))
                          (cons _L31258_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31332_ _L31260_)
                (foldr (lambda (_g3134931359_ _g3135031362_ _g3135131364_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3135031362_
                                           (cons _g3134931359_ '())))
                               _g3135131364_))
                       '()
                       _L31332_
                       _L31260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3128931328_))))))
                     (_loop3128431308_ _target3128131302_ '()))
                   (_g3127831295_ _g3127931299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3127831295_ _g3127931299_))
                                             (_g3127831295_ _g3127931299_)))))
                                 (_g3127731367_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3137031373_
                                                     _g3137131376_)
                                              (cons _g3137031373_
                                                    _g3137131376_))
                                            '()
                                            _L31260_))))))
                             _hd3119431228_
                             _tgt3119231254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3118731234_
                                                     _target3118431218_
                                                     '()))
                                                  (_g3117731201_
                                                   _g3117831205_))))
                                          (_g3117731201_ _g3117831205_)))))
                                (_g3117731201_ _g3117831205_))
                            (_g3117731201_ _g3117831205_))))
                    (_g3117731201_ _g3117831205_)))))
        (_g3117631379_ _stx31174_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31385_)
      (let* ((_g3138931447_
              (lambda (_g3139031443_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3139031443_)))
             (_g3138831724_
              (lambda (_g3139031451_)
                (if (gx#stx-pair? _g3139031451_)
                    (let ((_e3141031454_ (gx#syntax-e _g3139031451_)))
                      (let ((_hd3141131458_ (##car _e3141031454_))
                            (_tl3141231461_ (##cdr _e3141031454_)))
                        (if (gx#stx-pair? _tl3141231461_)
                            (let ((_e3141331464_ (gx#syntax-e _tl3141231461_)))
                              (let ((_hd3141431468_ (##car _e3141331464_))
                                    (_tl3141531471_ (##cdr _e3141331464_)))
                                (if (gx#stx-pair/null? _hd3141431468_)
                                    (if (fx>= (gx#stx-length _hd3141431468_)
                                              '0)
                                        (let ((_g34908_
                                               (gx#syntax-split-splice
                                                _hd3141431468_
                                                '0)))
                                          (begin
                                            (let ((_g34909_
                                                   (values-count _g34908_)))
                                              (if (not (fx= _g34909_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34909_)))
                                            (let ((_target3141631474_
                                                   (values-ref _g34908_ 0))
                                                  (_tl3141831477_
                                                   (values-ref _g34908_ 1)))
                                              (if (gx#stx-null? _tl3141831477_)
                                                  (letrec ((_loop3141931480_
                                                            (lambda (_hd3141731484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3142331487_
                             _param3142431489_)
                      (if (gx#stx-pair? _hd3141731484_)
                          (let ((_e3142031492_ (gx#syntax-e _hd3141731484_)))
                            (let ((_lp-hd3142131496_ (##car _e3142031492_))
                                  (_lp-tl3142231499_ (##cdr _e3142031492_)))
                              (if (gx#stx-pair? _lp-hd3142131496_)
                                  (let ((_e3142731502_
                                         (gx#syntax-e _lp-hd3142131496_)))
                                    (let ((_hd3142831506_
                                           (##car _e3142731502_))
                                          (_tl3142931509_
                                           (##cdr _e3142731502_)))
                                      (if (gx#stx-pair? _tl3142931509_)
                                          (let ((_e3143031512_
                                                 (gx#syntax-e _tl3142931509_)))
                                            (let ((_hd3143131516_
                                                   (##car _e3143031512_))
                                                  (_tl3143231519_
                                                   (##cdr _e3143031512_)))
                                              (if (gx#stx-null? _tl3143231519_)
                                                  (_loop3141931480_
                                                   _lp-tl3142231499_
                                                   (cons _hd3143131516_
                                                         _expr3142331487_)
                                                   (cons _hd3142831506_
                                                         _param3142431489_))
                                                  (_g3138931447_
                                                   _g3139031451_))))
                                          (_g3138931447_ _g3139031451_))))
                                  (_g3138931447_ _g3139031451_))))
                          (let ((_expr3142531522_ (reverse _expr3142331487_))
                                (_param3142631525_
                                 (reverse _param3142431489_)))
                            (if (gx#stx-pair/null? _tl3141531471_)
                                (if (fx>= (gx#stx-length _tl3141531471_) '0)
                                    (let ((_g34910_
                                           (gx#syntax-split-splice
                                            _tl3141531471_
                                            '0)))
                                      (begin
                                        (let ((_g34911_
                                               (values-count _g34910_)))
                                          (if (not (fx= _g34911_ 2))
                                              (error "Context expects 2 values"
                                                     _g34911_)))
                                        (let ((_target3143331528_
                                               (values-ref _g34910_ 0))
                                              (_tl3143531531_
                                               (values-ref _g34910_ 1)))
                                          (if (gx#stx-null? _tl3143531531_)
                                              (letrec ((_loop3143631534_
                                                        (lambda (_hd3143431538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3144031541_)
                  (if (gx#stx-pair? _hd3143431538_)
                      (let ((_e3143731544_ (gx#syntax-e _hd3143431538_)))
                        (let ((_lp-hd3143831548_ (##car _e3143731544_))
                              (_lp-tl3143931551_ (##cdr _e3143731544_)))
                          (_loop3143631534_
                           _lp-tl3143931551_
                           (cons _lp-hd3143831548_ _body3144031541_))))
                      (let ((_body3144131554_ (reverse _body3144031541_)))
                        ((lambda (_L31558_ _L31560_ _L31561_)
                           (let* ((_g3158431592_
                                   (lambda (_g3158531588_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3158531588_)))
                                  (_g3158331712_
                                   (lambda (_g3158531596_)
                                     ((lambda (_L31599_)
                                        (let ()
                                          (let* ((_g3161131628_
                                                  (lambda (_g3161231624_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3161231624_)))
                                                 (_g3161031692_
                                                  (lambda (_g3161231632_)
                                                    (if (gx#stx-pair/null?
                                                         _g3161231632_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3161231632_)
                          '0)
                    (let ((_g34912_ (gx#syntax-split-splice _g3161231632_ '0)))
                      (begin
                        (let ((_g34913_ (values-count _g34912_)))
                          (if (not (fx= _g34913_ 2))
                              (error "Context expects 2 values" _g34913_)))
                        (let ((_target3161431635_ (values-ref _g34912_ 0))
                              (_tl3161631638_ (values-ref _g34912_ 1)))
                          (if (gx#stx-null? _tl3161631638_)
                              (letrec ((_loop3161731641_
                                        (lambda (_hd3161531645_
                                                 _arg3162131648_)
                                          (if (gx#stx-pair? _hd3161531645_)
                                              (let ((_e3161831651_
                                                     (gx#syntax-e
                                                      _hd3161531645_)))
                                                (let ((_lp-hd3161931655_
                                                       (##car _e3161831651_))
                                                      (_lp-tl3162031658_
                                                       (##cdr _e3161831651_)))
                                                  (_loop3161731641_
                                                   _lp-tl3162031658_
                                                   (cons _lp-hd3161931655_
                                                         _arg3162131648_))))
                                              (let ((_arg3162231661_
                                                     (reverse _arg3162131648_)))
                                                ((lambda (_L31665_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L31599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3168331686_ _g3168431689_)
                                      (cons _g3168331686_ _g3168431689_))
                                    '()
                                    _L31665_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3162231661_))))))
                                (_loop3161731641_ _target3161431635_ '()))
                              (_g3161131628_ _g3161231632_)))))
                    (_g3161131628_ _g3161231632_))
                (_g3161131628_ _g3161231632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3161031692_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3169531698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3169631701_)
                        (cons _g3169531698_ _g3169631701_))
                      '()
                      _L31561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3170331706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3170431709_)
                        (cons _g3170331706_ _g3170431709_))
                      '()
                      _L31560_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3158531596_))))
                             (_g3158331712_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3171531718_
                                                             _g3171631721_)
                                                      (cons _g3171531718_
                                                            _g3171631721_))
                                                    '()
                                                    _L31558_))))
                               (gx#stx-source _stx31385_)))))
                         _body3144131554_
                         _expr3142531522_
                         _param3142631525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3143631534_
                                                 _target3143331528_
                                                 '()))
                                              (_g3138931447_ _g3139031451_)))))
                                    (_g3138931447_ _g3139031451_))
                                (_g3138931447_ _g3139031451_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3141931480_
                                                     _target3141631474_
                                                     '()
                                                     '()))
                                                  (_g3138931447_
                                                   _g3139031451_)))))
                                        (_g3138931447_ _g3139031451_))
                                    (_g3138931447_ _g3139031451_))))
                            (_g3138931447_ _g3139031451_))))
                    (_g3138931447_ _g3139031451_))))
             (_g3138731806_
              (lambda (_g3139031728_)
                (if (gx#stx-pair? _g3139031728_)
                    (let ((_e3139231731_ (gx#syntax-e _g3139031728_)))
                      (let ((_hd3139331735_ (##car _e3139231731_))
                            (_tl3139431738_ (##cdr _e3139231731_)))
                        (if (gx#stx-pair? _tl3139431738_)
                            (let ((_e3139531741_ (gx#syntax-e _tl3139431738_)))
                              (let ((_hd3139631745_ (##car _e3139531741_))
                                    (_tl3139731748_ (##cdr _e3139531741_)))
                                (if (gx#stx-null? _hd3139631745_)
                                    (if (gx#stx-pair/null? _tl3139731748_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3139731748_)
                                                  '0)
                                            (let ((_g34914_
                                                   (gx#syntax-split-splice
                                                    _tl3139731748_
                                                    '0)))
                                              (begin
                                                (let ((_g34915_
                                                       (values-count
                                                        _g34914_)))
                                                  (if (not (fx= _g34915_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34915_)))
                                                (let ((_target3139831751_
                                                       (values-ref _g34914_ 0))
                                                      (_tl3140031754_
                                                       (values-ref
                                                        _g34914_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3140031754_)
                                                      (letrec ((_loop3140131757_
                                                                (lambda (_hd3139931761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3140531764_)
                          (if (gx#stx-pair? _hd3139931761_)
                              (let ((_e3140231767_
                                     (gx#syntax-e _hd3139931761_)))
                                (let ((_lp-hd3140331771_ (##car _e3140231767_))
                                      (_lp-tl3140431774_
                                       (##cdr _e3140231767_)))
                                  (_loop3140131757_
                                   _lp-tl3140431774_
                                   (cons _lp-hd3140331771_ _body3140531764_))))
                              (let ((_body3140631777_
                                     (reverse _body3140531764_)))
                                ((lambda (_L31781_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3179731800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3179831803_)
                  (cons _g3179731800_ _g3179831803_))
                '()
                _L31781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3140631777_))))))
                (_loop3140131757_ _target3139831751_ '()))
              (_g3138831724_ _g3139031728_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3138831724_ _g3139031728_))
                                        (_g3138831724_ _g3139031728_))
                                    (_g3138831724_ _g3139031728_))))
                            (_g3138831724_ _g3139031728_))))
                    (_g3138831724_ _g3139031728_)))))
        (_g3138731806_ _stx31385_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx31814_)
      (let* ((_g3181831842_
              (lambda (_g3181931838_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3181931838_)))
             (_g3181731927_
              (lambda (_g3181931846_)
                (if (gx#stx-pair? _g3181931846_)
                    (let ((_e3182231849_ (gx#syntax-e _g3181931846_)))
                      (let ((_hd3182331853_ (##car _e3182231849_))
                            (_tl3182431856_ (##cdr _e3182231849_)))
                        (if (gx#stx-pair? _tl3182431856_)
                            (let ((_e3182531859_ (gx#syntax-e _tl3182431856_)))
                              (let ((_hd3182631863_ (##car _e3182531859_))
                                    (_tl3182731866_ (##cdr _e3182531859_)))
                                (if (gx#stx-pair/null? _tl3182731866_)
                                    (if (fx>= (gx#stx-length _tl3182731866_)
                                              '0)
                                        (let ((_g34916_
                                               (gx#syntax-split-splice
                                                _tl3182731866_
                                                '0)))
                                          (begin
                                            (let ((_g34917_
                                                   (values-count _g34916_)))
                                              (if (not (fx= _g34917_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34917_)))
                                            (let ((_target3182831869_
                                                   (values-ref _g34916_ 0))
                                                  (_tl3183031872_
                                                   (values-ref _g34916_ 1)))
                                              (if (gx#stx-null? _tl3183031872_)
                                                  (letrec ((_loop3183131875_
                                                            (lambda (_hd3182931879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3183531882_)
                      (if (gx#stx-pair? _hd3182931879_)
                          (let ((_e3183231885_ (gx#syntax-e _hd3182931879_)))
                            (let ((_lp-hd3183331889_ (##car _e3183231885_))
                                  (_lp-tl3183431892_ (##cdr _e3183231885_)))
                              (_loop3183131875_
                               _lp-tl3183431892_
                               (cons _lp-hd3183331889_ _body3183531882_))))
                          (let ((_body3183631895_ (reverse _body3183531882_)))
                            ((lambda (_L31899_ _L31901_)
                               (if (gx#identifier? _L31901_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L31901_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3191831921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3191931924_)
                              (cons _g3191831921_ _g3191931924_))
                            '()
                            _L31899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3181831842_ _g3181931846_)))
                             _body3183631895_
                             _hd3182631863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3183131875_
                                                     _target3182831869_
                                                     '()))
                                                  (_g3181831842_
                                                   _g3181931846_)))))
                                        (_g3181831842_ _g3181931846_))
                                    (_g3181831842_ _g3181931846_))))
                            (_g3181831842_ _g3181931846_))))
                    (_g3181831842_ _g3181931846_)))))
        (_g3181731927_ _$stx31814_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx31932_)
      (let* ((_g3193631960_
              (lambda (_g3193731956_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3193731956_)))
             (_g3193532045_
              (lambda (_g3193731964_)
                (if (gx#stx-pair? _g3193731964_)
                    (let ((_e3194031967_ (gx#syntax-e _g3193731964_)))
                      (let ((_hd3194131971_ (##car _e3194031967_))
                            (_tl3194231974_ (##cdr _e3194031967_)))
                        (if (gx#stx-pair? _tl3194231974_)
                            (let ((_e3194331977_ (gx#syntax-e _tl3194231974_)))
                              (let ((_hd3194431981_ (##car _e3194331977_))
                                    (_tl3194531984_ (##cdr _e3194331977_)))
                                (if (gx#stx-pair/null? _tl3194531984_)
                                    (if (fx>= (gx#stx-length _tl3194531984_)
                                              '0)
                                        (let ((_g34918_
                                               (gx#syntax-split-splice
                                                _tl3194531984_
                                                '0)))
                                          (begin
                                            (let ((_g34919_
                                                   (values-count _g34918_)))
                                              (if (not (fx= _g34919_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34919_)))
                                            (let ((_target3194631987_
                                                   (values-ref _g34918_ 0))
                                                  (_tl3194831990_
                                                   (values-ref _g34918_ 1)))
                                              (if (gx#stx-null? _tl3194831990_)
                                                  (letrec ((_loop3194931993_
                                                            (lambda (_hd3194731997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3195332000_)
                      (if (gx#stx-pair? _hd3194731997_)
                          (let ((_e3195032003_ (gx#syntax-e _hd3194731997_)))
                            (let ((_lp-hd3195132007_ (##car _e3195032003_))
                                  (_lp-tl3195232010_ (##cdr _e3195032003_)))
                              (_loop3194931993_
                               _lp-tl3195232010_
                               (cons _lp-hd3195132007_ _body3195332000_))))
                          (let ((_body3195432013_ (reverse _body3195332000_)))
                            ((lambda (_L32017_ _L32019_)
                               (if (gx#identifier? _L32019_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32019_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3203632039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3203732042_)
                              (cons _g3203632039_ _g3203732042_))
                            '()
                            _L32017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3193631960_ _g3193731964_)))
                             _body3195432013_
                             _hd3194431981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3194931993_
                                                     _target3194631987_
                                                     '()))
                                                  (_g3193631960_
                                                   _g3193731964_)))))
                                        (_g3193631960_ _g3193731964_))
                                    (_g3193631960_ _g3193731964_))))
                            (_g3193631960_ _g3193731964_))))
                    (_g3193631960_ _g3193731964_)))))
        (_g3193532045_ _$stx31932_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32050_)
      (let* ((_g3205432082_
              (lambda (_g3205532078_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3205532078_)))
             (_g3205332181_
              (lambda (_g3205532086_)
                (if (gx#stx-pair? _g3205532086_)
                    (let ((_e3205932089_ (gx#syntax-e _g3205532086_)))
                      (let ((_hd3206032093_ (##car _e3205932089_))
                            (_tl3206132096_ (##cdr _e3205932089_)))
                        (if (gx#stx-pair? _tl3206132096_)
                            (let ((_e3206232099_ (gx#syntax-e _tl3206132096_)))
                              (let ((_hd3206332103_ (##car _e3206232099_))
                                    (_tl3206432106_ (##cdr _e3206232099_)))
                                (if (gx#stx-pair? _tl3206432106_)
                                    (let ((_e3206532109_
                                           (gx#syntax-e _tl3206432106_)))
                                      (let ((_hd3206632113_
                                             (##car _e3206532109_))
                                            (_tl3206732116_
                                             (##cdr _e3206532109_)))
                                        (if (gx#stx-pair/null? _tl3206732116_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3206732116_)
                                                      '0)
                                                (let ((_g34920_
                                                       (gx#syntax-split-splice
                                                        _tl3206732116_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34921_
                                                           (values-count
                                                            _g34920_)))
                                                      (if (not (fx= _g34921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3206832119_
                                                           (values-ref
                                                            _g34920_
                                                            0))
                                                          (_tl3207032122_
                                                           (values-ref
                                                            _g34920_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3207032122_)
                                                          (letrec ((_loop3207132125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3206932129_ _rest3207532132_)
                              (if (gx#stx-pair? _hd3206932129_)
                                  (let ((_e3207232135_
                                         (gx#syntax-e _hd3206932129_)))
                                    (let ((_lp-hd3207332139_
                                           (##car _e3207232135_))
                                          (_lp-tl3207432142_
                                           (##cdr _e3207232135_)))
                                      (_loop3207132125_
                                       _lp-tl3207432142_
                                       (cons _lp-hd3207332139_
                                             _rest3207532132_))))
                                  (let ((_rest3207632145_
                                         (reverse _rest3207532132_)))
                                    ((lambda (_L32149_ _L32151_ _L32152_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32151_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3217232175_
                                                     _g3217332178_)
                                              (cons _g3217232175_
                                                    _g3217332178_))
                                            '()
                                            _L32149_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3207632145_
                                     _hd3206632113_
                                     _hd3206332103_))))))
                    (_loop3207132125_ _target3206832119_ '()))
                  (_g3205432082_ _g3205532086_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3205432082_ _g3205532086_))
                                            (_g3205432082_ _g3205532086_))))
                                    (_g3205432082_ _g3205532086_))))
                            (_g3205432082_ _g3205532086_))))
                    (_g3205432082_ _g3205532086_)))))
        (_g3205332181_ _$stx32050_)))))
