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
    (lambda _$args26251_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26251_)))
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
    (lambda _$args26247_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26247_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26244_)
      (if (gx#identifier? _stx26244_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26244_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26241_)
      (if (gx#identifier? _stx26241_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26241_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26255_)
      (let ((_g2626126320_
             (lambda (_g2626226316_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2626226316_))))
        (let ((_g2626026375_
               (lambda (_g2626226324_)
                 (if (gx#stx-pair? _g2626226324_)
                     (let ((_e2630626327_ (gx#syntax-e _g2626226324_)))
                       (let ((_hd2630726331_ (##car _e2630626327_))
                             (_tl2630826334_ (##cdr _e2630626327_)))
                         (if (gx#stx-pair? _tl2630826334_)
                             (let ((_e2630926337_
                                    (gx#syntax-e _tl2630826334_)))
                               (let ((_hd2631026341_ (##car _e2630926337_))
                                     (_tl2631126344_ (##cdr _e2630926337_)))
                                 (if (gx#stx-pair? _tl2631126344_)
                                     (let ((_e2631226347_
                                            (gx#syntax-e _tl2631126344_)))
                                       (let ((_hd2631326351_
                                              (##car _e2631226347_))
                                             (_tl2631426354_
                                              (##cdr _e2631226347_)))
                                         (if (gx#stx-null? _tl2631426354_)
                                             ((lambda (_L26357_ _L26359_)
                                                (if (gx#identifier? _L26359_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26359_
                                                                (cons _L26357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2626126320_
                                                     _g2626226324_)))
                                              _hd2631326351_
                                              _hd2631026341_)
                                             (_g2626126320_ _g2626226324_))))
                                     (_g2626126320_ _g2626226324_))))
                             (_g2626126320_ _g2626226324_))))
                     (_g2626126320_ _g2626226324_)))))
          (let ((_g2625926415_
                 (lambda (_g2626226379_)
                   (if (gx#stx-pair? _g2626226379_)
                       (let ((_e2629826382_ (gx#syntax-e _g2626226379_)))
                         (let ((_hd2629926386_ (##car _e2629826382_))
                               (_tl2630026389_ (##cdr _e2629826382_)))
                           (if (gx#stx-pair? _tl2630026389_)
                               (let ((_e2630126392_
                                      (gx#syntax-e _tl2630026389_)))
                                 (let ((_hd2630226396_ (##car _e2630126392_))
                                       (_tl2630326399_ (##cdr _e2630126392_)))
                                   ((lambda (_L26402_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26402_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26402_)
                                           _stx26255_)
                                          (_g2626026375_ _g2626226379_)))
                                    _hd2630226396_)))
                               (_g2626026375_ _g2626226379_))))
                       (_g2626026375_ _g2626226379_)))))
            (let ((_g2625826556_
                   (lambda (_g2626226419_)
                     (if (gx#stx-pair? _g2626226419_)
                         (let ((_e2627626422_ (gx#syntax-e _g2626226419_)))
                           (let ((_hd2627726426_ (##car _e2627626422_))
                                 (_tl2627826429_ (##cdr _e2627626422_)))
                             (if (gx#stx-pair? _tl2627826429_)
                                 (let ((_e2627926432_
                                        (gx#syntax-e _tl2627826429_)))
                                   (let ((_hd2628026436_ (##car _e2627926432_))
                                         (_tl2628126439_
                                          (##cdr _e2627926432_)))
                                     (if (gx#stx-pair? _hd2628026436_)
                                         (let ((_e2628226442_
                                                (gx#syntax-e _hd2628026436_)))
                                           (let ((_hd2628326446_
                                                  (##car _e2628226442_))
                                                 (_tl2628426449_
                                                  (##cdr _e2628226442_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2628426449_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2628426449_)
                                                           '0)
                                                     (let ((_g29836_
                                                            (gx#syntax-split-splice
                                                             _tl2628426449_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29837_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29836_)))
                   (if (not (fx= _g29837_ 2))
                       (error "Context expects 2 values" _g29837_)))
                 (let ((_target2628526452_ (values-ref _g29836_ 0))
                       (_tl2628726455_ (values-ref _g29836_ 1)))
                   (if (gx#stx-null? _tl2628726455_)
                       (letrec ((_loop2628826458_
                                 (lambda (_hd2628626462_ _arg2629226465_)
                                   (if (gx#stx-pair? _hd2628626462_)
                                       (let ((_e2628926468_
                                              (gx#syntax-e _hd2628626462_)))
                                         (let ((_lp-hd2629026472_
                                                (##car _e2628926468_))
                                               (_lp-tl2629126475_
                                                (##cdr _e2628926468_)))
                                           (_loop2628826458_
                                            _lp-tl2629126475_
                                            (cons _lp-hd2629026472_
                                                  _arg2629226465_))))
                                       (let ((_arg2629326478_
                                              (reverse _arg2629226465_)))
                                         (if (gx#stx-pair? _tl2628126439_)
                                             (let ((_e2629426482_
                                                    (gx#syntax-e
                                                     _tl2628126439_)))
                                               (let ((_hd2629526486_
                                                      (##car _e2629426482_))
                                                     (_tl2629626489_
                                                      (##cdr _e2629426482_)))
                                                 (if (gx#stx-null?
                                                      _tl2629626489_)
                                                     ((lambda (_L26492_
                                                               _L26494_
                                                               _L26495_)
                                                        (if (gx#identifier?
                                                             _L26495_)
                                                            (let ((_g2651726525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2651826521_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2651826521_))))
                      (let ((_g2651626552_
                             (lambda (_g2651826529_)
                               ((lambda (_L26532_)
                                  (let ()
                                    (cons _L26532_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2654326546_
                                                            _g2654426549_)
                                                     (cons _g2654326546_
                                                           _g2654426549_))
                                                   (cons _L26492_ '())
                                                   _L26494_)))))
                                _g2651826529_))))
                        (_g2651626552_
                         (gx#stx-identifier _L26495_ _L26495_ '"-set!"))))
                    (_g2625926415_ _g2626226419_)))
              _hd2629526486_
              _arg2629326478_
              _hd2628326446_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2625926415_
                                                      _g2626226419_))))
                                             (_g2625926415_
                                              _g2626226419_)))))))
                         (_loop2628826458_ _target2628526452_ '()))
                       (_g2625926415_ _g2626226419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2625926415_
                                                      _g2626226419_))
                                                 (_g2625926415_
                                                  _g2626226419_))))
                                         (_g2625926415_ _g2626226419_))))
                                 (_g2625926415_ _g2626226419_))))
                         (_g2625926415_ _g2626226419_)))))
              (let ((_g2625726608_
                     (lambda (_g2626226560_)
                       (if (gx#stx-pair? _g2626226560_)
                           (let ((_e2626426563_ (gx#syntax-e _g2626226560_)))
                             (let ((_hd2626526567_ (##car _e2626426563_))
                                   (_tl2626626570_ (##cdr _e2626426563_)))
                               (if (gx#stx-pair? _tl2626626570_)
                                   (let ((_e2626726573_
                                          (gx#syntax-e _tl2626626570_)))
                                     (let ((_hd2626826577_
                                            (##car _e2626726573_))
                                           (_tl2626926580_
                                            (##cdr _e2626726573_)))
                                       (if (gx#stx-pair? _hd2626826577_)
                                           (let ((_e2627026583_
                                                  (gx#syntax-e
                                                   _hd2626826577_)))
                                             (let ((_hd2627126587_
                                                    (##car _e2627026583_))
                                                   (_tl2627226590_
                                                    (##cdr _e2627026583_)))
                                               ((lambda (_L26593_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26593_)
                                                       _stx26255_)
                                                      (_g2625826556_
                                                       _g2626226560_)))
                                                _hd2627126587_)))
                                           (_g2625826556_ _g2626226560_))))
                                   (_g2625826556_ _g2626226560_))))
                           (_g2625826556_ _g2626226560_)))))
                (_g2625726608_ _stx26255_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26613_)
      (let ((_g2661626640_
             (lambda (_g2661726636_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2661726636_))))
        (let ((_g2661526818_
               (lambda (_g2661726644_)
                 (if (gx#stx-pair? _g2661726644_)
                     (let ((_e2662026647_ (gx#syntax-e _g2661726644_)))
                       (let ((_hd2662126651_ (##car _e2662026647_))
                             (_tl2662226654_ (##cdr _e2662026647_)))
                         (if (gx#stx-pair/null? _tl2662226654_)
                             (if (fx>= (gx#stx-length _tl2662226654_) '1)
                                 (let ((_g29838_
                                        (gx#syntax-split-splice
                                         _tl2662226654_
                                         '1)))
                                   (begin
                                     (let ((_g29839_ (values-count _g29838_)))
                                       (if (not (fx= _g29839_ 2))
                                           (error "Context expects 2 values"
                                                  _g29839_)))
                                     (let ((_target2662326657_
                                            (values-ref _g29838_ 0))
                                           (_tl2662526660_
                                            (values-ref _g29838_ 1)))
                                       (if (gx#stx-pair? _tl2662526660_)
                                           (let ((_e2663226663_
                                                  (gx#syntax-e
                                                   _tl2662526660_)))
                                             (let ((_hd2663326667_
                                                    (##car _e2663226663_))
                                                   (_tl2663426670_
                                                    (##cdr _e2663226663_)))
                                               (if (gx#stx-null?
                                                    _tl2663426670_)
                                                   (letrec ((_loop2662626673_
                                                             (lambda (_hd2662426677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2663026680_)
                       (if (gx#stx-pair? _hd2662426677_)
                           (let ((_e2662726683_ (gx#syntax-e _hd2662426677_)))
                             (let ((_lp-hd2662826687_ (##car _e2662726683_))
                                   (_lp-tl2662926690_ (##cdr _e2662726683_)))
                               (_loop2662626673_
                                _lp-tl2662926690_
                                (cons _lp-hd2662826687_ _tgt2663026680_))))
                           (let ((_tgt2663126693_ (reverse _tgt2663026680_)))
                             ((lambda (_L26697_ _L26699_)
                                (let ((_g2671726734_
                                       (lambda (_g2671826730_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2671826730_))))
                                  (let ((_g2671626806_
                                         (lambda (_g2671826738_)
                                           (if (gx#stx-pair/null?
                                                _g2671826738_)
                                               (if (fx>= (gx#stx-length
                                                          _g2671826738_)
                                                         '0)
                                                   (let ((_g29840_
                                                          (gx#syntax-split-splice
                                                           _g2671826738_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29841_
                                                              (values-count
                                                               _g29840_)))
                                                         (if (not (fx= _g29841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29841_)))
               (let ((_target2672026741_ (values-ref _g29840_ 0))
                     (_tl2672226744_ (values-ref _g29840_ 1)))
                 (if (gx#stx-null? _tl2672226744_)
                     (letrec ((_loop2672326747_
                               (lambda (_hd2672126751_ _$e2672726754_)
                                 (if (gx#stx-pair? _hd2672126751_)
                                     (let ((_e2672426757_
                                            (gx#syntax-e _hd2672126751_)))
                                       (let ((_lp-hd2672526761_
                                              (##car _e2672426757_))
                                             (_lp-tl2672626764_
                                              (##cdr _e2672426757_)))
                                         (_loop2672326747_
                                          _lp-tl2672626764_
                                          (cons _lp-hd2672526761_
                                                _$e2672726754_))))
                                     (let ((_$e2672826767_
                                            (reverse _$e2672726754_)))
                                       ((lambda (_L26771_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2678626792_ _g2678726795_)
                                       (cons _g2678626792_ _g2678726795_))
                                     '()
                                     _L26771_))
                            (cons _L26697_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26771_ _L26699_)
                  (foldr (lambda (_g2678826798_ _g2678926801_ _g2679026803_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2678926801_
                                             (cons _g2678826798_ '())))
                                 _g2679026803_))
                         '()
                         _L26771_
                         _L26699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2672826767_))))))
                       (_loop2672326747_ _target2672026741_ '()))
                     (_g2671726734_ _g2671826738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2671726734_
                                                    _g2671826738_))
                                               (_g2671726734_
                                                _g2671826738_)))))
                                    (_g2671626806_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2680926812_
                                                        _g2681026815_)
                                                 (cons _g2680926812_
                                                       _g2681026815_))
                                               '()
                                               _L26699_)))))))
                              _hd2663326667_
                              _tgt2663126693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2662626673_
                                                      _target2662326657_
                                                      '()))
                                                   (_g2661626640_
                                                    _g2661726644_))))
                                           (_g2661626640_ _g2661726644_)))))
                                 (_g2661626640_ _g2661726644_))
                             (_g2661626640_ _g2661726644_))))
                     (_g2661626640_ _g2661726644_)))))
          (_g2661526818_ _stx26613_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26824_)
      (let ((_g2682826886_
             (lambda (_g2682926882_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2682926882_))))
        (let ((_g2682727163_
               (lambda (_g2682926890_)
                 (if (gx#stx-pair? _g2682926890_)
                     (let ((_e2684926893_ (gx#syntax-e _g2682926890_)))
                       (let ((_hd2685026897_ (##car _e2684926893_))
                             (_tl2685126900_ (##cdr _e2684926893_)))
                         (if (gx#stx-pair? _tl2685126900_)
                             (let ((_e2685226903_
                                    (gx#syntax-e _tl2685126900_)))
                               (let ((_hd2685326907_ (##car _e2685226903_))
                                     (_tl2685426910_ (##cdr _e2685226903_)))
                                 (if (gx#stx-pair/null? _hd2685326907_)
                                     (if (fx>= (gx#stx-length _hd2685326907_)
                                               '0)
                                         (let ((_g29842_
                                                (gx#syntax-split-splice
                                                 _hd2685326907_
                                                 '0)))
                                           (begin
                                             (let ((_g29843_
                                                    (values-count _g29842_)))
                                               (if (not (fx= _g29843_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29843_)))
                                             (let ((_target2685526913_
                                                    (values-ref _g29842_ 0))
                                                   (_tl2685726916_
                                                    (values-ref _g29842_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2685726916_)
                                                   (letrec ((_loop2685826919_
                                                             (lambda (_hd2685626923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2686226926_
                              _param2686326928_)
                       (if (gx#stx-pair? _hd2685626923_)
                           (let ((_e2685926931_ (gx#syntax-e _hd2685626923_)))
                             (let ((_lp-hd2686026935_ (##car _e2685926931_))
                                   (_lp-tl2686126938_ (##cdr _e2685926931_)))
                               (if (gx#stx-pair? _lp-hd2686026935_)
                                   (let ((_e2686626941_
                                          (gx#syntax-e _lp-hd2686026935_)))
                                     (let ((_hd2686726945_
                                            (##car _e2686626941_))
                                           (_tl2686826948_
                                            (##cdr _e2686626941_)))
                                       (if (gx#stx-pair? _tl2686826948_)
                                           (let ((_e2686926951_
                                                  (gx#syntax-e
                                                   _tl2686826948_)))
                                             (let ((_hd2687026955_
                                                    (##car _e2686926951_))
                                                   (_tl2687126958_
                                                    (##cdr _e2686926951_)))
                                               (if (gx#stx-null?
                                                    _tl2687126958_)
                                                   (_loop2685826919_
                                                    _lp-tl2686126938_
                                                    (cons _hd2687026955_
                                                          _expr2686226926_)
                                                    (cons _hd2686726945_
                                                          _param2686326928_))
                                                   (_g2682826886_
                                                    _g2682926890_))))
                                           (_g2682826886_ _g2682926890_))))
                                   (_g2682826886_ _g2682926890_))))
                           (let ((_expr2686426961_ (reverse _expr2686226926_))
                                 (_param2686526964_
                                  (reverse _param2686326928_)))
                             (if (gx#stx-pair/null? _tl2685426910_)
                                 (if (fx>= (gx#stx-length _tl2685426910_) '0)
                                     (let ((_g29844_
                                            (gx#syntax-split-splice
                                             _tl2685426910_
                                             '0)))
                                       (begin
                                         (let ((_g29845_
                                                (values-count _g29844_)))
                                           (if (not (fx= _g29845_ 2))
                                               (error "Context expects 2 values"
                                                      _g29845_)))
                                         (let ((_target2687226967_
                                                (values-ref _g29844_ 0))
                                               (_tl2687426970_
                                                (values-ref _g29844_ 1)))
                                           (if (gx#stx-null? _tl2687426970_)
                                               (letrec ((_loop2687526973_
                                                         (lambda (_hd2687326977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2687926980_)
                   (if (gx#stx-pair? _hd2687326977_)
                       (let ((_e2687626983_ (gx#syntax-e _hd2687326977_)))
                         (let ((_lp-hd2687726987_ (##car _e2687626983_))
                               (_lp-tl2687826990_ (##cdr _e2687626983_)))
                           (_loop2687526973_
                            _lp-tl2687826990_
                            (cons _lp-hd2687726987_ _body2687926980_))))
                       (let ((_body2688026993_ (reverse _body2687926980_)))
                         ((lambda (_L26997_ _L26999_ _L27000_)
                            (let ((_g2702327031_
                                   (lambda (_g2702427027_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2702427027_))))
                              (let ((_g2702227151_
                                     (lambda (_g2702427035_)
                                       ((lambda (_L27038_)
                                          (let ()
                                            (let ((_g2705027067_
                                                   (lambda (_g2705127063_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2705127063_))))
                                              (let ((_g2704927131_
                                                     (lambda (_g2705127071_)
                                                       (if (gx#stx-pair/null?
                                                            _g2705127071_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2705127071_)
                             '0)
                       (let ((_g29846_
                              (gx#syntax-split-splice _g2705127071_ '0)))
                         (begin
                           (let ((_g29847_ (values-count _g29846_)))
                             (if (not (fx= _g29847_ 2))
                                 (error "Context expects 2 values" _g29847_)))
                           (let ((_target2705327074_ (values-ref _g29846_ 0))
                                 (_tl2705527077_ (values-ref _g29846_ 1)))
                             (if (gx#stx-null? _tl2705527077_)
                                 (letrec ((_loop2705627080_
                                           (lambda (_hd2705427084_
                                                    _arg2706027087_)
                                             (if (gx#stx-pair? _hd2705427084_)
                                                 (let ((_e2705727090_
                                                        (gx#syntax-e
                                                         _hd2705427084_)))
                                                   (let ((_lp-hd2705827094_
                                                          (##car _e2705727090_))
                                                         (_lp-tl2705927097_
                                                          (##cdr _e2705727090_)))
                                                     (_loop2705627080_
                                                      _lp-tl2705927097_
                                                      (cons _lp-hd2705827094_
                                                            _arg2706027087_))))
                                                 (let ((_arg2706127100_
                                                        (reverse _arg2706027087_)))
                                                   ((lambda (_L27104_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L27038_
                              (begin
                                '#!void
                                (foldr (lambda (_g2712227125_ _g2712327128_)
                                         (cons _g2712227125_ _g2712327128_))
                                       '()
                                       _L27104_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2706127100_))))))
                                   (_loop2705627080_ _target2705327074_ '()))
                                 (_g2705027067_ _g2705127071_)))))
                       (_g2705027067_ _g2705127071_))
                   (_g2705027067_ _g2705127071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2704927131_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2713427137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2713527140_)
                            (cons _g2713427137_ _g2713527140_))
                          '()
                          _L27000_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2714227145_ _g2714327148_)
                            (cons _g2714227145_ _g2714327148_))
                          '()
                          _L26999_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2702427035_))))
                                (_g2702227151_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2715427157_
                                                                _g2715527160_)
                                                         (cons _g2715427157_
                                                               _g2715527160_))
                                                       '()
                                                       _L26997_))))
                                  (gx#stx-source _stx26824_))))))
                          _body2688026993_
                          _expr2686426961_
                          _param2686526964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2687526973_
                                                  _target2687226967_
                                                  '()))
                                               (_g2682826886_
                                                _g2682926890_)))))
                                     (_g2682826886_ _g2682926890_))
                                 (_g2682826886_ _g2682926890_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2685826919_
                                                      _target2685526913_
                                                      '()
                                                      '()))
                                                   (_g2682826886_
                                                    _g2682926890_)))))
                                         (_g2682826886_ _g2682926890_))
                                     (_g2682826886_ _g2682926890_))))
                             (_g2682826886_ _g2682926890_))))
                     (_g2682826886_ _g2682926890_)))))
          (let ((_g2682627245_
                 (lambda (_g2682927167_)
                   (if (gx#stx-pair? _g2682927167_)
                       (let ((_e2683127170_ (gx#syntax-e _g2682927167_)))
                         (let ((_hd2683227174_ (##car _e2683127170_))
                               (_tl2683327177_ (##cdr _e2683127170_)))
                           (if (gx#stx-pair? _tl2683327177_)
                               (let ((_e2683427180_
                                      (gx#syntax-e _tl2683327177_)))
                                 (let ((_hd2683527184_ (##car _e2683427180_))
                                       (_tl2683627187_ (##cdr _e2683427180_)))
                                   (if (gx#stx-null? _hd2683527184_)
                                       (if (gx#stx-pair/null? _tl2683627187_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2683627187_)
                                                     '0)
                                               (let ((_g29848_
                                                      (gx#syntax-split-splice
                                                       _tl2683627187_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29849_
                                                          (values-count
                                                           _g29848_)))
                                                     (if (not (fx= _g29849_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29849_)))
                                                   (let ((_target2683727190_
                                                          (values-ref
                                                           _g29848_
                                                           0))
                                                         (_tl2683927193_
                                                          (values-ref
                                                           _g29848_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2683927193_)
                                                         (letrec ((_loop2684027196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2683827200_ _body2684427203_)
                             (if (gx#stx-pair? _hd2683827200_)
                                 (let ((_e2684127206_
                                        (gx#syntax-e _hd2683827200_)))
                                   (let ((_lp-hd2684227210_
                                          (##car _e2684127206_))
                                         (_lp-tl2684327213_
                                          (##cdr _e2684127206_)))
                                     (_loop2684027196_
                                      _lp-tl2684327213_
                                      (cons _lp-hd2684227210_
                                            _body2684427203_))))
                                 (let ((_body2684527216_
                                        (reverse _body2684427203_)))
                                   ((lambda (_L27220_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2723627239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2723727242_)
                     (cons _g2723627239_ _g2723727242_))
                   '()
                   _L27220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2684527216_))))))
                   (_loop2684027196_ _target2683727190_ '()))
                 (_g2682727163_ _g2682927167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2682727163_ _g2682927167_))
                                           (_g2682727163_ _g2682927167_))
                                       (_g2682727163_ _g2682927167_))))
                               (_g2682727163_ _g2682927167_))))
                       (_g2682727163_ _g2682927167_)))))
            (_g2682627245_ _stx26824_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27253_)
      (let ((_g2725727281_
             (lambda (_g2725827277_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2725827277_))))
        (let ((_g2725627366_
               (lambda (_g2725827285_)
                 (if (gx#stx-pair? _g2725827285_)
                     (let ((_e2726127288_ (gx#syntax-e _g2725827285_)))
                       (let ((_hd2726227292_ (##car _e2726127288_))
                             (_tl2726327295_ (##cdr _e2726127288_)))
                         (if (gx#stx-pair? _tl2726327295_)
                             (let ((_e2726427298_
                                    (gx#syntax-e _tl2726327295_)))
                               (let ((_hd2726527302_ (##car _e2726427298_))
                                     (_tl2726627305_ (##cdr _e2726427298_)))
                                 (if (gx#stx-pair/null? _tl2726627305_)
                                     (if (fx>= (gx#stx-length _tl2726627305_)
                                               '0)
                                         (let ((_g29850_
                                                (gx#syntax-split-splice
                                                 _tl2726627305_
                                                 '0)))
                                           (begin
                                             (let ((_g29851_
                                                    (values-count _g29850_)))
                                               (if (not (fx= _g29851_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29851_)))
                                             (let ((_target2726727308_
                                                    (values-ref _g29850_ 0))
                                                   (_tl2726927311_
                                                    (values-ref _g29850_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2726927311_)
                                                   (letrec ((_loop2727027314_
                                                             (lambda (_hd2726827318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2727427321_)
                       (if (gx#stx-pair? _hd2726827318_)
                           (let ((_e2727127324_ (gx#syntax-e _hd2726827318_)))
                             (let ((_lp-hd2727227328_ (##car _e2727127324_))
                                   (_lp-tl2727327331_ (##cdr _e2727127324_)))
                               (_loop2727027314_
                                _lp-tl2727327331_
                                (cons _lp-hd2727227328_ _body2727427321_))))
                           (let ((_body2727527334_ (reverse _body2727427321_)))
                             ((lambda (_L27338_ _L27340_)
                                (if (gx#identifier? _L27340_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27340_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2735727360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2735827363_)
                               (cons _g2735727360_ _g2735827363_))
                             '()
                             _L27338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2725727281_ _g2725827285_)))
                              _body2727527334_
                              _hd2726527302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2727027314_
                                                      _target2726727308_
                                                      '()))
                                                   (_g2725727281_
                                                    _g2725827285_)))))
                                         (_g2725727281_ _g2725827285_))
                                     (_g2725727281_ _g2725827285_))))
                             (_g2725727281_ _g2725827285_))))
                     (_g2725727281_ _g2725827285_)))))
          (_g2725627366_ _$stx27253_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27371_)
      (let ((_g2737527399_
             (lambda (_g2737627395_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2737627395_))))
        (let ((_g2737427484_
               (lambda (_g2737627403_)
                 (if (gx#stx-pair? _g2737627403_)
                     (let ((_e2737927406_ (gx#syntax-e _g2737627403_)))
                       (let ((_hd2738027410_ (##car _e2737927406_))
                             (_tl2738127413_ (##cdr _e2737927406_)))
                         (if (gx#stx-pair? _tl2738127413_)
                             (let ((_e2738227416_
                                    (gx#syntax-e _tl2738127413_)))
                               (let ((_hd2738327420_ (##car _e2738227416_))
                                     (_tl2738427423_ (##cdr _e2738227416_)))
                                 (if (gx#stx-pair/null? _tl2738427423_)
                                     (if (fx>= (gx#stx-length _tl2738427423_)
                                               '0)
                                         (let ((_g29852_
                                                (gx#syntax-split-splice
                                                 _tl2738427423_
                                                 '0)))
                                           (begin
                                             (let ((_g29853_
                                                    (values-count _g29852_)))
                                               (if (not (fx= _g29853_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29853_)))
                                             (let ((_target2738527426_
                                                    (values-ref _g29852_ 0))
                                                   (_tl2738727429_
                                                    (values-ref _g29852_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2738727429_)
                                                   (letrec ((_loop2738827432_
                                                             (lambda (_hd2738627436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2739227439_)
                       (if (gx#stx-pair? _hd2738627436_)
                           (let ((_e2738927442_ (gx#syntax-e _hd2738627436_)))
                             (let ((_lp-hd2739027446_ (##car _e2738927442_))
                                   (_lp-tl2739127449_ (##cdr _e2738927442_)))
                               (_loop2738827432_
                                _lp-tl2739127449_
                                (cons _lp-hd2739027446_ _body2739227439_))))
                           (let ((_body2739327452_ (reverse _body2739227439_)))
                             ((lambda (_L27456_ _L27458_)
                                (if (gx#identifier? _L27458_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27458_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2747527478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2747627481_)
                               (cons _g2747527478_ _g2747627481_))
                             '()
                             _L27456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2737527399_ _g2737627403_)))
                              _body2739327452_
                              _hd2738327420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2738827432_
                                                      _target2738527426_
                                                      '()))
                                                   (_g2737527399_
                                                    _g2737627403_)))))
                                         (_g2737527399_ _g2737627403_))
                                     (_g2737527399_ _g2737627403_))))
                             (_g2737527399_ _g2737627403_))))
                     (_g2737527399_ _g2737627403_)))))
          (_g2737427484_ _$stx27371_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27489_)
      (let ((_g2749327511_
             (lambda (_g2749427507_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2749427507_))))
        (let ((_g2749227566_
               (lambda (_g2749427515_)
                 (if (gx#stx-pair? _g2749427515_)
                     (let ((_e2749727518_ (gx#syntax-e _g2749427515_)))
                       (let ((_hd2749827522_ (##car _e2749727518_))
                             (_tl2749927525_ (##cdr _e2749727518_)))
                         (if (gx#stx-pair? _tl2749927525_)
                             (let ((_e2750027528_
                                    (gx#syntax-e _tl2749927525_)))
                               (let ((_hd2750127532_ (##car _e2750027528_))
                                     (_tl2750227535_ (##cdr _e2750027528_)))
                                 (if (gx#stx-pair? _tl2750227535_)
                                     (let ((_e2750327538_
                                            (gx#syntax-e _tl2750227535_)))
                                       (let ((_hd2750427542_
                                              (##car _e2750327538_))
                                             (_tl2750527545_
                                              (##cdr _e2750327538_)))
                                         (if (gx#stx-null? _tl2750527545_)
                                             ((lambda (_L27548_ _L27550_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27550_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27548_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2750427542_
                                              _hd2750127532_)
                                             (_g2749327511_ _g2749427515_))))
                                     (_g2749327511_ _g2749427515_))))
                             (_g2749327511_ _g2749427515_))))
                     (_g2749327511_ _g2749427515_)))))
          (_g2749227566_ _$stx27489_))))))
