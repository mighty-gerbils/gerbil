(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10930_)
      (letrec ((_expand-special10932_
                (lambda (_hd10934_ _K10935_ _rest10936_ _r10937_)
                  (_K10935_
                   _rest10936_
                   (cons (gx#core-expand-top _hd10934_) _r10937_)))))
        (gx#core-expand-block__0 _stx10930_ _expand-special10932_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10683_)
      (letrec ((_expand-special10685_
                (lambda (_hd10805_ _K10806_ _rest10807_ _r10808_)
                  (let* ((_K10812_
                          (lambda (_e10810_)
                            (_K10806_ _rest10807_ (cons _e10810_ _r10808_))))
                         (_e1081310842_ _hd10805_)
                         (_E1083710846_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1081310842_)))
                         (_E1083310858_
                          (lambda ()
                            (if (gx#stx-pair? _e1081310842_)
                                (let ((_e1083810850_
                                       (gx#syntax-e _e1081310842_)))
                                  (let ((_hd1083910853_ (##car _e1083810850_))
                                        (_tl1084010855_ (##cdr _e1083810850_)))
                                    (if (if (gx#identifier? _hd1083910853_)
                                            (gx#core-identifier=?
                                             _hd1083910853_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10812_
                                             (gx#core-expand-define-runtime%
                                              _hd10805_))
                                            (_E1083710846_))
                                        (_E1083710846_))))
                                (_E1083710846_))))
                         (_E1082910870_
                          (lambda ()
                            (if (gx#stx-pair? _e1081310842_)
                                (let ((_e1083410862_
                                       (gx#syntax-e _e1081310842_)))
                                  (let ((_hd1083510865_ (##car _e1083410862_))
                                        (_tl1083610867_ (##cdr _e1083410862_)))
                                    (if (if (gx#identifier? _hd1083510865_)
                                            (gx#core-identifier=?
                                             _hd1083510865_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10812_
                                             (gx#core-expand-define-alias%
                                              _hd10805_))
                                            (_E1083310858_))
                                        (_E1083310858_))))
                                (_E1083310858_))))
                         (_E1081910882_
                          (lambda ()
                            (if (gx#stx-pair? _e1081310842_)
                                (let ((_e1083010874_
                                       (gx#syntax-e _e1081310842_)))
                                  (let ((_hd1083110877_ (##car _e1083010874_))
                                        (_tl1083210879_ (##cdr _e1083010874_)))
                                    (if (if (gx#identifier? _hd1083110877_)
                                            (gx#core-identifier=?
                                             _hd1083110877_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10812_
                                             (gx#core-expand-define-syntax%
                                              _hd10805_))
                                            (_E1082910870_))
                                        (_E1082910870_))))
                                (_E1082910870_))))
                         (_E1081510914_
                          (lambda ()
                            (if (gx#stx-pair? _e1081310842_)
                                (let ((_e1082010886_
                                       (gx#syntax-e _e1081310842_)))
                                  (let ((_hd1082110889_ (##car _e1082010886_))
                                        (_tl1082210891_ (##cdr _e1082010886_)))
                                    (if (if (gx#identifier? _hd1082110889_)
                                            (gx#core-identifier=?
                                             _hd1082110889_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1082210891_)
                                            (let ((_e1082310894_
                                                   (gx#syntax-e
                                                    _tl1082210891_)))
                                              (let ((_hd1082410897_
                                                     (##car _e1082310894_))
                                                    (_tl1082510899_
                                                     (##cdr _e1082310894_)))
                                                (let ((_hd-bind10902_
                                                       _hd1082410897_))
                                                  (if (gx#stx-pair?
                                                       _tl1082510899_)
                                                      (let ((_e1082610904_
                                                             (gx#syntax-e
                                                              _tl1082510899_)))
                                                        (let ((_hd1082710907_
                                                               (##car _e1082610904_))
                                                              (_tl1082810909_
                                                               (##cdr _e1082610904_)))
                                                          (let ((_expr10912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1082710907_))
                    (if (gx#stx-null? _tl1082810909_)
                        (if (gx#core-bind-values? _hd-bind10902_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10902_)
                              (_K10812_ _hd10805_))
                            (_E1081910882_))
                        (_E1081910882_)))))
              (_E1081910882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1081910882_))
                                        (_E1081910882_))))
                                (_E1081910882_))))
                         (_E1081410926_
                          (lambda ()
                            (if (gx#stx-pair? _e1081310842_)
                                (let ((_e1081610918_
                                       (gx#syntax-e _e1081310842_)))
                                  (let ((_hd1081710921_ (##car _e1081610918_))
                                        (_tl1081810923_ (##cdr _e1081610918_)))
                                    (if (if (gx#identifier? _hd1081710921_)
                                            (gx#core-identifier=?
                                             _hd1081710921_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10812_
                                             (gx#core-expand-begin-syntax%
                                              _hd10805_))
                                            (_E1081510914_))
                                        (_E1081510914_))))
                                (_E1081510914_)))))
                    (_E1081410926_))))
               (_eval-body10686_
                (lambda (_rbody10694_)
                  (let _lp10696_ ((_rest10698_ _rbody10694_)
                                  (_body10699_ '())
                                  (_ebody10700_ '()))
                    (let* ((_rest1070110709_ _rest10698_)
                           (_E1070410713_
                            (lambda ()
                              (error '"No clause matching" _rest1070110709_)))
                           (_else1070310717_
                            (lambda ()
                              (values _body10699_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10700_)
                                        (gx#stx-source _stx10683_))))))
                           (_K1070510793_
                            (lambda (_rest10720_ _hd10721_)
                              (let* ((_e1072210739_ _hd10721_)
                                     (_E1073410743_
                                      (lambda ()
                                        (_lp10696_
                                         _rest10720_
                                         (cons _hd10721_ _body10699_)
                                         (cons _hd10721_ _ebody10700_))))
                                     (_E1072410755_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1072210739_)
                                            (let ((_e1073510747_
                                                   (gx#syntax-e
                                                    _e1072210739_)))
                                              (let ((_hd1073610750_
                                                     (##car _e1073510747_))
                                                    (_tl1073710752_
                                                     (##cdr _e1073510747_)))
                                                (if (if (gx#identifier?
                                                         _hd1073610750_)
                                                        (gx#core-identifier=?
                                                         _hd1073610750_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10696_
                                                         _rest10720_
                                                         (cons _hd10721_
                                                               _body10699_)
                                                         _ebody10700_)
                                                        (_E1073410743_))
                                                    (_E1073410743_))))
                                            (_E1073410743_))))
                                     (_E1072310789_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1072210739_)
                                            (let ((_e1072510759_
                                                   (gx#syntax-e
                                                    _e1072210739_)))
                                              (let ((_hd1072610762_
                                                     (##car _e1072510759_))
                                                    (_tl1072710764_
                                                     (##cdr _e1072510759_)))
                                                (if (if (gx#identifier?
                                                         _hd1072610762_)
                                                        (gx#core-identifier=?
                                                         _hd1072610762_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1072710764_)
                                                        (let ((_e1072810767_
                                                               (gx#syntax-e
                                                                _tl1072710764_)))
                                                          (let ((_hd1072910770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1072810767_))
                        (_tl1073010772_ (##cdr _e1072810767_)))
                    (let ((_hd-bind10775_ _hd1072910770_))
                      (if (gx#stx-pair? _tl1073010772_)
                          (let ((_e1073110777_ (gx#syntax-e _tl1073010772_)))
                            (let ((_hd1073210780_ (##car _e1073110777_))
                                  (_tl1073310782_ (##cdr _e1073110777_)))
                              (let ((_expr10785_ _hd1073210780_))
                                (if (gx#stx-null? _tl1073310782_)
                                    (if '#t
                                        (let ((_ehd10787_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10775_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10785_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10721_))))
                                          (_lp10696_
                                           _rest10720_
                                           (cons _ehd10787_ _body10699_)
                                           (cons _ehd10787_ _ebody10700_)))
                                        (_E1072410755_))
                                    (_E1072410755_)))))
                          (_E1072410755_)))))
                (_E1072410755_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1072410755_))))
                                            (_E1072410755_)))))
                                (_E1072310789_)))))
                      (if (##pair? _rest1070110709_)
                          (let ((_hd1070610796_ (##car _rest1070110709_))
                                (_tl1070710798_ (##cdr _rest1070110709_)))
                            (let* ((_hd10801_ _hd1070610796_)
                                   (_rest10803_ _tl1070710798_))
                              (_K1070510793_ _rest10803_ _hd10801_)))
                          (_else1070310717_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10689_
                   (gx#core-expand-block__1
                    _stx10683_
                    _expand-special10685_
                    '#f))
                  (_g10944_ (_eval-body10686_ _rbody10689_)))
             (begin
               (let ((_g10945_
                      (if (##values? _g10944_) (##vector-length _g10944_) 1)))
                 (if (not (##fx= _g10945_ 2))
                     (error "Context expects 2 values" _g10945_)))
               (let ((_expanded-body10691_ (##vector-ref _g10944_ 0))
                     (_value10692_ (##vector-ref _g10944_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10691_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10692_ '())))
                  (gx#stx-source _stx10683_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10653_)
      (let* ((_e1065410661_ _stx10653_)
             (_E1065610665_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1065410661_)))
             (_E1065510679_
              (lambda ()
                (if (gx#stx-pair? _e1065410661_)
                    (let ((_e1065710669_ (gx#syntax-e _e1065410661_)))
                      (let ((_hd1065810672_ (##car _e1065710669_))
                            (_tl1065910674_ (##cdr _e1065710669_)))
                        (let ((_body10677_ _tl1065910674_))
                          (if (gx#stx-list? _body10677_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10677_)
                               (gx#stx-source _stx10653_))
                              (_E1065610665_)))))
                    (_E1065610665_)))))
        (_E1065510679_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10651_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10651_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10639_)
      (let* ((_e1064010643_ _stx10639_)
             (_E1064110647_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1064010643_))))
        (_E1064110647_))))
  (define gx#core-expand-local-block
    (lambda (_stx10363_ _body10364_)
      (letrec ((_expand-special10366_
                (lambda (_hd10634_ _K10635_ _rest10636_ _r10637_)
                  (_K10635_
                   '()
                   (cons (_expand-internal10367_ _hd10634_ _rest10636_)
                         _r10637_))))
               (_expand-internal10367_
                (lambda (_hd10630_ _rest10631_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10369_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd10630_ _rest10631_))
                        (gx#stx-source _stx10363_))
                       _expand-internal-special10368_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj10938 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj10938)
                       __obj10938)))))
               (_expand-internal-special10368_
                (lambda (_hd10525_ _K10526_ _rest10527_ _r10528_)
                  (let* ((_e1052910554_ _hd10525_)
                         (_E1054910558_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1052910554_)))
                         (_E1054510570_
                          (lambda ()
                            (if (gx#stx-pair? _e1052910554_)
                                (let ((_e1055010562_
                                       (gx#syntax-e _e1052910554_)))
                                  (let ((_hd1055110565_ (##car _e1055010562_))
                                        (_tl1055210567_ (##cdr _e1055010562_)))
                                    (if (if (gx#identifier? _hd1055110565_)
                                            (gx#core-identifier=?
                                             _hd1055110565_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10526_
                                             _rest10527_
                                             (cons (gx#core-expand-declare%
                                                    _hd10525_)
                                                   _r10528_))
                                            (_E1054910558_))
                                        (_E1054910558_))))
                                (_E1054910558_))))
                         (_E1054110582_
                          (lambda ()
                            (if (gx#stx-pair? _e1052910554_)
                                (let ((_e1054610574_
                                       (gx#syntax-e _e1052910554_)))
                                  (let ((_hd1054710577_ (##car _e1054610574_))
                                        (_tl1054810579_ (##cdr _e1054610574_)))
                                    (if (if (gx#identifier? _hd1054710577_)
                                            (gx#core-identifier=?
                                             _hd1054710577_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10525_)
                                              (_K10526_ _rest10527_ _r10528_))
                                            (_E1054510570_))
                                        (_E1054510570_))))
                                (_E1054510570_))))
                         (_E1053110594_
                          (lambda ()
                            (if (gx#stx-pair? _e1052910554_)
                                (let ((_e1054210586_
                                       (gx#syntax-e _e1052910554_)))
                                  (let ((_hd1054310589_ (##car _e1054210586_))
                                        (_tl1054410591_ (##cdr _e1054210586_)))
                                    (if (if (gx#identifier? _hd1054310589_)
                                            (gx#core-identifier=?
                                             _hd1054310589_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10525_)
                                              (_K10526_ _rest10527_ _r10528_))
                                            (_E1054110582_))
                                        (_E1054110582_))))
                                (_E1054110582_))))
                         (_E1053010626_
                          (lambda ()
                            (if (gx#stx-pair? _e1052910554_)
                                (let ((_e1053210598_
                                       (gx#syntax-e _e1052910554_)))
                                  (let ((_hd1053310601_ (##car _e1053210598_))
                                        (_tl1053410603_ (##cdr _e1053210598_)))
                                    (if (if (gx#identifier? _hd1053310601_)
                                            (gx#core-identifier=?
                                             _hd1053310601_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1053410603_)
                                            (let ((_e1053510606_
                                                   (gx#syntax-e
                                                    _tl1053410603_)))
                                              (let ((_hd1053610609_
                                                     (##car _e1053510606_))
                                                    (_tl1053710611_
                                                     (##cdr _e1053510606_)))
                                                (let ((_hd-bind10614_
                                                       _hd1053610609_))
                                                  (if (gx#stx-pair?
                                                       _tl1053710611_)
                                                      (let ((_e1053810616_
                                                             (gx#syntax-e
                                                              _tl1053710611_)))
                                                        (let ((_hd1053910619_
                                                               (##car _e1053810616_))
                                                              (_tl1054010621_
                                                               (##cdr _e1053810616_)))
                                                          (let ((_expr10624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1053910619_))
                    (if (gx#stx-null? _tl1054010621_)
                        (if (gx#core-bind-values? _hd-bind10614_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10614_)
                              (_K10526_ _rest10527_ (cons _hd10525_ _r10528_)))
                            (_E1053110594_))
                        (_E1053110594_)))))
              (_E1053110594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1053110594_))
                                        (_E1053110594_))))
                                (_E1053110594_)))))
                    (_E1053010626_))))
               (_wrap-internal10369_
                (lambda (_rbody10371_)
                  (let _lp10373_ ((_rest10375_ _rbody10371_)
                                  (_decls10376_ '())
                                  (_bind10377_ '())
                                  (_body10378_ '()))
                    (let* ((_e1037910386_ _rest10375_)
                           (_E1038110435_
                            (lambda ()
                              (let* ((_body10430_
                                      (let* ((_body1038910399_ _body10378_)
                                             (_E1039310403_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body1038910399_)))
                                             (_else1039210407_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10378_)
                                                 (gx#stx-source _stx10363_))))
                                             (_try-match1039110423_
                                              (lambda ()
                                                (let ((_K1039410413_
                                                       (lambda (_expr10411_)
                                                         _expr10411_)))
                                                  (if (##pair? _body1038910399_)
                                                      (let ((_hd1039510416_
                                                             (##car _body1038910399_))
                                                            (_tl1039610418_
                                                             (##cdr _body1038910399_)))
                                                        (let ((_expr10421_
                                                               _hd1039510416_))
                                                          (if (##null? _tl1039610418_)
                                                              (_K1039410413_
                                                               _expr10421_)
                                                              (_else1039210407_))))
                                                      (_else1039210407_)))))
                                             (_K1039710427_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx10363_))))
                                        (if (##null? _body1038910399_)
                                            (_K1039710427_)
                                            (_try-match1039110423_))))
                                     (_body10432_
                                      (if (null? _bind10377_)
                                          _body10430_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10377_
                                                       (cons _body10430_ '())))
                                           (gx#stx-source _stx10363_)))))
                                (if (null? _decls10376_)
                                    _body10432_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10376_
                                                 (cons _body10432_ '())))
                                     (gx#stx-source _stx10363_))))))
                           (_E1038010521_
                            (lambda ()
                              (if (gx#stx-pair? _e1037910386_)
                                  (let ((_e1038210439_
                                         (gx#syntax-e _e1037910386_)))
                                    (let ((_hd1038310442_
                                           (##car _e1038210439_))
                                          (_tl1038410444_
                                           (##cdr _e1038210439_)))
                                      (let* ((_hd10447_ _hd1038310442_)
                                             (_rest10449_ _tl1038410444_))
                                        (if '#t
                                            (let* ((_e1045010467_ _hd10447_)
                                                   (_E1046210471_
                                                    (lambda ()
                                                      (if (null? _bind10377_)
                                                          (_lp10373_
                                                           _rest10449_
                                                           _decls10376_
                                                           _bind10377_
                                                           (cons _hd10447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10378_))
                  (_lp10373_
                   _rest10449_
                   _decls10376_
                   (cons (cons '#f (cons _hd10447_ '())) _bind10377_)
                   _body10378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1045210485_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1045010467_)
                                                          (let ((_e1046310475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1045010467_)))
                    (let ((_hd1046410478_ (##car _e1046310475_))
                          (_tl1046510480_ (##cdr _e1046310475_)))
                      (if (if (gx#identifier? _hd1046410478_)
                              (gx#core-identifier=? _hd1046410478_ '%#declare)
                              '#f)
                          (let ((_xdecls10483_ _tl1046510480_))
                            (if '#t
                                (_lp10373_
                                 _rest10449_
                                 (gx#stx-foldr cons _decls10376_ _xdecls10483_)
                                 _bind10377_
                                 _body10378_)
                                (_E1046210471_)))
                          (_E1046210471_))))
                  (_E1046210471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1045110517_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1045010467_)
                                                          (let ((_e1045310489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1045010467_)))
                    (let ((_hd1045410492_ (##car _e1045310489_))
                          (_tl1045510494_ (##cdr _e1045310489_)))
                      (if (if (gx#identifier? _hd1045410492_)
                              (gx#core-identifier=?
                               _hd1045410492_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1045510494_)
                              (let ((_e1045610497_
                                     (gx#syntax-e _tl1045510494_)))
                                (let ((_hd1045710500_ (##car _e1045610497_))
                                      (_tl1045810502_ (##cdr _e1045610497_)))
                                  (let ((_hd-bind10505_ _hd1045710500_))
                                    (if (gx#stx-pair? _tl1045810502_)
                                        (let ((_e1045910507_
                                               (gx#syntax-e _tl1045810502_)))
                                          (let ((_hd1046010510_
                                                 (##car _e1045910507_))
                                                (_tl1046110512_
                                                 (##cdr _e1045910507_)))
                                            (let ((_expr10515_ _hd1046010510_))
                                              (if (gx#stx-null? _tl1046110512_)
                                                  (if '#t
                                                      (_lp10373_
                                                       _rest10449_
                                                       _decls10376_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10505_)
                           (cons (gx#core-expand-expression _expr10515_) '()))
                     _bind10377_)
               _body10378_)
              (_E1045210485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1045210485_)))))
                                        (_E1045210485_)))))
                              (_E1045210485_))
                          (_E1045210485_))))
                  (_E1045210485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1045110517_))
                                            (_E1038110435_)))))
                                  (_E1038110435_)))))
                      (_E1038010521_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10364_)
          (gx#stx-source _stx10363_))
         _expand-special10366_))))
  (define gx#core-expand-declare%
    (lambda (_stx10301_)
      (let* ((_e1030210309_ _stx10301_)
             (_E1030410313_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1030210309_)))
             (_E1030310359_
              (lambda ()
                (if (gx#stx-pair? _e1030210309_)
                    (let ((_e1030510317_ (gx#syntax-e _e1030210309_)))
                      (let ((_hd1030610320_ (##car _e1030510317_))
                            (_tl1030710322_ (##cdr _e1030510317_)))
                        (let ((_body10325_ _tl1030710322_))
                          (if (gx#stx-list? _body10325_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10327_)
                                   (let* ((_e1032810335_ _decl10327_)
                                          (_E1033010339_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1032810335_)))
                                          (_E1032910355_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1032810335_)
                                                 (let ((_e1033110343_
                                                        (gx#syntax-e
                                                         _e1032810335_)))
                                                   (let ((_hd1033210346_
                                                          (##car _e1033110343_))
                                                         (_tl1033310348_
                                                          (##cdr _e1033110343_)))
                                                     (let* ((_head10351_
                                                             _hd1033210346_)
                                                            (_args10353_
                                                             _tl1033310348_))
                                                       (if (gx#stx-list?
                                                            _args10353_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10327_)
                                                           (_E1033010339_)))))
                                                 (_E1033010339_)))))
                                     (_E1032910355_)))
                                 _body10325_))
                               (gx#stx-source _stx10301_))
                              (_E1030410313_)))))
                    (_E1030410313_)))))
        (_E1030310359_))))
  (define gx#core-expand-extern%
    (lambda (_stx10185_)
      (let* ((_e1018610193_ _stx10185_)
             (_E1018810197_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1018610193_)))
             (_E1018710297_
              (lambda ()
                (if (gx#stx-pair? _e1018610193_)
                    (let ((_e1018910201_ (gx#syntax-e _e1018610193_)))
                      (let ((_hd1019010204_ (##car _e1018910201_))
                            (_tl1019110206_ (##cdr _e1018910201_)))
                        (let ((_body10209_ _tl1019110206_))
                          (if (gx#stx-list? _body10209_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind10211_)
                                   (let* ((_e1021210222_ _bind10211_)
                                          (_E1021410226_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1021210222_)))
                                          (_E1021310250_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1021210222_)
                                                 (let ((_e1021510230_
                                                        (gx#syntax-e
                                                         _e1021210222_)))
                                                   (let ((_hd1021610233_
                                                          (##car _e1021510230_))
                                                         (_tl1021710235_
                                                          (##cdr _e1021510230_)))
                                                     (let ((_id10238_
                                                            _hd1021610233_))
                                                       (if (gx#stx-pair?
                                                            _tl1021710235_)
                                                           (let ((_e1021810240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1021710235_)))
                     (let ((_hd1021910243_ (##car _e1021810240_))
                           (_tl1022010245_ (##cdr _e1021810240_)))
                       (let ((_eid10248_ _hd1021910243_))
                         (if (gx#stx-null? _tl1022010245_)
                             (if (if (gx#identifier? _id10238_)
                                     (gx#identifier? _eid10248_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10238_
                                  (gx#stx-e _eid10248_))
                                 (_E1021410226_))
                             (_E1021410226_)))))
                   (_E1021410226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1021410226_)))))
                                     (_E1021310250_)))
                                 _body10209_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10254_)
                                     (let* ((_e1025510265_ _bind10254_)
                                            (_E1025710269_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1025510265_)))
                                            (_E1025610293_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1025510265_)
                                                   (let ((_e1025810273_
                                                          (gx#syntax-e
                                                           _e1025510265_)))
                                                     (let ((_hd1025910276_
                                                            (##car _e1025810273_))
                                                           (_tl1026010278_
                                                            (##cdr _e1025810273_)))
                                                       (let ((_id10281_
                                                              _hd1025910276_))
                                                         (if (gx#stx-pair?
                                                              _tl1026010278_)
                                                             (let ((_e1026110283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1026010278_)))
                       (let ((_hd1026210286_ (##car _e1026110283_))
                             (_tl1026310288_ (##cdr _e1026110283_)))
                         (let ((_eid10291_ _hd1026210286_))
                           (if (gx#stx-null? _tl1026310288_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10281_)
                                         (cons (gx#stx-e _eid10291_) '()))
                                   (_E1025710269_))
                               (_E1025710269_)))))
                     (_E1025710269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1025710269_)))))
                                       (_E1025610293_)))
                                   _body10209_))
                                 (gx#stx-source _stx10185_)))
                              (_E1018810197_)))))
                    (_E1018810197_)))))
        (_E1018710297_))))
  (define gx#core-expand-define-values%
    (lambda (_stx10131_)
      (let* ((_e1013210145_ _stx10131_)
             (_E1013410149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1013210145_)))
             (_E1013310181_
              (lambda ()
                (if (gx#stx-pair? _e1013210145_)
                    (let ((_e1013510153_ (gx#syntax-e _e1013210145_)))
                      (let ((_hd1013610156_ (##car _e1013510153_))
                            (_tl1013710158_ (##cdr _e1013510153_)))
                        (if (gx#stx-pair? _tl1013710158_)
                            (let ((_e1013810161_ (gx#syntax-e _tl1013710158_)))
                              (let ((_hd1013910164_ (##car _e1013810161_))
                                    (_tl1014010166_ (##cdr _e1013810161_)))
                                (let ((_hd10169_ _hd1013910164_))
                                  (if (gx#stx-pair? _tl1014010166_)
                                      (let ((_e1014110171_
                                             (gx#syntax-e _tl1014010166_)))
                                        (let ((_hd1014210174_
                                               (##car _e1014110171_))
                                              (_tl1014310176_
                                               (##cdr _e1014110171_)))
                                          (let ((_expr10179_ _hd1014210174_))
                                            (if (gx#stx-null? _tl1014310176_)
                                                (if (gx#core-bind-values?
                                                     _hd10169_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd10169_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10169_)
                           (cons (gx#core-expand-expression _expr10179_) '())))
               (gx#stx-source _stx10131_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1013410149_))
                                                (_E1013410149_)))))
                                      (_E1013410149_)))))
                            (_E1013410149_))))
                    (_E1013410149_)))))
        (_E1013310181_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx10077_)
      (let* ((_e1007810091_ _stx10077_)
             (_E1008010095_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1007810091_)))
             (_E1007910127_
              (lambda ()
                (if (gx#stx-pair? _e1007810091_)
                    (let ((_e1008110099_ (gx#syntax-e _e1007810091_)))
                      (let ((_hd1008210102_ (##car _e1008110099_))
                            (_tl1008310104_ (##cdr _e1008110099_)))
                        (if (gx#stx-pair? _tl1008310104_)
                            (let ((_e1008410107_ (gx#syntax-e _tl1008310104_)))
                              (let ((_hd1008510110_ (##car _e1008410107_))
                                    (_tl1008610112_ (##cdr _e1008410107_)))
                                (let ((_id10115_ _hd1008510110_))
                                  (if (gx#stx-pair? _tl1008610112_)
                                      (let ((_e1008710117_
                                             (gx#syntax-e _tl1008610112_)))
                                        (let ((_hd1008810120_
                                               (##car _e1008710117_))
                                              (_tl1008910122_
                                               (##cdr _e1008710117_)))
                                          (let ((_binding-id10125_
                                                 _hd1008810120_))
                                            (if (gx#stx-null? _tl1008910122_)
                                                (if (if (gx#identifier?
                                                         _id10115_)
                                                        (gx#identifier?
                                                         _binding-id10125_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id10115_
                                                       (gx#stx-e
                                                        _binding-id10125_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10115_)
                           (cons (gx#core-quote-syntax__0 _binding-id10125_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1008010095_))
                                                (_E1008010095_)))))
                                      (_E1008010095_)))))
                            (_E1008010095_))))
                    (_E1008010095_)))))
        (_E1007910127_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx10020_)
      (let* ((_e1002110034_ _stx10020_)
             (_E1002310038_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1002110034_)))
             (_E1002210073_
              (lambda ()
                (if (gx#stx-pair? _e1002110034_)
                    (let ((_e1002410042_ (gx#syntax-e _e1002110034_)))
                      (let ((_hd1002510045_ (##car _e1002410042_))
                            (_tl1002610047_ (##cdr _e1002410042_)))
                        (if (gx#stx-pair? _tl1002610047_)
                            (let ((_e1002710050_ (gx#syntax-e _tl1002610047_)))
                              (let ((_hd1002810053_ (##car _e1002710050_))
                                    (_tl1002910055_ (##cdr _e1002710050_)))
                                (let ((_id10058_ _hd1002810053_))
                                  (if (gx#stx-pair? _tl1002910055_)
                                      (let ((_e1003010060_
                                             (gx#syntax-e _tl1002910055_)))
                                        (let ((_hd1003110063_
                                               (##car _e1003010060_))
                                              (_tl1003210065_
                                               (##cdr _e1003010060_)))
                                          (let ((_expr10068_ _hd1003110063_))
                                            (if (gx#stx-null? _tl1003210065_)
                                                (if (gx#identifier? _id10058_)
                                                    (let ((_g10946_
                                                           (gx#core-expand-expression+1
                                                            _expr10068_)))
                                                      (begin
                                                        (let ((_g10947_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g10946_)
                           (##vector-length _g10946_)
                           1)))
                  (if (not (##fx= _g10947_ 2))
                      (error "Context expects 2 values" _g10947_)))
                (let ((_e-stx10070_ (##vector-ref _g10946_ 0))
                      (_e10071_ (##vector-ref _g10946_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id10058_ _e10071_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id10058_)
                                 (cons _e-stx10070_ '())))
                     (gx#stx-source _stx10020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1002310038_))
                                                (_E1002310038_)))))
                                      (_E1002310038_)))))
                            (_E1002310038_))))
                    (_E1002310038_)))))
        (_E1002210073_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9964_)
      (let* ((_e99659978_ _stx9964_)
             (_E99679982_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99659978_)))
             (_E996610016_
              (lambda ()
                (if (gx#stx-pair? _e99659978_)
                    (let ((_e99689986_ (gx#syntax-e _e99659978_)))
                      (let ((_hd99699989_ (##car _e99689986_))
                            (_tl99709991_ (##cdr _e99689986_)))
                        (if (gx#stx-pair? _tl99709991_)
                            (let ((_e99719994_ (gx#syntax-e _tl99709991_)))
                              (let ((_hd99729997_ (##car _e99719994_))
                                    (_tl99739999_ (##cdr _e99719994_)))
                                (let ((_id10002_ _hd99729997_))
                                  (if (gx#stx-pair? _tl99739999_)
                                      (let ((_e997410004_
                                             (gx#syntax-e _tl99739999_)))
                                        (let ((_hd997510007_
                                               (##car _e997410004_))
                                              (_tl997610009_
                                               (##cdr _e997410004_)))
                                          (let ((_alias-id10012_
                                                 _hd997510007_))
                                            (if (gx#stx-null? _tl997610009_)
                                                (if (if (gx#identifier?
                                                         _id10002_)
                                                        (gx#identifier?
                                                         _alias-id10012_)
                                                        '#f)
                                                    (let ((_alias-id10014_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id10012_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id10002_
                                                         _alias-id10014_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id10002_)
                             (cons _alias-id10014_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E99679982_))
                                                (_E99679982_)))))
                                      (_E99679982_)))))
                            (_E99679982_))))
                    (_E99679982_)))))
        (_E996610016_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx9907_ _wrap?9908_)
        (let* ((_e99099919_ _stx9907_)
               (_E99119923_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e99099919_)))
               (_E99109950_
                (lambda ()
                  (if (gx#stx-pair? _e99099919_)
                      (let ((_e99129927_ (gx#syntax-e _e99099919_)))
                        (let ((_hd99139930_ (##car _e99129927_))
                              (_tl99149932_ (##cdr _e99129927_)))
                          (if (gx#stx-pair? _tl99149932_)
                              (let ((_e99159935_ (gx#syntax-e _tl99149932_)))
                                (let ((_hd99169938_ (##car _e99159935_))
                                      (_tl99179940_ (##cdr _e99159935_)))
                                  (let* ((_hd9943_ _hd99169938_)
                                         (_body9945_ _tl99179940_))
                                    (if (gx#core-bind-values? _hd9943_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9943_)
                                             (let ((_body9948_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9943_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9907_
                         _body9945_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9908_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9948_)
                                                    (gx#stx-source _stx9907_))
                                                   _body9948_))))
                                         gx#current-expander-context
                                         (let ((__obj10939
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10939)
                                             __obj10939)))
                                        (_E99119923_)))))
                              (_E99119923_))))
                      (_E99119923_)))))
          (_E99109950_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9957_)
          (let ((_wrap?9959_ '#t))
            (gx#core-expand-lambda%__% _stx9957_ _wrap?9959_))))
      (define gx#core-expand-lambda%
        (lambda _g10949_
          (let ((_g10948_ (length _g10949_)))
            (cond ((##fx= _g10948_ 1)
                   (apply gx#core-expand-lambda%__0 _g10949_))
                  ((##fx= _g10948_ 2)
                   (apply gx#core-expand-lambda%__% _g10949_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g10949_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9871_)
      (let* ((_e98729879_ _stx9871_)
             (_E98749883_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98729879_)))
             (_E98739902_
              (lambda ()
                (if (gx#stx-pair? _e98729879_)
                    (let ((_e98759887_ (gx#syntax-e _e98729879_)))
                      (let ((_hd98769890_ (##car _e98759887_))
                            (_tl98779892_ (##cdr _e98759887_)))
                        (let ((_clauses9895_ _tl98779892_))
                          (if (gx#stx-list? _clauses9895_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9897_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9897_)
                                     (let ((_$e9899_
                                            (gx#stx-source _clause9897_)))
                                       (if _$e9899_
                                           _$e9899_
                                           (gx#stx-source _stx9871_))))
                                    '#f))
                                 _clauses9895_))
                               (gx#stx-source _stx9871_))
                              (_E98749883_)))))
                    (_E98749883_)))))
        (_E98739902_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9825_)
      (let* ((_e98269836_ _stx9825_)
             (_E98289840_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98269836_)))
             (_E98279867_
              (lambda ()
                (if (gx#stx-pair? _e98269836_)
                    (let ((_e98299844_ (gx#syntax-e _e98269836_)))
                      (let ((_hd98309847_ (##car _e98299844_))
                            (_tl98319849_ (##cdr _e98299844_)))
                        (if (gx#stx-pair? _tl98319849_)
                            (let ((_e98329852_ (gx#syntax-e _tl98319849_)))
                              (let ((_hd98339855_ (##car _e98329852_))
                                    (_tl98349857_ (##cdr _e98329852_)))
                                (let* ((_hd9860_ _hd98339855_)
                                       (_body9862_ _tl98349857_))
                                  (if (gx#core-expand-let-bind? _hd9860_)
                                      (let ((_expressions9864_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9860_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9860_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9860_
                                                           _expressions9864_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9825_
                         _body9862_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9825_))))
                                         gx#current-expander-context
                                         (let ((__obj10940
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10940)
                                             __obj10940))))
                                      (_E98289840_)))))
                            (_E98289840_))))
                    (_E98289840_)))))
        (_E98279867_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9770_ _form9771_)
        (let* ((_e97729782_ _stx9770_)
               (_E97749786_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e97729782_)))
               (_E97739811_
                (lambda ()
                  (if (gx#stx-pair? _e97729782_)
                      (let ((_e97759790_ (gx#syntax-e _e97729782_)))
                        (let ((_hd97769793_ (##car _e97759790_))
                              (_tl97779795_ (##cdr _e97759790_)))
                          (if (gx#stx-pair? _tl97779795_)
                              (let ((_e97789798_ (gx#syntax-e _tl97779795_)))
                                (let ((_hd97799801_ (##car _e97789798_))
                                      (_tl97809803_ (##cdr _e97789798_)))
                                  (let* ((_hd9806_ _hd97799801_)
                                         (_body9808_ _tl97809803_))
                                    (if (gx#core-expand-let-bind? _hd9806_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9806_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9771_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9806_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9806_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9770_
                         _body9808_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9770_))))
                                         gx#current-expander-context
                                         (let ((__obj10941
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10941)
                                             __obj10941)))
                                        (_E97749786_)))))
                              (_E97749786_))))
                      (_E97749786_)))))
          (_E97739811_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9818_)
          (let ((_form9820_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9818_ _form9820_))))
      (define gx#core-expand-letrec-values%
        (lambda _g10951_
          (let ((_g10950_ (length _g10951_)))
            (cond ((##fx= _g10950_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g10951_))
                  ((##fx= _g10950_ 2)
                   (apply gx#core-expand-letrec-values%__% _g10951_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g10951_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9767_)
      (gx#core-expand-letrec-values%__% _stx9767_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9724_)
      (if (gx#stx-list? _stx9724_)
          (gx#stx-andmap
           (lambda (_bind9726_)
             (let* ((_e97279737_ _bind9726_)
                    (_E97299741_ (lambda () '#f))
                    (_E97289763_
                     (lambda ()
                       (if (gx#stx-pair? _e97279737_)
                           (let ((_e97309745_ (gx#syntax-e _e97279737_)))
                             (let ((_hd97319748_ (##car _e97309745_))
                                   (_tl97329750_ (##cdr _e97309745_)))
                               (let ((_hd9753_ _hd97319748_))
                                 (if (gx#stx-pair? _tl97329750_)
                                     (let ((_e97339755_
                                            (gx#syntax-e _tl97329750_)))
                                       (let ((_hd97349758_ (##car _e97339755_))
                                             (_tl97359760_
                                              (##cdr _e97339755_)))
                                         (if (gx#stx-null? _tl97359760_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9753_)
                                                 (_E97299741_))
                                             (_E97299741_))))
                                     (_E97299741_)))))
                           (_E97299741_)))))
               (_E97289763_)))
           _stx9724_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9683_)
      (let* ((_e96849694_ _bind9683_)
             (_E96869698_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96849694_)))
             (_E96859720_
              (lambda ()
                (if (gx#stx-pair? _e96849694_)
                    (let ((_e96879702_ (gx#syntax-e _e96849694_)))
                      (let ((_hd96889705_ (##car _e96879702_))
                            (_tl96899707_ (##cdr _e96879702_)))
                        (if (gx#stx-pair? _tl96899707_)
                            (let ((_e96909710_ (gx#syntax-e _tl96899707_)))
                              (let ((_hd96919713_ (##car _e96909710_))
                                    (_tl96929715_ (##cdr _e96909710_)))
                                (let ((_expr9718_ _hd96919713_))
                                  (if (gx#stx-null? _tl96929715_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9718_)
                                          (_E96869698_))
                                      (_E96869698_)))))
                            (_E96869698_))))
                    (_E96869698_)))))
        (_E96859720_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9642_)
      (let* ((_e96439653_ _bind9642_)
             (_E96459657_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96439653_)))
             (_E96449679_
              (lambda ()
                (if (gx#stx-pair? _e96439653_)
                    (let ((_e96469661_ (gx#syntax-e _e96439653_)))
                      (let ((_hd96479664_ (##car _e96469661_))
                            (_tl96489666_ (##cdr _e96469661_)))
                        (let ((_hd9669_ _hd96479664_))
                          (if (gx#stx-pair? _tl96489666_)
                              (let ((_e96499671_ (gx#syntax-e _tl96489666_)))
                                (let ((_hd96509674_ (##car _e96499671_))
                                      (_tl96519676_ (##cdr _e96499671_)))
                                  (if (gx#stx-null? _tl96519676_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9669_)
                                          (_E96459657_))
                                      (_E96459657_))))
                              (_E96459657_)))))
                    (_E96459657_)))))
        (_E96449679_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9600_ _expr9601_)
      (let* ((_e96029612_ _bind9600_)
             (_E96049616_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96029612_)))
             (_E96039638_
              (lambda ()
                (if (gx#stx-pair? _e96029612_)
                    (let ((_e96059620_ (gx#syntax-e _e96029612_)))
                      (let ((_hd96069623_ (##car _e96059620_))
                            (_tl96079625_ (##cdr _e96059620_)))
                        (let ((_hd9628_ _hd96069623_))
                          (if (gx#stx-pair? _tl96079625_)
                              (let ((_e96089630_ (gx#syntax-e _tl96079625_)))
                                (let ((_hd96099633_ (##car _e96089630_))
                                      (_tl96109635_ (##cdr _e96089630_)))
                                  (if (gx#stx-null? _tl96109635_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9628_)
                                                (cons _expr9601_ '()))
                                          (_E96049616_))
                                      (_E96049616_))))
                              (_E96049616_)))))
                    (_E96049616_)))))
        (_E96039638_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9554_)
      (let* ((_e95559565_ _stx9554_)
             (_E95579569_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95559565_)))
             (_E95569596_
              (lambda ()
                (if (gx#stx-pair? _e95559565_)
                    (let ((_e95589573_ (gx#syntax-e _e95559565_)))
                      (let ((_hd95599576_ (##car _e95589573_))
                            (_tl95609578_ (##cdr _e95589573_)))
                        (if (gx#stx-pair? _tl95609578_)
                            (let ((_e95619581_ (gx#syntax-e _tl95609578_)))
                              (let ((_hd95629584_ (##car _e95619581_))
                                    (_tl95639586_ (##cdr _e95619581_)))
                                (let* ((_hd9589_ _hd95629584_)
                                       (_body9591_ _tl95639586_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9589_)
                                      (let ((_expanders9593_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9589_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9589_
                                              _expanders9593_)
                                             (gx#core-expand-local-block
                                              _stx9554_
                                              _body9591_)))
                                         gx#current-expander-context
                                         (let ((__obj10942
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10942)
                                             __obj10942))))
                                      (_E95579569_)))))
                            (_E95579569_))))
                    (_E95579569_)))))
        (_E95569596_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9503_)
      (let* ((_e95049514_ _stx9503_)
             (_E95069518_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95049514_)))
             (_E95059550_
              (lambda ()
                (if (gx#stx-pair? _e95049514_)
                    (let ((_e95079522_ (gx#syntax-e _e95049514_)))
                      (let ((_hd95089525_ (##car _e95079522_))
                            (_tl95099527_ (##cdr _e95079522_)))
                        (if (gx#stx-pair? _tl95099527_)
                            (let ((_e95109530_ (gx#syntax-e _tl95099527_)))
                              (let ((_hd95119533_ (##car _e95109530_))
                                    (_tl95129535_ (##cdr _e95109530_)))
                                (let* ((_hd9538_ _hd95119533_)
                                       (_body9540_ _tl95129535_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9538_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9538_
                                            (make-list
                                             (gx#stx-length _hd9538_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g95429545_ _g95439547_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g95429545_
                                               _g95439547_
                                               '#t))
                                            _hd9538_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9538_))
                                           (gx#core-expand-local-block
                                            _stx9503_
                                            _body9540_)))
                                       gx#current-expander-context
                                       (let ((__obj10943
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj10943)
                                           __obj10943)))
                                      (_E95069518_)))))
                            (_E95069518_))))
                    (_E95069518_)))))
        (_E95059550_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9460_)
      (if (gx#stx-list? _stx9460_)
          (gx#stx-andmap
           (lambda (_bind9462_)
             (let* ((_e94639473_ _bind9462_)
                    (_E94659477_ (lambda () '#f))
                    (_E94649499_
                     (lambda ()
                       (if (gx#stx-pair? _e94639473_)
                           (let ((_e94669481_ (gx#syntax-e _e94639473_)))
                             (let ((_hd94679484_ (##car _e94669481_))
                                   (_tl94689486_ (##cdr _e94669481_)))
                               (let ((_hd9489_ _hd94679484_))
                                 (if (gx#stx-pair? _tl94689486_)
                                     (let ((_e94699491_
                                            (gx#syntax-e _tl94689486_)))
                                       (let ((_hd94709494_ (##car _e94699491_))
                                             (_tl94719496_
                                              (##cdr _e94699491_)))
                                         (if (gx#stx-null? _tl94719496_)
                                             (if '#t
                                                 (gx#identifier? _hd9489_)
                                                 (_E94659477_))
                                             (_E94659477_))))
                                     (_E94659477_)))))
                           (_E94659477_)))))
               (_E94649499_)))
           _stx9460_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9417_)
      (let* ((_e94189428_ _bind9417_)
             (_E94209432_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94189428_)))
             (_E94199456_
              (lambda ()
                (if (gx#stx-pair? _e94189428_)
                    (let ((_e94219436_ (gx#syntax-e _e94189428_)))
                      (let ((_hd94229439_ (##car _e94219436_))
                            (_tl94239441_ (##cdr _e94219436_)))
                        (if (gx#stx-pair? _tl94239441_)
                            (let ((_e94249444_ (gx#syntax-e _tl94239441_)))
                              (let ((_hd94259447_ (##car _e94249444_))
                                    (_tl94269449_ (##cdr _e94249444_)))
                                (let ((_expr9452_ _hd94259447_))
                                  (if (gx#stx-null? _tl94269449_)
                                      (if '#t
                                          (let ((_g10952_
                                                 (gx#core-expand-expression+1
                                                  _expr9452_)))
                                            (begin
                                              (let ((_g10953_
                                                     (if (##values? _g10952_)
                                                         (##vector-length
                                                          _g10952_)
                                                         1)))
                                                (if (not (##fx= _g10953_ 2))
                                                    (error "Context expects 2 values"
                                                           _g10953_)))
                                              (let ((_e9454_ (##vector-ref
                                                              _g10952_
                                                              1)))
                                                _e9454_)))
                                          (_E94209432_))
                                      (_E94209432_)))))
                            (_E94209432_))))
                    (_E94209432_)))))
        (_E94199456_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9362_ _e9363_ _rebind?9364_)
        (let* ((_e93659375_ _bind9362_)
               (_E93679379_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e93659375_)))
               (_E93669401_
                (lambda ()
                  (if (gx#stx-pair? _e93659375_)
                      (let ((_e93689383_ (gx#syntax-e _e93659375_)))
                        (let ((_hd93699386_ (##car _e93689383_))
                              (_tl93709388_ (##cdr _e93689383_)))
                          (let ((_id9391_ _hd93699386_))
                            (if (gx#stx-pair? _tl93709388_)
                                (let ((_e93719393_ (gx#syntax-e _tl93709388_)))
                                  (let ((_hd93729396_ (##car _e93719393_))
                                        (_tl93739398_ (##cdr _e93719393_)))
                                    (if (gx#stx-null? _tl93739398_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9391_
                                             _e9363_
                                             _rebind?9364_)
                                            (_E93679379_))
                                        (_E93679379_))))
                                (_E93679379_)))))
                      (_E93679379_)))))
          (_E93669401_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9408_ _e9409_)
          (let ((_rebind?9411_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9408_
             _e9409_
             _rebind?9411_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g10955_
          (let ((_g10954_ (length _g10955_)))
            (cond ((##fx= _g10954_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g10955_))
                  ((##fx= _g10954_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g10955_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g10955_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9320_)
      (let* ((_e93219331_ _stx9320_)
             (_E93239335_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93219331_)))
             (_E93229357_
              (lambda ()
                (if (gx#stx-pair? _e93219331_)
                    (let ((_e93249339_ (gx#syntax-e _e93219331_)))
                      (let ((_hd93259342_ (##car _e93249339_))
                            (_tl93269344_ (##cdr _e93249339_)))
                        (if (gx#stx-pair? _tl93269344_)
                            (let ((_e93279347_ (gx#syntax-e _tl93269344_)))
                              (let ((_hd93289350_ (##car _e93279347_))
                                    (_tl93299352_ (##cdr _e93279347_)))
                                (let ((_expr9355_ _hd93289350_))
                                  (if (gx#stx-null? _tl93299352_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9355_)
                                          (_E93239335_))
                                      (_E93239335_)))))
                            (_E93239335_))))
                    (_E93239335_)))))
        (_E93229357_))))
  (define gx#core-expand-quote%
    (lambda (_stx9279_)
      (let* ((_e92809290_ _stx9279_)
             (_E92829294_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92809290_)))
             (_E92819316_
              (lambda ()
                (if (gx#stx-pair? _e92809290_)
                    (let ((_e92839298_ (gx#syntax-e _e92809290_)))
                      (let ((_hd92849301_ (##car _e92839298_))
                            (_tl92859303_ (##cdr _e92839298_)))
                        (if (gx#stx-pair? _tl92859303_)
                            (let ((_e92869306_ (gx#syntax-e _tl92859303_)))
                              (let ((_hd92879309_ (##car _e92869306_))
                                    (_tl92889311_ (##cdr _e92869306_)))
                                (let ((_e9314_ _hd92879309_))
                                  (if (gx#stx-null? _tl92889311_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9314_)
                                                       '()))
                                           (gx#stx-source _stx9279_))
                                          (_E92829294_))
                                      (_E92829294_)))))
                            (_E92829294_))))
                    (_E92829294_)))))
        (_E92819316_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9238_)
      (let* ((_e92399249_ _stx9238_)
             (_E92419253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92399249_)))
             (_E92409275_
              (lambda ()
                (if (gx#stx-pair? _e92399249_)
                    (let ((_e92429257_ (gx#syntax-e _e92399249_)))
                      (let ((_hd92439260_ (##car _e92429257_))
                            (_tl92449262_ (##cdr _e92429257_)))
                        (if (gx#stx-pair? _tl92449262_)
                            (let ((_e92459265_ (gx#syntax-e _tl92449262_)))
                              (let ((_hd92469268_ (##car _e92459265_))
                                    (_tl92479270_ (##cdr _e92459265_)))
                                (let ((_e9273_ _hd92469268_))
                                  (if (gx#stx-null? _tl92479270_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9273_)
                                                       '()))
                                           (gx#stx-source _stx9238_))
                                          (_E92419253_))
                                      (_E92419253_)))))
                            (_E92419253_))))
                    (_E92419253_)))))
        (_E92409275_))))
  (define gx#core-expand-call%
    (lambda (_stx9195_)
      (let* ((_e91969206_ _stx9195_)
             (_E91989210_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91969206_)))
             (_E91979234_
              (lambda ()
                (if (gx#stx-pair? _e91969206_)
                    (let ((_e91999214_ (gx#syntax-e _e91969206_)))
                      (let ((_hd92009217_ (##car _e91999214_))
                            (_tl92019219_ (##cdr _e91999214_)))
                        (if (gx#stx-pair? _tl92019219_)
                            (let ((_e92029222_ (gx#syntax-e _tl92019219_)))
                              (let ((_hd92039225_ (##car _e92029222_))
                                    (_tl92049227_ (##cdr _e92029222_)))
                                (let* ((_rator9230_ _hd92039225_)
                                       (_args9232_ _tl92049227_))
                                  (if (gx#stx-list? _args9232_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator9230_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args9232_))
                                       (gx#stx-source _stx9195_))
                                      (_E91989210_)))))
                            (_E91989210_))))
                    (_E91989210_)))))
        (_E91979234_))))
  (define gx#core-expand-if%
    (lambda (_stx9128_)
      (let* ((_e91299145_ _stx9128_)
             (_E91319149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91299145_)))
             (_E91309191_
              (lambda ()
                (if (gx#stx-pair? _e91299145_)
                    (let ((_e91329153_ (gx#syntax-e _e91299145_)))
                      (let ((_hd91339156_ (##car _e91329153_))
                            (_tl91349158_ (##cdr _e91329153_)))
                        (if (gx#stx-pair? _tl91349158_)
                            (let ((_e91359161_ (gx#syntax-e _tl91349158_)))
                              (let ((_hd91369164_ (##car _e91359161_))
                                    (_tl91379166_ (##cdr _e91359161_)))
                                (let ((_test9169_ _hd91369164_))
                                  (if (gx#stx-pair? _tl91379166_)
                                      (let ((_e91389171_
                                             (gx#syntax-e _tl91379166_)))
                                        (let ((_hd91399174_
                                               (##car _e91389171_))
                                              (_tl91409176_
                                               (##cdr _e91389171_)))
                                          (let ((_K9179_ _hd91399174_))
                                            (if (gx#stx-pair? _tl91409176_)
                                                (let ((_e91419181_
                                                       (gx#syntax-e
                                                        _tl91409176_)))
                                                  (let ((_hd91429184_
                                                         (##car _e91419181_))
                                                        (_tl91439186_
                                                         (##cdr _e91419181_)))
                                                    (let ((_E9189_ _hd91429184_))
                                                      (if (gx#stx-null?
                                                           _tl91439186_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test9169_)
                                   (cons (gx#core-expand-expression _K9179_)
                                         (cons (gx#core-expand-expression
                                                _E9189_)
                                               '()))))
                       (gx#stx-source _stx9128_))
                      (_E91319149_))
                  (_E91319149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91319149_)))))
                                      (_E91319149_)))))
                            (_E91319149_))))
                    (_E91319149_)))))
        (_E91309191_))))
  (define gx#core-expand-ref%
    (lambda (_stx9087_)
      (let* ((_e90889098_ _stx9087_)
             (_E90909102_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90889098_)))
             (_E90899124_
              (lambda ()
                (if (gx#stx-pair? _e90889098_)
                    (let ((_e90919106_ (gx#syntax-e _e90889098_)))
                      (let ((_hd90929109_ (##car _e90919106_))
                            (_tl90939111_ (##cdr _e90919106_)))
                        (if (gx#stx-pair? _tl90939111_)
                            (let ((_e90949114_ (gx#syntax-e _tl90939111_)))
                              (let ((_hd90959117_ (##car _e90949114_))
                                    (_tl90969119_ (##cdr _e90949114_)))
                                (let ((_id9122_ _hd90959117_))
                                  (if (gx#stx-null? _tl90969119_)
                                      (if (gx#core-runtime-ref? _id9122_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id9122_
                                                        _stx9087_)
                                                       '()))
                                           (gx#stx-source _stx9087_))
                                          (_E90909102_))
                                      (_E90909102_)))))
                            (_E90909102_))))
                    (_E90909102_)))))
        (_E90899124_))))
  (define gx#core-expand-setq%
    (lambda (_stx9033_)
      (let* ((_e90349047_ _stx9033_)
             (_E90369051_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90349047_)))
             (_E90359083_
              (lambda ()
                (if (gx#stx-pair? _e90349047_)
                    (let ((_e90379055_ (gx#syntax-e _e90349047_)))
                      (let ((_hd90389058_ (##car _e90379055_))
                            (_tl90399060_ (##cdr _e90379055_)))
                        (if (gx#stx-pair? _tl90399060_)
                            (let ((_e90409063_ (gx#syntax-e _tl90399060_)))
                              (let ((_hd90419066_ (##car _e90409063_))
                                    (_tl90429068_ (##cdr _e90409063_)))
                                (let ((_id9071_ _hd90419066_))
                                  (if (gx#stx-pair? _tl90429068_)
                                      (let ((_e90439073_
                                             (gx#syntax-e _tl90429068_)))
                                        (let ((_hd90449076_
                                               (##car _e90439073_))
                                              (_tl90459078_
                                               (##cdr _e90439073_)))
                                          (let ((_expr9081_ _hd90449076_))
                                            (if (gx#stx-null? _tl90459078_)
                                                (if (gx#core-runtime-ref?
                                                     _id9071_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id9071_
                          _stx9033_)
                         (cons (gx#core-expand-expression _expr9081_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx9033_))
                                                    (_E90369051_))
                                                (_E90369051_)))))
                                      (_E90369051_)))))
                            (_E90369051_))))
                    (_E90369051_)))))
        (_E90359083_))))
  (define gx#macro-expand-extern
    (lambda (_stx8881_)
      (letrec ((_generate8883_
                (lambda (_body8913_)
                  (let _lp8915_ ((_rest8917_ _body8913_)
                                 (_ns8918_ (gx#core-context-namespace__0))
                                 (_r8919_ '()))
                    (let* ((_e89208935_ _rest8917_)
                           (_E89338939_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e89208935_)))
                           (_E89298943_
                            (lambda ()
                              (if (gx#stx-null? _e89208935_)
                                  (if '#t (reverse _r8919_) (_E89338939_))
                                  (_E89338939_))))
                           (_E89229000_
                            (lambda ()
                              (if (gx#stx-pair? _e89208935_)
                                  (let ((_e89308947_
                                         (gx#syntax-e _e89208935_)))
                                    (let ((_hd89318950_ (##car _e89308947_))
                                          (_tl89328952_ (##cdr _e89308947_)))
                                      (let* ((_hd8955_ _hd89318950_)
                                             (_rest8957_ _tl89328952_))
                                        (if '#t
                                            (if (gx#identifier? _hd8955_)
                                                (_lp8915_
                                                 _rest8957_
                                                 _ns8918_
                                                 (cons (cons _hd8955_
                                                             (cons (if _ns8918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8955_
                                _ns8918_
                                '"#"
                                _hd8955_)
                               _hd8955_)
                           '()))
               _r8919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e89588968_ _hd8955_)
                                                       (_E89608972_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e89588968_)))
                                                       (_E89598996_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e89588968_)
                                                              (let ((_e89618976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e89588968_)))
                        (let ((_hd89628979_ (##car _e89618976_))
                              (_tl89638981_ (##cdr _e89618976_)))
                          (let ((_id8984_ _hd89628979_))
                            (if (gx#stx-pair? _tl89638981_)
                                (let ((_e89648986_ (gx#syntax-e _tl89638981_)))
                                  (let ((_hd89658989_ (##car _e89648986_))
                                        (_tl89668991_ (##cdr _e89648986_)))
                                    (let ((_eid8994_ _hd89658989_))
                                      (if (gx#stx-null? _tl89668991_)
                                          (if (if (gx#identifier? _id8984_)
                                                  (gx#identifier? _eid8994_)
                                                  '#f)
                                              (_lp8915_
                                               _rest8957_
                                               _ns8918_
                                               (cons (cons _id8984_
                                                           (cons _eid8994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8919_))
                                              (_E89608972_))
                                          (_E89608972_)))))
                                (_E89608972_)))))
                      (_E89608972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E89598996_)))
                                            (_E89298943_)))))
                                  (_E89298943_))))
                           (_E89219029_
                            (lambda ()
                              (if (gx#stx-pair? _e89208935_)
                                  (let ((_e89239004_
                                         (gx#syntax-e _e89208935_)))
                                    (let ((_hd89249007_ (##car _e89239004_))
                                          (_tl89259009_ (##cdr _e89239004_)))
                                      (if (eq? (gx#stx-e _hd89249007_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl89259009_)
                                              (let ((_e89269012_
                                                     (gx#syntax-e
                                                      _tl89259009_)))
                                                (let ((_hd89279015_
                                                       (##car _e89269012_))
                                                      (_tl89289017_
                                                       (##cdr _e89269012_)))
                                                  (let* ((_ns9020_
                                                          _hd89279015_)
                                                         (_rest9022_
                                                          _tl89289017_))
                                                    (if '#t
                                                        (let ((_ns9027_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns9020_)
                           (symbol->string (gx#stx-e _ns9020_))
                           (if (let ((_$e9024_ (gx#stx-string? _ns9020_)))
                                 (if _$e9024_
                                     _$e9024_
                                     (gx#stx-false? _ns9020_)))
                               (gx#stx-e _ns9020_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8881_
                                _ns9020_)))))
                  (_lp8915_ _rest9022_ _ns9027_ _r8919_))
                (_E89229000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E89229000_))
                                          (_E89229000_))))
                                  (_E89229000_)))))
                      (_E89219029_))))))
        (let* ((_e88848891_ _stx8881_)
               (_E88868895_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e88848891_)))
               (_E88858909_
                (lambda ()
                  (if (gx#stx-pair? _e88848891_)
                      (let ((_e88878899_ (gx#syntax-e _e88848891_)))
                        (let ((_hd88888902_ (##car _e88878899_))
                              (_tl88898904_ (##cdr _e88878899_)))
                          (let ((_body8907_ _tl88898904_))
                            (if (gx#stx-list? _body8907_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8883_ _body8907_))
                                (_E88868895_)))))
                      (_E88868895_)))))
          (_E88858909_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8827_)
      (let* ((_e88288841_ _stx8827_)
             (_E88308845_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88288841_)))
             (_E88298877_
              (lambda ()
                (if (gx#stx-pair? _e88288841_)
                    (let ((_e88318849_ (gx#syntax-e _e88288841_)))
                      (let ((_hd88328852_ (##car _e88318849_))
                            (_tl88338854_ (##cdr _e88318849_)))
                        (if (gx#stx-pair? _tl88338854_)
                            (let ((_e88348857_ (gx#syntax-e _tl88338854_)))
                              (let ((_hd88358860_ (##car _e88348857_))
                                    (_tl88368862_ (##cdr _e88348857_)))
                                (let ((_hd8865_ _hd88358860_))
                                  (if (gx#stx-pair? _tl88368862_)
                                      (let ((_e88378867_
                                             (gx#syntax-e _tl88368862_)))
                                        (let ((_hd88388870_
                                               (##car _e88378867_))
                                              (_tl88398872_
                                               (##cdr _e88378867_)))
                                          (let ((_expr8875_ _hd88388870_))
                                            (if (gx#stx-null? _tl88398872_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8865_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8865_)
                        (cons _expr8875_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88308845_))
                                                (_E88308845_)))))
                                      (_E88308845_)))))
                            (_E88308845_))))
                    (_E88308845_)))))
        (_E88298877_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8773_)
      (let* ((_e87748787_ _stx8773_)
             (_E87768791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87748787_)))
             (_E87758823_
              (lambda ()
                (if (gx#stx-pair? _e87748787_)
                    (let ((_e87778795_ (gx#syntax-e _e87748787_)))
                      (let ((_hd87788798_ (##car _e87778795_))
                            (_tl87798800_ (##cdr _e87778795_)))
                        (if (gx#stx-pair? _tl87798800_)
                            (let ((_e87808803_ (gx#syntax-e _tl87798800_)))
                              (let ((_hd87818806_ (##car _e87808803_))
                                    (_tl87828808_ (##cdr _e87808803_)))
                                (let ((_hd8811_ _hd87818806_))
                                  (if (gx#stx-pair? _tl87828808_)
                                      (let ((_e87838813_
                                             (gx#syntax-e _tl87828808_)))
                                        (let ((_hd87848816_
                                               (##car _e87838813_))
                                              (_tl87858818_
                                               (##cdr _e87838813_)))
                                          (let ((_expr8821_ _hd87848816_))
                                            (if (gx#stx-null? _tl87858818_)
                                                (if (gx#identifier? _hd8811_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8811_
                                                                (cons _expr8821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87768791_))
                                                (_E87768791_)))))
                                      (_E87768791_)))))
                            (_E87768791_))))
                    (_E87768791_)))))
        (_E87758823_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8719_)
      (let* ((_e87208733_ _stx8719_)
             (_E87228737_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87208733_)))
             (_E87218769_
              (lambda ()
                (if (gx#stx-pair? _e87208733_)
                    (let ((_e87238741_ (gx#syntax-e _e87208733_)))
                      (let ((_hd87248744_ (##car _e87238741_))
                            (_tl87258746_ (##cdr _e87238741_)))
                        (if (gx#stx-pair? _tl87258746_)
                            (let ((_e87268749_ (gx#syntax-e _tl87258746_)))
                              (let ((_hd87278752_ (##car _e87268749_))
                                    (_tl87288754_ (##cdr _e87268749_)))
                                (let ((_id8757_ _hd87278752_))
                                  (if (gx#stx-pair? _tl87288754_)
                                      (let ((_e87298759_
                                             (gx#syntax-e _tl87288754_)))
                                        (let ((_hd87308762_
                                               (##car _e87298759_))
                                              (_tl87318764_
                                               (##cdr _e87298759_)))
                                          (let ((_alias-id8767_ _hd87308762_))
                                            (if (gx#stx-null? _tl87318764_)
                                                (if (if (gx#identifier?
                                                         _id8757_)
                                                        (gx#identifier?
                                                         _alias-id8767_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8757_
                                                                (cons _alias-id8767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87228737_))
                                                (_E87228737_)))))
                                      (_E87228737_)))))
                            (_E87228737_))))
                    (_E87228737_)))))
        (_E87218769_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8676_)
      (let* ((_e86778687_ _stx8676_)
             (_E86798691_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e86778687_)))
             (_E86788715_
              (lambda ()
                (if (gx#stx-pair? _e86778687_)
                    (let ((_e86808695_ (gx#syntax-e _e86778687_)))
                      (let ((_hd86818698_ (##car _e86808695_))
                            (_tl86828700_ (##cdr _e86808695_)))
                        (if (gx#stx-pair? _tl86828700_)
                            (let ((_e86838703_ (gx#syntax-e _tl86828700_)))
                              (let ((_hd86848706_ (##car _e86838703_))
                                    (_tl86858708_ (##cdr _e86838703_)))
                                (let* ((_hd8711_ _hd86848706_)
                                       (_body8713_ _tl86858708_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8711_)
                                          (if (gx#stx-list? _body8713_)
                                              (not (gx#stx-null? _body8713_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8711_)
                                       _body8713_)
                                      (_E86798691_)))))
                            (_E86798691_))))
                    (_E86798691_)))))
        (_E86788715_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8612_)
      (letrec ((_generate8614_
                (lambda (_clause8644_)
                  (let* ((_e86458652_ _clause8644_)
                         (_E86478656_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8612_
                             _clause8644_)))
                         (_E86468672_
                          (lambda ()
                            (if (gx#stx-pair? _e86458652_)
                                (let ((_e86488660_ (gx#syntax-e _e86458652_)))
                                  (let ((_hd86498663_ (##car _e86488660_))
                                        (_tl86508665_ (##cdr _e86488660_)))
                                    (let* ((_hd8668_ _hd86498663_)
                                           (_body8670_ _tl86508665_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8668_)
                                              (if (gx#stx-list? _body8670_)
                                                  (not (gx#stx-null?
                                                        _body8670_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8668_)
                                                 _body8670_)
                                           (gx#stx-source _clause8644_))
                                          (_E86478656_)))))
                                (_E86478656_)))))
                    (_E86468672_)))))
        (let* ((_e86158622_ _stx8612_)
               (_E86178626_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86158622_)))
               (_E86168640_
                (lambda ()
                  (if (gx#stx-pair? _e86158622_)
                      (let ((_e86188630_ (gx#syntax-e _e86158622_)))
                        (let ((_hd86198633_ (##car _e86188630_))
                              (_tl86208635_ (##cdr _e86188630_)))
                          (let ((_clauses8638_ _tl86208635_))
                            (if (gx#stx-list? _clauses8638_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8614_ _clauses8638_))
                                (_E86178626_)))))
                      (_E86178626_)))))
          (_E86168640_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8513_ _form8514_)
        (letrec ((_generate8516_
                  (lambda (_bind8559_)
                    (let* ((_e85608570_ _bind8559_)
                           (_E85628574_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8513_
                               _bind8559_)))
                           (_E85618598_
                            (lambda ()
                              (if (gx#stx-pair? _e85608570_)
                                  (let ((_e85638578_
                                         (gx#syntax-e _e85608570_)))
                                    (let ((_hd85648581_ (##car _e85638578_))
                                          (_tl85658583_ (##cdr _e85638578_)))
                                      (let ((_ids8586_ _hd85648581_))
                                        (if (gx#stx-pair? _tl85658583_)
                                            (let ((_e85668588_
                                                   (gx#syntax-e _tl85658583_)))
                                              (let ((_hd85678591_
                                                     (##car _e85668588_))
                                                    (_tl85688593_
                                                     (##cdr _e85668588_)))
                                                (let ((_expr8596_
                                                       _hd85678591_))
                                                  (if (gx#stx-null?
                                                       _tl85688593_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8586_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8586_)
                        (cons _expr8596_ '()))
                  (_E85628574_))
              (_E85628574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E85628574_)))))
                                  (_E85628574_)))))
                      (_E85618598_)))))
          (let* ((_e85178527_ _stx8513_)
                 (_E85198531_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85178527_)))
                 (_E85188555_
                  (lambda ()
                    (if (gx#stx-pair? _e85178527_)
                        (let ((_e85208535_ (gx#syntax-e _e85178527_)))
                          (let ((_hd85218538_ (##car _e85208535_))
                                (_tl85228540_ (##cdr _e85208535_)))
                            (if (gx#stx-pair? _tl85228540_)
                                (let ((_e85238543_ (gx#syntax-e _tl85228540_)))
                                  (let ((_hd85248546_ (##car _e85238543_))
                                        (_tl85258548_ (##cdr _e85238543_)))
                                    (let* ((_hd8551_ _hd85248546_)
                                           (_body8553_ _tl85258548_))
                                      (if (if (gx#stx-list? _hd8551_)
                                              (if (gx#stx-list? _body8553_)
                                                  (not (gx#stx-null?
                                                        _body8553_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8514_
                                           (gx#stx-map1
                                            _generate8516_
                                            _hd8551_)
                                           _body8553_)
                                          (_E85198531_)))))
                                (_E85198531_))))
                        (_E85198531_)))))
            (_E85188555_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8605_)
          (let ((_form8607_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8605_ _form8607_))))
      (define gx#macro-expand-let-values
        (lambda _g10957_
          (let ((_g10956_ (length _g10957_)))
            (cond ((##fx= _g10956_ 1)
                   (apply gx#macro-expand-let-values__0 _g10957_))
                  ((##fx= _g10956_ 2)
                   (apply gx#macro-expand-let-values__% _g10957_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g10957_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8510_)
      (gx#macro-expand-let-values__% _stx8510_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8508_)
      (gx#macro-expand-let-values__% _stx8508_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8399_)
      (let* ((_e84008426_ _stx8399_)
             (_E84128430_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84008426_)))
             (_E84028472_
              (lambda ()
                (if (gx#stx-pair? _e84008426_)
                    (let ((_e84138434_ (gx#syntax-e _e84008426_)))
                      (let ((_hd84148437_ (##car _e84138434_))
                            (_tl84158439_ (##cdr _e84138434_)))
                        (if (gx#stx-pair? _tl84158439_)
                            (let ((_e84168442_ (gx#syntax-e _tl84158439_)))
                              (let ((_hd84178445_ (##car _e84168442_))
                                    (_tl84188447_ (##cdr _e84168442_)))
                                (let ((_test8450_ _hd84178445_))
                                  (if (gx#stx-pair? _tl84188447_)
                                      (let ((_e84198452_
                                             (gx#syntax-e _tl84188447_)))
                                        (let ((_hd84208455_
                                               (##car _e84198452_))
                                              (_tl84218457_
                                               (##cdr _e84198452_)))
                                          (let ((_K8460_ _hd84208455_))
                                            (if (gx#stx-pair? _tl84218457_)
                                                (let ((_e84228462_
                                                       (gx#syntax-e
                                                        _tl84218457_)))
                                                  (let ((_hd84238465_
                                                         (##car _e84228462_))
                                                        (_tl84248467_
                                                         (##cdr _e84228462_)))
                                                    (let ((_E8470_ _hd84238465_))
                                                      (if (gx#stx-null?
                                                           _tl84248467_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8450_
                                                               _K8460_
                                                               _E8470_)
                                                              (_E84128430_))
                                                          (_E84128430_)))))
                                                (_E84128430_)))))
                                      (_E84128430_)))))
                            (_E84128430_))))
                    (_E84128430_))))
             (_E84018504_
              (lambda ()
                (if (gx#stx-pair? _e84008426_)
                    (let ((_e84038476_ (gx#syntax-e _e84008426_)))
                      (let ((_hd84048479_ (##car _e84038476_))
                            (_tl84058481_ (##cdr _e84038476_)))
                        (if (gx#stx-pair? _tl84058481_)
                            (let ((_e84068484_ (gx#syntax-e _tl84058481_)))
                              (let ((_hd84078487_ (##car _e84068484_))
                                    (_tl84088489_ (##cdr _e84068484_)))
                                (let ((_test8492_ _hd84078487_))
                                  (if (gx#stx-pair? _tl84088489_)
                                      (let ((_e84098494_
                                             (gx#syntax-e _tl84088489_)))
                                        (let ((_hd84108497_
                                               (##car _e84098494_))
                                              (_tl84118499_
                                               (##cdr _e84098494_)))
                                          (let ((_K8502_ _hd84108497_))
                                            (if (gx#stx-null? _tl84118499_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8492_
                                                     _K8502_
                                                     '#!void)
                                                    (_E84028472_))
                                                (_E84028472_)))))
                                      (_E84028472_)))))
                            (_E84028472_))))
                    (_E84028472_)))))
        (_E84018504_))))
  (define gx#free-identifier=?
    (lambda (_xid8387_ _yid8388_)
      (let ((_xe8390_ (gx#resolve-identifier__0 _xid8387_))
            (_ye8391_ (gx#resolve-identifier__0 _yid8388_)))
        (if (if _xe8390_ _ye8391_ '#f)
            (let ((_$e8393_ (eq? _xe8390_ _ye8391_)))
              (if _$e8393_
                  _$e8393_
                  (if (##structure-instance-of? _xe8390_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8391_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8390_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8391_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8396_ _xe8390_)) (if _$e8396_ _$e8396_ _ye8391_))
                '#f
                (gx#stx-eq? _xid8387_ _yid8388_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8371_ _yid8372_)
      (letrec ((_context8374_
                (lambda (_e8385_)
                  (if (##structure-direct-instance-of?
                       _e8385_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8385_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8375_
                (lambda (_e8383_)
                  (if (symbol? _e8383_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8383_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8383_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8383_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8376_
                (lambda (_e8381_)
                  (if (symbol? _e8381_)
                      _e8381_
                      (gx#syntax-local-unwrap _e8381_)))))
        (let ((_x8378_ (_unwrap8376_ _xid8371_))
              (_y8379_ (_unwrap8376_ _yid8372_)))
          (if (gx#stx-eq? _x8378_ _y8379_)
              (if (eq? (_context8374_ _x8378_) (_context8374_ _y8379_))
                  (equal? (_marks8375_ _x8378_) (_marks8375_ _y8379_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8369_)
      (if (gx#identifier? _stx8369_) (gx#core-identifier=? _stx8369_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8367_)
      (if (gx#identifier? _stx8367_)
          (gx#core-identifier=? _stx8367_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8365_)
      (if (gx#identifier? _x8365_)
          (if (not (gx#underscore? _x8365_)) _x8365_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8311_ _where8312_)
        (let _lp8314_ ((_rest8316_ (gx#syntax->list _stx8311_)))
          (let* ((_rest83178325_ _rest8316_)
                 (_E83208329_
                  (lambda () (error '"No clause matching" _rest83178325_)))
                 (_else83198333_ (lambda () '#t))
                 (_K83218343_
                  (lambda (_rest8336_ _hd8337_)
                    (if (not (gx#identifier? _hd8337_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8312_
                         _hd8337_)
                        (if (find (lambda (_g83388340_)
                                    (gx#bound-identifier=?
                                     _g83388340_
                                     _hd8337_))
                                  _rest8336_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8312_
                             _hd8337_)
                            (_lp8314_ _rest8336_))))))
            (if (##pair? _rest83178325_)
                (let ((_hd83228346_ (##car _rest83178325_))
                      (_tl83238348_ (##cdr _rest83178325_)))
                  (let* ((_hd8351_ _hd83228346_) (_rest8353_ _tl83238348_))
                    (_K83218343_ _rest8353_ _hd8351_)))
                (_else83198333_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8358_)
          (let ((_where8360_ _stx8358_))
            (gx#check-duplicate-identifiers__% _stx8358_ _where8360_))))
      (define gx#check-duplicate-identifiers
        (lambda _g10959_
          (let ((_g10958_ (length _g10959_)))
            (cond ((##fx= _g10958_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g10959_))
                  ((##fx= _g10958_ 2)
                   (apply gx#check-duplicate-identifiers__% _g10959_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g10959_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8303_)
      (gx#stx-andmap
       (lambda (_x8305_)
         (let ((_$e8307_ (gx#identifier? _x8305_)))
           (if _$e8307_ _$e8307_ (gx#stx-false? _x8305_))))
       _stx8303_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8267_ _rebind?8268_ _phi8269_ _ctx8270_)
        (gx#stx-for-each1
         (lambda (_id8272_)
           (if (gx#identifier? _id8272_)
               (gx#core-bind-runtime!__%
                _id8272_
                _rebind?8268_
                _phi8269_
                _ctx8270_)
               '#!void))
         _stx8267_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8277_)
          (let* ((_rebind?8279_ '#f)
                 (_phi8281_ (gx#current-expander-phi))
                 (_ctx8283_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8277_
             _rebind?8279_
             _phi8281_
             _ctx8283_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8285_ _rebind?8286_)
          (let* ((_phi8288_ (gx#current-expander-phi))
                 (_ctx8290_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8285_
             _rebind?8286_
             _phi8288_
             _ctx8290_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8292_ _rebind?8293_ _phi8294_)
          (let ((_ctx8296_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8292_
             _rebind?8293_
             _phi8294_
             _ctx8296_))))
      (define gx#core-bind-values!
        (lambda _g10961_
          (let ((_g10960_ (length _g10961_)))
            (cond ((##fx= _g10960_ 1) (apply gx#core-bind-values!__0 _g10961_))
                  ((##fx= _g10960_ 2) (apply gx#core-bind-values!__1 _g10961_))
                  ((##fx= _g10960_ 3) (apply gx#core-bind-values!__2 _g10961_))
                  ((##fx= _g10960_ 4) (apply gx#core-bind-values!__% _g10961_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g10961_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8262_)
      (gx#stx-map1
       (lambda (_x8264_)
         (if (gx#identifier? _x8264_) (gx#core-quote-syntax__0 _x8264_) '#f))
       _stx8262_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8255_)
      (if (gx#identifier? _stx8255_)
          (let* ((_bind8257_ (gx#resolve-identifier__0 _stx8255_))
                 (_$e8259_ (not _bind8257_)))
            (if _$e8259_
                _$e8259_
                (##structure-instance-of? _bind8257_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8247_ _form8248_)
      (let ((_bind8250_ (gx#resolve-identifier__0 _id8247_)))
        (if (##structure-instance-of? _bind8250_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8247_)
            (if (not _bind8250_)
                (if (let ((_$e8252_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e8252_
                          _$e8252_
                          (gx#core-extern-symbol? (gx#stx-e _id8247_))))
                    (gx#core-quote-syntax__0 _id8247_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8248_
                     _id8247_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8248_
                 _id8247_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id8206_ _rebind?8207_ _phi8208_ _ctx8209_)
        (let* ((_key8211_ (gx#core-identifier-key _id8206_))
               (_eid8213_
                (gx#make-binding-id__% _key8211_ '#f _phi8208_ _ctx8209_))
               (_bind8215_
                (if (##structure-instance-of? _ctx8209_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8213_
                     _key8211_
                     _phi8208_
                     _ctx8209_)
                    (if (##structure-instance-of? _ctx8209_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8213_
                         _key8211_
                         _phi8208_)
                        (if (##structure-instance-of?
                             _ctx8209_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid8213_
                             _key8211_
                             _phi8208_)
                            (##structure
                             gx#runtime-binding::t
                             _eid8213_
                             _key8211_
                             _phi8208_))))))
          (gx#bind-identifier!__%
           _id8206_
           _bind8215_
           _rebind?8207_
           _phi8208_
           _ctx8209_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id8221_)
          (let* ((_rebind?8223_ '#f)
                 (_phi8225_ (gx#current-expander-phi))
                 (_ctx8227_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8221_
             _rebind?8223_
             _phi8225_
             _ctx8227_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id8229_ _rebind?8230_)
          (let* ((_phi8232_ (gx#current-expander-phi))
                 (_ctx8234_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8229_
             _rebind?8230_
             _phi8232_
             _ctx8234_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8236_ _rebind?8237_ _phi8238_)
          (let ((_ctx8240_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8236_
             _rebind?8237_
             _phi8238_
             _ctx8240_))))
      (define gx#core-bind-runtime!
        (lambda _g10963_
          (let ((_g10962_ (length _g10963_)))
            (cond ((##fx= _g10962_ 1)
                   (apply gx#core-bind-runtime!__0 _g10963_))
                  ((##fx= _g10962_ 2)
                   (apply gx#core-bind-runtime!__1 _g10963_))
                  ((##fx= _g10962_ 3)
                   (apply gx#core-bind-runtime!__2 _g10963_))
                  ((##fx= _g10962_ 4)
                   (apply gx#core-bind-runtime!__% _g10963_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g10963_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id8161_ _eid8162_ _rebind?8163_ _phi8164_ _ctx8165_)
        (let* ((_key8167_ (gx#core-identifier-key _id8161_))
               (_bind8169_
                (if (##structure-instance-of? _ctx8165_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8162_
                     _key8167_
                     _phi8164_
                     _ctx8165_)
                    (if (##structure-instance-of? _ctx8165_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8162_
                         _key8167_
                         _phi8164_)
                        (##structure
                         gx#runtime-binding::t
                         _eid8162_
                         _key8167_
                         _phi8164_)))))
          (gx#bind-identifier!__%
           _id8161_
           _bind8169_
           _rebind?8163_
           _phi8164_
           _ctx8165_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id8175_ _eid8176_)
          (let* ((_rebind?8178_ '#f)
                 (_phi8180_ (gx#current-expander-phi))
                 (_ctx8182_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8175_
             _eid8176_
             _rebind?8178_
             _phi8180_
             _ctx8182_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id8184_ _eid8185_ _rebind?8186_)
          (let* ((_phi8188_ (gx#current-expander-phi))
                 (_ctx8190_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8184_
             _eid8185_
             _rebind?8186_
             _phi8188_
             _ctx8190_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id8192_ _eid8193_ _rebind?8194_ _phi8195_)
          (let ((_ctx8197_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8192_
             _eid8193_
             _rebind?8194_
             _phi8195_
             _ctx8197_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g10965_
          (let ((_g10964_ (length _g10965_)))
            (cond ((##fx= _g10964_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g10965_))
                  ((##fx= _g10964_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g10965_))
                  ((##fx= _g10964_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g10965_))
                  ((##fx= _g10964_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g10965_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g10965_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id8121_ _eid8122_ _rebind?8123_ _phi8124_ _ctx8125_)
        (gx#bind-identifier!__%
         _id8121_
         (##structure
          gx#extern-binding::t
          _eid8122_
          (gx#core-identifier-key _id8121_)
          _phi8124_)
         _rebind?8123_
         _phi8124_
         _ctx8125_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id8130_ _eid8131_)
          (let* ((_rebind?8133_ '#f)
                 (_phi8135_ (gx#current-expander-phi))
                 (_ctx8137_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8130_
             _eid8131_
             _rebind?8133_
             _phi8135_
             _ctx8137_))))
      (define gx#core-bind-extern!__1
        (lambda (_id8139_ _eid8140_ _rebind?8141_)
          (let* ((_phi8143_ (gx#current-expander-phi))
                 (_ctx8145_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8139_
             _eid8140_
             _rebind?8141_
             _phi8143_
             _ctx8145_))))
      (define gx#core-bind-extern!__2
        (lambda (_id8147_ _eid8148_ _rebind?8149_ _phi8150_)
          (let ((_ctx8152_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8147_
             _eid8148_
             _rebind?8149_
             _phi8150_
             _ctx8152_))))
      (define gx#core-bind-extern!
        (lambda _g10967_
          (let ((_g10966_ (length _g10967_)))
            (cond ((##fx= _g10966_ 2) (apply gx#core-bind-extern!__0 _g10967_))
                  ((##fx= _g10966_ 3) (apply gx#core-bind-extern!__1 _g10967_))
                  ((##fx= _g10966_ 4) (apply gx#core-bind-extern!__2 _g10967_))
                  ((##fx= _g10966_ 5) (apply gx#core-bind-extern!__% _g10967_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g10967_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id8075_ _e8076_ _rebind?8077_ _phi8078_ _ctx8079_)
        (gx#bind-identifier!__%
         _id8075_
         (let ((_key8084_ (gx#core-identifier-key _id8075_))
               (_e8085_ (if (let ((_$e8081_
                                   (##structure-instance-of?
                                    _e8076_
                                    'gx#expander::t)))
                              (if _$e8081_
                                  _$e8081_
                                  (##structure-instance-of?
                                   _e8076_
                                   'gx#expander-context::t)))
                            _e8076_
                            (##structure
                             gx#user-expander::t
                             _e8076_
                             _ctx8079_
                             _phi8078_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key8084_ '#t _phi8078_ _ctx8079_)
            _key8084_
            _phi8078_
            _e8085_))
         _rebind?8077_
         _phi8078_
         _ctx8079_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id8090_ _e8091_)
          (let* ((_rebind?8093_ '#f)
                 (_phi8095_ (gx#current-expander-phi))
                 (_ctx8097_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8090_
             _e8091_
             _rebind?8093_
             _phi8095_
             _ctx8097_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id8099_ _e8100_ _rebind?8101_)
          (let* ((_phi8103_ (gx#current-expander-phi))
                 (_ctx8105_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8099_
             _e8100_
             _rebind?8101_
             _phi8103_
             _ctx8105_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id8107_ _e8108_ _rebind?8109_ _phi8110_)
          (let ((_ctx8112_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8107_
             _e8108_
             _rebind?8109_
             _phi8110_
             _ctx8112_))))
      (define gx#core-bind-syntax!
        (lambda _g10969_
          (let ((_g10968_ (length _g10969_)))
            (cond ((##fx= _g10968_ 2) (apply gx#core-bind-syntax!__0 _g10969_))
                  ((##fx= _g10968_ 3) (apply gx#core-bind-syntax!__1 _g10969_))
                  ((##fx= _g10968_ 4) (apply gx#core-bind-syntax!__2 _g10969_))
                  ((##fx= _g10968_ 5) (apply gx#core-bind-syntax!__% _g10969_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g10969_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id8058_ _e8059_ _rebind?8060_)
        (gx#core-bind-syntax!__%
         _id8058_
         _e8059_
         _rebind?8060_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id8065_ _e8066_)
          (let ((_rebind?8068_ '#f))
            (gx#core-bind-root-syntax!__% _id8065_ _e8066_ _rebind?8068_))))
      (define gx#core-bind-root-syntax!
        (lambda _g10971_
          (let ((_g10970_ (length _g10971_)))
            (cond ((##fx= _g10970_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g10971_))
                  ((##fx= _g10970_ 3)
                   (apply gx#core-bind-root-syntax!__% _g10971_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g10971_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id8016_ _alias-id8017_ _rebind?8018_ _phi8019_ _ctx8020_)
        (gx#bind-identifier!__%
         _id8016_
         (let ((_key8022_ (gx#core-identifier-key _id8016_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key8022_ '#t _phi8019_ _ctx8020_)
            _key8022_
            _phi8019_
            _alias-id8017_))
         _rebind?8018_
         _phi8019_
         _ctx8020_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id8027_ _alias-id8028_)
          (let* ((_rebind?8030_ '#f)
                 (_phi8032_ (gx#current-expander-phi))
                 (_ctx8034_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8027_
             _alias-id8028_
             _rebind?8030_
             _phi8032_
             _ctx8034_))))
      (define gx#core-bind-alias!__1
        (lambda (_id8036_ _alias-id8037_ _rebind?8038_)
          (let* ((_phi8040_ (gx#current-expander-phi))
                 (_ctx8042_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8036_
             _alias-id8037_
             _rebind?8038_
             _phi8040_
             _ctx8042_))))
      (define gx#core-bind-alias!__2
        (lambda (_id8044_ _alias-id8045_ _rebind?8046_ _phi8047_)
          (let ((_ctx8049_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8044_
             _alias-id8045_
             _rebind?8046_
             _phi8047_
             _ctx8049_))))
      (define gx#core-bind-alias!
        (lambda _g10973_
          (let ((_g10972_ (length _g10973_)))
            (cond ((##fx= _g10972_ 2) (apply gx#core-bind-alias!__0 _g10973_))
                  ((##fx= _g10972_ 3) (apply gx#core-bind-alias!__1 _g10973_))
                  ((##fx= _g10972_ 4) (apply gx#core-bind-alias!__2 _g10973_))
                  ((##fx= _g10972_ 5) (apply gx#core-bind-alias!__% _g10973_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g10973_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key7973_ _syntax?7974_ _phi7975_ _ctx7976_)
        (if (uninterned-symbol? _key7973_)
            (gensym 'L)
            (if (pair? _key7973_)
                (gensym (car _key7973_))
                (if (##structure-instance-of? _ctx7976_ 'gx#top-context::t)
                    (let ((_ns7978_ (gx#core-context-namespace__% _ctx7976_)))
                      (if (if (fxzero? _phi7975_) (not _syntax?7974_) '#f)
                          (if _ns7978_
                              (make-symbol _ns7978_ '"#" _key7973_)
                              _key7973_)
                          (if _syntax?7974_
                              (make-symbol
                               (let ((_$e7980_ _ns7978_))
                                 (if _$e7980_ _$e7980_ '""))
                               '"[:"
                               (number->string _phi7975_)
                               '":]#"
                               _key7973_)
                              (make-symbol
                               (let ((_$e7983_ _ns7978_))
                                 (if _$e7983_ _$e7983_ '""))
                               '"["
                               (number->string _phi7975_)
                               '"]#"
                               _key7973_))))
                    (gensym _key7973_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key7989_)
          (let* ((_syntax?7991_ '#f)
                 (_phi7993_ (gx#current-expander-phi))
                 (_ctx7995_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key7989_
             _syntax?7991_
             _phi7993_
             _ctx7995_))))
      (define gx#make-binding-id__1
        (lambda (_key7997_ _syntax?7998_)
          (let* ((_phi8000_ (gx#current-expander-phi))
                 (_ctx8002_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key7997_
             _syntax?7998_
             _phi8000_
             _ctx8002_))))
      (define gx#make-binding-id__2
        (lambda (_key8004_ _syntax?8005_ _phi8006_)
          (let ((_ctx8008_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8004_
             _syntax?8005_
             _phi8006_
             _ctx8008_))))
      (define gx#make-binding-id
        (lambda _g10975_
          (let ((_g10974_ (length _g10975_)))
            (cond ((##fx= _g10974_ 1) (apply gx#make-binding-id__0 _g10975_))
                  ((##fx= _g10974_ 2) (apply gx#make-binding-id__1 _g10975_))
                  ((##fx= _g10974_ 3) (apply gx#make-binding-id__2 _g10975_))
                  ((##fx= _g10974_ 4) (apply gx#make-binding-id__% _g10975_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g10975_)))))))))
