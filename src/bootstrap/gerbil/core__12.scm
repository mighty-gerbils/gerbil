(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setq-macro|
    (lambda _$args26818_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26818_)))
  (define |gerbil/core::<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setf-macro|
    (lambda _$args26814_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26814_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26811_)
      (if (gx#identifier? _stx26811_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26811_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26808_)
      (if (gx#identifier? _stx26808_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26808_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26822_)
      (let ((_g2682826887_
             (lambda (_g2682926883_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2682926883_))))
        (let ((_g2682726942_
               (lambda (_g2682926891_)
                 (if (gx#stx-pair? _g2682926891_)
                     (let ((_e2687326894_ (gx#syntax-e _g2682926891_)))
                       (let ((_hd2687426898_ (##car _e2687326894_))
                             (_tl2687526901_ (##cdr _e2687326894_)))
                         (if (gx#stx-pair? _tl2687526901_)
                             (let ((_e2687626904_
                                    (gx#syntax-e _tl2687526901_)))
                               (let ((_hd2687726908_ (##car _e2687626904_))
                                     (_tl2687826911_ (##cdr _e2687626904_)))
                                 (if (gx#stx-pair? _tl2687826911_)
                                     (let ((_e2687926914_
                                            (gx#syntax-e _tl2687826911_)))
                                       (let ((_hd2688026918_
                                              (##car _e2687926914_))
                                             (_tl2688126921_
                                              (##cdr _e2687926914_)))
                                         (if (gx#stx-null? _tl2688126921_)
                                             ((lambda (_L26924_ _L26926_)
                                                (if (gx#identifier? _L26926_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26926_
                                                                (cons _L26924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2682826887_
                                                     _g2682926891_)))
                                              _hd2688026918_
                                              _hd2687726908_)
                                             (_g2682826887_ _g2682926891_))))
                                     (_g2682826887_ _g2682926891_))))
                             (_g2682826887_ _g2682926891_))))
                     (_g2682826887_ _g2682926891_)))))
          (let ((_g2682626982_
                 (lambda (_g2682926946_)
                   (if (gx#stx-pair? _g2682926946_)
                       (let ((_e2686526949_ (gx#syntax-e _g2682926946_)))
                         (let ((_hd2686626953_ (##car _e2686526949_))
                               (_tl2686726956_ (##cdr _e2686526949_)))
                           (if (gx#stx-pair? _tl2686726956_)
                               (let ((_e2686826959_
                                      (gx#syntax-e _tl2686726956_)))
                                 (let ((_hd2686926963_ (##car _e2686826959_))
                                       (_tl2687026966_ (##cdr _e2686826959_)))
                                   ((lambda (_L26969_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26969_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26969_)
                                           _stx26822_)
                                          (_g2682726942_ _g2682926946_)))
                                    _hd2686926963_)))
                               (_g2682726942_ _g2682926946_))))
                       (_g2682726942_ _g2682926946_)))))
            (let ((_g2682527123_
                   (lambda (_g2682926986_)
                     (if (gx#stx-pair? _g2682926986_)
                         (let ((_e2684326989_ (gx#syntax-e _g2682926986_)))
                           (let ((_hd2684426993_ (##car _e2684326989_))
                                 (_tl2684526996_ (##cdr _e2684326989_)))
                             (if (gx#stx-pair? _tl2684526996_)
                                 (let ((_e2684626999_
                                        (gx#syntax-e _tl2684526996_)))
                                   (let ((_hd2684727003_ (##car _e2684626999_))
                                         (_tl2684827006_
                                          (##cdr _e2684626999_)))
                                     (if (gx#stx-pair? _hd2684727003_)
                                         (let ((_e2684927009_
                                                (gx#syntax-e _hd2684727003_)))
                                           (let ((_hd2685027013_
                                                  (##car _e2684927009_))
                                                 (_tl2685127016_
                                                  (##cdr _e2684927009_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2685127016_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2685127016_)
                                                           '0)
                                                     (let ((_g30407_
                                                            (gx#syntax-split-splice
                                                             _tl2685127016_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30408_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30407_)))
                   (if (not (fx= _g30408_ 2))
                       (error "Context expects 2 values" _g30408_)))
                 (let ((_target2685227019_ (values-ref _g30407_ 0))
                       (_tl2685427022_ (values-ref _g30407_ 1)))
                   (if (gx#stx-null? _tl2685427022_)
                       (letrec ((_loop2685527025_
                                 (lambda (_hd2685327029_ _arg2685927032_)
                                   (if (gx#stx-pair? _hd2685327029_)
                                       (let ((_e2685627035_
                                              (gx#syntax-e _hd2685327029_)))
                                         (let ((_lp-hd2685727039_
                                                (##car _e2685627035_))
                                               (_lp-tl2685827042_
                                                (##cdr _e2685627035_)))
                                           (_loop2685527025_
                                            _lp-tl2685827042_
                                            (cons _lp-hd2685727039_
                                                  _arg2685927032_))))
                                       (let ((_arg2686027045_
                                              (reverse _arg2685927032_)))
                                         (if (gx#stx-pair? _tl2684827006_)
                                             (let ((_e2686127049_
                                                    (gx#syntax-e
                                                     _tl2684827006_)))
                                               (let ((_hd2686227053_
                                                      (##car _e2686127049_))
                                                     (_tl2686327056_
                                                      (##cdr _e2686127049_)))
                                                 (if (gx#stx-null?
                                                      _tl2686327056_)
                                                     ((lambda (_L27059_
                                                               _L27061_
                                                               _L27062_)
                                                        (if (gx#identifier?
                                                             _L27062_)
                                                            (let ((_g2708427092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2708527088_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2708527088_))))
                      (let ((_g2708327119_
                             (lambda (_g2708527096_)
                               ((lambda (_L27099_)
                                  (let ()
                                    (cons _L27099_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2711027113_
                                                            _g2711127116_)
                                                     (cons _g2711027113_
                                                           _g2711127116_))
                                                   (cons _L27059_ '())
                                                   _L27061_)))))
                                _g2708527096_))))
                        (_g2708327119_
                         (gx#stx-identifier _L27062_ _L27062_ '"-set!"))))
                    (_g2682626982_ _g2682926986_)))
              _hd2686227053_
              _arg2686027045_
              _hd2685027013_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2682626982_
                                                      _g2682926986_))))
                                             (_g2682626982_
                                              _g2682926986_)))))))
                         (_loop2685527025_ _target2685227019_ '()))
                       (_g2682626982_ _g2682926986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2682626982_
                                                      _g2682926986_))
                                                 (_g2682626982_
                                                  _g2682926986_))))
                                         (_g2682626982_ _g2682926986_))))
                                 (_g2682626982_ _g2682926986_))))
                         (_g2682626982_ _g2682926986_)))))
              (let ((_g2682427175_
                     (lambda (_g2682927127_)
                       (if (gx#stx-pair? _g2682927127_)
                           (let ((_e2683127130_ (gx#syntax-e _g2682927127_)))
                             (let ((_hd2683227134_ (##car _e2683127130_))
                                   (_tl2683327137_ (##cdr _e2683127130_)))
                               (if (gx#stx-pair? _tl2683327137_)
                                   (let ((_e2683427140_
                                          (gx#syntax-e _tl2683327137_)))
                                     (let ((_hd2683527144_
                                            (##car _e2683427140_))
                                           (_tl2683627147_
                                            (##cdr _e2683427140_)))
                                       (if (gx#stx-pair? _hd2683527144_)
                                           (let ((_e2683727150_
                                                  (gx#syntax-e
                                                   _hd2683527144_)))
                                             (let ((_hd2683827154_
                                                    (##car _e2683727150_))
                                                   (_tl2683927157_
                                                    (##cdr _e2683727150_)))
                                               ((lambda (_L27160_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L27160_)
                                                       _stx26822_)
                                                      (_g2682527123_
                                                       _g2682927127_)))
                                                _hd2683827154_)))
                                           (_g2682527123_ _g2682927127_))))
                                   (_g2682527123_ _g2682927127_))))
                           (_g2682527123_ _g2682927127_)))))
                (_g2682427175_ _stx26822_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx27180_)
      (let ((_g2718327207_
             (lambda (_g2718427203_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2718427203_))))
        (let ((_g2718227385_
               (lambda (_g2718427211_)
                 (if (gx#stx-pair? _g2718427211_)
                     (let ((_e2718727214_ (gx#syntax-e _g2718427211_)))
                       (let ((_hd2718827218_ (##car _e2718727214_))
                             (_tl2718927221_ (##cdr _e2718727214_)))
                         (if (gx#stx-pair/null? _tl2718927221_)
                             (if (fx>= (gx#stx-length _tl2718927221_) '1)
                                 (let ((_g30409_
                                        (gx#syntax-split-splice
                                         _tl2718927221_
                                         '1)))
                                   (begin
                                     (let ((_g30410_ (values-count _g30409_)))
                                       (if (not (fx= _g30410_ 2))
                                           (error "Context expects 2 values"
                                                  _g30410_)))
                                     (let ((_target2719027224_
                                            (values-ref _g30409_ 0))
                                           (_tl2719227227_
                                            (values-ref _g30409_ 1)))
                                       (if (gx#stx-pair? _tl2719227227_)
                                           (let ((_e2719927230_
                                                  (gx#syntax-e
                                                   _tl2719227227_)))
                                             (let ((_hd2720027234_
                                                    (##car _e2719927230_))
                                                   (_tl2720127237_
                                                    (##cdr _e2719927230_)))
                                               (if (gx#stx-null?
                                                    _tl2720127237_)
                                                   (letrec ((_loop2719327240_
                                                             (lambda (_hd2719127244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2719727247_)
                       (if (gx#stx-pair? _hd2719127244_)
                           (let ((_e2719427250_ (gx#syntax-e _hd2719127244_)))
                             (let ((_lp-hd2719527254_ (##car _e2719427250_))
                                   (_lp-tl2719627257_ (##cdr _e2719427250_)))
                               (_loop2719327240_
                                _lp-tl2719627257_
                                (cons _lp-hd2719527254_ _tgt2719727247_))))
                           (let ((_tgt2719827260_ (reverse _tgt2719727247_)))
                             ((lambda (_L27264_ _L27266_)
                                (let ((_g2728427301_
                                       (lambda (_g2728527297_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2728527297_))))
                                  (let ((_g2728327373_
                                         (lambda (_g2728527305_)
                                           (if (gx#stx-pair/null?
                                                _g2728527305_)
                                               (if (fx>= (gx#stx-length
                                                          _g2728527305_)
                                                         '0)
                                                   (let ((_g30411_
                                                          (gx#syntax-split-splice
                                                           _g2728527305_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30412_
                                                              (values-count
                                                               _g30411_)))
                                                         (if (not (fx= _g30412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30412_)))
               (let ((_target2728727308_ (values-ref _g30411_ 0))
                     (_tl2728927311_ (values-ref _g30411_ 1)))
                 (if (gx#stx-null? _tl2728927311_)
                     (letrec ((_loop2729027314_
                               (lambda (_hd2728827318_ _$e2729427321_)
                                 (if (gx#stx-pair? _hd2728827318_)
                                     (let ((_e2729127324_
                                            (gx#syntax-e _hd2728827318_)))
                                       (let ((_lp-hd2729227328_
                                              (##car _e2729127324_))
                                             (_lp-tl2729327331_
                                              (##cdr _e2729127324_)))
                                         (_loop2729027314_
                                          _lp-tl2729327331_
                                          (cons _lp-hd2729227328_
                                                _$e2729427321_))))
                                     (let ((_$e2729527334_
                                            (reverse _$e2729427321_)))
                                       ((lambda (_L27338_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2735327359_ _g2735427362_)
                                       (cons _g2735327359_ _g2735427362_))
                                     '()
                                     _L27338_))
                            (cons _L27264_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L27338_ _L27266_)
                  (foldr (lambda (_g2735527365_ _g2735627368_ _g2735727370_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2735627368_
                                             (cons _g2735527365_ '())))
                                 _g2735727370_))
                         '()
                         _L27338_
                         _L27266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2729527334_))))))
                       (_loop2729027314_ _target2728727308_ '()))
                     (_g2728427301_ _g2728527305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2728427301_
                                                    _g2728527305_))
                                               (_g2728427301_
                                                _g2728527305_)))))
                                    (_g2728327373_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2737627379_
                                                        _g2737727382_)
                                                 (cons _g2737627379_
                                                       _g2737727382_))
                                               '()
                                               _L27266_)))))))
                              _hd2720027234_
                              _tgt2719827260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2719327240_
                                                      _target2719027224_
                                                      '()))
                                                   (_g2718327207_
                                                    _g2718427211_))))
                                           (_g2718327207_ _g2718427211_)))))
                                 (_g2718327207_ _g2718427211_))
                             (_g2718327207_ _g2718427211_))))
                     (_g2718327207_ _g2718427211_)))))
          (_g2718227385_ _stx27180_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx27391_)
      (let ((_g2739527453_
             (lambda (_g2739627449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739627449_))))
        (let ((_g2739427730_
               (lambda (_g2739627457_)
                 (if (gx#stx-pair? _g2739627457_)
                     (let ((_e2741627460_ (gx#syntax-e _g2739627457_)))
                       (let ((_hd2741727464_ (##car _e2741627460_))
                             (_tl2741827467_ (##cdr _e2741627460_)))
                         (if (gx#stx-pair? _tl2741827467_)
                             (let ((_e2741927470_
                                    (gx#syntax-e _tl2741827467_)))
                               (let ((_hd2742027474_ (##car _e2741927470_))
                                     (_tl2742127477_ (##cdr _e2741927470_)))
                                 (if (gx#stx-pair/null? _hd2742027474_)
                                     (if (fx>= (gx#stx-length _hd2742027474_)
                                               '0)
                                         (let ((_g30413_
                                                (gx#syntax-split-splice
                                                 _hd2742027474_
                                                 '0)))
                                           (begin
                                             (let ((_g30414_
                                                    (values-count _g30413_)))
                                               (if (not (fx= _g30414_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30414_)))
                                             (let ((_target2742227480_
                                                    (values-ref _g30413_ 0))
                                                   (_tl2742427483_
                                                    (values-ref _g30413_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2742427483_)
                                                   (letrec ((_loop2742527486_
                                                             (lambda (_hd2742327490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2742927493_
                              _param2743027495_)
                       (if (gx#stx-pair? _hd2742327490_)
                           (let ((_e2742627498_ (gx#syntax-e _hd2742327490_)))
                             (let ((_lp-hd2742727502_ (##car _e2742627498_))
                                   (_lp-tl2742827505_ (##cdr _e2742627498_)))
                               (if (gx#stx-pair? _lp-hd2742727502_)
                                   (let ((_e2743327508_
                                          (gx#syntax-e _lp-hd2742727502_)))
                                     (let ((_hd2743427512_
                                            (##car _e2743327508_))
                                           (_tl2743527515_
                                            (##cdr _e2743327508_)))
                                       (if (gx#stx-pair? _tl2743527515_)
                                           (let ((_e2743627518_
                                                  (gx#syntax-e
                                                   _tl2743527515_)))
                                             (let ((_hd2743727522_
                                                    (##car _e2743627518_))
                                                   (_tl2743827525_
                                                    (##cdr _e2743627518_)))
                                               (if (gx#stx-null?
                                                    _tl2743827525_)
                                                   (_loop2742527486_
                                                    _lp-tl2742827505_
                                                    (cons _hd2743727522_
                                                          _expr2742927493_)
                                                    (cons _hd2743427512_
                                                          _param2743027495_))
                                                   (_g2739527453_
                                                    _g2739627457_))))
                                           (_g2739527453_ _g2739627457_))))
                                   (_g2739527453_ _g2739627457_))))
                           (let ((_expr2743127528_ (reverse _expr2742927493_))
                                 (_param2743227531_
                                  (reverse _param2743027495_)))
                             (if (gx#stx-pair/null? _tl2742127477_)
                                 (if (fx>= (gx#stx-length _tl2742127477_) '0)
                                     (let ((_g30415_
                                            (gx#syntax-split-splice
                                             _tl2742127477_
                                             '0)))
                                       (begin
                                         (let ((_g30416_
                                                (values-count _g30415_)))
                                           (if (not (fx= _g30416_ 2))
                                               (error "Context expects 2 values"
                                                      _g30416_)))
                                         (let ((_target2743927534_
                                                (values-ref _g30415_ 0))
                                               (_tl2744127537_
                                                (values-ref _g30415_ 1)))
                                           (if (gx#stx-null? _tl2744127537_)
                                               (letrec ((_loop2744227540_
                                                         (lambda (_hd2744027544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2744627547_)
                   (if (gx#stx-pair? _hd2744027544_)
                       (let ((_e2744327550_ (gx#syntax-e _hd2744027544_)))
                         (let ((_lp-hd2744427554_ (##car _e2744327550_))
                               (_lp-tl2744527557_ (##cdr _e2744327550_)))
                           (_loop2744227540_
                            _lp-tl2744527557_
                            (cons _lp-hd2744427554_ _body2744627547_))))
                       (let ((_body2744727560_ (reverse _body2744627547_)))
                         ((lambda (_L27564_ _L27566_ _L27567_)
                            (let ((_g2759027598_
                                   (lambda (_g2759127594_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2759127594_))))
                              (let ((_g2758927718_
                                     (lambda (_g2759127602_)
                                       ((lambda (_L27605_)
                                          (let ()
                                            (let ((_g2761727634_
                                                   (lambda (_g2761827630_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2761827630_))))
                                              (let ((_g2761627698_
                                                     (lambda (_g2761827638_)
                                                       (if (gx#stx-pair/null?
                                                            _g2761827638_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2761827638_)
                             '0)
                       (let ((_g30417_
                              (gx#syntax-split-splice _g2761827638_ '0)))
                         (begin
                           (let ((_g30418_ (values-count _g30417_)))
                             (if (not (fx= _g30418_ 2))
                                 (error "Context expects 2 values" _g30418_)))
                           (let ((_target2762027641_ (values-ref _g30417_ 0))
                                 (_tl2762227644_ (values-ref _g30417_ 1)))
                             (if (gx#stx-null? _tl2762227644_)
                                 (letrec ((_loop2762327647_
                                           (lambda (_hd2762127651_
                                                    _arg2762727654_)
                                             (if (gx#stx-pair? _hd2762127651_)
                                                 (let ((_e2762427657_
                                                        (gx#syntax-e
                                                         _hd2762127651_)))
                                                   (let ((_lp-hd2762527661_
                                                          (##car _e2762427657_))
                                                         (_lp-tl2762627664_
                                                          (##cdr _e2762427657_)))
                                                     (_loop2762327647_
                                                      _lp-tl2762627664_
                                                      (cons _lp-hd2762527661_
                                                            _arg2762727654_))))
                                                 (let ((_arg2762827667_
                                                        (reverse _arg2762727654_)))
                                                   ((lambda (_L27671_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L27605_
                              (begin
                                '#!void
                                (foldr (lambda (_g2768927692_ _g2769027695_)
                                         (cons _g2768927692_ _g2769027695_))
                                       '()
                                       _L27671_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2762827667_))))))
                                   (_loop2762327647_ _target2762027641_ '()))
                                 (_g2761727634_ _g2761827638_)))))
                       (_g2761727634_ _g2761827638_))
                   (_g2761727634_ _g2761827638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2761627698_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2770127704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2770227707_)
                            (cons _g2770127704_ _g2770227707_))
                          '()
                          _L27567_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2770927712_ _g2771027715_)
                            (cons _g2770927712_ _g2771027715_))
                          '()
                          _L27566_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2759127602_))))
                                (_g2758927718_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2772127724_
                                                                _g2772227727_)
                                                         (cons _g2772127724_
                                                               _g2772227727_))
                                                       '()
                                                       _L27564_))))
                                  (gx#stx-source _stx27391_))))))
                          _body2744727560_
                          _expr2743127528_
                          _param2743227531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2744227540_
                                                  _target2743927534_
                                                  '()))
                                               (_g2739527453_
                                                _g2739627457_)))))
                                     (_g2739527453_ _g2739627457_))
                                 (_g2739527453_ _g2739627457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2742527486_
                                                      _target2742227480_
                                                      '()
                                                      '()))
                                                   (_g2739527453_
                                                    _g2739627457_)))))
                                         (_g2739527453_ _g2739627457_))
                                     (_g2739527453_ _g2739627457_))))
                             (_g2739527453_ _g2739627457_))))
                     (_g2739527453_ _g2739627457_)))))
          (let ((_g2739327812_
                 (lambda (_g2739627734_)
                   (if (gx#stx-pair? _g2739627734_)
                       (let ((_e2739827737_ (gx#syntax-e _g2739627734_)))
                         (let ((_hd2739927741_ (##car _e2739827737_))
                               (_tl2740027744_ (##cdr _e2739827737_)))
                           (if (gx#stx-pair? _tl2740027744_)
                               (let ((_e2740127747_
                                      (gx#syntax-e _tl2740027744_)))
                                 (let ((_hd2740227751_ (##car _e2740127747_))
                                       (_tl2740327754_ (##cdr _e2740127747_)))
                                   (if (gx#stx-null? _hd2740227751_)
                                       (if (gx#stx-pair/null? _tl2740327754_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2740327754_)
                                                     '0)
                                               (let ((_g30419_
                                                      (gx#syntax-split-splice
                                                       _tl2740327754_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30420_
                                                          (values-count
                                                           _g30419_)))
                                                     (if (not (fx= _g30420_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30420_)))
                                                   (let ((_target2740427757_
                                                          (values-ref
                                                           _g30419_
                                                           0))
                                                         (_tl2740627760_
                                                          (values-ref
                                                           _g30419_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2740627760_)
                                                         (letrec ((_loop2740727763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2740527767_ _body2741127770_)
                             (if (gx#stx-pair? _hd2740527767_)
                                 (let ((_e2740827773_
                                        (gx#syntax-e _hd2740527767_)))
                                   (let ((_lp-hd2740927777_
                                          (##car _e2740827773_))
                                         (_lp-tl2741027780_
                                          (##cdr _e2740827773_)))
                                     (_loop2740727763_
                                      _lp-tl2741027780_
                                      (cons _lp-hd2740927777_
                                            _body2741127770_))))
                                 (let ((_body2741227783_
                                        (reverse _body2741127770_)))
                                   ((lambda (_L27787_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2780327806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2780427809_)
                     (cons _g2780327806_ _g2780427809_))
                   '()
                   _L27787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2741227783_))))))
                   (_loop2740727763_ _target2740427757_ '()))
                 (_g2739427730_ _g2739627734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2739427730_ _g2739627734_))
                                           (_g2739427730_ _g2739627734_))
                                       (_g2739427730_ _g2739627734_))))
                               (_g2739427730_ _g2739627734_))))
                       (_g2739427730_ _g2739627734_)))))
            (_g2739327812_ _stx27391_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27820_)
      (let ((_g2782427848_
             (lambda (_g2782527844_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2782527844_))))
        (let ((_g2782327933_
               (lambda (_g2782527852_)
                 (if (gx#stx-pair? _g2782527852_)
                     (let ((_e2782827855_ (gx#syntax-e _g2782527852_)))
                       (let ((_hd2782927859_ (##car _e2782827855_))
                             (_tl2783027862_ (##cdr _e2782827855_)))
                         (if (gx#stx-pair? _tl2783027862_)
                             (let ((_e2783127865_
                                    (gx#syntax-e _tl2783027862_)))
                               (let ((_hd2783227869_ (##car _e2783127865_))
                                     (_tl2783327872_ (##cdr _e2783127865_)))
                                 (if (gx#stx-pair/null? _tl2783327872_)
                                     (if (fx>= (gx#stx-length _tl2783327872_)
                                               '0)
                                         (let ((_g30421_
                                                (gx#syntax-split-splice
                                                 _tl2783327872_
                                                 '0)))
                                           (begin
                                             (let ((_g30422_
                                                    (values-count _g30421_)))
                                               (if (not (fx= _g30422_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30422_)))
                                             (let ((_target2783427875_
                                                    (values-ref _g30421_ 0))
                                                   (_tl2783627878_
                                                    (values-ref _g30421_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2783627878_)
                                                   (letrec ((_loop2783727881_
                                                             (lambda (_hd2783527885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2784127888_)
                       (if (gx#stx-pair? _hd2783527885_)
                           (let ((_e2783827891_ (gx#syntax-e _hd2783527885_)))
                             (let ((_lp-hd2783927895_ (##car _e2783827891_))
                                   (_lp-tl2784027898_ (##cdr _e2783827891_)))
                               (_loop2783727881_
                                _lp-tl2784027898_
                                (cons _lp-hd2783927895_ _body2784127888_))))
                           (let ((_body2784227901_ (reverse _body2784127888_)))
                             ((lambda (_L27905_ _L27907_)
                                (if (gx#identifier? _L27907_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27907_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2792427927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2792527930_)
                               (cons _g2792427927_ _g2792527930_))
                             '()
                             _L27905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2782427848_ _g2782527852_)))
                              _body2784227901_
                              _hd2783227869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2783727881_
                                                      _target2783427875_
                                                      '()))
                                                   (_g2782427848_
                                                    _g2782527852_)))))
                                         (_g2782427848_ _g2782527852_))
                                     (_g2782427848_ _g2782527852_))))
                             (_g2782427848_ _g2782527852_))))
                     (_g2782427848_ _g2782527852_)))))
          (_g2782327933_ _$stx27820_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27938_)
      (let ((_g2794227966_
             (lambda (_g2794327962_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2794327962_))))
        (let ((_g2794128051_
               (lambda (_g2794327970_)
                 (if (gx#stx-pair? _g2794327970_)
                     (let ((_e2794627973_ (gx#syntax-e _g2794327970_)))
                       (let ((_hd2794727977_ (##car _e2794627973_))
                             (_tl2794827980_ (##cdr _e2794627973_)))
                         (if (gx#stx-pair? _tl2794827980_)
                             (let ((_e2794927983_
                                    (gx#syntax-e _tl2794827980_)))
                               (let ((_hd2795027987_ (##car _e2794927983_))
                                     (_tl2795127990_ (##cdr _e2794927983_)))
                                 (if (gx#stx-pair/null? _tl2795127990_)
                                     (if (fx>= (gx#stx-length _tl2795127990_)
                                               '0)
                                         (let ((_g30423_
                                                (gx#syntax-split-splice
                                                 _tl2795127990_
                                                 '0)))
                                           (begin
                                             (let ((_g30424_
                                                    (values-count _g30423_)))
                                               (if (not (fx= _g30424_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30424_)))
                                             (let ((_target2795227993_
                                                    (values-ref _g30423_ 0))
                                                   (_tl2795427996_
                                                    (values-ref _g30423_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2795427996_)
                                                   (letrec ((_loop2795527999_
                                                             (lambda (_hd2795328003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2795928006_)
                       (if (gx#stx-pair? _hd2795328003_)
                           (let ((_e2795628009_ (gx#syntax-e _hd2795328003_)))
                             (let ((_lp-hd2795728013_ (##car _e2795628009_))
                                   (_lp-tl2795828016_ (##cdr _e2795628009_)))
                               (_loop2795527999_
                                _lp-tl2795828016_
                                (cons _lp-hd2795728013_ _body2795928006_))))
                           (let ((_body2796028019_ (reverse _body2795928006_)))
                             ((lambda (_L28023_ _L28025_)
                                (if (gx#identifier? _L28025_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L28025_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2804228045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2804328048_)
                               (cons _g2804228045_ _g2804328048_))
                             '()
                             _L28023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2794227966_ _g2794327970_)))
                              _body2796028019_
                              _hd2795027987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2795527999_
                                                      _target2795227993_
                                                      '()))
                                                   (_g2794227966_
                                                    _g2794327970_)))))
                                         (_g2794227966_ _g2794327970_))
                                     (_g2794227966_ _g2794327970_))))
                             (_g2794227966_ _g2794327970_))))
                     (_g2794227966_ _g2794327970_)))))
          (_g2794128051_ _$stx27938_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28056_)
      (let ((_g2806028078_
             (lambda (_g2806128074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2806128074_))))
        (let ((_g2805928133_
               (lambda (_g2806128082_)
                 (if (gx#stx-pair? _g2806128082_)
                     (let ((_e2806428085_ (gx#syntax-e _g2806128082_)))
                       (let ((_hd2806528089_ (##car _e2806428085_))
                             (_tl2806628092_ (##cdr _e2806428085_)))
                         (if (gx#stx-pair? _tl2806628092_)
                             (let ((_e2806728095_
                                    (gx#syntax-e _tl2806628092_)))
                               (let ((_hd2806828099_ (##car _e2806728095_))
                                     (_tl2806928102_ (##cdr _e2806728095_)))
                                 (if (gx#stx-pair? _tl2806928102_)
                                     (let ((_e2807028105_
                                            (gx#syntax-e _tl2806928102_)))
                                       (let ((_hd2807128109_
                                              (##car _e2807028105_))
                                             (_tl2807228112_
                                              (##cdr _e2807028105_)))
                                         (if (gx#stx-null? _tl2807228112_)
                                             ((lambda (_L28115_ _L28117_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L28117_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L28115_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2807128109_
                                              _hd2806828099_)
                                             (_g2806028078_ _g2806128082_))))
                                     (_g2806028078_ _g2806128082_))))
                             (_g2806028078_ _g2806128082_))))
                     (_g2806028078_ _g2806128082_)))))
          (_g2805928133_ _$stx28056_))))))
