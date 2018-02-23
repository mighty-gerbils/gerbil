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
    (lambda _$args27711_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args27711_)))
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
    (lambda _$args27707_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args27707_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27704_)
      (if (gx#identifier? _stx27704_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27704_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27701_)
      (if (gx#identifier? _stx27701_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27701_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx27715_)
      (let* ((_g2772127780_
              (lambda (_g2772227776_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2772227776_)))
             (_g2772027835_
              (lambda (_g2772227784_)
                (if (gx#stx-pair? _g2772227784_)
                    (let ((_e2776627787_ (gx#syntax-e _g2772227784_)))
                      (let ((_hd2776727791_ (##car _e2776627787_))
                            (_tl2776827794_ (##cdr _e2776627787_)))
                        (if (gx#stx-pair? _tl2776827794_)
                            (let ((_e2776927797_ (gx#syntax-e _tl2776827794_)))
                              (let ((_hd2777027801_ (##car _e2776927797_))
                                    (_tl2777127804_ (##cdr _e2776927797_)))
                                (if (gx#stx-pair? _tl2777127804_)
                                    (let ((_e2777227807_
                                           (gx#syntax-e _tl2777127804_)))
                                      (let ((_hd2777327811_
                                             (##car _e2777227807_))
                                            (_tl2777427814_
                                             (##cdr _e2777227807_)))
                                        (if (gx#stx-null? _tl2777427814_)
                                            ((lambda (_L27817_ _L27819_)
                                               (if (gx#identifier? _L27819_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27819_
                                                               (cons _L27817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2772127780_
                                                    _g2772227784_)))
                                             _hd2777327811_
                                             _hd2777027801_)
                                            (_g2772127780_ _g2772227784_))))
                                    (_g2772127780_ _g2772227784_))))
                            (_g2772127780_ _g2772227784_))))
                    (_g2772127780_ _g2772227784_))))
             (_g2771927875_
              (lambda (_g2772227839_)
                (if (gx#stx-pair? _g2772227839_)
                    (let ((_e2775827842_ (gx#syntax-e _g2772227839_)))
                      (let ((_hd2775927846_ (##car _e2775827842_))
                            (_tl2776027849_ (##cdr _e2775827842_)))
                        (if (gx#stx-pair? _tl2776027849_)
                            (let ((_e2776127852_ (gx#syntax-e _tl2776027849_)))
                              (let ((_hd2776227856_ (##car _e2776127852_))
                                    (_tl2776327859_ (##cdr _e2776127852_)))
                                ((lambda (_L27862_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27862_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27862_)
                                        _stx27715_)
                                       (_g2772027835_ _g2772227839_)))
                                 _hd2776227856_)))
                            (_g2772027835_ _g2772227839_))))
                    (_g2772027835_ _g2772227839_))))
             (_g2771828016_
              (lambda (_g2772227879_)
                (if (gx#stx-pair? _g2772227879_)
                    (let ((_e2773627882_ (gx#syntax-e _g2772227879_)))
                      (let ((_hd2773727886_ (##car _e2773627882_))
                            (_tl2773827889_ (##cdr _e2773627882_)))
                        (if (gx#stx-pair? _tl2773827889_)
                            (let ((_e2773927892_ (gx#syntax-e _tl2773827889_)))
                              (let ((_hd2774027896_ (##car _e2773927892_))
                                    (_tl2774127899_ (##cdr _e2773927892_)))
                                (if (gx#stx-pair? _hd2774027896_)
                                    (let ((_e2774227902_
                                           (gx#syntax-e _hd2774027896_)))
                                      (let ((_hd2774327906_
                                             (##car _e2774227902_))
                                            (_tl2774427909_
                                             (##cdr _e2774227902_)))
                                        (if (gx#stx-pair/null? _tl2774427909_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2774427909_)
                                                      '0)
                                                (let ((_g31766_
                                                       (gx#syntax-split-splice
                                                        _tl2774427909_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31767_
                                                           (values-count
                                                            _g31766_)))
                                                      (if (not (fx= _g31767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2774527912_
                                                           (values-ref
                                                            _g31766_
                                                            0))
                                                          (_tl2774727915_
                                                           (values-ref
                                                            _g31766_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2774727915_)
                                                          (letrec ((_loop2774827918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2774627922_ _arg2775227925_)
                              (if (gx#stx-pair? _hd2774627922_)
                                  (let ((_e2774927928_
                                         (gx#syntax-e _hd2774627922_)))
                                    (let ((_lp-hd2775027932_
                                           (##car _e2774927928_))
                                          (_lp-tl2775127935_
                                           (##cdr _e2774927928_)))
                                      (_loop2774827918_
                                       _lp-tl2775127935_
                                       (cons _lp-hd2775027932_
                                             _arg2775227925_))))
                                  (let ((_arg2775327938_
                                         (reverse _arg2775227925_)))
                                    (if (gx#stx-pair? _tl2774127899_)
                                        (let ((_e2775427942_
                                               (gx#syntax-e _tl2774127899_)))
                                          (let ((_hd2775527946_
                                                 (##car _e2775427942_))
                                                (_tl2775627949_
                                                 (##cdr _e2775427942_)))
                                            (if (gx#stx-null? _tl2775627949_)
                                                ((lambda (_L27952_
                                                          _L27954_
                                                          _L27955_)
                                                   (if (gx#identifier?
                                                        _L27955_)
                                                       (let* ((_g2797727985_
                                                               (lambda (_g2797827981_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2797827981_)))
                      (_g2797628012_
                       (lambda (_g2797827989_)
                         ((lambda (_L27992_)
                            (let ()
                              (cons _L27992_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2800328006_
                                                      _g2800428009_)
                                               (cons _g2800328006_
                                                     _g2800428009_))
                                             (cons _L27952_ '())
                                             _L27954_)))))
                          _g2797827989_))))
                 (_g2797628012_
                  (gx#stx-identifier _L27955_ _L27955_ '"-set!")))
               (_g2771927875_ _g2772227879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2775527946_
                                                 _arg2775327938_
                                                 _hd2774327906_)
                                                (_g2771927875_
                                                 _g2772227879_))))
                                        (_g2771927875_ _g2772227879_)))))))
                    (_loop2774827918_ _target2774527912_ '()))
                  (_g2771927875_ _g2772227879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2771927875_ _g2772227879_))
                                            (_g2771927875_ _g2772227879_))))
                                    (_g2771927875_ _g2772227879_))))
                            (_g2771927875_ _g2772227879_))))
                    (_g2771927875_ _g2772227879_))))
             (_g2771728068_
              (lambda (_g2772228020_)
                (if (gx#stx-pair? _g2772228020_)
                    (let ((_e2772428023_ (gx#syntax-e _g2772228020_)))
                      (let ((_hd2772528027_ (##car _e2772428023_))
                            (_tl2772628030_ (##cdr _e2772428023_)))
                        (if (gx#stx-pair? _tl2772628030_)
                            (let ((_e2772728033_ (gx#syntax-e _tl2772628030_)))
                              (let ((_hd2772828037_ (##car _e2772728033_))
                                    (_tl2772928040_ (##cdr _e2772728033_)))
                                (if (gx#stx-pair? _hd2772828037_)
                                    (let ((_e2773028043_
                                           (gx#syntax-e _hd2772828037_)))
                                      (let ((_hd2773128047_
                                             (##car _e2773028043_))
                                            (_tl2773228050_
                                             (##cdr _e2773028043_)))
                                        ((lambda (_L28053_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L28053_)
                                                _stx27715_)
                                               (_g2771828016_ _g2772228020_)))
                                         _hd2773128047_)))
                                    (_g2771828016_ _g2772228020_))))
                            (_g2771828016_ _g2772228020_))))
                    (_g2771828016_ _g2772228020_)))))
        (_g2771728068_ _stx27715_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx28073_)
      (let* ((_g2807628100_
              (lambda (_g2807728096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2807728096_)))
             (_g2807528278_
              (lambda (_g2807728104_)
                (if (gx#stx-pair? _g2807728104_)
                    (let ((_e2808028107_ (gx#syntax-e _g2807728104_)))
                      (let ((_hd2808128111_ (##car _e2808028107_))
                            (_tl2808228114_ (##cdr _e2808028107_)))
                        (if (gx#stx-pair/null? _tl2808228114_)
                            (if (fx>= (gx#stx-length _tl2808228114_) '1)
                                (let ((_g31768_
                                       (gx#syntax-split-splice
                                        _tl2808228114_
                                        '1)))
                                  (begin
                                    (let ((_g31769_ (values-count _g31768_)))
                                      (if (not (fx= _g31769_ 2))
                                          (error "Context expects 2 values"
                                                 _g31769_)))
                                    (let ((_target2808328117_
                                           (values-ref _g31768_ 0))
                                          (_tl2808528120_
                                           (values-ref _g31768_ 1)))
                                      (if (gx#stx-pair? _tl2808528120_)
                                          (let ((_e2809228123_
                                                 (gx#syntax-e _tl2808528120_)))
                                            (let ((_hd2809328127_
                                                   (##car _e2809228123_))
                                                  (_tl2809428130_
                                                   (##cdr _e2809228123_)))
                                              (if (gx#stx-null? _tl2809428130_)
                                                  (letrec ((_loop2808628133_
                                                            (lambda (_hd2808428137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2809028140_)
                      (if (gx#stx-pair? _hd2808428137_)
                          (let ((_e2808728143_ (gx#syntax-e _hd2808428137_)))
                            (let ((_lp-hd2808828147_ (##car _e2808728143_))
                                  (_lp-tl2808928150_ (##cdr _e2808728143_)))
                              (_loop2808628133_
                               _lp-tl2808928150_
                               (cons _lp-hd2808828147_ _tgt2809028140_))))
                          (let ((_tgt2809128153_ (reverse _tgt2809028140_)))
                            ((lambda (_L28157_ _L28159_)
                               (let* ((_g2817728194_
                                       (lambda (_g2817828190_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2817828190_)))
                                      (_g2817628266_
                                       (lambda (_g2817828198_)
                                         (if (gx#stx-pair/null? _g2817828198_)
                                             (if (fx>= (gx#stx-length
                                                        _g2817828198_)
                                                       '0)
                                                 (let ((_g31770_
                                                        (gx#syntax-split-splice
                                                         _g2817828198_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31771_
                                                            (values-count
                                                             _g31770_)))
                                                       (if (not (fx= _g31771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2818028201_
                                                            (values-ref
                                                             _g31770_
                                                             0))
                                                           (_tl2818228204_
                                                            (values-ref
                                                             _g31770_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2818228204_)
                                                           (letrec ((_loop2818328207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2818128211_ _$e2818728214_)
                               (if (gx#stx-pair? _hd2818128211_)
                                   (let ((_e2818428217_
                                          (gx#syntax-e _hd2818128211_)))
                                     (let ((_lp-hd2818528221_
                                            (##car _e2818428217_))
                                           (_lp-tl2818628224_
                                            (##cdr _e2818428217_)))
                                       (_loop2818328207_
                                        _lp-tl2818628224_
                                        (cons _lp-hd2818528221_
                                              _$e2818728214_))))
                                   (let ((_$e2818828227_
                                          (reverse _$e2818728214_)))
                                     ((lambda (_L28231_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2824628252_ _g2824728255_)
                                     (cons _g2824628252_ _g2824728255_))
                                   '()
                                   _L28231_))
                          (cons _L28157_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L28231_ _L28159_)
                (foldr (lambda (_g2824828258_ _g2824928261_ _g2825028263_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2824928261_
                                           (cons _g2824828258_ '())))
                               _g2825028263_))
                       '()
                       _L28231_
                       _L28159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2818828227_))))))
                     (_loop2818328207_ _target2818028201_ '()))
                   (_g2817728194_ _g2817828198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2817728194_ _g2817828198_))
                                             (_g2817728194_ _g2817828198_)))))
                                 (_g2817628266_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2826928272_
                                                     _g2827028275_)
                                              (cons _g2826928272_
                                                    _g2827028275_))
                                            '()
                                            _L28159_))))))
                             _hd2809328127_
                             _tgt2809128153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2808628133_
                                                     _target2808328117_
                                                     '()))
                                                  (_g2807628100_
                                                   _g2807728104_))))
                                          (_g2807628100_ _g2807728104_)))))
                                (_g2807628100_ _g2807728104_))
                            (_g2807628100_ _g2807728104_))))
                    (_g2807628100_ _g2807728104_)))))
        (_g2807528278_ _stx28073_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx28284_)
      (let* ((_g2828828346_
              (lambda (_g2828928342_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2828928342_)))
             (_g2828728623_
              (lambda (_g2828928350_)
                (if (gx#stx-pair? _g2828928350_)
                    (let ((_e2830928353_ (gx#syntax-e _g2828928350_)))
                      (let ((_hd2831028357_ (##car _e2830928353_))
                            (_tl2831128360_ (##cdr _e2830928353_)))
                        (if (gx#stx-pair? _tl2831128360_)
                            (let ((_e2831228363_ (gx#syntax-e _tl2831128360_)))
                              (let ((_hd2831328367_ (##car _e2831228363_))
                                    (_tl2831428370_ (##cdr _e2831228363_)))
                                (if (gx#stx-pair/null? _hd2831328367_)
                                    (if (fx>= (gx#stx-length _hd2831328367_)
                                              '0)
                                        (let ((_g31772_
                                               (gx#syntax-split-splice
                                                _hd2831328367_
                                                '0)))
                                          (begin
                                            (let ((_g31773_
                                                   (values-count _g31772_)))
                                              (if (not (fx= _g31773_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31773_)))
                                            (let ((_target2831528373_
                                                   (values-ref _g31772_ 0))
                                                  (_tl2831728376_
                                                   (values-ref _g31772_ 1)))
                                              (if (gx#stx-null? _tl2831728376_)
                                                  (letrec ((_loop2831828379_
                                                            (lambda (_hd2831628383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2832228386_
                             _param2832328388_)
                      (if (gx#stx-pair? _hd2831628383_)
                          (let ((_e2831928391_ (gx#syntax-e _hd2831628383_)))
                            (let ((_lp-hd2832028395_ (##car _e2831928391_))
                                  (_lp-tl2832128398_ (##cdr _e2831928391_)))
                              (if (gx#stx-pair? _lp-hd2832028395_)
                                  (let ((_e2832628401_
                                         (gx#syntax-e _lp-hd2832028395_)))
                                    (let ((_hd2832728405_
                                           (##car _e2832628401_))
                                          (_tl2832828408_
                                           (##cdr _e2832628401_)))
                                      (if (gx#stx-pair? _tl2832828408_)
                                          (let ((_e2832928411_
                                                 (gx#syntax-e _tl2832828408_)))
                                            (let ((_hd2833028415_
                                                   (##car _e2832928411_))
                                                  (_tl2833128418_
                                                   (##cdr _e2832928411_)))
                                              (if (gx#stx-null? _tl2833128418_)
                                                  (_loop2831828379_
                                                   _lp-tl2832128398_
                                                   (cons _hd2833028415_
                                                         _expr2832228386_)
                                                   (cons _hd2832728405_
                                                         _param2832328388_))
                                                  (_g2828828346_
                                                   _g2828928350_))))
                                          (_g2828828346_ _g2828928350_))))
                                  (_g2828828346_ _g2828928350_))))
                          (let ((_expr2832428421_ (reverse _expr2832228386_))
                                (_param2832528424_
                                 (reverse _param2832328388_)))
                            (if (gx#stx-pair/null? _tl2831428370_)
                                (if (fx>= (gx#stx-length _tl2831428370_) '0)
                                    (let ((_g31774_
                                           (gx#syntax-split-splice
                                            _tl2831428370_
                                            '0)))
                                      (begin
                                        (let ((_g31775_
                                               (values-count _g31774_)))
                                          (if (not (fx= _g31775_ 2))
                                              (error "Context expects 2 values"
                                                     _g31775_)))
                                        (let ((_target2833228427_
                                               (values-ref _g31774_ 0))
                                              (_tl2833428430_
                                               (values-ref _g31774_ 1)))
                                          (if (gx#stx-null? _tl2833428430_)
                                              (letrec ((_loop2833528433_
                                                        (lambda (_hd2833328437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2833928440_)
                  (if (gx#stx-pair? _hd2833328437_)
                      (let ((_e2833628443_ (gx#syntax-e _hd2833328437_)))
                        (let ((_lp-hd2833728447_ (##car _e2833628443_))
                              (_lp-tl2833828450_ (##cdr _e2833628443_)))
                          (_loop2833528433_
                           _lp-tl2833828450_
                           (cons _lp-hd2833728447_ _body2833928440_))))
                      (let ((_body2834028453_ (reverse _body2833928440_)))
                        ((lambda (_L28457_ _L28459_ _L28460_)
                           (let* ((_g2848328491_
                                   (lambda (_g2848428487_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2848428487_)))
                                  (_g2848228611_
                                   (lambda (_g2848428495_)
                                     ((lambda (_L28498_)
                                        (let ()
                                          (let* ((_g2851028527_
                                                  (lambda (_g2851128523_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2851128523_)))
                                                 (_g2850928591_
                                                  (lambda (_g2851128531_)
                                                    (if (gx#stx-pair/null?
                                                         _g2851128531_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2851128531_)
                          '0)
                    (let ((_g31776_ (gx#syntax-split-splice _g2851128531_ '0)))
                      (begin
                        (let ((_g31777_ (values-count _g31776_)))
                          (if (not (fx= _g31777_ 2))
                              (error "Context expects 2 values" _g31777_)))
                        (let ((_target2851328534_ (values-ref _g31776_ 0))
                              (_tl2851528537_ (values-ref _g31776_ 1)))
                          (if (gx#stx-null? _tl2851528537_)
                              (letrec ((_loop2851628540_
                                        (lambda (_hd2851428544_
                                                 _arg2852028547_)
                                          (if (gx#stx-pair? _hd2851428544_)
                                              (let ((_e2851728550_
                                                     (gx#syntax-e
                                                      _hd2851428544_)))
                                                (let ((_lp-hd2851828554_
                                                       (##car _e2851728550_))
                                                      (_lp-tl2851928557_
                                                       (##cdr _e2851728550_)))
                                                  (_loop2851628540_
                                                   _lp-tl2851928557_
                                                   (cons _lp-hd2851828554_
                                                         _arg2852028547_))))
                                              (let ((_arg2852128560_
                                                     (reverse _arg2852028547_)))
                                                ((lambda (_L28564_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2858228585_ _g2858328588_)
                                      (cons _g2858228585_ _g2858328588_))
                                    '()
                                    _L28564_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2852128560_))))))
                                (_loop2851628540_ _target2851328534_ '()))
                              (_g2851028527_ _g2851128531_)))))
                    (_g2851028527_ _g2851128531_))
                (_g2851028527_ _g2851128531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2850928591_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2859428597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2859528600_)
                        (cons _g2859428597_ _g2859528600_))
                      '()
                      _L28460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2860228605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2860328608_)
                        (cons _g2860228605_ _g2860328608_))
                      '()
                      _L28459_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2848428495_))))
                             (_g2848228611_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2861428617_
                                                             _g2861528620_)
                                                      (cons _g2861428617_
                                                            _g2861528620_))
                                                    '()
                                                    _L28457_))))
                               (gx#stx-source _stx28284_)))))
                         _body2834028453_
                         _expr2832428421_
                         _param2832528424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2833528433_
                                                 _target2833228427_
                                                 '()))
                                              (_g2828828346_ _g2828928350_)))))
                                    (_g2828828346_ _g2828928350_))
                                (_g2828828346_ _g2828928350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2831828379_
                                                     _target2831528373_
                                                     '()
                                                     '()))
                                                  (_g2828828346_
                                                   _g2828928350_)))))
                                        (_g2828828346_ _g2828928350_))
                                    (_g2828828346_ _g2828928350_))))
                            (_g2828828346_ _g2828928350_))))
                    (_g2828828346_ _g2828928350_))))
             (_g2828628705_
              (lambda (_g2828928627_)
                (if (gx#stx-pair? _g2828928627_)
                    (let ((_e2829128630_ (gx#syntax-e _g2828928627_)))
                      (let ((_hd2829228634_ (##car _e2829128630_))
                            (_tl2829328637_ (##cdr _e2829128630_)))
                        (if (gx#stx-pair? _tl2829328637_)
                            (let ((_e2829428640_ (gx#syntax-e _tl2829328637_)))
                              (let ((_hd2829528644_ (##car _e2829428640_))
                                    (_tl2829628647_ (##cdr _e2829428640_)))
                                (if (gx#stx-null? _hd2829528644_)
                                    (if (gx#stx-pair/null? _tl2829628647_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2829628647_)
                                                  '0)
                                            (let ((_g31778_
                                                   (gx#syntax-split-splice
                                                    _tl2829628647_
                                                    '0)))
                                              (begin
                                                (let ((_g31779_
                                                       (values-count
                                                        _g31778_)))
                                                  (if (not (fx= _g31779_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31779_)))
                                                (let ((_target2829728650_
                                                       (values-ref _g31778_ 0))
                                                      (_tl2829928653_
                                                       (values-ref
                                                        _g31778_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2829928653_)
                                                      (letrec ((_loop2830028656_
                                                                (lambda (_hd2829828660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2830428663_)
                          (if (gx#stx-pair? _hd2829828660_)
                              (let ((_e2830128666_
                                     (gx#syntax-e _hd2829828660_)))
                                (let ((_lp-hd2830228670_ (##car _e2830128666_))
                                      (_lp-tl2830328673_
                                       (##cdr _e2830128666_)))
                                  (_loop2830028656_
                                   _lp-tl2830328673_
                                   (cons _lp-hd2830228670_ _body2830428663_))))
                              (let ((_body2830528676_
                                     (reverse _body2830428663_)))
                                ((lambda (_L28680_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2869628699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2869728702_)
                  (cons _g2869628699_ _g2869728702_))
                '()
                _L28680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2830528676_))))))
                (_loop2830028656_ _target2829728650_ '()))
              (_g2828728623_ _g2828928627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2828728623_ _g2828928627_))
                                        (_g2828728623_ _g2828928627_))
                                    (_g2828728623_ _g2828928627_))))
                            (_g2828728623_ _g2828928627_))))
                    (_g2828728623_ _g2828928627_)))))
        (_g2828628705_ _stx28284_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28713_)
      (let* ((_g2871728741_
              (lambda (_g2871828737_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871828737_)))
             (_g2871628826_
              (lambda (_g2871828745_)
                (if (gx#stx-pair? _g2871828745_)
                    (let ((_e2872128748_ (gx#syntax-e _g2871828745_)))
                      (let ((_hd2872228752_ (##car _e2872128748_))
                            (_tl2872328755_ (##cdr _e2872128748_)))
                        (if (gx#stx-pair? _tl2872328755_)
                            (let ((_e2872428758_ (gx#syntax-e _tl2872328755_)))
                              (let ((_hd2872528762_ (##car _e2872428758_))
                                    (_tl2872628765_ (##cdr _e2872428758_)))
                                (if (gx#stx-pair/null? _tl2872628765_)
                                    (if (fx>= (gx#stx-length _tl2872628765_)
                                              '0)
                                        (let ((_g31780_
                                               (gx#syntax-split-splice
                                                _tl2872628765_
                                                '0)))
                                          (begin
                                            (let ((_g31781_
                                                   (values-count _g31780_)))
                                              (if (not (fx= _g31781_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31781_)))
                                            (let ((_target2872728768_
                                                   (values-ref _g31780_ 0))
                                                  (_tl2872928771_
                                                   (values-ref _g31780_ 1)))
                                              (if (gx#stx-null? _tl2872928771_)
                                                  (letrec ((_loop2873028774_
                                                            (lambda (_hd2872828778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2873428781_)
                      (if (gx#stx-pair? _hd2872828778_)
                          (let ((_e2873128784_ (gx#syntax-e _hd2872828778_)))
                            (let ((_lp-hd2873228788_ (##car _e2873128784_))
                                  (_lp-tl2873328791_ (##cdr _e2873128784_)))
                              (_loop2873028774_
                               _lp-tl2873328791_
                               (cons _lp-hd2873228788_ _body2873428781_))))
                          (let ((_body2873528794_ (reverse _body2873428781_)))
                            ((lambda (_L28798_ _L28800_)
                               (if (gx#identifier? _L28800_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28800_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2881728820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2881828823_)
                              (cons _g2881728820_ _g2881828823_))
                            '()
                            _L28798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2871728741_ _g2871828745_)))
                             _body2873528794_
                             _hd2872528762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2873028774_
                                                     _target2872728768_
                                                     '()))
                                                  (_g2871728741_
                                                   _g2871828745_)))))
                                        (_g2871728741_ _g2871828745_))
                                    (_g2871728741_ _g2871828745_))))
                            (_g2871728741_ _g2871828745_))))
                    (_g2871728741_ _g2871828745_)))))
        (_g2871628826_ _$stx28713_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28831_)
      (let* ((_g2883528859_
              (lambda (_g2883628855_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2883628855_)))
             (_g2883428944_
              (lambda (_g2883628863_)
                (if (gx#stx-pair? _g2883628863_)
                    (let ((_e2883928866_ (gx#syntax-e _g2883628863_)))
                      (let ((_hd2884028870_ (##car _e2883928866_))
                            (_tl2884128873_ (##cdr _e2883928866_)))
                        (if (gx#stx-pair? _tl2884128873_)
                            (let ((_e2884228876_ (gx#syntax-e _tl2884128873_)))
                              (let ((_hd2884328880_ (##car _e2884228876_))
                                    (_tl2884428883_ (##cdr _e2884228876_)))
                                (if (gx#stx-pair/null? _tl2884428883_)
                                    (if (fx>= (gx#stx-length _tl2884428883_)
                                              '0)
                                        (let ((_g31782_
                                               (gx#syntax-split-splice
                                                _tl2884428883_
                                                '0)))
                                          (begin
                                            (let ((_g31783_
                                                   (values-count _g31782_)))
                                              (if (not (fx= _g31783_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31783_)))
                                            (let ((_target2884528886_
                                                   (values-ref _g31782_ 0))
                                                  (_tl2884728889_
                                                   (values-ref _g31782_ 1)))
                                              (if (gx#stx-null? _tl2884728889_)
                                                  (letrec ((_loop2884828892_
                                                            (lambda (_hd2884628896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2885228899_)
                      (if (gx#stx-pair? _hd2884628896_)
                          (let ((_e2884928902_ (gx#syntax-e _hd2884628896_)))
                            (let ((_lp-hd2885028906_ (##car _e2884928902_))
                                  (_lp-tl2885128909_ (##cdr _e2884928902_)))
                              (_loop2884828892_
                               _lp-tl2885128909_
                               (cons _lp-hd2885028906_ _body2885228899_))))
                          (let ((_body2885328912_ (reverse _body2885228899_)))
                            ((lambda (_L28916_ _L28918_)
                               (if (gx#identifier? _L28918_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28918_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2893528938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2893628941_)
                              (cons _g2893528938_ _g2893628941_))
                            '()
                            _L28916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2883528859_ _g2883628863_)))
                             _body2885328912_
                             _hd2884328880_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2884828892_
                                                     _target2884528886_
                                                     '()))
                                                  (_g2883528859_
                                                   _g2883628863_)))))
                                        (_g2883528859_ _g2883628863_))
                                    (_g2883528859_ _g2883628863_))))
                            (_g2883528859_ _g2883628863_))))
                    (_g2883528859_ _g2883628863_)))))
        (_g2883428944_ _$stx28831_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28949_)
      (let* ((_g2895328981_
              (lambda (_g2895428977_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2895428977_)))
             (_g2895229080_
              (lambda (_g2895428985_)
                (if (gx#stx-pair? _g2895428985_)
                    (let ((_e2895828988_ (gx#syntax-e _g2895428985_)))
                      (let ((_hd2895928992_ (##car _e2895828988_))
                            (_tl2896028995_ (##cdr _e2895828988_)))
                        (if (gx#stx-pair? _tl2896028995_)
                            (let ((_e2896128998_ (gx#syntax-e _tl2896028995_)))
                              (let ((_hd2896229002_ (##car _e2896128998_))
                                    (_tl2896329005_ (##cdr _e2896128998_)))
                                (if (gx#stx-pair? _tl2896329005_)
                                    (let ((_e2896429008_
                                           (gx#syntax-e _tl2896329005_)))
                                      (let ((_hd2896529012_
                                             (##car _e2896429008_))
                                            (_tl2896629015_
                                             (##cdr _e2896429008_)))
                                        (if (gx#stx-pair/null? _tl2896629015_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2896629015_)
                                                      '0)
                                                (let ((_g31784_
                                                       (gx#syntax-split-splice
                                                        _tl2896629015_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31785_
                                                           (values-count
                                                            _g31784_)))
                                                      (if (not (fx= _g31785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2896729018_
                                                           (values-ref
                                                            _g31784_
                                                            0))
                                                          (_tl2896929021_
                                                           (values-ref
                                                            _g31784_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2896929021_)
                                                          (letrec ((_loop2897029024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2896829028_ _rest2897429031_)
                              (if (gx#stx-pair? _hd2896829028_)
                                  (let ((_e2897129034_
                                         (gx#syntax-e _hd2896829028_)))
                                    (let ((_lp-hd2897229038_
                                           (##car _e2897129034_))
                                          (_lp-tl2897329041_
                                           (##cdr _e2897129034_)))
                                      (_loop2897029024_
                                       _lp-tl2897329041_
                                       (cons _lp-hd2897229038_
                                             _rest2897429031_))))
                                  (let ((_rest2897529044_
                                         (reverse _rest2897429031_)))
                                    ((lambda (_L29048_ _L29050_ _L29051_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L29051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L29050_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2907129074_
                                                     _g2907229077_)
                                              (cons _g2907129074_
                                                    _g2907229077_))
                                            '()
                                            _L29048_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest2897529044_
                                     _hd2896529012_
                                     _hd2896229002_))))))
                    (_loop2897029024_ _target2896729018_ '()))
                  (_g2895328981_ _g2895428985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2895328981_ _g2895428985_))
                                            (_g2895328981_ _g2895428985_))))
                                    (_g2895328981_ _g2895428985_))))
                            (_g2895328981_ _g2895428985_))))
                    (_g2895328981_ _g2895428985_)))))
        (_g2895229080_ _$stx28949_)))))
