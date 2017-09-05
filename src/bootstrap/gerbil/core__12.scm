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
    (lambda _$args26819_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26819_)))
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
    (lambda _$args26815_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26815_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26812_)
      (if (gx#identifier? _stx26812_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26812_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26809_)
      (if (gx#identifier? _stx26809_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26809_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26823_)
      (let ((_g2682926888_
             (lambda (_g2683026884_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2683026884_))))
        (let ((_g2682826943_
               (lambda (_g2683026892_)
                 (if (gx#stx-pair? _g2683026892_)
                     (let ((_e2687426895_ (gx#syntax-e _g2683026892_)))
                       (let ((_hd2687526899_ (##car _e2687426895_))
                             (_tl2687626902_ (##cdr _e2687426895_)))
                         (if (gx#stx-pair? _tl2687626902_)
                             (let ((_e2687726905_
                                    (gx#syntax-e _tl2687626902_)))
                               (let ((_hd2687826909_ (##car _e2687726905_))
                                     (_tl2687926912_ (##cdr _e2687726905_)))
                                 (if (gx#stx-pair? _tl2687926912_)
                                     (let ((_e2688026915_
                                            (gx#syntax-e _tl2687926912_)))
                                       (let ((_hd2688126919_
                                              (##car _e2688026915_))
                                             (_tl2688226922_
                                              (##cdr _e2688026915_)))
                                         (if (gx#stx-null? _tl2688226922_)
                                             ((lambda (_L26925_ _L26927_)
                                                (if (gx#identifier? _L26927_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26927_
                                                                (cons _L26925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2682926888_
                                                     _g2683026892_)))
                                              _hd2688126919_
                                              _hd2687826909_)
                                             (_g2682926888_ _g2683026892_))))
                                     (_g2682926888_ _g2683026892_))))
                             (_g2682926888_ _g2683026892_))))
                     (_g2682926888_ _g2683026892_)))))
          (let ((_g2682726983_
                 (lambda (_g2683026947_)
                   (if (gx#stx-pair? _g2683026947_)
                       (let ((_e2686626950_ (gx#syntax-e _g2683026947_)))
                         (let ((_hd2686726954_ (##car _e2686626950_))
                               (_tl2686826957_ (##cdr _e2686626950_)))
                           (if (gx#stx-pair? _tl2686826957_)
                               (let ((_e2686926960_
                                      (gx#syntax-e _tl2686826957_)))
                                 (let ((_hd2687026964_ (##car _e2686926960_))
                                       (_tl2687126967_ (##cdr _e2686926960_)))
                                   ((lambda (_L26970_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26970_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26970_)
                                           _stx26823_)
                                          (_g2682826943_ _g2683026947_)))
                                    _hd2687026964_)))
                               (_g2682826943_ _g2683026947_))))
                       (_g2682826943_ _g2683026947_)))))
            (let ((_g2682627124_
                   (lambda (_g2683026987_)
                     (if (gx#stx-pair? _g2683026987_)
                         (let ((_e2684426990_ (gx#syntax-e _g2683026987_)))
                           (let ((_hd2684526994_ (##car _e2684426990_))
                                 (_tl2684626997_ (##cdr _e2684426990_)))
                             (if (gx#stx-pair? _tl2684626997_)
                                 (let ((_e2684727000_
                                        (gx#syntax-e _tl2684626997_)))
                                   (let ((_hd2684827004_ (##car _e2684727000_))
                                         (_tl2684927007_
                                          (##cdr _e2684727000_)))
                                     (if (gx#stx-pair? _hd2684827004_)
                                         (let ((_e2685027010_
                                                (gx#syntax-e _hd2684827004_)))
                                           (let ((_hd2685127014_
                                                  (##car _e2685027010_))
                                                 (_tl2685227017_
                                                  (##cdr _e2685027010_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2685227017_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2685227017_)
                                                           '0)
                                                     (let ((_g30408_
                                                            (gx#syntax-split-splice
                                                             _tl2685227017_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30409_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30408_)))
                   (if (not (fx= _g30409_ 2))
                       (error "Context expects 2 values" _g30409_)))
                 (let ((_target2685327020_ (values-ref _g30408_ 0))
                       (_tl2685527023_ (values-ref _g30408_ 1)))
                   (if (gx#stx-null? _tl2685527023_)
                       (letrec ((_loop2685627026_
                                 (lambda (_hd2685427030_ _arg2686027033_)
                                   (if (gx#stx-pair? _hd2685427030_)
                                       (let ((_e2685727036_
                                              (gx#syntax-e _hd2685427030_)))
                                         (let ((_lp-hd2685827040_
                                                (##car _e2685727036_))
                                               (_lp-tl2685927043_
                                                (##cdr _e2685727036_)))
                                           (_loop2685627026_
                                            _lp-tl2685927043_
                                            (cons _lp-hd2685827040_
                                                  _arg2686027033_))))
                                       (let ((_arg2686127046_
                                              (reverse _arg2686027033_)))
                                         (if (gx#stx-pair? _tl2684927007_)
                                             (let ((_e2686227050_
                                                    (gx#syntax-e
                                                     _tl2684927007_)))
                                               (let ((_hd2686327054_
                                                      (##car _e2686227050_))
                                                     (_tl2686427057_
                                                      (##cdr _e2686227050_)))
                                                 (if (gx#stx-null?
                                                      _tl2686427057_)
                                                     ((lambda (_L27060_
                                                               _L27062_
                                                               _L27063_)
                                                        (if (gx#identifier?
                                                             _L27063_)
                                                            (let ((_g2708527093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2708627089_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2708627089_))))
                      (let ((_g2708427120_
                             (lambda (_g2708627097_)
                               ((lambda (_L27100_)
                                  (let ()
                                    (cons _L27100_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2711127114_
                                                            _g2711227117_)
                                                     (cons _g2711127114_
                                                           _g2711227117_))
                                                   (cons _L27060_ '())
                                                   _L27062_)))))
                                _g2708627097_))))
                        (_g2708427120_
                         (gx#stx-identifier _L27063_ _L27063_ '"-set!"))))
                    (_g2682726983_ _g2683026987_)))
              _hd2686327054_
              _arg2686127046_
              _hd2685127014_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2682726983_
                                                      _g2683026987_))))
                                             (_g2682726983_
                                              _g2683026987_)))))))
                         (_loop2685627026_ _target2685327020_ '()))
                       (_g2682726983_ _g2683026987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2682726983_
                                                      _g2683026987_))
                                                 (_g2682726983_
                                                  _g2683026987_))))
                                         (_g2682726983_ _g2683026987_))))
                                 (_g2682726983_ _g2683026987_))))
                         (_g2682726983_ _g2683026987_)))))
              (let ((_g2682527176_
                     (lambda (_g2683027128_)
                       (if (gx#stx-pair? _g2683027128_)
                           (let ((_e2683227131_ (gx#syntax-e _g2683027128_)))
                             (let ((_hd2683327135_ (##car _e2683227131_))
                                   (_tl2683427138_ (##cdr _e2683227131_)))
                               (if (gx#stx-pair? _tl2683427138_)
                                   (let ((_e2683527141_
                                          (gx#syntax-e _tl2683427138_)))
                                     (let ((_hd2683627145_
                                            (##car _e2683527141_))
                                           (_tl2683727148_
                                            (##cdr _e2683527141_)))
                                       (if (gx#stx-pair? _hd2683627145_)
                                           (let ((_e2683827151_
                                                  (gx#syntax-e
                                                   _hd2683627145_)))
                                             (let ((_hd2683927155_
                                                    (##car _e2683827151_))
                                                   (_tl2684027158_
                                                    (##cdr _e2683827151_)))
                                               ((lambda (_L27161_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L27161_)
                                                       _stx26823_)
                                                      (_g2682627124_
                                                       _g2683027128_)))
                                                _hd2683927155_)))
                                           (_g2682627124_ _g2683027128_))))
                                   (_g2682627124_ _g2683027128_))))
                           (_g2682627124_ _g2683027128_)))))
                (_g2682527176_ _stx26823_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx27181_)
      (let ((_g2718427208_
             (lambda (_g2718527204_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2718527204_))))
        (let ((_g2718327386_
               (lambda (_g2718527212_)
                 (if (gx#stx-pair? _g2718527212_)
                     (let ((_e2718827215_ (gx#syntax-e _g2718527212_)))
                       (let ((_hd2718927219_ (##car _e2718827215_))
                             (_tl2719027222_ (##cdr _e2718827215_)))
                         (if (gx#stx-pair/null? _tl2719027222_)
                             (if (fx>= (gx#stx-length _tl2719027222_) '1)
                                 (let ((_g30410_
                                        (gx#syntax-split-splice
                                         _tl2719027222_
                                         '1)))
                                   (begin
                                     (let ((_g30411_ (values-count _g30410_)))
                                       (if (not (fx= _g30411_ 2))
                                           (error "Context expects 2 values"
                                                  _g30411_)))
                                     (let ((_target2719127225_
                                            (values-ref _g30410_ 0))
                                           (_tl2719327228_
                                            (values-ref _g30410_ 1)))
                                       (if (gx#stx-pair? _tl2719327228_)
                                           (let ((_e2720027231_
                                                  (gx#syntax-e
                                                   _tl2719327228_)))
                                             (let ((_hd2720127235_
                                                    (##car _e2720027231_))
                                                   (_tl2720227238_
                                                    (##cdr _e2720027231_)))
                                               (if (gx#stx-null?
                                                    _tl2720227238_)
                                                   (letrec ((_loop2719427241_
                                                             (lambda (_hd2719227245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2719827248_)
                       (if (gx#stx-pair? _hd2719227245_)
                           (let ((_e2719527251_ (gx#syntax-e _hd2719227245_)))
                             (let ((_lp-hd2719627255_ (##car _e2719527251_))
                                   (_lp-tl2719727258_ (##cdr _e2719527251_)))
                               (_loop2719427241_
                                _lp-tl2719727258_
                                (cons _lp-hd2719627255_ _tgt2719827248_))))
                           (let ((_tgt2719927261_ (reverse _tgt2719827248_)))
                             ((lambda (_L27265_ _L27267_)
                                (let ((_g2728527302_
                                       (lambda (_g2728627298_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2728627298_))))
                                  (let ((_g2728427374_
                                         (lambda (_g2728627306_)
                                           (if (gx#stx-pair/null?
                                                _g2728627306_)
                                               (if (fx>= (gx#stx-length
                                                          _g2728627306_)
                                                         '0)
                                                   (let ((_g30412_
                                                          (gx#syntax-split-splice
                                                           _g2728627306_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30413_
                                                              (values-count
                                                               _g30412_)))
                                                         (if (not (fx= _g30413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30413_)))
               (let ((_target2728827309_ (values-ref _g30412_ 0))
                     (_tl2729027312_ (values-ref _g30412_ 1)))
                 (if (gx#stx-null? _tl2729027312_)
                     (letrec ((_loop2729127315_
                               (lambda (_hd2728927319_ _$e2729527322_)
                                 (if (gx#stx-pair? _hd2728927319_)
                                     (let ((_e2729227325_
                                            (gx#syntax-e _hd2728927319_)))
                                       (let ((_lp-hd2729327329_
                                              (##car _e2729227325_))
                                             (_lp-tl2729427332_
                                              (##cdr _e2729227325_)))
                                         (_loop2729127315_
                                          _lp-tl2729427332_
                                          (cons _lp-hd2729327329_
                                                _$e2729527322_))))
                                     (let ((_$e2729627335_
                                            (reverse _$e2729527322_)))
                                       ((lambda (_L27339_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2735427360_ _g2735527363_)
                                       (cons _g2735427360_ _g2735527363_))
                                     '()
                                     _L27339_))
                            (cons _L27265_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L27339_ _L27267_)
                  (foldr (lambda (_g2735627366_ _g2735727369_ _g2735827371_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2735727369_
                                             (cons _g2735627366_ '())))
                                 _g2735827371_))
                         '()
                         _L27339_
                         _L27267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2729627335_))))))
                       (_loop2729127315_ _target2728827309_ '()))
                     (_g2728527302_ _g2728627306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2728527302_
                                                    _g2728627306_))
                                               (_g2728527302_
                                                _g2728627306_)))))
                                    (_g2728427374_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2737727380_
                                                        _g2737827383_)
                                                 (cons _g2737727380_
                                                       _g2737827383_))
                                               '()
                                               _L27267_)))))))
                              _hd2720127235_
                              _tgt2719927261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2719427241_
                                                      _target2719127225_
                                                      '()))
                                                   (_g2718427208_
                                                    _g2718527212_))))
                                           (_g2718427208_ _g2718527212_)))))
                                 (_g2718427208_ _g2718527212_))
                             (_g2718427208_ _g2718527212_))))
                     (_g2718427208_ _g2718527212_)))))
          (_g2718327386_ _stx27181_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx27392_)
      (let ((_g2739627454_
             (lambda (_g2739727450_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739727450_))))
        (let ((_g2739527731_
               (lambda (_g2739727458_)
                 (if (gx#stx-pair? _g2739727458_)
                     (let ((_e2741727461_ (gx#syntax-e _g2739727458_)))
                       (let ((_hd2741827465_ (##car _e2741727461_))
                             (_tl2741927468_ (##cdr _e2741727461_)))
                         (if (gx#stx-pair? _tl2741927468_)
                             (let ((_e2742027471_
                                    (gx#syntax-e _tl2741927468_)))
                               (let ((_hd2742127475_ (##car _e2742027471_))
                                     (_tl2742227478_ (##cdr _e2742027471_)))
                                 (if (gx#stx-pair/null? _hd2742127475_)
                                     (if (fx>= (gx#stx-length _hd2742127475_)
                                               '0)
                                         (let ((_g30414_
                                                (gx#syntax-split-splice
                                                 _hd2742127475_
                                                 '0)))
                                           (begin
                                             (let ((_g30415_
                                                    (values-count _g30414_)))
                                               (if (not (fx= _g30415_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30415_)))
                                             (let ((_target2742327481_
                                                    (values-ref _g30414_ 0))
                                                   (_tl2742527484_
                                                    (values-ref _g30414_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2742527484_)
                                                   (letrec ((_loop2742627487_
                                                             (lambda (_hd2742427491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2743027494_
                              _param2743127496_)
                       (if (gx#stx-pair? _hd2742427491_)
                           (let ((_e2742727499_ (gx#syntax-e _hd2742427491_)))
                             (let ((_lp-hd2742827503_ (##car _e2742727499_))
                                   (_lp-tl2742927506_ (##cdr _e2742727499_)))
                               (if (gx#stx-pair? _lp-hd2742827503_)
                                   (let ((_e2743427509_
                                          (gx#syntax-e _lp-hd2742827503_)))
                                     (let ((_hd2743527513_
                                            (##car _e2743427509_))
                                           (_tl2743627516_
                                            (##cdr _e2743427509_)))
                                       (if (gx#stx-pair? _tl2743627516_)
                                           (let ((_e2743727519_
                                                  (gx#syntax-e
                                                   _tl2743627516_)))
                                             (let ((_hd2743827523_
                                                    (##car _e2743727519_))
                                                   (_tl2743927526_
                                                    (##cdr _e2743727519_)))
                                               (if (gx#stx-null?
                                                    _tl2743927526_)
                                                   (_loop2742627487_
                                                    _lp-tl2742927506_
                                                    (cons _hd2743827523_
                                                          _expr2743027494_)
                                                    (cons _hd2743527513_
                                                          _param2743127496_))
                                                   (_g2739627454_
                                                    _g2739727458_))))
                                           (_g2739627454_ _g2739727458_))))
                                   (_g2739627454_ _g2739727458_))))
                           (let ((_expr2743227529_ (reverse _expr2743027494_))
                                 (_param2743327532_
                                  (reverse _param2743127496_)))
                             (if (gx#stx-pair/null? _tl2742227478_)
                                 (if (fx>= (gx#stx-length _tl2742227478_) '0)
                                     (let ((_g30416_
                                            (gx#syntax-split-splice
                                             _tl2742227478_
                                             '0)))
                                       (begin
                                         (let ((_g30417_
                                                (values-count _g30416_)))
                                           (if (not (fx= _g30417_ 2))
                                               (error "Context expects 2 values"
                                                      _g30417_)))
                                         (let ((_target2744027535_
                                                (values-ref _g30416_ 0))
                                               (_tl2744227538_
                                                (values-ref _g30416_ 1)))
                                           (if (gx#stx-null? _tl2744227538_)
                                               (letrec ((_loop2744327541_
                                                         (lambda (_hd2744127545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2744727548_)
                   (if (gx#stx-pair? _hd2744127545_)
                       (let ((_e2744427551_ (gx#syntax-e _hd2744127545_)))
                         (let ((_lp-hd2744527555_ (##car _e2744427551_))
                               (_lp-tl2744627558_ (##cdr _e2744427551_)))
                           (_loop2744327541_
                            _lp-tl2744627558_
                            (cons _lp-hd2744527555_ _body2744727548_))))
                       (let ((_body2744827561_ (reverse _body2744727548_)))
                         ((lambda (_L27565_ _L27567_ _L27568_)
                            (let ((_g2759127599_
                                   (lambda (_g2759227595_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2759227595_))))
                              (let ((_g2759027719_
                                     (lambda (_g2759227603_)
                                       ((lambda (_L27606_)
                                          (let ()
                                            (let ((_g2761827635_
                                                   (lambda (_g2761927631_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2761927631_))))
                                              (let ((_g2761727699_
                                                     (lambda (_g2761927639_)
                                                       (if (gx#stx-pair/null?
                                                            _g2761927639_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2761927639_)
                             '0)
                       (let ((_g30418_
                              (gx#syntax-split-splice _g2761927639_ '0)))
                         (begin
                           (let ((_g30419_ (values-count _g30418_)))
                             (if (not (fx= _g30419_ 2))
                                 (error "Context expects 2 values" _g30419_)))
                           (let ((_target2762127642_ (values-ref _g30418_ 0))
                                 (_tl2762327645_ (values-ref _g30418_ 1)))
                             (if (gx#stx-null? _tl2762327645_)
                                 (letrec ((_loop2762427648_
                                           (lambda (_hd2762227652_
                                                    _arg2762827655_)
                                             (if (gx#stx-pair? _hd2762227652_)
                                                 (let ((_e2762527658_
                                                        (gx#syntax-e
                                                         _hd2762227652_)))
                                                   (let ((_lp-hd2762627662_
                                                          (##car _e2762527658_))
                                                         (_lp-tl2762727665_
                                                          (##cdr _e2762527658_)))
                                                     (_loop2762427648_
                                                      _lp-tl2762727665_
                                                      (cons _lp-hd2762627662_
                                                            _arg2762827655_))))
                                                 (let ((_arg2762927668_
                                                        (reverse _arg2762827655_)))
                                                   ((lambda (_L27672_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L27606_
                              (begin
                                '#!void
                                (foldr (lambda (_g2769027693_ _g2769127696_)
                                         (cons _g2769027693_ _g2769127696_))
                                       '()
                                       _L27672_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2762927668_))))))
                                   (_loop2762427648_ _target2762127642_ '()))
                                 (_g2761827635_ _g2761927639_)))))
                       (_g2761827635_ _g2761927639_))
                   (_g2761827635_ _g2761927639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2761727699_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2770227705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2770327708_)
                            (cons _g2770227705_ _g2770327708_))
                          '()
                          _L27568_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2771027713_ _g2771127716_)
                            (cons _g2771027713_ _g2771127716_))
                          '()
                          _L27567_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2759227603_))))
                                (_g2759027719_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2772227725_
                                                                _g2772327728_)
                                                         (cons _g2772227725_
                                                               _g2772327728_))
                                                       '()
                                                       _L27565_))))
                                  (gx#stx-source _stx27392_))))))
                          _body2744827561_
                          _expr2743227529_
                          _param2743327532_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2744327541_
                                                  _target2744027535_
                                                  '()))
                                               (_g2739627454_
                                                _g2739727458_)))))
                                     (_g2739627454_ _g2739727458_))
                                 (_g2739627454_ _g2739727458_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2742627487_
                                                      _target2742327481_
                                                      '()
                                                      '()))
                                                   (_g2739627454_
                                                    _g2739727458_)))))
                                         (_g2739627454_ _g2739727458_))
                                     (_g2739627454_ _g2739727458_))))
                             (_g2739627454_ _g2739727458_))))
                     (_g2739627454_ _g2739727458_)))))
          (let ((_g2739427813_
                 (lambda (_g2739727735_)
                   (if (gx#stx-pair? _g2739727735_)
                       (let ((_e2739927738_ (gx#syntax-e _g2739727735_)))
                         (let ((_hd2740027742_ (##car _e2739927738_))
                               (_tl2740127745_ (##cdr _e2739927738_)))
                           (if (gx#stx-pair? _tl2740127745_)
                               (let ((_e2740227748_
                                      (gx#syntax-e _tl2740127745_)))
                                 (let ((_hd2740327752_ (##car _e2740227748_))
                                       (_tl2740427755_ (##cdr _e2740227748_)))
                                   (if (gx#stx-null? _hd2740327752_)
                                       (if (gx#stx-pair/null? _tl2740427755_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2740427755_)
                                                     '0)
                                               (let ((_g30420_
                                                      (gx#syntax-split-splice
                                                       _tl2740427755_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30421_
                                                          (values-count
                                                           _g30420_)))
                                                     (if (not (fx= _g30421_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30421_)))
                                                   (let ((_target2740527758_
                                                          (values-ref
                                                           _g30420_
                                                           0))
                                                         (_tl2740727761_
                                                          (values-ref
                                                           _g30420_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2740727761_)
                                                         (letrec ((_loop2740827764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2740627768_ _body2741227771_)
                             (if (gx#stx-pair? _hd2740627768_)
                                 (let ((_e2740927774_
                                        (gx#syntax-e _hd2740627768_)))
                                   (let ((_lp-hd2741027778_
                                          (##car _e2740927774_))
                                         (_lp-tl2741127781_
                                          (##cdr _e2740927774_)))
                                     (_loop2740827764_
                                      _lp-tl2741127781_
                                      (cons _lp-hd2741027778_
                                            _body2741227771_))))
                                 (let ((_body2741327784_
                                        (reverse _body2741227771_)))
                                   ((lambda (_L27788_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2780427807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2780527810_)
                     (cons _g2780427807_ _g2780527810_))
                   '()
                   _L27788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2741327784_))))))
                   (_loop2740827764_ _target2740527758_ '()))
                 (_g2739527731_ _g2739727735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2739527731_ _g2739727735_))
                                           (_g2739527731_ _g2739727735_))
                                       (_g2739527731_ _g2739727735_))))
                               (_g2739527731_ _g2739727735_))))
                       (_g2739527731_ _g2739727735_)))))
            (_g2739427813_ _stx27392_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27821_)
      (let ((_g2782527849_
             (lambda (_g2782627845_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2782627845_))))
        (let ((_g2782427934_
               (lambda (_g2782627853_)
                 (if (gx#stx-pair? _g2782627853_)
                     (let ((_e2782927856_ (gx#syntax-e _g2782627853_)))
                       (let ((_hd2783027860_ (##car _e2782927856_))
                             (_tl2783127863_ (##cdr _e2782927856_)))
                         (if (gx#stx-pair? _tl2783127863_)
                             (let ((_e2783227866_
                                    (gx#syntax-e _tl2783127863_)))
                               (let ((_hd2783327870_ (##car _e2783227866_))
                                     (_tl2783427873_ (##cdr _e2783227866_)))
                                 (if (gx#stx-pair/null? _tl2783427873_)
                                     (if (fx>= (gx#stx-length _tl2783427873_)
                                               '0)
                                         (let ((_g30422_
                                                (gx#syntax-split-splice
                                                 _tl2783427873_
                                                 '0)))
                                           (begin
                                             (let ((_g30423_
                                                    (values-count _g30422_)))
                                               (if (not (fx= _g30423_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30423_)))
                                             (let ((_target2783527876_
                                                    (values-ref _g30422_ 0))
                                                   (_tl2783727879_
                                                    (values-ref _g30422_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2783727879_)
                                                   (letrec ((_loop2783827882_
                                                             (lambda (_hd2783627886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2784227889_)
                       (if (gx#stx-pair? _hd2783627886_)
                           (let ((_e2783927892_ (gx#syntax-e _hd2783627886_)))
                             (let ((_lp-hd2784027896_ (##car _e2783927892_))
                                   (_lp-tl2784127899_ (##cdr _e2783927892_)))
                               (_loop2783827882_
                                _lp-tl2784127899_
                                (cons _lp-hd2784027896_ _body2784227889_))))
                           (let ((_body2784327902_ (reverse _body2784227889_)))
                             ((lambda (_L27906_ _L27908_)
                                (if (gx#identifier? _L27908_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27908_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2792527928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2792627931_)
                               (cons _g2792527928_ _g2792627931_))
                             '()
                             _L27906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2782527849_ _g2782627853_)))
                              _body2784327902_
                              _hd2783327870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2783827882_
                                                      _target2783527876_
                                                      '()))
                                                   (_g2782527849_
                                                    _g2782627853_)))))
                                         (_g2782527849_ _g2782627853_))
                                     (_g2782527849_ _g2782627853_))))
                             (_g2782527849_ _g2782627853_))))
                     (_g2782527849_ _g2782627853_)))))
          (_g2782427934_ _$stx27821_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27939_)
      (let ((_g2794327967_
             (lambda (_g2794427963_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2794427963_))))
        (let ((_g2794228052_
               (lambda (_g2794427971_)
                 (if (gx#stx-pair? _g2794427971_)
                     (let ((_e2794727974_ (gx#syntax-e _g2794427971_)))
                       (let ((_hd2794827978_ (##car _e2794727974_))
                             (_tl2794927981_ (##cdr _e2794727974_)))
                         (if (gx#stx-pair? _tl2794927981_)
                             (let ((_e2795027984_
                                    (gx#syntax-e _tl2794927981_)))
                               (let ((_hd2795127988_ (##car _e2795027984_))
                                     (_tl2795227991_ (##cdr _e2795027984_)))
                                 (if (gx#stx-pair/null? _tl2795227991_)
                                     (if (fx>= (gx#stx-length _tl2795227991_)
                                               '0)
                                         (let ((_g30424_
                                                (gx#syntax-split-splice
                                                 _tl2795227991_
                                                 '0)))
                                           (begin
                                             (let ((_g30425_
                                                    (values-count _g30424_)))
                                               (if (not (fx= _g30425_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30425_)))
                                             (let ((_target2795327994_
                                                    (values-ref _g30424_ 0))
                                                   (_tl2795527997_
                                                    (values-ref _g30424_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2795527997_)
                                                   (letrec ((_loop2795628000_
                                                             (lambda (_hd2795428004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2796028007_)
                       (if (gx#stx-pair? _hd2795428004_)
                           (let ((_e2795728010_ (gx#syntax-e _hd2795428004_)))
                             (let ((_lp-hd2795828014_ (##car _e2795728010_))
                                   (_lp-tl2795928017_ (##cdr _e2795728010_)))
                               (_loop2795628000_
                                _lp-tl2795928017_
                                (cons _lp-hd2795828014_ _body2796028007_))))
                           (let ((_body2796128020_ (reverse _body2796028007_)))
                             ((lambda (_L28024_ _L28026_)
                                (if (gx#identifier? _L28026_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L28026_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2804328046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2804428049_)
                               (cons _g2804328046_ _g2804428049_))
                             '()
                             _L28024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2794327967_ _g2794427971_)))
                              _body2796128020_
                              _hd2795127988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2795628000_
                                                      _target2795327994_
                                                      '()))
                                                   (_g2794327967_
                                                    _g2794427971_)))))
                                         (_g2794327967_ _g2794427971_))
                                     (_g2794327967_ _g2794427971_))))
                             (_g2794327967_ _g2794427971_))))
                     (_g2794327967_ _g2794427971_)))))
          (_g2794228052_ _$stx27939_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28057_)
      (let ((_g2806128079_
             (lambda (_g2806228075_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2806228075_))))
        (let ((_g2806028134_
               (lambda (_g2806228083_)
                 (if (gx#stx-pair? _g2806228083_)
                     (let ((_e2806528086_ (gx#syntax-e _g2806228083_)))
                       (let ((_hd2806628090_ (##car _e2806528086_))
                             (_tl2806728093_ (##cdr _e2806528086_)))
                         (if (gx#stx-pair? _tl2806728093_)
                             (let ((_e2806828096_
                                    (gx#syntax-e _tl2806728093_)))
                               (let ((_hd2806928100_ (##car _e2806828096_))
                                     (_tl2807028103_ (##cdr _e2806828096_)))
                                 (if (gx#stx-pair? _tl2807028103_)
                                     (let ((_e2807128106_
                                            (gx#syntax-e _tl2807028103_)))
                                       (let ((_hd2807228110_
                                              (##car _e2807128106_))
                                             (_tl2807328113_
                                              (##cdr _e2807128106_)))
                                         (if (gx#stx-null? _tl2807328113_)
                                             ((lambda (_L28116_ _L28118_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L28118_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L28116_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2807228110_
                                              _hd2806928100_)
                                             (_g2806128079_ _g2806228083_))))
                                     (_g2806128079_ _g2806228083_))))
                             (_g2806128079_ _g2806228083_))))
                     (_g2806128079_ _g2806228083_)))))
          (_g2806028134_ _$stx28057_))))))
