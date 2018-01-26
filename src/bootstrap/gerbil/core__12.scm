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
    (lambda _$args27406_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args27406_)))
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
    (lambda _$args27402_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args27402_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27399_)
      (if (gx#identifier? _stx27399_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27399_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27396_)
      (if (gx#identifier? _stx27396_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27396_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx27410_)
      (let* ((_g2741627475_
              (lambda (_g2741727471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2741727471_)))
             (_g2741527530_
              (lambda (_g2741727479_)
                (if (gx#stx-pair? _g2741727479_)
                    (let ((_e2746127482_ (gx#syntax-e _g2741727479_)))
                      (let ((_hd2746227486_ (##car _e2746127482_))
                            (_tl2746327489_ (##cdr _e2746127482_)))
                        (if (gx#stx-pair? _tl2746327489_)
                            (let ((_e2746427492_ (gx#syntax-e _tl2746327489_)))
                              (let ((_hd2746527496_ (##car _e2746427492_))
                                    (_tl2746627499_ (##cdr _e2746427492_)))
                                (if (gx#stx-pair? _tl2746627499_)
                                    (let ((_e2746727502_
                                           (gx#syntax-e _tl2746627499_)))
                                      (let ((_hd2746827506_
                                             (##car _e2746727502_))
                                            (_tl2746927509_
                                             (##cdr _e2746727502_)))
                                        (if (gx#stx-null? _tl2746927509_)
                                            ((lambda (_L27512_ _L27514_)
                                               (if (gx#identifier? _L27514_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27514_
                                                               (cons _L27512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2741627475_
                                                    _g2741727479_)))
                                             _hd2746827506_
                                             _hd2746527496_)
                                            (_g2741627475_ _g2741727479_))))
                                    (_g2741627475_ _g2741727479_))))
                            (_g2741627475_ _g2741727479_))))
                    (_g2741627475_ _g2741727479_))))
             (_g2741427570_
              (lambda (_g2741727534_)
                (if (gx#stx-pair? _g2741727534_)
                    (let ((_e2745327537_ (gx#syntax-e _g2741727534_)))
                      (let ((_hd2745427541_ (##car _e2745327537_))
                            (_tl2745527544_ (##cdr _e2745327537_)))
                        (if (gx#stx-pair? _tl2745527544_)
                            (let ((_e2745627547_ (gx#syntax-e _tl2745527544_)))
                              (let ((_hd2745727551_ (##car _e2745627547_))
                                    (_tl2745827554_ (##cdr _e2745627547_)))
                                ((lambda (_L27557_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27557_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27557_)
                                        _stx27410_)
                                       (_g2741527530_ _g2741727534_)))
                                 _hd2745727551_)))
                            (_g2741527530_ _g2741727534_))))
                    (_g2741527530_ _g2741727534_))))
             (_g2741327711_
              (lambda (_g2741727574_)
                (if (gx#stx-pair? _g2741727574_)
                    (let ((_e2743127577_ (gx#syntax-e _g2741727574_)))
                      (let ((_hd2743227581_ (##car _e2743127577_))
                            (_tl2743327584_ (##cdr _e2743127577_)))
                        (if (gx#stx-pair? _tl2743327584_)
                            (let ((_e2743427587_ (gx#syntax-e _tl2743327584_)))
                              (let ((_hd2743527591_ (##car _e2743427587_))
                                    (_tl2743627594_ (##cdr _e2743427587_)))
                                (if (gx#stx-pair? _hd2743527591_)
                                    (let ((_e2743727597_
                                           (gx#syntax-e _hd2743527591_)))
                                      (let ((_hd2743827601_
                                             (##car _e2743727597_))
                                            (_tl2743927604_
                                             (##cdr _e2743727597_)))
                                        (if (gx#stx-pair/null? _tl2743927604_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2743927604_)
                                                      '0)
                                                (let ((_g31056_
                                                       (gx#syntax-split-splice
                                                        _tl2743927604_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31057_
                                                           (values-count
                                                            _g31056_)))
                                                      (if (not (fx= _g31057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2744027607_
                                                           (values-ref
                                                            _g31056_
                                                            0))
                                                          (_tl2744227610_
                                                           (values-ref
                                                            _g31056_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2744227610_)
                                                          (letrec ((_loop2744327613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2744127617_ _arg2744727620_)
                              (if (gx#stx-pair? _hd2744127617_)
                                  (let ((_e2744427623_
                                         (gx#syntax-e _hd2744127617_)))
                                    (let ((_lp-hd2744527627_
                                           (##car _e2744427623_))
                                          (_lp-tl2744627630_
                                           (##cdr _e2744427623_)))
                                      (_loop2744327613_
                                       _lp-tl2744627630_
                                       (cons _lp-hd2744527627_
                                             _arg2744727620_))))
                                  (let ((_arg2744827633_
                                         (reverse _arg2744727620_)))
                                    (if (gx#stx-pair? _tl2743627594_)
                                        (let ((_e2744927637_
                                               (gx#syntax-e _tl2743627594_)))
                                          (let ((_hd2745027641_
                                                 (##car _e2744927637_))
                                                (_tl2745127644_
                                                 (##cdr _e2744927637_)))
                                            (if (gx#stx-null? _tl2745127644_)
                                                ((lambda (_L27647_
                                                          _L27649_
                                                          _L27650_)
                                                   (if (gx#identifier?
                                                        _L27650_)
                                                       (let* ((_g2767227680_
                                                               (lambda (_g2767327676_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2767327676_)))
                      (_g2767127707_
                       (lambda (_g2767327684_)
                         ((lambda (_L27687_)
                            (let ()
                              (cons _L27687_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2769827701_
                                                      _g2769927704_)
                                               (cons _g2769827701_
                                                     _g2769927704_))
                                             (cons _L27647_ '())
                                             _L27649_)))))
                          _g2767327684_))))
                 (_g2767127707_
                  (gx#stx-identifier _L27650_ _L27650_ '"-set!")))
               (_g2741427570_ _g2741727574_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2745027641_
                                                 _arg2744827633_
                                                 _hd2743827601_)
                                                (_g2741427570_
                                                 _g2741727574_))))
                                        (_g2741427570_ _g2741727574_)))))))
                    (_loop2744327613_ _target2744027607_ '()))
                  (_g2741427570_ _g2741727574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2741427570_ _g2741727574_))
                                            (_g2741427570_ _g2741727574_))))
                                    (_g2741427570_ _g2741727574_))))
                            (_g2741427570_ _g2741727574_))))
                    (_g2741427570_ _g2741727574_))))
             (_g2741227763_
              (lambda (_g2741727715_)
                (if (gx#stx-pair? _g2741727715_)
                    (let ((_e2741927718_ (gx#syntax-e _g2741727715_)))
                      (let ((_hd2742027722_ (##car _e2741927718_))
                            (_tl2742127725_ (##cdr _e2741927718_)))
                        (if (gx#stx-pair? _tl2742127725_)
                            (let ((_e2742227728_ (gx#syntax-e _tl2742127725_)))
                              (let ((_hd2742327732_ (##car _e2742227728_))
                                    (_tl2742427735_ (##cdr _e2742227728_)))
                                (if (gx#stx-pair? _hd2742327732_)
                                    (let ((_e2742527738_
                                           (gx#syntax-e _hd2742327732_)))
                                      (let ((_hd2742627742_
                                             (##car _e2742527738_))
                                            (_tl2742727745_
                                             (##cdr _e2742527738_)))
                                        ((lambda (_L27748_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L27748_)
                                                _stx27410_)
                                               (_g2741327711_ _g2741727715_)))
                                         _hd2742627742_)))
                                    (_g2741327711_ _g2741727715_))))
                            (_g2741327711_ _g2741727715_))))
                    (_g2741327711_ _g2741727715_)))))
        (_g2741227763_ _stx27410_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx27768_)
      (let* ((_g2777127795_
              (lambda (_g2777227791_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2777227791_)))
             (_g2777027973_
              (lambda (_g2777227799_)
                (if (gx#stx-pair? _g2777227799_)
                    (let ((_e2777527802_ (gx#syntax-e _g2777227799_)))
                      (let ((_hd2777627806_ (##car _e2777527802_))
                            (_tl2777727809_ (##cdr _e2777527802_)))
                        (if (gx#stx-pair/null? _tl2777727809_)
                            (if (fx>= (gx#stx-length _tl2777727809_) '1)
                                (let ((_g31058_
                                       (gx#syntax-split-splice
                                        _tl2777727809_
                                        '1)))
                                  (begin
                                    (let ((_g31059_ (values-count _g31058_)))
                                      (if (not (fx= _g31059_ 2))
                                          (error "Context expects 2 values"
                                                 _g31059_)))
                                    (let ((_target2777827812_
                                           (values-ref _g31058_ 0))
                                          (_tl2778027815_
                                           (values-ref _g31058_ 1)))
                                      (if (gx#stx-pair? _tl2778027815_)
                                          (let ((_e2778727818_
                                                 (gx#syntax-e _tl2778027815_)))
                                            (let ((_hd2778827822_
                                                   (##car _e2778727818_))
                                                  (_tl2778927825_
                                                   (##cdr _e2778727818_)))
                                              (if (gx#stx-null? _tl2778927825_)
                                                  (letrec ((_loop2778127828_
                                                            (lambda (_hd2777927832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2778527835_)
                      (if (gx#stx-pair? _hd2777927832_)
                          (let ((_e2778227838_ (gx#syntax-e _hd2777927832_)))
                            (let ((_lp-hd2778327842_ (##car _e2778227838_))
                                  (_lp-tl2778427845_ (##cdr _e2778227838_)))
                              (_loop2778127828_
                               _lp-tl2778427845_
                               (cons _lp-hd2778327842_ _tgt2778527835_))))
                          (let ((_tgt2778627848_ (reverse _tgt2778527835_)))
                            ((lambda (_L27852_ _L27854_)
                               (let* ((_g2787227889_
                                       (lambda (_g2787327885_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2787327885_)))
                                      (_g2787127961_
                                       (lambda (_g2787327893_)
                                         (if (gx#stx-pair/null? _g2787327893_)
                                             (if (fx>= (gx#stx-length
                                                        _g2787327893_)
                                                       '0)
                                                 (let ((_g31060_
                                                        (gx#syntax-split-splice
                                                         _g2787327893_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31061_
                                                            (values-count
                                                             _g31060_)))
                                                       (if (not (fx= _g31061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2787527896_
                                                            (values-ref
                                                             _g31060_
                                                             0))
                                                           (_tl2787727899_
                                                            (values-ref
                                                             _g31060_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2787727899_)
                                                           (letrec ((_loop2787827902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2787627906_ _$e2788227909_)
                               (if (gx#stx-pair? _hd2787627906_)
                                   (let ((_e2787927912_
                                          (gx#syntax-e _hd2787627906_)))
                                     (let ((_lp-hd2788027916_
                                            (##car _e2787927912_))
                                           (_lp-tl2788127919_
                                            (##cdr _e2787927912_)))
                                       (_loop2787827902_
                                        _lp-tl2788127919_
                                        (cons _lp-hd2788027916_
                                              _$e2788227909_))))
                                   (let ((_$e2788327922_
                                          (reverse _$e2788227909_)))
                                     ((lambda (_L27926_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2794127947_ _g2794227950_)
                                     (cons _g2794127947_ _g2794227950_))
                                   '()
                                   _L27926_))
                          (cons _L27852_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L27926_ _L27854_)
                (foldr (lambda (_g2794327953_ _g2794427956_ _g2794527958_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2794427956_
                                           (cons _g2794327953_ '())))
                               _g2794527958_))
                       '()
                       _L27926_
                       _L27854_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2788327922_))))))
                     (_loop2787827902_ _target2787527896_ '()))
                   (_g2787227889_ _g2787327893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2787227889_ _g2787327893_))
                                             (_g2787227889_ _g2787327893_)))))
                                 (_g2787127961_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2796427967_
                                                     _g2796527970_)
                                              (cons _g2796427967_
                                                    _g2796527970_))
                                            '()
                                            _L27854_))))))
                             _hd2778827822_
                             _tgt2778627848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2778127828_
                                                     _target2777827812_
                                                     '()))
                                                  (_g2777127795_
                                                   _g2777227799_))))
                                          (_g2777127795_ _g2777227799_)))))
                                (_g2777127795_ _g2777227799_))
                            (_g2777127795_ _g2777227799_))))
                    (_g2777127795_ _g2777227799_)))))
        (_g2777027973_ _stx27768_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx27979_)
      (let* ((_g2798328041_
              (lambda (_g2798428037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2798428037_)))
             (_g2798228318_
              (lambda (_g2798428045_)
                (if (gx#stx-pair? _g2798428045_)
                    (let ((_e2800428048_ (gx#syntax-e _g2798428045_)))
                      (let ((_hd2800528052_ (##car _e2800428048_))
                            (_tl2800628055_ (##cdr _e2800428048_)))
                        (if (gx#stx-pair? _tl2800628055_)
                            (let ((_e2800728058_ (gx#syntax-e _tl2800628055_)))
                              (let ((_hd2800828062_ (##car _e2800728058_))
                                    (_tl2800928065_ (##cdr _e2800728058_)))
                                (if (gx#stx-pair/null? _hd2800828062_)
                                    (if (fx>= (gx#stx-length _hd2800828062_)
                                              '0)
                                        (let ((_g31062_
                                               (gx#syntax-split-splice
                                                _hd2800828062_
                                                '0)))
                                          (begin
                                            (let ((_g31063_
                                                   (values-count _g31062_)))
                                              (if (not (fx= _g31063_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31063_)))
                                            (let ((_target2801028068_
                                                   (values-ref _g31062_ 0))
                                                  (_tl2801228071_
                                                   (values-ref _g31062_ 1)))
                                              (if (gx#stx-null? _tl2801228071_)
                                                  (letrec ((_loop2801328074_
                                                            (lambda (_hd2801128078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2801728081_
                             _param2801828083_)
                      (if (gx#stx-pair? _hd2801128078_)
                          (let ((_e2801428086_ (gx#syntax-e _hd2801128078_)))
                            (let ((_lp-hd2801528090_ (##car _e2801428086_))
                                  (_lp-tl2801628093_ (##cdr _e2801428086_)))
                              (if (gx#stx-pair? _lp-hd2801528090_)
                                  (let ((_e2802128096_
                                         (gx#syntax-e _lp-hd2801528090_)))
                                    (let ((_hd2802228100_
                                           (##car _e2802128096_))
                                          (_tl2802328103_
                                           (##cdr _e2802128096_)))
                                      (if (gx#stx-pair? _tl2802328103_)
                                          (let ((_e2802428106_
                                                 (gx#syntax-e _tl2802328103_)))
                                            (let ((_hd2802528110_
                                                   (##car _e2802428106_))
                                                  (_tl2802628113_
                                                   (##cdr _e2802428106_)))
                                              (if (gx#stx-null? _tl2802628113_)
                                                  (_loop2801328074_
                                                   _lp-tl2801628093_
                                                   (cons _hd2802528110_
                                                         _expr2801728081_)
                                                   (cons _hd2802228100_
                                                         _param2801828083_))
                                                  (_g2798328041_
                                                   _g2798428045_))))
                                          (_g2798328041_ _g2798428045_))))
                                  (_g2798328041_ _g2798428045_))))
                          (let ((_expr2801928116_ (reverse _expr2801728081_))
                                (_param2802028119_
                                 (reverse _param2801828083_)))
                            (if (gx#stx-pair/null? _tl2800928065_)
                                (if (fx>= (gx#stx-length _tl2800928065_) '0)
                                    (let ((_g31064_
                                           (gx#syntax-split-splice
                                            _tl2800928065_
                                            '0)))
                                      (begin
                                        (let ((_g31065_
                                               (values-count _g31064_)))
                                          (if (not (fx= _g31065_ 2))
                                              (error "Context expects 2 values"
                                                     _g31065_)))
                                        (let ((_target2802728122_
                                               (values-ref _g31064_ 0))
                                              (_tl2802928125_
                                               (values-ref _g31064_ 1)))
                                          (if (gx#stx-null? _tl2802928125_)
                                              (letrec ((_loop2803028128_
                                                        (lambda (_hd2802828132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2803428135_)
                  (if (gx#stx-pair? _hd2802828132_)
                      (let ((_e2803128138_ (gx#syntax-e _hd2802828132_)))
                        (let ((_lp-hd2803228142_ (##car _e2803128138_))
                              (_lp-tl2803328145_ (##cdr _e2803128138_)))
                          (_loop2803028128_
                           _lp-tl2803328145_
                           (cons _lp-hd2803228142_ _body2803428135_))))
                      (let ((_body2803528148_ (reverse _body2803428135_)))
                        ((lambda (_L28152_ _L28154_ _L28155_)
                           (let* ((_g2817828186_
                                   (lambda (_g2817928182_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2817928182_)))
                                  (_g2817728306_
                                   (lambda (_g2817928190_)
                                     ((lambda (_L28193_)
                                        (let ()
                                          (let* ((_g2820528222_
                                                  (lambda (_g2820628218_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2820628218_)))
                                                 (_g2820428286_
                                                  (lambda (_g2820628226_)
                                                    (if (gx#stx-pair/null?
                                                         _g2820628226_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2820628226_)
                          '0)
                    (let ((_g31066_ (gx#syntax-split-splice _g2820628226_ '0)))
                      (begin
                        (let ((_g31067_ (values-count _g31066_)))
                          (if (not (fx= _g31067_ 2))
                              (error "Context expects 2 values" _g31067_)))
                        (let ((_target2820828229_ (values-ref _g31066_ 0))
                              (_tl2821028232_ (values-ref _g31066_ 1)))
                          (if (gx#stx-null? _tl2821028232_)
                              (letrec ((_loop2821128235_
                                        (lambda (_hd2820928239_
                                                 _arg2821528242_)
                                          (if (gx#stx-pair? _hd2820928239_)
                                              (let ((_e2821228245_
                                                     (gx#syntax-e
                                                      _hd2820928239_)))
                                                (let ((_lp-hd2821328249_
                                                       (##car _e2821228245_))
                                                      (_lp-tl2821428252_
                                                       (##cdr _e2821228245_)))
                                                  (_loop2821128235_
                                                   _lp-tl2821428252_
                                                   (cons _lp-hd2821328249_
                                                         _arg2821528242_))))
                                              (let ((_arg2821628255_
                                                     (reverse _arg2821528242_)))
                                                ((lambda (_L28259_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2827728280_ _g2827828283_)
                                      (cons _g2827728280_ _g2827828283_))
                                    '()
                                    _L28259_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2821628255_))))))
                                (_loop2821128235_ _target2820828229_ '()))
                              (_g2820528222_ _g2820628226_)))))
                    (_g2820528222_ _g2820628226_))
                (_g2820528222_ _g2820628226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2820428286_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2828928292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2829028295_)
                        (cons _g2828928292_ _g2829028295_))
                      '()
                      _L28155_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2829728300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2829828303_)
                        (cons _g2829728300_ _g2829828303_))
                      '()
                      _L28154_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2817928190_))))
                             (_g2817728306_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2830928312_
                                                             _g2831028315_)
                                                      (cons _g2830928312_
                                                            _g2831028315_))
                                                    '()
                                                    _L28152_))))
                               (gx#stx-source _stx27979_)))))
                         _body2803528148_
                         _expr2801928116_
                         _param2802028119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2803028128_
                                                 _target2802728122_
                                                 '()))
                                              (_g2798328041_ _g2798428045_)))))
                                    (_g2798328041_ _g2798428045_))
                                (_g2798328041_ _g2798428045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2801328074_
                                                     _target2801028068_
                                                     '()
                                                     '()))
                                                  (_g2798328041_
                                                   _g2798428045_)))))
                                        (_g2798328041_ _g2798428045_))
                                    (_g2798328041_ _g2798428045_))))
                            (_g2798328041_ _g2798428045_))))
                    (_g2798328041_ _g2798428045_))))
             (_g2798128400_
              (lambda (_g2798428322_)
                (if (gx#stx-pair? _g2798428322_)
                    (let ((_e2798628325_ (gx#syntax-e _g2798428322_)))
                      (let ((_hd2798728329_ (##car _e2798628325_))
                            (_tl2798828332_ (##cdr _e2798628325_)))
                        (if (gx#stx-pair? _tl2798828332_)
                            (let ((_e2798928335_ (gx#syntax-e _tl2798828332_)))
                              (let ((_hd2799028339_ (##car _e2798928335_))
                                    (_tl2799128342_ (##cdr _e2798928335_)))
                                (if (gx#stx-null? _hd2799028339_)
                                    (if (gx#stx-pair/null? _tl2799128342_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2799128342_)
                                                  '0)
                                            (let ((_g31068_
                                                   (gx#syntax-split-splice
                                                    _tl2799128342_
                                                    '0)))
                                              (begin
                                                (let ((_g31069_
                                                       (values-count
                                                        _g31068_)))
                                                  (if (not (fx= _g31069_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31069_)))
                                                (let ((_target2799228345_
                                                       (values-ref _g31068_ 0))
                                                      (_tl2799428348_
                                                       (values-ref
                                                        _g31068_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2799428348_)
                                                      (letrec ((_loop2799528351_
                                                                (lambda (_hd2799328355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2799928358_)
                          (if (gx#stx-pair? _hd2799328355_)
                              (let ((_e2799628361_
                                     (gx#syntax-e _hd2799328355_)))
                                (let ((_lp-hd2799728365_ (##car _e2799628361_))
                                      (_lp-tl2799828368_
                                       (##cdr _e2799628361_)))
                                  (_loop2799528351_
                                   _lp-tl2799828368_
                                   (cons _lp-hd2799728365_ _body2799928358_))))
                              (let ((_body2800028371_
                                     (reverse _body2799928358_)))
                                ((lambda (_L28375_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2839128394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2839228397_)
                  (cons _g2839128394_ _g2839228397_))
                '()
                _L28375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2800028371_))))))
                (_loop2799528351_ _target2799228345_ '()))
              (_g2798228318_ _g2798428322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2798228318_ _g2798428322_))
                                        (_g2798228318_ _g2798428322_))
                                    (_g2798228318_ _g2798428322_))))
                            (_g2798228318_ _g2798428322_))))
                    (_g2798228318_ _g2798428322_)))))
        (_g2798128400_ _stx27979_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28408_)
      (let* ((_g2841228436_
              (lambda (_g2841328432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2841328432_)))
             (_g2841128521_
              (lambda (_g2841328440_)
                (if (gx#stx-pair? _g2841328440_)
                    (let ((_e2841628443_ (gx#syntax-e _g2841328440_)))
                      (let ((_hd2841728447_ (##car _e2841628443_))
                            (_tl2841828450_ (##cdr _e2841628443_)))
                        (if (gx#stx-pair? _tl2841828450_)
                            (let ((_e2841928453_ (gx#syntax-e _tl2841828450_)))
                              (let ((_hd2842028457_ (##car _e2841928453_))
                                    (_tl2842128460_ (##cdr _e2841928453_)))
                                (if (gx#stx-pair/null? _tl2842128460_)
                                    (if (fx>= (gx#stx-length _tl2842128460_)
                                              '0)
                                        (let ((_g31070_
                                               (gx#syntax-split-splice
                                                _tl2842128460_
                                                '0)))
                                          (begin
                                            (let ((_g31071_
                                                   (values-count _g31070_)))
                                              (if (not (fx= _g31071_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31071_)))
                                            (let ((_target2842228463_
                                                   (values-ref _g31070_ 0))
                                                  (_tl2842428466_
                                                   (values-ref _g31070_ 1)))
                                              (if (gx#stx-null? _tl2842428466_)
                                                  (letrec ((_loop2842528469_
                                                            (lambda (_hd2842328473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2842928476_)
                      (if (gx#stx-pair? _hd2842328473_)
                          (let ((_e2842628479_ (gx#syntax-e _hd2842328473_)))
                            (let ((_lp-hd2842728483_ (##car _e2842628479_))
                                  (_lp-tl2842828486_ (##cdr _e2842628479_)))
                              (_loop2842528469_
                               _lp-tl2842828486_
                               (cons _lp-hd2842728483_ _body2842928476_))))
                          (let ((_body2843028489_ (reverse _body2842928476_)))
                            ((lambda (_L28493_ _L28495_)
                               (if (gx#identifier? _L28495_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28495_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2851228515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2851328518_)
                              (cons _g2851228515_ _g2851328518_))
                            '()
                            _L28493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2841228436_ _g2841328440_)))
                             _body2843028489_
                             _hd2842028457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2842528469_
                                                     _target2842228463_
                                                     '()))
                                                  (_g2841228436_
                                                   _g2841328440_)))))
                                        (_g2841228436_ _g2841328440_))
                                    (_g2841228436_ _g2841328440_))))
                            (_g2841228436_ _g2841328440_))))
                    (_g2841228436_ _g2841328440_)))))
        (_g2841128521_ _$stx28408_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28526_)
      (let* ((_g2853028554_
              (lambda (_g2853128550_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2853128550_)))
             (_g2852928639_
              (lambda (_g2853128558_)
                (if (gx#stx-pair? _g2853128558_)
                    (let ((_e2853428561_ (gx#syntax-e _g2853128558_)))
                      (let ((_hd2853528565_ (##car _e2853428561_))
                            (_tl2853628568_ (##cdr _e2853428561_)))
                        (if (gx#stx-pair? _tl2853628568_)
                            (let ((_e2853728571_ (gx#syntax-e _tl2853628568_)))
                              (let ((_hd2853828575_ (##car _e2853728571_))
                                    (_tl2853928578_ (##cdr _e2853728571_)))
                                (if (gx#stx-pair/null? _tl2853928578_)
                                    (if (fx>= (gx#stx-length _tl2853928578_)
                                              '0)
                                        (let ((_g31072_
                                               (gx#syntax-split-splice
                                                _tl2853928578_
                                                '0)))
                                          (begin
                                            (let ((_g31073_
                                                   (values-count _g31072_)))
                                              (if (not (fx= _g31073_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31073_)))
                                            (let ((_target2854028581_
                                                   (values-ref _g31072_ 0))
                                                  (_tl2854228584_
                                                   (values-ref _g31072_ 1)))
                                              (if (gx#stx-null? _tl2854228584_)
                                                  (letrec ((_loop2854328587_
                                                            (lambda (_hd2854128591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2854728594_)
                      (if (gx#stx-pair? _hd2854128591_)
                          (let ((_e2854428597_ (gx#syntax-e _hd2854128591_)))
                            (let ((_lp-hd2854528601_ (##car _e2854428597_))
                                  (_lp-tl2854628604_ (##cdr _e2854428597_)))
                              (_loop2854328587_
                               _lp-tl2854628604_
                               (cons _lp-hd2854528601_ _body2854728594_))))
                          (let ((_body2854828607_ (reverse _body2854728594_)))
                            ((lambda (_L28611_ _L28613_)
                               (if (gx#identifier? _L28613_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28613_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2863028633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2863128636_)
                              (cons _g2863028633_ _g2863128636_))
                            '()
                            _L28611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2853028554_ _g2853128558_)))
                             _body2854828607_
                             _hd2853828575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2854328587_
                                                     _target2854028581_
                                                     '()))
                                                  (_g2853028554_
                                                   _g2853128558_)))))
                                        (_g2853028554_ _g2853128558_))
                                    (_g2853028554_ _g2853128558_))))
                            (_g2853028554_ _g2853128558_))))
                    (_g2853028554_ _g2853128558_)))))
        (_g2852928639_ _$stx28526_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28644_)
      (let* ((_g2864828676_
              (lambda (_g2864928672_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2864928672_)))
             (_g2864728775_
              (lambda (_g2864928680_)
                (if (gx#stx-pair? _g2864928680_)
                    (let ((_e2865328683_ (gx#syntax-e _g2864928680_)))
                      (let ((_hd2865428687_ (##car _e2865328683_))
                            (_tl2865528690_ (##cdr _e2865328683_)))
                        (if (gx#stx-pair? _tl2865528690_)
                            (let ((_e2865628693_ (gx#syntax-e _tl2865528690_)))
                              (let ((_hd2865728697_ (##car _e2865628693_))
                                    (_tl2865828700_ (##cdr _e2865628693_)))
                                (if (gx#stx-pair? _tl2865828700_)
                                    (let ((_e2865928703_
                                           (gx#syntax-e _tl2865828700_)))
                                      (let ((_hd2866028707_
                                             (##car _e2865928703_))
                                            (_tl2866128710_
                                             (##cdr _e2865928703_)))
                                        (if (gx#stx-pair/null? _tl2866128710_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2866128710_)
                                                      '0)
                                                (let ((_g31074_
                                                       (gx#syntax-split-splice
                                                        _tl2866128710_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31075_
                                                           (values-count
                                                            _g31074_)))
                                                      (if (not (fx= _g31075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2866228713_
                                                           (values-ref
                                                            _g31074_
                                                            0))
                                                          (_tl2866428716_
                                                           (values-ref
                                                            _g31074_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2866428716_)
                                                          (letrec ((_loop2866528719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2866328723_ _rest2866928726_)
                              (if (gx#stx-pair? _hd2866328723_)
                                  (let ((_e2866628729_
                                         (gx#syntax-e _hd2866328723_)))
                                    (let ((_lp-hd2866728733_
                                           (##car _e2866628729_))
                                          (_lp-tl2866828736_
                                           (##cdr _e2866628729_)))
                                      (_loop2866528719_
                                       _lp-tl2866828736_
                                       (cons _lp-hd2866728733_
                                             _rest2866928726_))))
                                  (let ((_rest2867028739_
                                         (reverse _rest2866928726_)))
                                    ((lambda (_L28743_ _L28745_ _L28746_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L28746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L28745_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2876628769_
                                                     _g2876728772_)
                                              (cons _g2876628769_
                                                    _g2876728772_))
                                            '()
                                            _L28743_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest2867028739_
                                     _hd2866028707_
                                     _hd2865728697_))))))
                    (_loop2866528719_ _target2866228713_ '()))
                  (_g2864828676_ _g2864928680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2864828676_ _g2864928680_))
                                            (_g2864828676_ _g2864928680_))))
                                    (_g2864828676_ _g2864928680_))))
                            (_g2864828676_ _g2864928680_))))
                    (_g2864828676_ _g2864928680_)))))
        (_g2864728775_ _$stx28644_)))))
