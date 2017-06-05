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
    (lambda _$args26021_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26021_)))
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
    (lambda _$args26017_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26017_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26014_)
      (if (gx#identifier? _stx26014_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26014_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26011_)
      (if (gx#identifier? _stx26011_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26011_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26025_)
      (let ((_g2603126090_
             (lambda (_g2603226086_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2603226086_))))
        (let ((_g2603026145_
               (lambda (_g2603226094_)
                 (if (gx#stx-pair? _g2603226094_)
                     (let ((_e2607626097_ (gx#syntax-e _g2603226094_)))
                       (let ((_hd2607726101_ (##car _e2607626097_))
                             (_tl2607826104_ (##cdr _e2607626097_)))
                         (if (gx#stx-pair? _tl2607826104_)
                             (let ((_e2607926107_
                                    (gx#syntax-e _tl2607826104_)))
                               (let ((_hd2608026111_ (##car _e2607926107_))
                                     (_tl2608126114_ (##cdr _e2607926107_)))
                                 (if (gx#stx-pair? _tl2608126114_)
                                     (let ((_e2608226117_
                                            (gx#syntax-e _tl2608126114_)))
                                       (let ((_hd2608326121_
                                              (##car _e2608226117_))
                                             (_tl2608426124_
                                              (##cdr _e2608226117_)))
                                         (if (gx#stx-null? _tl2608426124_)
                                             ((lambda (_L26127_ _L26129_)
                                                (if (gx#identifier? _L26129_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26129_
                                                                (cons _L26127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2603126090_
                                                     _g2603226094_)))
                                              _hd2608326121_
                                              _hd2608026111_)
                                             (_g2603126090_ _g2603226094_))))
                                     (_g2603126090_ _g2603226094_))))
                             (_g2603126090_ _g2603226094_))))
                     (_g2603126090_ _g2603226094_)))))
          (let ((_g2602926185_
                 (lambda (_g2603226149_)
                   (if (gx#stx-pair? _g2603226149_)
                       (let ((_e2606826152_ (gx#syntax-e _g2603226149_)))
                         (let ((_hd2606926156_ (##car _e2606826152_))
                               (_tl2607026159_ (##cdr _e2606826152_)))
                           (if (gx#stx-pair? _tl2607026159_)
                               (let ((_e2607126162_
                                      (gx#syntax-e _tl2607026159_)))
                                 (let ((_hd2607226166_ (##car _e2607126162_))
                                       (_tl2607326169_ (##cdr _e2607126162_)))
                                   ((lambda (_L26172_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26172_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26172_)
                                           _stx26025_)
                                          (_g2603026145_ _g2603226149_)))
                                    _hd2607226166_)))
                               (_g2603026145_ _g2603226149_))))
                       (_g2603026145_ _g2603226149_)))))
            (let ((_g2602826326_
                   (lambda (_g2603226189_)
                     (if (gx#stx-pair? _g2603226189_)
                         (let ((_e2604626192_ (gx#syntax-e _g2603226189_)))
                           (let ((_hd2604726196_ (##car _e2604626192_))
                                 (_tl2604826199_ (##cdr _e2604626192_)))
                             (if (gx#stx-pair? _tl2604826199_)
                                 (let ((_e2604926202_
                                        (gx#syntax-e _tl2604826199_)))
                                   (let ((_hd2605026206_ (##car _e2604926202_))
                                         (_tl2605126209_
                                          (##cdr _e2604926202_)))
                                     (if (gx#stx-pair? _hd2605026206_)
                                         (let ((_e2605226212_
                                                (gx#syntax-e _hd2605026206_)))
                                           (let ((_hd2605326216_
                                                  (##car _e2605226212_))
                                                 (_tl2605426219_
                                                  (##cdr _e2605226212_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2605426219_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2605426219_)
                                                           '0)
                                                     (let ((_g29605_
                                                            (gx#syntax-split-splice
                                                             _tl2605426219_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29606_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29605_)))
                   (if (not (fx= _g29606_ 2))
                       (error "Context expects 2 values" _g29606_)))
                 (let ((_target2605526222_ (values-ref _g29605_ 0))
                       (_tl2605726225_ (values-ref _g29605_ 1)))
                   (if (gx#stx-null? _tl2605726225_)
                       (letrec ((_loop2605826228_
                                 (lambda (_hd2605626232_ _arg2606226235_)
                                   (if (gx#stx-pair? _hd2605626232_)
                                       (let ((_e2605926238_
                                              (gx#syntax-e _hd2605626232_)))
                                         (let ((_lp-hd2606026242_
                                                (##car _e2605926238_))
                                               (_lp-tl2606126245_
                                                (##cdr _e2605926238_)))
                                           (_loop2605826228_
                                            _lp-tl2606126245_
                                            (cons _lp-hd2606026242_
                                                  _arg2606226235_))))
                                       (let ((_arg2606326248_
                                              (reverse _arg2606226235_)))
                                         (if (gx#stx-pair? _tl2605126209_)
                                             (let ((_e2606426252_
                                                    (gx#syntax-e
                                                     _tl2605126209_)))
                                               (let ((_hd2606526256_
                                                      (##car _e2606426252_))
                                                     (_tl2606626259_
                                                      (##cdr _e2606426252_)))
                                                 (if (gx#stx-null?
                                                      _tl2606626259_)
                                                     ((lambda (_L26262_
                                                               _L26264_
                                                               _L26265_)
                                                        (if (gx#identifier?
                                                             _L26265_)
                                                            (let ((_g2628726295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2628826291_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2628826291_))))
                      (let ((_g2628626322_
                             (lambda (_g2628826299_)
                               ((lambda (_L26302_)
                                  (let ()
                                    (cons _L26302_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2631326316_
                                                            _g2631426319_)
                                                     (cons _g2631326316_
                                                           _g2631426319_))
                                                   (cons _L26262_ '())
                                                   _L26264_)))))
                                _g2628826299_))))
                        (_g2628626322_
                         (gx#stx-identifier _L26265_ _L26265_ '"-set!"))))
                    (_g2602926185_ _g2603226189_)))
              _hd2606526256_
              _arg2606326248_
              _hd2605326216_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602926185_
                                                      _g2603226189_))))
                                             (_g2602926185_
                                              _g2603226189_)))))))
                         (_loop2605826228_ _target2605526222_ '()))
                       (_g2602926185_ _g2603226189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602926185_
                                                      _g2603226189_))
                                                 (_g2602926185_
                                                  _g2603226189_))))
                                         (_g2602926185_ _g2603226189_))))
                                 (_g2602926185_ _g2603226189_))))
                         (_g2602926185_ _g2603226189_)))))
              (let ((_g2602726378_
                     (lambda (_g2603226330_)
                       (if (gx#stx-pair? _g2603226330_)
                           (let ((_e2603426333_ (gx#syntax-e _g2603226330_)))
                             (let ((_hd2603526337_ (##car _e2603426333_))
                                   (_tl2603626340_ (##cdr _e2603426333_)))
                               (if (gx#stx-pair? _tl2603626340_)
                                   (let ((_e2603726343_
                                          (gx#syntax-e _tl2603626340_)))
                                     (let ((_hd2603826347_
                                            (##car _e2603726343_))
                                           (_tl2603926350_
                                            (##cdr _e2603726343_)))
                                       (if (gx#stx-pair? _hd2603826347_)
                                           (let ((_e2604026353_
                                                  (gx#syntax-e
                                                   _hd2603826347_)))
                                             (let ((_hd2604126357_
                                                    (##car _e2604026353_))
                                                   (_tl2604226360_
                                                    (##cdr _e2604026353_)))
                                               ((lambda (_L26363_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26363_)
                                                       _stx26025_)
                                                      (_g2602826326_
                                                       _g2603226330_)))
                                                _hd2604126357_)))
                                           (_g2602826326_ _g2603226330_))))
                                   (_g2602826326_ _g2603226330_))))
                           (_g2602826326_ _g2603226330_)))))
                (_g2602726378_ _stx26025_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26383_)
      (let ((_g2638626410_
             (lambda (_g2638726406_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2638726406_))))
        (let ((_g2638526588_
               (lambda (_g2638726414_)
                 (if (gx#stx-pair? _g2638726414_)
                     (let ((_e2639026417_ (gx#syntax-e _g2638726414_)))
                       (let ((_hd2639126421_ (##car _e2639026417_))
                             (_tl2639226424_ (##cdr _e2639026417_)))
                         (if (gx#stx-pair/null? _tl2639226424_)
                             (if (fx>= (gx#stx-length _tl2639226424_) '1)
                                 (let ((_g29607_
                                        (gx#syntax-split-splice
                                         _tl2639226424_
                                         '1)))
                                   (begin
                                     (let ((_g29608_ (values-count _g29607_)))
                                       (if (not (fx= _g29608_ 2))
                                           (error "Context expects 2 values"
                                                  _g29608_)))
                                     (let ((_target2639326427_
                                            (values-ref _g29607_ 0))
                                           (_tl2639526430_
                                            (values-ref _g29607_ 1)))
                                       (if (gx#stx-pair? _tl2639526430_)
                                           (let ((_e2640226433_
                                                  (gx#syntax-e
                                                   _tl2639526430_)))
                                             (let ((_hd2640326437_
                                                    (##car _e2640226433_))
                                                   (_tl2640426440_
                                                    (##cdr _e2640226433_)))
                                               (if (gx#stx-null?
                                                    _tl2640426440_)
                                                   (letrec ((_loop2639626443_
                                                             (lambda (_hd2639426447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2640026450_)
                       (if (gx#stx-pair? _hd2639426447_)
                           (let ((_e2639726453_ (gx#syntax-e _hd2639426447_)))
                             (let ((_lp-hd2639826457_ (##car _e2639726453_))
                                   (_lp-tl2639926460_ (##cdr _e2639726453_)))
                               (_loop2639626443_
                                _lp-tl2639926460_
                                (cons _lp-hd2639826457_ _tgt2640026450_))))
                           (let ((_tgt2640126463_ (reverse _tgt2640026450_)))
                             ((lambda (_L26467_ _L26469_)
                                (let ((_g2648726504_
                                       (lambda (_g2648826500_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2648826500_))))
                                  (let ((_g2648626576_
                                         (lambda (_g2648826508_)
                                           (if (gx#stx-pair/null?
                                                _g2648826508_)
                                               (if (fx>= (gx#stx-length
                                                          _g2648826508_)
                                                         '0)
                                                   (let ((_g29609_
                                                          (gx#syntax-split-splice
                                                           _g2648826508_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29610_
                                                              (values-count
                                                               _g29609_)))
                                                         (if (not (fx= _g29610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29610_)))
               (let ((_target2649026511_ (values-ref _g29609_ 0))
                     (_tl2649226514_ (values-ref _g29609_ 1)))
                 (if (gx#stx-null? _tl2649226514_)
                     (letrec ((_loop2649326517_
                               (lambda (_hd2649126521_ _$e2649726524_)
                                 (if (gx#stx-pair? _hd2649126521_)
                                     (let ((_e2649426527_
                                            (gx#syntax-e _hd2649126521_)))
                                       (let ((_lp-hd2649526531_
                                              (##car _e2649426527_))
                                             (_lp-tl2649626534_
                                              (##cdr _e2649426527_)))
                                         (_loop2649326517_
                                          _lp-tl2649626534_
                                          (cons _lp-hd2649526531_
                                                _$e2649726524_))))
                                     (let ((_$e2649826537_
                                            (reverse _$e2649726524_)))
                                       ((lambda (_L26541_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2655626562_ _g2655726565_)
                                       (cons _g2655626562_ _g2655726565_))
                                     '()
                                     _L26541_))
                            (cons _L26467_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26541_ _L26469_)
                  (foldr (lambda (_g2655826568_ _g2655926571_ _g2656026573_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2655926571_
                                             (cons _g2655826568_ '())))
                                 _g2656026573_))
                         '()
                         _L26541_
                         _L26469_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2649826537_))))))
                       (_loop2649326517_ _target2649026511_ '()))
                     (_g2648726504_ _g2648826508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2648726504_
                                                    _g2648826508_))
                                               (_g2648726504_
                                                _g2648826508_)))))
                                    (_g2648626576_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2657926582_
                                                        _g2658026585_)
                                                 (cons _g2657926582_
                                                       _g2658026585_))
                                               '()
                                               _L26469_)))))))
                              _hd2640326437_
                              _tgt2640126463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2639626443_
                                                      _target2639326427_
                                                      '()))
                                                   (_g2638626410_
                                                    _g2638726414_))))
                                           (_g2638626410_ _g2638726414_)))))
                                 (_g2638626410_ _g2638726414_))
                             (_g2638626410_ _g2638726414_))))
                     (_g2638626410_ _g2638726414_)))))
          (_g2638526588_ _stx26383_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26594_)
      (let ((_g2659826656_
             (lambda (_g2659926652_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2659926652_))))
        (let ((_g2659726933_
               (lambda (_g2659926660_)
                 (if (gx#stx-pair? _g2659926660_)
                     (let ((_e2661926663_ (gx#syntax-e _g2659926660_)))
                       (let ((_hd2662026667_ (##car _e2661926663_))
                             (_tl2662126670_ (##cdr _e2661926663_)))
                         (if (gx#stx-pair? _tl2662126670_)
                             (let ((_e2662226673_
                                    (gx#syntax-e _tl2662126670_)))
                               (let ((_hd2662326677_ (##car _e2662226673_))
                                     (_tl2662426680_ (##cdr _e2662226673_)))
                                 (if (gx#stx-pair/null? _hd2662326677_)
                                     (if (fx>= (gx#stx-length _hd2662326677_)
                                               '0)
                                         (let ((_g29611_
                                                (gx#syntax-split-splice
                                                 _hd2662326677_
                                                 '0)))
                                           (begin
                                             (let ((_g29612_
                                                    (values-count _g29611_)))
                                               (if (not (fx= _g29612_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29612_)))
                                             (let ((_target2662526683_
                                                    (values-ref _g29611_ 0))
                                                   (_tl2662726686_
                                                    (values-ref _g29611_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2662726686_)
                                                   (letrec ((_loop2662826689_
                                                             (lambda (_hd2662626693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2663226696_
                              _param2663326698_)
                       (if (gx#stx-pair? _hd2662626693_)
                           (let ((_e2662926701_ (gx#syntax-e _hd2662626693_)))
                             (let ((_lp-hd2663026705_ (##car _e2662926701_))
                                   (_lp-tl2663126708_ (##cdr _e2662926701_)))
                               (if (gx#stx-pair? _lp-hd2663026705_)
                                   (let ((_e2663626711_
                                          (gx#syntax-e _lp-hd2663026705_)))
                                     (let ((_hd2663726715_
                                            (##car _e2663626711_))
                                           (_tl2663826718_
                                            (##cdr _e2663626711_)))
                                       (if (gx#stx-pair? _tl2663826718_)
                                           (let ((_e2663926721_
                                                  (gx#syntax-e
                                                   _tl2663826718_)))
                                             (let ((_hd2664026725_
                                                    (##car _e2663926721_))
                                                   (_tl2664126728_
                                                    (##cdr _e2663926721_)))
                                               (if (gx#stx-null?
                                                    _tl2664126728_)
                                                   (_loop2662826689_
                                                    _lp-tl2663126708_
                                                    (cons _hd2664026725_
                                                          _expr2663226696_)
                                                    (cons _hd2663726715_
                                                          _param2663326698_))
                                                   (_g2659826656_
                                                    _g2659926660_))))
                                           (_g2659826656_ _g2659926660_))))
                                   (_g2659826656_ _g2659926660_))))
                           (let ((_expr2663426731_ (reverse _expr2663226696_))
                                 (_param2663526734_
                                  (reverse _param2663326698_)))
                             (if (gx#stx-pair/null? _tl2662426680_)
                                 (if (fx>= (gx#stx-length _tl2662426680_) '0)
                                     (let ((_g29613_
                                            (gx#syntax-split-splice
                                             _tl2662426680_
                                             '0)))
                                       (begin
                                         (let ((_g29614_
                                                (values-count _g29613_)))
                                           (if (not (fx= _g29614_ 2))
                                               (error "Context expects 2 values"
                                                      _g29614_)))
                                         (let ((_target2664226737_
                                                (values-ref _g29613_ 0))
                                               (_tl2664426740_
                                                (values-ref _g29613_ 1)))
                                           (if (gx#stx-null? _tl2664426740_)
                                               (letrec ((_loop2664526743_
                                                         (lambda (_hd2664326747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2664926750_)
                   (if (gx#stx-pair? _hd2664326747_)
                       (let ((_e2664626753_ (gx#syntax-e _hd2664326747_)))
                         (let ((_lp-hd2664726757_ (##car _e2664626753_))
                               (_lp-tl2664826760_ (##cdr _e2664626753_)))
                           (_loop2664526743_
                            _lp-tl2664826760_
                            (cons _lp-hd2664726757_ _body2664926750_))))
                       (let ((_body2665026763_ (reverse _body2664926750_)))
                         ((lambda (_L26767_ _L26769_ _L26770_)
                            (let ((_g2679326801_
                                   (lambda (_g2679426797_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2679426797_))))
                              (let ((_g2679226921_
                                     (lambda (_g2679426805_)
                                       ((lambda (_L26808_)
                                          (let ()
                                            (let ((_g2682026837_
                                                   (lambda (_g2682126833_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2682126833_))))
                                              (let ((_g2681926901_
                                                     (lambda (_g2682126841_)
                                                       (if (gx#stx-pair/null?
                                                            _g2682126841_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2682126841_)
                             '0)
                       (let ((_g29615_
                              (gx#syntax-split-splice _g2682126841_ '0)))
                         (begin
                           (let ((_g29616_ (values-count _g29615_)))
                             (if (not (fx= _g29616_ 2))
                                 (error "Context expects 2 values" _g29616_)))
                           (let ((_target2682326844_ (values-ref _g29615_ 0))
                                 (_tl2682526847_ (values-ref _g29615_ 1)))
                             (if (gx#stx-null? _tl2682526847_)
                                 (letrec ((_loop2682626850_
                                           (lambda (_hd2682426854_
                                                    _arg2683026857_)
                                             (if (gx#stx-pair? _hd2682426854_)
                                                 (let ((_e2682726860_
                                                        (gx#syntax-e
                                                         _hd2682426854_)))
                                                   (let ((_lp-hd2682826864_
                                                          (##car _e2682726860_))
                                                         (_lp-tl2682926867_
                                                          (##cdr _e2682726860_)))
                                                     (_loop2682626850_
                                                      _lp-tl2682926867_
                                                      (cons _lp-hd2682826864_
                                                            _arg2683026857_))))
                                                 (let ((_arg2683126870_
                                                        (reverse _arg2683026857_)))
                                                   ((lambda (_L26874_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26808_
                              (begin
                                '#!void
                                (foldr (lambda (_g2689226895_ _g2689326898_)
                                         (cons _g2689226895_ _g2689326898_))
                                       '()
                                       _L26874_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2683126870_))))))
                                   (_loop2682626850_ _target2682326844_ '()))
                                 (_g2682026837_ _g2682126841_)))))
                       (_g2682026837_ _g2682126841_))
                   (_g2682026837_ _g2682126841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2681926901_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2690426907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2690526910_)
                            (cons _g2690426907_ _g2690526910_))
                          '()
                          _L26770_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2691226915_ _g2691326918_)
                            (cons _g2691226915_ _g2691326918_))
                          '()
                          _L26769_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2679426805_))))
                                (_g2679226921_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2692426927_
                                                                _g2692526930_)
                                                         (cons _g2692426927_
                                                               _g2692526930_))
                                                       '()
                                                       _L26767_))))
                                  (gx#stx-source _stx26594_))))))
                          _body2665026763_
                          _expr2663426731_
                          _param2663526734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2664526743_
                                                  _target2664226737_
                                                  '()))
                                               (_g2659826656_
                                                _g2659926660_)))))
                                     (_g2659826656_ _g2659926660_))
                                 (_g2659826656_ _g2659926660_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2662826689_
                                                      _target2662526683_
                                                      '()
                                                      '()))
                                                   (_g2659826656_
                                                    _g2659926660_)))))
                                         (_g2659826656_ _g2659926660_))
                                     (_g2659826656_ _g2659926660_))))
                             (_g2659826656_ _g2659926660_))))
                     (_g2659826656_ _g2659926660_)))))
          (let ((_g2659627015_
                 (lambda (_g2659926937_)
                   (if (gx#stx-pair? _g2659926937_)
                       (let ((_e2660126940_ (gx#syntax-e _g2659926937_)))
                         (let ((_hd2660226944_ (##car _e2660126940_))
                               (_tl2660326947_ (##cdr _e2660126940_)))
                           (if (gx#stx-pair? _tl2660326947_)
                               (let ((_e2660426950_
                                      (gx#syntax-e _tl2660326947_)))
                                 (let ((_hd2660526954_ (##car _e2660426950_))
                                       (_tl2660626957_ (##cdr _e2660426950_)))
                                   (if (gx#stx-null? _hd2660526954_)
                                       (if (gx#stx-pair/null? _tl2660626957_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2660626957_)
                                                     '0)
                                               (let ((_g29617_
                                                      (gx#syntax-split-splice
                                                       _tl2660626957_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29618_
                                                          (values-count
                                                           _g29617_)))
                                                     (if (not (fx= _g29618_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29618_)))
                                                   (let ((_target2660726960_
                                                          (values-ref
                                                           _g29617_
                                                           0))
                                                         (_tl2660926963_
                                                          (values-ref
                                                           _g29617_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2660926963_)
                                                         (letrec ((_loop2661026966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2660826970_ _body2661426973_)
                             (if (gx#stx-pair? _hd2660826970_)
                                 (let ((_e2661126976_
                                        (gx#syntax-e _hd2660826970_)))
                                   (let ((_lp-hd2661226980_
                                          (##car _e2661126976_))
                                         (_lp-tl2661326983_
                                          (##cdr _e2661126976_)))
                                     (_loop2661026966_
                                      _lp-tl2661326983_
                                      (cons _lp-hd2661226980_
                                            _body2661426973_))))
                                 (let ((_body2661526986_
                                        (reverse _body2661426973_)))
                                   ((lambda (_L26990_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2700627009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2700727012_)
                     (cons _g2700627009_ _g2700727012_))
                   '()
                   _L26990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2661526986_))))))
                   (_loop2661026966_ _target2660726960_ '()))
                 (_g2659726933_ _g2659926937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2659726933_ _g2659926937_))
                                           (_g2659726933_ _g2659926937_))
                                       (_g2659726933_ _g2659926937_))))
                               (_g2659726933_ _g2659926937_))))
                       (_g2659726933_ _g2659926937_)))))
            (_g2659627015_ _stx26594_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27023_)
      (let ((_g2702727051_
             (lambda (_g2702827047_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2702827047_))))
        (let ((_g2702627136_
               (lambda (_g2702827055_)
                 (if (gx#stx-pair? _g2702827055_)
                     (let ((_e2703127058_ (gx#syntax-e _g2702827055_)))
                       (let ((_hd2703227062_ (##car _e2703127058_))
                             (_tl2703327065_ (##cdr _e2703127058_)))
                         (if (gx#stx-pair? _tl2703327065_)
                             (let ((_e2703427068_
                                    (gx#syntax-e _tl2703327065_)))
                               (let ((_hd2703527072_ (##car _e2703427068_))
                                     (_tl2703627075_ (##cdr _e2703427068_)))
                                 (if (gx#stx-pair/null? _tl2703627075_)
                                     (if (fx>= (gx#stx-length _tl2703627075_)
                                               '0)
                                         (let ((_g29619_
                                                (gx#syntax-split-splice
                                                 _tl2703627075_
                                                 '0)))
                                           (begin
                                             (let ((_g29620_
                                                    (values-count _g29619_)))
                                               (if (not (fx= _g29620_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29620_)))
                                             (let ((_target2703727078_
                                                    (values-ref _g29619_ 0))
                                                   (_tl2703927081_
                                                    (values-ref _g29619_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2703927081_)
                                                   (letrec ((_loop2704027084_
                                                             (lambda (_hd2703827088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2704427091_)
                       (if (gx#stx-pair? _hd2703827088_)
                           (let ((_e2704127094_ (gx#syntax-e _hd2703827088_)))
                             (let ((_lp-hd2704227098_ (##car _e2704127094_))
                                   (_lp-tl2704327101_ (##cdr _e2704127094_)))
                               (_loop2704027084_
                                _lp-tl2704327101_
                                (cons _lp-hd2704227098_ _body2704427091_))))
                           (let ((_body2704527104_ (reverse _body2704427091_)))
                             ((lambda (_L27108_ _L27110_)
                                (if (gx#identifier? _L27110_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27110_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2712727130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2712827133_)
                               (cons _g2712727130_ _g2712827133_))
                             '()
                             _L27108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2702727051_ _g2702827055_)))
                              _body2704527104_
                              _hd2703527072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2704027084_
                                                      _target2703727078_
                                                      '()))
                                                   (_g2702727051_
                                                    _g2702827055_)))))
                                         (_g2702727051_ _g2702827055_))
                                     (_g2702727051_ _g2702827055_))))
                             (_g2702727051_ _g2702827055_))))
                     (_g2702727051_ _g2702827055_)))))
          (_g2702627136_ _$stx27023_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27141_)
      (let ((_g2714527169_
             (lambda (_g2714627165_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2714627165_))))
        (let ((_g2714427254_
               (lambda (_g2714627173_)
                 (if (gx#stx-pair? _g2714627173_)
                     (let ((_e2714927176_ (gx#syntax-e _g2714627173_)))
                       (let ((_hd2715027180_ (##car _e2714927176_))
                             (_tl2715127183_ (##cdr _e2714927176_)))
                         (if (gx#stx-pair? _tl2715127183_)
                             (let ((_e2715227186_
                                    (gx#syntax-e _tl2715127183_)))
                               (let ((_hd2715327190_ (##car _e2715227186_))
                                     (_tl2715427193_ (##cdr _e2715227186_)))
                                 (if (gx#stx-pair/null? _tl2715427193_)
                                     (if (fx>= (gx#stx-length _tl2715427193_)
                                               '0)
                                         (let ((_g29621_
                                                (gx#syntax-split-splice
                                                 _tl2715427193_
                                                 '0)))
                                           (begin
                                             (let ((_g29622_
                                                    (values-count _g29621_)))
                                               (if (not (fx= _g29622_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29622_)))
                                             (let ((_target2715527196_
                                                    (values-ref _g29621_ 0))
                                                   (_tl2715727199_
                                                    (values-ref _g29621_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2715727199_)
                                                   (letrec ((_loop2715827202_
                                                             (lambda (_hd2715627206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2716227209_)
                       (if (gx#stx-pair? _hd2715627206_)
                           (let ((_e2715927212_ (gx#syntax-e _hd2715627206_)))
                             (let ((_lp-hd2716027216_ (##car _e2715927212_))
                                   (_lp-tl2716127219_ (##cdr _e2715927212_)))
                               (_loop2715827202_
                                _lp-tl2716127219_
                                (cons _lp-hd2716027216_ _body2716227209_))))
                           (let ((_body2716327222_ (reverse _body2716227209_)))
                             ((lambda (_L27226_ _L27228_)
                                (if (gx#identifier? _L27228_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27228_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2724527248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2724627251_)
                               (cons _g2724527248_ _g2724627251_))
                             '()
                             _L27226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2714527169_ _g2714627173_)))
                              _body2716327222_
                              _hd2715327190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2715827202_
                                                      _target2715527196_
                                                      '()))
                                                   (_g2714527169_
                                                    _g2714627173_)))))
                                         (_g2714527169_ _g2714627173_))
                                     (_g2714527169_ _g2714627173_))))
                             (_g2714527169_ _g2714627173_))))
                     (_g2714527169_ _g2714627173_)))))
          (_g2714427254_ _$stx27141_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27259_)
      (let ((_g2726327281_
             (lambda (_g2726427277_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2726427277_))))
        (let ((_g2726227336_
               (lambda (_g2726427285_)
                 (if (gx#stx-pair? _g2726427285_)
                     (let ((_e2726727288_ (gx#syntax-e _g2726427285_)))
                       (let ((_hd2726827292_ (##car _e2726727288_))
                             (_tl2726927295_ (##cdr _e2726727288_)))
                         (if (gx#stx-pair? _tl2726927295_)
                             (let ((_e2727027298_
                                    (gx#syntax-e _tl2726927295_)))
                               (let ((_hd2727127302_ (##car _e2727027298_))
                                     (_tl2727227305_ (##cdr _e2727027298_)))
                                 (if (gx#stx-pair? _tl2727227305_)
                                     (let ((_e2727327308_
                                            (gx#syntax-e _tl2727227305_)))
                                       (let ((_hd2727427312_
                                              (##car _e2727327308_))
                                             (_tl2727527315_
                                              (##cdr _e2727327308_)))
                                         (if (gx#stx-null? _tl2727527315_)
                                             ((lambda (_L27318_ _L27320_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27320_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27318_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2727427312_
                                              _hd2727127302_)
                                             (_g2726327281_ _g2726427285_))))
                                     (_g2726327281_ _g2726427285_))))
                             (_g2726327281_ _g2726427285_))))
                     (_g2726327281_ _g2726427285_)))))
          (_g2726227336_ _$stx27259_))))))
