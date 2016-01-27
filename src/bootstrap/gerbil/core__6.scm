(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx31392_ _struct?31394_)
      (let ((_wrap31396_
             (lambda (_e-stx32381_)
               (gx#stx-wrap-source _e-stx32381_ (gx#stx-source _stx31392_)))))
        (let ((_slotify31398_
               (lambda (_field32315_ _off32317_)
                 (let ((_g3231932334_
                        (lambda (_g3232032330_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3232032330_))))
                   (let ((_g3231832377_
                          (lambda (_g3232032338_)
                            (if (gx#stx-pair? _g3232032338_)
                                (let ((_e3232332341_
                                       (gx#syntax-e _g3232032338_)))
                                  (let ((_hd3232432345_ (##car _e3232332341_))
                                        (_tl3232532348_ (##cdr _e3232332341_)))
                                    (if (gx#stx-pair? _tl3232532348_)
                                        (let ((_e3232632351_
                                               (gx#syntax-e _tl3232532348_)))
                                          (let ((_hd3232732355_
                                                 (##car _e3232632351_))
                                                (_tl3232832358_
                                                 (##cdr _e3232632351_)))
                                            (if (gx#stx-null? _tl3232832358_)
                                                ((lambda (_L32361_ _L32363_)
                                                   (cons _off32317_
                                                         (cons _L32363_
                                                               (cons _L32361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3232732355_
                                                 _hd3232432345_)
                                                (_g3231932334_
                                                 _g3232032338_))))
                                        (_g3231932334_ _g3232032338_))))
                                (_g3231932334_ _g3232032338_)))))
                     (_g3231832377_ _field32315_))))))
          (let ((_struct-opt?31399_
                 (lambda (_key32312_)
                   (memq (gx#stx-e _key32312_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?31400_
                   (lambda (_key32309_)
                     (memq (gx#stx-e _key32309_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_g3140231429_
                     (lambda (_g3140331425_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g3140331425_))))
                (let ((_g3140132305_
                       (lambda (_g3140331433_)
                         (if (gx#stx-pair? _g3140331433_)
                             (let ((_e3140931436_ (gx#syntax-e _g3140331433_)))
                               (let ((_hd3141031440_ (##car _e3140931436_))
                                     (_tl3141131443_ (##cdr _e3140931436_)))
                                 (if (gx#stx-pair? _tl3141131443_)
                                     (let ((_e3141231446_
                                            (gx#syntax-e _tl3141131443_)))
                                       (let ((_hd3141331450_
                                              (##car _e3141231446_))
                                             (_tl3141431453_
                                              (##cdr _e3141231446_)))
                                         (if (gx#stx-pair? _tl3141431453_)
                                             (let ((_e3141531456_
                                                    (gx#syntax-e
                                                     _tl3141431453_)))
                                               (let ((_hd3141631460_
                                                      (##car _e3141531456_))
                                                     (_tl3141731463_
                                                      (##cdr _e3141531456_)))
                                                 (if (gx#stx-pair?
                                                      _tl3141731463_)
                                                     (let ((_e3141831466_
                                                            (gx#syntax-e
                                                             _tl3141731463_)))
                                                       (let ((_hd3141931470_
                                                              (##car _e3141831466_))
                                                             (_tl3142031473_
                                                              (##cdr _e3141831466_)))
                                                         (if (gx#stx-pair?
                                                              _tl3142031473_)
                                                             (let ((_e3142131476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3142031473_)))
                       (let ((_hd3142231480_ (##car _e3142131476_))
                             (_tl3142331483_ (##cdr _e3142131476_)))
                         ((lambda (_L31486_
                                   _L31488_
                                   _L31489_
                                   _L31490_
                                   _L31491_)
                            (if (if (gx#identifier? _L31491_)
                                    (if (let ((_$e31517_
                                               (gx#identifier? _L31489_)))
                                          (if _$e31517_
                                              _$e31517_
                                              (gx#stx-false? _L31489_)))
                                        (if (gx#identifier? _L31488_)
                                            (gx#stx-plist?
                                             _L31486_
                                             (if _struct?31394_
                                                 _struct-opt?31399_
                                                 _class-opt?31400_))
                                            '#f)
                                        '#f)
                                    '#f)
                                (let ((_els31525_
                                       (let ((_$e31521_
                                              (gx#stx-getq
                                               (if _struct?31394_
                                                   'fields:
                                                   'slots:)
                                               _L31486_)))
                                         (if _$e31521_ _$e31521_ '()))))
                                  (let ((_g3152831551_
                                         (lambda (_g3152931547_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3152931547_))))
                                    (let ((_g3152732301_
                                           (lambda (_g3152931555_)
                                             (if (gx#stx-pair? _g3152931555_)
                                                 (let ((_e3153431558_
                                                        (gx#syntax-e
                                                         _g3152931555_)))
                                                   (let ((_hd3153531562_
                                                          (##car _e3153431558_))
                                                         (_tl3153631565_
                                                          (##cdr _e3153431558_)))
                                                     (if (gx#stx-pair?
                                                          _tl3153631565_)
                                                         (let ((_e3153731568_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3153631565_)))
                   (let ((_hd3153831572_ (##car _e3153731568_))
                         (_tl3153931575_ (##cdr _e3153731568_)))
                     (if (gx#stx-pair? _tl3153931575_)
                         (let ((_e3154031578_ (gx#syntax-e _tl3153931575_)))
                           (let ((_hd3154131582_ (##car _e3154031578_))
                                 (_tl3154231585_ (##cdr _e3154031578_)))
                             (if (gx#stx-pair? _tl3154231585_)
                                 (let ((_e3154331588_
                                        (gx#syntax-e _tl3154231585_)))
                                   (let ((_hd3154431592_ (##car _e3154331588_))
                                         (_tl3154531595_
                                          (##cdr _e3154331588_)))
                                     (if (gx#stx-null? _tl3154531595_)
                                         ((lambda (_L31598_
                                                   _L31600_
                                                   _L31601_
                                                   _L31602_)
                                            (let ()
                                              (let ((_g3162531633_
                                                     (lambda (_g3162631629_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3162631629_))))
                                                (let ((_g3162432293_
                                                       (lambda (_g3162631637_)
                                                         ((lambda (_L31640_)
                                                            (let ()
                                                              (let ((_g3165331661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3165431657_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3165431657_))))
                        (let ((_g3165232285_
                               (lambda (_g3165431665_)
                                 ((lambda (_L31668_)
                                    (let ()
                                      (let ((_g3168131689_
                                             (lambda (_g3168231685_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3168231685_))))
                                        (let ((_g3168032277_
                                               (lambda (_g3168231693_)
                                                 ((lambda (_L31696_)
                                                    (let ()
                                                      (let ((_g3170931717_
                                                             (lambda (_g3171031713_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3171031713_))))
                                                        (let ((_g3170832273_
                                                               (lambda (_g3171031721_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L31724_)
                            (let ()
                              (let ((_g3173731745_
                                     (lambda (_g3173831741_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3173831741_))))
                                (let ((_g3173632073_
                                       (lambda (_g3173831749_)
                                         ((lambda (_L31752_)
                                            (let ()
                                              (let ((_g3176531773_
                                                     (lambda (_g3176631769_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3176631769_))))
                                                (let ((_g3176432069_
                                                       (lambda (_g3176631777_)
                                                         ((lambda (_L31780_)
                                                            (let ()
                                                              (let ((_g3179331801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3179431797_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3179431797_))))
                        (let ((_g3179232065_
                               (lambda (_g3179431805_)
                                 ((lambda (_L31808_)
                                    (let ()
                                      (let ((_g3182131829_
                                             (lambda (_g3182231825_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3182231825_))))
                                        (let ((_g3182032061_
                                               (lambda (_g3182231833_)
                                                 ((lambda (_L31836_)
                                                    (let ()
                                                      (let ((_g3184931875_
                                                             (lambda (_g3185031871_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3185031871_))))
                                                        (let ((_g3184831973_
                                                               (lambda (_g3185031879_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g3185031879_)
                             (if (fx>= (gx#stx-length _g3185031879_) '0)
                                 (let ((_g46997_
                                        (gx#syntax-split-splice
                                         _g3185031879_
                                         '0)))
                                   (begin
                                     (let ((_g46998_ (values-count _g46997_)))
                                       (if (not (fx= _g46998_ 2))
                                           (error "Context expects 2 values"
                                                  _g46998_)))
                                     (let ((_target3185331882_
                                            (values-ref _g46997_ 0))
                                           (_tl3185531885_
                                            (values-ref _g46997_ 1)))
                                       (if (gx#stx-null? _tl3185531885_)
                                           (letrec ((_loop3185631888_
                                                     (lambda (_hd3185431892_
                                                              _def-setf3186031895_
                                                              _def-getf3186131897_)
                                                       (if (gx#stx-pair?
                                                            _hd3185431892_)
                                                           (let ((_e3185731900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3185431892_)))
                     (let ((_lp-hd3185831904_ (##car _e3185731900_))
                           (_lp-tl3185931907_ (##cdr _e3185731900_)))
                       (if (gx#stx-pair? _lp-hd3185831904_)
                           (let ((_e3186431910_
                                  (gx#syntax-e _lp-hd3185831904_)))
                             (let ((_hd3186531914_ (##car _e3186431910_))
                                   (_tl3186631917_ (##cdr _e3186431910_)))
                               (if (gx#stx-pair? _tl3186631917_)
                                   (let ((_e3186731920_
                                          (gx#syntax-e _tl3186631917_)))
                                     (let ((_hd3186831924_
                                            (##car _e3186731920_))
                                           (_tl3186931927_
                                            (##cdr _e3186731920_)))
                                       (if (gx#stx-null? _tl3186931927_)
                                           (_loop3185631888_
                                            _lp-tl3185931907_
                                            (cons _hd3186831924_
                                                  _def-setf3186031895_)
                                            (cons _hd3186531914_
                                                  _def-getf3186131897_))
                                           (_g3184931875_ _g3185031879_))))
                                   (_g3184931875_ _g3185031879_))))
                           (_g3184931875_ _g3185031879_))))
                   (let ((_def-setf3186231930_ (reverse _def-setf3186031895_))
                         (_def-getf3186331933_ (reverse _def-getf3186131897_)))
                     ((lambda (_L31936_ _L31938_)
                        (let ()
                          (let ()
                            (_wrap31396_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L31780_
                                         (cons _L31836_
                                               (cons _L31808_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3195631961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3195731964_)
                        (cons _g3195631961_ _g3195731964_))
                      (begin
                        '#!void
                        (foldr (lambda (_g3195831967_ _g3195931970_)
                                 (cons _g3195831967_ _g3195931970_))
                               '()
                               _L31936_))
                      _L31938_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-setf3186231930_
                      _def-getf3186331933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3185631888_
                                              _target3185331882_
                                              '()
                                              '()))
                                           (_g3184931875_ _g3185031879_)))))
                                 (_g3184931875_ _g3185031879_))
                             (_g3184931875_ _g3185031879_)))))
                  (_g3184831973_
                   (gx#stx-map
                    (lambda (_ref31977_)
                      (let ((_g3198031999_
                             (lambda (_g3198131995_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3198131995_))))
                        (let ((_g3197932057_
                               (lambda (_g3198132003_)
                                 (if (gx#stx-pair? _g3198132003_)
                                     (let ((_e3198532006_
                                            (gx#syntax-e _g3198132003_)))
                                       (let ((_hd3198632010_
                                              (##car _e3198532006_))
                                             (_tl3198732013_
                                              (##cdr _e3198532006_)))
                                         (if (gx#stx-pair? _tl3198732013_)
                                             (let ((_e3198832016_
                                                    (gx#syntax-e
                                                     _tl3198732013_)))
                                               (let ((_hd3198932020_
                                                      (##car _e3198832016_))
                                                     (_tl3199032023_
                                                      (##cdr _e3198832016_)))
                                                 (if (gx#stx-pair?
                                                      _tl3199032023_)
                                                     (let ((_e3199132026_
                                                            (gx#syntax-e
                                                             _tl3199032023_)))
                                                       (let ((_hd3199232030_
                                                              (##car _e3199132026_))
                                                             (_tl3199332033_
                                                              (##cdr _e3199132026_)))
                                                         (if (gx#stx-null?
                                                              _tl3199332033_)
                                                             ((lambda (_L32036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L32038_
                               _L32039_)
                        (cons (_wrap31396_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _L32038_
                                           (cons (cons _L31600_
                                                       (cons _L31491_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L32039_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              (cons (_wrap31396_
                                     (cons (gx#datum->syntax '#f 'def)
                                           (cons _L32036_
                                                 (cons (cons _L31598_
                                                             (cons _L31491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L32039_ '()))
                                 '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                      _hd3199232030_
                      _hd3198932020_
                      _hd3198632010_)
                     (_g3198031999_ _g3198132003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3198031999_
                                                      _g3198132003_))))
                                             (_g3198031999_ _g3198132003_))))
                                     (_g3198031999_ _g3198132003_)))))
                          (_g3197932057_ _ref31977_))))
                    (if _struct?31394_
                        (gx#stx-map
                         _slotify31398_
                         _els31525_
                         (iota (gx#stx-length _els31525_)))
                        _els31525_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3182231833_))))
                                          (_g3182032061_
                                           (_wrap31396_
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _L31488_
                                                        (cons (cons _L31601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L31491_ '()))
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g3179431805_))))
                          (_g3179232065_
                           (if (gx#stx-false? _L31489_)
                               (cons (gx#datum->syntax '#f 'begin) '())
                               (_wrap31396_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _L31489_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '$args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L31602_
                                                              (cons _L31491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))))
                  _g3176631777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3176432069_
                                                   (_wrap31396_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L31491_
                                                                (cons _L31752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g3173831749_))))
                                  (_g3173632073_
                                   (if _struct?31394_
                                       (let ((_g3207732085_
                                              (lambda (_g3207832081_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g3207832081_))))
                                         (let ((_g3207632104_
                                                (lambda (_g3207832089_)
                                                  ((lambda (_L32092_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'make-struct-type)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L31640_ '()))
                           (cons _L31490_
                                 (cons _L32092_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L31668_ '()))
                                             (cons _L31696_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L31724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3207832089_))))
                                           (_g3207632104_
                                            (gx#stx-length _els31525_))))
                                       (let ((_g3210832141_
                                              (lambda (_g3210932137_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g3210932137_))))
                                         (let ((_g3210732269_
                                                (lambda (_g3210932145_)
                                                  (if (gx#stx-pair?
                                                       _g3210932145_)
                                                      (let ((_e3211232148_
                                                             (gx#syntax-e
                                                              _g3210932145_)))
                                                        (let ((_hd3211332152_
                                                               (##car _e3211232148_))
                                                              (_tl3211432155_
                                                               (##cdr _e3211232148_)))
                                                          (if (gx#stx-pair/null?
                                                               _hd3211332152_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd3211332152_)
                                '0)
                          (let ((_g46999_
                                 (gx#syntax-split-splice _hd3211332152_ '0)))
                            (begin
                              (let ((_g47000_ (values-count _g46999_)))
                                (if (not (fx= _g47000_ 2))
                                    (error "Context expects 2 values"
                                           _g47000_)))
                              (let ((_target3211532158_
                                     (values-ref _g46999_ 0))
                                    (_tl3211732161_ (values-ref _g46999_ 1)))
                                (if (gx#stx-null? _tl3211732161_)
                                    (letrec ((_loop3211832164_
                                              (lambda (_hd3211632168_
                                                       _super3212232171_)
                                                (if (gx#stx-pair?
                                                     _hd3211632168_)
                                                    (let ((_e3211932174_
                                                           (gx#syntax-e
                                                            _hd3211632168_)))
                                                      (let ((_lp-hd3212032178_
                                                             (##car _e3211932174_))
                                                            (_lp-tl3212132181_
                                                             (##cdr _e3211932174_)))
                                                        (_loop3211832164_
                                                         _lp-tl3212132181_
                                                         (cons _lp-hd3212032178_
                                                               _super3212232171_))))
                                                    (let ((_super3212332184_
                                                           (reverse _super3212232171_)))
                                                      (if (gx#stx-pair?
                                                           _tl3211432155_)
                                                          (let ((_e3212432188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3211432155_)))
                    (let ((_hd3212532192_ (##car _e3212432188_))
                          (_tl3212632195_ (##cdr _e3212432188_)))
                      (if (gx#stx-pair/null? _hd3212532192_)
                          (if (fx>= (gx#stx-length _hd3212532192_) '0)
                              (let ((_g47001_
                                     (gx#syntax-split-splice
                                      _hd3212532192_
                                      '0)))
                                (begin
                                  (let ((_g47002_ (values-count _g47001_)))
                                    (if (not (fx= _g47002_ 2))
                                        (error "Context expects 2 values"
                                               _g47002_)))
                                  (let ((_target3212732198_
                                         (values-ref _g47001_ 0))
                                        (_tl3212932201_
                                         (values-ref _g47001_ 1)))
                                    (if (gx#stx-null? _tl3212932201_)
                                        (letrec ((_loop3213032204_
                                                  (lambda (_hd3212832208_
                                                           _slot3213432211_)
                                                    (if (gx#stx-pair?
                                                         _hd3212832208_)
                                                        (let ((_e3213132214_
                                                               (gx#syntax-e
                                                                _hd3212832208_)))
                                                          (let ((_lp-hd3213232218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3213132214_))
                        (_lp-tl3213332221_ (##cdr _e3213132214_)))
                    (_loop3213032204_
                     _lp-tl3213332221_
                     (cons _lp-hd3213232218_ _slot3213432211_))))
                (let ((_slot3213532224_ (reverse _slot3213432211_)))
                  (if (gx#stx-null? _tl3212632195_)
                      ((lambda (_L32228_ _L32230_)
                         (let ()
                           (cons (gx#datum->syntax '#f 'make-class-type)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L31640_ '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3225232257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3225332260_)
                      (cons _g3225232257_ _g3225332260_))
                    '()
                    _L32230_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g3225432263_ _g3225532266_)
                                  (cons _g3225432263_ _g3225532266_))
                                '()
                                _L32228_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L31668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _L31696_
                       (cons (cons (gx#datum->syntax '#f 'quote)
                                   (cons _L31724_ '()))
                             '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _slot3213532224_
                       _super3212332184_)
                      (_g3210832141_ _g3210932145_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop3213032204_
                                           _target3212732198_
                                           '()))
                                        (_g3210832141_ _g3210932145_)))))
                              (_g3210832141_ _g3210932145_))
                          (_g3210832141_ _g3210932145_))))
                  (_g3210832141_ _g3210932145_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3211832164_
                                       _target3211532158_
                                       '()))
                                    (_g3210832141_ _g3210932145_)))))
                          (_g3210832141_ _g3210932145_))
                      (_g3210832141_ _g3210932145_))))
              (_g3210832141_ _g3210932145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g3210732269_
                                            (list _L31490_
                                                  (gx#stx-map
                                                   gx#stx-car
                                                   _els31525_)))))))))))
                          _g3171031721_))))
                  (_g3170832273_ (gx#stx-getq 'constructor: _L31486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3168231693_))))
                                          (_g3168032277_
                                           (let ((_$e32281_
                                                  (gx#stx-getq
                                                   'plist:
                                                   _L31486_)))
                                             (if _$e32281_
                                                 _$e32281_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       '()))))))))
                                  _g3165431665_))))
                          (_g3165232285_
                           (let ((_$e32289_ (gx#stx-getq 'name: _L31486_)))
                             (if _$e32289_ _$e32289_ _L31491_)))))))
                  _g3162631637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3162432293_
                                                   (let ((_$e32297_
                                                          (gx#stx-getq
                                                           'id:
                                                           _L31486_)))
                                                     (if _$e32297_
                                                         _$e32297_
                                                         (gensym (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31491_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd3154431592_
                                          _hd3154131582_
                                          _hd3153831572_
                                          _hd3153531562_)
                                         (_g3152831551_ _g3152931555_))))
                                 (_g3152831551_ _g3152931555_))))
                         (_g3152831551_ _g3152931555_))))
                 (_g3152831551_ _g3152931555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3152831551_
                                                  _g3152931555_)))))
                                      (_g3152732301_
                                       (if _struct?31394_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'make-struct-instance)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-struct-predicate)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'make-struct-field-accessor)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-struct-field-mutator)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'make-class-instance)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-class-predicate)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'make-class-slot-accessor)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-slot-mutator)
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_g3140231429_ _g3140331433_)))
                          _tl3142331483_
                          _hd3142231480_
                          _hd3141931470_
                          _hd3141631460_
                          _hd3141331450_)))
                     (_g3140231429_ _g3140331433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3140231429_
                                                      _g3140331433_))))
                                             (_g3140231429_ _g3140331433_))))
                                     (_g3140231429_ _g3140331433_))))
                             (_g3140231429_ _g3140331433_)))))
                  (_g3140132305_ _stx31392_)))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx32387_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx32387_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx32390_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx32390_ '#f))))
