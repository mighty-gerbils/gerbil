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
    (lambda _$args27403_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args27403_)))
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
    (lambda _$args27399_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args27399_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27396_)
      (if (gx#identifier? _stx27396_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27396_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27393_)
      (if (gx#identifier? _stx27393_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27393_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx27407_)
      (let* ((_g2741327472_
              (lambda (_g2741427468_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2741427468_)))
             (_g2741227527_
              (lambda (_g2741427476_)
                (if (gx#stx-pair? _g2741427476_)
                    (let ((_e2745827479_ (gx#syntax-e _g2741427476_)))
                      (let ((_hd2745927483_ (##car _e2745827479_))
                            (_tl2746027486_ (##cdr _e2745827479_)))
                        (if (gx#stx-pair? _tl2746027486_)
                            (let ((_e2746127489_ (gx#syntax-e _tl2746027486_)))
                              (let ((_hd2746227493_ (##car _e2746127489_))
                                    (_tl2746327496_ (##cdr _e2746127489_)))
                                (if (gx#stx-pair? _tl2746327496_)
                                    (let ((_e2746427499_
                                           (gx#syntax-e _tl2746327496_)))
                                      (let ((_hd2746527503_
                                             (##car _e2746427499_))
                                            (_tl2746627506_
                                             (##cdr _e2746427499_)))
                                        (if (gx#stx-null? _tl2746627506_)
                                            ((lambda (_L27509_ _L27511_)
                                               (if (gx#identifier? _L27511_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27511_
                                                               (cons _L27509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2741327472_
                                                    _g2741427476_)))
                                             _hd2746527503_
                                             _hd2746227493_)
                                            (_g2741327472_ _g2741427476_))))
                                    (_g2741327472_ _g2741427476_))))
                            (_g2741327472_ _g2741427476_))))
                    (_g2741327472_ _g2741427476_))))
             (_g2741127567_
              (lambda (_g2741427531_)
                (if (gx#stx-pair? _g2741427531_)
                    (let ((_e2745027534_ (gx#syntax-e _g2741427531_)))
                      (let ((_hd2745127538_ (##car _e2745027534_))
                            (_tl2745227541_ (##cdr _e2745027534_)))
                        (if (gx#stx-pair? _tl2745227541_)
                            (let ((_e2745327544_ (gx#syntax-e _tl2745227541_)))
                              (let ((_hd2745427548_ (##car _e2745327544_))
                                    (_tl2745527551_ (##cdr _e2745327544_)))
                                ((lambda (_L27554_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27554_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27554_)
                                        _stx27407_)
                                       (_g2741227527_ _g2741427531_)))
                                 _hd2745427548_)))
                            (_g2741227527_ _g2741427531_))))
                    (_g2741227527_ _g2741427531_))))
             (_g2741027708_
              (lambda (_g2741427571_)
                (if (gx#stx-pair? _g2741427571_)
                    (let ((_e2742827574_ (gx#syntax-e _g2741427571_)))
                      (let ((_hd2742927578_ (##car _e2742827574_))
                            (_tl2743027581_ (##cdr _e2742827574_)))
                        (if (gx#stx-pair? _tl2743027581_)
                            (let ((_e2743127584_ (gx#syntax-e _tl2743027581_)))
                              (let ((_hd2743227588_ (##car _e2743127584_))
                                    (_tl2743327591_ (##cdr _e2743127584_)))
                                (if (gx#stx-pair? _hd2743227588_)
                                    (let ((_e2743427594_
                                           (gx#syntax-e _hd2743227588_)))
                                      (let ((_hd2743527598_
                                             (##car _e2743427594_))
                                            (_tl2743627601_
                                             (##cdr _e2743427594_)))
                                        (if (gx#stx-pair/null? _tl2743627601_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2743627601_)
                                                      '0)
                                                (let ((_g31053_
                                                       (gx#syntax-split-splice
                                                        _tl2743627601_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31054_
                                                           (values-count
                                                            _g31053_)))
                                                      (if (not (fx= _g31054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2743727604_
                                                           (values-ref
                                                            _g31053_
                                                            0))
                                                          (_tl2743927607_
                                                           (values-ref
                                                            _g31053_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2743927607_)
                                                          (letrec ((_loop2744027610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2743827614_ _arg2744427617_)
                              (if (gx#stx-pair? _hd2743827614_)
                                  (let ((_e2744127620_
                                         (gx#syntax-e _hd2743827614_)))
                                    (let ((_lp-hd2744227624_
                                           (##car _e2744127620_))
                                          (_lp-tl2744327627_
                                           (##cdr _e2744127620_)))
                                      (_loop2744027610_
                                       _lp-tl2744327627_
                                       (cons _lp-hd2744227624_
                                             _arg2744427617_))))
                                  (let ((_arg2744527630_
                                         (reverse _arg2744427617_)))
                                    (if (gx#stx-pair? _tl2743327591_)
                                        (let ((_e2744627634_
                                               (gx#syntax-e _tl2743327591_)))
                                          (let ((_hd2744727638_
                                                 (##car _e2744627634_))
                                                (_tl2744827641_
                                                 (##cdr _e2744627634_)))
                                            (if (gx#stx-null? _tl2744827641_)
                                                ((lambda (_L27644_
                                                          _L27646_
                                                          _L27647_)
                                                   (if (gx#identifier?
                                                        _L27647_)
                                                       (let* ((_g2766927677_
                                                               (lambda (_g2767027673_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2767027673_)))
                      (_g2766827704_
                       (lambda (_g2767027681_)
                         ((lambda (_L27684_)
                            (let ()
                              (cons _L27684_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2769527698_
                                                      _g2769627701_)
                                               (cons _g2769527698_
                                                     _g2769627701_))
                                             (cons _L27644_ '())
                                             _L27646_)))))
                          _g2767027681_))))
                 (_g2766827704_
                  (gx#stx-identifier _L27647_ _L27647_ '"-set!")))
               (_g2741127567_ _g2741427571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2744727638_
                                                 _arg2744527630_
                                                 _hd2743527598_)
                                                (_g2741127567_
                                                 _g2741427571_))))
                                        (_g2741127567_ _g2741427571_)))))))
                    (_loop2744027610_ _target2743727604_ '()))
                  (_g2741127567_ _g2741427571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2741127567_ _g2741427571_))
                                            (_g2741127567_ _g2741427571_))))
                                    (_g2741127567_ _g2741427571_))))
                            (_g2741127567_ _g2741427571_))))
                    (_g2741127567_ _g2741427571_))))
             (_g2740927760_
              (lambda (_g2741427712_)
                (if (gx#stx-pair? _g2741427712_)
                    (let ((_e2741627715_ (gx#syntax-e _g2741427712_)))
                      (let ((_hd2741727719_ (##car _e2741627715_))
                            (_tl2741827722_ (##cdr _e2741627715_)))
                        (if (gx#stx-pair? _tl2741827722_)
                            (let ((_e2741927725_ (gx#syntax-e _tl2741827722_)))
                              (let ((_hd2742027729_ (##car _e2741927725_))
                                    (_tl2742127732_ (##cdr _e2741927725_)))
                                (if (gx#stx-pair? _hd2742027729_)
                                    (let ((_e2742227735_
                                           (gx#syntax-e _hd2742027729_)))
                                      (let ((_hd2742327739_
                                             (##car _e2742227735_))
                                            (_tl2742427742_
                                             (##cdr _e2742227735_)))
                                        ((lambda (_L27745_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L27745_)
                                                _stx27407_)
                                               (_g2741027708_ _g2741427712_)))
                                         _hd2742327739_)))
                                    (_g2741027708_ _g2741427712_))))
                            (_g2741027708_ _g2741427712_))))
                    (_g2741027708_ _g2741427712_)))))
        (_g2740927760_ _stx27407_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx27765_)
      (let* ((_g2776827792_
              (lambda (_g2776927788_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2776927788_)))
             (_g2776727970_
              (lambda (_g2776927796_)
                (if (gx#stx-pair? _g2776927796_)
                    (let ((_e2777227799_ (gx#syntax-e _g2776927796_)))
                      (let ((_hd2777327803_ (##car _e2777227799_))
                            (_tl2777427806_ (##cdr _e2777227799_)))
                        (if (gx#stx-pair/null? _tl2777427806_)
                            (if (fx>= (gx#stx-length _tl2777427806_) '1)
                                (let ((_g31055_
                                       (gx#syntax-split-splice
                                        _tl2777427806_
                                        '1)))
                                  (begin
                                    (let ((_g31056_ (values-count _g31055_)))
                                      (if (not (fx= _g31056_ 2))
                                          (error "Context expects 2 values"
                                                 _g31056_)))
                                    (let ((_target2777527809_
                                           (values-ref _g31055_ 0))
                                          (_tl2777727812_
                                           (values-ref _g31055_ 1)))
                                      (if (gx#stx-pair? _tl2777727812_)
                                          (let ((_e2778427815_
                                                 (gx#syntax-e _tl2777727812_)))
                                            (let ((_hd2778527819_
                                                   (##car _e2778427815_))
                                                  (_tl2778627822_
                                                   (##cdr _e2778427815_)))
                                              (if (gx#stx-null? _tl2778627822_)
                                                  (letrec ((_loop2777827825_
                                                            (lambda (_hd2777627829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2778227832_)
                      (if (gx#stx-pair? _hd2777627829_)
                          (let ((_e2777927835_ (gx#syntax-e _hd2777627829_)))
                            (let ((_lp-hd2778027839_ (##car _e2777927835_))
                                  (_lp-tl2778127842_ (##cdr _e2777927835_)))
                              (_loop2777827825_
                               _lp-tl2778127842_
                               (cons _lp-hd2778027839_ _tgt2778227832_))))
                          (let ((_tgt2778327845_ (reverse _tgt2778227832_)))
                            ((lambda (_L27849_ _L27851_)
                               (let* ((_g2786927886_
                                       (lambda (_g2787027882_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2787027882_)))
                                      (_g2786827958_
                                       (lambda (_g2787027890_)
                                         (if (gx#stx-pair/null? _g2787027890_)
                                             (if (fx>= (gx#stx-length
                                                        _g2787027890_)
                                                       '0)
                                                 (let ((_g31057_
                                                        (gx#syntax-split-splice
                                                         _g2787027890_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31058_
                                                            (values-count
                                                             _g31057_)))
                                                       (if (not (fx= _g31058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31058_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2787227893_
                                                            (values-ref
                                                             _g31057_
                                                             0))
                                                           (_tl2787427896_
                                                            (values-ref
                                                             _g31057_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2787427896_)
                                                           (letrec ((_loop2787527899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2787327903_ _$e2787927906_)
                               (if (gx#stx-pair? _hd2787327903_)
                                   (let ((_e2787627909_
                                          (gx#syntax-e _hd2787327903_)))
                                     (let ((_lp-hd2787727913_
                                            (##car _e2787627909_))
                                           (_lp-tl2787827916_
                                            (##cdr _e2787627909_)))
                                       (_loop2787527899_
                                        _lp-tl2787827916_
                                        (cons _lp-hd2787727913_
                                              _$e2787927906_))))
                                   (let ((_$e2788027919_
                                          (reverse _$e2787927906_)))
                                     ((lambda (_L27923_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2793827944_ _g2793927947_)
                                     (cons _g2793827944_ _g2793927947_))
                                   '()
                                   _L27923_))
                          (cons _L27849_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L27923_ _L27851_)
                (foldr (lambda (_g2794027950_ _g2794127953_ _g2794227955_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2794127953_
                                           (cons _g2794027950_ '())))
                               _g2794227955_))
                       '()
                       _L27923_
                       _L27851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2788027919_))))))
                     (_loop2787527899_ _target2787227893_ '()))
                   (_g2786927886_ _g2787027890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2786927886_ _g2787027890_))
                                             (_g2786927886_ _g2787027890_)))))
                                 (_g2786827958_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2796127964_
                                                     _g2796227967_)
                                              (cons _g2796127964_
                                                    _g2796227967_))
                                            '()
                                            _L27851_))))))
                             _hd2778527819_
                             _tgt2778327845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2777827825_
                                                     _target2777527809_
                                                     '()))
                                                  (_g2776827792_
                                                   _g2776927796_))))
                                          (_g2776827792_ _g2776927796_)))))
                                (_g2776827792_ _g2776927796_))
                            (_g2776827792_ _g2776927796_))))
                    (_g2776827792_ _g2776927796_)))))
        (_g2776727970_ _stx27765_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx27976_)
      (let* ((_g2798028038_
              (lambda (_g2798128034_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2798128034_)))
             (_g2797928315_
              (lambda (_g2798128042_)
                (if (gx#stx-pair? _g2798128042_)
                    (let ((_e2800128045_ (gx#syntax-e _g2798128042_)))
                      (let ((_hd2800228049_ (##car _e2800128045_))
                            (_tl2800328052_ (##cdr _e2800128045_)))
                        (if (gx#stx-pair? _tl2800328052_)
                            (let ((_e2800428055_ (gx#syntax-e _tl2800328052_)))
                              (let ((_hd2800528059_ (##car _e2800428055_))
                                    (_tl2800628062_ (##cdr _e2800428055_)))
                                (if (gx#stx-pair/null? _hd2800528059_)
                                    (if (fx>= (gx#stx-length _hd2800528059_)
                                              '0)
                                        (let ((_g31059_
                                               (gx#syntax-split-splice
                                                _hd2800528059_
                                                '0)))
                                          (begin
                                            (let ((_g31060_
                                                   (values-count _g31059_)))
                                              (if (not (fx= _g31060_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31060_)))
                                            (let ((_target2800728065_
                                                   (values-ref _g31059_ 0))
                                                  (_tl2800928068_
                                                   (values-ref _g31059_ 1)))
                                              (if (gx#stx-null? _tl2800928068_)
                                                  (letrec ((_loop2801028071_
                                                            (lambda (_hd2800828075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2801428078_
                             _param2801528080_)
                      (if (gx#stx-pair? _hd2800828075_)
                          (let ((_e2801128083_ (gx#syntax-e _hd2800828075_)))
                            (let ((_lp-hd2801228087_ (##car _e2801128083_))
                                  (_lp-tl2801328090_ (##cdr _e2801128083_)))
                              (if (gx#stx-pair? _lp-hd2801228087_)
                                  (let ((_e2801828093_
                                         (gx#syntax-e _lp-hd2801228087_)))
                                    (let ((_hd2801928097_
                                           (##car _e2801828093_))
                                          (_tl2802028100_
                                           (##cdr _e2801828093_)))
                                      (if (gx#stx-pair? _tl2802028100_)
                                          (let ((_e2802128103_
                                                 (gx#syntax-e _tl2802028100_)))
                                            (let ((_hd2802228107_
                                                   (##car _e2802128103_))
                                                  (_tl2802328110_
                                                   (##cdr _e2802128103_)))
                                              (if (gx#stx-null? _tl2802328110_)
                                                  (_loop2801028071_
                                                   _lp-tl2801328090_
                                                   (cons _hd2802228107_
                                                         _expr2801428078_)
                                                   (cons _hd2801928097_
                                                         _param2801528080_))
                                                  (_g2798028038_
                                                   _g2798128042_))))
                                          (_g2798028038_ _g2798128042_))))
                                  (_g2798028038_ _g2798128042_))))
                          (let ((_expr2801628113_ (reverse _expr2801428078_))
                                (_param2801728116_
                                 (reverse _param2801528080_)))
                            (if (gx#stx-pair/null? _tl2800628062_)
                                (if (fx>= (gx#stx-length _tl2800628062_) '0)
                                    (let ((_g31061_
                                           (gx#syntax-split-splice
                                            _tl2800628062_
                                            '0)))
                                      (begin
                                        (let ((_g31062_
                                               (values-count _g31061_)))
                                          (if (not (fx= _g31062_ 2))
                                              (error "Context expects 2 values"
                                                     _g31062_)))
                                        (let ((_target2802428119_
                                               (values-ref _g31061_ 0))
                                              (_tl2802628122_
                                               (values-ref _g31061_ 1)))
                                          (if (gx#stx-null? _tl2802628122_)
                                              (letrec ((_loop2802728125_
                                                        (lambda (_hd2802528129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2803128132_)
                  (if (gx#stx-pair? _hd2802528129_)
                      (let ((_e2802828135_ (gx#syntax-e _hd2802528129_)))
                        (let ((_lp-hd2802928139_ (##car _e2802828135_))
                              (_lp-tl2803028142_ (##cdr _e2802828135_)))
                          (_loop2802728125_
                           _lp-tl2803028142_
                           (cons _lp-hd2802928139_ _body2803128132_))))
                      (let ((_body2803228145_ (reverse _body2803128132_)))
                        ((lambda (_L28149_ _L28151_ _L28152_)
                           (let* ((_g2817528183_
                                   (lambda (_g2817628179_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2817628179_)))
                                  (_g2817428303_
                                   (lambda (_g2817628187_)
                                     ((lambda (_L28190_)
                                        (let ()
                                          (let* ((_g2820228219_
                                                  (lambda (_g2820328215_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2820328215_)))
                                                 (_g2820128283_
                                                  (lambda (_g2820328223_)
                                                    (if (gx#stx-pair/null?
                                                         _g2820328223_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2820328223_)
                          '0)
                    (let ((_g31063_ (gx#syntax-split-splice _g2820328223_ '0)))
                      (begin
                        (let ((_g31064_ (values-count _g31063_)))
                          (if (not (fx= _g31064_ 2))
                              (error "Context expects 2 values" _g31064_)))
                        (let ((_target2820528226_ (values-ref _g31063_ 0))
                              (_tl2820728229_ (values-ref _g31063_ 1)))
                          (if (gx#stx-null? _tl2820728229_)
                              (letrec ((_loop2820828232_
                                        (lambda (_hd2820628236_
                                                 _arg2821228239_)
                                          (if (gx#stx-pair? _hd2820628236_)
                                              (let ((_e2820928242_
                                                     (gx#syntax-e
                                                      _hd2820628236_)))
                                                (let ((_lp-hd2821028246_
                                                       (##car _e2820928242_))
                                                      (_lp-tl2821128249_
                                                       (##cdr _e2820928242_)))
                                                  (_loop2820828232_
                                                   _lp-tl2821128249_
                                                   (cons _lp-hd2821028246_
                                                         _arg2821228239_))))
                                              (let ((_arg2821328252_
                                                     (reverse _arg2821228239_)))
                                                ((lambda (_L28256_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2827428277_ _g2827528280_)
                                      (cons _g2827428277_ _g2827528280_))
                                    '()
                                    _L28256_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2821328252_))))))
                                (_loop2820828232_ _target2820528226_ '()))
                              (_g2820228219_ _g2820328223_)))))
                    (_g2820228219_ _g2820328223_))
                (_g2820228219_ _g2820328223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2820128283_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2828628289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2828728292_)
                        (cons _g2828628289_ _g2828728292_))
                      '()
                      _L28152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2829428297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2829528300_)
                        (cons _g2829428297_ _g2829528300_))
                      '()
                      _L28151_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2817628187_))))
                             (_g2817428303_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2830628309_
                                                             _g2830728312_)
                                                      (cons _g2830628309_
                                                            _g2830728312_))
                                                    '()
                                                    _L28149_))))
                               (gx#stx-source _stx27976_)))))
                         _body2803228145_
                         _expr2801628113_
                         _param2801728116_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2802728125_
                                                 _target2802428119_
                                                 '()))
                                              (_g2798028038_ _g2798128042_)))))
                                    (_g2798028038_ _g2798128042_))
                                (_g2798028038_ _g2798128042_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2801028071_
                                                     _target2800728065_
                                                     '()
                                                     '()))
                                                  (_g2798028038_
                                                   _g2798128042_)))))
                                        (_g2798028038_ _g2798128042_))
                                    (_g2798028038_ _g2798128042_))))
                            (_g2798028038_ _g2798128042_))))
                    (_g2798028038_ _g2798128042_))))
             (_g2797828397_
              (lambda (_g2798128319_)
                (if (gx#stx-pair? _g2798128319_)
                    (let ((_e2798328322_ (gx#syntax-e _g2798128319_)))
                      (let ((_hd2798428326_ (##car _e2798328322_))
                            (_tl2798528329_ (##cdr _e2798328322_)))
                        (if (gx#stx-pair? _tl2798528329_)
                            (let ((_e2798628332_ (gx#syntax-e _tl2798528329_)))
                              (let ((_hd2798728336_ (##car _e2798628332_))
                                    (_tl2798828339_ (##cdr _e2798628332_)))
                                (if (gx#stx-null? _hd2798728336_)
                                    (if (gx#stx-pair/null? _tl2798828339_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2798828339_)
                                                  '0)
                                            (let ((_g31065_
                                                   (gx#syntax-split-splice
                                                    _tl2798828339_
                                                    '0)))
                                              (begin
                                                (let ((_g31066_
                                                       (values-count
                                                        _g31065_)))
                                                  (if (not (fx= _g31066_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31066_)))
                                                (let ((_target2798928342_
                                                       (values-ref _g31065_ 0))
                                                      (_tl2799128345_
                                                       (values-ref
                                                        _g31065_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2799128345_)
                                                      (letrec ((_loop2799228348_
                                                                (lambda (_hd2799028352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2799628355_)
                          (if (gx#stx-pair? _hd2799028352_)
                              (let ((_e2799328358_
                                     (gx#syntax-e _hd2799028352_)))
                                (let ((_lp-hd2799428362_ (##car _e2799328358_))
                                      (_lp-tl2799528365_
                                       (##cdr _e2799328358_)))
                                  (_loop2799228348_
                                   _lp-tl2799528365_
                                   (cons _lp-hd2799428362_ _body2799628355_))))
                              (let ((_body2799728368_
                                     (reverse _body2799628355_)))
                                ((lambda (_L28372_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2838828391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2838928394_)
                  (cons _g2838828391_ _g2838928394_))
                '()
                _L28372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2799728368_))))))
                (_loop2799228348_ _target2798928342_ '()))
              (_g2797928315_ _g2798128319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2797928315_ _g2798128319_))
                                        (_g2797928315_ _g2798128319_))
                                    (_g2797928315_ _g2798128319_))))
                            (_g2797928315_ _g2798128319_))))
                    (_g2797928315_ _g2798128319_)))))
        (_g2797828397_ _stx27976_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28405_)
      (let* ((_g2840928433_
              (lambda (_g2841028429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2841028429_)))
             (_g2840828518_
              (lambda (_g2841028437_)
                (if (gx#stx-pair? _g2841028437_)
                    (let ((_e2841328440_ (gx#syntax-e _g2841028437_)))
                      (let ((_hd2841428444_ (##car _e2841328440_))
                            (_tl2841528447_ (##cdr _e2841328440_)))
                        (if (gx#stx-pair? _tl2841528447_)
                            (let ((_e2841628450_ (gx#syntax-e _tl2841528447_)))
                              (let ((_hd2841728454_ (##car _e2841628450_))
                                    (_tl2841828457_ (##cdr _e2841628450_)))
                                (if (gx#stx-pair/null? _tl2841828457_)
                                    (if (fx>= (gx#stx-length _tl2841828457_)
                                              '0)
                                        (let ((_g31067_
                                               (gx#syntax-split-splice
                                                _tl2841828457_
                                                '0)))
                                          (begin
                                            (let ((_g31068_
                                                   (values-count _g31067_)))
                                              (if (not (fx= _g31068_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31068_)))
                                            (let ((_target2841928460_
                                                   (values-ref _g31067_ 0))
                                                  (_tl2842128463_
                                                   (values-ref _g31067_ 1)))
                                              (if (gx#stx-null? _tl2842128463_)
                                                  (letrec ((_loop2842228466_
                                                            (lambda (_hd2842028470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2842628473_)
                      (if (gx#stx-pair? _hd2842028470_)
                          (let ((_e2842328476_ (gx#syntax-e _hd2842028470_)))
                            (let ((_lp-hd2842428480_ (##car _e2842328476_))
                                  (_lp-tl2842528483_ (##cdr _e2842328476_)))
                              (_loop2842228466_
                               _lp-tl2842528483_
                               (cons _lp-hd2842428480_ _body2842628473_))))
                          (let ((_body2842728486_ (reverse _body2842628473_)))
                            ((lambda (_L28490_ _L28492_)
                               (if (gx#identifier? _L28492_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28492_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2850928512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2851028515_)
                              (cons _g2850928512_ _g2851028515_))
                            '()
                            _L28490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2840928433_ _g2841028437_)))
                             _body2842728486_
                             _hd2841728454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2842228466_
                                                     _target2841928460_
                                                     '()))
                                                  (_g2840928433_
                                                   _g2841028437_)))))
                                        (_g2840928433_ _g2841028437_))
                                    (_g2840928433_ _g2841028437_))))
                            (_g2840928433_ _g2841028437_))))
                    (_g2840928433_ _g2841028437_)))))
        (_g2840828518_ _$stx28405_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28523_)
      (let* ((_g2852728551_
              (lambda (_g2852828547_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2852828547_)))
             (_g2852628636_
              (lambda (_g2852828555_)
                (if (gx#stx-pair? _g2852828555_)
                    (let ((_e2853128558_ (gx#syntax-e _g2852828555_)))
                      (let ((_hd2853228562_ (##car _e2853128558_))
                            (_tl2853328565_ (##cdr _e2853128558_)))
                        (if (gx#stx-pair? _tl2853328565_)
                            (let ((_e2853428568_ (gx#syntax-e _tl2853328565_)))
                              (let ((_hd2853528572_ (##car _e2853428568_))
                                    (_tl2853628575_ (##cdr _e2853428568_)))
                                (if (gx#stx-pair/null? _tl2853628575_)
                                    (if (fx>= (gx#stx-length _tl2853628575_)
                                              '0)
                                        (let ((_g31069_
                                               (gx#syntax-split-splice
                                                _tl2853628575_
                                                '0)))
                                          (begin
                                            (let ((_g31070_
                                                   (values-count _g31069_)))
                                              (if (not (fx= _g31070_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31070_)))
                                            (let ((_target2853728578_
                                                   (values-ref _g31069_ 0))
                                                  (_tl2853928581_
                                                   (values-ref _g31069_ 1)))
                                              (if (gx#stx-null? _tl2853928581_)
                                                  (letrec ((_loop2854028584_
                                                            (lambda (_hd2853828588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2854428591_)
                      (if (gx#stx-pair? _hd2853828588_)
                          (let ((_e2854128594_ (gx#syntax-e _hd2853828588_)))
                            (let ((_lp-hd2854228598_ (##car _e2854128594_))
                                  (_lp-tl2854328601_ (##cdr _e2854128594_)))
                              (_loop2854028584_
                               _lp-tl2854328601_
                               (cons _lp-hd2854228598_ _body2854428591_))))
                          (let ((_body2854528604_ (reverse _body2854428591_)))
                            ((lambda (_L28608_ _L28610_)
                               (if (gx#identifier? _L28610_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28610_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2862728630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2862828633_)
                              (cons _g2862728630_ _g2862828633_))
                            '()
                            _L28608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2852728551_ _g2852828555_)))
                             _body2854528604_
                             _hd2853528572_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2854028584_
                                                     _target2853728578_
                                                     '()))
                                                  (_g2852728551_
                                                   _g2852828555_)))))
                                        (_g2852728551_ _g2852828555_))
                                    (_g2852728551_ _g2852828555_))))
                            (_g2852728551_ _g2852828555_))))
                    (_g2852728551_ _g2852828555_)))))
        (_g2852628636_ _$stx28523_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28641_)
      (let* ((_g2864528673_
              (lambda (_g2864628669_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2864628669_)))
             (_g2864428772_
              (lambda (_g2864628677_)
                (if (gx#stx-pair? _g2864628677_)
                    (let ((_e2865028680_ (gx#syntax-e _g2864628677_)))
                      (let ((_hd2865128684_ (##car _e2865028680_))
                            (_tl2865228687_ (##cdr _e2865028680_)))
                        (if (gx#stx-pair? _tl2865228687_)
                            (let ((_e2865328690_ (gx#syntax-e _tl2865228687_)))
                              (let ((_hd2865428694_ (##car _e2865328690_))
                                    (_tl2865528697_ (##cdr _e2865328690_)))
                                (if (gx#stx-pair? _tl2865528697_)
                                    (let ((_e2865628700_
                                           (gx#syntax-e _tl2865528697_)))
                                      (let ((_hd2865728704_
                                             (##car _e2865628700_))
                                            (_tl2865828707_
                                             (##cdr _e2865628700_)))
                                        (if (gx#stx-pair/null? _tl2865828707_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2865828707_)
                                                      '0)
                                                (let ((_g31071_
                                                       (gx#syntax-split-splice
                                                        _tl2865828707_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31072_
                                                           (values-count
                                                            _g31071_)))
                                                      (if (not (fx= _g31072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31072_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2865928710_
                                                           (values-ref
                                                            _g31071_
                                                            0))
                                                          (_tl2866128713_
                                                           (values-ref
                                                            _g31071_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2866128713_)
                                                          (letrec ((_loop2866228716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2866028720_ _rest2866628723_)
                              (if (gx#stx-pair? _hd2866028720_)
                                  (let ((_e2866328726_
                                         (gx#syntax-e _hd2866028720_)))
                                    (let ((_lp-hd2866428730_
                                           (##car _e2866328726_))
                                          (_lp-tl2866528733_
                                           (##cdr _e2866328726_)))
                                      (_loop2866228716_
                                       _lp-tl2866528733_
                                       (cons _lp-hd2866428730_
                                             _rest2866628723_))))
                                  (let ((_rest2866728736_
                                         (reverse _rest2866628723_)))
                                    ((lambda (_L28740_ _L28742_ _L28743_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L28743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L28742_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2876328766_
                                                     _g2876428769_)
                                              (cons _g2876328766_
                                                    _g2876428769_))
                                            '()
                                            _L28740_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest2866728736_
                                     _hd2865728704_
                                     _hd2865428694_))))))
                    (_loop2866228716_ _target2865928710_ '()))
                  (_g2864528673_ _g2864628677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2864528673_ _g2864628677_))
                                            (_g2864528673_ _g2864628677_))))
                                    (_g2864528673_ _g2864628677_))))
                            (_g2864528673_ _g2864628677_))))
                    (_g2864528673_ _g2864628677_)))))
        (_g2864428772_ _$stx28641_)))))
