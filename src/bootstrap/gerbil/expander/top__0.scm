(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx11139_)
      (letrec ((_expand-special11141_
                (lambda (_hd11143_ _K11144_ _rest11145_ _r11146_)
                  (_K11144_
                   _rest11145_
                   (cons (gx#core-expand-top _hd11143_) _r11146_)))))
        (gx#core-expand-block__0 _stx11139_ _expand-special11141_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10892_)
      (letrec ((_expand-special10894_
                (lambda (_hd11014_ _K11015_ _rest11016_ _r11017_)
                  (let* ((_K11021_
                          (lambda (_e11019_)
                            (_K11015_ _rest11016_ (cons _e11019_ _r11017_))))
                         (_e1102211051_ _hd11014_)
                         (_E1104611055_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1102211051_)))
                         (_E1104211067_
                          (lambda ()
                            (if (gx#stx-pair? _e1102211051_)
                                (let ((_e1104711059_
                                       (gx#syntax-e _e1102211051_)))
                                  (let ((_hd1104811062_ (##car _e1104711059_))
                                        (_tl1104911064_ (##cdr _e1104711059_)))
                                    (if (if (gx#identifier? _hd1104811062_)
                                            (gx#core-identifier=?
                                             _hd1104811062_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K11021_
                                             (gx#core-expand-define-runtime%
                                              _hd11014_))
                                            (_E1104611055_))
                                        (_E1104611055_))))
                                (_E1104611055_))))
                         (_E1103811079_
                          (lambda ()
                            (if (gx#stx-pair? _e1102211051_)
                                (let ((_e1104311071_
                                       (gx#syntax-e _e1102211051_)))
                                  (let ((_hd1104411074_ (##car _e1104311071_))
                                        (_tl1104511076_ (##cdr _e1104311071_)))
                                    (if (if (gx#identifier? _hd1104411074_)
                                            (gx#core-identifier=?
                                             _hd1104411074_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K11021_
                                             (gx#core-expand-define-alias%
                                              _hd11014_))
                                            (_E1104211067_))
                                        (_E1104211067_))))
                                (_E1104211067_))))
                         (_E1102811091_
                          (lambda ()
                            (if (gx#stx-pair? _e1102211051_)
                                (let ((_e1103911083_
                                       (gx#syntax-e _e1102211051_)))
                                  (let ((_hd1104011086_ (##car _e1103911083_))
                                        (_tl1104111088_ (##cdr _e1103911083_)))
                                    (if (if (gx#identifier? _hd1104011086_)
                                            (gx#core-identifier=?
                                             _hd1104011086_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K11021_
                                             (gx#core-expand-define-syntax%
                                              _hd11014_))
                                            (_E1103811079_))
                                        (_E1103811079_))))
                                (_E1103811079_))))
                         (_E1102411123_
                          (lambda ()
                            (if (gx#stx-pair? _e1102211051_)
                                (let ((_e1102911095_
                                       (gx#syntax-e _e1102211051_)))
                                  (let ((_hd1103011098_ (##car _e1102911095_))
                                        (_tl1103111100_ (##cdr _e1102911095_)))
                                    (if (if (gx#identifier? _hd1103011098_)
                                            (gx#core-identifier=?
                                             _hd1103011098_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1103111100_)
                                            (let ((_e1103211103_
                                                   (gx#syntax-e
                                                    _tl1103111100_)))
                                              (let ((_hd1103311106_
                                                     (##car _e1103211103_))
                                                    (_tl1103411108_
                                                     (##cdr _e1103211103_)))
                                                (let ((_hd-bind11111_
                                                       _hd1103311106_))
                                                  (if (gx#stx-pair?
                                                       _tl1103411108_)
                                                      (let ((_e1103511113_
                                                             (gx#syntax-e
                                                              _tl1103411108_)))
                                                        (let ((_hd1103611116_
                                                               (##car _e1103511113_))
                                                              (_tl1103711118_
                                                               (##cdr _e1103511113_)))
                                                          (let ((_expr11121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1103611116_))
                    (if (gx#stx-null? _tl1103711118_)
                        (if (gx#core-bind-values? _hd-bind11111_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind11111_)
                              (_K11021_ _hd11014_))
                            (_E1102811091_))
                        (_E1102811091_)))))
              (_E1102811091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1102811091_))
                                        (_E1102811091_))))
                                (_E1102811091_))))
                         (_E1102311135_
                          (lambda ()
                            (if (gx#stx-pair? _e1102211051_)
                                (let ((_e1102511127_
                                       (gx#syntax-e _e1102211051_)))
                                  (let ((_hd1102611130_ (##car _e1102511127_))
                                        (_tl1102711132_ (##cdr _e1102511127_)))
                                    (if (if (gx#identifier? _hd1102611130_)
                                            (gx#core-identifier=?
                                             _hd1102611130_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K11021_
                                             (gx#core-expand-begin-syntax%
                                              _hd11014_))
                                            (_E1102411123_))
                                        (_E1102411123_))))
                                (_E1102411123_)))))
                    (_E1102311135_))))
               (_eval-body10895_
                (lambda (_rbody10903_)
                  (let _lp10905_ ((_rest10907_ _rbody10903_)
                                  (_body10908_ '())
                                  (_ebody10909_ '()))
                    (let* ((_rest1091010918_ _rest10907_)
                           (_else1091210926_
                            (lambda ()
                              (values _body10908_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10909_)
                                        (gx#stx-source _stx10892_))))))
                           (_K1091411002_
                            (lambda (_rest10929_ _hd10930_)
                              (let* ((_e1093110948_ _hd10930_)
                                     (_E1094310952_
                                      (lambda ()
                                        (_lp10905_
                                         _rest10929_
                                         (cons _hd10930_ _body10908_)
                                         (cons _hd10930_ _ebody10909_))))
                                     (_E1093310964_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1093110948_)
                                            (let ((_e1094410956_
                                                   (gx#syntax-e
                                                    _e1093110948_)))
                                              (let ((_hd1094510959_
                                                     (##car _e1094410956_))
                                                    (_tl1094610961_
                                                     (##cdr _e1094410956_)))
                                                (if (if (gx#identifier?
                                                         _hd1094510959_)
                                                        (gx#core-identifier=?
                                                         _hd1094510959_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10905_
                                                         _rest10929_
                                                         (cons _hd10930_
                                                               _body10908_)
                                                         _ebody10909_)
                                                        (_E1094310952_))
                                                    (_E1094310952_))))
                                            (_E1094310952_))))
                                     (_E1093210998_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1093110948_)
                                            (let ((_e1093410968_
                                                   (gx#syntax-e
                                                    _e1093110948_)))
                                              (let ((_hd1093510971_
                                                     (##car _e1093410968_))
                                                    (_tl1093610973_
                                                     (##cdr _e1093410968_)))
                                                (if (if (gx#identifier?
                                                         _hd1093510971_)
                                                        (gx#core-identifier=?
                                                         _hd1093510971_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1093610973_)
                                                        (let ((_e1093710976_
                                                               (gx#syntax-e
                                                                _tl1093610973_)))
                                                          (let ((_hd1093810979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1093710976_))
                        (_tl1093910981_ (##cdr _e1093710976_)))
                    (let ((_hd-bind10984_ _hd1093810979_))
                      (if (gx#stx-pair? _tl1093910981_)
                          (let ((_e1094010986_ (gx#syntax-e _tl1093910981_)))
                            (let ((_hd1094110989_ (##car _e1094010986_))
                                  (_tl1094210991_ (##cdr _e1094010986_)))
                              (let ((_expr10994_ _hd1094110989_))
                                (if (gx#stx-null? _tl1094210991_)
                                    (if '#t
                                        (let ((_ehd10996_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10984_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10994_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10930_))))
                                          (_lp10905_
                                           _rest10929_
                                           (cons _ehd10996_ _body10908_)
                                           (cons _ehd10996_ _ebody10909_)))
                                        (_E1093310964_))
                                    (_E1093310964_)))))
                          (_E1093310964_)))))
                (_E1093310964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1093310964_))))
                                            (_E1093310964_)))))
                                (_E1093210998_)))))
                      (if (##pair? _rest1091010918_)
                          (let ((_hd1091511005_ (##car _rest1091010918_))
                                (_tl1091611007_ (##cdr _rest1091010918_)))
                            (let* ((_hd11010_ _hd1091511005_)
                                   (_rest11012_ _tl1091611007_))
                              (_K1091411002_ _rest11012_ _hd11010_)))
                          (_else1091210926_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10898_
                   (gx#core-expand-block__1
                    _stx10892_
                    _expand-special10894_
                    '#f))
                  (_g11162_ (_eval-body10895_ _rbody10898_)))
             (begin
               (let ((_g11163_
                      (if (##values? _g11162_) (##vector-length _g11162_) 1)))
                 (if (not (##fx= _g11163_ 2))
                     (error "Context expects 2 values" _g11163_)))
               (let ((_expanded-body10900_ (##vector-ref _g11162_ 0))
                     (_value10901_ (##vector-ref _g11162_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10900_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10901_ '())))
                  (gx#stx-source _stx10892_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10862_)
      (let* ((_e1086310870_ _stx10862_)
             (_E1086510874_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1086310870_)))
             (_E1086410888_
              (lambda ()
                (if (gx#stx-pair? _e1086310870_)
                    (let ((_e1086610878_ (gx#syntax-e _e1086310870_)))
                      (let ((_hd1086710881_ (##car _e1086610878_))
                            (_tl1086810883_ (##cdr _e1086610878_)))
                        (let ((_body10886_ _tl1086810883_))
                          (if (gx#stx-list? _body10886_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10886_)
                               (gx#stx-source _stx10862_))
                              (_E1086510874_)))))
                    (_E1086510874_)))))
        (_E1086410888_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10860_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10860_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10806_)
      (let* ((_e1080710820_ _stx10806_)
             (_E1080910824_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1080710820_)))
             (_E1080810856_
              (lambda ()
                (if (gx#stx-pair? _e1080710820_)
                    (let ((_e1081010828_ (gx#syntax-e _e1080710820_)))
                      (let ((_hd1081110831_ (##car _e1081010828_))
                            (_tl1081210833_ (##cdr _e1081010828_)))
                        (if (gx#stx-pair? _tl1081210833_)
                            (let ((_e1081310836_ (gx#syntax-e _tl1081210833_)))
                              (let ((_hd1081410839_ (##car _e1081310836_))
                                    (_tl1081510841_ (##cdr _e1081310836_)))
                                (let ((_ann10844_ _hd1081410839_))
                                  (if (gx#stx-pair? _tl1081510841_)
                                      (let ((_e1081610846_
                                             (gx#syntax-e _tl1081510841_)))
                                        (let ((_hd1081710849_
                                               (##car _e1081610846_))
                                              (_tl1081810851_
                                               (##cdr _e1081610846_)))
                                          (let ((_expr10854_ _hd1081710849_))
                                            (if (gx#stx-null? _tl1081810851_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann10844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr10854_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10806_))
                                                    (_E1080910824_))
                                                (_E1080910824_)))))
                                      (_E1080910824_)))))
                            (_E1080910824_))))
                    (_E1080910824_)))))
        (_E1080810856_))))
  (define gx#core-expand-local-block
    (lambda (_stx10530_ _body10531_)
      (letrec ((_expand-special10533_
                (lambda (_hd10801_ _K10802_ _rest10803_ _r10804_)
                  (_K10802_
                   '()
                   (cons (_expand-internal10534_ _hd10801_ _rest10803_)
                         _r10804_))))
               (_expand-internal10534_
                (lambda (_hd10797_ _rest10798_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10536_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd10797_ _rest10798_))
                        (gx#stx-source _stx10530_))
                       _expand-internal-special10535_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj11156 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj11156)
                       __obj11156)))))
               (_expand-internal-special10535_
                (lambda (_hd10692_ _K10693_ _rest10694_ _r10695_)
                  (let* ((_e1069610721_ _hd10692_)
                         (_E1071610725_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1069610721_)))
                         (_E1071210737_
                          (lambda ()
                            (if (gx#stx-pair? _e1069610721_)
                                (let ((_e1071710729_
                                       (gx#syntax-e _e1069610721_)))
                                  (let ((_hd1071810732_ (##car _e1071710729_))
                                        (_tl1071910734_ (##cdr _e1071710729_)))
                                    (if (if (gx#identifier? _hd1071810732_)
                                            (gx#core-identifier=?
                                             _hd1071810732_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10693_
                                             _rest10694_
                                             (cons (gx#core-expand-declare%
                                                    _hd10692_)
                                                   _r10695_))
                                            (_E1071610725_))
                                        (_E1071610725_))))
                                (_E1071610725_))))
                         (_E1070810749_
                          (lambda ()
                            (if (gx#stx-pair? _e1069610721_)
                                (let ((_e1071310741_
                                       (gx#syntax-e _e1069610721_)))
                                  (let ((_hd1071410744_ (##car _e1071310741_))
                                        (_tl1071510746_ (##cdr _e1071310741_)))
                                    (if (if (gx#identifier? _hd1071410744_)
                                            (gx#core-identifier=?
                                             _hd1071410744_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10692_)
                                              (_K10693_ _rest10694_ _r10695_))
                                            (_E1071210737_))
                                        (_E1071210737_))))
                                (_E1071210737_))))
                         (_E1069810761_
                          (lambda ()
                            (if (gx#stx-pair? _e1069610721_)
                                (let ((_e1070910753_
                                       (gx#syntax-e _e1069610721_)))
                                  (let ((_hd1071010756_ (##car _e1070910753_))
                                        (_tl1071110758_ (##cdr _e1070910753_)))
                                    (if (if (gx#identifier? _hd1071010756_)
                                            (gx#core-identifier=?
                                             _hd1071010756_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10692_)
                                              (_K10693_ _rest10694_ _r10695_))
                                            (_E1070810749_))
                                        (_E1070810749_))))
                                (_E1070810749_))))
                         (_E1069710793_
                          (lambda ()
                            (if (gx#stx-pair? _e1069610721_)
                                (let ((_e1069910765_
                                       (gx#syntax-e _e1069610721_)))
                                  (let ((_hd1070010768_ (##car _e1069910765_))
                                        (_tl1070110770_ (##cdr _e1069910765_)))
                                    (if (if (gx#identifier? _hd1070010768_)
                                            (gx#core-identifier=?
                                             _hd1070010768_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1070110770_)
                                            (let ((_e1070210773_
                                                   (gx#syntax-e
                                                    _tl1070110770_)))
                                              (let ((_hd1070310776_
                                                     (##car _e1070210773_))
                                                    (_tl1070410778_
                                                     (##cdr _e1070210773_)))
                                                (let ((_hd-bind10781_
                                                       _hd1070310776_))
                                                  (if (gx#stx-pair?
                                                       _tl1070410778_)
                                                      (let ((_e1070510783_
                                                             (gx#syntax-e
                                                              _tl1070410778_)))
                                                        (let ((_hd1070610786_
                                                               (##car _e1070510783_))
                                                              (_tl1070710788_
                                                               (##cdr _e1070510783_)))
                                                          (let ((_expr10791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1070610786_))
                    (if (gx#stx-null? _tl1070710788_)
                        (if (gx#core-bind-values? _hd-bind10781_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10781_)
                              (_K10693_ _rest10694_ (cons _hd10692_ _r10695_)))
                            (_E1069810761_))
                        (_E1069810761_)))))
              (_E1069810761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1069810761_))
                                        (_E1069810761_))))
                                (_E1069810761_)))))
                    (_E1069710793_))))
               (_wrap-internal10536_
                (lambda (_rbody10538_)
                  (let _lp10540_ ((_rest10542_ _rbody10538_)
                                  (_decls10543_ '())
                                  (_bind10544_ '())
                                  (_body10545_ '()))
                    (let* ((_e1054610553_ _rest10542_)
                           (_E1054810602_
                            (lambda ()
                              (let* ((_body10597_
                                      (let* ((_body1055610566_ _body10545_)
                                             (_else1055910574_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10545_)
                                                 (gx#stx-source _stx10530_)))))
                                        (let ((_K1056410594_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx10530_)))
                                              (_K1056110580_
                                               (lambda (_expr10578_)
                                                 _expr10578_)))
                                          (let ((_try-match1055810590_
                                                 (lambda ()
                                                   (if (##pair? _body1055610566_)
                                                       (let ((_tl1056310585_
                                                              (##cdr _body1055610566_))
                                                             (_hd1056210583_
                                                              (##car _body1055610566_)))
                                                         (if (##null? _tl1056310585_)
                                                             (let ((_expr10588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1056210583_))
                       (_K1056110580_ _expr10588_))
                     (_else1055910574_)))
               (_else1055910574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1055610566_)
                                                (_K1056410594_)
                                                (_try-match1055810590_))))))
                                     (_body10599_
                                      (if (null? _bind10544_)
                                          _body10597_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10544_
                                                       (cons _body10597_ '())))
                                           (gx#stx-source _stx10530_)))))
                                (if (null? _decls10543_)
                                    _body10599_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10543_
                                                 (cons _body10599_ '())))
                                     (gx#stx-source _stx10530_))))))
                           (_E1054710688_
                            (lambda ()
                              (if (gx#stx-pair? _e1054610553_)
                                  (let ((_e1054910606_
                                         (gx#syntax-e _e1054610553_)))
                                    (let ((_hd1055010609_
                                           (##car _e1054910606_))
                                          (_tl1055110611_
                                           (##cdr _e1054910606_)))
                                      (let* ((_hd10614_ _hd1055010609_)
                                             (_rest10616_ _tl1055110611_))
                                        (if '#t
                                            (let* ((_e1061710634_ _hd10614_)
                                                   (_E1062910638_
                                                    (lambda ()
                                                      (if (null? _bind10544_)
                                                          (_lp10540_
                                                           _rest10616_
                                                           _decls10543_
                                                           _bind10544_
                                                           (cons _hd10614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10545_))
                  (_lp10540_
                   _rest10616_
                   _decls10543_
                   (cons (cons '#f (cons _hd10614_ '())) _bind10544_)
                   _body10545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1061910652_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1061710634_)
                                                          (let ((_e1063010642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1061710634_)))
                    (let ((_hd1063110645_ (##car _e1063010642_))
                          (_tl1063210647_ (##cdr _e1063010642_)))
                      (if (if (gx#identifier? _hd1063110645_)
                              (gx#core-identifier=? _hd1063110645_ '%#declare)
                              '#f)
                          (let ((_xdecls10650_ _tl1063210647_))
                            (if '#t
                                (_lp10540_
                                 _rest10616_
                                 (gx#stx-foldr cons _decls10543_ _xdecls10650_)
                                 _bind10544_
                                 _body10545_)
                                (_E1062910638_)))
                          (_E1062910638_))))
                  (_E1062910638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1061810684_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1061710634_)
                                                          (let ((_e1062010656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1061710634_)))
                    (let ((_hd1062110659_ (##car _e1062010656_))
                          (_tl1062210661_ (##cdr _e1062010656_)))
                      (if (if (gx#identifier? _hd1062110659_)
                              (gx#core-identifier=?
                               _hd1062110659_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1062210661_)
                              (let ((_e1062310664_
                                     (gx#syntax-e _tl1062210661_)))
                                (let ((_hd1062410667_ (##car _e1062310664_))
                                      (_tl1062510669_ (##cdr _e1062310664_)))
                                  (let ((_hd-bind10672_ _hd1062410667_))
                                    (if (gx#stx-pair? _tl1062510669_)
                                        (let ((_e1062610674_
                                               (gx#syntax-e _tl1062510669_)))
                                          (let ((_hd1062710677_
                                                 (##car _e1062610674_))
                                                (_tl1062810679_
                                                 (##cdr _e1062610674_)))
                                            (let ((_expr10682_ _hd1062710677_))
                                              (if (gx#stx-null? _tl1062810679_)
                                                  (if '#t
                                                      (_lp10540_
                                                       _rest10616_
                                                       _decls10543_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10672_)
                           (cons (gx#core-expand-expression _expr10682_) '()))
                     _bind10544_)
               _body10545_)
              (_E1061910652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1061910652_)))))
                                        (_E1061910652_)))))
                              (_E1061910652_))
                          (_E1061910652_))))
                  (_E1061910652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1061810684_))
                                            (_E1054810602_)))))
                                  (_E1054810602_)))))
                      (_E1054710688_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10531_)
          (gx#stx-source _stx10530_))
         _expand-special10533_))))
  (define gx#core-expand-declare%
    (lambda (_stx10468_)
      (let* ((_e1046910476_ _stx10468_)
             (_E1047110480_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1046910476_)))
             (_E1047010526_
              (lambda ()
                (if (gx#stx-pair? _e1046910476_)
                    (let ((_e1047210484_ (gx#syntax-e _e1046910476_)))
                      (let ((_hd1047310487_ (##car _e1047210484_))
                            (_tl1047410489_ (##cdr _e1047210484_)))
                        (let ((_body10492_ _tl1047410489_))
                          (if (gx#stx-list? _body10492_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10494_)
                                   (let* ((_e1049510502_ _decl10494_)
                                          (_E1049710506_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1049510502_)))
                                          (_E1049610522_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1049510502_)
                                                 (let ((_e1049810510_
                                                        (gx#syntax-e
                                                         _e1049510502_)))
                                                   (let ((_hd1049910513_
                                                          (##car _e1049810510_))
                                                         (_tl1050010515_
                                                          (##cdr _e1049810510_)))
                                                     (let* ((_head10518_
                                                             _hd1049910513_)
                                                            (_args10520_
                                                             _tl1050010515_))
                                                       (if (gx#stx-list?
                                                            _args10520_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10494_)
                                                           (_E1049710506_)))))
                                                 (_E1049710506_)))))
                                     (_E1049610522_)))
                                 _body10492_))
                               (gx#stx-source _stx10468_))
                              (_E1047110480_)))))
                    (_E1047110480_)))))
        (_E1047010526_))))
  (define gx#core-expand-extern%
    (lambda (_stx10352_)
      (let* ((_e1035310360_ _stx10352_)
             (_E1035510364_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1035310360_)))
             (_E1035410464_
              (lambda ()
                (if (gx#stx-pair? _e1035310360_)
                    (let ((_e1035610368_ (gx#syntax-e _e1035310360_)))
                      (let ((_hd1035710371_ (##car _e1035610368_))
                            (_tl1035810373_ (##cdr _e1035610368_)))
                        (let ((_body10376_ _tl1035810373_))
                          (if (gx#stx-list? _body10376_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind10378_)
                                   (let* ((_e1037910389_ _bind10378_)
                                          (_E1038110393_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1037910389_)))
                                          (_E1038010417_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1037910389_)
                                                 (let ((_e1038210397_
                                                        (gx#syntax-e
                                                         _e1037910389_)))
                                                   (let ((_hd1038310400_
                                                          (##car _e1038210397_))
                                                         (_tl1038410402_
                                                          (##cdr _e1038210397_)))
                                                     (let ((_id10405_
                                                            _hd1038310400_))
                                                       (if (gx#stx-pair?
                                                            _tl1038410402_)
                                                           (let ((_e1038510407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1038410402_)))
                     (let ((_hd1038610410_ (##car _e1038510407_))
                           (_tl1038710412_ (##cdr _e1038510407_)))
                       (let ((_eid10415_ _hd1038610410_))
                         (if (gx#stx-null? _tl1038710412_)
                             (if (if (gx#identifier? _id10405_)
                                     (gx#identifier? _eid10415_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10405_
                                  (gx#stx-e _eid10415_))
                                 (_E1038110393_))
                             (_E1038110393_)))))
                   (_E1038110393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1038110393_)))))
                                     (_E1038010417_)))
                                 _body10376_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10421_)
                                     (let* ((_e1042210432_ _bind10421_)
                                            (_E1042410436_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1042210432_)))
                                            (_E1042310460_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1042210432_)
                                                   (let ((_e1042510440_
                                                          (gx#syntax-e
                                                           _e1042210432_)))
                                                     (let ((_hd1042610443_
                                                            (##car _e1042510440_))
                                                           (_tl1042710445_
                                                            (##cdr _e1042510440_)))
                                                       (let ((_id10448_
                                                              _hd1042610443_))
                                                         (if (gx#stx-pair?
                                                              _tl1042710445_)
                                                             (let ((_e1042810450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1042710445_)))
                       (let ((_hd1042910453_ (##car _e1042810450_))
                             (_tl1043010455_ (##cdr _e1042810450_)))
                         (let ((_eid10458_ _hd1042910453_))
                           (if (gx#stx-null? _tl1043010455_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10448_)
                                         (cons (gx#stx-e _eid10458_) '()))
                                   (_E1042410436_))
                               (_E1042410436_)))))
                     (_E1042410436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1042410436_)))))
                                       (_E1042310460_)))
                                   _body10376_))
                                 (gx#stx-source _stx10352_)))
                              (_E1035510364_)))))
                    (_E1035510364_)))))
        (_E1035410464_))))
  (define gx#core-expand-define-values%
    (lambda (_stx10298_)
      (let* ((_e1029910312_ _stx10298_)
             (_E1030110316_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1029910312_)))
             (_E1030010348_
              (lambda ()
                (if (gx#stx-pair? _e1029910312_)
                    (let ((_e1030210320_ (gx#syntax-e _e1029910312_)))
                      (let ((_hd1030310323_ (##car _e1030210320_))
                            (_tl1030410325_ (##cdr _e1030210320_)))
                        (if (gx#stx-pair? _tl1030410325_)
                            (let ((_e1030510328_ (gx#syntax-e _tl1030410325_)))
                              (let ((_hd1030610331_ (##car _e1030510328_))
                                    (_tl1030710333_ (##cdr _e1030510328_)))
                                (let ((_hd10336_ _hd1030610331_))
                                  (if (gx#stx-pair? _tl1030710333_)
                                      (let ((_e1030810338_
                                             (gx#syntax-e _tl1030710333_)))
                                        (let ((_hd1030910341_
                                               (##car _e1030810338_))
                                              (_tl1031010343_
                                               (##cdr _e1030810338_)))
                                          (let ((_expr10346_ _hd1030910341_))
                                            (if (gx#stx-null? _tl1031010343_)
                                                (if (gx#core-bind-values?
                                                     _hd10336_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd10336_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10336_)
                           (cons (gx#core-expand-expression _expr10346_) '())))
               (gx#stx-source _stx10298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1030110316_))
                                                (_E1030110316_)))))
                                      (_E1030110316_)))))
                            (_E1030110316_))))
                    (_E1030110316_)))))
        (_E1030010348_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx10244_)
      (let* ((_e1024510258_ _stx10244_)
             (_E1024710262_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1024510258_)))
             (_E1024610294_
              (lambda ()
                (if (gx#stx-pair? _e1024510258_)
                    (let ((_e1024810266_ (gx#syntax-e _e1024510258_)))
                      (let ((_hd1024910269_ (##car _e1024810266_))
                            (_tl1025010271_ (##cdr _e1024810266_)))
                        (if (gx#stx-pair? _tl1025010271_)
                            (let ((_e1025110274_ (gx#syntax-e _tl1025010271_)))
                              (let ((_hd1025210277_ (##car _e1025110274_))
                                    (_tl1025310279_ (##cdr _e1025110274_)))
                                (let ((_id10282_ _hd1025210277_))
                                  (if (gx#stx-pair? _tl1025310279_)
                                      (let ((_e1025410284_
                                             (gx#syntax-e _tl1025310279_)))
                                        (let ((_hd1025510287_
                                               (##car _e1025410284_))
                                              (_tl1025610289_
                                               (##cdr _e1025410284_)))
                                          (let ((_binding-id10292_
                                                 _hd1025510287_))
                                            (if (gx#stx-null? _tl1025610289_)
                                                (if (if (gx#identifier?
                                                         _id10282_)
                                                        (gx#identifier?
                                                         _binding-id10292_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id10282_
                                                       (gx#stx-e
                                                        _binding-id10292_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10282_)
                           (cons (gx#core-quote-syntax__0 _binding-id10292_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1024710262_))
                                                (_E1024710262_)))))
                                      (_E1024710262_)))))
                            (_E1024710262_))))
                    (_E1024710262_)))))
        (_E1024610294_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx10187_)
      (let* ((_e1018810201_ _stx10187_)
             (_E1019010205_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1018810201_)))
             (_E1018910240_
              (lambda ()
                (if (gx#stx-pair? _e1018810201_)
                    (let ((_e1019110209_ (gx#syntax-e _e1018810201_)))
                      (let ((_hd1019210212_ (##car _e1019110209_))
                            (_tl1019310214_ (##cdr _e1019110209_)))
                        (if (gx#stx-pair? _tl1019310214_)
                            (let ((_e1019410217_ (gx#syntax-e _tl1019310214_)))
                              (let ((_hd1019510220_ (##car _e1019410217_))
                                    (_tl1019610222_ (##cdr _e1019410217_)))
                                (let ((_id10225_ _hd1019510220_))
                                  (if (gx#stx-pair? _tl1019610222_)
                                      (let ((_e1019710227_
                                             (gx#syntax-e _tl1019610222_)))
                                        (let ((_hd1019810230_
                                               (##car _e1019710227_))
                                              (_tl1019910232_
                                               (##cdr _e1019710227_)))
                                          (let ((_expr10235_ _hd1019810230_))
                                            (if (gx#stx-null? _tl1019910232_)
                                                (if (gx#identifier? _id10225_)
                                                    (let ((_g11164_
                                                           (gx#core-expand-expression+1
                                                            _expr10235_)))
                                                      (begin
                                                        (let ((_g11165_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g11164_)
                           (##vector-length _g11164_)
                           1)))
                  (if (not (##fx= _g11165_ 2))
                      (error "Context expects 2 values" _g11165_)))
                (let ((_e-stx10237_ (##vector-ref _g11164_ 0))
                      (_e10238_ (##vector-ref _g11164_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id10225_ _e10238_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id10225_)
                                 (cons _e-stx10237_ '())))
                     (gx#stx-source _stx10187_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1019010205_))
                                                (_E1019010205_)))))
                                      (_E1019010205_)))))
                            (_E1019010205_))))
                    (_E1019010205_)))))
        (_E1018910240_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx10131_)
      (let* ((_e1013210145_ _stx10131_)
             (_E1013410149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1013210145_)))
             (_E1013310183_
              (lambda ()
                (if (gx#stx-pair? _e1013210145_)
                    (let ((_e1013510153_ (gx#syntax-e _e1013210145_)))
                      (let ((_hd1013610156_ (##car _e1013510153_))
                            (_tl1013710158_ (##cdr _e1013510153_)))
                        (if (gx#stx-pair? _tl1013710158_)
                            (let ((_e1013810161_ (gx#syntax-e _tl1013710158_)))
                              (let ((_hd1013910164_ (##car _e1013810161_))
                                    (_tl1014010166_ (##cdr _e1013810161_)))
                                (let ((_id10169_ _hd1013910164_))
                                  (if (gx#stx-pair? _tl1014010166_)
                                      (let ((_e1014110171_
                                             (gx#syntax-e _tl1014010166_)))
                                        (let ((_hd1014210174_
                                               (##car _e1014110171_))
                                              (_tl1014310176_
                                               (##cdr _e1014110171_)))
                                          (let ((_alias-id10179_
                                                 _hd1014210174_))
                                            (if (gx#stx-null? _tl1014310176_)
                                                (if (if (gx#identifier?
                                                         _id10169_)
                                                        (gx#identifier?
                                                         _alias-id10179_)
                                                        '#f)
                                                    (let ((_alias-id10181_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id10179_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id10169_
                                                         _alias-id10181_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id10169_)
                             (cons _alias-id10181_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1013410149_))
                                                (_E1013410149_)))))
                                      (_E1013410149_)))))
                            (_E1013410149_))))
                    (_E1013410149_)))))
        (_E1013310183_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx10074_ _wrap?10075_)
        (let* ((_e1007610086_ _stx10074_)
               (_E1007810090_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1007610086_)))
               (_E1007710117_
                (lambda ()
                  (if (gx#stx-pair? _e1007610086_)
                      (let ((_e1007910094_ (gx#syntax-e _e1007610086_)))
                        (let ((_hd1008010097_ (##car _e1007910094_))
                              (_tl1008110099_ (##cdr _e1007910094_)))
                          (if (gx#stx-pair? _tl1008110099_)
                              (let ((_e1008210102_
                                     (gx#syntax-e _tl1008110099_)))
                                (let ((_hd1008310105_ (##car _e1008210102_))
                                      (_tl1008410107_ (##cdr _e1008210102_)))
                                  (let* ((_hd10110_ _hd1008310105_)
                                         (_body10112_ _tl1008410107_))
                                    (if (gx#core-bind-values? _hd10110_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd10110_)
                                             (let ((_body10115_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd10110_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx10074_
                         _body10112_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?10075_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body10115_)
                                                    (gx#stx-source _stx10074_))
                                                   _body10115_))))
                                         gx#current-expander-context
                                         (let ((__obj11157
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11157)
                                             __obj11157)))
                                        (_E1007810090_)))))
                              (_E1007810090_))))
                      (_E1007810090_)))))
          (_E1007710117_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx10124_)
          (let ((_wrap?10126_ '#t))
            (gx#core-expand-lambda%__% _stx10124_ _wrap?10126_))))
      (define gx#core-expand-lambda%
        (lambda _g11167_
          (let ((_g11166_ (length _g11167_)))
            (cond ((##fx= _g11166_ 1)
                   (apply gx#core-expand-lambda%__0 _g11167_))
                  ((##fx= _g11166_ 2)
                   (apply gx#core-expand-lambda%__% _g11167_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g11167_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx10038_)
      (let* ((_e1003910046_ _stx10038_)
             (_E1004110050_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1003910046_)))
             (_E1004010069_
              (lambda ()
                (if (gx#stx-pair? _e1003910046_)
                    (let ((_e1004210054_ (gx#syntax-e _e1003910046_)))
                      (let ((_hd1004310057_ (##car _e1004210054_))
                            (_tl1004410059_ (##cdr _e1004210054_)))
                        (let ((_clauses10062_ _tl1004410059_))
                          (if (gx#stx-list? _clauses10062_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause10064_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause10064_)
                                     (let ((_$e10066_
                                            (gx#stx-source _clause10064_)))
                                       (if _$e10066_
                                           _$e10066_
                                           (gx#stx-source _stx10038_))))
                                    '#f))
                                 _clauses10062_))
                               (gx#stx-source _stx10038_))
                              (_E1004110050_)))))
                    (_E1004110050_)))))
        (_E1004010069_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9992_)
      (let* ((_e999310003_ _stx9992_)
             (_E999510007_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e999310003_)))
             (_E999410034_
              (lambda ()
                (if (gx#stx-pair? _e999310003_)
                    (let ((_e999610011_ (gx#syntax-e _e999310003_)))
                      (let ((_hd999710014_ (##car _e999610011_))
                            (_tl999810016_ (##cdr _e999610011_)))
                        (if (gx#stx-pair? _tl999810016_)
                            (let ((_e999910019_ (gx#syntax-e _tl999810016_)))
                              (let ((_hd1000010022_ (##car _e999910019_))
                                    (_tl1000110024_ (##cdr _e999910019_)))
                                (let* ((_hd10027_ _hd1000010022_)
                                       (_body10029_ _tl1000110024_))
                                  (if (gx#core-expand-let-bind? _hd10027_)
                                      (let ((_expressions10031_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd10027_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd10027_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd10027_
                                                           _expressions10031_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9992_
                         _body10029_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9992_))))
                                         gx#current-expander-context
                                         (let ((__obj11158
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11158)
                                             __obj11158))))
                                      (_E999510007_)))))
                            (_E999510007_))))
                    (_E999510007_)))))
        (_E999410034_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9937_ _form9938_)
        (let* ((_e99399949_ _stx9937_)
               (_E99419953_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e99399949_)))
               (_E99409978_
                (lambda ()
                  (if (gx#stx-pair? _e99399949_)
                      (let ((_e99429957_ (gx#syntax-e _e99399949_)))
                        (let ((_hd99439960_ (##car _e99429957_))
                              (_tl99449962_ (##cdr _e99429957_)))
                          (if (gx#stx-pair? _tl99449962_)
                              (let ((_e99459965_ (gx#syntax-e _tl99449962_)))
                                (let ((_hd99469968_ (##car _e99459965_))
                                      (_tl99479970_ (##cdr _e99459965_)))
                                  (let* ((_hd9973_ _hd99469968_)
                                         (_body9975_ _tl99479970_))
                                    (if (gx#core-expand-let-bind? _hd9973_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9973_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9938_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9973_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9973_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9937_
                         _body9975_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9937_))))
                                         gx#current-expander-context
                                         (let ((__obj11159
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11159)
                                             __obj11159)))
                                        (_E99419953_)))))
                              (_E99419953_))))
                      (_E99419953_)))))
          (_E99409978_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9985_)
          (let ((_form9987_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9985_ _form9987_))))
      (define gx#core-expand-letrec-values%
        (lambda _g11169_
          (let ((_g11168_ (length _g11169_)))
            (cond ((##fx= _g11168_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g11169_))
                  ((##fx= _g11168_ 2)
                   (apply gx#core-expand-letrec-values%__% _g11169_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g11169_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9934_)
      (gx#core-expand-letrec-values%__% _stx9934_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9891_)
      (if (gx#stx-list? _stx9891_)
          (gx#stx-andmap
           (lambda (_bind9893_)
             (let* ((_e98949904_ _bind9893_)
                    (_E98969908_ (lambda () '#f))
                    (_E98959930_
                     (lambda ()
                       (if (gx#stx-pair? _e98949904_)
                           (let ((_e98979912_ (gx#syntax-e _e98949904_)))
                             (let ((_hd98989915_ (##car _e98979912_))
                                   (_tl98999917_ (##cdr _e98979912_)))
                               (let ((_hd9920_ _hd98989915_))
                                 (if (gx#stx-pair? _tl98999917_)
                                     (let ((_e99009922_
                                            (gx#syntax-e _tl98999917_)))
                                       (let ((_hd99019925_ (##car _e99009922_))
                                             (_tl99029927_
                                              (##cdr _e99009922_)))
                                         (if (gx#stx-null? _tl99029927_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9920_)
                                                 (_E98969908_))
                                             (_E98969908_))))
                                     (_E98969908_)))))
                           (_E98969908_)))))
               (_E98959930_)))
           _stx9891_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9850_)
      (let* ((_e98519861_ _bind9850_)
             (_E98539865_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98519861_)))
             (_E98529887_
              (lambda ()
                (if (gx#stx-pair? _e98519861_)
                    (let ((_e98549869_ (gx#syntax-e _e98519861_)))
                      (let ((_hd98559872_ (##car _e98549869_))
                            (_tl98569874_ (##cdr _e98549869_)))
                        (if (gx#stx-pair? _tl98569874_)
                            (let ((_e98579877_ (gx#syntax-e _tl98569874_)))
                              (let ((_hd98589880_ (##car _e98579877_))
                                    (_tl98599882_ (##cdr _e98579877_)))
                                (let ((_expr9885_ _hd98589880_))
                                  (if (gx#stx-null? _tl98599882_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9885_)
                                          (_E98539865_))
                                      (_E98539865_)))))
                            (_E98539865_))))
                    (_E98539865_)))))
        (_E98529887_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9809_)
      (let* ((_e98109820_ _bind9809_)
             (_E98129824_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98109820_)))
             (_E98119846_
              (lambda ()
                (if (gx#stx-pair? _e98109820_)
                    (let ((_e98139828_ (gx#syntax-e _e98109820_)))
                      (let ((_hd98149831_ (##car _e98139828_))
                            (_tl98159833_ (##cdr _e98139828_)))
                        (let ((_hd9836_ _hd98149831_))
                          (if (gx#stx-pair? _tl98159833_)
                              (let ((_e98169838_ (gx#syntax-e _tl98159833_)))
                                (let ((_hd98179841_ (##car _e98169838_))
                                      (_tl98189843_ (##cdr _e98169838_)))
                                  (if (gx#stx-null? _tl98189843_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9836_)
                                          (_E98129824_))
                                      (_E98129824_))))
                              (_E98129824_)))))
                    (_E98129824_)))))
        (_E98119846_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9767_ _expr9768_)
      (let* ((_e97699779_ _bind9767_)
             (_E97719783_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97699779_)))
             (_E97709805_
              (lambda ()
                (if (gx#stx-pair? _e97699779_)
                    (let ((_e97729787_ (gx#syntax-e _e97699779_)))
                      (let ((_hd97739790_ (##car _e97729787_))
                            (_tl97749792_ (##cdr _e97729787_)))
                        (let ((_hd9795_ _hd97739790_))
                          (if (gx#stx-pair? _tl97749792_)
                              (let ((_e97759797_ (gx#syntax-e _tl97749792_)))
                                (let ((_hd97769800_ (##car _e97759797_))
                                      (_tl97779802_ (##cdr _e97759797_)))
                                  (if (gx#stx-null? _tl97779802_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9795_)
                                                (cons _expr9768_ '()))
                                          (_E97719783_))
                                      (_E97719783_))))
                              (_E97719783_)))))
                    (_E97719783_)))))
        (_E97709805_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9721_)
      (let* ((_e97229732_ _stx9721_)
             (_E97249736_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97229732_)))
             (_E97239763_
              (lambda ()
                (if (gx#stx-pair? _e97229732_)
                    (let ((_e97259740_ (gx#syntax-e _e97229732_)))
                      (let ((_hd97269743_ (##car _e97259740_))
                            (_tl97279745_ (##cdr _e97259740_)))
                        (if (gx#stx-pair? _tl97279745_)
                            (let ((_e97289748_ (gx#syntax-e _tl97279745_)))
                              (let ((_hd97299751_ (##car _e97289748_))
                                    (_tl97309753_ (##cdr _e97289748_)))
                                (let* ((_hd9756_ _hd97299751_)
                                       (_body9758_ _tl97309753_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9756_)
                                      (let ((_expanders9760_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9756_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9756_
                                              _expanders9760_)
                                             (gx#core-expand-local-block
                                              _stx9721_
                                              _body9758_)))
                                         gx#current-expander-context
                                         (let ((__obj11160
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11160)
                                             __obj11160))))
                                      (_E97249736_)))))
                            (_E97249736_))))
                    (_E97249736_)))))
        (_E97239763_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9670_)
      (let* ((_e96719681_ _stx9670_)
             (_E96739685_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96719681_)))
             (_E96729717_
              (lambda ()
                (if (gx#stx-pair? _e96719681_)
                    (let ((_e96749689_ (gx#syntax-e _e96719681_)))
                      (let ((_hd96759692_ (##car _e96749689_))
                            (_tl96769694_ (##cdr _e96749689_)))
                        (if (gx#stx-pair? _tl96769694_)
                            (let ((_e96779697_ (gx#syntax-e _tl96769694_)))
                              (let ((_hd96789700_ (##car _e96779697_))
                                    (_tl96799702_ (##cdr _e96779697_)))
                                (let* ((_hd9705_ _hd96789700_)
                                       (_body9707_ _tl96799702_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9705_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9705_
                                            (make-list
                                             (gx#stx-length _hd9705_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g97099712_ _g97109714_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g97099712_
                                               _g97109714_
                                               '#t))
                                            _hd9705_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9705_))
                                           (gx#core-expand-local-block
                                            _stx9670_
                                            _body9707_)))
                                       gx#current-expander-context
                                       (let ((__obj11161
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj11161)
                                           __obj11161)))
                                      (_E96739685_)))))
                            (_E96739685_))))
                    (_E96739685_)))))
        (_E96729717_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9627_)
      (if (gx#stx-list? _stx9627_)
          (gx#stx-andmap
           (lambda (_bind9629_)
             (let* ((_e96309640_ _bind9629_)
                    (_E96329644_ (lambda () '#f))
                    (_E96319666_
                     (lambda ()
                       (if (gx#stx-pair? _e96309640_)
                           (let ((_e96339648_ (gx#syntax-e _e96309640_)))
                             (let ((_hd96349651_ (##car _e96339648_))
                                   (_tl96359653_ (##cdr _e96339648_)))
                               (let ((_hd9656_ _hd96349651_))
                                 (if (gx#stx-pair? _tl96359653_)
                                     (let ((_e96369658_
                                            (gx#syntax-e _tl96359653_)))
                                       (let ((_hd96379661_ (##car _e96369658_))
                                             (_tl96389663_
                                              (##cdr _e96369658_)))
                                         (if (gx#stx-null? _tl96389663_)
                                             (if '#t
                                                 (gx#identifier? _hd9656_)
                                                 (_E96329644_))
                                             (_E96329644_))))
                                     (_E96329644_)))))
                           (_E96329644_)))))
               (_E96319666_)))
           _stx9627_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9584_)
      (let* ((_e95859595_ _bind9584_)
             (_E95879599_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95859595_)))
             (_E95869623_
              (lambda ()
                (if (gx#stx-pair? _e95859595_)
                    (let ((_e95889603_ (gx#syntax-e _e95859595_)))
                      (let ((_hd95899606_ (##car _e95889603_))
                            (_tl95909608_ (##cdr _e95889603_)))
                        (if (gx#stx-pair? _tl95909608_)
                            (let ((_e95919611_ (gx#syntax-e _tl95909608_)))
                              (let ((_hd95929614_ (##car _e95919611_))
                                    (_tl95939616_ (##cdr _e95919611_)))
                                (let ((_expr9619_ _hd95929614_))
                                  (if (gx#stx-null? _tl95939616_)
                                      (if '#t
                                          (let ((_g11170_
                                                 (gx#core-expand-expression+1
                                                  _expr9619_)))
                                            (begin
                                              (let ((_g11171_
                                                     (if (##values? _g11170_)
                                                         (##vector-length
                                                          _g11170_)
                                                         1)))
                                                (if (not (##fx= _g11171_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11171_)))
                                              (let ((_e9621_ (##vector-ref
                                                              _g11170_
                                                              1)))
                                                _e9621_)))
                                          (_E95879599_))
                                      (_E95879599_)))))
                            (_E95879599_))))
                    (_E95879599_)))))
        (_E95869623_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9529_ _e9530_ _rebind?9531_)
        (let* ((_e95329542_ _bind9529_)
               (_E95349546_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e95329542_)))
               (_E95339568_
                (lambda ()
                  (if (gx#stx-pair? _e95329542_)
                      (let ((_e95359550_ (gx#syntax-e _e95329542_)))
                        (let ((_hd95369553_ (##car _e95359550_))
                              (_tl95379555_ (##cdr _e95359550_)))
                          (let ((_id9558_ _hd95369553_))
                            (if (gx#stx-pair? _tl95379555_)
                                (let ((_e95389560_ (gx#syntax-e _tl95379555_)))
                                  (let ((_hd95399563_ (##car _e95389560_))
                                        (_tl95409565_ (##cdr _e95389560_)))
                                    (if (gx#stx-null? _tl95409565_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9558_
                                             _e9530_
                                             _rebind?9531_)
                                            (_E95349546_))
                                        (_E95349546_))))
                                (_E95349546_)))))
                      (_E95349546_)))))
          (_E95339568_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9575_ _e9576_)
          (let ((_rebind?9578_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9575_
             _e9576_
             _rebind?9578_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g11173_
          (let ((_g11172_ (length _g11173_)))
            (cond ((##fx= _g11172_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g11173_))
                  ((##fx= _g11172_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g11173_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g11173_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9487_)
      (let* ((_e94889498_ _stx9487_)
             (_E94909502_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94889498_)))
             (_E94899524_
              (lambda ()
                (if (gx#stx-pair? _e94889498_)
                    (let ((_e94919506_ (gx#syntax-e _e94889498_)))
                      (let ((_hd94929509_ (##car _e94919506_))
                            (_tl94939511_ (##cdr _e94919506_)))
                        (if (gx#stx-pair? _tl94939511_)
                            (let ((_e94949514_ (gx#syntax-e _tl94939511_)))
                              (let ((_hd94959517_ (##car _e94949514_))
                                    (_tl94969519_ (##cdr _e94949514_)))
                                (let ((_expr9522_ _hd94959517_))
                                  (if (gx#stx-null? _tl94969519_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9522_)
                                          (_E94909502_))
                                      (_E94909502_)))))
                            (_E94909502_))))
                    (_E94909502_)))))
        (_E94899524_))))
  (define gx#core-expand-quote%
    (lambda (_stx9446_)
      (let* ((_e94479457_ _stx9446_)
             (_E94499461_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94479457_)))
             (_E94489483_
              (lambda ()
                (if (gx#stx-pair? _e94479457_)
                    (let ((_e94509465_ (gx#syntax-e _e94479457_)))
                      (let ((_hd94519468_ (##car _e94509465_))
                            (_tl94529470_ (##cdr _e94509465_)))
                        (if (gx#stx-pair? _tl94529470_)
                            (let ((_e94539473_ (gx#syntax-e _tl94529470_)))
                              (let ((_hd94549476_ (##car _e94539473_))
                                    (_tl94559478_ (##cdr _e94539473_)))
                                (let ((_e9481_ _hd94549476_))
                                  (if (gx#stx-null? _tl94559478_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9481_)
                                                       '()))
                                           (gx#stx-source _stx9446_))
                                          (_E94499461_))
                                      (_E94499461_)))))
                            (_E94499461_))))
                    (_E94499461_)))))
        (_E94489483_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9405_)
      (let* ((_e94069416_ _stx9405_)
             (_E94089420_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94069416_)))
             (_E94079442_
              (lambda ()
                (if (gx#stx-pair? _e94069416_)
                    (let ((_e94099424_ (gx#syntax-e _e94069416_)))
                      (let ((_hd94109427_ (##car _e94099424_))
                            (_tl94119429_ (##cdr _e94099424_)))
                        (if (gx#stx-pair? _tl94119429_)
                            (let ((_e94129432_ (gx#syntax-e _tl94119429_)))
                              (let ((_hd94139435_ (##car _e94129432_))
                                    (_tl94149437_ (##cdr _e94129432_)))
                                (let ((_e9440_ _hd94139435_))
                                  (if (gx#stx-null? _tl94149437_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9440_)
                                                       '()))
                                           (gx#stx-source _stx9405_))
                                          (_E94089420_))
                                      (_E94089420_)))))
                            (_E94089420_))))
                    (_E94089420_)))))
        (_E94079442_))))
  (define gx#core-expand-call%
    (lambda (_stx9362_)
      (let* ((_e93639373_ _stx9362_)
             (_E93659377_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93639373_)))
             (_E93649401_
              (lambda ()
                (if (gx#stx-pair? _e93639373_)
                    (let ((_e93669381_ (gx#syntax-e _e93639373_)))
                      (let ((_hd93679384_ (##car _e93669381_))
                            (_tl93689386_ (##cdr _e93669381_)))
                        (if (gx#stx-pair? _tl93689386_)
                            (let ((_e93699389_ (gx#syntax-e _tl93689386_)))
                              (let ((_hd93709392_ (##car _e93699389_))
                                    (_tl93719394_ (##cdr _e93699389_)))
                                (let* ((_rator9397_ _hd93709392_)
                                       (_args9399_ _tl93719394_))
                                  (if (gx#stx-list? _args9399_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator9397_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args9399_))
                                       (gx#stx-source _stx9362_))
                                      (_E93659377_)))))
                            (_E93659377_))))
                    (_E93659377_)))))
        (_E93649401_))))
  (define gx#core-expand-if%
    (lambda (_stx9295_)
      (let* ((_e92969312_ _stx9295_)
             (_E92989316_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92969312_)))
             (_E92979358_
              (lambda ()
                (if (gx#stx-pair? _e92969312_)
                    (let ((_e92999320_ (gx#syntax-e _e92969312_)))
                      (let ((_hd93009323_ (##car _e92999320_))
                            (_tl93019325_ (##cdr _e92999320_)))
                        (if (gx#stx-pair? _tl93019325_)
                            (let ((_e93029328_ (gx#syntax-e _tl93019325_)))
                              (let ((_hd93039331_ (##car _e93029328_))
                                    (_tl93049333_ (##cdr _e93029328_)))
                                (let ((_test9336_ _hd93039331_))
                                  (if (gx#stx-pair? _tl93049333_)
                                      (let ((_e93059338_
                                             (gx#syntax-e _tl93049333_)))
                                        (let ((_hd93069341_
                                               (##car _e93059338_))
                                              (_tl93079343_
                                               (##cdr _e93059338_)))
                                          (let ((_K9346_ _hd93069341_))
                                            (if (gx#stx-pair? _tl93079343_)
                                                (let ((_e93089348_
                                                       (gx#syntax-e
                                                        _tl93079343_)))
                                                  (let ((_hd93099351_
                                                         (##car _e93089348_))
                                                        (_tl93109353_
                                                         (##cdr _e93089348_)))
                                                    (let ((_E9356_ _hd93099351_))
                                                      (if (gx#stx-null?
                                                           _tl93109353_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test9336_)
                                   (cons (gx#core-expand-expression _K9346_)
                                         (cons (gx#core-expand-expression
                                                _E9356_)
                                               '()))))
                       (gx#stx-source _stx9295_))
                      (_E92989316_))
                  (_E92989316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92989316_)))))
                                      (_E92989316_)))))
                            (_E92989316_))))
                    (_E92989316_)))))
        (_E92979358_))))
  (define gx#core-expand-ref%
    (lambda (_stx9254_)
      (let* ((_e92559265_ _stx9254_)
             (_E92579269_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92559265_)))
             (_E92569291_
              (lambda ()
                (if (gx#stx-pair? _e92559265_)
                    (let ((_e92589273_ (gx#syntax-e _e92559265_)))
                      (let ((_hd92599276_ (##car _e92589273_))
                            (_tl92609278_ (##cdr _e92589273_)))
                        (if (gx#stx-pair? _tl92609278_)
                            (let ((_e92619281_ (gx#syntax-e _tl92609278_)))
                              (let ((_hd92629284_ (##car _e92619281_))
                                    (_tl92639286_ (##cdr _e92619281_)))
                                (let ((_id9289_ _hd92629284_))
                                  (if (gx#stx-null? _tl92639286_)
                                      (if (gx#core-runtime-ref? _id9289_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id9289_
                                                        _stx9254_)
                                                       '()))
                                           (gx#stx-source _stx9254_))
                                          (_E92579269_))
                                      (_E92579269_)))))
                            (_E92579269_))))
                    (_E92579269_)))))
        (_E92569291_))))
  (define gx#core-expand-setq%
    (lambda (_stx9200_)
      (let* ((_e92019214_ _stx9200_)
             (_E92039218_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92019214_)))
             (_E92029250_
              (lambda ()
                (if (gx#stx-pair? _e92019214_)
                    (let ((_e92049222_ (gx#syntax-e _e92019214_)))
                      (let ((_hd92059225_ (##car _e92049222_))
                            (_tl92069227_ (##cdr _e92049222_)))
                        (if (gx#stx-pair? _tl92069227_)
                            (let ((_e92079230_ (gx#syntax-e _tl92069227_)))
                              (let ((_hd92089233_ (##car _e92079230_))
                                    (_tl92099235_ (##cdr _e92079230_)))
                                (let ((_id9238_ _hd92089233_))
                                  (if (gx#stx-pair? _tl92099235_)
                                      (let ((_e92109240_
                                             (gx#syntax-e _tl92099235_)))
                                        (let ((_hd92119243_
                                               (##car _e92109240_))
                                              (_tl92129245_
                                               (##cdr _e92109240_)))
                                          (let ((_expr9248_ _hd92119243_))
                                            (if (gx#stx-null? _tl92129245_)
                                                (if (gx#core-runtime-ref?
                                                     _id9238_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id9238_
                          _stx9200_)
                         (cons (gx#core-expand-expression _expr9248_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx9200_))
                                                    (_E92039218_))
                                                (_E92039218_)))))
                                      (_E92039218_)))))
                            (_E92039218_))))
                    (_E92039218_)))))
        (_E92029250_))))
  (define gx#macro-expand-extern
    (lambda (_stx9048_)
      (letrec ((_generate9050_
                (lambda (_body9080_)
                  (let _lp9082_ ((_rest9084_ _body9080_)
                                 (_ns9085_ (gx#core-context-namespace__0))
                                 (_r9086_ '()))
                    (let* ((_e90879102_ _rest9084_)
                           (_E91009106_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e90879102_)))
                           (_E90969110_
                            (lambda ()
                              (if (gx#stx-null? _e90879102_)
                                  (if '#t (reverse _r9086_) (_E91009106_))
                                  (_E91009106_))))
                           (_E90899167_
                            (lambda ()
                              (if (gx#stx-pair? _e90879102_)
                                  (let ((_e90979114_
                                         (gx#syntax-e _e90879102_)))
                                    (let ((_hd90989117_ (##car _e90979114_))
                                          (_tl90999119_ (##cdr _e90979114_)))
                                      (let* ((_hd9122_ _hd90989117_)
                                             (_rest9124_ _tl90999119_))
                                        (if '#t
                                            (if (gx#identifier? _hd9122_)
                                                (_lp9082_
                                                 _rest9124_
                                                 _ns9085_
                                                 (cons (cons _hd9122_
                                                             (cons (if _ns9085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd9122_
                                _ns9085_
                                '"#"
                                _hd9122_)
                               _hd9122_)
                           '()))
               _r9086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e91259135_ _hd9122_)
                                                       (_E91279139_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e91259135_)))
                                                       (_E91269163_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e91259135_)
                                                              (let ((_e91289143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e91259135_)))
                        (let ((_hd91299146_ (##car _e91289143_))
                              (_tl91309148_ (##cdr _e91289143_)))
                          (let ((_id9151_ _hd91299146_))
                            (if (gx#stx-pair? _tl91309148_)
                                (let ((_e91319153_ (gx#syntax-e _tl91309148_)))
                                  (let ((_hd91329156_ (##car _e91319153_))
                                        (_tl91339158_ (##cdr _e91319153_)))
                                    (let ((_eid9161_ _hd91329156_))
                                      (if (gx#stx-null? _tl91339158_)
                                          (if (if (gx#identifier? _id9151_)
                                                  (gx#identifier? _eid9161_)
                                                  '#f)
                                              (_lp9082_
                                               _rest9124_
                                               _ns9085_
                                               (cons (cons _id9151_
                                                           (cons _eid9161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9086_))
                                              (_E91279139_))
                                          (_E91279139_)))))
                                (_E91279139_)))))
                      (_E91279139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91269163_)))
                                            (_E90969110_)))))
                                  (_E90969110_))))
                           (_E90889196_
                            (lambda ()
                              (if (gx#stx-pair? _e90879102_)
                                  (let ((_e90909171_
                                         (gx#syntax-e _e90879102_)))
                                    (let ((_hd90919174_ (##car _e90909171_))
                                          (_tl90929176_ (##cdr _e90909171_)))
                                      (if (eq? (gx#stx-e _hd90919174_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl90929176_)
                                              (let ((_e90939179_
                                                     (gx#syntax-e
                                                      _tl90929176_)))
                                                (let ((_hd90949182_
                                                       (##car _e90939179_))
                                                      (_tl90959184_
                                                       (##cdr _e90939179_)))
                                                  (let* ((_ns9187_
                                                          _hd90949182_)
                                                         (_rest9189_
                                                          _tl90959184_))
                                                    (if '#t
                                                        (let ((_ns9194_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns9187_)
                           (symbol->string (gx#stx-e _ns9187_))
                           (if (if (gx#stx-string? _ns9187_)
                                   '#t
                                   (gx#stx-false? _ns9187_))
                               (gx#stx-e _ns9187_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx9048_
                                _ns9187_)))))
                  (_lp9082_ _rest9189_ _ns9194_ _r9086_))
                (_E90899167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90899167_))
                                          (_E90899167_))))
                                  (_E90899167_)))))
                      (_E90889196_))))))
        (let* ((_e90519058_ _stx9048_)
               (_E90539062_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e90519058_)))
               (_E90529076_
                (lambda ()
                  (if (gx#stx-pair? _e90519058_)
                      (let ((_e90549066_ (gx#syntax-e _e90519058_)))
                        (let ((_hd90559069_ (##car _e90549066_))
                              (_tl90569071_ (##cdr _e90549066_)))
                          (let ((_body9074_ _tl90569071_))
                            (if (gx#stx-list? _body9074_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate9050_ _body9074_))
                                (_E90539062_)))))
                      (_E90539062_)))))
          (_E90529076_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8994_)
      (let* ((_e89959008_ _stx8994_)
             (_E89979012_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89959008_)))
             (_E89969044_
              (lambda ()
                (if (gx#stx-pair? _e89959008_)
                    (let ((_e89989016_ (gx#syntax-e _e89959008_)))
                      (let ((_hd89999019_ (##car _e89989016_))
                            (_tl90009021_ (##cdr _e89989016_)))
                        (if (gx#stx-pair? _tl90009021_)
                            (let ((_e90019024_ (gx#syntax-e _tl90009021_)))
                              (let ((_hd90029027_ (##car _e90019024_))
                                    (_tl90039029_ (##cdr _e90019024_)))
                                (let ((_hd9032_ _hd90029027_))
                                  (if (gx#stx-pair? _tl90039029_)
                                      (let ((_e90049034_
                                             (gx#syntax-e _tl90039029_)))
                                        (let ((_hd90059037_
                                               (##car _e90049034_))
                                              (_tl90069039_
                                               (##cdr _e90049034_)))
                                          (let ((_expr9042_ _hd90059037_))
                                            (if (gx#stx-null? _tl90069039_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd9032_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd9032_)
                        (cons _expr9042_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89979012_))
                                                (_E89979012_)))))
                                      (_E89979012_)))))
                            (_E89979012_))))
                    (_E89979012_)))))
        (_E89969044_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8940_)
      (let* ((_e89418954_ _stx8940_)
             (_E89438958_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89418954_)))
             (_E89428990_
              (lambda ()
                (if (gx#stx-pair? _e89418954_)
                    (let ((_e89448962_ (gx#syntax-e _e89418954_)))
                      (let ((_hd89458965_ (##car _e89448962_))
                            (_tl89468967_ (##cdr _e89448962_)))
                        (if (gx#stx-pair? _tl89468967_)
                            (let ((_e89478970_ (gx#syntax-e _tl89468967_)))
                              (let ((_hd89488973_ (##car _e89478970_))
                                    (_tl89498975_ (##cdr _e89478970_)))
                                (let ((_hd8978_ _hd89488973_))
                                  (if (gx#stx-pair? _tl89498975_)
                                      (let ((_e89508980_
                                             (gx#syntax-e _tl89498975_)))
                                        (let ((_hd89518983_
                                               (##car _e89508980_))
                                              (_tl89528985_
                                               (##cdr _e89508980_)))
                                          (let ((_expr8988_ _hd89518983_))
                                            (if (gx#stx-null? _tl89528985_)
                                                (if (gx#identifier? _hd8978_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8978_
                                                                (cons _expr8988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89438958_))
                                                (_E89438958_)))))
                                      (_E89438958_)))))
                            (_E89438958_))))
                    (_E89438958_)))))
        (_E89428990_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8886_)
      (let* ((_e88878900_ _stx8886_)
             (_E88898904_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88878900_)))
             (_E88888936_
              (lambda ()
                (if (gx#stx-pair? _e88878900_)
                    (let ((_e88908908_ (gx#syntax-e _e88878900_)))
                      (let ((_hd88918911_ (##car _e88908908_))
                            (_tl88928913_ (##cdr _e88908908_)))
                        (if (gx#stx-pair? _tl88928913_)
                            (let ((_e88938916_ (gx#syntax-e _tl88928913_)))
                              (let ((_hd88948919_ (##car _e88938916_))
                                    (_tl88958921_ (##cdr _e88938916_)))
                                (let ((_id8924_ _hd88948919_))
                                  (if (gx#stx-pair? _tl88958921_)
                                      (let ((_e88968926_
                                             (gx#syntax-e _tl88958921_)))
                                        (let ((_hd88978929_
                                               (##car _e88968926_))
                                              (_tl88988931_
                                               (##cdr _e88968926_)))
                                          (let ((_alias-id8934_ _hd88978929_))
                                            (if (gx#stx-null? _tl88988931_)
                                                (if (if (gx#identifier?
                                                         _id8924_)
                                                        (gx#identifier?
                                                         _alias-id8934_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8924_
                                                                (cons _alias-id8934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88898904_))
                                                (_E88898904_)))))
                                      (_E88898904_)))))
                            (_E88898904_))))
                    (_E88898904_)))))
        (_E88888936_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8843_)
      (let* ((_e88448854_ _stx8843_)
             (_E88468858_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88448854_)))
             (_E88458882_
              (lambda ()
                (if (gx#stx-pair? _e88448854_)
                    (let ((_e88478862_ (gx#syntax-e _e88448854_)))
                      (let ((_hd88488865_ (##car _e88478862_))
                            (_tl88498867_ (##cdr _e88478862_)))
                        (if (gx#stx-pair? _tl88498867_)
                            (let ((_e88508870_ (gx#syntax-e _tl88498867_)))
                              (let ((_hd88518873_ (##car _e88508870_))
                                    (_tl88528875_ (##cdr _e88508870_)))
                                (let* ((_hd8878_ _hd88518873_)
                                       (_body8880_ _tl88528875_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8878_)
                                          (if (gx#stx-list? _body8880_)
                                              (not (gx#stx-null? _body8880_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8878_)
                                       _body8880_)
                                      (_E88468858_)))))
                            (_E88468858_))))
                    (_E88468858_)))))
        (_E88458882_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8779_)
      (letrec ((_generate8781_
                (lambda (_clause8811_)
                  (let* ((_e88128819_ _clause8811_)
                         (_E88148823_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8779_
                             _clause8811_)))
                         (_E88138839_
                          (lambda ()
                            (if (gx#stx-pair? _e88128819_)
                                (let ((_e88158827_ (gx#syntax-e _e88128819_)))
                                  (let ((_hd88168830_ (##car _e88158827_))
                                        (_tl88178832_ (##cdr _e88158827_)))
                                    (let* ((_hd8835_ _hd88168830_)
                                           (_body8837_ _tl88178832_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8835_)
                                              (if (gx#stx-list? _body8837_)
                                                  (not (gx#stx-null?
                                                        _body8837_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8835_)
                                                 _body8837_)
                                           (gx#stx-source _clause8811_))
                                          (_E88148823_)))))
                                (_E88148823_)))))
                    (_E88138839_)))))
        (let* ((_e87828789_ _stx8779_)
               (_E87848793_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e87828789_)))
               (_E87838807_
                (lambda ()
                  (if (gx#stx-pair? _e87828789_)
                      (let ((_e87858797_ (gx#syntax-e _e87828789_)))
                        (let ((_hd87868800_ (##car _e87858797_))
                              (_tl87878802_ (##cdr _e87858797_)))
                          (let ((_clauses8805_ _tl87878802_))
                            (if (gx#stx-list? _clauses8805_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8781_ _clauses8805_))
                                (_E87848793_)))))
                      (_E87848793_)))))
          (_E87838807_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8680_ _form8681_)
        (letrec ((_generate8683_
                  (lambda (_bind8726_)
                    (let* ((_e87278737_ _bind8726_)
                           (_E87298741_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8680_
                               _bind8726_)))
                           (_E87288765_
                            (lambda ()
                              (if (gx#stx-pair? _e87278737_)
                                  (let ((_e87308745_
                                         (gx#syntax-e _e87278737_)))
                                    (let ((_hd87318748_ (##car _e87308745_))
                                          (_tl87328750_ (##cdr _e87308745_)))
                                      (let ((_ids8753_ _hd87318748_))
                                        (if (gx#stx-pair? _tl87328750_)
                                            (let ((_e87338755_
                                                   (gx#syntax-e _tl87328750_)))
                                              (let ((_hd87348758_
                                                     (##car _e87338755_))
                                                    (_tl87358760_
                                                     (##cdr _e87338755_)))
                                                (let ((_expr8763_
                                                       _hd87348758_))
                                                  (if (gx#stx-null?
                                                       _tl87358760_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8753_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8753_)
                        (cons _expr8763_ '()))
                  (_E87298741_))
              (_E87298741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E87298741_)))))
                                  (_E87298741_)))))
                      (_E87288765_)))))
          (let* ((_e86848694_ _stx8680_)
                 (_E86868698_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e86848694_)))
                 (_E86858722_
                  (lambda ()
                    (if (gx#stx-pair? _e86848694_)
                        (let ((_e86878702_ (gx#syntax-e _e86848694_)))
                          (let ((_hd86888705_ (##car _e86878702_))
                                (_tl86898707_ (##cdr _e86878702_)))
                            (if (gx#stx-pair? _tl86898707_)
                                (let ((_e86908710_ (gx#syntax-e _tl86898707_)))
                                  (let ((_hd86918713_ (##car _e86908710_))
                                        (_tl86928715_ (##cdr _e86908710_)))
                                    (let* ((_hd8718_ _hd86918713_)
                                           (_body8720_ _tl86928715_))
                                      (if (if (gx#stx-list? _hd8718_)
                                              (if (gx#stx-list? _body8720_)
                                                  (not (gx#stx-null?
                                                        _body8720_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8681_
                                           (gx#stx-map1
                                            _generate8683_
                                            _hd8718_)
                                           _body8720_)
                                          (_E86868698_)))))
                                (_E86868698_))))
                        (_E86868698_)))))
            (_E86858722_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8772_)
          (let ((_form8774_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8772_ _form8774_))))
      (define gx#macro-expand-let-values
        (lambda _g11175_
          (let ((_g11174_ (length _g11175_)))
            (cond ((##fx= _g11174_ 1)
                   (apply gx#macro-expand-let-values__0 _g11175_))
                  ((##fx= _g11174_ 2)
                   (apply gx#macro-expand-let-values__% _g11175_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g11175_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8677_)
      (gx#macro-expand-let-values__% _stx8677_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8675_)
      (gx#macro-expand-let-values__% _stx8675_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8566_)
      (let* ((_e85678593_ _stx8566_)
             (_E85798597_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85678593_)))
             (_E85698639_
              (lambda ()
                (if (gx#stx-pair? _e85678593_)
                    (let ((_e85808601_ (gx#syntax-e _e85678593_)))
                      (let ((_hd85818604_ (##car _e85808601_))
                            (_tl85828606_ (##cdr _e85808601_)))
                        (if (gx#stx-pair? _tl85828606_)
                            (let ((_e85838609_ (gx#syntax-e _tl85828606_)))
                              (let ((_hd85848612_ (##car _e85838609_))
                                    (_tl85858614_ (##cdr _e85838609_)))
                                (let ((_test8617_ _hd85848612_))
                                  (if (gx#stx-pair? _tl85858614_)
                                      (let ((_e85868619_
                                             (gx#syntax-e _tl85858614_)))
                                        (let ((_hd85878622_
                                               (##car _e85868619_))
                                              (_tl85888624_
                                               (##cdr _e85868619_)))
                                          (let ((_K8627_ _hd85878622_))
                                            (if (gx#stx-pair? _tl85888624_)
                                                (let ((_e85898629_
                                                       (gx#syntax-e
                                                        _tl85888624_)))
                                                  (let ((_hd85908632_
                                                         (##car _e85898629_))
                                                        (_tl85918634_
                                                         (##cdr _e85898629_)))
                                                    (let ((_E8637_ _hd85908632_))
                                                      (if (gx#stx-null?
                                                           _tl85918634_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8617_
                                                               _K8627_
                                                               _E8637_)
                                                              (_E85798597_))
                                                          (_E85798597_)))))
                                                (_E85798597_)))))
                                      (_E85798597_)))))
                            (_E85798597_))))
                    (_E85798597_))))
             (_E85688671_
              (lambda ()
                (if (gx#stx-pair? _e85678593_)
                    (let ((_e85708643_ (gx#syntax-e _e85678593_)))
                      (let ((_hd85718646_ (##car _e85708643_))
                            (_tl85728648_ (##cdr _e85708643_)))
                        (if (gx#stx-pair? _tl85728648_)
                            (let ((_e85738651_ (gx#syntax-e _tl85728648_)))
                              (let ((_hd85748654_ (##car _e85738651_))
                                    (_tl85758656_ (##cdr _e85738651_)))
                                (let ((_test8659_ _hd85748654_))
                                  (if (gx#stx-pair? _tl85758656_)
                                      (let ((_e85768661_
                                             (gx#syntax-e _tl85758656_)))
                                        (let ((_hd85778664_
                                               (##car _e85768661_))
                                              (_tl85788666_
                                               (##cdr _e85768661_)))
                                          (let ((_K8669_ _hd85778664_))
                                            (if (gx#stx-null? _tl85788666_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8659_
                                                     _K8669_
                                                     '#!void)
                                                    (_E85698639_))
                                                (_E85698639_)))))
                                      (_E85698639_)))))
                            (_E85698639_))))
                    (_E85698639_)))))
        (_E85688671_))))
  (define gx#free-identifier=?
    (lambda (_xid8554_ _yid8555_)
      (let ((_xe8557_ (gx#resolve-identifier__0 _xid8554_))
            (_ye8558_ (gx#resolve-identifier__0 _yid8555_)))
        (if (if _xe8557_ _ye8558_ '#f)
            (let ((_$e8560_ (eq? _xe8557_ _ye8558_)))
              (if _$e8560_
                  _$e8560_
                  (if (##structure-instance-of? _xe8557_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8558_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8557_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8558_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (if _xe8557_ '#t _ye8558_)
                '#f
                (gx#stx-eq? _xid8554_ _yid8555_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8538_ _yid8539_)
      (letrec ((_context8541_
                (lambda (_e8552_)
                  (if (##structure-direct-instance-of?
                       _e8552_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8552_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8542_
                (lambda (_e8550_)
                  (if (symbol? _e8550_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8550_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8550_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8550_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8543_
                (lambda (_e8548_)
                  (if (symbol? _e8548_)
                      _e8548_
                      (gx#syntax-local-unwrap _e8548_)))))
        (let ((_x8545_ (_unwrap8543_ _xid8538_))
              (_y8546_ (_unwrap8543_ _yid8539_)))
          (if (gx#stx-eq? _x8545_ _y8546_)
              (if (eq? (_context8541_ _x8545_) (_context8541_ _y8546_))
                  (equal? (_marks8542_ _x8545_) (_marks8542_ _y8546_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8536_)
      (if (gx#identifier? _stx8536_) (gx#core-identifier=? _stx8536_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8534_)
      (if (gx#identifier? _stx8534_)
          (gx#core-identifier=? _stx8534_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8532_)
      (if (gx#identifier? _x8532_)
          (if (not (gx#underscore? _x8532_)) _x8532_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8478_ _where8479_)
        (let _lp8481_ ((_rest8483_ (gx#syntax->list _stx8478_)))
          (let* ((_rest84848492_ _rest8483_)
                 (_else84868500_ (lambda () '#t))
                 (_K84888510_
                  (lambda (_rest8503_ _hd8504_)
                    (if (not (gx#identifier? _hd8504_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8479_
                         _hd8504_)
                        (if (find (lambda (_g85058507_)
                                    (gx#bound-identifier=?
                                     _g85058507_
                                     _hd8504_))
                                  _rest8503_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8479_
                             _hd8504_)
                            (_lp8481_ _rest8503_))))))
            (if (##pair? _rest84848492_)
                (let ((_hd84898513_ (##car _rest84848492_))
                      (_tl84908515_ (##cdr _rest84848492_)))
                  (let* ((_hd8518_ _hd84898513_) (_rest8520_ _tl84908515_))
                    (_K84888510_ _rest8520_ _hd8518_)))
                (_else84868500_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8525_)
          (let ((_where8527_ _stx8525_))
            (gx#check-duplicate-identifiers__% _stx8525_ _where8527_))))
      (define gx#check-duplicate-identifiers
        (lambda _g11177_
          (let ((_g11176_ (length _g11177_)))
            (cond ((##fx= _g11176_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g11177_))
                  ((##fx= _g11176_ 2)
                   (apply gx#check-duplicate-identifiers__% _g11177_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g11177_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8470_)
      (gx#stx-andmap
       (lambda (_x8472_)
         (let ((_$e8474_ (gx#identifier? _x8472_)))
           (if _$e8474_ _$e8474_ (gx#stx-false? _x8472_))))
       _stx8470_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8434_ _rebind?8435_ _phi8436_ _ctx8437_)
        (gx#stx-for-each1
         (lambda (_id8439_)
           (if (gx#identifier? _id8439_)
               (gx#core-bind-runtime!__%
                _id8439_
                _rebind?8435_
                _phi8436_
                _ctx8437_)
               '#!void))
         _stx8434_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8444_)
          (let* ((_rebind?8446_ '#f)
                 (_phi8448_ (gx#current-expander-phi))
                 (_ctx8450_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8444_
             _rebind?8446_
             _phi8448_
             _ctx8450_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8452_ _rebind?8453_)
          (let* ((_phi8455_ (gx#current-expander-phi))
                 (_ctx8457_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8452_
             _rebind?8453_
             _phi8455_
             _ctx8457_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8459_ _rebind?8460_ _phi8461_)
          (let ((_ctx8463_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8459_
             _rebind?8460_
             _phi8461_
             _ctx8463_))))
      (define gx#core-bind-values!
        (lambda _g11179_
          (let ((_g11178_ (length _g11179_)))
            (cond ((##fx= _g11178_ 1) (apply gx#core-bind-values!__0 _g11179_))
                  ((##fx= _g11178_ 2) (apply gx#core-bind-values!__1 _g11179_))
                  ((##fx= _g11178_ 3) (apply gx#core-bind-values!__2 _g11179_))
                  ((##fx= _g11178_ 4) (apply gx#core-bind-values!__% _g11179_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g11179_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8429_)
      (gx#stx-map1
       (lambda (_x8431_)
         (if (gx#identifier? _x8431_) (gx#core-quote-syntax__0 _x8431_) '#f))
       _stx8429_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8422_)
      (if (gx#identifier? _stx8422_)
          (let* ((_bind8424_ (gx#resolve-identifier__0 _stx8422_))
                 (_$e8426_ (not _bind8424_)))
            (if _$e8426_
                _$e8426_
                (##structure-instance-of? _bind8424_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8414_ _form8415_)
      (let ((_bind8417_ (gx#resolve-identifier__0 _id8414_)))
        (if (##structure-instance-of? _bind8417_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8414_)
            (if (not _bind8417_)
                (if (if (gx#core-context-rebind?__% (gx#core-context-top__0))
                        '#t
                        (gx#core-extern-symbol? (gx#stx-e _id8414_)))
                    (gx#core-quote-syntax__0 _id8414_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8415_
                     _id8414_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8415_
                 _id8414_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id8373_ _rebind?8374_ _phi8375_ _ctx8376_)
        (let* ((_key8378_ (gx#core-identifier-key _id8373_))
               (_eid8380_
                (gx#make-binding-id__% _key8378_ '#f _phi8375_ _ctx8376_))
               (_bind8382_
                (if (##structure-instance-of? _ctx8376_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8380_
                     _key8378_
                     _phi8375_
                     _ctx8376_)
                    (if (##structure-instance-of? _ctx8376_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8380_
                         _key8378_
                         _phi8375_)
                        (if (##structure-instance-of?
                             _ctx8376_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid8380_
                             _key8378_
                             _phi8375_)
                            (##structure
                             gx#runtime-binding::t
                             _eid8380_
                             _key8378_
                             _phi8375_))))))
          (gx#bind-identifier!__%
           _id8373_
           _bind8382_
           _rebind?8374_
           _phi8375_
           _ctx8376_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id8388_)
          (let* ((_rebind?8390_ '#f)
                 (_phi8392_ (gx#current-expander-phi))
                 (_ctx8394_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8388_
             _rebind?8390_
             _phi8392_
             _ctx8394_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id8396_ _rebind?8397_)
          (let* ((_phi8399_ (gx#current-expander-phi))
                 (_ctx8401_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8396_
             _rebind?8397_
             _phi8399_
             _ctx8401_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8403_ _rebind?8404_ _phi8405_)
          (let ((_ctx8407_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8403_
             _rebind?8404_
             _phi8405_
             _ctx8407_))))
      (define gx#core-bind-runtime!
        (lambda _g11181_
          (let ((_g11180_ (length _g11181_)))
            (cond ((##fx= _g11180_ 1)
                   (apply gx#core-bind-runtime!__0 _g11181_))
                  ((##fx= _g11180_ 2)
                   (apply gx#core-bind-runtime!__1 _g11181_))
                  ((##fx= _g11180_ 3)
                   (apply gx#core-bind-runtime!__2 _g11181_))
                  ((##fx= _g11180_ 4)
                   (apply gx#core-bind-runtime!__% _g11181_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g11181_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id8328_ _eid8329_ _rebind?8330_ _phi8331_ _ctx8332_)
        (let* ((_key8334_ (gx#core-identifier-key _id8328_))
               (_bind8336_
                (if (##structure-instance-of? _ctx8332_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8329_
                     _key8334_
                     _phi8331_
                     _ctx8332_)
                    (if (##structure-instance-of? _ctx8332_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8329_
                         _key8334_
                         _phi8331_)
                        (##structure
                         gx#runtime-binding::t
                         _eid8329_
                         _key8334_
                         _phi8331_)))))
          (gx#bind-identifier!__%
           _id8328_
           _bind8336_
           _rebind?8330_
           _phi8331_
           _ctx8332_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id8342_ _eid8343_)
          (let* ((_rebind?8345_ '#f)
                 (_phi8347_ (gx#current-expander-phi))
                 (_ctx8349_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8342_
             _eid8343_
             _rebind?8345_
             _phi8347_
             _ctx8349_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id8351_ _eid8352_ _rebind?8353_)
          (let* ((_phi8355_ (gx#current-expander-phi))
                 (_ctx8357_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8351_
             _eid8352_
             _rebind?8353_
             _phi8355_
             _ctx8357_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id8359_ _eid8360_ _rebind?8361_ _phi8362_)
          (let ((_ctx8364_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8359_
             _eid8360_
             _rebind?8361_
             _phi8362_
             _ctx8364_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g11183_
          (let ((_g11182_ (length _g11183_)))
            (cond ((##fx= _g11182_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g11183_))
                  ((##fx= _g11182_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g11183_))
                  ((##fx= _g11182_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g11183_))
                  ((##fx= _g11182_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g11183_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g11183_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id8288_ _eid8289_ _rebind?8290_ _phi8291_ _ctx8292_)
        (gx#bind-identifier!__%
         _id8288_
         (##structure
          gx#extern-binding::t
          _eid8289_
          (gx#core-identifier-key _id8288_)
          _phi8291_)
         _rebind?8290_
         _phi8291_
         _ctx8292_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id8297_ _eid8298_)
          (let* ((_rebind?8300_ '#f)
                 (_phi8302_ (gx#current-expander-phi))
                 (_ctx8304_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8297_
             _eid8298_
             _rebind?8300_
             _phi8302_
             _ctx8304_))))
      (define gx#core-bind-extern!__1
        (lambda (_id8306_ _eid8307_ _rebind?8308_)
          (let* ((_phi8310_ (gx#current-expander-phi))
                 (_ctx8312_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8306_
             _eid8307_
             _rebind?8308_
             _phi8310_
             _ctx8312_))))
      (define gx#core-bind-extern!__2
        (lambda (_id8314_ _eid8315_ _rebind?8316_ _phi8317_)
          (let ((_ctx8319_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8314_
             _eid8315_
             _rebind?8316_
             _phi8317_
             _ctx8319_))))
      (define gx#core-bind-extern!
        (lambda _g11185_
          (let ((_g11184_ (length _g11185_)))
            (cond ((##fx= _g11184_ 2) (apply gx#core-bind-extern!__0 _g11185_))
                  ((##fx= _g11184_ 3) (apply gx#core-bind-extern!__1 _g11185_))
                  ((##fx= _g11184_ 4) (apply gx#core-bind-extern!__2 _g11185_))
                  ((##fx= _g11184_ 5) (apply gx#core-bind-extern!__% _g11185_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g11185_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id8242_ _e8243_ _rebind?8244_ _phi8245_ _ctx8246_)
        (gx#bind-identifier!__%
         _id8242_
         (let ((_key8251_ (gx#core-identifier-key _id8242_))
               (_e8252_ (if (if (##structure-instance-of?
                                 _e8243_
                                 'gx#expander::t)
                                '#t
                                (##structure-instance-of?
                                 _e8243_
                                 'gx#expander-context::t))
                            _e8243_
                            (##structure
                             gx#user-expander::t
                             _e8243_
                             _ctx8246_
                             _phi8245_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key8251_ '#t _phi8245_ _ctx8246_)
            _key8251_
            _phi8245_
            _e8252_))
         _rebind?8244_
         _phi8245_
         _ctx8246_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id8257_ _e8258_)
          (let* ((_rebind?8260_ '#f)
                 (_phi8262_ (gx#current-expander-phi))
                 (_ctx8264_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8257_
             _e8258_
             _rebind?8260_
             _phi8262_
             _ctx8264_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id8266_ _e8267_ _rebind?8268_)
          (let* ((_phi8270_ (gx#current-expander-phi))
                 (_ctx8272_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8266_
             _e8267_
             _rebind?8268_
             _phi8270_
             _ctx8272_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id8274_ _e8275_ _rebind?8276_ _phi8277_)
          (let ((_ctx8279_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8274_
             _e8275_
             _rebind?8276_
             _phi8277_
             _ctx8279_))))
      (define gx#core-bind-syntax!
        (lambda _g11187_
          (let ((_g11186_ (length _g11187_)))
            (cond ((##fx= _g11186_ 2) (apply gx#core-bind-syntax!__0 _g11187_))
                  ((##fx= _g11186_ 3) (apply gx#core-bind-syntax!__1 _g11187_))
                  ((##fx= _g11186_ 4) (apply gx#core-bind-syntax!__2 _g11187_))
                  ((##fx= _g11186_ 5) (apply gx#core-bind-syntax!__% _g11187_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g11187_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id8225_ _e8226_ _rebind?8227_)
        (gx#core-bind-syntax!__%
         _id8225_
         _e8226_
         _rebind?8227_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id8232_ _e8233_)
          (let ((_rebind?8235_ '#f))
            (gx#core-bind-root-syntax!__% _id8232_ _e8233_ _rebind?8235_))))
      (define gx#core-bind-root-syntax!
        (lambda _g11189_
          (let ((_g11188_ (length _g11189_)))
            (cond ((##fx= _g11188_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g11189_))
                  ((##fx= _g11188_ 3)
                   (apply gx#core-bind-root-syntax!__% _g11189_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g11189_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id8183_ _alias-id8184_ _rebind?8185_ _phi8186_ _ctx8187_)
        (gx#bind-identifier!__%
         _id8183_
         (let ((_key8189_ (gx#core-identifier-key _id8183_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key8189_ '#t _phi8186_ _ctx8187_)
            _key8189_
            _phi8186_
            _alias-id8184_))
         _rebind?8185_
         _phi8186_
         _ctx8187_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id8194_ _alias-id8195_)
          (let* ((_rebind?8197_ '#f)
                 (_phi8199_ (gx#current-expander-phi))
                 (_ctx8201_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8194_
             _alias-id8195_
             _rebind?8197_
             _phi8199_
             _ctx8201_))))
      (define gx#core-bind-alias!__1
        (lambda (_id8203_ _alias-id8204_ _rebind?8205_)
          (let* ((_phi8207_ (gx#current-expander-phi))
                 (_ctx8209_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8203_
             _alias-id8204_
             _rebind?8205_
             _phi8207_
             _ctx8209_))))
      (define gx#core-bind-alias!__2
        (lambda (_id8211_ _alias-id8212_ _rebind?8213_ _phi8214_)
          (let ((_ctx8216_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8211_
             _alias-id8212_
             _rebind?8213_
             _phi8214_
             _ctx8216_))))
      (define gx#core-bind-alias!
        (lambda _g11191_
          (let ((_g11190_ (length _g11191_)))
            (cond ((##fx= _g11190_ 2) (apply gx#core-bind-alias!__0 _g11191_))
                  ((##fx= _g11190_ 3) (apply gx#core-bind-alias!__1 _g11191_))
                  ((##fx= _g11190_ 4) (apply gx#core-bind-alias!__2 _g11191_))
                  ((##fx= _g11190_ 5) (apply gx#core-bind-alias!__% _g11191_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g11191_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key8140_ _syntax?8141_ _phi8142_ _ctx8143_)
        (if (uninterned-symbol? _key8140_)
            (gensym 'L)
            (if (pair? _key8140_)
                (gensym (car _key8140_))
                (if (##structure-instance-of? _ctx8143_ 'gx#top-context::t)
                    (let ((_ns8145_ (gx#core-context-namespace__% _ctx8143_)))
                      (if (if (fxzero? _phi8142_) (not _syntax?8141_) '#f)
                          (if _ns8145_
                              (make-symbol _ns8145_ '"#" _key8140_)
                              _key8140_)
                          (if _syntax?8141_
                              (make-symbol
                               (let ((_$e8147_ _ns8145_))
                                 (if _$e8147_ _$e8147_ '""))
                               '"[:"
                               (number->string _phi8142_)
                               '":]#"
                               _key8140_)
                              (make-symbol
                               (let ((_$e8150_ _ns8145_))
                                 (if _$e8150_ _$e8150_ '""))
                               '"["
                               (number->string _phi8142_)
                               '"]#"
                               _key8140_))))
                    (gensym _key8140_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key8156_)
          (let* ((_syntax?8158_ '#f)
                 (_phi8160_ (gx#current-expander-phi))
                 (_ctx8162_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8156_
             _syntax?8158_
             _phi8160_
             _ctx8162_))))
      (define gx#make-binding-id__1
        (lambda (_key8164_ _syntax?8165_)
          (let* ((_phi8167_ (gx#current-expander-phi))
                 (_ctx8169_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8164_
             _syntax?8165_
             _phi8167_
             _ctx8169_))))
      (define gx#make-binding-id__2
        (lambda (_key8171_ _syntax?8172_ _phi8173_)
          (let ((_ctx8175_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8171_
             _syntax?8172_
             _phi8173_
             _ctx8175_))))
      (define gx#make-binding-id
        (lambda _g11193_
          (let ((_g11192_ (length _g11193_)))
            (cond ((##fx= _g11192_ 1) (apply gx#make-binding-id__0 _g11193_))
                  ((##fx= _g11192_ 2) (apply gx#make-binding-id__1 _g11193_))
                  ((##fx= _g11192_ 3) (apply gx#make-binding-id__2 _g11193_))
                  ((##fx= _g11192_ 4) (apply gx#make-binding-id__% _g11193_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g11193_)))))))))
