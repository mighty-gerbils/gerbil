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
    (lambda _$args27708_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args27708_)))
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
    (lambda _$args27704_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args27704_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27701_)
      (if (gx#identifier? _stx27701_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27701_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27698_)
      (if (gx#identifier? _stx27698_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27698_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx27712_)
      (let* ((_g2771827777_
              (lambda (_g2771927773_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2771927773_)))
             (_g2771727832_
              (lambda (_g2771927781_)
                (if (gx#stx-pair? _g2771927781_)
                    (let ((_e2776327784_ (gx#syntax-e _g2771927781_)))
                      (let ((_hd2776427788_ (##car _e2776327784_))
                            (_tl2776527791_ (##cdr _e2776327784_)))
                        (if (gx#stx-pair? _tl2776527791_)
                            (let ((_e2776627794_ (gx#syntax-e _tl2776527791_)))
                              (let ((_hd2776727798_ (##car _e2776627794_))
                                    (_tl2776827801_ (##cdr _e2776627794_)))
                                (if (gx#stx-pair? _tl2776827801_)
                                    (let ((_e2776927804_
                                           (gx#syntax-e _tl2776827801_)))
                                      (let ((_hd2777027808_
                                             (##car _e2776927804_))
                                            (_tl2777127811_
                                             (##cdr _e2776927804_)))
                                        (if (gx#stx-null? _tl2777127811_)
                                            ((lambda (_L27814_ _L27816_)
                                               (if (gx#identifier? _L27816_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27816_
                                                               (cons _L27814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2771827777_
                                                    _g2771927781_)))
                                             _hd2777027808_
                                             _hd2776727798_)
                                            (_g2771827777_ _g2771927781_))))
                                    (_g2771827777_ _g2771927781_))))
                            (_g2771827777_ _g2771927781_))))
                    (_g2771827777_ _g2771927781_))))
             (_g2771627872_
              (lambda (_g2771927836_)
                (if (gx#stx-pair? _g2771927836_)
                    (let ((_e2775527839_ (gx#syntax-e _g2771927836_)))
                      (let ((_hd2775627843_ (##car _e2775527839_))
                            (_tl2775727846_ (##cdr _e2775527839_)))
                        (if (gx#stx-pair? _tl2775727846_)
                            (let ((_e2775827849_ (gx#syntax-e _tl2775727846_)))
                              (let ((_hd2775927853_ (##car _e2775827849_))
                                    (_tl2776027856_ (##cdr _e2775827849_)))
                                ((lambda (_L27859_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27859_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27859_)
                                        _stx27712_)
                                       (_g2771727832_ _g2771927836_)))
                                 _hd2775927853_)))
                            (_g2771727832_ _g2771927836_))))
                    (_g2771727832_ _g2771927836_))))
             (_g2771528013_
              (lambda (_g2771927876_)
                (if (gx#stx-pair? _g2771927876_)
                    (let ((_e2773327879_ (gx#syntax-e _g2771927876_)))
                      (let ((_hd2773427883_ (##car _e2773327879_))
                            (_tl2773527886_ (##cdr _e2773327879_)))
                        (if (gx#stx-pair? _tl2773527886_)
                            (let ((_e2773627889_ (gx#syntax-e _tl2773527886_)))
                              (let ((_hd2773727893_ (##car _e2773627889_))
                                    (_tl2773827896_ (##cdr _e2773627889_)))
                                (if (gx#stx-pair? _hd2773727893_)
                                    (let ((_e2773927899_
                                           (gx#syntax-e _hd2773727893_)))
                                      (let ((_hd2774027903_
                                             (##car _e2773927899_))
                                            (_tl2774127906_
                                             (##cdr _e2773927899_)))
                                        (if (gx#stx-pair/null? _tl2774127906_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2774127906_)
                                                      '0)
                                                (let ((_g31763_
                                                       (gx#syntax-split-splice
                                                        _tl2774127906_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31764_
                                                           (values-count
                                                            _g31763_)))
                                                      (if (not (fx= _g31764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2774227909_
                                                           (values-ref
                                                            _g31763_
                                                            0))
                                                          (_tl2774427912_
                                                           (values-ref
                                                            _g31763_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2774427912_)
                                                          (letrec ((_loop2774527915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2774327919_ _arg2774927922_)
                              (if (gx#stx-pair? _hd2774327919_)
                                  (let ((_e2774627925_
                                         (gx#syntax-e _hd2774327919_)))
                                    (let ((_lp-hd2774727929_
                                           (##car _e2774627925_))
                                          (_lp-tl2774827932_
                                           (##cdr _e2774627925_)))
                                      (_loop2774527915_
                                       _lp-tl2774827932_
                                       (cons _lp-hd2774727929_
                                             _arg2774927922_))))
                                  (let ((_arg2775027935_
                                         (reverse _arg2774927922_)))
                                    (if (gx#stx-pair? _tl2773827896_)
                                        (let ((_e2775127939_
                                               (gx#syntax-e _tl2773827896_)))
                                          (let ((_hd2775227943_
                                                 (##car _e2775127939_))
                                                (_tl2775327946_
                                                 (##cdr _e2775127939_)))
                                            (if (gx#stx-null? _tl2775327946_)
                                                ((lambda (_L27949_
                                                          _L27951_
                                                          _L27952_)
                                                   (if (gx#identifier?
                                                        _L27952_)
                                                       (let* ((_g2797427982_
                                                               (lambda (_g2797527978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2797527978_)))
                      (_g2797328009_
                       (lambda (_g2797527986_)
                         ((lambda (_L27989_)
                            (let ()
                              (cons _L27989_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2800028003_
                                                      _g2800128006_)
                                               (cons _g2800028003_
                                                     _g2800128006_))
                                             (cons _L27949_ '())
                                             _L27951_)))))
                          _g2797527986_))))
                 (_g2797328009_
                  (gx#stx-identifier _L27952_ _L27952_ '"-set!")))
               (_g2771627872_ _g2771927876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2775227943_
                                                 _arg2775027935_
                                                 _hd2774027903_)
                                                (_g2771627872_
                                                 _g2771927876_))))
                                        (_g2771627872_ _g2771927876_)))))))
                    (_loop2774527915_ _target2774227909_ '()))
                  (_g2771627872_ _g2771927876_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2771627872_ _g2771927876_))
                                            (_g2771627872_ _g2771927876_))))
                                    (_g2771627872_ _g2771927876_))))
                            (_g2771627872_ _g2771927876_))))
                    (_g2771627872_ _g2771927876_))))
             (_g2771428065_
              (lambda (_g2771928017_)
                (if (gx#stx-pair? _g2771928017_)
                    (let ((_e2772128020_ (gx#syntax-e _g2771928017_)))
                      (let ((_hd2772228024_ (##car _e2772128020_))
                            (_tl2772328027_ (##cdr _e2772128020_)))
                        (if (gx#stx-pair? _tl2772328027_)
                            (let ((_e2772428030_ (gx#syntax-e _tl2772328027_)))
                              (let ((_hd2772528034_ (##car _e2772428030_))
                                    (_tl2772628037_ (##cdr _e2772428030_)))
                                (if (gx#stx-pair? _hd2772528034_)
                                    (let ((_e2772728040_
                                           (gx#syntax-e _hd2772528034_)))
                                      (let ((_hd2772828044_
                                             (##car _e2772728040_))
                                            (_tl2772928047_
                                             (##cdr _e2772728040_)))
                                        ((lambda (_L28050_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L28050_)
                                                _stx27712_)
                                               (_g2771528013_ _g2771928017_)))
                                         _hd2772828044_)))
                                    (_g2771528013_ _g2771928017_))))
                            (_g2771528013_ _g2771928017_))))
                    (_g2771528013_ _g2771928017_)))))
        (_g2771428065_ _stx27712_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx28070_)
      (let* ((_g2807328097_
              (lambda (_g2807428093_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2807428093_)))
             (_g2807228275_
              (lambda (_g2807428101_)
                (if (gx#stx-pair? _g2807428101_)
                    (let ((_e2807728104_ (gx#syntax-e _g2807428101_)))
                      (let ((_hd2807828108_ (##car _e2807728104_))
                            (_tl2807928111_ (##cdr _e2807728104_)))
                        (if (gx#stx-pair/null? _tl2807928111_)
                            (if (fx>= (gx#stx-length _tl2807928111_) '1)
                                (let ((_g31765_
                                       (gx#syntax-split-splice
                                        _tl2807928111_
                                        '1)))
                                  (begin
                                    (let ((_g31766_ (values-count _g31765_)))
                                      (if (not (fx= _g31766_ 2))
                                          (error "Context expects 2 values"
                                                 _g31766_)))
                                    (let ((_target2808028114_
                                           (values-ref _g31765_ 0))
                                          (_tl2808228117_
                                           (values-ref _g31765_ 1)))
                                      (if (gx#stx-pair? _tl2808228117_)
                                          (let ((_e2808928120_
                                                 (gx#syntax-e _tl2808228117_)))
                                            (let ((_hd2809028124_
                                                   (##car _e2808928120_))
                                                  (_tl2809128127_
                                                   (##cdr _e2808928120_)))
                                              (if (gx#stx-null? _tl2809128127_)
                                                  (letrec ((_loop2808328130_
                                                            (lambda (_hd2808128134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2808728137_)
                      (if (gx#stx-pair? _hd2808128134_)
                          (let ((_e2808428140_ (gx#syntax-e _hd2808128134_)))
                            (let ((_lp-hd2808528144_ (##car _e2808428140_))
                                  (_lp-tl2808628147_ (##cdr _e2808428140_)))
                              (_loop2808328130_
                               _lp-tl2808628147_
                               (cons _lp-hd2808528144_ _tgt2808728137_))))
                          (let ((_tgt2808828150_ (reverse _tgt2808728137_)))
                            ((lambda (_L28154_ _L28156_)
                               (let* ((_g2817428191_
                                       (lambda (_g2817528187_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2817528187_)))
                                      (_g2817328263_
                                       (lambda (_g2817528195_)
                                         (if (gx#stx-pair/null? _g2817528195_)
                                             (if (fx>= (gx#stx-length
                                                        _g2817528195_)
                                                       '0)
                                                 (let ((_g31767_
                                                        (gx#syntax-split-splice
                                                         _g2817528195_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31768_
                                                            (values-count
                                                             _g31767_)))
                                                       (if (not (fx= _g31768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2817728198_
                                                            (values-ref
                                                             _g31767_
                                                             0))
                                                           (_tl2817928201_
                                                            (values-ref
                                                             _g31767_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2817928201_)
                                                           (letrec ((_loop2818028204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2817828208_ _$e2818428211_)
                               (if (gx#stx-pair? _hd2817828208_)
                                   (let ((_e2818128214_
                                          (gx#syntax-e _hd2817828208_)))
                                     (let ((_lp-hd2818228218_
                                            (##car _e2818128214_))
                                           (_lp-tl2818328221_
                                            (##cdr _e2818128214_)))
                                       (_loop2818028204_
                                        _lp-tl2818328221_
                                        (cons _lp-hd2818228218_
                                              _$e2818428211_))))
                                   (let ((_$e2818528224_
                                          (reverse _$e2818428211_)))
                                     ((lambda (_L28228_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2824328249_ _g2824428252_)
                                     (cons _g2824328249_ _g2824428252_))
                                   '()
                                   _L28228_))
                          (cons _L28154_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L28228_ _L28156_)
                (foldr (lambda (_g2824528255_ _g2824628258_ _g2824728260_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2824628258_
                                           (cons _g2824528255_ '())))
                               _g2824728260_))
                       '()
                       _L28228_
                       _L28156_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2818528224_))))))
                     (_loop2818028204_ _target2817728198_ '()))
                   (_g2817428191_ _g2817528195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2817428191_ _g2817528195_))
                                             (_g2817428191_ _g2817528195_)))))
                                 (_g2817328263_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2826628269_
                                                     _g2826728272_)
                                              (cons _g2826628269_
                                                    _g2826728272_))
                                            '()
                                            _L28156_))))))
                             _hd2809028124_
                             _tgt2808828150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2808328130_
                                                     _target2808028114_
                                                     '()))
                                                  (_g2807328097_
                                                   _g2807428101_))))
                                          (_g2807328097_ _g2807428101_)))))
                                (_g2807328097_ _g2807428101_))
                            (_g2807328097_ _g2807428101_))))
                    (_g2807328097_ _g2807428101_)))))
        (_g2807228275_ _stx28070_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx28281_)
      (let* ((_g2828528343_
              (lambda (_g2828628339_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2828628339_)))
             (_g2828428620_
              (lambda (_g2828628347_)
                (if (gx#stx-pair? _g2828628347_)
                    (let ((_e2830628350_ (gx#syntax-e _g2828628347_)))
                      (let ((_hd2830728354_ (##car _e2830628350_))
                            (_tl2830828357_ (##cdr _e2830628350_)))
                        (if (gx#stx-pair? _tl2830828357_)
                            (let ((_e2830928360_ (gx#syntax-e _tl2830828357_)))
                              (let ((_hd2831028364_ (##car _e2830928360_))
                                    (_tl2831128367_ (##cdr _e2830928360_)))
                                (if (gx#stx-pair/null? _hd2831028364_)
                                    (if (fx>= (gx#stx-length _hd2831028364_)
                                              '0)
                                        (let ((_g31769_
                                               (gx#syntax-split-splice
                                                _hd2831028364_
                                                '0)))
                                          (begin
                                            (let ((_g31770_
                                                   (values-count _g31769_)))
                                              (if (not (fx= _g31770_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31770_)))
                                            (let ((_target2831228370_
                                                   (values-ref _g31769_ 0))
                                                  (_tl2831428373_
                                                   (values-ref _g31769_ 1)))
                                              (if (gx#stx-null? _tl2831428373_)
                                                  (letrec ((_loop2831528376_
                                                            (lambda (_hd2831328380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2831928383_
                             _param2832028385_)
                      (if (gx#stx-pair? _hd2831328380_)
                          (let ((_e2831628388_ (gx#syntax-e _hd2831328380_)))
                            (let ((_lp-hd2831728392_ (##car _e2831628388_))
                                  (_lp-tl2831828395_ (##cdr _e2831628388_)))
                              (if (gx#stx-pair? _lp-hd2831728392_)
                                  (let ((_e2832328398_
                                         (gx#syntax-e _lp-hd2831728392_)))
                                    (let ((_hd2832428402_
                                           (##car _e2832328398_))
                                          (_tl2832528405_
                                           (##cdr _e2832328398_)))
                                      (if (gx#stx-pair? _tl2832528405_)
                                          (let ((_e2832628408_
                                                 (gx#syntax-e _tl2832528405_)))
                                            (let ((_hd2832728412_
                                                   (##car _e2832628408_))
                                                  (_tl2832828415_
                                                   (##cdr _e2832628408_)))
                                              (if (gx#stx-null? _tl2832828415_)
                                                  (_loop2831528376_
                                                   _lp-tl2831828395_
                                                   (cons _hd2832728412_
                                                         _expr2831928383_)
                                                   (cons _hd2832428402_
                                                         _param2832028385_))
                                                  (_g2828528343_
                                                   _g2828628347_))))
                                          (_g2828528343_ _g2828628347_))))
                                  (_g2828528343_ _g2828628347_))))
                          (let ((_expr2832128418_ (reverse _expr2831928383_))
                                (_param2832228421_
                                 (reverse _param2832028385_)))
                            (if (gx#stx-pair/null? _tl2831128367_)
                                (if (fx>= (gx#stx-length _tl2831128367_) '0)
                                    (let ((_g31771_
                                           (gx#syntax-split-splice
                                            _tl2831128367_
                                            '0)))
                                      (begin
                                        (let ((_g31772_
                                               (values-count _g31771_)))
                                          (if (not (fx= _g31772_ 2))
                                              (error "Context expects 2 values"
                                                     _g31772_)))
                                        (let ((_target2832928424_
                                               (values-ref _g31771_ 0))
                                              (_tl2833128427_
                                               (values-ref _g31771_ 1)))
                                          (if (gx#stx-null? _tl2833128427_)
                                              (letrec ((_loop2833228430_
                                                        (lambda (_hd2833028434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2833628437_)
                  (if (gx#stx-pair? _hd2833028434_)
                      (let ((_e2833328440_ (gx#syntax-e _hd2833028434_)))
                        (let ((_lp-hd2833428444_ (##car _e2833328440_))
                              (_lp-tl2833528447_ (##cdr _e2833328440_)))
                          (_loop2833228430_
                           _lp-tl2833528447_
                           (cons _lp-hd2833428444_ _body2833628437_))))
                      (let ((_body2833728450_ (reverse _body2833628437_)))
                        ((lambda (_L28454_ _L28456_ _L28457_)
                           (let* ((_g2848028488_
                                   (lambda (_g2848128484_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2848128484_)))
                                  (_g2847928608_
                                   (lambda (_g2848128492_)
                                     ((lambda (_L28495_)
                                        (let ()
                                          (let* ((_g2850728524_
                                                  (lambda (_g2850828520_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2850828520_)))
                                                 (_g2850628588_
                                                  (lambda (_g2850828528_)
                                                    (if (gx#stx-pair/null?
                                                         _g2850828528_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2850828528_)
                          '0)
                    (let ((_g31773_ (gx#syntax-split-splice _g2850828528_ '0)))
                      (begin
                        (let ((_g31774_ (values-count _g31773_)))
                          (if (not (fx= _g31774_ 2))
                              (error "Context expects 2 values" _g31774_)))
                        (let ((_target2851028531_ (values-ref _g31773_ 0))
                              (_tl2851228534_ (values-ref _g31773_ 1)))
                          (if (gx#stx-null? _tl2851228534_)
                              (letrec ((_loop2851328537_
                                        (lambda (_hd2851128541_
                                                 _arg2851728544_)
                                          (if (gx#stx-pair? _hd2851128541_)
                                              (let ((_e2851428547_
                                                     (gx#syntax-e
                                                      _hd2851128541_)))
                                                (let ((_lp-hd2851528551_
                                                       (##car _e2851428547_))
                                                      (_lp-tl2851628554_
                                                       (##cdr _e2851428547_)))
                                                  (_loop2851328537_
                                                   _lp-tl2851628554_
                                                   (cons _lp-hd2851528551_
                                                         _arg2851728544_))))
                                              (let ((_arg2851828557_
                                                     (reverse _arg2851728544_)))
                                                ((lambda (_L28561_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2857928582_ _g2858028585_)
                                      (cons _g2857928582_ _g2858028585_))
                                    '()
                                    _L28561_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2851828557_))))))
                                (_loop2851328537_ _target2851028531_ '()))
                              (_g2850728524_ _g2850828528_)))))
                    (_g2850728524_ _g2850828528_))
                (_g2850728524_ _g2850828528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2850628588_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2859128594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2859228597_)
                        (cons _g2859128594_ _g2859228597_))
                      '()
                      _L28457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2859928602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2860028605_)
                        (cons _g2859928602_ _g2860028605_))
                      '()
                      _L28456_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2848128492_))))
                             (_g2847928608_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2861128614_
                                                             _g2861228617_)
                                                      (cons _g2861128614_
                                                            _g2861228617_))
                                                    '()
                                                    _L28454_))))
                               (gx#stx-source _stx28281_)))))
                         _body2833728450_
                         _expr2832128418_
                         _param2832228421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2833228430_
                                                 _target2832928424_
                                                 '()))
                                              (_g2828528343_ _g2828628347_)))))
                                    (_g2828528343_ _g2828628347_))
                                (_g2828528343_ _g2828628347_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2831528376_
                                                     _target2831228370_
                                                     '()
                                                     '()))
                                                  (_g2828528343_
                                                   _g2828628347_)))))
                                        (_g2828528343_ _g2828628347_))
                                    (_g2828528343_ _g2828628347_))))
                            (_g2828528343_ _g2828628347_))))
                    (_g2828528343_ _g2828628347_))))
             (_g2828328702_
              (lambda (_g2828628624_)
                (if (gx#stx-pair? _g2828628624_)
                    (let ((_e2828828627_ (gx#syntax-e _g2828628624_)))
                      (let ((_hd2828928631_ (##car _e2828828627_))
                            (_tl2829028634_ (##cdr _e2828828627_)))
                        (if (gx#stx-pair? _tl2829028634_)
                            (let ((_e2829128637_ (gx#syntax-e _tl2829028634_)))
                              (let ((_hd2829228641_ (##car _e2829128637_))
                                    (_tl2829328644_ (##cdr _e2829128637_)))
                                (if (gx#stx-null? _hd2829228641_)
                                    (if (gx#stx-pair/null? _tl2829328644_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2829328644_)
                                                  '0)
                                            (let ((_g31775_
                                                   (gx#syntax-split-splice
                                                    _tl2829328644_
                                                    '0)))
                                              (begin
                                                (let ((_g31776_
                                                       (values-count
                                                        _g31775_)))
                                                  (if (not (fx= _g31776_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31776_)))
                                                (let ((_target2829428647_
                                                       (values-ref _g31775_ 0))
                                                      (_tl2829628650_
                                                       (values-ref
                                                        _g31775_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2829628650_)
                                                      (letrec ((_loop2829728653_
                                                                (lambda (_hd2829528657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2830128660_)
                          (if (gx#stx-pair? _hd2829528657_)
                              (let ((_e2829828663_
                                     (gx#syntax-e _hd2829528657_)))
                                (let ((_lp-hd2829928667_ (##car _e2829828663_))
                                      (_lp-tl2830028670_
                                       (##cdr _e2829828663_)))
                                  (_loop2829728653_
                                   _lp-tl2830028670_
                                   (cons _lp-hd2829928667_ _body2830128660_))))
                              (let ((_body2830228673_
                                     (reverse _body2830128660_)))
                                ((lambda (_L28677_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2869328696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2869428699_)
                  (cons _g2869328696_ _g2869428699_))
                '()
                _L28677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2830228673_))))))
                (_loop2829728653_ _target2829428647_ '()))
              (_g2828428620_ _g2828628624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2828428620_ _g2828628624_))
                                        (_g2828428620_ _g2828628624_))
                                    (_g2828428620_ _g2828628624_))))
                            (_g2828428620_ _g2828628624_))))
                    (_g2828428620_ _g2828628624_)))))
        (_g2828328702_ _stx28281_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28710_)
      (let* ((_g2871428738_
              (lambda (_g2871528734_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871528734_)))
             (_g2871328823_
              (lambda (_g2871528742_)
                (if (gx#stx-pair? _g2871528742_)
                    (let ((_e2871828745_ (gx#syntax-e _g2871528742_)))
                      (let ((_hd2871928749_ (##car _e2871828745_))
                            (_tl2872028752_ (##cdr _e2871828745_)))
                        (if (gx#stx-pair? _tl2872028752_)
                            (let ((_e2872128755_ (gx#syntax-e _tl2872028752_)))
                              (let ((_hd2872228759_ (##car _e2872128755_))
                                    (_tl2872328762_ (##cdr _e2872128755_)))
                                (if (gx#stx-pair/null? _tl2872328762_)
                                    (if (fx>= (gx#stx-length _tl2872328762_)
                                              '0)
                                        (let ((_g31777_
                                               (gx#syntax-split-splice
                                                _tl2872328762_
                                                '0)))
                                          (begin
                                            (let ((_g31778_
                                                   (values-count _g31777_)))
                                              (if (not (fx= _g31778_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31778_)))
                                            (let ((_target2872428765_
                                                   (values-ref _g31777_ 0))
                                                  (_tl2872628768_
                                                   (values-ref _g31777_ 1)))
                                              (if (gx#stx-null? _tl2872628768_)
                                                  (letrec ((_loop2872728771_
                                                            (lambda (_hd2872528775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2873128778_)
                      (if (gx#stx-pair? _hd2872528775_)
                          (let ((_e2872828781_ (gx#syntax-e _hd2872528775_)))
                            (let ((_lp-hd2872928785_ (##car _e2872828781_))
                                  (_lp-tl2873028788_ (##cdr _e2872828781_)))
                              (_loop2872728771_
                               _lp-tl2873028788_
                               (cons _lp-hd2872928785_ _body2873128778_))))
                          (let ((_body2873228791_ (reverse _body2873128778_)))
                            ((lambda (_L28795_ _L28797_)
                               (if (gx#identifier? _L28797_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28797_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2881428817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2881528820_)
                              (cons _g2881428817_ _g2881528820_))
                            '()
                            _L28795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2871428738_ _g2871528742_)))
                             _body2873228791_
                             _hd2872228759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2872728771_
                                                     _target2872428765_
                                                     '()))
                                                  (_g2871428738_
                                                   _g2871528742_)))))
                                        (_g2871428738_ _g2871528742_))
                                    (_g2871428738_ _g2871528742_))))
                            (_g2871428738_ _g2871528742_))))
                    (_g2871428738_ _g2871528742_)))))
        (_g2871328823_ _$stx28710_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28828_)
      (let* ((_g2883228856_
              (lambda (_g2883328852_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2883328852_)))
             (_g2883128941_
              (lambda (_g2883328860_)
                (if (gx#stx-pair? _g2883328860_)
                    (let ((_e2883628863_ (gx#syntax-e _g2883328860_)))
                      (let ((_hd2883728867_ (##car _e2883628863_))
                            (_tl2883828870_ (##cdr _e2883628863_)))
                        (if (gx#stx-pair? _tl2883828870_)
                            (let ((_e2883928873_ (gx#syntax-e _tl2883828870_)))
                              (let ((_hd2884028877_ (##car _e2883928873_))
                                    (_tl2884128880_ (##cdr _e2883928873_)))
                                (if (gx#stx-pair/null? _tl2884128880_)
                                    (if (fx>= (gx#stx-length _tl2884128880_)
                                              '0)
                                        (let ((_g31779_
                                               (gx#syntax-split-splice
                                                _tl2884128880_
                                                '0)))
                                          (begin
                                            (let ((_g31780_
                                                   (values-count _g31779_)))
                                              (if (not (fx= _g31780_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31780_)))
                                            (let ((_target2884228883_
                                                   (values-ref _g31779_ 0))
                                                  (_tl2884428886_
                                                   (values-ref _g31779_ 1)))
                                              (if (gx#stx-null? _tl2884428886_)
                                                  (letrec ((_loop2884528889_
                                                            (lambda (_hd2884328893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2884928896_)
                      (if (gx#stx-pair? _hd2884328893_)
                          (let ((_e2884628899_ (gx#syntax-e _hd2884328893_)))
                            (let ((_lp-hd2884728903_ (##car _e2884628899_))
                                  (_lp-tl2884828906_ (##cdr _e2884628899_)))
                              (_loop2884528889_
                               _lp-tl2884828906_
                               (cons _lp-hd2884728903_ _body2884928896_))))
                          (let ((_body2885028909_ (reverse _body2884928896_)))
                            ((lambda (_L28913_ _L28915_)
                               (if (gx#identifier? _L28915_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28915_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2893228935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2893328938_)
                              (cons _g2893228935_ _g2893328938_))
                            '()
                            _L28913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2883228856_ _g2883328860_)))
                             _body2885028909_
                             _hd2884028877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2884528889_
                                                     _target2884228883_
                                                     '()))
                                                  (_g2883228856_
                                                   _g2883328860_)))))
                                        (_g2883228856_ _g2883328860_))
                                    (_g2883228856_ _g2883328860_))))
                            (_g2883228856_ _g2883328860_))))
                    (_g2883228856_ _g2883328860_)))))
        (_g2883128941_ _$stx28828_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28946_)
      (let* ((_g2895028978_
              (lambda (_g2895128974_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2895128974_)))
             (_g2894929077_
              (lambda (_g2895128982_)
                (if (gx#stx-pair? _g2895128982_)
                    (let ((_e2895528985_ (gx#syntax-e _g2895128982_)))
                      (let ((_hd2895628989_ (##car _e2895528985_))
                            (_tl2895728992_ (##cdr _e2895528985_)))
                        (if (gx#stx-pair? _tl2895728992_)
                            (let ((_e2895828995_ (gx#syntax-e _tl2895728992_)))
                              (let ((_hd2895928999_ (##car _e2895828995_))
                                    (_tl2896029002_ (##cdr _e2895828995_)))
                                (if (gx#stx-pair? _tl2896029002_)
                                    (let ((_e2896129005_
                                           (gx#syntax-e _tl2896029002_)))
                                      (let ((_hd2896229009_
                                             (##car _e2896129005_))
                                            (_tl2896329012_
                                             (##cdr _e2896129005_)))
                                        (if (gx#stx-pair/null? _tl2896329012_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2896329012_)
                                                      '0)
                                                (let ((_g31781_
                                                       (gx#syntax-split-splice
                                                        _tl2896329012_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31782_
                                                           (values-count
                                                            _g31781_)))
                                                      (if (not (fx= _g31782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2896429015_
                                                           (values-ref
                                                            _g31781_
                                                            0))
                                                          (_tl2896629018_
                                                           (values-ref
                                                            _g31781_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2896629018_)
                                                          (letrec ((_loop2896729021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2896529025_ _rest2897129028_)
                              (if (gx#stx-pair? _hd2896529025_)
                                  (let ((_e2896829031_
                                         (gx#syntax-e _hd2896529025_)))
                                    (let ((_lp-hd2896929035_
                                           (##car _e2896829031_))
                                          (_lp-tl2897029038_
                                           (##cdr _e2896829031_)))
                                      (_loop2896729021_
                                       _lp-tl2897029038_
                                       (cons _lp-hd2896929035_
                                             _rest2897129028_))))
                                  (let ((_rest2897229041_
                                         (reverse _rest2897129028_)))
                                    ((lambda (_L29045_ _L29047_ _L29048_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L29048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L29047_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2906829071_
                                                     _g2906929074_)
                                              (cons _g2906829071_
                                                    _g2906929074_))
                                            '()
                                            _L29045_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest2897229041_
                                     _hd2896229009_
                                     _hd2895928999_))))))
                    (_loop2896729021_ _target2896429015_ '()))
                  (_g2895028978_ _g2895128982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2895028978_ _g2895128982_))
                                            (_g2895028978_ _g2895128982_))))
                                    (_g2895028978_ _g2895128982_))))
                            (_g2895028978_ _g2895128982_))))
                    (_g2895028978_ _g2895128982_)))))
        (_g2894929077_ _$stx28946_)))))
