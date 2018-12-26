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
    (lambda _$args32289_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32289_)))
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
    (lambda _$args32285_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32285_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32282_)
      (if (gx#identifier? _stx32282_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx32282_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32279_)
      (if (gx#identifier? _stx32279_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx32279_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32293_)
      (let* ((___stx4119841199_ _stx32293_)
             (_g3229932358_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4119841199_))))
        (let ((___kont4120141202_
               (lambda (_L32631_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32631_)
                  _stx32293_)))
              (___kont4120341204_
               (lambda (_L32530_ _L32532_ _L32533_)
                 (let* ((_g3255532563_
                         (lambda (_g3255632559_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3255632559_)))
                        (_g3255432590_
                         (lambda (_g3255632567_)
                           ((lambda (_L32570_)
                              (let ()
                                (cons _L32570_
                                      (foldr (lambda (_g3258132584_
                                                      _g3258232587_)
                                               (cons _g3258132584_
                                                     _g3258232587_))
                                             (cons _L32530_ '())
                                             _L32532_))))
                            _g3255632567_))))
                   (_g3255432590_
                    (gx#stx-identifier _L32533_ _L32533_ '"-set!")))))
              (___kont4120741208_
               (lambda (_L32440_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32440_)
                  _stx32293_)))
              (___kont4120941210_
               (lambda (_L32395_ _L32397_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32397_ (cons _L32395_ '()))))))
          (let* ((___match4128941290_
                  (lambda (_e3234432365_
                           _hd3234532369_
                           _tl3234632372_
                           _e3234732375_
                           _hd3234832379_
                           _tl3234932382_
                           _e3235032385_
                           _hd3235132389_
                           _tl3235232392_)
                    (let ((_L32395_ _hd3235132389_) (_L32397_ _hd3234832379_))
                      (if (gx#identifier? _L32397_)
                          (___kont4120941210_ _L32395_ _L32397_)
                          (_g3229932358_)))))
                 (___match4126941270_
                  (lambda (_e3233632420_
                           _hd3233732424_
                           _tl3233832427_
                           _e3233932430_
                           _hd3234032434_
                           _tl3234132437_)
                    (let ((_L32440_ _hd3234032434_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32440_)
                          (___kont4120741208_ _L32440_)
                          (if (gx#stx-pair? _tl3234132437_)
                              (let ((_e3235032385_
                                     (gx#syntax-e _tl3234132437_)))
                                (let ((_tl3235232392_ (##cdr _e3235032385_))
                                      (_hd3235132389_ (##car _e3235032385_)))
                                  (if (gx#stx-null? _tl3235232392_)
                                      (___match4128941290_
                                       _e3233632420_
                                       _hd3233732424_
                                       _tl3233832427_
                                       _e3233932430_
                                       _hd3234032434_
                                       _tl3234132437_
                                       _e3235032385_
                                       _hd3235132389_
                                       _tl3235232392_)
                                      (_g3229932358_))))
                              (_g3229932358_))))))
                 (___match4125741258_
                  (lambda (_e3231432460_
                           _hd3231532464_
                           _tl3231632467_
                           _e3231732470_
                           _hd3231832474_
                           _tl3231932477_
                           _e3232032480_
                           _hd3232132484_
                           _tl3232232487_
                           ___splice4120541206_
                           _target3232332490_
                           _tl3232532493_)
                    (letrec ((_loop3232632496_
                              (lambda (_hd3232432500_ _arg3233032503_)
                                (if (gx#stx-pair? _hd3232432500_)
                                    (let ((_e3232732506_
                                           (gx#syntax-e _hd3232432500_)))
                                      (let ((_lp-tl3232932513_
                                             (##cdr _e3232732506_))
                                            (_lp-hd3232832510_
                                             (##car _e3232732506_)))
                                        (_loop3232632496_
                                         _lp-tl3232932513_
                                         (cons _lp-hd3232832510_
                                               _arg3233032503_))))
                                    (let ((_arg3233132516_
                                           (reverse _arg3233032503_)))
                                      (if (gx#stx-pair? _tl3231932477_)
                                          (let ((_e3233232520_
                                                 (gx#syntax-e _tl3231932477_)))
                                            (let ((_tl3233432527_
                                                   (##cdr _e3233232520_))
                                                  (_hd3233332524_
                                                   (##car _e3233232520_)))
                                              (if (gx#stx-null? _tl3233432527_)
                                                  (let ((_L32530_
                                                         _hd3233332524_)
                                                        (_L32532_
                                                         _arg3233132516_)
                                                        (_L32533_
                                                         _hd3232132484_))
                                                    (if (gx#identifier?
                                                         _L32533_)
                                                        (___kont4120341204_
                                                         _L32530_
                                                         _L32532_
                                                         _L32533_)
                                                        (___match4126941270_
                                                         _e3231432460_
                                                         _hd3231532464_
                                                         _tl3231632467_
                                                         _e3231732470_
                                                         _hd3231832474_
                                                         _tl3231932477_)))
                                                  (___match4126941270_
                                                   _e3231432460_
                                                   _hd3231532464_
                                                   _tl3231632467_
                                                   _e3231732470_
                                                   _hd3231832474_
                                                   _tl3231932477_))))
                                          (___match4126941270_
                                           _e3231432460_
                                           _hd3231532464_
                                           _tl3231632467_
                                           _e3231732470_
                                           _hd3231832474_
                                           _tl3231932477_)))))))
                      (_loop3232632496_ _target3232332490_ '())))))
            (if (gx#stx-pair? ___stx4119841199_)
                (let ((_e3230232601_ (gx#syntax-e ___stx4119841199_)))
                  (let ((_tl3230432608_ (##cdr _e3230232601_))
                        (_hd3230332605_ (##car _e3230232601_)))
                    (if (gx#stx-pair? _tl3230432608_)
                        (let ((_e3230532611_ (gx#syntax-e _tl3230432608_)))
                          (let ((_tl3230732618_ (##cdr _e3230532611_))
                                (_hd3230632615_ (##car _e3230532611_)))
                            (if (gx#stx-pair? _hd3230632615_)
                                (let ((_e3230832621_
                                       (gx#syntax-e _hd3230632615_)))
                                  (let ((_tl3231032628_ (##cdr _e3230832621_))
                                        (_hd3230932625_ (##car _e3230832621_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32631_ _hd3230932625_))
                                          (___kont4120141202_ _L32631_))
                                        (if (gx#stx-pair/null? _tl3231032628_)
                                            (let ((___splice4120541206_
                                                   (gx#syntax-split-splice
                                                    _tl3231032628_
                                                    '0)))
                                              (let ((_tl3232532493_
                                                     (##vector-ref
                                                      ___splice4120541206_
                                                      '1))
                                                    (_target3232332490_
                                                     (##vector-ref
                                                      ___splice4120541206_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3232532493_)
                                                    (___match4125741258_
                                                     _e3230232601_
                                                     _hd3230332605_
                                                     _tl3230432608_
                                                     _e3230532611_
                                                     _hd3230632615_
                                                     _tl3230732618_
                                                     _e3230832621_
                                                     _hd3230932625_
                                                     _tl3231032628_
                                                     ___splice4120541206_
                                                     _target3232332490_
                                                     _tl3232532493_)
                                                    (___match4126941270_
                                                     _e3230232601_
                                                     _hd3230332605_
                                                     _tl3230432608_
                                                     _e3230532611_
                                                     _hd3230632615_
                                                     _tl3230732618_))))
                                            (___match4126941270_
                                             _e3230232601_
                                             _hd3230332605_
                                             _tl3230432608_
                                             _e3230532611_
                                             _hd3230632615_
                                             _tl3230732618_)))))
                                (___match4126941270_
                                 _e3230232601_
                                 _hd3230332605_
                                 _tl3230432608_
                                 _e3230532611_
                                 _hd3230632615_
                                 _tl3230732618_))))
                        (_g3229932358_))))
                (_g3229932358_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32651_)
      (let* ((_g3265432678_
              (lambda (_g3265532674_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3265532674_)))
             (_g3265332856_
              (lambda (_g3265532682_)
                (if (gx#stx-pair? _g3265532682_)
                    (let ((_e3265832685_ (gx#syntax-e _g3265532682_)))
                      (let ((_hd3265932689_ (##car _e3265832685_))
                            (_tl3266032692_ (##cdr _e3265832685_)))
                        (if (gx#stx-pair/null? _tl3266032692_)
                            (if (fx>= (gx#stx-length _tl3266032692_) '1)
                                (let ((_g41774_
                                       (gx#syntax-split-splice
                                        _tl3266032692_
                                        '1)))
                                  (begin
                                    (let ((_g41775_
                                           (if (##values? _g41774_)
                                               (##vector-length _g41774_)
                                               1)))
                                      (if (not (##fx= _g41775_ 2))
                                          (error "Context expects 2 values"
                                                 _g41775_)))
                                    (let ((_target3266132695_
                                           (##vector-ref _g41774_ 0))
                                          (_tl3266332698_
                                           (##vector-ref _g41774_ 1)))
                                      (if (gx#stx-pair? _tl3266332698_)
                                          (let ((_e3267032701_
                                                 (gx#syntax-e _tl3266332698_)))
                                            (let ((_hd3267132705_
                                                   (##car _e3267032701_))
                                                  (_tl3267232708_
                                                   (##cdr _e3267032701_)))
                                              (if (gx#stx-null? _tl3267232708_)
                                                  (letrec ((_loop3266432711_
                                                            (lambda (_hd3266232715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3266832718_)
                      (if (gx#stx-pair? _hd3266232715_)
                          (let ((_e3266532721_ (gx#syntax-e _hd3266232715_)))
                            (let ((_lp-hd3266632725_ (##car _e3266532721_))
                                  (_lp-tl3266732728_ (##cdr _e3266532721_)))
                              (_loop3266432711_
                               _lp-tl3266732728_
                               (cons _lp-hd3266632725_ _tgt3266832718_))))
                          (let ((_tgt3266932731_ (reverse _tgt3266832718_)))
                            ((lambda (_L32735_ _L32737_)
                               (let* ((_g3275532772_
                                       (lambda (_g3275632768_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3275632768_)))
                                      (_g3275432844_
                                       (lambda (_g3275632776_)
                                         (if (gx#stx-pair/null? _g3275632776_)
                                             (let ((_g41776_
                                                    (gx#syntax-split-splice
                                                     _g3275632776_
                                                     '0)))
                                               (begin
                                                 (let ((_g41777_
                                                        (if (##values?
                                                             _g41776_)
                                                            (##vector-length
                                                             _g41776_)
                                                            1)))
                                                   (if (not (##fx= _g41777_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41777_)))
                                                 (let ((_target3275832779_
                                                        (##vector-ref
                                                         _g41776_
                                                         0))
                                                       (_tl3276032782_
                                                        (##vector-ref
                                                         _g41776_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3276032782_)
                                                       (letrec ((_loop3276132785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3275932789_ _$e3276532792_)
                           (if (gx#stx-pair? _hd3275932789_)
                               (let ((_e3276232795_
                                      (gx#syntax-e _hd3275932789_)))
                                 (let ((_lp-hd3276332799_
                                        (##car _e3276232795_))
                                       (_lp-tl3276432802_
                                        (##cdr _e3276232795_)))
                                   (_loop3276132785_
                                    _lp-tl3276432802_
                                    (cons _lp-hd3276332799_ _$e3276532792_))))
                               (let ((_$e3276632805_ (reverse _$e3276532792_)))
                                 ((lambda (_L32809_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3282432830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3282532833_)
                               (cons _g3282432830_ _g3282532833_))
                             '()
                             _L32809_)
                      (cons _L32735_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32809_
                                                     _L32737_)
                                                    (foldr (lambda (_g3282632836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3282732839_
                            _g3282832841_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3282732839_ (cons _g3282632836_ '())))
                           _g3282832841_))
                   '()
                   _L32809_
                   _L32737_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3276632805_))))))
                 (_loop3276132785_ _target3275832779_ '()))
               (_g3275532772_ _g3275632776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3275532772_ _g3275632776_)))))
                                 (_g3275432844_
                                  (gx#gentemps
                                   (foldr (lambda (_g3284732850_ _g3284832853_)
                                            (cons _g3284732850_ _g3284832853_))
                                          '()
                                          _L32737_)))))
                             _hd3267132705_
                             _tgt3266932731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3266432711_
                                                     _target3266132695_
                                                     '()))
                                                  (_g3265432678_
                                                   _g3265532682_))))
                                          (_g3265432678_ _g3265532682_)))))
                                (_g3265432678_ _g3265532682_))
                            (_g3265432678_ _g3265532682_))))
                    (_g3265432678_ _g3265532682_)))))
        (_g3265332856_ _stx32651_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32862_)
      (let* ((___stx4129241293_ _stx32862_)
             (_g3286632924_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4129241293_))))
        (let ((___kont4129541296_
               (lambda (_L33258_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3327433277_ _g3327533280_)
                                      (cons _g3327433277_ _g3327533280_))
                                    '()
                                    _L33258_)))))
              (___kont4129941300_
               (lambda (_L33035_ _L33037_ _L33038_)
                 (let* ((_g3306133069_
                         (lambda (_g3306233065_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3306233065_)))
                        (_g3306033189_
                         (lambda (_g3306233073_)
                           ((lambda (_L33076_)
                              (let ()
                                (let* ((_g3308833105_
                                        (lambda (_g3308933101_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3308933101_)))
                                       (_g3308733169_
                                        (lambda (_g3308933109_)
                                          (if (gx#stx-pair/null? _g3308933109_)
                                              (let ((_g41778_
                                                     (gx#syntax-split-splice
                                                      _g3308933109_
                                                      '0)))
                                                (begin
                                                  (let ((_g41779_
                                                         (if (##values?
                                                              _g41778_)
                                                             (##vector-length
                                                              _g41778_)
                                                             1)))
                                                    (if (not (##fx= _g41779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41779_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3309133112_
                                                         (##vector-ref
                                                          _g41778_
                                                          0))
                                                        (_tl3309333115_
                                                         (##vector-ref
                                                          _g41778_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3309333115_)
                                                        (letrec ((_loop3309433118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3309233122_ _arg3309833125_)
                            (if (gx#stx-pair? _hd3309233122_)
                                (let ((_e3309533128_
                                       (gx#syntax-e _hd3309233122_)))
                                  (let ((_lp-hd3309633132_
                                         (##car _e3309533128_))
                                        (_lp-tl3309733135_
                                         (##cdr _e3309533128_)))
                                    (_loop3309433118_
                                     _lp-tl3309733135_
                                     (cons _lp-hd3309633132_
                                           _arg3309833125_))))
                                (let ((_arg3309933138_
                                       (reverse _arg3309833125_)))
                                  ((lambda (_L33142_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33076_
                                                     (foldr (lambda (_g3316033163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3316133166_)
                      (cons _g3316033163_ _g3316133166_))
                    '()
                    _L33142_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3309933138_))))))
                  (_loop3309433118_ _target3309133112_ '()))
                (_g3308833105_ _g3308933109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3308833105_ _g3308933109_)))))
                                  (_g3308733169_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3317233175_
                                                           _g3317333178_)
                                                    (cons _g3317233175_
                                                          _g3317333178_))
                                                  '()
                                                  _L33038_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3318033183_
                                                           _g3318133186_)
                                                    (cons _g3318033183_
                                                          _g3318133186_))
                                                  '()
                                                  _L33037_)))))))
                            _g3306233073_))))
                   (_g3306033189_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3319233195_ _g3319333198_)
                                          (cons _g3319233195_ _g3319333198_))
                                        '()
                                        _L33035_)))
                     (gx#stx-source _stx32862_)))))))
          (let* ((___match4134741348_
                  (lambda (_e3288732931_
                           _hd3288832935_
                           _tl3288932938_
                           _e3289032941_
                           _hd3289132945_
                           _tl3289232948_
                           ___splice4130141302_
                           _target3289332951_
                           _tl3289532954_)
                    (letrec ((_loop3289632957_
                              (lambda (_hd3289432961_
                                       _expr3290032964_
                                       _param3290132966_)
                                (if (gx#stx-pair? _hd3289432961_)
                                    (let ((_e3289732969_
                                           (gx#syntax-e _hd3289432961_)))
                                      (let ((_lp-tl3289932976_
                                             (##cdr _e3289732969_))
                                            (_lp-hd3289832973_
                                             (##car _e3289732969_)))
                                        (if (gx#stx-pair? _lp-hd3289832973_)
                                            (let ((_e3290432979_
                                                   (gx#syntax-e
                                                    _lp-hd3289832973_)))
                                              (let ((_tl3290632986_
                                                     (##cdr _e3290432979_))
                                                    (_hd3290532983_
                                                     (##car _e3290432979_)))
                                                (if (gx#stx-pair?
                                                     _tl3290632986_)
                                                    (let ((_e3290732989_
                                                           (gx#syntax-e
                                                            _tl3290632986_)))
                                                      (let ((_tl3290932996_
                                                             (##cdr _e3290732989_))
                                                            (_hd3290832993_
                                                             (##car _e3290732989_)))
                                                        (if (gx#stx-null?
                                                             _tl3290932996_)
                                                            (_loop3289632957_
                                                             _lp-tl3289932976_
                                                             (cons _hd3290832993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3290032964_)
                     (cons _hd3290532983_ _param3290132966_))
                    (_g3286632924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3286632924_))))
                                            (_g3286632924_))))
                                    (let ((_param3290333002_
                                           (reverse _param3290132966_))
                                          (_expr3290232999_
                                           (reverse _expr3290032964_)))
                                      (if (gx#stx-pair/null? _tl3289232948_)
                                          (let ((___splice4130341304_
                                                 (gx#syntax-split-splice
                                                  _tl3289232948_
                                                  '0)))
                                            (let ((_tl3291233008_
                                                   (##vector-ref
                                                    ___splice4130341304_
                                                    '1))
                                                  (_target3291033005_
                                                   (##vector-ref
                                                    ___splice4130341304_
                                                    '0)))
                                              (if (gx#stx-null? _tl3291233008_)
                                                  (letrec ((_loop3291333011_
                                                            (lambda (_hd3291133015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3291733018_)
                      (if (gx#stx-pair? _hd3291133015_)
                          (let ((_e3291433021_ (gx#syntax-e _hd3291133015_)))
                            (let ((_lp-tl3291633028_ (##cdr _e3291433021_))
                                  (_lp-hd3291533025_ (##car _e3291433021_)))
                              (_loop3291333011_
                               _lp-tl3291633028_
                               (cons _lp-hd3291533025_ _body3291733018_))))
                          (let ((_body3291833031_ (reverse _body3291733018_)))
                            (___kont4129941300_
                             _body3291833031_
                             _expr3290232999_
                             _param3290333002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3291333011_
                                                     _target3291033005_
                                                     '()))
                                                  (_g3286632924_))))
                                          (_g3286632924_)))))))
                      (_loop3289632957_ _target3289332951_ '() '()))))
                 (___match4132741328_
                  (lambda (_e3286933208_
                           _hd3287033212_
                           _tl3287133215_
                           _e3287233218_
                           _hd3287333222_
                           _tl3287433225_
                           ___splice4129741298_
                           _target3287533228_
                           _tl3287733231_)
                    (letrec ((_loop3287833234_
                              (lambda (_hd3287633238_ _body3288233241_)
                                (if (gx#stx-pair? _hd3287633238_)
                                    (let ((_e3287933244_
                                           (gx#syntax-e _hd3287633238_)))
                                      (let ((_lp-tl3288133251_
                                             (##cdr _e3287933244_))
                                            (_lp-hd3288033248_
                                             (##car _e3287933244_)))
                                        (_loop3287833234_
                                         _lp-tl3288133251_
                                         (cons _lp-hd3288033248_
                                               _body3288233241_))))
                                    (let ((_body3288333254_
                                           (reverse _body3288233241_)))
                                      (___kont4129541296_
                                       _body3288333254_))))))
                      (_loop3287833234_ _target3287533228_ '())))))
            (if (gx#stx-pair? ___stx4129241293_)
                (let ((_e3286933208_ (gx#syntax-e ___stx4129241293_)))
                  (let ((_tl3287133215_ (##cdr _e3286933208_))
                        (_hd3287033212_ (##car _e3286933208_)))
                    (if (gx#stx-pair? _tl3287133215_)
                        (let ((_e3287233218_ (gx#syntax-e _tl3287133215_)))
                          (let ((_tl3287433225_ (##cdr _e3287233218_))
                                (_hd3287333222_ (##car _e3287233218_)))
                            (if (gx#stx-null? _hd3287333222_)
                                (if (gx#stx-pair/null? _tl3287433225_)
                                    (let ((___splice4129741298_
                                           (gx#syntax-split-splice
                                            _tl3287433225_
                                            '0)))
                                      (let ((_tl3287733231_
                                             (##vector-ref
                                              ___splice4129741298_
                                              '1))
                                            (_target3287533228_
                                             (##vector-ref
                                              ___splice4129741298_
                                              '0)))
                                        (if (gx#stx-null? _tl3287733231_)
                                            (___match4132741328_
                                             _e3286933208_
                                             _hd3287033212_
                                             _tl3287133215_
                                             _e3287233218_
                                             _hd3287333222_
                                             _tl3287433225_
                                             ___splice4129741298_
                                             _target3287533228_
                                             _tl3287733231_)
                                            (if (gx#stx-pair/null?
                                                 _hd3287333222_)
                                                (let ((___splice4130141302_
                                                       (gx#syntax-split-splice
                                                        _hd3287333222_
                                                        '0)))
                                                  (let ((_tl3289532954_
                                                         (##vector-ref
                                                          ___splice4130141302_
                                                          '1))
                                                        (_target3289332951_
                                                         (##vector-ref
                                                          ___splice4130141302_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3289532954_)
                                                        (___match4134741348_
                                                         _e3286933208_
                                                         _hd3287033212_
                                                         _tl3287133215_
                                                         _e3287233218_
                                                         _hd3287333222_
                                                         _tl3287433225_
                                                         ___splice4130141302_
                                                         _target3289332951_
                                                         _tl3289532954_)
                                                        (_g3286632924_))))
                                                (_g3286632924_)))))
                                    (if (gx#stx-pair/null? _hd3287333222_)
                                        (let ((___splice4130141302_
                                               (gx#syntax-split-splice
                                                _hd3287333222_
                                                '0)))
                                          (let ((_tl3289532954_
                                                 (##vector-ref
                                                  ___splice4130141302_
                                                  '1))
                                                (_target3289332951_
                                                 (##vector-ref
                                                  ___splice4130141302_
                                                  '0)))
                                            (if (gx#stx-null? _tl3289532954_)
                                                (___match4134741348_
                                                 _e3286933208_
                                                 _hd3287033212_
                                                 _tl3287133215_
                                                 _e3287233218_
                                                 _hd3287333222_
                                                 _tl3287433225_
                                                 ___splice4130141302_
                                                 _target3289332951_
                                                 _tl3289532954_)
                                                (_g3286632924_))))
                                        (_g3286632924_)))
                                (if (gx#stx-pair/null? _hd3287333222_)
                                    (let ((___splice4130141302_
                                           (gx#syntax-split-splice
                                            _hd3287333222_
                                            '0)))
                                      (let ((_tl3289532954_
                                             (##vector-ref
                                              ___splice4130141302_
                                              '1))
                                            (_target3289332951_
                                             (##vector-ref
                                              ___splice4130141302_
                                              '0)))
                                        (if (gx#stx-null? _tl3289532954_)
                                            (___match4134741348_
                                             _e3286933208_
                                             _hd3287033212_
                                             _tl3287133215_
                                             _e3287233218_
                                             _hd3287333222_
                                             _tl3287433225_
                                             ___splice4130141302_
                                             _target3289332951_
                                             _tl3289532954_)
                                            (_g3286632924_))))
                                    (_g3286632924_)))))
                        (_g3286632924_))))
                (_g3286632924_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33291_)
      (let* ((_g3329533319_
              (lambda (_g3329633315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3329633315_)))
             (_g3329433404_
              (lambda (_g3329633323_)
                (if (gx#stx-pair? _g3329633323_)
                    (let ((_e3329933326_ (gx#syntax-e _g3329633323_)))
                      (let ((_hd3330033330_ (##car _e3329933326_))
                            (_tl3330133333_ (##cdr _e3329933326_)))
                        (if (gx#stx-pair? _tl3330133333_)
                            (let ((_e3330233336_ (gx#syntax-e _tl3330133333_)))
                              (let ((_hd3330333340_ (##car _e3330233336_))
                                    (_tl3330433343_ (##cdr _e3330233336_)))
                                (if (gx#stx-pair/null? _tl3330433343_)
                                    (let ((_g41780_
                                           (gx#syntax-split-splice
                                            _tl3330433343_
                                            '0)))
                                      (begin
                                        (let ((_g41781_
                                               (if (##values? _g41780_)
                                                   (##vector-length _g41780_)
                                                   1)))
                                          (if (not (##fx= _g41781_ 2))
                                              (error "Context expects 2 values"
                                                     _g41781_)))
                                        (let ((_target3330533346_
                                               (##vector-ref _g41780_ 0))
                                              (_tl3330733349_
                                               (##vector-ref _g41780_ 1)))
                                          (if (gx#stx-null? _tl3330733349_)
                                              (letrec ((_loop3330833352_
                                                        (lambda (_hd3330633356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3331233359_)
                  (if (gx#stx-pair? _hd3330633356_)
                      (let ((_e3330933362_ (gx#syntax-e _hd3330633356_)))
                        (let ((_lp-hd3331033366_ (##car _e3330933362_))
                              (_lp-tl3331133369_ (##cdr _e3330933362_)))
                          (_loop3330833352_
                           _lp-tl3331133369_
                           (cons _lp-hd3331033366_ _body3331233359_))))
                      (let ((_body3331333372_ (reverse _body3331233359_)))
                        ((lambda (_L33376_ _L33378_)
                           (if (gx#identifier? _L33378_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33378_ '())
                                                       (foldr (lambda (_g3339533398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3339633401_)
                        (cons _g3339533398_ _g3339633401_))
                      '()
                      _L33376_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3329533319_ _g3329633323_)))
                         _body3331333372_
                         _hd3330333340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3330833352_
                                                 _target3330533346_
                                                 '()))
                                              (_g3329533319_ _g3329633323_)))))
                                    (_g3329533319_ _g3329633323_))))
                            (_g3329533319_ _g3329633323_))))
                    (_g3329533319_ _g3329633323_)))))
        (_g3329433404_ _$stx33291_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33409_)
      (let* ((_g3341333437_
              (lambda (_g3341433433_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3341433433_)))
             (_g3341233522_
              (lambda (_g3341433441_)
                (if (gx#stx-pair? _g3341433441_)
                    (let ((_e3341733444_ (gx#syntax-e _g3341433441_)))
                      (let ((_hd3341833448_ (##car _e3341733444_))
                            (_tl3341933451_ (##cdr _e3341733444_)))
                        (if (gx#stx-pair? _tl3341933451_)
                            (let ((_e3342033454_ (gx#syntax-e _tl3341933451_)))
                              (let ((_hd3342133458_ (##car _e3342033454_))
                                    (_tl3342233461_ (##cdr _e3342033454_)))
                                (if (gx#stx-pair/null? _tl3342233461_)
                                    (let ((_g41782_
                                           (gx#syntax-split-splice
                                            _tl3342233461_
                                            '0)))
                                      (begin
                                        (let ((_g41783_
                                               (if (##values? _g41782_)
                                                   (##vector-length _g41782_)
                                                   1)))
                                          (if (not (##fx= _g41783_ 2))
                                              (error "Context expects 2 values"
                                                     _g41783_)))
                                        (let ((_target3342333464_
                                               (##vector-ref _g41782_ 0))
                                              (_tl3342533467_
                                               (##vector-ref _g41782_ 1)))
                                          (if (gx#stx-null? _tl3342533467_)
                                              (letrec ((_loop3342633470_
                                                        (lambda (_hd3342433474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3343033477_)
                  (if (gx#stx-pair? _hd3342433474_)
                      (let ((_e3342733480_ (gx#syntax-e _hd3342433474_)))
                        (let ((_lp-hd3342833484_ (##car _e3342733480_))
                              (_lp-tl3342933487_ (##cdr _e3342733480_)))
                          (_loop3342633470_
                           _lp-tl3342933487_
                           (cons _lp-hd3342833484_ _body3343033477_))))
                      (let ((_body3343133490_ (reverse _body3343033477_)))
                        ((lambda (_L33494_ _L33496_)
                           (if (gx#identifier? _L33496_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33496_ '())
                                                       (foldr (lambda (_g3351333516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3351433519_)
                        (cons _g3351333516_ _g3351433519_))
                      '()
                      _L33494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3341333437_ _g3341433441_)))
                         _body3343133490_
                         _hd3342133458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3342633470_
                                                 _target3342333464_
                                                 '()))
                                              (_g3341333437_ _g3341433441_)))))
                                    (_g3341333437_ _g3341433441_))))
                            (_g3341333437_ _g3341433441_))))
                    (_g3341333437_ _g3341433441_)))))
        (_g3341233522_ _$stx33409_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33527_)
      (let* ((_g3353133559_
              (lambda (_g3353233555_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3353233555_)))
             (_g3353033658_
              (lambda (_g3353233563_)
                (if (gx#stx-pair? _g3353233563_)
                    (let ((_e3353633566_ (gx#syntax-e _g3353233563_)))
                      (let ((_hd3353733570_ (##car _e3353633566_))
                            (_tl3353833573_ (##cdr _e3353633566_)))
                        (if (gx#stx-pair? _tl3353833573_)
                            (let ((_e3353933576_ (gx#syntax-e _tl3353833573_)))
                              (let ((_hd3354033580_ (##car _e3353933576_))
                                    (_tl3354133583_ (##cdr _e3353933576_)))
                                (if (gx#stx-pair? _tl3354133583_)
                                    (let ((_e3354233586_
                                           (gx#syntax-e _tl3354133583_)))
                                      (let ((_hd3354333590_
                                             (##car _e3354233586_))
                                            (_tl3354433593_
                                             (##cdr _e3354233586_)))
                                        (if (gx#stx-pair/null? _tl3354433593_)
                                            (let ((_g41784_
                                                   (gx#syntax-split-splice
                                                    _tl3354433593_
                                                    '0)))
                                              (begin
                                                (let ((_g41785_
                                                       (if (##values? _g41784_)
                                                           (##vector-length
                                                            _g41784_)
                                                           1)))
                                                  (if (not (##fx= _g41785_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41785_)))
                                                (let ((_target3354533596_
                                                       (##vector-ref
                                                        _g41784_
                                                        0))
                                                      (_tl3354733599_
                                                       (##vector-ref
                                                        _g41784_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3354733599_)
                                                      (letrec ((_loop3354833602_
                                                                (lambda (_hd3354633606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3355233609_)
                          (if (gx#stx-pair? _hd3354633606_)
                              (let ((_e3354933612_
                                     (gx#syntax-e _hd3354633606_)))
                                (let ((_lp-hd3355033616_ (##car _e3354933612_))
                                      (_lp-tl3355133619_
                                       (##cdr _e3354933612_)))
                                  (_loop3354833602_
                                   _lp-tl3355133619_
                                   (cons _lp-hd3355033616_ _rest3355233609_))))
                              (let ((_rest3355333622_
                                     (reverse _rest3355233609_)))
                                ((lambda (_L33626_ _L33628_ _L33629_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33628_
                               (foldr (lambda (_g3364933652_ _g3365033655_)
                                        (cons _g3364933652_ _g3365033655_))
                                      '()
                                      _L33626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3355333622_
                                 _hd3354333590_
                                 _hd3354033580_))))))
                (_loop3354833602_ _target3354533596_ '()))
              (_g3353133559_ _g3353233563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3353133559_ _g3353233563_))))
                                    (_g3353133559_ _g3353233563_))))
                            (_g3353133559_ _g3353233563_))))
                    (_g3353133559_ _g3353233563_)))))
        (_g3353033658_ _$stx33527_)))))
