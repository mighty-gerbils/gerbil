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
    (lambda _$args31387_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31387_)))
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
    (lambda _$args31383_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31383_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31380_)
      (if (gx#identifier? _stx31380_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31380_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31377_)
      (if (gx#identifier? _stx31377_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31377_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31391_)
      (let* ((_g3139731456_
              (lambda (_g3139831452_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3139831452_)))
             (_g3139631511_
              (lambda (_g3139831460_)
                (if (gx#stx-pair? _g3139831460_)
                    (let ((_e3144231463_ (gx#syntax-e _g3139831460_)))
                      (let ((_hd3144331467_ (##car _e3144231463_))
                            (_tl3144431470_ (##cdr _e3144231463_)))
                        (if (gx#stx-pair? _tl3144431470_)
                            (let ((_e3144531473_ (gx#syntax-e _tl3144431470_)))
                              (let ((_hd3144631477_ (##car _e3144531473_))
                                    (_tl3144731480_ (##cdr _e3144531473_)))
                                (if (gx#stx-pair? _tl3144731480_)
                                    (let ((_e3144831483_
                                           (gx#syntax-e _tl3144731480_)))
                                      (let ((_hd3144931487_
                                             (##car _e3144831483_))
                                            (_tl3145031490_
                                             (##cdr _e3144831483_)))
                                        (if (gx#stx-null? _tl3145031490_)
                                            ((lambda (_L31493_ _L31495_)
                                               (if (gx#identifier? _L31495_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L31495_
                                                               (cons _L31493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3139731456_
                                                    _g3139831460_)))
                                             _hd3144931487_
                                             _hd3144631477_)
                                            (_g3139731456_ _g3139831460_))))
                                    (_g3139731456_ _g3139831460_))))
                            (_g3139731456_ _g3139831460_))))
                    (_g3139731456_ _g3139831460_))))
             (_g3139531551_
              (lambda (_g3139831515_)
                (if (gx#stx-pair? _g3139831515_)
                    (let ((_e3143431518_ (gx#syntax-e _g3139831515_)))
                      (let ((_hd3143531522_ (##car _e3143431518_))
                            (_tl3143631525_ (##cdr _e3143431518_)))
                        (if (gx#stx-pair? _tl3143631525_)
                            (let ((_e3143731528_ (gx#syntax-e _tl3143631525_)))
                              (let ((_hd3143831532_ (##car _e3143731528_))
                                    (_tl3143931535_ (##cdr _e3143731528_)))
                                ((lambda (_L31538_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L31538_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L31538_)
                                        _stx31391_)
                                       (_g3139631511_ _g3139831515_)))
                                 _hd3143831532_)))
                            (_g3139631511_ _g3139831515_))))
                    (_g3139631511_ _g3139831515_))))
             (_g3139431692_
              (lambda (_g3139831555_)
                (if (gx#stx-pair? _g3139831555_)
                    (let ((_e3141231558_ (gx#syntax-e _g3139831555_)))
                      (let ((_hd3141331562_ (##car _e3141231558_))
                            (_tl3141431565_ (##cdr _e3141231558_)))
                        (if (gx#stx-pair? _tl3141431565_)
                            (let ((_e3141531568_ (gx#syntax-e _tl3141431565_)))
                              (let ((_hd3141631572_ (##car _e3141531568_))
                                    (_tl3141731575_ (##cdr _e3141531568_)))
                                (if (gx#stx-pair? _hd3141631572_)
                                    (let ((_e3141831578_
                                           (gx#syntax-e _hd3141631572_)))
                                      (let ((_hd3141931582_
                                             (##car _e3141831578_))
                                            (_tl3142031585_
                                             (##cdr _e3141831578_)))
                                        (if (gx#stx-pair/null? _tl3142031585_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3142031585_)
                                                      '0)
                                                (let ((_g35480_
                                                       (gx#syntax-split-splice
                                                        _tl3142031585_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35481_
                                                           (if (##values?
                                                                _g35480_)
                                                               (##vector-length
                                                                _g35480_)
                                                               1)))
                                                      (if (not (##fx= _g35481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35481_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3142131588_
                                                           (##vector-ref
                                                            _g35480_
                                                            0))
                                                          (_tl3142331591_
                                                           (##vector-ref
                                                            _g35480_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3142331591_)
                                                          (letrec ((_loop3142431594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3142231598_ _arg3142831601_)
                              (if (gx#stx-pair? _hd3142231598_)
                                  (let ((_e3142531604_
                                         (gx#syntax-e _hd3142231598_)))
                                    (let ((_lp-hd3142631608_
                                           (##car _e3142531604_))
                                          (_lp-tl3142731611_
                                           (##cdr _e3142531604_)))
                                      (_loop3142431594_
                                       _lp-tl3142731611_
                                       (cons _lp-hd3142631608_
                                             _arg3142831601_))))
                                  (let ((_arg3142931614_
                                         (reverse _arg3142831601_)))
                                    (if (gx#stx-pair? _tl3141731575_)
                                        (let ((_e3143031618_
                                               (gx#syntax-e _tl3141731575_)))
                                          (let ((_hd3143131622_
                                                 (##car _e3143031618_))
                                                (_tl3143231625_
                                                 (##cdr _e3143031618_)))
                                            (if (gx#stx-null? _tl3143231625_)
                                                ((lambda (_L31628_
                                                          _L31630_
                                                          _L31631_)
                                                   (if (gx#identifier?
                                                        _L31631_)
                                                       (let* ((_g3165331661_
                                                               (lambda (_g3165431657_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3165431657_)))
                      (_g3165231688_
                       (lambda (_g3165431665_)
                         ((lambda (_L31668_)
                            (let ()
                              (cons _L31668_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3167931682_
                                                      _g3168031685_)
                                               (cons _g3167931682_
                                                     _g3168031685_))
                                             (cons _L31628_ '())
                                             _L31630_)))))
                          _g3165431665_))))
                 (_g3165231688_
                  (gx#stx-identifier _L31631_ _L31631_ '"-set!")))
               (_g3139531551_ _g3139831555_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3143131622_
                                                 _arg3142931614_
                                                 _hd3141931582_)
                                                (_g3139531551_
                                                 _g3139831555_))))
                                        (_g3139531551_ _g3139831555_)))))))
                    (_loop3142431594_ _target3142131588_ '()))
                  (_g3139531551_ _g3139831555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3139531551_ _g3139831555_))
                                            (_g3139531551_ _g3139831555_))))
                                    (_g3139531551_ _g3139831555_))))
                            (_g3139531551_ _g3139831555_))))
                    (_g3139531551_ _g3139831555_))))
             (_g3139331744_
              (lambda (_g3139831696_)
                (if (gx#stx-pair? _g3139831696_)
                    (let ((_e3140031699_ (gx#syntax-e _g3139831696_)))
                      (let ((_hd3140131703_ (##car _e3140031699_))
                            (_tl3140231706_ (##cdr _e3140031699_)))
                        (if (gx#stx-pair? _tl3140231706_)
                            (let ((_e3140331709_ (gx#syntax-e _tl3140231706_)))
                              (let ((_hd3140431713_ (##car _e3140331709_))
                                    (_tl3140531716_ (##cdr _e3140331709_)))
                                (if (gx#stx-pair? _hd3140431713_)
                                    (let ((_e3140631719_
                                           (gx#syntax-e _hd3140431713_)))
                                      (let ((_hd3140731723_
                                             (##car _e3140631719_))
                                            (_tl3140831726_
                                             (##cdr _e3140631719_)))
                                        ((lambda (_L31729_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31729_)
                                                _stx31391_)
                                               (_g3139431692_ _g3139831696_)))
                                         _hd3140731723_)))
                                    (_g3139431692_ _g3139831696_))))
                            (_g3139431692_ _g3139831696_))))
                    (_g3139431692_ _g3139831696_)))))
        (_g3139331744_ _stx31391_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31749_)
      (let* ((_g3175231776_
              (lambda (_g3175331772_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3175331772_)))
             (_g3175131954_
              (lambda (_g3175331780_)
                (if (gx#stx-pair? _g3175331780_)
                    (let ((_e3175631783_ (gx#syntax-e _g3175331780_)))
                      (let ((_hd3175731787_ (##car _e3175631783_))
                            (_tl3175831790_ (##cdr _e3175631783_)))
                        (if (gx#stx-pair/null? _tl3175831790_)
                            (if (fx>= (gx#stx-length _tl3175831790_) '1)
                                (let ((_g35482_
                                       (gx#syntax-split-splice
                                        _tl3175831790_
                                        '1)))
                                  (begin
                                    (let ((_g35483_
                                           (if (##values? _g35482_)
                                               (##vector-length _g35482_)
                                               1)))
                                      (if (not (##fx= _g35483_ 2))
                                          (error "Context expects 2 values"
                                                 _g35483_)))
                                    (let ((_target3175931793_
                                           (##vector-ref _g35482_ 0))
                                          (_tl3176131796_
                                           (##vector-ref _g35482_ 1)))
                                      (if (gx#stx-pair? _tl3176131796_)
                                          (let ((_e3176831799_
                                                 (gx#syntax-e _tl3176131796_)))
                                            (let ((_hd3176931803_
                                                   (##car _e3176831799_))
                                                  (_tl3177031806_
                                                   (##cdr _e3176831799_)))
                                              (if (gx#stx-null? _tl3177031806_)
                                                  (letrec ((_loop3176231809_
                                                            (lambda (_hd3176031813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3176631816_)
                      (if (gx#stx-pair? _hd3176031813_)
                          (let ((_e3176331819_ (gx#syntax-e _hd3176031813_)))
                            (let ((_lp-hd3176431823_ (##car _e3176331819_))
                                  (_lp-tl3176531826_ (##cdr _e3176331819_)))
                              (_loop3176231809_
                               _lp-tl3176531826_
                               (cons _lp-hd3176431823_ _tgt3176631816_))))
                          (let ((_tgt3176731829_ (reverse _tgt3176631816_)))
                            ((lambda (_L31833_ _L31835_)
                               (let* ((_g3185331870_
                                       (lambda (_g3185431866_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3185431866_)))
                                      (_g3185231942_
                                       (lambda (_g3185431874_)
                                         (if (gx#stx-pair/null? _g3185431874_)
                                             (if (fx>= (gx#stx-length
                                                        _g3185431874_)
                                                       '0)
                                                 (let ((_g35484_
                                                        (gx#syntax-split-splice
                                                         _g3185431874_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35485_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35484_)
                        (##vector-length _g35484_)
                        1)))
               (if (not (##fx= _g35485_ 2))
                   (error "Context expects 2 values" _g35485_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3185631877_
                                                            (##vector-ref
                                                             _g35484_
                                                             0))
                                                           (_tl3185831880_
                                                            (##vector-ref
                                                             _g35484_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3185831880_)
                                                           (letrec ((_loop3185931883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3185731887_ _$e3186331890_)
                               (if (gx#stx-pair? _hd3185731887_)
                                   (let ((_e3186031893_
                                          (gx#syntax-e _hd3185731887_)))
                                     (let ((_lp-hd3186131897_
                                            (##car _e3186031893_))
                                           (_lp-tl3186231900_
                                            (##cdr _e3186031893_)))
                                       (_loop3185931883_
                                        _lp-tl3186231900_
                                        (cons _lp-hd3186131897_
                                              _$e3186331890_))))
                                   (let ((_$e3186431903_
                                          (reverse _$e3186331890_)))
                                     ((lambda (_L31907_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3192231928_ _g3192331931_)
                                     (cons _g3192231928_ _g3192331931_))
                                   '()
                                   _L31907_))
                          (cons _L31833_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31907_ _L31835_)
                (foldr (lambda (_g3192431934_ _g3192531937_ _g3192631939_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3192531937_
                                           (cons _g3192431934_ '())))
                               _g3192631939_))
                       '()
                       _L31907_
                       _L31835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3186431903_))))))
                     (_loop3185931883_ _target3185631877_ '()))
                   (_g3185331870_ _g3185431874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3185331870_ _g3185431874_))
                                             (_g3185331870_ _g3185431874_)))))
                                 (_g3185231942_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3194531948_
                                                     _g3194631951_)
                                              (cons _g3194531948_
                                                    _g3194631951_))
                                            '()
                                            _L31835_))))))
                             _hd3176931803_
                             _tgt3176731829_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3176231809_
                                                     _target3175931793_
                                                     '()))
                                                  (_g3175231776_
                                                   _g3175331780_))))
                                          (_g3175231776_ _g3175331780_)))))
                                (_g3175231776_ _g3175331780_))
                            (_g3175231776_ _g3175331780_))))
                    (_g3175231776_ _g3175331780_)))))
        (_g3175131954_ _stx31749_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31960_)
      (let* ((_g3196432022_
              (lambda (_g3196532018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3196532018_)))
             (_g3196332299_
              (lambda (_g3196532026_)
                (if (gx#stx-pair? _g3196532026_)
                    (let ((_e3198532029_ (gx#syntax-e _g3196532026_)))
                      (let ((_hd3198632033_ (##car _e3198532029_))
                            (_tl3198732036_ (##cdr _e3198532029_)))
                        (if (gx#stx-pair? _tl3198732036_)
                            (let ((_e3198832039_ (gx#syntax-e _tl3198732036_)))
                              (let ((_hd3198932043_ (##car _e3198832039_))
                                    (_tl3199032046_ (##cdr _e3198832039_)))
                                (if (gx#stx-pair/null? _hd3198932043_)
                                    (if (fx>= (gx#stx-length _hd3198932043_)
                                              '0)
                                        (let ((_g35486_
                                               (gx#syntax-split-splice
                                                _hd3198932043_
                                                '0)))
                                          (begin
                                            (let ((_g35487_
                                                   (if (##values? _g35486_)
                                                       (##vector-length
                                                        _g35486_)
                                                       1)))
                                              (if (not (##fx= _g35487_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35487_)))
                                            (let ((_target3199132049_
                                                   (##vector-ref _g35486_ 0))
                                                  (_tl3199332052_
                                                   (##vector-ref _g35486_ 1)))
                                              (if (gx#stx-null? _tl3199332052_)
                                                  (letrec ((_loop3199432055_
                                                            (lambda (_hd3199232059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3199832062_
                             _param3199932064_)
                      (if (gx#stx-pair? _hd3199232059_)
                          (let ((_e3199532067_ (gx#syntax-e _hd3199232059_)))
                            (let ((_lp-hd3199632071_ (##car _e3199532067_))
                                  (_lp-tl3199732074_ (##cdr _e3199532067_)))
                              (if (gx#stx-pair? _lp-hd3199632071_)
                                  (let ((_e3200232077_
                                         (gx#syntax-e _lp-hd3199632071_)))
                                    (let ((_hd3200332081_
                                           (##car _e3200232077_))
                                          (_tl3200432084_
                                           (##cdr _e3200232077_)))
                                      (if (gx#stx-pair? _tl3200432084_)
                                          (let ((_e3200532087_
                                                 (gx#syntax-e _tl3200432084_)))
                                            (let ((_hd3200632091_
                                                   (##car _e3200532087_))
                                                  (_tl3200732094_
                                                   (##cdr _e3200532087_)))
                                              (if (gx#stx-null? _tl3200732094_)
                                                  (_loop3199432055_
                                                   _lp-tl3199732074_
                                                   (cons _hd3200632091_
                                                         _expr3199832062_)
                                                   (cons _hd3200332081_
                                                         _param3199932064_))
                                                  (_g3196432022_
                                                   _g3196532026_))))
                                          (_g3196432022_ _g3196532026_))))
                                  (_g3196432022_ _g3196532026_))))
                          (let ((_expr3200032097_ (reverse _expr3199832062_))
                                (_param3200132100_
                                 (reverse _param3199932064_)))
                            (if (gx#stx-pair/null? _tl3199032046_)
                                (if (fx>= (gx#stx-length _tl3199032046_) '0)
                                    (let ((_g35488_
                                           (gx#syntax-split-splice
                                            _tl3199032046_
                                            '0)))
                                      (begin
                                        (let ((_g35489_
                                               (if (##values? _g35488_)
                                                   (##vector-length _g35488_)
                                                   1)))
                                          (if (not (##fx= _g35489_ 2))
                                              (error "Context expects 2 values"
                                                     _g35489_)))
                                        (let ((_target3200832103_
                                               (##vector-ref _g35488_ 0))
                                              (_tl3201032106_
                                               (##vector-ref _g35488_ 1)))
                                          (if (gx#stx-null? _tl3201032106_)
                                              (letrec ((_loop3201132109_
                                                        (lambda (_hd3200932113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3201532116_)
                  (if (gx#stx-pair? _hd3200932113_)
                      (let ((_e3201232119_ (gx#syntax-e _hd3200932113_)))
                        (let ((_lp-hd3201332123_ (##car _e3201232119_))
                              (_lp-tl3201432126_ (##cdr _e3201232119_)))
                          (_loop3201132109_
                           _lp-tl3201432126_
                           (cons _lp-hd3201332123_ _body3201532116_))))
                      (let ((_body3201632129_ (reverse _body3201532116_)))
                        ((lambda (_L32133_ _L32135_ _L32136_)
                           (let* ((_g3215932167_
                                   (lambda (_g3216032163_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3216032163_)))
                                  (_g3215832287_
                                   (lambda (_g3216032171_)
                                     ((lambda (_L32174_)
                                        (let ()
                                          (let* ((_g3218632203_
                                                  (lambda (_g3218732199_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3218732199_)))
                                                 (_g3218532267_
                                                  (lambda (_g3218732207_)
                                                    (if (gx#stx-pair/null?
                                                         _g3218732207_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3218732207_)
                          '0)
                    (let ((_g35490_ (gx#syntax-split-splice _g3218732207_ '0)))
                      (begin
                        (let ((_g35491_
                               (if (##values? _g35490_)
                                   (##vector-length _g35490_)
                                   1)))
                          (if (not (##fx= _g35491_ 2))
                              (error "Context expects 2 values" _g35491_)))
                        (let ((_target3218932210_ (##vector-ref _g35490_ 0))
                              (_tl3219132213_ (##vector-ref _g35490_ 1)))
                          (if (gx#stx-null? _tl3219132213_)
                              (letrec ((_loop3219232216_
                                        (lambda (_hd3219032220_
                                                 _arg3219632223_)
                                          (if (gx#stx-pair? _hd3219032220_)
                                              (let ((_e3219332226_
                                                     (gx#syntax-e
                                                      _hd3219032220_)))
                                                (let ((_lp-hd3219432230_
                                                       (##car _e3219332226_))
                                                      (_lp-tl3219532233_
                                                       (##cdr _e3219332226_)))
                                                  (_loop3219232216_
                                                   _lp-tl3219532233_
                                                   (cons _lp-hd3219432230_
                                                         _arg3219632223_))))
                                              (let ((_arg3219732236_
                                                     (reverse _arg3219632223_)))
                                                ((lambda (_L32240_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L32174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3225832261_ _g3225932264_)
                                      (cons _g3225832261_ _g3225932264_))
                                    '()
                                    _L32240_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3219732236_))))))
                                (_loop3219232216_ _target3218932210_ '()))
                              (_g3218632203_ _g3218732207_)))))
                    (_g3218632203_ _g3218732207_))
                (_g3218632203_ _g3218732207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3218532267_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3227032273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3227132276_)
                        (cons _g3227032273_ _g3227132276_))
                      '()
                      _L32136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3227832281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3227932284_)
                        (cons _g3227832281_ _g3227932284_))
                      '()
                      _L32135_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3216032171_))))
                             (_g3215832287_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3229032293_
                                                             _g3229132296_)
                                                      (cons _g3229032293_
                                                            _g3229132296_))
                                                    '()
                                                    _L32133_))))
                               (gx#stx-source _stx31960_)))))
                         _body3201632129_
                         _expr3200032097_
                         _param3200132100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3201132109_
                                                 _target3200832103_
                                                 '()))
                                              (_g3196432022_ _g3196532026_)))))
                                    (_g3196432022_ _g3196532026_))
                                (_g3196432022_ _g3196532026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3199432055_
                                                     _target3199132049_
                                                     '()
                                                     '()))
                                                  (_g3196432022_
                                                   _g3196532026_)))))
                                        (_g3196432022_ _g3196532026_))
                                    (_g3196432022_ _g3196532026_))))
                            (_g3196432022_ _g3196532026_))))
                    (_g3196432022_ _g3196532026_))))
             (_g3196232381_
              (lambda (_g3196532303_)
                (if (gx#stx-pair? _g3196532303_)
                    (let ((_e3196732306_ (gx#syntax-e _g3196532303_)))
                      (let ((_hd3196832310_ (##car _e3196732306_))
                            (_tl3196932313_ (##cdr _e3196732306_)))
                        (if (gx#stx-pair? _tl3196932313_)
                            (let ((_e3197032316_ (gx#syntax-e _tl3196932313_)))
                              (let ((_hd3197132320_ (##car _e3197032316_))
                                    (_tl3197232323_ (##cdr _e3197032316_)))
                                (if (gx#stx-null? _hd3197132320_)
                                    (if (gx#stx-pair/null? _tl3197232323_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3197232323_)
                                                  '0)
                                            (let ((_g35492_
                                                   (gx#syntax-split-splice
                                                    _tl3197232323_
                                                    '0)))
                                              (begin
                                                (let ((_g35493_
                                                       (if (##values? _g35492_)
                                                           (##vector-length
                                                            _g35492_)
                                                           1)))
                                                  (if (not (##fx= _g35493_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35493_)))
                                                (let ((_target3197332326_
                                                       (##vector-ref
                                                        _g35492_
                                                        0))
                                                      (_tl3197532329_
                                                       (##vector-ref
                                                        _g35492_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3197532329_)
                                                      (letrec ((_loop3197632332_
                                                                (lambda (_hd3197432336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3198032339_)
                          (if (gx#stx-pair? _hd3197432336_)
                              (let ((_e3197732342_
                                     (gx#syntax-e _hd3197432336_)))
                                (let ((_lp-hd3197832346_ (##car _e3197732342_))
                                      (_lp-tl3197932349_
                                       (##cdr _e3197732342_)))
                                  (_loop3197632332_
                                   _lp-tl3197932349_
                                   (cons _lp-hd3197832346_ _body3198032339_))))
                              (let ((_body3198132352_
                                     (reverse _body3198032339_)))
                                ((lambda (_L32356_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3237232375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3237332378_)
                  (cons _g3237232375_ _g3237332378_))
                '()
                _L32356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3198132352_))))))
                (_loop3197632332_ _target3197332326_ '()))
              (_g3196332299_ _g3196532303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3196332299_ _g3196532303_))
                                        (_g3196332299_ _g3196532303_))
                                    (_g3196332299_ _g3196532303_))))
                            (_g3196332299_ _g3196532303_))))
                    (_g3196332299_ _g3196532303_)))))
        (_g3196232381_ _stx31960_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32389_)
      (let* ((_g3239332417_
              (lambda (_g3239432413_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3239432413_)))
             (_g3239232502_
              (lambda (_g3239432421_)
                (if (gx#stx-pair? _g3239432421_)
                    (let ((_e3239732424_ (gx#syntax-e _g3239432421_)))
                      (let ((_hd3239832428_ (##car _e3239732424_))
                            (_tl3239932431_ (##cdr _e3239732424_)))
                        (if (gx#stx-pair? _tl3239932431_)
                            (let ((_e3240032434_ (gx#syntax-e _tl3239932431_)))
                              (let ((_hd3240132438_ (##car _e3240032434_))
                                    (_tl3240232441_ (##cdr _e3240032434_)))
                                (if (gx#stx-pair/null? _tl3240232441_)
                                    (if (fx>= (gx#stx-length _tl3240232441_)
                                              '0)
                                        (let ((_g35494_
                                               (gx#syntax-split-splice
                                                _tl3240232441_
                                                '0)))
                                          (begin
                                            (let ((_g35495_
                                                   (if (##values? _g35494_)
                                                       (##vector-length
                                                        _g35494_)
                                                       1)))
                                              (if (not (##fx= _g35495_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35495_)))
                                            (let ((_target3240332444_
                                                   (##vector-ref _g35494_ 0))
                                                  (_tl3240532447_
                                                   (##vector-ref _g35494_ 1)))
                                              (if (gx#stx-null? _tl3240532447_)
                                                  (letrec ((_loop3240632450_
                                                            (lambda (_hd3240432454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3241032457_)
                      (if (gx#stx-pair? _hd3240432454_)
                          (let ((_e3240732460_ (gx#syntax-e _hd3240432454_)))
                            (let ((_lp-hd3240832464_ (##car _e3240732460_))
                                  (_lp-tl3240932467_ (##cdr _e3240732460_)))
                              (_loop3240632450_
                               _lp-tl3240932467_
                               (cons _lp-hd3240832464_ _body3241032457_))))
                          (let ((_body3241132470_ (reverse _body3241032457_)))
                            ((lambda (_L32474_ _L32476_)
                               (if (gx#identifier? _L32476_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32476_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3249332496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3249432499_)
                              (cons _g3249332496_ _g3249432499_))
                            '()
                            _L32474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3239332417_ _g3239432421_)))
                             _body3241132470_
                             _hd3240132438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3240632450_
                                                     _target3240332444_
                                                     '()))
                                                  (_g3239332417_
                                                   _g3239432421_)))))
                                        (_g3239332417_ _g3239432421_))
                                    (_g3239332417_ _g3239432421_))))
                            (_g3239332417_ _g3239432421_))))
                    (_g3239332417_ _g3239432421_)))))
        (_g3239232502_ _$stx32389_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32507_)
      (let* ((_g3251132535_
              (lambda (_g3251232531_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3251232531_)))
             (_g3251032620_
              (lambda (_g3251232539_)
                (if (gx#stx-pair? _g3251232539_)
                    (let ((_e3251532542_ (gx#syntax-e _g3251232539_)))
                      (let ((_hd3251632546_ (##car _e3251532542_))
                            (_tl3251732549_ (##cdr _e3251532542_)))
                        (if (gx#stx-pair? _tl3251732549_)
                            (let ((_e3251832552_ (gx#syntax-e _tl3251732549_)))
                              (let ((_hd3251932556_ (##car _e3251832552_))
                                    (_tl3252032559_ (##cdr _e3251832552_)))
                                (if (gx#stx-pair/null? _tl3252032559_)
                                    (if (fx>= (gx#stx-length _tl3252032559_)
                                              '0)
                                        (let ((_g35496_
                                               (gx#syntax-split-splice
                                                _tl3252032559_
                                                '0)))
                                          (begin
                                            (let ((_g35497_
                                                   (if (##values? _g35496_)
                                                       (##vector-length
                                                        _g35496_)
                                                       1)))
                                              (if (not (##fx= _g35497_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35497_)))
                                            (let ((_target3252132562_
                                                   (##vector-ref _g35496_ 0))
                                                  (_tl3252332565_
                                                   (##vector-ref _g35496_ 1)))
                                              (if (gx#stx-null? _tl3252332565_)
                                                  (letrec ((_loop3252432568_
                                                            (lambda (_hd3252232572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3252832575_)
                      (if (gx#stx-pair? _hd3252232572_)
                          (let ((_e3252532578_ (gx#syntax-e _hd3252232572_)))
                            (let ((_lp-hd3252632582_ (##car _e3252532578_))
                                  (_lp-tl3252732585_ (##cdr _e3252532578_)))
                              (_loop3252432568_
                               _lp-tl3252732585_
                               (cons _lp-hd3252632582_ _body3252832575_))))
                          (let ((_body3252932588_ (reverse _body3252832575_)))
                            ((lambda (_L32592_ _L32594_)
                               (if (gx#identifier? _L32594_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32594_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3261132614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3261232617_)
                              (cons _g3261132614_ _g3261232617_))
                            '()
                            _L32592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3251132535_ _g3251232539_)))
                             _body3252932588_
                             _hd3251932556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3252432568_
                                                     _target3252132562_
                                                     '()))
                                                  (_g3251132535_
                                                   _g3251232539_)))))
                                        (_g3251132535_ _g3251232539_))
                                    (_g3251132535_ _g3251232539_))))
                            (_g3251132535_ _g3251232539_))))
                    (_g3251132535_ _g3251232539_)))))
        (_g3251032620_ _$stx32507_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32625_)
      (let* ((_g3262932657_
              (lambda (_g3263032653_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3263032653_)))
             (_g3262832756_
              (lambda (_g3263032661_)
                (if (gx#stx-pair? _g3263032661_)
                    (let ((_e3263432664_ (gx#syntax-e _g3263032661_)))
                      (let ((_hd3263532668_ (##car _e3263432664_))
                            (_tl3263632671_ (##cdr _e3263432664_)))
                        (if (gx#stx-pair? _tl3263632671_)
                            (let ((_e3263732674_ (gx#syntax-e _tl3263632671_)))
                              (let ((_hd3263832678_ (##car _e3263732674_))
                                    (_tl3263932681_ (##cdr _e3263732674_)))
                                (if (gx#stx-pair? _tl3263932681_)
                                    (let ((_e3264032684_
                                           (gx#syntax-e _tl3263932681_)))
                                      (let ((_hd3264132688_
                                             (##car _e3264032684_))
                                            (_tl3264232691_
                                             (##cdr _e3264032684_)))
                                        (if (gx#stx-pair/null? _tl3264232691_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3264232691_)
                                                      '0)
                                                (let ((_g35498_
                                                       (gx#syntax-split-splice
                                                        _tl3264232691_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35499_
                                                           (if (##values?
                                                                _g35498_)
                                                               (##vector-length
                                                                _g35498_)
                                                               1)))
                                                      (if (not (##fx= _g35499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3264332694_
                                                           (##vector-ref
                                                            _g35498_
                                                            0))
                                                          (_tl3264532697_
                                                           (##vector-ref
                                                            _g35498_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3264532697_)
                                                          (letrec ((_loop3264632700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3264432704_ _rest3265032707_)
                              (if (gx#stx-pair? _hd3264432704_)
                                  (let ((_e3264732710_
                                         (gx#syntax-e _hd3264432704_)))
                                    (let ((_lp-hd3264832714_
                                           (##car _e3264732710_))
                                          (_lp-tl3264932717_
                                           (##cdr _e3264732710_)))
                                      (_loop3264632700_
                                       _lp-tl3264932717_
                                       (cons _lp-hd3264832714_
                                             _rest3265032707_))))
                                  (let ((_rest3265132720_
                                         (reverse _rest3265032707_)))
                                    ((lambda (_L32724_ _L32726_ _L32727_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32726_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3274732750_
                                                     _g3274832753_)
                                              (cons _g3274732750_
                                                    _g3274832753_))
                                            '()
                                            _L32724_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3265132720_
                                     _hd3264132688_
                                     _hd3263832678_))))))
                    (_loop3264632700_ _target3264332694_ '()))
                  (_g3262932657_ _g3263032661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3262932657_ _g3263032661_))
                                            (_g3262932657_ _g3263032661_))))
                                    (_g3262932657_ _g3263032661_))))
                            (_g3262932657_ _g3263032661_))))
                    (_g3262932657_ _g3263032661_)))))
        (_g3262832756_ _$stx32625_)))))
