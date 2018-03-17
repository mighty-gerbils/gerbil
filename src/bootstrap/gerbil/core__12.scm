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
    (lambda _$args31385_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31385_)))
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
    (lambda _$args31381_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31381_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31378_)
      (if (gx#identifier? _stx31378_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31378_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31375_)
      (if (gx#identifier? _stx31375_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31375_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31389_)
      (let* ((_g3139531454_
              (lambda (_g3139631450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3139631450_)))
             (_g3139431509_
              (lambda (_g3139631458_)
                (if (gx#stx-pair? _g3139631458_)
                    (let ((_e3144031461_ (gx#syntax-e _g3139631458_)))
                      (let ((_hd3144131465_ (##car _e3144031461_))
                            (_tl3144231468_ (##cdr _e3144031461_)))
                        (if (gx#stx-pair? _tl3144231468_)
                            (let ((_e3144331471_ (gx#syntax-e _tl3144231468_)))
                              (let ((_hd3144431475_ (##car _e3144331471_))
                                    (_tl3144531478_ (##cdr _e3144331471_)))
                                (if (gx#stx-pair? _tl3144531478_)
                                    (let ((_e3144631481_
                                           (gx#syntax-e _tl3144531478_)))
                                      (let ((_hd3144731485_
                                             (##car _e3144631481_))
                                            (_tl3144831488_
                                             (##cdr _e3144631481_)))
                                        (if (gx#stx-null? _tl3144831488_)
                                            ((lambda (_L31491_ _L31493_)
                                               (if (gx#identifier? _L31493_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L31493_
                                                               (cons _L31491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3139531454_
                                                    _g3139631458_)))
                                             _hd3144731485_
                                             _hd3144431475_)
                                            (_g3139531454_ _g3139631458_))))
                                    (_g3139531454_ _g3139631458_))))
                            (_g3139531454_ _g3139631458_))))
                    (_g3139531454_ _g3139631458_))))
             (_g3139331549_
              (lambda (_g3139631513_)
                (if (gx#stx-pair? _g3139631513_)
                    (let ((_e3143231516_ (gx#syntax-e _g3139631513_)))
                      (let ((_hd3143331520_ (##car _e3143231516_))
                            (_tl3143431523_ (##cdr _e3143231516_)))
                        (if (gx#stx-pair? _tl3143431523_)
                            (let ((_e3143531526_ (gx#syntax-e _tl3143431523_)))
                              (let ((_hd3143631530_ (##car _e3143531526_))
                                    (_tl3143731533_ (##cdr _e3143531526_)))
                                ((lambda (_L31536_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L31536_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L31536_)
                                        _stx31389_)
                                       (_g3139431509_ _g3139631513_)))
                                 _hd3143631530_)))
                            (_g3139431509_ _g3139631513_))))
                    (_g3139431509_ _g3139631513_))))
             (_g3139231690_
              (lambda (_g3139631553_)
                (if (gx#stx-pair? _g3139631553_)
                    (let ((_e3141031556_ (gx#syntax-e _g3139631553_)))
                      (let ((_hd3141131560_ (##car _e3141031556_))
                            (_tl3141231563_ (##cdr _e3141031556_)))
                        (if (gx#stx-pair? _tl3141231563_)
                            (let ((_e3141331566_ (gx#syntax-e _tl3141231563_)))
                              (let ((_hd3141431570_ (##car _e3141331566_))
                                    (_tl3141531573_ (##cdr _e3141331566_)))
                                (if (gx#stx-pair? _hd3141431570_)
                                    (let ((_e3141631576_
                                           (gx#syntax-e _hd3141431570_)))
                                      (let ((_hd3141731580_
                                             (##car _e3141631576_))
                                            (_tl3141831583_
                                             (##cdr _e3141631576_)))
                                        (if (gx#stx-pair/null? _tl3141831583_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3141831583_)
                                                      '0)
                                                (let ((_g35478_
                                                       (gx#syntax-split-splice
                                                        _tl3141831583_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35479_
                                                           (if (##values?
                                                                _g35478_)
                                                               (##vector-length
                                                                _g35478_)
                                                               1)))
                                                      (if (not (##fx= _g35479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3141931586_
                                                           (##vector-ref
                                                            _g35478_
                                                            0))
                                                          (_tl3142131589_
                                                           (##vector-ref
                                                            _g35478_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3142131589_)
                                                          (letrec ((_loop3142231592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3142031596_ _arg3142631599_)
                              (if (gx#stx-pair? _hd3142031596_)
                                  (let ((_e3142331602_
                                         (gx#syntax-e _hd3142031596_)))
                                    (let ((_lp-hd3142431606_
                                           (##car _e3142331602_))
                                          (_lp-tl3142531609_
                                           (##cdr _e3142331602_)))
                                      (_loop3142231592_
                                       _lp-tl3142531609_
                                       (cons _lp-hd3142431606_
                                             _arg3142631599_))))
                                  (let ((_arg3142731612_
                                         (reverse _arg3142631599_)))
                                    (if (gx#stx-pair? _tl3141531573_)
                                        (let ((_e3142831616_
                                               (gx#syntax-e _tl3141531573_)))
                                          (let ((_hd3142931620_
                                                 (##car _e3142831616_))
                                                (_tl3143031623_
                                                 (##cdr _e3142831616_)))
                                            (if (gx#stx-null? _tl3143031623_)
                                                ((lambda (_L31626_
                                                          _L31628_
                                                          _L31629_)
                                                   (if (gx#identifier?
                                                        _L31629_)
                                                       (let* ((_g3165131659_
                                                               (lambda (_g3165231655_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3165231655_)))
                      (_g3165031686_
                       (lambda (_g3165231663_)
                         ((lambda (_L31666_)
                            (let ()
                              (cons _L31666_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3167731680_
                                                      _g3167831683_)
                                               (cons _g3167731680_
                                                     _g3167831683_))
                                             (cons _L31626_ '())
                                             _L31628_)))))
                          _g3165231663_))))
                 (_g3165031686_
                  (gx#stx-identifier _L31629_ _L31629_ '"-set!")))
               (_g3139331549_ _g3139631553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3142931620_
                                                 _arg3142731612_
                                                 _hd3141731580_)
                                                (_g3139331549_
                                                 _g3139631553_))))
                                        (_g3139331549_ _g3139631553_)))))))
                    (_loop3142231592_ _target3141931586_ '()))
                  (_g3139331549_ _g3139631553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3139331549_ _g3139631553_))
                                            (_g3139331549_ _g3139631553_))))
                                    (_g3139331549_ _g3139631553_))))
                            (_g3139331549_ _g3139631553_))))
                    (_g3139331549_ _g3139631553_))))
             (_g3139131742_
              (lambda (_g3139631694_)
                (if (gx#stx-pair? _g3139631694_)
                    (let ((_e3139831697_ (gx#syntax-e _g3139631694_)))
                      (let ((_hd3139931701_ (##car _e3139831697_))
                            (_tl3140031704_ (##cdr _e3139831697_)))
                        (if (gx#stx-pair? _tl3140031704_)
                            (let ((_e3140131707_ (gx#syntax-e _tl3140031704_)))
                              (let ((_hd3140231711_ (##car _e3140131707_))
                                    (_tl3140331714_ (##cdr _e3140131707_)))
                                (if (gx#stx-pair? _hd3140231711_)
                                    (let ((_e3140431717_
                                           (gx#syntax-e _hd3140231711_)))
                                      (let ((_hd3140531721_
                                             (##car _e3140431717_))
                                            (_tl3140631724_
                                             (##cdr _e3140431717_)))
                                        ((lambda (_L31727_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31727_)
                                                _stx31389_)
                                               (_g3139231690_ _g3139631694_)))
                                         _hd3140531721_)))
                                    (_g3139231690_ _g3139631694_))))
                            (_g3139231690_ _g3139631694_))))
                    (_g3139231690_ _g3139631694_)))))
        (_g3139131742_ _stx31389_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31747_)
      (let* ((_g3175031774_
              (lambda (_g3175131770_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3175131770_)))
             (_g3174931952_
              (lambda (_g3175131778_)
                (if (gx#stx-pair? _g3175131778_)
                    (let ((_e3175431781_ (gx#syntax-e _g3175131778_)))
                      (let ((_hd3175531785_ (##car _e3175431781_))
                            (_tl3175631788_ (##cdr _e3175431781_)))
                        (if (gx#stx-pair/null? _tl3175631788_)
                            (if (fx>= (gx#stx-length _tl3175631788_) '1)
                                (let ((_g35480_
                                       (gx#syntax-split-splice
                                        _tl3175631788_
                                        '1)))
                                  (begin
                                    (let ((_g35481_
                                           (if (##values? _g35480_)
                                               (##vector-length _g35480_)
                                               1)))
                                      (if (not (##fx= _g35481_ 2))
                                          (error "Context expects 2 values"
                                                 _g35481_)))
                                    (let ((_target3175731791_
                                           (##vector-ref _g35480_ 0))
                                          (_tl3175931794_
                                           (##vector-ref _g35480_ 1)))
                                      (if (gx#stx-pair? _tl3175931794_)
                                          (let ((_e3176631797_
                                                 (gx#syntax-e _tl3175931794_)))
                                            (let ((_hd3176731801_
                                                   (##car _e3176631797_))
                                                  (_tl3176831804_
                                                   (##cdr _e3176631797_)))
                                              (if (gx#stx-null? _tl3176831804_)
                                                  (letrec ((_loop3176031807_
                                                            (lambda (_hd3175831811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3176431814_)
                      (if (gx#stx-pair? _hd3175831811_)
                          (let ((_e3176131817_ (gx#syntax-e _hd3175831811_)))
                            (let ((_lp-hd3176231821_ (##car _e3176131817_))
                                  (_lp-tl3176331824_ (##cdr _e3176131817_)))
                              (_loop3176031807_
                               _lp-tl3176331824_
                               (cons _lp-hd3176231821_ _tgt3176431814_))))
                          (let ((_tgt3176531827_ (reverse _tgt3176431814_)))
                            ((lambda (_L31831_ _L31833_)
                               (let* ((_g3185131868_
                                       (lambda (_g3185231864_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3185231864_)))
                                      (_g3185031940_
                                       (lambda (_g3185231872_)
                                         (if (gx#stx-pair/null? _g3185231872_)
                                             (if (fx>= (gx#stx-length
                                                        _g3185231872_)
                                                       '0)
                                                 (let ((_g35482_
                                                        (gx#syntax-split-splice
                                                         _g3185231872_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35483_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35482_)
                        (##vector-length _g35482_)
                        1)))
               (if (not (##fx= _g35483_ 2))
                   (error "Context expects 2 values" _g35483_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3185431875_
                                                            (##vector-ref
                                                             _g35482_
                                                             0))
                                                           (_tl3185631878_
                                                            (##vector-ref
                                                             _g35482_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3185631878_)
                                                           (letrec ((_loop3185731881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3185531885_ _$e3186131888_)
                               (if (gx#stx-pair? _hd3185531885_)
                                   (let ((_e3185831891_
                                          (gx#syntax-e _hd3185531885_)))
                                     (let ((_lp-hd3185931895_
                                            (##car _e3185831891_))
                                           (_lp-tl3186031898_
                                            (##cdr _e3185831891_)))
                                       (_loop3185731881_
                                        _lp-tl3186031898_
                                        (cons _lp-hd3185931895_
                                              _$e3186131888_))))
                                   (let ((_$e3186231901_
                                          (reverse _$e3186131888_)))
                                     ((lambda (_L31905_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3192031926_ _g3192131929_)
                                     (cons _g3192031926_ _g3192131929_))
                                   '()
                                   _L31905_))
                          (cons _L31831_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31905_ _L31833_)
                (foldr (lambda (_g3192231932_ _g3192331935_ _g3192431937_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3192331935_
                                           (cons _g3192231932_ '())))
                               _g3192431937_))
                       '()
                       _L31905_
                       _L31833_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3186231901_))))))
                     (_loop3185731881_ _target3185431875_ '()))
                   (_g3185131868_ _g3185231872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3185131868_ _g3185231872_))
                                             (_g3185131868_ _g3185231872_)))))
                                 (_g3185031940_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3194331946_
                                                     _g3194431949_)
                                              (cons _g3194331946_
                                                    _g3194431949_))
                                            '()
                                            _L31833_))))))
                             _hd3176731801_
                             _tgt3176531827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3176031807_
                                                     _target3175731791_
                                                     '()))
                                                  (_g3175031774_
                                                   _g3175131778_))))
                                          (_g3175031774_ _g3175131778_)))))
                                (_g3175031774_ _g3175131778_))
                            (_g3175031774_ _g3175131778_))))
                    (_g3175031774_ _g3175131778_)))))
        (_g3174931952_ _stx31747_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31958_)
      (let* ((_g3196232020_
              (lambda (_g3196332016_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3196332016_)))
             (_g3196132297_
              (lambda (_g3196332024_)
                (if (gx#stx-pair? _g3196332024_)
                    (let ((_e3198332027_ (gx#syntax-e _g3196332024_)))
                      (let ((_hd3198432031_ (##car _e3198332027_))
                            (_tl3198532034_ (##cdr _e3198332027_)))
                        (if (gx#stx-pair? _tl3198532034_)
                            (let ((_e3198632037_ (gx#syntax-e _tl3198532034_)))
                              (let ((_hd3198732041_ (##car _e3198632037_))
                                    (_tl3198832044_ (##cdr _e3198632037_)))
                                (if (gx#stx-pair/null? _hd3198732041_)
                                    (if (fx>= (gx#stx-length _hd3198732041_)
                                              '0)
                                        (let ((_g35484_
                                               (gx#syntax-split-splice
                                                _hd3198732041_
                                                '0)))
                                          (begin
                                            (let ((_g35485_
                                                   (if (##values? _g35484_)
                                                       (##vector-length
                                                        _g35484_)
                                                       1)))
                                              (if (not (##fx= _g35485_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35485_)))
                                            (let ((_target3198932047_
                                                   (##vector-ref _g35484_ 0))
                                                  (_tl3199132050_
                                                   (##vector-ref _g35484_ 1)))
                                              (if (gx#stx-null? _tl3199132050_)
                                                  (letrec ((_loop3199232053_
                                                            (lambda (_hd3199032057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3199632060_
                             _param3199732062_)
                      (if (gx#stx-pair? _hd3199032057_)
                          (let ((_e3199332065_ (gx#syntax-e _hd3199032057_)))
                            (let ((_lp-hd3199432069_ (##car _e3199332065_))
                                  (_lp-tl3199532072_ (##cdr _e3199332065_)))
                              (if (gx#stx-pair? _lp-hd3199432069_)
                                  (let ((_e3200032075_
                                         (gx#syntax-e _lp-hd3199432069_)))
                                    (let ((_hd3200132079_
                                           (##car _e3200032075_))
                                          (_tl3200232082_
                                           (##cdr _e3200032075_)))
                                      (if (gx#stx-pair? _tl3200232082_)
                                          (let ((_e3200332085_
                                                 (gx#syntax-e _tl3200232082_)))
                                            (let ((_hd3200432089_
                                                   (##car _e3200332085_))
                                                  (_tl3200532092_
                                                   (##cdr _e3200332085_)))
                                              (if (gx#stx-null? _tl3200532092_)
                                                  (_loop3199232053_
                                                   _lp-tl3199532072_
                                                   (cons _hd3200432089_
                                                         _expr3199632060_)
                                                   (cons _hd3200132079_
                                                         _param3199732062_))
                                                  (_g3196232020_
                                                   _g3196332024_))))
                                          (_g3196232020_ _g3196332024_))))
                                  (_g3196232020_ _g3196332024_))))
                          (let ((_expr3199832095_ (reverse _expr3199632060_))
                                (_param3199932098_
                                 (reverse _param3199732062_)))
                            (if (gx#stx-pair/null? _tl3198832044_)
                                (if (fx>= (gx#stx-length _tl3198832044_) '0)
                                    (let ((_g35486_
                                           (gx#syntax-split-splice
                                            _tl3198832044_
                                            '0)))
                                      (begin
                                        (let ((_g35487_
                                               (if (##values? _g35486_)
                                                   (##vector-length _g35486_)
                                                   1)))
                                          (if (not (##fx= _g35487_ 2))
                                              (error "Context expects 2 values"
                                                     _g35487_)))
                                        (let ((_target3200632101_
                                               (##vector-ref _g35486_ 0))
                                              (_tl3200832104_
                                               (##vector-ref _g35486_ 1)))
                                          (if (gx#stx-null? _tl3200832104_)
                                              (letrec ((_loop3200932107_
                                                        (lambda (_hd3200732111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3201332114_)
                  (if (gx#stx-pair? _hd3200732111_)
                      (let ((_e3201032117_ (gx#syntax-e _hd3200732111_)))
                        (let ((_lp-hd3201132121_ (##car _e3201032117_))
                              (_lp-tl3201232124_ (##cdr _e3201032117_)))
                          (_loop3200932107_
                           _lp-tl3201232124_
                           (cons _lp-hd3201132121_ _body3201332114_))))
                      (let ((_body3201432127_ (reverse _body3201332114_)))
                        ((lambda (_L32131_ _L32133_ _L32134_)
                           (let* ((_g3215732165_
                                   (lambda (_g3215832161_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3215832161_)))
                                  (_g3215632285_
                                   (lambda (_g3215832169_)
                                     ((lambda (_L32172_)
                                        (let ()
                                          (let* ((_g3218432201_
                                                  (lambda (_g3218532197_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3218532197_)))
                                                 (_g3218332265_
                                                  (lambda (_g3218532205_)
                                                    (if (gx#stx-pair/null?
                                                         _g3218532205_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3218532205_)
                          '0)
                    (let ((_g35488_ (gx#syntax-split-splice _g3218532205_ '0)))
                      (begin
                        (let ((_g35489_
                               (if (##values? _g35488_)
                                   (##vector-length _g35488_)
                                   1)))
                          (if (not (##fx= _g35489_ 2))
                              (error "Context expects 2 values" _g35489_)))
                        (let ((_target3218732208_ (##vector-ref _g35488_ 0))
                              (_tl3218932211_ (##vector-ref _g35488_ 1)))
                          (if (gx#stx-null? _tl3218932211_)
                              (letrec ((_loop3219032214_
                                        (lambda (_hd3218832218_
                                                 _arg3219432221_)
                                          (if (gx#stx-pair? _hd3218832218_)
                                              (let ((_e3219132224_
                                                     (gx#syntax-e
                                                      _hd3218832218_)))
                                                (let ((_lp-hd3219232228_
                                                       (##car _e3219132224_))
                                                      (_lp-tl3219332231_
                                                       (##cdr _e3219132224_)))
                                                  (_loop3219032214_
                                                   _lp-tl3219332231_
                                                   (cons _lp-hd3219232228_
                                                         _arg3219432221_))))
                                              (let ((_arg3219532234_
                                                     (reverse _arg3219432221_)))
                                                ((lambda (_L32238_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L32172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3225632259_ _g3225732262_)
                                      (cons _g3225632259_ _g3225732262_))
                                    '()
                                    _L32238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3219532234_))))))
                                (_loop3219032214_ _target3218732208_ '()))
                              (_g3218432201_ _g3218532205_)))))
                    (_g3218432201_ _g3218532205_))
                (_g3218432201_ _g3218532205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3218332265_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3226832271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3226932274_)
                        (cons _g3226832271_ _g3226932274_))
                      '()
                      _L32134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3227632279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3227732282_)
                        (cons _g3227632279_ _g3227732282_))
                      '()
                      _L32133_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3215832169_))))
                             (_g3215632285_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3228832291_
                                                             _g3228932294_)
                                                      (cons _g3228832291_
                                                            _g3228932294_))
                                                    '()
                                                    _L32131_))))
                               (gx#stx-source _stx31958_)))))
                         _body3201432127_
                         _expr3199832095_
                         _param3199932098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3200932107_
                                                 _target3200632101_
                                                 '()))
                                              (_g3196232020_ _g3196332024_)))))
                                    (_g3196232020_ _g3196332024_))
                                (_g3196232020_ _g3196332024_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3199232053_
                                                     _target3198932047_
                                                     '()
                                                     '()))
                                                  (_g3196232020_
                                                   _g3196332024_)))))
                                        (_g3196232020_ _g3196332024_))
                                    (_g3196232020_ _g3196332024_))))
                            (_g3196232020_ _g3196332024_))))
                    (_g3196232020_ _g3196332024_))))
             (_g3196032379_
              (lambda (_g3196332301_)
                (if (gx#stx-pair? _g3196332301_)
                    (let ((_e3196532304_ (gx#syntax-e _g3196332301_)))
                      (let ((_hd3196632308_ (##car _e3196532304_))
                            (_tl3196732311_ (##cdr _e3196532304_)))
                        (if (gx#stx-pair? _tl3196732311_)
                            (let ((_e3196832314_ (gx#syntax-e _tl3196732311_)))
                              (let ((_hd3196932318_ (##car _e3196832314_))
                                    (_tl3197032321_ (##cdr _e3196832314_)))
                                (if (gx#stx-null? _hd3196932318_)
                                    (if (gx#stx-pair/null? _tl3197032321_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3197032321_)
                                                  '0)
                                            (let ((_g35490_
                                                   (gx#syntax-split-splice
                                                    _tl3197032321_
                                                    '0)))
                                              (begin
                                                (let ((_g35491_
                                                       (if (##values? _g35490_)
                                                           (##vector-length
                                                            _g35490_)
                                                           1)))
                                                  (if (not (##fx= _g35491_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35491_)))
                                                (let ((_target3197132324_
                                                       (##vector-ref
                                                        _g35490_
                                                        0))
                                                      (_tl3197332327_
                                                       (##vector-ref
                                                        _g35490_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3197332327_)
                                                      (letrec ((_loop3197432330_
                                                                (lambda (_hd3197232334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3197832337_)
                          (if (gx#stx-pair? _hd3197232334_)
                              (let ((_e3197532340_
                                     (gx#syntax-e _hd3197232334_)))
                                (let ((_lp-hd3197632344_ (##car _e3197532340_))
                                      (_lp-tl3197732347_
                                       (##cdr _e3197532340_)))
                                  (_loop3197432330_
                                   _lp-tl3197732347_
                                   (cons _lp-hd3197632344_ _body3197832337_))))
                              (let ((_body3197932350_
                                     (reverse _body3197832337_)))
                                ((lambda (_L32354_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3237032373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3237132376_)
                  (cons _g3237032373_ _g3237132376_))
                '()
                _L32354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3197932350_))))))
                (_loop3197432330_ _target3197132324_ '()))
              (_g3196132297_ _g3196332301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3196132297_ _g3196332301_))
                                        (_g3196132297_ _g3196332301_))
                                    (_g3196132297_ _g3196332301_))))
                            (_g3196132297_ _g3196332301_))))
                    (_g3196132297_ _g3196332301_)))))
        (_g3196032379_ _stx31958_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32387_)
      (let* ((_g3239132415_
              (lambda (_g3239232411_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3239232411_)))
             (_g3239032500_
              (lambda (_g3239232419_)
                (if (gx#stx-pair? _g3239232419_)
                    (let ((_e3239532422_ (gx#syntax-e _g3239232419_)))
                      (let ((_hd3239632426_ (##car _e3239532422_))
                            (_tl3239732429_ (##cdr _e3239532422_)))
                        (if (gx#stx-pair? _tl3239732429_)
                            (let ((_e3239832432_ (gx#syntax-e _tl3239732429_)))
                              (let ((_hd3239932436_ (##car _e3239832432_))
                                    (_tl3240032439_ (##cdr _e3239832432_)))
                                (if (gx#stx-pair/null? _tl3240032439_)
                                    (if (fx>= (gx#stx-length _tl3240032439_)
                                              '0)
                                        (let ((_g35492_
                                               (gx#syntax-split-splice
                                                _tl3240032439_
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
                                            (let ((_target3240132442_
                                                   (##vector-ref _g35492_ 0))
                                                  (_tl3240332445_
                                                   (##vector-ref _g35492_ 1)))
                                              (if (gx#stx-null? _tl3240332445_)
                                                  (letrec ((_loop3240432448_
                                                            (lambda (_hd3240232452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3240832455_)
                      (if (gx#stx-pair? _hd3240232452_)
                          (let ((_e3240532458_ (gx#syntax-e _hd3240232452_)))
                            (let ((_lp-hd3240632462_ (##car _e3240532458_))
                                  (_lp-tl3240732465_ (##cdr _e3240532458_)))
                              (_loop3240432448_
                               _lp-tl3240732465_
                               (cons _lp-hd3240632462_ _body3240832455_))))
                          (let ((_body3240932468_ (reverse _body3240832455_)))
                            ((lambda (_L32472_ _L32474_)
                               (if (gx#identifier? _L32474_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32474_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3249132494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3249232497_)
                              (cons _g3249132494_ _g3249232497_))
                            '()
                            _L32472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3239132415_ _g3239232419_)))
                             _body3240932468_
                             _hd3239932436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3240432448_
                                                     _target3240132442_
                                                     '()))
                                                  (_g3239132415_
                                                   _g3239232419_)))))
                                        (_g3239132415_ _g3239232419_))
                                    (_g3239132415_ _g3239232419_))))
                            (_g3239132415_ _g3239232419_))))
                    (_g3239132415_ _g3239232419_)))))
        (_g3239032500_ _$stx32387_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx32505_)
      (let* ((_g3250932533_
              (lambda (_g3251032529_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3251032529_)))
             (_g3250832618_
              (lambda (_g3251032537_)
                (if (gx#stx-pair? _g3251032537_)
                    (let ((_e3251332540_ (gx#syntax-e _g3251032537_)))
                      (let ((_hd3251432544_ (##car _e3251332540_))
                            (_tl3251532547_ (##cdr _e3251332540_)))
                        (if (gx#stx-pair? _tl3251532547_)
                            (let ((_e3251632550_ (gx#syntax-e _tl3251532547_)))
                              (let ((_hd3251732554_ (##car _e3251632550_))
                                    (_tl3251832557_ (##cdr _e3251632550_)))
                                (if (gx#stx-pair/null? _tl3251832557_)
                                    (if (fx>= (gx#stx-length _tl3251832557_)
                                              '0)
                                        (let ((_g35494_
                                               (gx#syntax-split-splice
                                                _tl3251832557_
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
                                            (let ((_target3251932560_
                                                   (##vector-ref _g35494_ 0))
                                                  (_tl3252132563_
                                                   (##vector-ref _g35494_ 1)))
                                              (if (gx#stx-null? _tl3252132563_)
                                                  (letrec ((_loop3252232566_
                                                            (lambda (_hd3252032570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3252632573_)
                      (if (gx#stx-pair? _hd3252032570_)
                          (let ((_e3252332576_ (gx#syntax-e _hd3252032570_)))
                            (let ((_lp-hd3252432580_ (##car _e3252332576_))
                                  (_lp-tl3252532583_ (##cdr _e3252332576_)))
                              (_loop3252232566_
                               _lp-tl3252532583_
                               (cons _lp-hd3252432580_ _body3252632573_))))
                          (let ((_body3252732586_ (reverse _body3252632573_)))
                            ((lambda (_L32590_ _L32592_)
                               (if (gx#identifier? _L32592_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32592_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3260932612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3261032615_)
                              (cons _g3260932612_ _g3261032615_))
                            '()
                            _L32590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3250932533_ _g3251032537_)))
                             _body3252732586_
                             _hd3251732554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3252232566_
                                                     _target3251932560_
                                                     '()))
                                                  (_g3250932533_
                                                   _g3251032537_)))))
                                        (_g3250932533_ _g3251032537_))
                                    (_g3250932533_ _g3251032537_))))
                            (_g3250932533_ _g3251032537_))))
                    (_g3250932533_ _g3251032537_)))))
        (_g3250832618_ _$stx32505_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32623_)
      (let* ((_g3262732655_
              (lambda (_g3262832651_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3262832651_)))
             (_g3262632754_
              (lambda (_g3262832659_)
                (if (gx#stx-pair? _g3262832659_)
                    (let ((_e3263232662_ (gx#syntax-e _g3262832659_)))
                      (let ((_hd3263332666_ (##car _e3263232662_))
                            (_tl3263432669_ (##cdr _e3263232662_)))
                        (if (gx#stx-pair? _tl3263432669_)
                            (let ((_e3263532672_ (gx#syntax-e _tl3263432669_)))
                              (let ((_hd3263632676_ (##car _e3263532672_))
                                    (_tl3263732679_ (##cdr _e3263532672_)))
                                (if (gx#stx-pair? _tl3263732679_)
                                    (let ((_e3263832682_
                                           (gx#syntax-e _tl3263732679_)))
                                      (let ((_hd3263932686_
                                             (##car _e3263832682_))
                                            (_tl3264032689_
                                             (##cdr _e3263832682_)))
                                        (if (gx#stx-pair/null? _tl3264032689_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3264032689_)
                                                      '0)
                                                (let ((_g35496_
                                                       (gx#syntax-split-splice
                                                        _tl3264032689_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35497_
                                                           (if (##values?
                                                                _g35496_)
                                                               (##vector-length
                                                                _g35496_)
                                                               1)))
                                                      (if (not (##fx= _g35497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3264132692_
                                                           (##vector-ref
                                                            _g35496_
                                                            0))
                                                          (_tl3264332695_
                                                           (##vector-ref
                                                            _g35496_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3264332695_)
                                                          (letrec ((_loop3264432698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3264232702_ _rest3264832705_)
                              (if (gx#stx-pair? _hd3264232702_)
                                  (let ((_e3264532708_
                                         (gx#syntax-e _hd3264232702_)))
                                    (let ((_lp-hd3264632712_
                                           (##car _e3264532708_))
                                          (_lp-tl3264732715_
                                           (##cdr _e3264532708_)))
                                      (_loop3264432698_
                                       _lp-tl3264732715_
                                       (cons _lp-hd3264632712_
                                             _rest3264832705_))))
                                  (let ((_rest3264932718_
                                         (reverse _rest3264832705_)))
                                    ((lambda (_L32722_ _L32724_ _L32725_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32724_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3274532748_
                                                     _g3274632751_)
                                              (cons _g3274532748_
                                                    _g3274632751_))
                                            '()
                                            _L32722_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3264932718_
                                     _hd3263932686_
                                     _hd3263632676_))))))
                    (_loop3264432698_ _target3264132692_ '()))
                  (_g3262732655_ _g3262832659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3262732655_ _g3262832659_))
                                            (_g3262732655_ _g3262832659_))))
                                    (_g3262732655_ _g3262832659_))))
                            (_g3262732655_ _g3262832659_))))
                    (_g3262732655_ _g3262832659_)))))
        (_g3262632754_ _$stx32623_)))))
