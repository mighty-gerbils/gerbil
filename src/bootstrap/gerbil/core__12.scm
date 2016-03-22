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
    (lambda _$args25721_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25721_)))
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
    (lambda _$args25717_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25717_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25714_)
      (if (gx#identifier? _stx25714_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25714_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25711_)
      (if (gx#identifier? _stx25711_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25711_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25725_)
      (let ((_g2573125790_
             (lambda (_g2573225786_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2573225786_))))
        (let ((_g2573025845_
               (lambda (_g2573225794_)
                 (if (gx#stx-pair? _g2573225794_)
                     (let ((_e2577625797_ (gx#syntax-e _g2573225794_)))
                       (let ((_hd2577725801_ (##car _e2577625797_))
                             (_tl2577825804_ (##cdr _e2577625797_)))
                         (if (gx#stx-pair? _tl2577825804_)
                             (let ((_e2577925807_
                                    (gx#syntax-e _tl2577825804_)))
                               (let ((_hd2578025811_ (##car _e2577925807_))
                                     (_tl2578125814_ (##cdr _e2577925807_)))
                                 (if (gx#stx-pair? _tl2578125814_)
                                     (let ((_e2578225817_
                                            (gx#syntax-e _tl2578125814_)))
                                       (let ((_hd2578325821_
                                              (##car _e2578225817_))
                                             (_tl2578425824_
                                              (##cdr _e2578225817_)))
                                         (if (gx#stx-null? _tl2578425824_)
                                             ((lambda (_L25827_ _L25829_)
                                                (if (gx#identifier? _L25829_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L25829_
                                                                (cons _L25827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2573125790_
                                                     _g2573225794_)))
                                              _hd2578325821_
                                              _hd2578025811_)
                                             (_g2573125790_ _g2573225794_))))
                                     (_g2573125790_ _g2573225794_))))
                             (_g2573125790_ _g2573225794_))))
                     (_g2573125790_ _g2573225794_)))))
          (let ((_g2572925885_
                 (lambda (_g2573225849_)
                   (if (gx#stx-pair? _g2573225849_)
                       (let ((_e2576825852_ (gx#syntax-e _g2573225849_)))
                         (let ((_hd2576925856_ (##car _e2576825852_))
                               (_tl2577025859_ (##cdr _e2576825852_)))
                           (if (gx#stx-pair? _tl2577025859_)
                               (let ((_e2577125862_
                                      (gx#syntax-e _tl2577025859_)))
                                 (let ((_hd2577225866_ (##car _e2577125862_))
                                       (_tl2577325869_ (##cdr _e2577125862_)))
                                   ((lambda (_L25872_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L25872_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L25872_)
                                           _stx25725_)
                                          (_g2573025845_ _g2573225849_)))
                                    _hd2577225866_)))
                               (_g2573025845_ _g2573225849_))))
                       (_g2573025845_ _g2573225849_)))))
            (let ((_g2572826026_
                   (lambda (_g2573225889_)
                     (if (gx#stx-pair? _g2573225889_)
                         (let ((_e2574625892_ (gx#syntax-e _g2573225889_)))
                           (let ((_hd2574725896_ (##car _e2574625892_))
                                 (_tl2574825899_ (##cdr _e2574625892_)))
                             (if (gx#stx-pair? _tl2574825899_)
                                 (let ((_e2574925902_
                                        (gx#syntax-e _tl2574825899_)))
                                   (let ((_hd2575025906_ (##car _e2574925902_))
                                         (_tl2575125909_
                                          (##cdr _e2574925902_)))
                                     (if (gx#stx-pair? _hd2575025906_)
                                         (let ((_e2575225912_
                                                (gx#syntax-e _hd2575025906_)))
                                           (let ((_hd2575325916_
                                                  (##car _e2575225912_))
                                                 (_tl2575425919_
                                                  (##cdr _e2575225912_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2575425919_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2575425919_)
                                                           '0)
                                                     (let ((_g28446_
                                                            (gx#syntax-split-splice
                                                             _tl2575425919_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28447_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28446_)))
                   (if (not (fx= _g28447_ 2))
                       (error "Context expects 2 values" _g28447_)))
                 (let ((_target2575525922_ (values-ref _g28446_ 0))
                       (_tl2575725925_ (values-ref _g28446_ 1)))
                   (if (gx#stx-null? _tl2575725925_)
                       (letrec ((_loop2575825928_
                                 (lambda (_hd2575625932_ _arg2576225935_)
                                   (if (gx#stx-pair? _hd2575625932_)
                                       (let ((_e2575925938_
                                              (gx#syntax-e _hd2575625932_)))
                                         (let ((_lp-hd2576025942_
                                                (##car _e2575925938_))
                                               (_lp-tl2576125945_
                                                (##cdr _e2575925938_)))
                                           (_loop2575825928_
                                            _lp-tl2576125945_
                                            (cons _lp-hd2576025942_
                                                  _arg2576225935_))))
                                       (let ((_arg2576325948_
                                              (reverse _arg2576225935_)))
                                         (if (gx#stx-pair? _tl2575125909_)
                                             (let ((_e2576425952_
                                                    (gx#syntax-e
                                                     _tl2575125909_)))
                                               (let ((_hd2576525956_
                                                      (##car _e2576425952_))
                                                     (_tl2576625959_
                                                      (##cdr _e2576425952_)))
                                                 (if (gx#stx-null?
                                                      _tl2576625959_)
                                                     ((lambda (_L25962_
                                                               _L25964_
                                                               _L25965_)
                                                        (if (gx#identifier?
                                                             _L25965_)
                                                            (let ((_g2598725995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2598825991_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2598825991_))))
                      (let ((_g2598626022_
                             (lambda (_g2598825999_)
                               ((lambda (_L26002_)
                                  (let ()
                                    (cons _L26002_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2601326016_
                                                            _g2601426019_)
                                                     (cons _g2601326016_
                                                           _g2601426019_))
                                                   (cons _L25962_ '())
                                                   _L25964_)))))
                                _g2598825999_))))
                        (_g2598626022_
                         (gx#stx-identifier _L25965_ _L25965_ '"-set!"))))
                    (_g2572925885_ _g2573225889_)))
              _hd2576525956_
              _arg2576325948_
              _hd2575325916_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2572925885_
                                                      _g2573225889_))))
                                             (_g2572925885_
                                              _g2573225889_)))))))
                         (_loop2575825928_ _target2575525922_ '()))
                       (_g2572925885_ _g2573225889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2572925885_
                                                      _g2573225889_))
                                                 (_g2572925885_
                                                  _g2573225889_))))
                                         (_g2572925885_ _g2573225889_))))
                                 (_g2572925885_ _g2573225889_))))
                         (_g2572925885_ _g2573225889_)))))
              (let ((_g2572726078_
                     (lambda (_g2573226030_)
                       (if (gx#stx-pair? _g2573226030_)
                           (let ((_e2573426033_ (gx#syntax-e _g2573226030_)))
                             (let ((_hd2573526037_ (##car _e2573426033_))
                                   (_tl2573626040_ (##cdr _e2573426033_)))
                               (if (gx#stx-pair? _tl2573626040_)
                                   (let ((_e2573726043_
                                          (gx#syntax-e _tl2573626040_)))
                                     (let ((_hd2573826047_
                                            (##car _e2573726043_))
                                           (_tl2573926050_
                                            (##cdr _e2573726043_)))
                                       (if (gx#stx-pair? _hd2573826047_)
                                           (let ((_e2574026053_
                                                  (gx#syntax-e
                                                   _hd2573826047_)))
                                             (let ((_hd2574126057_
                                                    (##car _e2574026053_))
                                                   (_tl2574226060_
                                                    (##cdr _e2574026053_)))
                                               ((lambda (_L26063_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26063_)
                                                       _stx25725_)
                                                      (_g2572826026_
                                                       _g2573226030_)))
                                                _hd2574126057_)))
                                           (_g2572826026_ _g2573226030_))))
                                   (_g2572826026_ _g2573226030_))))
                           (_g2572826026_ _g2573226030_)))))
                (_g2572726078_ _stx25725_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26083_)
      (let ((_g2608626110_
             (lambda (_g2608726106_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2608726106_))))
        (let ((_g2608526288_
               (lambda (_g2608726114_)
                 (if (gx#stx-pair? _g2608726114_)
                     (let ((_e2609026117_ (gx#syntax-e _g2608726114_)))
                       (let ((_hd2609126121_ (##car _e2609026117_))
                             (_tl2609226124_ (##cdr _e2609026117_)))
                         (if (gx#stx-pair/null? _tl2609226124_)
                             (if (fx>= (gx#stx-length _tl2609226124_) '1)
                                 (let ((_g28448_
                                        (gx#syntax-split-splice
                                         _tl2609226124_
                                         '1)))
                                   (begin
                                     (let ((_g28449_ (values-count _g28448_)))
                                       (if (not (fx= _g28449_ 2))
                                           (error "Context expects 2 values"
                                                  _g28449_)))
                                     (let ((_target2609326127_
                                            (values-ref _g28448_ 0))
                                           (_tl2609526130_
                                            (values-ref _g28448_ 1)))
                                       (if (gx#stx-pair? _tl2609526130_)
                                           (let ((_e2610226133_
                                                  (gx#syntax-e
                                                   _tl2609526130_)))
                                             (let ((_hd2610326137_
                                                    (##car _e2610226133_))
                                                   (_tl2610426140_
                                                    (##cdr _e2610226133_)))
                                               (if (gx#stx-null?
                                                    _tl2610426140_)
                                                   (letrec ((_loop2609626143_
                                                             (lambda (_hd2609426147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2610026150_)
                       (if (gx#stx-pair? _hd2609426147_)
                           (let ((_e2609726153_ (gx#syntax-e _hd2609426147_)))
                             (let ((_lp-hd2609826157_ (##car _e2609726153_))
                                   (_lp-tl2609926160_ (##cdr _e2609726153_)))
                               (_loop2609626143_
                                _lp-tl2609926160_
                                (cons _lp-hd2609826157_ _tgt2610026150_))))
                           (let ((_tgt2610126163_ (reverse _tgt2610026150_)))
                             ((lambda (_L26167_ _L26169_)
                                (let ((_g2618726204_
                                       (lambda (_g2618826200_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2618826200_))))
                                  (let ((_g2618626276_
                                         (lambda (_g2618826208_)
                                           (if (gx#stx-pair/null?
                                                _g2618826208_)
                                               (if (fx>= (gx#stx-length
                                                          _g2618826208_)
                                                         '0)
                                                   (let ((_g28450_
                                                          (gx#syntax-split-splice
                                                           _g2618826208_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28451_
                                                              (values-count
                                                               _g28450_)))
                                                         (if (not (fx= _g28451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28451_)))
               (let ((_target2619026211_ (values-ref _g28450_ 0))
                     (_tl2619226214_ (values-ref _g28450_ 1)))
                 (if (gx#stx-null? _tl2619226214_)
                     (letrec ((_loop2619326217_
                               (lambda (_hd2619126221_ _$e2619726224_)
                                 (if (gx#stx-pair? _hd2619126221_)
                                     (let ((_e2619426227_
                                            (gx#syntax-e _hd2619126221_)))
                                       (let ((_lp-hd2619526231_
                                              (##car _e2619426227_))
                                             (_lp-tl2619626234_
                                              (##cdr _e2619426227_)))
                                         (_loop2619326217_
                                          _lp-tl2619626234_
                                          (cons _lp-hd2619526231_
                                                _$e2619726224_))))
                                     (let ((_$e2619826237_
                                            (reverse _$e2619726224_)))
                                       ((lambda (_L26241_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2625626262_ _g2625726265_)
                                       (cons _g2625626262_ _g2625726265_))
                                     '()
                                     _L26241_))
                            (cons _L26167_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26241_ _L26169_)
                  (foldr (lambda (_g2625826268_ _g2625926271_ _g2626026273_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2625926271_
                                             (cons _g2625826268_ '())))
                                 _g2626026273_))
                         '()
                         _L26241_
                         _L26169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2619826237_))))))
                       (_loop2619326217_ _target2619026211_ '()))
                     (_g2618726204_ _g2618826208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2618726204_
                                                    _g2618826208_))
                                               (_g2618726204_
                                                _g2618826208_)))))
                                    (_g2618626276_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2627926282_
                                                        _g2628026285_)
                                                 (cons _g2627926282_
                                                       _g2628026285_))
                                               '()
                                               _L26169_)))))))
                              _hd2610326137_
                              _tgt2610126163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2609626143_
                                                      _target2609326127_
                                                      '()))
                                                   (_g2608626110_
                                                    _g2608726114_))))
                                           (_g2608626110_ _g2608726114_)))))
                                 (_g2608626110_ _g2608726114_))
                             (_g2608626110_ _g2608726114_))))
                     (_g2608626110_ _g2608726114_)))))
          (_g2608526288_ _stx26083_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26294_)
      (let ((_g2629826356_
             (lambda (_g2629926352_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2629926352_))))
        (let ((_g2629726633_
               (lambda (_g2629926360_)
                 (if (gx#stx-pair? _g2629926360_)
                     (let ((_e2631926363_ (gx#syntax-e _g2629926360_)))
                       (let ((_hd2632026367_ (##car _e2631926363_))
                             (_tl2632126370_ (##cdr _e2631926363_)))
                         (if (gx#stx-pair? _tl2632126370_)
                             (let ((_e2632226373_
                                    (gx#syntax-e _tl2632126370_)))
                               (let ((_hd2632326377_ (##car _e2632226373_))
                                     (_tl2632426380_ (##cdr _e2632226373_)))
                                 (if (gx#stx-pair/null? _hd2632326377_)
                                     (if (fx>= (gx#stx-length _hd2632326377_)
                                               '0)
                                         (let ((_g28452_
                                                (gx#syntax-split-splice
                                                 _hd2632326377_
                                                 '0)))
                                           (begin
                                             (let ((_g28453_
                                                    (values-count _g28452_)))
                                               (if (not (fx= _g28453_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28453_)))
                                             (let ((_target2632526383_
                                                    (values-ref _g28452_ 0))
                                                   (_tl2632726386_
                                                    (values-ref _g28452_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2632726386_)
                                                   (letrec ((_loop2632826389_
                                                             (lambda (_hd2632626393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2633226396_
                              _param2633326398_)
                       (if (gx#stx-pair? _hd2632626393_)
                           (let ((_e2632926401_ (gx#syntax-e _hd2632626393_)))
                             (let ((_lp-hd2633026405_ (##car _e2632926401_))
                                   (_lp-tl2633126408_ (##cdr _e2632926401_)))
                               (if (gx#stx-pair? _lp-hd2633026405_)
                                   (let ((_e2633626411_
                                          (gx#syntax-e _lp-hd2633026405_)))
                                     (let ((_hd2633726415_
                                            (##car _e2633626411_))
                                           (_tl2633826418_
                                            (##cdr _e2633626411_)))
                                       (if (gx#stx-pair? _tl2633826418_)
                                           (let ((_e2633926421_
                                                  (gx#syntax-e
                                                   _tl2633826418_)))
                                             (let ((_hd2634026425_
                                                    (##car _e2633926421_))
                                                   (_tl2634126428_
                                                    (##cdr _e2633926421_)))
                                               (if (gx#stx-null?
                                                    _tl2634126428_)
                                                   (_loop2632826389_
                                                    _lp-tl2633126408_
                                                    (cons _hd2634026425_
                                                          _expr2633226396_)
                                                    (cons _hd2633726415_
                                                          _param2633326398_))
                                                   (_g2629826356_
                                                    _g2629926360_))))
                                           (_g2629826356_ _g2629926360_))))
                                   (_g2629826356_ _g2629926360_))))
                           (let ((_expr2633426431_ (reverse _expr2633226396_))
                                 (_param2633526434_
                                  (reverse _param2633326398_)))
                             (if (gx#stx-pair/null? _tl2632426380_)
                                 (if (fx>= (gx#stx-length _tl2632426380_) '0)
                                     (let ((_g28454_
                                            (gx#syntax-split-splice
                                             _tl2632426380_
                                             '0)))
                                       (begin
                                         (let ((_g28455_
                                                (values-count _g28454_)))
                                           (if (not (fx= _g28455_ 2))
                                               (error "Context expects 2 values"
                                                      _g28455_)))
                                         (let ((_target2634226437_
                                                (values-ref _g28454_ 0))
                                               (_tl2634426440_
                                                (values-ref _g28454_ 1)))
                                           (if (gx#stx-null? _tl2634426440_)
                                               (letrec ((_loop2634526443_
                                                         (lambda (_hd2634326447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2634926450_)
                   (if (gx#stx-pair? _hd2634326447_)
                       (let ((_e2634626453_ (gx#syntax-e _hd2634326447_)))
                         (let ((_lp-hd2634726457_ (##car _e2634626453_))
                               (_lp-tl2634826460_ (##cdr _e2634626453_)))
                           (_loop2634526443_
                            _lp-tl2634826460_
                            (cons _lp-hd2634726457_ _body2634926450_))))
                       (let ((_body2635026463_ (reverse _body2634926450_)))
                         ((lambda (_L26467_ _L26469_ _L26470_)
                            (let ((_g2649326501_
                                   (lambda (_g2649426497_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2649426497_))))
                              (let ((_g2649226621_
                                     (lambda (_g2649426505_)
                                       ((lambda (_L26508_)
                                          (let ()
                                            (let ((_g2652026537_
                                                   (lambda (_g2652126533_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2652126533_))))
                                              (let ((_g2651926601_
                                                     (lambda (_g2652126541_)
                                                       (if (gx#stx-pair/null?
                                                            _g2652126541_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2652126541_)
                             '0)
                       (let ((_g28456_
                              (gx#syntax-split-splice _g2652126541_ '0)))
                         (begin
                           (let ((_g28457_ (values-count _g28456_)))
                             (if (not (fx= _g28457_ 2))
                                 (error "Context expects 2 values" _g28457_)))
                           (let ((_target2652326544_ (values-ref _g28456_ 0))
                                 (_tl2652526547_ (values-ref _g28456_ 1)))
                             (if (gx#stx-null? _tl2652526547_)
                                 (letrec ((_loop2652626550_
                                           (lambda (_hd2652426554_
                                                    _arg2653026557_)
                                             (if (gx#stx-pair? _hd2652426554_)
                                                 (let ((_e2652726560_
                                                        (gx#syntax-e
                                                         _hd2652426554_)))
                                                   (let ((_lp-hd2652826564_
                                                          (##car _e2652726560_))
                                                         (_lp-tl2652926567_
                                                          (##cdr _e2652726560_)))
                                                     (_loop2652626550_
                                                      _lp-tl2652926567_
                                                      (cons _lp-hd2652826564_
                                                            _arg2653026557_))))
                                                 (let ((_arg2653126570_
                                                        (reverse _arg2653026557_)))
                                                   ((lambda (_L26574_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26508_
                              (begin
                                '#!void
                                (foldr (lambda (_g2659226595_ _g2659326598_)
                                         (cons _g2659226595_ _g2659326598_))
                                       '()
                                       _L26574_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2653126570_))))))
                                   (_loop2652626550_ _target2652326544_ '()))
                                 (_g2652026537_ _g2652126541_)))))
                       (_g2652026537_ _g2652126541_))
                   (_g2652026537_ _g2652126541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2651926601_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2660426607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2660526610_)
                            (cons _g2660426607_ _g2660526610_))
                          '()
                          _L26470_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2661226615_ _g2661326618_)
                            (cons _g2661226615_ _g2661326618_))
                          '()
                          _L26469_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2649426505_))))
                                (_g2649226621_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2662426627_
                                                                _g2662526630_)
                                                         (cons _g2662426627_
                                                               _g2662526630_))
                                                       '()
                                                       _L26467_))))
                                  (gx#stx-source _stx26294_))))))
                          _body2635026463_
                          _expr2633426431_
                          _param2633526434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2634526443_
                                                  _target2634226437_
                                                  '()))
                                               (_g2629826356_
                                                _g2629926360_)))))
                                     (_g2629826356_ _g2629926360_))
                                 (_g2629826356_ _g2629926360_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2632826389_
                                                      _target2632526383_
                                                      '()
                                                      '()))
                                                   (_g2629826356_
                                                    _g2629926360_)))))
                                         (_g2629826356_ _g2629926360_))
                                     (_g2629826356_ _g2629926360_))))
                             (_g2629826356_ _g2629926360_))))
                     (_g2629826356_ _g2629926360_)))))
          (let ((_g2629626715_
                 (lambda (_g2629926637_)
                   (if (gx#stx-pair? _g2629926637_)
                       (let ((_e2630126640_ (gx#syntax-e _g2629926637_)))
                         (let ((_hd2630226644_ (##car _e2630126640_))
                               (_tl2630326647_ (##cdr _e2630126640_)))
                           (if (gx#stx-pair? _tl2630326647_)
                               (let ((_e2630426650_
                                      (gx#syntax-e _tl2630326647_)))
                                 (let ((_hd2630526654_ (##car _e2630426650_))
                                       (_tl2630626657_ (##cdr _e2630426650_)))
                                   (if (gx#stx-null? _hd2630526654_)
                                       (if (gx#stx-pair/null? _tl2630626657_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2630626657_)
                                                     '0)
                                               (let ((_g28458_
                                                      (gx#syntax-split-splice
                                                       _tl2630626657_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28459_
                                                          (values-count
                                                           _g28458_)))
                                                     (if (not (fx= _g28459_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28459_)))
                                                   (let ((_target2630726660_
                                                          (values-ref
                                                           _g28458_
                                                           0))
                                                         (_tl2630926663_
                                                          (values-ref
                                                           _g28458_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2630926663_)
                                                         (letrec ((_loop2631026666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2630826670_ _body2631426673_)
                             (if (gx#stx-pair? _hd2630826670_)
                                 (let ((_e2631126676_
                                        (gx#syntax-e _hd2630826670_)))
                                   (let ((_lp-hd2631226680_
                                          (##car _e2631126676_))
                                         (_lp-tl2631326683_
                                          (##cdr _e2631126676_)))
                                     (_loop2631026666_
                                      _lp-tl2631326683_
                                      (cons _lp-hd2631226680_
                                            _body2631426673_))))
                                 (let ((_body2631526686_
                                        (reverse _body2631426673_)))
                                   ((lambda (_L26690_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2670626709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2670726712_)
                     (cons _g2670626709_ _g2670726712_))
                   '()
                   _L26690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2631526686_))))))
                   (_loop2631026666_ _target2630726660_ '()))
                 (_g2629726633_ _g2629926637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2629726633_ _g2629926637_))
                                           (_g2629726633_ _g2629926637_))
                                       (_g2629726633_ _g2629926637_))))
                               (_g2629726633_ _g2629926637_))))
                       (_g2629726633_ _g2629926637_)))))
            (_g2629626715_ _stx26294_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26723_)
      (let ((_g2672726751_
             (lambda (_g2672826747_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2672826747_))))
        (let ((_g2672626836_
               (lambda (_g2672826755_)
                 (if (gx#stx-pair? _g2672826755_)
                     (let ((_e2673126758_ (gx#syntax-e _g2672826755_)))
                       (let ((_hd2673226762_ (##car _e2673126758_))
                             (_tl2673326765_ (##cdr _e2673126758_)))
                         (if (gx#stx-pair? _tl2673326765_)
                             (let ((_e2673426768_
                                    (gx#syntax-e _tl2673326765_)))
                               (let ((_hd2673526772_ (##car _e2673426768_))
                                     (_tl2673626775_ (##cdr _e2673426768_)))
                                 (if (gx#stx-pair/null? _tl2673626775_)
                                     (if (fx>= (gx#stx-length _tl2673626775_)
                                               '0)
                                         (let ((_g28460_
                                                (gx#syntax-split-splice
                                                 _tl2673626775_
                                                 '0)))
                                           (begin
                                             (let ((_g28461_
                                                    (values-count _g28460_)))
                                               (if (not (fx= _g28461_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28461_)))
                                             (let ((_target2673726778_
                                                    (values-ref _g28460_ 0))
                                                   (_tl2673926781_
                                                    (values-ref _g28460_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2673926781_)
                                                   (letrec ((_loop2674026784_
                                                             (lambda (_hd2673826788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2674426791_)
                       (if (gx#stx-pair? _hd2673826788_)
                           (let ((_e2674126794_ (gx#syntax-e _hd2673826788_)))
                             (let ((_lp-hd2674226798_ (##car _e2674126794_))
                                   (_lp-tl2674326801_ (##cdr _e2674126794_)))
                               (_loop2674026784_
                                _lp-tl2674326801_
                                (cons _lp-hd2674226798_ _body2674426791_))))
                           (let ((_body2674526804_ (reverse _body2674426791_)))
                             ((lambda (_L26808_ _L26810_)
                                (if (gx#identifier? _L26810_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26810_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2682726830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2682826833_)
                               (cons _g2682726830_ _g2682826833_))
                             '()
                             _L26808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2672726751_ _g2672826755_)))
                              _body2674526804_
                              _hd2673526772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2674026784_
                                                      _target2673726778_
                                                      '()))
                                                   (_g2672726751_
                                                    _g2672826755_)))))
                                         (_g2672726751_ _g2672826755_))
                                     (_g2672726751_ _g2672826755_))))
                             (_g2672726751_ _g2672826755_))))
                     (_g2672726751_ _g2672826755_)))))
          (_g2672626836_ _$stx26723_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx26841_)
      (let ((_g2684526869_
             (lambda (_g2684626865_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2684626865_))))
        (let ((_g2684426954_
               (lambda (_g2684626873_)
                 (if (gx#stx-pair? _g2684626873_)
                     (let ((_e2684926876_ (gx#syntax-e _g2684626873_)))
                       (let ((_hd2685026880_ (##car _e2684926876_))
                             (_tl2685126883_ (##cdr _e2684926876_)))
                         (if (gx#stx-pair? _tl2685126883_)
                             (let ((_e2685226886_
                                    (gx#syntax-e _tl2685126883_)))
                               (let ((_hd2685326890_ (##car _e2685226886_))
                                     (_tl2685426893_ (##cdr _e2685226886_)))
                                 (if (gx#stx-pair/null? _tl2685426893_)
                                     (if (fx>= (gx#stx-length _tl2685426893_)
                                               '0)
                                         (let ((_g28462_
                                                (gx#syntax-split-splice
                                                 _tl2685426893_
                                                 '0)))
                                           (begin
                                             (let ((_g28463_
                                                    (values-count _g28462_)))
                                               (if (not (fx= _g28463_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28463_)))
                                             (let ((_target2685526896_
                                                    (values-ref _g28462_ 0))
                                                   (_tl2685726899_
                                                    (values-ref _g28462_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2685726899_)
                                                   (letrec ((_loop2685826902_
                                                             (lambda (_hd2685626906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2686226909_)
                       (if (gx#stx-pair? _hd2685626906_)
                           (let ((_e2685926912_ (gx#syntax-e _hd2685626906_)))
                             (let ((_lp-hd2686026916_ (##car _e2685926912_))
                                   (_lp-tl2686126919_ (##cdr _e2685926912_)))
                               (_loop2685826902_
                                _lp-tl2686126919_
                                (cons _lp-hd2686026916_ _body2686226909_))))
                           (let ((_body2686326922_ (reverse _body2686226909_)))
                             ((lambda (_L26926_ _L26928_)
                                (if (gx#identifier? _L26928_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26928_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2694526948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2694626951_)
                               (cons _g2694526948_ _g2694626951_))
                             '()
                             _L26926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2684526869_ _g2684626873_)))
                              _body2686326922_
                              _hd2685326890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2685826902_
                                                      _target2685526896_
                                                      '()))
                                                   (_g2684526869_
                                                    _g2684626873_)))))
                                         (_g2684526869_ _g2684626873_))
                                     (_g2684526869_ _g2684626873_))))
                             (_g2684526869_ _g2684626873_))))
                     (_g2684526869_ _g2684626873_)))))
          (_g2684426954_ _$stx26841_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx26959_)
      (let ((_g2696226969_
             (lambda (_g2696326965_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2696326965_))))
        (_g2696226969_ _$stx26959_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx26973_)
      (let ((_g2697726995_
             (lambda (_g2697826991_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2697826991_))))
        (let ((_g2697627050_
               (lambda (_g2697826999_)
                 (if (gx#stx-pair? _g2697826999_)
                     (let ((_e2698127002_ (gx#syntax-e _g2697826999_)))
                       (let ((_hd2698227006_ (##car _e2698127002_))
                             (_tl2698327009_ (##cdr _e2698127002_)))
                         (if (gx#stx-pair? _tl2698327009_)
                             (let ((_e2698427012_
                                    (gx#syntax-e _tl2698327009_)))
                               (let ((_hd2698527016_ (##car _e2698427012_))
                                     (_tl2698627019_ (##cdr _e2698427012_)))
                                 (if (gx#stx-pair? _tl2698627019_)
                                     (let ((_e2698727022_
                                            (gx#syntax-e _tl2698627019_)))
                                       (let ((_hd2698827026_
                                              (##car _e2698727022_))
                                             (_tl2698927029_
                                              (##cdr _e2698727022_)))
                                         (if (gx#stx-null? _tl2698927029_)
                                             ((lambda (_L27032_ _L27034_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27034_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27032_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2698827026_
                                              _hd2698527016_)
                                             (_g2697726995_ _g2697826999_))))
                                     (_g2697726995_ _g2697826999_))))
                             (_g2697726995_ _g2697826999_))))
                     (_g2697726995_ _g2697826999_)))))
          (_g2697627050_ _$stx26973_))))))
