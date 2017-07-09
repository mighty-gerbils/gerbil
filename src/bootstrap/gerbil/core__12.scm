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
    (lambda _$args26487_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26487_)))
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
    (lambda _$args26483_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26483_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26480_)
      (if (gx#identifier? _stx26480_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26480_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26477_)
      (if (gx#identifier? _stx26477_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26477_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26491_)
      (let ((_g2649726556_
             (lambda (_g2649826552_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2649826552_))))
        (let ((_g2649626611_
               (lambda (_g2649826560_)
                 (if (gx#stx-pair? _g2649826560_)
                     (let ((_e2654226563_ (gx#syntax-e _g2649826560_)))
                       (let ((_hd2654326567_ (##car _e2654226563_))
                             (_tl2654426570_ (##cdr _e2654226563_)))
                         (if (gx#stx-pair? _tl2654426570_)
                             (let ((_e2654526573_
                                    (gx#syntax-e _tl2654426570_)))
                               (let ((_hd2654626577_ (##car _e2654526573_))
                                     (_tl2654726580_ (##cdr _e2654526573_)))
                                 (if (gx#stx-pair? _tl2654726580_)
                                     (let ((_e2654826583_
                                            (gx#syntax-e _tl2654726580_)))
                                       (let ((_hd2654926587_
                                              (##car _e2654826583_))
                                             (_tl2655026590_
                                              (##cdr _e2654826583_)))
                                         (if (gx#stx-null? _tl2655026590_)
                                             ((lambda (_L26593_ _L26595_)
                                                (if (gx#identifier? _L26595_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26595_
                                                                (cons _L26593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2649726556_
                                                     _g2649826560_)))
                                              _hd2654926587_
                                              _hd2654626577_)
                                             (_g2649726556_ _g2649826560_))))
                                     (_g2649726556_ _g2649826560_))))
                             (_g2649726556_ _g2649826560_))))
                     (_g2649726556_ _g2649826560_)))))
          (let ((_g2649526651_
                 (lambda (_g2649826615_)
                   (if (gx#stx-pair? _g2649826615_)
                       (let ((_e2653426618_ (gx#syntax-e _g2649826615_)))
                         (let ((_hd2653526622_ (##car _e2653426618_))
                               (_tl2653626625_ (##cdr _e2653426618_)))
                           (if (gx#stx-pair? _tl2653626625_)
                               (let ((_e2653726628_
                                      (gx#syntax-e _tl2653626625_)))
                                 (let ((_hd2653826632_ (##car _e2653726628_))
                                       (_tl2653926635_ (##cdr _e2653726628_)))
                                   ((lambda (_L26638_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26638_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26638_)
                                           _stx26491_)
                                          (_g2649626611_ _g2649826615_)))
                                    _hd2653826632_)))
                               (_g2649626611_ _g2649826615_))))
                       (_g2649626611_ _g2649826615_)))))
            (let ((_g2649426792_
                   (lambda (_g2649826655_)
                     (if (gx#stx-pair? _g2649826655_)
                         (let ((_e2651226658_ (gx#syntax-e _g2649826655_)))
                           (let ((_hd2651326662_ (##car _e2651226658_))
                                 (_tl2651426665_ (##cdr _e2651226658_)))
                             (if (gx#stx-pair? _tl2651426665_)
                                 (let ((_e2651526668_
                                        (gx#syntax-e _tl2651426665_)))
                                   (let ((_hd2651626672_ (##car _e2651526668_))
                                         (_tl2651726675_
                                          (##cdr _e2651526668_)))
                                     (if (gx#stx-pair? _hd2651626672_)
                                         (let ((_e2651826678_
                                                (gx#syntax-e _hd2651626672_)))
                                           (let ((_hd2651926682_
                                                  (##car _e2651826678_))
                                                 (_tl2652026685_
                                                  (##cdr _e2651826678_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2652026685_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2652026685_)
                                                           '0)
                                                     (let ((_g30074_
                                                            (gx#syntax-split-splice
                                                             _tl2652026685_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30075_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30074_)))
                   (if (not (fx= _g30075_ 2))
                       (error "Context expects 2 values" _g30075_)))
                 (let ((_target2652126688_ (values-ref _g30074_ 0))
                       (_tl2652326691_ (values-ref _g30074_ 1)))
                   (if (gx#stx-null? _tl2652326691_)
                       (letrec ((_loop2652426694_
                                 (lambda (_hd2652226698_ _arg2652826701_)
                                   (if (gx#stx-pair? _hd2652226698_)
                                       (let ((_e2652526704_
                                              (gx#syntax-e _hd2652226698_)))
                                         (let ((_lp-hd2652626708_
                                                (##car _e2652526704_))
                                               (_lp-tl2652726711_
                                                (##cdr _e2652526704_)))
                                           (_loop2652426694_
                                            _lp-tl2652726711_
                                            (cons _lp-hd2652626708_
                                                  _arg2652826701_))))
                                       (let ((_arg2652926714_
                                              (reverse _arg2652826701_)))
                                         (if (gx#stx-pair? _tl2651726675_)
                                             (let ((_e2653026718_
                                                    (gx#syntax-e
                                                     _tl2651726675_)))
                                               (let ((_hd2653126722_
                                                      (##car _e2653026718_))
                                                     (_tl2653226725_
                                                      (##cdr _e2653026718_)))
                                                 (if (gx#stx-null?
                                                      _tl2653226725_)
                                                     ((lambda (_L26728_
                                                               _L26730_
                                                               _L26731_)
                                                        (if (gx#identifier?
                                                             _L26731_)
                                                            (let ((_g2675326761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2675426757_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2675426757_))))
                      (let ((_g2675226788_
                             (lambda (_g2675426765_)
                               ((lambda (_L26768_)
                                  (let ()
                                    (cons _L26768_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2677926782_
                                                            _g2678026785_)
                                                     (cons _g2677926782_
                                                           _g2678026785_))
                                                   (cons _L26728_ '())
                                                   _L26730_)))))
                                _g2675426765_))))
                        (_g2675226788_
                         (gx#stx-identifier _L26731_ _L26731_ '"-set!"))))
                    (_g2649526651_ _g2649826655_)))
              _hd2653126722_
              _arg2652926714_
              _hd2651926682_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2649526651_
                                                      _g2649826655_))))
                                             (_g2649526651_
                                              _g2649826655_)))))))
                         (_loop2652426694_ _target2652126688_ '()))
                       (_g2649526651_ _g2649826655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2649526651_
                                                      _g2649826655_))
                                                 (_g2649526651_
                                                  _g2649826655_))))
                                         (_g2649526651_ _g2649826655_))))
                                 (_g2649526651_ _g2649826655_))))
                         (_g2649526651_ _g2649826655_)))))
              (let ((_g2649326844_
                     (lambda (_g2649826796_)
                       (if (gx#stx-pair? _g2649826796_)
                           (let ((_e2650026799_ (gx#syntax-e _g2649826796_)))
                             (let ((_hd2650126803_ (##car _e2650026799_))
                                   (_tl2650226806_ (##cdr _e2650026799_)))
                               (if (gx#stx-pair? _tl2650226806_)
                                   (let ((_e2650326809_
                                          (gx#syntax-e _tl2650226806_)))
                                     (let ((_hd2650426813_
                                            (##car _e2650326809_))
                                           (_tl2650526816_
                                            (##cdr _e2650326809_)))
                                       (if (gx#stx-pair? _hd2650426813_)
                                           (let ((_e2650626819_
                                                  (gx#syntax-e
                                                   _hd2650426813_)))
                                             (let ((_hd2650726823_
                                                    (##car _e2650626819_))
                                                   (_tl2650826826_
                                                    (##cdr _e2650626819_)))
                                               ((lambda (_L26829_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26829_)
                                                       _stx26491_)
                                                      (_g2649426792_
                                                       _g2649826796_)))
                                                _hd2650726823_)))
                                           (_g2649426792_ _g2649826796_))))
                                   (_g2649426792_ _g2649826796_))))
                           (_g2649426792_ _g2649826796_)))))
                (_g2649326844_ _stx26491_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26849_)
      (let ((_g2685226876_
             (lambda (_g2685326872_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2685326872_))))
        (let ((_g2685127054_
               (lambda (_g2685326880_)
                 (if (gx#stx-pair? _g2685326880_)
                     (let ((_e2685626883_ (gx#syntax-e _g2685326880_)))
                       (let ((_hd2685726887_ (##car _e2685626883_))
                             (_tl2685826890_ (##cdr _e2685626883_)))
                         (if (gx#stx-pair/null? _tl2685826890_)
                             (if (fx>= (gx#stx-length _tl2685826890_) '1)
                                 (let ((_g30076_
                                        (gx#syntax-split-splice
                                         _tl2685826890_
                                         '1)))
                                   (begin
                                     (let ((_g30077_ (values-count _g30076_)))
                                       (if (not (fx= _g30077_ 2))
                                           (error "Context expects 2 values"
                                                  _g30077_)))
                                     (let ((_target2685926893_
                                            (values-ref _g30076_ 0))
                                           (_tl2686126896_
                                            (values-ref _g30076_ 1)))
                                       (if (gx#stx-pair? _tl2686126896_)
                                           (let ((_e2686826899_
                                                  (gx#syntax-e
                                                   _tl2686126896_)))
                                             (let ((_hd2686926903_
                                                    (##car _e2686826899_))
                                                   (_tl2687026906_
                                                    (##cdr _e2686826899_)))
                                               (if (gx#stx-null?
                                                    _tl2687026906_)
                                                   (letrec ((_loop2686226909_
                                                             (lambda (_hd2686026913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2686626916_)
                       (if (gx#stx-pair? _hd2686026913_)
                           (let ((_e2686326919_ (gx#syntax-e _hd2686026913_)))
                             (let ((_lp-hd2686426923_ (##car _e2686326919_))
                                   (_lp-tl2686526926_ (##cdr _e2686326919_)))
                               (_loop2686226909_
                                _lp-tl2686526926_
                                (cons _lp-hd2686426923_ _tgt2686626916_))))
                           (let ((_tgt2686726929_ (reverse _tgt2686626916_)))
                             ((lambda (_L26933_ _L26935_)
                                (let ((_g2695326970_
                                       (lambda (_g2695426966_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2695426966_))))
                                  (let ((_g2695227042_
                                         (lambda (_g2695426974_)
                                           (if (gx#stx-pair/null?
                                                _g2695426974_)
                                               (if (fx>= (gx#stx-length
                                                          _g2695426974_)
                                                         '0)
                                                   (let ((_g30078_
                                                          (gx#syntax-split-splice
                                                           _g2695426974_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30079_
                                                              (values-count
                                                               _g30078_)))
                                                         (if (not (fx= _g30079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30079_)))
               (let ((_target2695626977_ (values-ref _g30078_ 0))
                     (_tl2695826980_ (values-ref _g30078_ 1)))
                 (if (gx#stx-null? _tl2695826980_)
                     (letrec ((_loop2695926983_
                               (lambda (_hd2695726987_ _$e2696326990_)
                                 (if (gx#stx-pair? _hd2695726987_)
                                     (let ((_e2696026993_
                                            (gx#syntax-e _hd2695726987_)))
                                       (let ((_lp-hd2696126997_
                                              (##car _e2696026993_))
                                             (_lp-tl2696227000_
                                              (##cdr _e2696026993_)))
                                         (_loop2695926983_
                                          _lp-tl2696227000_
                                          (cons _lp-hd2696126997_
                                                _$e2696326990_))))
                                     (let ((_$e2696427003_
                                            (reverse _$e2696326990_)))
                                       ((lambda (_L27007_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2702227028_ _g2702327031_)
                                       (cons _g2702227028_ _g2702327031_))
                                     '()
                                     _L27007_))
                            (cons _L26933_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L27007_ _L26935_)
                  (foldr (lambda (_g2702427034_ _g2702527037_ _g2702627039_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2702527037_
                                             (cons _g2702427034_ '())))
                                 _g2702627039_))
                         '()
                         _L27007_
                         _L26935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2696427003_))))))
                       (_loop2695926983_ _target2695626977_ '()))
                     (_g2695326970_ _g2695426974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2695326970_
                                                    _g2695426974_))
                                               (_g2695326970_
                                                _g2695426974_)))))
                                    (_g2695227042_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2704527048_
                                                        _g2704627051_)
                                                 (cons _g2704527048_
                                                       _g2704627051_))
                                               '()
                                               _L26935_)))))))
                              _hd2686926903_
                              _tgt2686726929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2686226909_
                                                      _target2685926893_
                                                      '()))
                                                   (_g2685226876_
                                                    _g2685326880_))))
                                           (_g2685226876_ _g2685326880_)))))
                                 (_g2685226876_ _g2685326880_))
                             (_g2685226876_ _g2685326880_))))
                     (_g2685226876_ _g2685326880_)))))
          (_g2685127054_ _stx26849_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx27060_)
      (let ((_g2706427122_
             (lambda (_g2706527118_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2706527118_))))
        (let ((_g2706327399_
               (lambda (_g2706527126_)
                 (if (gx#stx-pair? _g2706527126_)
                     (let ((_e2708527129_ (gx#syntax-e _g2706527126_)))
                       (let ((_hd2708627133_ (##car _e2708527129_))
                             (_tl2708727136_ (##cdr _e2708527129_)))
                         (if (gx#stx-pair? _tl2708727136_)
                             (let ((_e2708827139_
                                    (gx#syntax-e _tl2708727136_)))
                               (let ((_hd2708927143_ (##car _e2708827139_))
                                     (_tl2709027146_ (##cdr _e2708827139_)))
                                 (if (gx#stx-pair/null? _hd2708927143_)
                                     (if (fx>= (gx#stx-length _hd2708927143_)
                                               '0)
                                         (let ((_g30080_
                                                (gx#syntax-split-splice
                                                 _hd2708927143_
                                                 '0)))
                                           (begin
                                             (let ((_g30081_
                                                    (values-count _g30080_)))
                                               (if (not (fx= _g30081_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30081_)))
                                             (let ((_target2709127149_
                                                    (values-ref _g30080_ 0))
                                                   (_tl2709327152_
                                                    (values-ref _g30080_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2709327152_)
                                                   (letrec ((_loop2709427155_
                                                             (lambda (_hd2709227159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2709827162_
                              _param2709927164_)
                       (if (gx#stx-pair? _hd2709227159_)
                           (let ((_e2709527167_ (gx#syntax-e _hd2709227159_)))
                             (let ((_lp-hd2709627171_ (##car _e2709527167_))
                                   (_lp-tl2709727174_ (##cdr _e2709527167_)))
                               (if (gx#stx-pair? _lp-hd2709627171_)
                                   (let ((_e2710227177_
                                          (gx#syntax-e _lp-hd2709627171_)))
                                     (let ((_hd2710327181_
                                            (##car _e2710227177_))
                                           (_tl2710427184_
                                            (##cdr _e2710227177_)))
                                       (if (gx#stx-pair? _tl2710427184_)
                                           (let ((_e2710527187_
                                                  (gx#syntax-e
                                                   _tl2710427184_)))
                                             (let ((_hd2710627191_
                                                    (##car _e2710527187_))
                                                   (_tl2710727194_
                                                    (##cdr _e2710527187_)))
                                               (if (gx#stx-null?
                                                    _tl2710727194_)
                                                   (_loop2709427155_
                                                    _lp-tl2709727174_
                                                    (cons _hd2710627191_
                                                          _expr2709827162_)
                                                    (cons _hd2710327181_
                                                          _param2709927164_))
                                                   (_g2706427122_
                                                    _g2706527126_))))
                                           (_g2706427122_ _g2706527126_))))
                                   (_g2706427122_ _g2706527126_))))
                           (let ((_expr2710027197_ (reverse _expr2709827162_))
                                 (_param2710127200_
                                  (reverse _param2709927164_)))
                             (if (gx#stx-pair/null? _tl2709027146_)
                                 (if (fx>= (gx#stx-length _tl2709027146_) '0)
                                     (let ((_g30082_
                                            (gx#syntax-split-splice
                                             _tl2709027146_
                                             '0)))
                                       (begin
                                         (let ((_g30083_
                                                (values-count _g30082_)))
                                           (if (not (fx= _g30083_ 2))
                                               (error "Context expects 2 values"
                                                      _g30083_)))
                                         (let ((_target2710827203_
                                                (values-ref _g30082_ 0))
                                               (_tl2711027206_
                                                (values-ref _g30082_ 1)))
                                           (if (gx#stx-null? _tl2711027206_)
                                               (letrec ((_loop2711127209_
                                                         (lambda (_hd2710927213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2711527216_)
                   (if (gx#stx-pair? _hd2710927213_)
                       (let ((_e2711227219_ (gx#syntax-e _hd2710927213_)))
                         (let ((_lp-hd2711327223_ (##car _e2711227219_))
                               (_lp-tl2711427226_ (##cdr _e2711227219_)))
                           (_loop2711127209_
                            _lp-tl2711427226_
                            (cons _lp-hd2711327223_ _body2711527216_))))
                       (let ((_body2711627229_ (reverse _body2711527216_)))
                         ((lambda (_L27233_ _L27235_ _L27236_)
                            (let ((_g2725927267_
                                   (lambda (_g2726027263_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2726027263_))))
                              (let ((_g2725827387_
                                     (lambda (_g2726027271_)
                                       ((lambda (_L27274_)
                                          (let ()
                                            (let ((_g2728627303_
                                                   (lambda (_g2728727299_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2728727299_))))
                                              (let ((_g2728527367_
                                                     (lambda (_g2728727307_)
                                                       (if (gx#stx-pair/null?
                                                            _g2728727307_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2728727307_)
                             '0)
                       (let ((_g30084_
                              (gx#syntax-split-splice _g2728727307_ '0)))
                         (begin
                           (let ((_g30085_ (values-count _g30084_)))
                             (if (not (fx= _g30085_ 2))
                                 (error "Context expects 2 values" _g30085_)))
                           (let ((_target2728927310_ (values-ref _g30084_ 0))
                                 (_tl2729127313_ (values-ref _g30084_ 1)))
                             (if (gx#stx-null? _tl2729127313_)
                                 (letrec ((_loop2729227316_
                                           (lambda (_hd2729027320_
                                                    _arg2729627323_)
                                             (if (gx#stx-pair? _hd2729027320_)
                                                 (let ((_e2729327326_
                                                        (gx#syntax-e
                                                         _hd2729027320_)))
                                                   (let ((_lp-hd2729427330_
                                                          (##car _e2729327326_))
                                                         (_lp-tl2729527333_
                                                          (##cdr _e2729327326_)))
                                                     (_loop2729227316_
                                                      _lp-tl2729527333_
                                                      (cons _lp-hd2729427330_
                                                            _arg2729627323_))))
                                                 (let ((_arg2729727336_
                                                        (reverse _arg2729627323_)))
                                                   ((lambda (_L27340_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L27274_
                              (begin
                                '#!void
                                (foldr (lambda (_g2735827361_ _g2735927364_)
                                         (cons _g2735827361_ _g2735927364_))
                                       '()
                                       _L27340_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2729727336_))))))
                                   (_loop2729227316_ _target2728927310_ '()))
                                 (_g2728627303_ _g2728727307_)))))
                       (_g2728627303_ _g2728727307_))
                   (_g2728627303_ _g2728727307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2728527367_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2737027373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2737127376_)
                            (cons _g2737027373_ _g2737127376_))
                          '()
                          _L27236_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2737827381_ _g2737927384_)
                            (cons _g2737827381_ _g2737927384_))
                          '()
                          _L27235_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2726027271_))))
                                (_g2725827387_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2739027393_
                                                                _g2739127396_)
                                                         (cons _g2739027393_
                                                               _g2739127396_))
                                                       '()
                                                       _L27233_))))
                                  (gx#stx-source _stx27060_))))))
                          _body2711627229_
                          _expr2710027197_
                          _param2710127200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2711127209_
                                                  _target2710827203_
                                                  '()))
                                               (_g2706427122_
                                                _g2706527126_)))))
                                     (_g2706427122_ _g2706527126_))
                                 (_g2706427122_ _g2706527126_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2709427155_
                                                      _target2709127149_
                                                      '()
                                                      '()))
                                                   (_g2706427122_
                                                    _g2706527126_)))))
                                         (_g2706427122_ _g2706527126_))
                                     (_g2706427122_ _g2706527126_))))
                             (_g2706427122_ _g2706527126_))))
                     (_g2706427122_ _g2706527126_)))))
          (let ((_g2706227481_
                 (lambda (_g2706527403_)
                   (if (gx#stx-pair? _g2706527403_)
                       (let ((_e2706727406_ (gx#syntax-e _g2706527403_)))
                         (let ((_hd2706827410_ (##car _e2706727406_))
                               (_tl2706927413_ (##cdr _e2706727406_)))
                           (if (gx#stx-pair? _tl2706927413_)
                               (let ((_e2707027416_
                                      (gx#syntax-e _tl2706927413_)))
                                 (let ((_hd2707127420_ (##car _e2707027416_))
                                       (_tl2707227423_ (##cdr _e2707027416_)))
                                   (if (gx#stx-null? _hd2707127420_)
                                       (if (gx#stx-pair/null? _tl2707227423_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2707227423_)
                                                     '0)
                                               (let ((_g30086_
                                                      (gx#syntax-split-splice
                                                       _tl2707227423_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30087_
                                                          (values-count
                                                           _g30086_)))
                                                     (if (not (fx= _g30087_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30087_)))
                                                   (let ((_target2707327426_
                                                          (values-ref
                                                           _g30086_
                                                           0))
                                                         (_tl2707527429_
                                                          (values-ref
                                                           _g30086_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2707527429_)
                                                         (letrec ((_loop2707627432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2707427436_ _body2708027439_)
                             (if (gx#stx-pair? _hd2707427436_)
                                 (let ((_e2707727442_
                                        (gx#syntax-e _hd2707427436_)))
                                   (let ((_lp-hd2707827446_
                                          (##car _e2707727442_))
                                         (_lp-tl2707927449_
                                          (##cdr _e2707727442_)))
                                     (_loop2707627432_
                                      _lp-tl2707927449_
                                      (cons _lp-hd2707827446_
                                            _body2708027439_))))
                                 (let ((_body2708127452_
                                        (reverse _body2708027439_)))
                                   ((lambda (_L27456_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2747227475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2747327478_)
                     (cons _g2747227475_ _g2747327478_))
                   '()
                   _L27456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2708127452_))))))
                   (_loop2707627432_ _target2707327426_ '()))
                 (_g2706327399_ _g2706527403_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2706327399_ _g2706527403_))
                                           (_g2706327399_ _g2706527403_))
                                       (_g2706327399_ _g2706527403_))))
                               (_g2706327399_ _g2706527403_))))
                       (_g2706327399_ _g2706527403_)))))
            (_g2706227481_ _stx27060_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27489_)
      (let ((_g2749327517_
             (lambda (_g2749427513_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2749427513_))))
        (let ((_g2749227602_
               (lambda (_g2749427521_)
                 (if (gx#stx-pair? _g2749427521_)
                     (let ((_e2749727524_ (gx#syntax-e _g2749427521_)))
                       (let ((_hd2749827528_ (##car _e2749727524_))
                             (_tl2749927531_ (##cdr _e2749727524_)))
                         (if (gx#stx-pair? _tl2749927531_)
                             (let ((_e2750027534_
                                    (gx#syntax-e _tl2749927531_)))
                               (let ((_hd2750127538_ (##car _e2750027534_))
                                     (_tl2750227541_ (##cdr _e2750027534_)))
                                 (if (gx#stx-pair/null? _tl2750227541_)
                                     (if (fx>= (gx#stx-length _tl2750227541_)
                                               '0)
                                         (let ((_g30088_
                                                (gx#syntax-split-splice
                                                 _tl2750227541_
                                                 '0)))
                                           (begin
                                             (let ((_g30089_
                                                    (values-count _g30088_)))
                                               (if (not (fx= _g30089_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30089_)))
                                             (let ((_target2750327544_
                                                    (values-ref _g30088_ 0))
                                                   (_tl2750527547_
                                                    (values-ref _g30088_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2750527547_)
                                                   (letrec ((_loop2750627550_
                                                             (lambda (_hd2750427554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2751027557_)
                       (if (gx#stx-pair? _hd2750427554_)
                           (let ((_e2750727560_ (gx#syntax-e _hd2750427554_)))
                             (let ((_lp-hd2750827564_ (##car _e2750727560_))
                                   (_lp-tl2750927567_ (##cdr _e2750727560_)))
                               (_loop2750627550_
                                _lp-tl2750927567_
                                (cons _lp-hd2750827564_ _body2751027557_))))
                           (let ((_body2751127570_ (reverse _body2751027557_)))
                             ((lambda (_L27574_ _L27576_)
                                (if (gx#identifier? _L27576_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27576_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2759327596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2759427599_)
                               (cons _g2759327596_ _g2759427599_))
                             '()
                             _L27574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2749327517_ _g2749427521_)))
                              _body2751127570_
                              _hd2750127538_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2750627550_
                                                      _target2750327544_
                                                      '()))
                                                   (_g2749327517_
                                                    _g2749427521_)))))
                                         (_g2749327517_ _g2749427521_))
                                     (_g2749327517_ _g2749427521_))))
                             (_g2749327517_ _g2749427521_))))
                     (_g2749327517_ _g2749427521_)))))
          (_g2749227602_ _$stx27489_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27607_)
      (let ((_g2761127635_
             (lambda (_g2761227631_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2761227631_))))
        (let ((_g2761027720_
               (lambda (_g2761227639_)
                 (if (gx#stx-pair? _g2761227639_)
                     (let ((_e2761527642_ (gx#syntax-e _g2761227639_)))
                       (let ((_hd2761627646_ (##car _e2761527642_))
                             (_tl2761727649_ (##cdr _e2761527642_)))
                         (if (gx#stx-pair? _tl2761727649_)
                             (let ((_e2761827652_
                                    (gx#syntax-e _tl2761727649_)))
                               (let ((_hd2761927656_ (##car _e2761827652_))
                                     (_tl2762027659_ (##cdr _e2761827652_)))
                                 (if (gx#stx-pair/null? _tl2762027659_)
                                     (if (fx>= (gx#stx-length _tl2762027659_)
                                               '0)
                                         (let ((_g30090_
                                                (gx#syntax-split-splice
                                                 _tl2762027659_
                                                 '0)))
                                           (begin
                                             (let ((_g30091_
                                                    (values-count _g30090_)))
                                               (if (not (fx= _g30091_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30091_)))
                                             (let ((_target2762127662_
                                                    (values-ref _g30090_ 0))
                                                   (_tl2762327665_
                                                    (values-ref _g30090_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2762327665_)
                                                   (letrec ((_loop2762427668_
                                                             (lambda (_hd2762227672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2762827675_)
                       (if (gx#stx-pair? _hd2762227672_)
                           (let ((_e2762527678_ (gx#syntax-e _hd2762227672_)))
                             (let ((_lp-hd2762627682_ (##car _e2762527678_))
                                   (_lp-tl2762727685_ (##cdr _e2762527678_)))
                               (_loop2762427668_
                                _lp-tl2762727685_
                                (cons _lp-hd2762627682_ _body2762827675_))))
                           (let ((_body2762927688_ (reverse _body2762827675_)))
                             ((lambda (_L27692_ _L27694_)
                                (if (gx#identifier? _L27694_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27694_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2771127714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2771227717_)
                               (cons _g2771127714_ _g2771227717_))
                             '()
                             _L27692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2761127635_ _g2761227639_)))
                              _body2762927688_
                              _hd2761927656_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2762427668_
                                                      _target2762127662_
                                                      '()))
                                                   (_g2761127635_
                                                    _g2761227639_)))))
                                         (_g2761127635_ _g2761227639_))
                                     (_g2761127635_ _g2761227639_))))
                             (_g2761127635_ _g2761227639_))))
                     (_g2761127635_ _g2761227639_)))))
          (_g2761027720_ _$stx27607_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27725_)
      (let ((_g2772927747_
             (lambda (_g2773027743_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2773027743_))))
        (let ((_g2772827802_
               (lambda (_g2773027751_)
                 (if (gx#stx-pair? _g2773027751_)
                     (let ((_e2773327754_ (gx#syntax-e _g2773027751_)))
                       (let ((_hd2773427758_ (##car _e2773327754_))
                             (_tl2773527761_ (##cdr _e2773327754_)))
                         (if (gx#stx-pair? _tl2773527761_)
                             (let ((_e2773627764_
                                    (gx#syntax-e _tl2773527761_)))
                               (let ((_hd2773727768_ (##car _e2773627764_))
                                     (_tl2773827771_ (##cdr _e2773627764_)))
                                 (if (gx#stx-pair? _tl2773827771_)
                                     (let ((_e2773927774_
                                            (gx#syntax-e _tl2773827771_)))
                                       (let ((_hd2774027778_
                                              (##car _e2773927774_))
                                             (_tl2774127781_
                                              (##cdr _e2773927774_)))
                                         (if (gx#stx-null? _tl2774127781_)
                                             ((lambda (_L27784_ _L27786_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27786_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27784_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2774027778_
                                              _hd2773727768_)
                                             (_g2772927747_ _g2773027751_))))
                                     (_g2772927747_ _g2773027751_))))
                             (_g2772927747_ _g2773027751_))))
                     (_g2772927747_ _g2773027751_)))))
          (_g2772827802_ _$stx27725_))))))
