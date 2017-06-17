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
    (lambda _$args26022_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26022_)))
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
    (lambda _$args26018_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26018_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26015_)
      (if (gx#identifier? _stx26015_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26015_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26012_)
      (if (gx#identifier? _stx26012_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26012_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26026_)
      (let ((_g2603226091_
             (lambda (_g2603326087_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2603326087_))))
        (let ((_g2603126146_
               (lambda (_g2603326095_)
                 (if (gx#stx-pair? _g2603326095_)
                     (let ((_e2607726098_ (gx#syntax-e _g2603326095_)))
                       (let ((_hd2607826102_ (##car _e2607726098_))
                             (_tl2607926105_ (##cdr _e2607726098_)))
                         (if (gx#stx-pair? _tl2607926105_)
                             (let ((_e2608026108_
                                    (gx#syntax-e _tl2607926105_)))
                               (let ((_hd2608126112_ (##car _e2608026108_))
                                     (_tl2608226115_ (##cdr _e2608026108_)))
                                 (if (gx#stx-pair? _tl2608226115_)
                                     (let ((_e2608326118_
                                            (gx#syntax-e _tl2608226115_)))
                                       (let ((_hd2608426122_
                                              (##car _e2608326118_))
                                             (_tl2608526125_
                                              (##cdr _e2608326118_)))
                                         (if (gx#stx-null? _tl2608526125_)
                                             ((lambda (_L26128_ _L26130_)
                                                (if (gx#identifier? _L26130_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26130_
                                                                (cons _L26128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2603226091_
                                                     _g2603326095_)))
                                              _hd2608426122_
                                              _hd2608126112_)
                                             (_g2603226091_ _g2603326095_))))
                                     (_g2603226091_ _g2603326095_))))
                             (_g2603226091_ _g2603326095_))))
                     (_g2603226091_ _g2603326095_)))))
          (let ((_g2603026186_
                 (lambda (_g2603326150_)
                   (if (gx#stx-pair? _g2603326150_)
                       (let ((_e2606926153_ (gx#syntax-e _g2603326150_)))
                         (let ((_hd2607026157_ (##car _e2606926153_))
                               (_tl2607126160_ (##cdr _e2606926153_)))
                           (if (gx#stx-pair? _tl2607126160_)
                               (let ((_e2607226163_
                                      (gx#syntax-e _tl2607126160_)))
                                 (let ((_hd2607326167_ (##car _e2607226163_))
                                       (_tl2607426170_ (##cdr _e2607226163_)))
                                   ((lambda (_L26173_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26173_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26173_)
                                           _stx26026_)
                                          (_g2603126146_ _g2603326150_)))
                                    _hd2607326167_)))
                               (_g2603126146_ _g2603326150_))))
                       (_g2603126146_ _g2603326150_)))))
            (let ((_g2602926327_
                   (lambda (_g2603326190_)
                     (if (gx#stx-pair? _g2603326190_)
                         (let ((_e2604726193_ (gx#syntax-e _g2603326190_)))
                           (let ((_hd2604826197_ (##car _e2604726193_))
                                 (_tl2604926200_ (##cdr _e2604726193_)))
                             (if (gx#stx-pair? _tl2604926200_)
                                 (let ((_e2605026203_
                                        (gx#syntax-e _tl2604926200_)))
                                   (let ((_hd2605126207_ (##car _e2605026203_))
                                         (_tl2605226210_
                                          (##cdr _e2605026203_)))
                                     (if (gx#stx-pair? _hd2605126207_)
                                         (let ((_e2605326213_
                                                (gx#syntax-e _hd2605126207_)))
                                           (let ((_hd2605426217_
                                                  (##car _e2605326213_))
                                                 (_tl2605526220_
                                                  (##cdr _e2605326213_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2605526220_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2605526220_)
                                                           '0)
                                                     (let ((_g29606_
                                                            (gx#syntax-split-splice
                                                             _tl2605526220_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29607_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29606_)))
                   (if (not (fx= _g29607_ 2))
                       (error "Context expects 2 values" _g29607_)))
                 (let ((_target2605626223_ (values-ref _g29606_ 0))
                       (_tl2605826226_ (values-ref _g29606_ 1)))
                   (if (gx#stx-null? _tl2605826226_)
                       (letrec ((_loop2605926229_
                                 (lambda (_hd2605726233_ _arg2606326236_)
                                   (if (gx#stx-pair? _hd2605726233_)
                                       (let ((_e2606026239_
                                              (gx#syntax-e _hd2605726233_)))
                                         (let ((_lp-hd2606126243_
                                                (##car _e2606026239_))
                                               (_lp-tl2606226246_
                                                (##cdr _e2606026239_)))
                                           (_loop2605926229_
                                            _lp-tl2606226246_
                                            (cons _lp-hd2606126243_
                                                  _arg2606326236_))))
                                       (let ((_arg2606426249_
                                              (reverse _arg2606326236_)))
                                         (if (gx#stx-pair? _tl2605226210_)
                                             (let ((_e2606526253_
                                                    (gx#syntax-e
                                                     _tl2605226210_)))
                                               (let ((_hd2606626257_
                                                      (##car _e2606526253_))
                                                     (_tl2606726260_
                                                      (##cdr _e2606526253_)))
                                                 (if (gx#stx-null?
                                                      _tl2606726260_)
                                                     ((lambda (_L26263_
                                                               _L26265_
                                                               _L26266_)
                                                        (if (gx#identifier?
                                                             _L26266_)
                                                            (let ((_g2628826296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2628926292_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2628926292_))))
                      (let ((_g2628726323_
                             (lambda (_g2628926300_)
                               ((lambda (_L26303_)
                                  (let ()
                                    (cons _L26303_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2631426317_
                                                            _g2631526320_)
                                                     (cons _g2631426317_
                                                           _g2631526320_))
                                                   (cons _L26263_ '())
                                                   _L26265_)))))
                                _g2628926300_))))
                        (_g2628726323_
                         (gx#stx-identifier _L26266_ _L26266_ '"-set!"))))
                    (_g2603026186_ _g2603326190_)))
              _hd2606626257_
              _arg2606426249_
              _hd2605426217_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2603026186_
                                                      _g2603326190_))))
                                             (_g2603026186_
                                              _g2603326190_)))))))
                         (_loop2605926229_ _target2605626223_ '()))
                       (_g2603026186_ _g2603326190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2603026186_
                                                      _g2603326190_))
                                                 (_g2603026186_
                                                  _g2603326190_))))
                                         (_g2603026186_ _g2603326190_))))
                                 (_g2603026186_ _g2603326190_))))
                         (_g2603026186_ _g2603326190_)))))
              (let ((_g2602826379_
                     (lambda (_g2603326331_)
                       (if (gx#stx-pair? _g2603326331_)
                           (let ((_e2603526334_ (gx#syntax-e _g2603326331_)))
                             (let ((_hd2603626338_ (##car _e2603526334_))
                                   (_tl2603726341_ (##cdr _e2603526334_)))
                               (if (gx#stx-pair? _tl2603726341_)
                                   (let ((_e2603826344_
                                          (gx#syntax-e _tl2603726341_)))
                                     (let ((_hd2603926348_
                                            (##car _e2603826344_))
                                           (_tl2604026351_
                                            (##cdr _e2603826344_)))
                                       (if (gx#stx-pair? _hd2603926348_)
                                           (let ((_e2604126354_
                                                  (gx#syntax-e
                                                   _hd2603926348_)))
                                             (let ((_hd2604226358_
                                                    (##car _e2604126354_))
                                                   (_tl2604326361_
                                                    (##cdr _e2604126354_)))
                                               ((lambda (_L26364_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26364_)
                                                       _stx26026_)
                                                      (_g2602926327_
                                                       _g2603326331_)))
                                                _hd2604226358_)))
                                           (_g2602926327_ _g2603326331_))))
                                   (_g2602926327_ _g2603326331_))))
                           (_g2602926327_ _g2603326331_)))))
                (_g2602826379_ _stx26026_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26384_)
      (let ((_g2638726411_
             (lambda (_g2638826407_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2638826407_))))
        (let ((_g2638626589_
               (lambda (_g2638826415_)
                 (if (gx#stx-pair? _g2638826415_)
                     (let ((_e2639126418_ (gx#syntax-e _g2638826415_)))
                       (let ((_hd2639226422_ (##car _e2639126418_))
                             (_tl2639326425_ (##cdr _e2639126418_)))
                         (if (gx#stx-pair/null? _tl2639326425_)
                             (if (fx>= (gx#stx-length _tl2639326425_) '1)
                                 (let ((_g29608_
                                        (gx#syntax-split-splice
                                         _tl2639326425_
                                         '1)))
                                   (begin
                                     (let ((_g29609_ (values-count _g29608_)))
                                       (if (not (fx= _g29609_ 2))
                                           (error "Context expects 2 values"
                                                  _g29609_)))
                                     (let ((_target2639426428_
                                            (values-ref _g29608_ 0))
                                           (_tl2639626431_
                                            (values-ref _g29608_ 1)))
                                       (if (gx#stx-pair? _tl2639626431_)
                                           (let ((_e2640326434_
                                                  (gx#syntax-e
                                                   _tl2639626431_)))
                                             (let ((_hd2640426438_
                                                    (##car _e2640326434_))
                                                   (_tl2640526441_
                                                    (##cdr _e2640326434_)))
                                               (if (gx#stx-null?
                                                    _tl2640526441_)
                                                   (letrec ((_loop2639726444_
                                                             (lambda (_hd2639526448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2640126451_)
                       (if (gx#stx-pair? _hd2639526448_)
                           (let ((_e2639826454_ (gx#syntax-e _hd2639526448_)))
                             (let ((_lp-hd2639926458_ (##car _e2639826454_))
                                   (_lp-tl2640026461_ (##cdr _e2639826454_)))
                               (_loop2639726444_
                                _lp-tl2640026461_
                                (cons _lp-hd2639926458_ _tgt2640126451_))))
                           (let ((_tgt2640226464_ (reverse _tgt2640126451_)))
                             ((lambda (_L26468_ _L26470_)
                                (let ((_g2648826505_
                                       (lambda (_g2648926501_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2648926501_))))
                                  (let ((_g2648726577_
                                         (lambda (_g2648926509_)
                                           (if (gx#stx-pair/null?
                                                _g2648926509_)
                                               (if (fx>= (gx#stx-length
                                                          _g2648926509_)
                                                         '0)
                                                   (let ((_g29610_
                                                          (gx#syntax-split-splice
                                                           _g2648926509_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29611_
                                                              (values-count
                                                               _g29610_)))
                                                         (if (not (fx= _g29611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29611_)))
               (let ((_target2649126512_ (values-ref _g29610_ 0))
                     (_tl2649326515_ (values-ref _g29610_ 1)))
                 (if (gx#stx-null? _tl2649326515_)
                     (letrec ((_loop2649426518_
                               (lambda (_hd2649226522_ _$e2649826525_)
                                 (if (gx#stx-pair? _hd2649226522_)
                                     (let ((_e2649526528_
                                            (gx#syntax-e _hd2649226522_)))
                                       (let ((_lp-hd2649626532_
                                              (##car _e2649526528_))
                                             (_lp-tl2649726535_
                                              (##cdr _e2649526528_)))
                                         (_loop2649426518_
                                          _lp-tl2649726535_
                                          (cons _lp-hd2649626532_
                                                _$e2649826525_))))
                                     (let ((_$e2649926538_
                                            (reverse _$e2649826525_)))
                                       ((lambda (_L26542_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2655726563_ _g2655826566_)
                                       (cons _g2655726563_ _g2655826566_))
                                     '()
                                     _L26542_))
                            (cons _L26468_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26542_ _L26470_)
                  (foldr (lambda (_g2655926569_ _g2656026572_ _g2656126574_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2656026572_
                                             (cons _g2655926569_ '())))
                                 _g2656126574_))
                         '()
                         _L26542_
                         _L26470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2649926538_))))))
                       (_loop2649426518_ _target2649126512_ '()))
                     (_g2648826505_ _g2648926509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2648826505_
                                                    _g2648926509_))
                                               (_g2648826505_
                                                _g2648926509_)))))
                                    (_g2648726577_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2658026583_
                                                        _g2658126586_)
                                                 (cons _g2658026583_
                                                       _g2658126586_))
                                               '()
                                               _L26470_)))))))
                              _hd2640426438_
                              _tgt2640226464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2639726444_
                                                      _target2639426428_
                                                      '()))
                                                   (_g2638726411_
                                                    _g2638826415_))))
                                           (_g2638726411_ _g2638826415_)))))
                                 (_g2638726411_ _g2638826415_))
                             (_g2638726411_ _g2638826415_))))
                     (_g2638726411_ _g2638826415_)))))
          (_g2638626589_ _stx26384_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26595_)
      (let ((_g2659926657_
             (lambda (_g2660026653_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2660026653_))))
        (let ((_g2659826934_
               (lambda (_g2660026661_)
                 (if (gx#stx-pair? _g2660026661_)
                     (let ((_e2662026664_ (gx#syntax-e _g2660026661_)))
                       (let ((_hd2662126668_ (##car _e2662026664_))
                             (_tl2662226671_ (##cdr _e2662026664_)))
                         (if (gx#stx-pair? _tl2662226671_)
                             (let ((_e2662326674_
                                    (gx#syntax-e _tl2662226671_)))
                               (let ((_hd2662426678_ (##car _e2662326674_))
                                     (_tl2662526681_ (##cdr _e2662326674_)))
                                 (if (gx#stx-pair/null? _hd2662426678_)
                                     (if (fx>= (gx#stx-length _hd2662426678_)
                                               '0)
                                         (let ((_g29612_
                                                (gx#syntax-split-splice
                                                 _hd2662426678_
                                                 '0)))
                                           (begin
                                             (let ((_g29613_
                                                    (values-count _g29612_)))
                                               (if (not (fx= _g29613_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29613_)))
                                             (let ((_target2662626684_
                                                    (values-ref _g29612_ 0))
                                                   (_tl2662826687_
                                                    (values-ref _g29612_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2662826687_)
                                                   (letrec ((_loop2662926690_
                                                             (lambda (_hd2662726694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2663326697_
                              _param2663426699_)
                       (if (gx#stx-pair? _hd2662726694_)
                           (let ((_e2663026702_ (gx#syntax-e _hd2662726694_)))
                             (let ((_lp-hd2663126706_ (##car _e2663026702_))
                                   (_lp-tl2663226709_ (##cdr _e2663026702_)))
                               (if (gx#stx-pair? _lp-hd2663126706_)
                                   (let ((_e2663726712_
                                          (gx#syntax-e _lp-hd2663126706_)))
                                     (let ((_hd2663826716_
                                            (##car _e2663726712_))
                                           (_tl2663926719_
                                            (##cdr _e2663726712_)))
                                       (if (gx#stx-pair? _tl2663926719_)
                                           (let ((_e2664026722_
                                                  (gx#syntax-e
                                                   _tl2663926719_)))
                                             (let ((_hd2664126726_
                                                    (##car _e2664026722_))
                                                   (_tl2664226729_
                                                    (##cdr _e2664026722_)))
                                               (if (gx#stx-null?
                                                    _tl2664226729_)
                                                   (_loop2662926690_
                                                    _lp-tl2663226709_
                                                    (cons _hd2664126726_
                                                          _expr2663326697_)
                                                    (cons _hd2663826716_
                                                          _param2663426699_))
                                                   (_g2659926657_
                                                    _g2660026661_))))
                                           (_g2659926657_ _g2660026661_))))
                                   (_g2659926657_ _g2660026661_))))
                           (let ((_expr2663526732_ (reverse _expr2663326697_))
                                 (_param2663626735_
                                  (reverse _param2663426699_)))
                             (if (gx#stx-pair/null? _tl2662526681_)
                                 (if (fx>= (gx#stx-length _tl2662526681_) '0)
                                     (let ((_g29614_
                                            (gx#syntax-split-splice
                                             _tl2662526681_
                                             '0)))
                                       (begin
                                         (let ((_g29615_
                                                (values-count _g29614_)))
                                           (if (not (fx= _g29615_ 2))
                                               (error "Context expects 2 values"
                                                      _g29615_)))
                                         (let ((_target2664326738_
                                                (values-ref _g29614_ 0))
                                               (_tl2664526741_
                                                (values-ref _g29614_ 1)))
                                           (if (gx#stx-null? _tl2664526741_)
                                               (letrec ((_loop2664626744_
                                                         (lambda (_hd2664426748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2665026751_)
                   (if (gx#stx-pair? _hd2664426748_)
                       (let ((_e2664726754_ (gx#syntax-e _hd2664426748_)))
                         (let ((_lp-hd2664826758_ (##car _e2664726754_))
                               (_lp-tl2664926761_ (##cdr _e2664726754_)))
                           (_loop2664626744_
                            _lp-tl2664926761_
                            (cons _lp-hd2664826758_ _body2665026751_))))
                       (let ((_body2665126764_ (reverse _body2665026751_)))
                         ((lambda (_L26768_ _L26770_ _L26771_)
                            (let ((_g2679426802_
                                   (lambda (_g2679526798_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2679526798_))))
                              (let ((_g2679326922_
                                     (lambda (_g2679526806_)
                                       ((lambda (_L26809_)
                                          (let ()
                                            (let ((_g2682126838_
                                                   (lambda (_g2682226834_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2682226834_))))
                                              (let ((_g2682026902_
                                                     (lambda (_g2682226842_)
                                                       (if (gx#stx-pair/null?
                                                            _g2682226842_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2682226842_)
                             '0)
                       (let ((_g29616_
                              (gx#syntax-split-splice _g2682226842_ '0)))
                         (begin
                           (let ((_g29617_ (values-count _g29616_)))
                             (if (not (fx= _g29617_ 2))
                                 (error "Context expects 2 values" _g29617_)))
                           (let ((_target2682426845_ (values-ref _g29616_ 0))
                                 (_tl2682626848_ (values-ref _g29616_ 1)))
                             (if (gx#stx-null? _tl2682626848_)
                                 (letrec ((_loop2682726851_
                                           (lambda (_hd2682526855_
                                                    _arg2683126858_)
                                             (if (gx#stx-pair? _hd2682526855_)
                                                 (let ((_e2682826861_
                                                        (gx#syntax-e
                                                         _hd2682526855_)))
                                                   (let ((_lp-hd2682926865_
                                                          (##car _e2682826861_))
                                                         (_lp-tl2683026868_
                                                          (##cdr _e2682826861_)))
                                                     (_loop2682726851_
                                                      _lp-tl2683026868_
                                                      (cons _lp-hd2682926865_
                                                            _arg2683126858_))))
                                                 (let ((_arg2683226871_
                                                        (reverse _arg2683126858_)))
                                                   ((lambda (_L26875_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26809_
                              (begin
                                '#!void
                                (foldr (lambda (_g2689326896_ _g2689426899_)
                                         (cons _g2689326896_ _g2689426899_))
                                       '()
                                       _L26875_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2683226871_))))))
                                   (_loop2682726851_ _target2682426845_ '()))
                                 (_g2682126838_ _g2682226842_)))))
                       (_g2682126838_ _g2682226842_))
                   (_g2682126838_ _g2682226842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2682026902_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2690526908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2690626911_)
                            (cons _g2690526908_ _g2690626911_))
                          '()
                          _L26771_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2691326916_ _g2691426919_)
                            (cons _g2691326916_ _g2691426919_))
                          '()
                          _L26770_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2679526806_))))
                                (_g2679326922_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2692526928_
                                                                _g2692626931_)
                                                         (cons _g2692526928_
                                                               _g2692626931_))
                                                       '()
                                                       _L26768_))))
                                  (gx#stx-source _stx26595_))))))
                          _body2665126764_
                          _expr2663526732_
                          _param2663626735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2664626744_
                                                  _target2664326738_
                                                  '()))
                                               (_g2659926657_
                                                _g2660026661_)))))
                                     (_g2659926657_ _g2660026661_))
                                 (_g2659926657_ _g2660026661_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2662926690_
                                                      _target2662626684_
                                                      '()
                                                      '()))
                                                   (_g2659926657_
                                                    _g2660026661_)))))
                                         (_g2659926657_ _g2660026661_))
                                     (_g2659926657_ _g2660026661_))))
                             (_g2659926657_ _g2660026661_))))
                     (_g2659926657_ _g2660026661_)))))
          (let ((_g2659727016_
                 (lambda (_g2660026938_)
                   (if (gx#stx-pair? _g2660026938_)
                       (let ((_e2660226941_ (gx#syntax-e _g2660026938_)))
                         (let ((_hd2660326945_ (##car _e2660226941_))
                               (_tl2660426948_ (##cdr _e2660226941_)))
                           (if (gx#stx-pair? _tl2660426948_)
                               (let ((_e2660526951_
                                      (gx#syntax-e _tl2660426948_)))
                                 (let ((_hd2660626955_ (##car _e2660526951_))
                                       (_tl2660726958_ (##cdr _e2660526951_)))
                                   (if (gx#stx-null? _hd2660626955_)
                                       (if (gx#stx-pair/null? _tl2660726958_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2660726958_)
                                                     '0)
                                               (let ((_g29618_
                                                      (gx#syntax-split-splice
                                                       _tl2660726958_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29619_
                                                          (values-count
                                                           _g29618_)))
                                                     (if (not (fx= _g29619_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29619_)))
                                                   (let ((_target2660826961_
                                                          (values-ref
                                                           _g29618_
                                                           0))
                                                         (_tl2661026964_
                                                          (values-ref
                                                           _g29618_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2661026964_)
                                                         (letrec ((_loop2661126967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2660926971_ _body2661526974_)
                             (if (gx#stx-pair? _hd2660926971_)
                                 (let ((_e2661226977_
                                        (gx#syntax-e _hd2660926971_)))
                                   (let ((_lp-hd2661326981_
                                          (##car _e2661226977_))
                                         (_lp-tl2661426984_
                                          (##cdr _e2661226977_)))
                                     (_loop2661126967_
                                      _lp-tl2661426984_
                                      (cons _lp-hd2661326981_
                                            _body2661526974_))))
                                 (let ((_body2661626987_
                                        (reverse _body2661526974_)))
                                   ((lambda (_L26991_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2700727010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2700827013_)
                     (cons _g2700727010_ _g2700827013_))
                   '()
                   _L26991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2661626987_))))))
                   (_loop2661126967_ _target2660826961_ '()))
                 (_g2659826934_ _g2660026938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2659826934_ _g2660026938_))
                                           (_g2659826934_ _g2660026938_))
                                       (_g2659826934_ _g2660026938_))))
                               (_g2659826934_ _g2660026938_))))
                       (_g2659826934_ _g2660026938_)))))
            (_g2659727016_ _stx26595_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27024_)
      (let ((_g2702827052_
             (lambda (_g2702927048_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2702927048_))))
        (let ((_g2702727137_
               (lambda (_g2702927056_)
                 (if (gx#stx-pair? _g2702927056_)
                     (let ((_e2703227059_ (gx#syntax-e _g2702927056_)))
                       (let ((_hd2703327063_ (##car _e2703227059_))
                             (_tl2703427066_ (##cdr _e2703227059_)))
                         (if (gx#stx-pair? _tl2703427066_)
                             (let ((_e2703527069_
                                    (gx#syntax-e _tl2703427066_)))
                               (let ((_hd2703627073_ (##car _e2703527069_))
                                     (_tl2703727076_ (##cdr _e2703527069_)))
                                 (if (gx#stx-pair/null? _tl2703727076_)
                                     (if (fx>= (gx#stx-length _tl2703727076_)
                                               '0)
                                         (let ((_g29620_
                                                (gx#syntax-split-splice
                                                 _tl2703727076_
                                                 '0)))
                                           (begin
                                             (let ((_g29621_
                                                    (values-count _g29620_)))
                                               (if (not (fx= _g29621_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29621_)))
                                             (let ((_target2703827079_
                                                    (values-ref _g29620_ 0))
                                                   (_tl2704027082_
                                                    (values-ref _g29620_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2704027082_)
                                                   (letrec ((_loop2704127085_
                                                             (lambda (_hd2703927089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2704527092_)
                       (if (gx#stx-pair? _hd2703927089_)
                           (let ((_e2704227095_ (gx#syntax-e _hd2703927089_)))
                             (let ((_lp-hd2704327099_ (##car _e2704227095_))
                                   (_lp-tl2704427102_ (##cdr _e2704227095_)))
                               (_loop2704127085_
                                _lp-tl2704427102_
                                (cons _lp-hd2704327099_ _body2704527092_))))
                           (let ((_body2704627105_ (reverse _body2704527092_)))
                             ((lambda (_L27109_ _L27111_)
                                (if (gx#identifier? _L27111_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27111_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2712827131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2712927134_)
                               (cons _g2712827131_ _g2712927134_))
                             '()
                             _L27109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2702827052_ _g2702927056_)))
                              _body2704627105_
                              _hd2703627073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2704127085_
                                                      _target2703827079_
                                                      '()))
                                                   (_g2702827052_
                                                    _g2702927056_)))))
                                         (_g2702827052_ _g2702927056_))
                                     (_g2702827052_ _g2702927056_))))
                             (_g2702827052_ _g2702927056_))))
                     (_g2702827052_ _g2702927056_)))))
          (_g2702727137_ _$stx27024_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27142_)
      (let ((_g2714627170_
             (lambda (_g2714727166_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2714727166_))))
        (let ((_g2714527255_
               (lambda (_g2714727174_)
                 (if (gx#stx-pair? _g2714727174_)
                     (let ((_e2715027177_ (gx#syntax-e _g2714727174_)))
                       (let ((_hd2715127181_ (##car _e2715027177_))
                             (_tl2715227184_ (##cdr _e2715027177_)))
                         (if (gx#stx-pair? _tl2715227184_)
                             (let ((_e2715327187_
                                    (gx#syntax-e _tl2715227184_)))
                               (let ((_hd2715427191_ (##car _e2715327187_))
                                     (_tl2715527194_ (##cdr _e2715327187_)))
                                 (if (gx#stx-pair/null? _tl2715527194_)
                                     (if (fx>= (gx#stx-length _tl2715527194_)
                                               '0)
                                         (let ((_g29622_
                                                (gx#syntax-split-splice
                                                 _tl2715527194_
                                                 '0)))
                                           (begin
                                             (let ((_g29623_
                                                    (values-count _g29622_)))
                                               (if (not (fx= _g29623_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29623_)))
                                             (let ((_target2715627197_
                                                    (values-ref _g29622_ 0))
                                                   (_tl2715827200_
                                                    (values-ref _g29622_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2715827200_)
                                                   (letrec ((_loop2715927203_
                                                             (lambda (_hd2715727207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2716327210_)
                       (if (gx#stx-pair? _hd2715727207_)
                           (let ((_e2716027213_ (gx#syntax-e _hd2715727207_)))
                             (let ((_lp-hd2716127217_ (##car _e2716027213_))
                                   (_lp-tl2716227220_ (##cdr _e2716027213_)))
                               (_loop2715927203_
                                _lp-tl2716227220_
                                (cons _lp-hd2716127217_ _body2716327210_))))
                           (let ((_body2716427223_ (reverse _body2716327210_)))
                             ((lambda (_L27227_ _L27229_)
                                (if (gx#identifier? _L27229_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27229_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2724627249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2724727252_)
                               (cons _g2724627249_ _g2724727252_))
                             '()
                             _L27227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2714627170_ _g2714727174_)))
                              _body2716427223_
                              _hd2715427191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2715927203_
                                                      _target2715627197_
                                                      '()))
                                                   (_g2714627170_
                                                    _g2714727174_)))))
                                         (_g2714627170_ _g2714727174_))
                                     (_g2714627170_ _g2714727174_))))
                             (_g2714627170_ _g2714727174_))))
                     (_g2714627170_ _g2714727174_)))))
          (_g2714527255_ _$stx27142_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27260_)
      (let ((_g2726427282_
             (lambda (_g2726527278_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2726527278_))))
        (let ((_g2726327337_
               (lambda (_g2726527286_)
                 (if (gx#stx-pair? _g2726527286_)
                     (let ((_e2726827289_ (gx#syntax-e _g2726527286_)))
                       (let ((_hd2726927293_ (##car _e2726827289_))
                             (_tl2727027296_ (##cdr _e2726827289_)))
                         (if (gx#stx-pair? _tl2727027296_)
                             (let ((_e2727127299_
                                    (gx#syntax-e _tl2727027296_)))
                               (let ((_hd2727227303_ (##car _e2727127299_))
                                     (_tl2727327306_ (##cdr _e2727127299_)))
                                 (if (gx#stx-pair? _tl2727327306_)
                                     (let ((_e2727427309_
                                            (gx#syntax-e _tl2727327306_)))
                                       (let ((_hd2727527313_
                                              (##car _e2727427309_))
                                             (_tl2727627316_
                                              (##cdr _e2727427309_)))
                                         (if (gx#stx-null? _tl2727627316_)
                                             ((lambda (_L27319_ _L27321_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27321_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27319_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2727527313_
                                              _hd2727227303_)
                                             (_g2726427282_ _g2726527286_))))
                                     (_g2726427282_ _g2726527286_))))
                             (_g2726427282_ _g2726527286_))))
                     (_g2726427282_ _g2726527286_)))))
          (_g2726327337_ _$stx27260_))))))
