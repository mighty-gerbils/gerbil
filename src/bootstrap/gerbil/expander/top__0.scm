(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx8910_)
      (let ((_expand-special8912_
             (lambda (_hd8914_ _K8915_ _rest8916_ _r8917_)
               (_K8915_ _rest8916_
                        (cons (gx#core-expand-top _hd8914_) _r8917_)))))
        (gx#core-expand-block__0 _stx8910_ _expand-special8912_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8663_)
      (let ((_expand-special8665_
             (lambda (_hd8785_ _K8786_ _rest8787_ _r8788_)
               (let ((_K8792_ (lambda (_e8790_)
                                (_K8786_ _rest8787_ (cons _e8790_ _r8788_)))))
                 (let ((_e87938822_ _hd8785_))
                   (let ((_E88178826_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87938822_))))
                     (let ((_E88138838_
                            (lambda ()
                              (if (gx#stx-pair? _e87938822_)
                                  (let ((_e88188830_
                                         (gx#syntax-e _e87938822_)))
                                    (let ((_hd88198833_ (##car _e88188830_))
                                          (_tl88208835_ (##cdr _e88188830_)))
                                      (if (if (gx#identifier? _hd88198833_)
                                              (gx#core-identifier=?
                                               _hd88198833_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8792_ (gx#core-expand-define-runtime%
                                                        _hd8785_))
                                              (_E88178826_))
                                          (_E88178826_))))
                                  (_E88178826_)))))
                       (let ((_E88098850_
                              (lambda ()
                                (if (gx#stx-pair? _e87938822_)
                                    (let ((_e88148842_
                                           (gx#syntax-e _e87938822_)))
                                      (let ((_hd88158845_ (##car _e88148842_))
                                            (_tl88168847_ (##cdr _e88148842_)))
                                        (if (if (gx#identifier? _hd88158845_)
                                                (gx#core-identifier=?
                                                 _hd88158845_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8792_ (gx#core-expand-define-alias%
                                                          _hd8785_))
                                                (_E88138838_))
                                            (_E88138838_))))
                                    (_E88138838_)))))
                         (let ((_E87998862_
                                (lambda ()
                                  (if (gx#stx-pair? _e87938822_)
                                      (let ((_e88108854_
                                             (gx#syntax-e _e87938822_)))
                                        (let ((_hd88118857_
                                               (##car _e88108854_))
                                              (_tl88128859_
                                               (##cdr _e88108854_)))
                                          (if (if (gx#identifier? _hd88118857_)
                                                  (gx#core-identifier=?
                                                   _hd88118857_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8792_ (gx#core-expand-define-syntax%
                                                            _hd8785_))
                                                  (_E88098850_))
                                              (_E88098850_))))
                                      (_E88098850_)))))
                           (let ((_E87958894_
                                  (lambda ()
                                    (if (gx#stx-pair? _e87938822_)
                                        (let ((_e88008866_
                                               (gx#syntax-e _e87938822_)))
                                          (let ((_hd88018869_
                                                 (##car _e88008866_))
                                                (_tl88028871_
                                                 (##cdr _e88008866_)))
                                            (if (if (gx#identifier?
                                                     _hd88018869_)
                                                    (gx#core-identifier=?
                                                     _hd88018869_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl88028871_)
                                                    (let ((_e88038874_
                                                           (gx#syntax-e
                                                            _tl88028871_)))
                                                      (let ((_hd88048877_
                                                             (##car _e88038874_))
                                                            (_tl88058879_
                                                             (##cdr _e88038874_)))
                                                        (let ((_hd-bind8882_
                                                               _hd88048877_))
                                                          (if (gx#stx-pair?
                                                               _tl88058879_)
                                                              (let ((_e88068884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl88058879_)))
                        (let ((_hd88078887_ (##car _e88068884_))
                              (_tl88088889_ (##cdr _e88068884_)))
                          (let ((_expr8892_ _hd88078887_))
                            (if (gx#stx-null? _tl88088889_)
                                (if (gx#core-bind-values? _hd-bind8882_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind8882_)
                                      (_K8792_ _hd8785_))
                                    (_E87998862_))
                                (_E87998862_)))))
                      (_E87998862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87998862_))
                                                (_E87998862_))))
                                        (_E87998862_)))))
                             (let ((_E87948906_
                                    (lambda ()
                                      (if (gx#stx-pair? _e87938822_)
                                          (let ((_e87968898_
                                                 (gx#syntax-e _e87938822_)))
                                            (let ((_hd87978901_
                                                   (##car _e87968898_))
                                                  (_tl87988903_
                                                   (##cdr _e87968898_)))
                                              (if (if (gx#identifier?
                                                       _hd87978901_)
                                                      (gx#core-identifier=?
                                                       _hd87978901_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8792_ (gx#core-expand-begin-syntax%
                                                                _hd8785_))
                                                      (_E87958894_))
                                                  (_E87958894_))))
                                          (_E87958894_)))))
                               (let () (_E87948906_)))))))))))))
        (let ((_eval-body8666_
               (lambda (_rbody8674_)
                 ((letrec ((_lp8676_
                            (lambda (_rest8678_ _body8679_ _ebody8680_)
                              (let ((_rest86818689_ _rest8678_))
                                (let ((_E86848693_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest86818689_))))
                                  (let ((_else86838697_
                                         (lambda ()
                                           (values _body8679_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8680_)
                                                     (gx#stx-source
                                                      _stx8663_)))))))
                                    (let ((_K86858773_
                                           (lambda (_rest8700_ _hd8701_)
                                             (let ((_e87028719_ _hd8701_))
                                               (let ((_E87148723_
                                                      (lambda ()
                                                        (_lp8676_
                                                         _rest8700_
                                                         (cons _hd8701_
                                                               _body8679_)
                                                         (cons _hd8701_
                                                               _ebody8680_)))))
                                                 (let ((_E87048735_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e87028719_)
                                                              (let ((_e87158727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e87028719_)))
                        (let ((_hd87168730_ (##car _e87158727_))
                              (_tl87178732_ (##cdr _e87158727_)))
                          (if (if (gx#identifier? _hd87168730_)
                                  (gx#core-identifier=?
                                   _hd87168730_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8676_
                                   _rest8700_
                                   (cons _hd8701_ _body8679_)
                                   _ebody8680_)
                                  (_E87148723_))
                              (_E87148723_))))
                      (_E87148723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E87038769_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e87028719_)
                        (let ((_e87058739_ (gx#syntax-e _e87028719_)))
                          (let ((_hd87068742_ (##car _e87058739_))
                                (_tl87078744_ (##cdr _e87058739_)))
                            (if (if (gx#identifier? _hd87068742_)
                                    (gx#core-identifier=?
                                     _hd87068742_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl87078744_)
                                    (let ((_e87088747_
                                           (gx#syntax-e _tl87078744_)))
                                      (let ((_hd87098750_ (##car _e87088747_))
                                            (_tl87108752_ (##cdr _e87088747_)))
                                        (let ((_hd-bind8755_ _hd87098750_))
                                          (if (gx#stx-pair? _tl87108752_)
                                              (let ((_e87118757_
                                                     (gx#syntax-e
                                                      _tl87108752_)))
                                                (let ((_hd87128760_
                                                       (##car _e87118757_))
                                                      (_tl87138762_
                                                       (##cdr _e87118757_)))
                                                  (let ((_expr8765_
                                                         _hd87128760_))
                                                    (if (gx#stx-null?
                                                         _tl87138762_)
                                                        (if '#t
                                                            (let ((_ehd8767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8755_)
                                        (cons (gx#core-expand-expression
                                               _expr8765_)
                                              '())))
                            (gx#stx-source _hd8701_))))
                      (_lp8676_
                       _rest8700_
                       (cons _ehd8767_ _body8679_)
                       (cons _ehd8767_ _ebody8680_)))
                    (_E87048735_))
                (_E87048735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E87048735_)))))
                                    (_E87048735_))
                                (_E87048735_))))
                        (_E87048735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E87038769_)))))))))
                                      (if (##pair? _rest86818689_)
                                          (let ((_hd86868776_
                                                 (##car _rest86818689_))
                                                (_tl86878778_
                                                 (##cdr _rest86818689_)))
                                            (let ((_hd8781_ _hd86868776_))
                                              (let ((_rest8783_ _tl86878778_))
                                                (_K86858773_
                                                 _rest8783_
                                                 _hd8781_))))
                                          (_else86838697_)))))))))
                    _lp8676_)
                  _rbody8674_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8669_
                    (gx#core-expand-block__1
                     _stx8663_
                     _expand-special8665_
                     '#f)))
               (let ((_g8924_ (_eval-body8666_ _rbody8669_)))
                 (begin
                   (let ((_g8925_ (values-count _g8924_)))
                     (if (not (fx= _g8925_ 2))
                         (error "Context expects 2 values" _g8925_)))
                   (let ((_expanded-body8671_ (values-ref _g8924_ 0))
                         (_value8672_ (values-ref _g8924_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8671_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8672_ '())))
                      (gx#stx-source _stx8663_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8633_)
      (let ((_e86348641_ _stx8633_))
        (let ((_E86368645_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e86348641_))))
          (let ((_E86358659_
                 (lambda ()
                   (if (gx#stx-pair? _e86348641_)
                       (let ((_e86378649_ (gx#syntax-e _e86348641_)))
                         (let ((_hd86388652_ (##car _e86378649_))
                               (_tl86398654_ (##cdr _e86378649_)))
                           (let ((_body8657_ _tl86398654_))
                             (if (gx#stx-list? _body8657_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8657_)
                                  (gx#stx-source _stx8633_))
                                 (_E86368645_)))))
                       (_E86368645_)))))
            (let () (_E86358659_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8631_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8631_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8619_)
      (let ((_e86208623_ _stx8619_))
        (let ((_E86218627_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e86208623_))))
          (let () (_E86218627_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8343_ _body8344_)
      (let ((_expand-internal-special8348_
             (lambda (_hd8505_ _K8506_ _rest8507_ _r8508_)
               (let ((_e85098534_ _hd8505_))
                 (let ((_E85298538_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e85098534_))))
                   (let ((_E85258550_
                          (lambda ()
                            (if (gx#stx-pair? _e85098534_)
                                (let ((_e85308542_ (gx#syntax-e _e85098534_)))
                                  (let ((_hd85318545_ (##car _e85308542_))
                                        (_tl85328547_ (##cdr _e85308542_)))
                                    (if (if (gx#identifier? _hd85318545_)
                                            (gx#core-identifier=?
                                             _hd85318545_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8506_ _rest8507_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8505_)
                                                           _r8508_))
                                            (_E85298538_))
                                        (_E85298538_))))
                                (_E85298538_)))))
                     (let ((_E85218562_
                            (lambda ()
                              (if (gx#stx-pair? _e85098534_)
                                  (let ((_e85268554_
                                         (gx#syntax-e _e85098534_)))
                                    (let ((_hd85278557_ (##car _e85268554_))
                                          (_tl85288559_ (##cdr _e85268554_)))
                                      (if (if (gx#identifier? _hd85278557_)
                                              (gx#core-identifier=?
                                               _hd85278557_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8505_)
                                                (_K8506_ _rest8507_ _r8508_))
                                              (_E85258550_))
                                          (_E85258550_))))
                                  (_E85258550_)))))
                       (let ((_E85118574_
                              (lambda ()
                                (if (gx#stx-pair? _e85098534_)
                                    (let ((_e85228566_
                                           (gx#syntax-e _e85098534_)))
                                      (let ((_hd85238569_ (##car _e85228566_))
                                            (_tl85248571_ (##cdr _e85228566_)))
                                        (if (if (gx#identifier? _hd85238569_)
                                                (gx#core-identifier=?
                                                 _hd85238569_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8505_)
                                                  (_K8506_ _rest8507_ _r8508_))
                                                (_E85218562_))
                                            (_E85218562_))))
                                    (_E85218562_)))))
                         (let ((_E85108606_
                                (lambda ()
                                  (if (gx#stx-pair? _e85098534_)
                                      (let ((_e85128578_
                                             (gx#syntax-e _e85098534_)))
                                        (let ((_hd85138581_
                                               (##car _e85128578_))
                                              (_tl85148583_
                                               (##cdr _e85128578_)))
                                          (if (if (gx#identifier? _hd85138581_)
                                                  (gx#core-identifier=?
                                                   _hd85138581_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85148583_)
                                                  (let ((_e85158586_
                                                         (gx#syntax-e
                                                          _tl85148583_)))
                                                    (let ((_hd85168589_
                                                           (##car _e85158586_))
                                                          (_tl85178591_
                                                           (##cdr _e85158586_)))
                                                      (let ((_hd-bind8594_
                                                             _hd85168589_))
                                                        (if (gx#stx-pair?
                                                             _tl85178591_)
                                                            (let ((_e85188596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl85178591_)))
                      (let ((_hd85198599_ (##car _e85188596_))
                            (_tl85208601_ (##cdr _e85188596_)))
                        (let ((_expr8604_ _hd85198599_))
                          (if (gx#stx-null? _tl85208601_)
                              (if (gx#core-bind-values? _hd-bind8594_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8594_)
                                    (_K8506_ _rest8507_
                                             (cons _hd8505_ _r8508_)))
                                  (_E85118574_))
                              (_E85118574_)))))
                    (_E85118574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85118574_))
                                              (_E85118574_))))
                                      (_E85118574_)))))
                           (let () (_E85108606_)))))))))))
        (let ((_wrap-internal8349_
               (lambda (_rbody8351_)
                 ((letrec ((_lp8353_
                            (lambda (_rest8355_
                                     _decls8356_
                                     _bind8357_
                                     _body8358_)
                              (let ((_e83598366_ _rest8355_))
                                (let ((_E83618415_
                                       (lambda ()
                                         (let ((_body8410_
                                                (let ((_body83698379_
                                                       _body8358_))
                                                  (let ((_E83738383_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body83698379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else83728387_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8358_)
                                                              (gx#stx-source
                                                               _stx8343_)))))
                                                      (let ((_try-match83718403_
                                                             (lambda ()
                                                               (let ((_K83748393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8391_) _expr8391_)))
                         (if (##pair? _body83698379_)
                             (let ((_hd83758396_ (##car _body83698379_))
                                   (_tl83768398_ (##cdr _body83698379_)))
                               (let ((_expr8401_ _hd83758396_))
                                 (if (##null? _tl83768398_)
                                     (_K83748393_ _expr8401_)
                                     (_else83728387_))))
                             (_else83728387_))))))
                (let ((_K83778407_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8343_))))
                  (if (##null? _body83698379_)
                      (_K83778407_)
                      (_try-match83718403_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8412_
                                                  (if (null? _bind8357_)
                                                      _body8410_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8410_ '())))
               (gx#stx-source _stx8343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8356_)
                                                   _body8412_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8356_
                                                                (cons _body8412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8343_)))))))))
                                  (let ((_E83608501_
                                         (lambda ()
                                           (if (gx#stx-pair? _e83598366_)
                                               (let ((_e83628419_
                                                      (gx#syntax-e
                                                       _e83598366_)))
                                                 (let ((_hd83638422_
                                                        (##car _e83628419_))
                                                       (_tl83648424_
                                                        (##cdr _e83628419_)))
                                                   (let ((_hd8427_
                                                          _hd83638422_))
                                                     (let ((_rest8429_
                                                            _tl83648424_))
                                                       (if '#t
                                                           (let ((_e84308447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8427_))
                     (let ((_E84428451_
                            (lambda ()
                              (if (null? _bind8357_)
                                  (_lp8353_
                                   _rest8429_
                                   _decls8356_
                                   _bind8357_
                                   (cons _hd8427_ _body8358_))
                                  (_lp8353_
                                   _rest8429_
                                   _decls8356_
                                   (cons (cons '#f (cons _hd8427_ '()))
                                         _bind8357_)
                                   _body8358_)))))
                       (let ((_E84328465_
                              (lambda ()
                                (if (gx#stx-pair? _e84308447_)
                                    (let ((_e84438455_
                                           (gx#syntax-e _e84308447_)))
                                      (let ((_hd84448458_ (##car _e84438455_))
                                            (_tl84458460_ (##cdr _e84438455_)))
                                        (if (if (gx#identifier? _hd84448458_)
                                                (gx#core-identifier=?
                                                 _hd84448458_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8463_ _tl84458460_))
                                              (if '#t
                                                  (_lp8353_
                                                   _rest8429_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8356_
                                                    _xdecls8463_)
                                                   _bind8357_
                                                   _body8358_)
                                                  (_E84428451_)))
                                            (_E84428451_))))
                                    (_E84428451_)))))
                         (let ((_E84318497_
                                (lambda ()
                                  (if (gx#stx-pair? _e84308447_)
                                      (let ((_e84338469_
                                             (gx#syntax-e _e84308447_)))
                                        (let ((_hd84348472_
                                               (##car _e84338469_))
                                              (_tl84358474_
                                               (##cdr _e84338469_)))
                                          (if (if (gx#identifier? _hd84348472_)
                                                  (gx#core-identifier=?
                                                   _hd84348472_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl84358474_)
                                                  (let ((_e84368477_
                                                         (gx#syntax-e
                                                          _tl84358474_)))
                                                    (let ((_hd84378480_
                                                           (##car _e84368477_))
                                                          (_tl84388482_
                                                           (##cdr _e84368477_)))
                                                      (let ((_hd-bind8485_
                                                             _hd84378480_))
                                                        (if (gx#stx-pair?
                                                             _tl84388482_)
                                                            (let ((_e84398487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl84388482_)))
                      (let ((_hd84408490_ (##car _e84398487_))
                            (_tl84418492_ (##cdr _e84398487_)))
                        (let ((_expr8495_ _hd84408490_))
                          (if (gx#stx-null? _tl84418492_)
                              (if '#t
                                  (_lp8353_
                                   _rest8429_
                                   _decls8356_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8485_)
                                               (cons (gx#core-expand-expression
                                                      _expr8495_)
                                                     '()))
                                         _bind8357_)
                                   _body8358_)
                                  (_E84328465_))
                              (_E84328465_)))))
                    (_E84328465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E84328465_))
                                              (_E84328465_))))
                                      (_E84328465_)))))
                           (let () (_E84318497_))))))
                   (_E83618415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E83618415_)))))
                                    (let () (_E83608501_))))))))
                    _lp8353_)
                  _rbody8351_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8347_
                 (lambda (_hd8610_ _rest8611_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8349_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8610_ _rest8611_)
                         (gx#stx-source _stx8343_))
                        _expand-internal-special8348_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj8918 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj8918)
                        __obj8918))))))
            (let ((_expand-special8346_
                   (lambda (_hd8614_ _K8615_ _rest8616_ _r8617_)
                     (_K8615_ '()
                              (cons (_expand-internal8347_ _hd8614_ _rest8616_)
                                    _r8617_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8344_)
                (gx#stx-source _stx8343_))
               _expand-special8346_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8281_)
      (let ((_e82828289_ _stx8281_))
        (let ((_E82848293_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82828289_))))
          (let ((_E82838339_
                 (lambda ()
                   (if (gx#stx-pair? _e82828289_)
                       (let ((_e82858297_ (gx#syntax-e _e82828289_)))
                         (let ((_hd82868300_ (##car _e82858297_))
                               (_tl82878302_ (##cdr _e82858297_)))
                           (let ((_body8305_ _tl82878302_))
                             (if (gx#stx-list? _body8305_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8307_)
                                      (let ((_e83088315_ _decl8307_))
                                        (let ((_E83108319_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83088315_))))
                                          (let ((_E83098335_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83088315_)
                                                       (let ((_e83118323_
                                                              (gx#syntax-e
                                                               _e83088315_)))
                                                         (let ((_hd83128326_
                                                                (##car _e83118323_))
                                                               (_tl83138328_
                                                                (##cdr _e83118323_)))
                                                           (let ((_head8331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83128326_))
                     (let ((_args8333_ _tl83138328_))
                       (if (gx#stx-list? _args8333_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8307_)
                           (_E83108319_))))))
               (_E83108319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83098335_))))))
                                    _body8305_))
                                  (gx#stx-source _stx8281_))
                                 (_E82848293_)))))
                       (_E82848293_)))))
            (let () (_E82838339_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8165_)
      (let ((_e81668173_ _stx8165_))
        (let ((_E81688177_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81668173_))))
          (let ((_E81678277_
                 (lambda ()
                   (if (gx#stx-pair? _e81668173_)
                       (let ((_e81698181_ (gx#syntax-e _e81668173_)))
                         (let ((_hd81708184_ (##car _e81698181_))
                               (_tl81718186_ (##cdr _e81698181_)))
                           (let ((_body8189_ _tl81718186_))
                             (if (gx#stx-list? _body8189_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8191_)
                                      (let ((_e81928202_ _bind8191_))
                                        (let ((_E81948206_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e81928202_))))
                                          (let ((_E81938230_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e81928202_)
                                                       (let ((_e81958210_
                                                              (gx#syntax-e
                                                               _e81928202_)))
                                                         (let ((_hd81968213_
                                                                (##car _e81958210_))
                                                               (_tl81978215_
                                                                (##cdr _e81958210_)))
                                                           (let ((_id8218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd81968213_))
                     (if (gx#stx-pair? _tl81978215_)
                         (let ((_e81988220_ (gx#syntax-e _tl81978215_)))
                           (let ((_hd81998223_ (##car _e81988220_))
                                 (_tl82008225_ (##cdr _e81988220_)))
                             (let ((_eid8228_ _hd81998223_))
                               (if (gx#stx-null? _tl82008225_)
                                   (if (if (gx#identifier? _id8218_)
                                           (gx#identifier? _eid8228_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8218_
                                        (gx#stx-e _eid8228_))
                                       (_E81948206_))
                                   (_E81948206_)))))
                         (_E81948206_)))))
               (_E81948206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81938230_))))))
                                    _body8189_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8234_)
                                        (let ((_e82358245_ _bind8234_))
                                          (let ((_E82378249_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e82358245_))))
                                            (let ((_E82368273_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e82358245_)
                                                         (let ((_e82388253_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e82358245_)))
                   (let ((_hd82398256_ (##car _e82388253_))
                         (_tl82408258_ (##cdr _e82388253_)))
                     (let ((_id8261_ _hd82398256_))
                       (if (gx#stx-pair? _tl82408258_)
                           (let ((_e82418263_ (gx#syntax-e _tl82408258_)))
                             (let ((_hd82428266_ (##car _e82418263_))
                                   (_tl82438268_ (##cdr _e82418263_)))
                               (let ((_eid8271_ _hd82428266_))
                                 (if (gx#stx-null? _tl82438268_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8261_)
                                               (cons (gx#stx-e _eid8271_) '()))
                                         (_E82378249_))
                                     (_E82378249_)))))
                           (_E82378249_)))))
                 (_E82378249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E82368273_))))))
                                      _body8189_))
                                    (gx#stx-source _stx8165_)))
                                 (_E81688177_)))))
                       (_E81688177_)))))
            (let () (_E81678277_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8111_)
      (let ((_e81128125_ _stx8111_))
        (let ((_E81148129_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81128125_))))
          (let ((_E81138161_
                 (lambda ()
                   (if (gx#stx-pair? _e81128125_)
                       (let ((_e81158133_ (gx#syntax-e _e81128125_)))
                         (let ((_hd81168136_ (##car _e81158133_))
                               (_tl81178138_ (##cdr _e81158133_)))
                           (if (gx#stx-pair? _tl81178138_)
                               (let ((_e81188141_ (gx#syntax-e _tl81178138_)))
                                 (let ((_hd81198144_ (##car _e81188141_))
                                       (_tl81208146_ (##cdr _e81188141_)))
                                   (let ((_hd8149_ _hd81198144_))
                                     (if (gx#stx-pair? _tl81208146_)
                                         (let ((_e81218151_
                                                (gx#syntax-e _tl81208146_)))
                                           (let ((_hd81228154_
                                                  (##car _e81218151_))
                                                 (_tl81238156_
                                                  (##cdr _e81218151_)))
                                             (let ((_expr8159_ _hd81228154_))
                                               (if (gx#stx-null? _tl81238156_)
                                                   (if (gx#core-bind-values?
                                                        _hd8149_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8149_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8149_)
                              (cons (gx#core-expand-expression _expr8159_)
                                    '())))
                  (gx#stx-source _stx8111_)))
               (_E81148129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81148129_)))))
                                         (_E81148129_)))))
                               (_E81148129_))))
                       (_E81148129_)))))
            (let () (_E81138161_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8057_)
      (let ((_e80588071_ _stx8057_))
        (let ((_E80608075_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80588071_))))
          (let ((_E80598107_
                 (lambda ()
                   (if (gx#stx-pair? _e80588071_)
                       (let ((_e80618079_ (gx#syntax-e _e80588071_)))
                         (let ((_hd80628082_ (##car _e80618079_))
                               (_tl80638084_ (##cdr _e80618079_)))
                           (if (gx#stx-pair? _tl80638084_)
                               (let ((_e80648087_ (gx#syntax-e _tl80638084_)))
                                 (let ((_hd80658090_ (##car _e80648087_))
                                       (_tl80668092_ (##cdr _e80648087_)))
                                   (let ((_id8095_ _hd80658090_))
                                     (if (gx#stx-pair? _tl80668092_)
                                         (let ((_e80678097_
                                                (gx#syntax-e _tl80668092_)))
                                           (let ((_hd80688100_
                                                  (##car _e80678097_))
                                                 (_tl80698102_
                                                  (##cdr _e80678097_)))
                                             (let ((_binding-id8105_
                                                    _hd80688100_))
                                               (if (gx#stx-null? _tl80698102_)
                                                   (if (if (gx#identifier?
                                                            _id8095_)
                                                           (gx#identifier?
                                                            _binding-id8105_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8095_
                                                          (gx#stx-e
                                                           _binding-id8105_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8095_)
                              (cons (gx#core-quote-syntax__0 _binding-id8105_)
                                    '())))))
               (_E80608075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80608075_)))))
                                         (_E80608075_)))))
                               (_E80608075_))))
                       (_E80608075_)))))
            (let () (_E80598107_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8000_)
      (let ((_e80018014_ _stx8000_))
        (let ((_E80038018_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80018014_))))
          (let ((_E80028053_
                 (lambda ()
                   (if (gx#stx-pair? _e80018014_)
                       (let ((_e80048022_ (gx#syntax-e _e80018014_)))
                         (let ((_hd80058025_ (##car _e80048022_))
                               (_tl80068027_ (##cdr _e80048022_)))
                           (if (gx#stx-pair? _tl80068027_)
                               (let ((_e80078030_ (gx#syntax-e _tl80068027_)))
                                 (let ((_hd80088033_ (##car _e80078030_))
                                       (_tl80098035_ (##cdr _e80078030_)))
                                   (let ((_id8038_ _hd80088033_))
                                     (if (gx#stx-pair? _tl80098035_)
                                         (let ((_e80108040_
                                                (gx#syntax-e _tl80098035_)))
                                           (let ((_hd80118043_
                                                  (##car _e80108040_))
                                                 (_tl80128045_
                                                  (##cdr _e80108040_)))
                                             (let ((_expr8048_ _hd80118043_))
                                               (if (gx#stx-null? _tl80128045_)
                                                   (if (gx#identifier?
                                                        _id8038_)
                                                       (let ((_g8926_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8048_)))
                 (begin
                   (let ((_g8927_ (values-count _g8926_)))
                     (if (not (fx= _g8927_ 2))
                         (error "Context expects 2 values" _g8927_)))
                   (let ((_e-stx8050_ (values-ref _g8926_ 0))
                         (_e8051_ (values-ref _g8926_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8038_ _e8051_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8038_)
                                    (cons _e-stx8050_ '())))
                        (gx#stx-source _stx8000_))))))
               (_E80038018_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80038018_)))))
                                         (_E80038018_)))))
                               (_E80038018_))))
                       (_E80038018_)))))
            (let () (_E80028053_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx7944_)
      (let ((_e79457958_ _stx7944_))
        (let ((_E79477962_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79457958_))))
          (let ((_E79467996_
                 (lambda ()
                   (if (gx#stx-pair? _e79457958_)
                       (let ((_e79487966_ (gx#syntax-e _e79457958_)))
                         (let ((_hd79497969_ (##car _e79487966_))
                               (_tl79507971_ (##cdr _e79487966_)))
                           (if (gx#stx-pair? _tl79507971_)
                               (let ((_e79517974_ (gx#syntax-e _tl79507971_)))
                                 (let ((_hd79527977_ (##car _e79517974_))
                                       (_tl79537979_ (##cdr _e79517974_)))
                                   (let ((_id7982_ _hd79527977_))
                                     (if (gx#stx-pair? _tl79537979_)
                                         (let ((_e79547984_
                                                (gx#syntax-e _tl79537979_)))
                                           (let ((_hd79557987_
                                                  (##car _e79547984_))
                                                 (_tl79567989_
                                                  (##cdr _e79547984_)))
                                             (let ((_alias-id7992_
                                                    _hd79557987_))
                                               (if (gx#stx-null? _tl79567989_)
                                                   (if (if (gx#identifier?
                                                            _id7982_)
                                                           (gx#identifier?
                                                            _alias-id7992_)
                                                           '#f)
                                                       (let ((_alias-id7994_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id7992_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id7982_
                                                            _alias-id7994_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id7982_)
                                (cons _alias-id7994_ '()))))))
               (_E79477962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79477962_)))))
                                         (_E79477962_)))))
                               (_E79477962_))))
                       (_E79477962_)))))
            (let () (_E79467996_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda7885
      (lambda (_stx7887_ _wrap?7888_)
        (let ((_e78897899_ _stx7887_))
          (let ((_E78917903_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e78897899_))))
            (let ((_E78907930_
                   (lambda ()
                     (if (gx#stx-pair? _e78897899_)
                         (let ((_e78927907_ (gx#syntax-e _e78897899_)))
                           (let ((_hd78937910_ (##car _e78927907_))
                                 (_tl78947912_ (##cdr _e78927907_)))
                             (if (gx#stx-pair? _tl78947912_)
                                 (let ((_e78957915_
                                        (gx#syntax-e _tl78947912_)))
                                   (let ((_hd78967918_ (##car _e78957915_))
                                         (_tl78977920_ (##cdr _e78957915_)))
                                     (let ((_hd7923_ _hd78967918_))
                                       (let ((_body7925_ _tl78977920_))
                                         (if (gx#core-bind-values? _hd7923_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd7923_)
                                                  (let ((_body7928_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd7923_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7887_
                              _body7925_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?7888_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body7928_)
                                                         (gx#stx-source
                                                          _stx7887_))
                                                        _body7928_))))
                                              gx#current-expander-context
                                              (let ((__obj8919
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8919)
                                                  __obj8919)))
                                             (_E78917903_))))))
                                 (_E78917903_))))
                         (_E78917903_)))))
              (let () (_E78907930_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx7937_)
          (let ((_wrap?7939_ '#t))
            (gx#core-expand-lambda%__opt-lambda7885 _stx7937_ _wrap?7939_))))
      (define gx#core-expand-lambda%
        (lambda _g8929_
          (let ((_g8928_ (length _g8929_)))
            (cond ((fx= _g8928_ 1) (apply gx#core-expand-lambda%__0 _g8929_))
                  ((fx= _g8928_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda7885 _g8929_))
                  (else (error "No clause matching arguments" _g8929_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx7851_)
      (let ((_e78527859_ _stx7851_))
        (let ((_E78547863_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78527859_))))
          (let ((_E78537882_
                 (lambda ()
                   (if (gx#stx-pair? _e78527859_)
                       (let ((_e78557867_ (gx#syntax-e _e78527859_)))
                         (let ((_hd78567870_ (##car _e78557867_))
                               (_tl78577872_ (##cdr _e78557867_)))
                           (let ((_clauses7875_ _tl78577872_))
                             (if (gx#stx-list? _clauses7875_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause7877_)
                                      (gx#core-expand-lambda%__opt-lambda7885
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause7877_)
                                        (let ((_$e7879_
                                               (gx#stx-source _clause7877_)))
                                          (if _$e7879_
                                              _$e7879_
                                              (gx#stx-source _stx7851_))))
                                       '#f))
                                    _clauses7875_))
                                  (gx#stx-source _stx7851_))
                                 (_E78547863_)))))
                       (_E78547863_)))))
            (let () (_E78537882_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7805_)
      (let ((_e78067816_ _stx7805_))
        (let ((_E78087820_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78067816_))))
          (let ((_E78077847_
                 (lambda ()
                   (if (gx#stx-pair? _e78067816_)
                       (let ((_e78097824_ (gx#syntax-e _e78067816_)))
                         (let ((_hd78107827_ (##car _e78097824_))
                               (_tl78117829_ (##cdr _e78097824_)))
                           (if (gx#stx-pair? _tl78117829_)
                               (let ((_e78127832_ (gx#syntax-e _tl78117829_)))
                                 (let ((_hd78137835_ (##car _e78127832_))
                                       (_tl78147837_ (##cdr _e78127832_)))
                                   (let ((_hd7840_ _hd78137835_))
                                     (let ((_body7842_ _tl78147837_))
                                       (if (gx#core-expand-let-bind? _hd7840_)
                                           (let ((_expressions7844_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd7840_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7840_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7840_
                                                                _expressions7844_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7805_
                              _body7842_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7805_))))
                                              gx#current-expander-context
                                              (let ((__obj8920
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8920)
                                                  __obj8920))))
                                           (_E78087820_))))))
                               (_E78087820_))))
                       (_E78087820_)))))
            (let () (_E78077847_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7748
      (lambda (_stx7750_ _form7751_)
        (let ((_e77527762_ _stx7750_))
          (let ((_E77547766_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e77527762_))))
            (let ((_E77537791_
                   (lambda ()
                     (if (gx#stx-pair? _e77527762_)
                         (let ((_e77557770_ (gx#syntax-e _e77527762_)))
                           (let ((_hd77567773_ (##car _e77557770_))
                                 (_tl77577775_ (##cdr _e77557770_)))
                             (if (gx#stx-pair? _tl77577775_)
                                 (let ((_e77587778_
                                        (gx#syntax-e _tl77577775_)))
                                   (let ((_hd77597781_ (##car _e77587778_))
                                         (_tl77607783_ (##cdr _e77587778_)))
                                     (let ((_hd7786_ _hd77597781_))
                                       (let ((_body7788_ _tl77607783_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7786_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7786_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7751_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7786_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7786_))
                       (cons (gx#core-expand-local-block _stx7750_ _body7788_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7750_))))
                                              gx#current-expander-context
                                              (let ((__obj8921
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8921)
                                                  __obj8921)))
                                             (_E77547766_))))))
                                 (_E77547766_))))
                         (_E77547766_)))))
              (let () (_E77537791_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7798_)
          (let ((_form7800_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7748
             _stx7798_
             _form7800_))))
      (define gx#core-expand-letrec-values%
        (lambda _g8931_
          (let ((_g8930_ (length _g8931_)))
            (cond ((fx= _g8930_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g8931_))
                  ((fx= _g8930_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7748
                          _g8931_))
                  (else (error "No clause matching arguments" _g8931_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7747_)
      (gx#core-expand-letrec-values%__opt-lambda7748
       _stx7747_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7704_)
      (if (gx#stx-list? _stx7704_)
          (gx#stx-andmap
           (lambda (_bind7706_)
             (let ((_e77077717_ _bind7706_))
               (let ((_E77097721_ (lambda () '#f)))
                 (let ((_E77087743_
                        (lambda ()
                          (if (gx#stx-pair? _e77077717_)
                              (let ((_e77107725_ (gx#syntax-e _e77077717_)))
                                (let ((_hd77117728_ (##car _e77107725_))
                                      (_tl77127730_ (##cdr _e77107725_)))
                                  (let ((_hd7733_ _hd77117728_))
                                    (if (gx#stx-pair? _tl77127730_)
                                        (let ((_e77137735_
                                               (gx#syntax-e _tl77127730_)))
                                          (let ((_hd77147738_
                                                 (##car _e77137735_))
                                                (_tl77157740_
                                                 (##cdr _e77137735_)))
                                            (if (gx#stx-null? _tl77157740_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7733_)
                                                    (_E77097721_))
                                                (_E77097721_))))
                                        (_E77097721_)))))
                              (_E77097721_)))))
                   (let () (_E77087743_))))))
           _stx7704_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7663_)
      (let ((_e76647674_ _bind7663_))
        (let ((_E76667678_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76647674_))))
          (let ((_E76657700_
                 (lambda ()
                   (if (gx#stx-pair? _e76647674_)
                       (let ((_e76677682_ (gx#syntax-e _e76647674_)))
                         (let ((_hd76687685_ (##car _e76677682_))
                               (_tl76697687_ (##cdr _e76677682_)))
                           (if (gx#stx-pair? _tl76697687_)
                               (let ((_e76707690_ (gx#syntax-e _tl76697687_)))
                                 (let ((_hd76717693_ (##car _e76707690_))
                                       (_tl76727695_ (##cdr _e76707690_)))
                                   (let ((_expr7698_ _hd76717693_))
                                     (if (gx#stx-null? _tl76727695_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7698_)
                                             (_E76667678_))
                                         (_E76667678_)))))
                               (_E76667678_))))
                       (_E76667678_)))))
            (let () (_E76657700_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7622_)
      (let ((_e76237633_ _bind7622_))
        (let ((_E76257637_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76237633_))))
          (let ((_E76247659_
                 (lambda ()
                   (if (gx#stx-pair? _e76237633_)
                       (let ((_e76267641_ (gx#syntax-e _e76237633_)))
                         (let ((_hd76277644_ (##car _e76267641_))
                               (_tl76287646_ (##cdr _e76267641_)))
                           (let ((_hd7649_ _hd76277644_))
                             (if (gx#stx-pair? _tl76287646_)
                                 (let ((_e76297651_
                                        (gx#syntax-e _tl76287646_)))
                                   (let ((_hd76307654_ (##car _e76297651_))
                                         (_tl76317656_ (##cdr _e76297651_)))
                                     (if (gx#stx-null? _tl76317656_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7649_)
                                             (_E76257637_))
                                         (_E76257637_))))
                                 (_E76257637_)))))
                       (_E76257637_)))))
            (let () (_E76247659_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7580_ _expr7581_)
      (let ((_e75827592_ _bind7580_))
        (let ((_E75847596_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75827592_))))
          (let ((_E75837618_
                 (lambda ()
                   (if (gx#stx-pair? _e75827592_)
                       (let ((_e75857600_ (gx#syntax-e _e75827592_)))
                         (let ((_hd75867603_ (##car _e75857600_))
                               (_tl75877605_ (##cdr _e75857600_)))
                           (let ((_hd7608_ _hd75867603_))
                             (if (gx#stx-pair? _tl75877605_)
                                 (let ((_e75887610_
                                        (gx#syntax-e _tl75877605_)))
                                   (let ((_hd75897613_ (##car _e75887610_))
                                         (_tl75907615_ (##cdr _e75887610_)))
                                     (if (gx#stx-null? _tl75907615_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7608_)
                                                   (cons _expr7581_ '()))
                                             (_E75847596_))
                                         (_E75847596_))))
                                 (_E75847596_)))))
                       (_E75847596_)))))
            (let () (_E75837618_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7534_)
      (let ((_e75357545_ _stx7534_))
        (let ((_E75377549_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75357545_))))
          (let ((_E75367576_
                 (lambda ()
                   (if (gx#stx-pair? _e75357545_)
                       (let ((_e75387553_ (gx#syntax-e _e75357545_)))
                         (let ((_hd75397556_ (##car _e75387553_))
                               (_tl75407558_ (##cdr _e75387553_)))
                           (if (gx#stx-pair? _tl75407558_)
                               (let ((_e75417561_ (gx#syntax-e _tl75407558_)))
                                 (let ((_hd75427564_ (##car _e75417561_))
                                       (_tl75437566_ (##cdr _e75417561_)))
                                   (let ((_hd7569_ _hd75427564_))
                                     (let ((_body7571_ _tl75437566_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7569_)
                                           (let ((_expanders7573_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7569_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7569_
                                                   _expanders7573_)
                                                  (gx#core-expand-local-block
                                                   _stx7534_
                                                   _body7571_)))
                                              gx#current-expander-context
                                              (let ((__obj8922
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8922)
                                                  __obj8922))))
                                           (_E75377549_))))))
                               (_E75377549_))))
                       (_E75377549_)))))
            (let () (_E75367576_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7483_)
      (let ((_e74847494_ _stx7483_))
        (let ((_E74867498_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74847494_))))
          (let ((_E74857530_
                 (lambda ()
                   (if (gx#stx-pair? _e74847494_)
                       (let ((_e74877502_ (gx#syntax-e _e74847494_)))
                         (let ((_hd74887505_ (##car _e74877502_))
                               (_tl74897507_ (##cdr _e74877502_)))
                           (if (gx#stx-pair? _tl74897507_)
                               (let ((_e74907510_ (gx#syntax-e _tl74897507_)))
                                 (let ((_hd74917513_ (##car _e74907510_))
                                       (_tl74927515_ (##cdr _e74907510_)))
                                   (let ((_hd7518_ _hd74917513_))
                                     (let ((_body7520_ _tl74927515_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7518_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7518_
                                                 (make-list
                                                  (gx#stx-length _hd7518_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g75227525_
                                                          _g75237527_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7340
                                                    _g75227525_
                                                    _g75237527_
                                                    '#t))
                                                 _hd7518_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7518_))
                                                (gx#core-expand-local-block
                                                 _stx7483_
                                                 _body7520_)))
                                            gx#current-expander-context
                                            (let ((__obj8923
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj8923)
                                                __obj8923)))
                                           (_E74867498_))))))
                               (_E74867498_))))
                       (_E74867498_)))))
            (let () (_E74857530_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7440_)
      (if (gx#stx-list? _stx7440_)
          (gx#stx-andmap
           (lambda (_bind7442_)
             (let ((_e74437453_ _bind7442_))
               (let ((_E74457457_ (lambda () '#f)))
                 (let ((_E74447479_
                        (lambda ()
                          (if (gx#stx-pair? _e74437453_)
                              (let ((_e74467461_ (gx#syntax-e _e74437453_)))
                                (let ((_hd74477464_ (##car _e74467461_))
                                      (_tl74487466_ (##cdr _e74467461_)))
                                  (let ((_hd7469_ _hd74477464_))
                                    (if (gx#stx-pair? _tl74487466_)
                                        (let ((_e74497471_
                                               (gx#syntax-e _tl74487466_)))
                                          (let ((_hd74507474_
                                                 (##car _e74497471_))
                                                (_tl74517476_
                                                 (##cdr _e74497471_)))
                                            (if (gx#stx-null? _tl74517476_)
                                                (if '#t
                                                    (gx#identifier? _hd7469_)
                                                    (_E74457457_))
                                                (_E74457457_))))
                                        (_E74457457_)))))
                              (_E74457457_)))))
                   (let () (_E74447479_))))))
           _stx7440_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7397_)
      (let ((_e73987408_ _bind7397_))
        (let ((_E74007412_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73987408_))))
          (let ((_E73997436_
                 (lambda ()
                   (if (gx#stx-pair? _e73987408_)
                       (let ((_e74017416_ (gx#syntax-e _e73987408_)))
                         (let ((_hd74027419_ (##car _e74017416_))
                               (_tl74037421_ (##cdr _e74017416_)))
                           (if (gx#stx-pair? _tl74037421_)
                               (let ((_e74047424_ (gx#syntax-e _tl74037421_)))
                                 (let ((_hd74057427_ (##car _e74047424_))
                                       (_tl74067429_ (##cdr _e74047424_)))
                                   (let ((_expr7432_ _hd74057427_))
                                     (if (gx#stx-null? _tl74067429_)
                                         (if '#t
                                             (let ((_g8932_ (gx#core-expand-expression+1
                                                             _expr7432_)))
                                               (begin
                                                 (let ((_g8933_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g8933_ 2))
                                                       (error "Context expects 2 values"
                                                              _g8933_)))
                                                 (let ((_e7434_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8932_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7434_)))
                                             (_E74007412_))
                                         (_E74007412_)))))
                               (_E74007412_))))
                       (_E74007412_)))))
            (let () (_E73997436_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7340
      (lambda (_bind7342_ _e7343_ _rebind?7344_)
        (let ((_e73457355_ _bind7342_))
          (let ((_E73477359_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e73457355_))))
            (let ((_E73467381_
                   (lambda ()
                     (if (gx#stx-pair? _e73457355_)
                         (let ((_e73487363_ (gx#syntax-e _e73457355_)))
                           (let ((_hd73497366_ (##car _e73487363_))
                                 (_tl73507368_ (##cdr _e73487363_)))
                             (let ((_id7371_ _hd73497366_))
                               (if (gx#stx-pair? _tl73507368_)
                                   (let ((_e73517373_
                                          (gx#syntax-e _tl73507368_)))
                                     (let ((_hd73527376_ (##car _e73517373_))
                                           (_tl73537378_ (##cdr _e73517373_)))
                                       (if (gx#stx-null? _tl73537378_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7371_
                                                _e7343_
                                                _rebind?7344_)
                                               (_E73477359_))
                                           (_E73477359_))))
                                   (_E73477359_)))))
                         (_E73477359_)))))
              (let () (_E73467381_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7388_ _e7389_)
          (let ((_rebind?7391_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7340
             _bind7388_
             _e7389_
             _rebind?7391_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g8935_
          (let ((_g8934_ (length _g8935_)))
            (cond ((fx= _g8934_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g8935_))
                  ((fx= _g8934_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7340
                          _g8935_))
                  (else (error "No clause matching arguments" _g8935_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7300_)
      (let ((_e73017311_ _stx7300_))
        (let ((_E73037315_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73017311_))))
          (let ((_E73027337_
                 (lambda ()
                   (if (gx#stx-pair? _e73017311_)
                       (let ((_e73047319_ (gx#syntax-e _e73017311_)))
                         (let ((_hd73057322_ (##car _e73047319_))
                               (_tl73067324_ (##cdr _e73047319_)))
                           (if (gx#stx-pair? _tl73067324_)
                               (let ((_e73077327_ (gx#syntax-e _tl73067324_)))
                                 (let ((_hd73087330_ (##car _e73077327_))
                                       (_tl73097332_ (##cdr _e73077327_)))
                                   (let ((_expr7335_ _hd73087330_))
                                     (if (gx#stx-null? _tl73097332_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7335_)
                                             (_E73037315_))
                                         (_E73037315_)))))
                               (_E73037315_))))
                       (_E73037315_)))))
            (let () (_E73027337_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7259_)
      (let ((_e72607270_ _stx7259_))
        (let ((_E72627274_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72607270_))))
          (let ((_E72617296_
                 (lambda ()
                   (if (gx#stx-pair? _e72607270_)
                       (let ((_e72637278_ (gx#syntax-e _e72607270_)))
                         (let ((_hd72647281_ (##car _e72637278_))
                               (_tl72657283_ (##cdr _e72637278_)))
                           (if (gx#stx-pair? _tl72657283_)
                               (let ((_e72667286_ (gx#syntax-e _tl72657283_)))
                                 (let ((_hd72677289_ (##car _e72667286_))
                                       (_tl72687291_ (##cdr _e72667286_)))
                                   (let ((_e7294_ _hd72677289_))
                                     (if (gx#stx-null? _tl72687291_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7294_)
                                                          '()))
                                              (gx#stx-source _stx7259_))
                                             (_E72627274_))
                                         (_E72627274_)))))
                               (_E72627274_))))
                       (_E72627274_)))))
            (let () (_E72617296_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7218_)
      (let ((_e72197229_ _stx7218_))
        (let ((_E72217233_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72197229_))))
          (let ((_E72207255_
                 (lambda ()
                   (if (gx#stx-pair? _e72197229_)
                       (let ((_e72227237_ (gx#syntax-e _e72197229_)))
                         (let ((_hd72237240_ (##car _e72227237_))
                               (_tl72247242_ (##cdr _e72227237_)))
                           (if (gx#stx-pair? _tl72247242_)
                               (let ((_e72257245_ (gx#syntax-e _tl72247242_)))
                                 (let ((_hd72267248_ (##car _e72257245_))
                                       (_tl72277250_ (##cdr _e72257245_)))
                                   (let ((_e7253_ _hd72267248_))
                                     (if (gx#stx-null? _tl72277250_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7253_)
                                                          '()))
                                              (gx#stx-source _stx7218_))
                                             (_E72217233_))
                                         (_E72217233_)))))
                               (_E72217233_))))
                       (_E72217233_)))))
            (let () (_E72207255_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7175_)
      (let ((_e71767186_ _stx7175_))
        (let ((_E71787190_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71767186_))))
          (let ((_E71777214_
                 (lambda ()
                   (if (gx#stx-pair? _e71767186_)
                       (let ((_e71797194_ (gx#syntax-e _e71767186_)))
                         (let ((_hd71807197_ (##car _e71797194_))
                               (_tl71817199_ (##cdr _e71797194_)))
                           (if (gx#stx-pair? _tl71817199_)
                               (let ((_e71827202_ (gx#syntax-e _tl71817199_)))
                                 (let ((_hd71837205_ (##car _e71827202_))
                                       (_tl71847207_ (##cdr _e71827202_)))
                                   (let ((_rator7210_ _hd71837205_))
                                     (let ((_args7212_ _tl71847207_))
                                       (if (gx#stx-list? _args7212_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7210_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7212_))
                                            (gx#stx-source _stx7175_))
                                           (_E71787190_))))))
                               (_E71787190_))))
                       (_E71787190_)))))
            (let () (_E71777214_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7108_)
      (let ((_e71097125_ _stx7108_))
        (let ((_E71117129_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71097125_))))
          (let ((_E71107171_
                 (lambda ()
                   (if (gx#stx-pair? _e71097125_)
                       (let ((_e71127133_ (gx#syntax-e _e71097125_)))
                         (let ((_hd71137136_ (##car _e71127133_))
                               (_tl71147138_ (##cdr _e71127133_)))
                           (if (gx#stx-pair? _tl71147138_)
                               (let ((_e71157141_ (gx#syntax-e _tl71147138_)))
                                 (let ((_hd71167144_ (##car _e71157141_))
                                       (_tl71177146_ (##cdr _e71157141_)))
                                   (let ((_test7149_ _hd71167144_))
                                     (if (gx#stx-pair? _tl71177146_)
                                         (let ((_e71187151_
                                                (gx#syntax-e _tl71177146_)))
                                           (let ((_hd71197154_
                                                  (##car _e71187151_))
                                                 (_tl71207156_
                                                  (##cdr _e71187151_)))
                                             (let ((_K7159_ _hd71197154_))
                                               (if (gx#stx-pair? _tl71207156_)
                                                   (let ((_e71217161_
                                                          (gx#syntax-e
                                                           _tl71207156_)))
                                                     (let ((_hd71227164_
                                                            (##car _e71217161_))
                                                           (_tl71237166_
                                                            (##cdr _e71217161_)))
                                                       (let ((_E7169_ _hd71227164_))
                                                         (if (gx#stx-null?
                                                              _tl71237166_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7149_)
                                      (cons (gx#core-expand-expression _K7159_)
                                            (cons (gx#core-expand-expression
                                                   _E7169_)
                                                  '()))))
                          (gx#stx-source _stx7108_))
                         (_E71117129_))
                     (_E71117129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71117129_)))))
                                         (_E71117129_)))))
                               (_E71117129_))))
                       (_E71117129_)))))
            (let () (_E71107171_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7067_)
      (let ((_e70687078_ _stx7067_))
        (let ((_E70707082_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70687078_))))
          (let ((_E70697104_
                 (lambda ()
                   (if (gx#stx-pair? _e70687078_)
                       (let ((_e70717086_ (gx#syntax-e _e70687078_)))
                         (let ((_hd70727089_ (##car _e70717086_))
                               (_tl70737091_ (##cdr _e70717086_)))
                           (if (gx#stx-pair? _tl70737091_)
                               (let ((_e70747094_ (gx#syntax-e _tl70737091_)))
                                 (let ((_hd70757097_ (##car _e70747094_))
                                       (_tl70767099_ (##cdr _e70747094_)))
                                   (let ((_id7102_ _hd70757097_))
                                     (if (gx#stx-null? _tl70767099_)
                                         (if (gx#core-runtime-ref? _id7102_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7102_
                                                           _stx7067_)
                                                          '()))
                                              (gx#stx-source _stx7067_))
                                             (_E70707082_))
                                         (_E70707082_)))))
                               (_E70707082_))))
                       (_E70707082_)))))
            (let () (_E70697104_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7013_)
      (let ((_e70147027_ _stx7013_))
        (let ((_E70167031_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70147027_))))
          (let ((_E70157063_
                 (lambda ()
                   (if (gx#stx-pair? _e70147027_)
                       (let ((_e70177035_ (gx#syntax-e _e70147027_)))
                         (let ((_hd70187038_ (##car _e70177035_))
                               (_tl70197040_ (##cdr _e70177035_)))
                           (if (gx#stx-pair? _tl70197040_)
                               (let ((_e70207043_ (gx#syntax-e _tl70197040_)))
                                 (let ((_hd70217046_ (##car _e70207043_))
                                       (_tl70227048_ (##cdr _e70207043_)))
                                   (let ((_id7051_ _hd70217046_))
                                     (if (gx#stx-pair? _tl70227048_)
                                         (let ((_e70237053_
                                                (gx#syntax-e _tl70227048_)))
                                           (let ((_hd70247056_
                                                  (##car _e70237053_))
                                                 (_tl70257058_
                                                  (##cdr _e70237053_)))
                                             (let ((_expr7061_ _hd70247056_))
                                               (if (gx#stx-null? _tl70257058_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7051_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7051_
                             _stx7013_)
                            (cons (gx#core-expand-expression _expr7061_) '())))
                (gx#stx-source _stx7013_))
               (_E70167031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E70167031_)))))
                                         (_E70167031_)))))
                               (_E70167031_))))
                       (_E70167031_)))))
            (let () (_E70157063_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx6861_)
      (let ((_generate6863_
             (lambda (_body6893_)
               ((letrec ((_lp6895_
                          (lambda (_rest6897_ _ns6898_ _r6899_)
                            (let ((_e69006915_ _rest6897_))
                              (let ((_E69136919_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e69006915_))))
                                (let ((_E69096923_
                                       (lambda ()
                                         (if (gx#stx-null? _e69006915_)
                                             (if '#t
                                                 (reverse _r6899_)
                                                 (_E69136919_))
                                             (_E69136919_)))))
                                  (let ((_E69026980_
                                         (lambda ()
                                           (if (gx#stx-pair? _e69006915_)
                                               (let ((_e69106927_
                                                      (gx#syntax-e
                                                       _e69006915_)))
                                                 (let ((_hd69116930_
                                                        (##car _e69106927_))
                                                       (_tl69126932_
                                                        (##cdr _e69106927_)))
                                                   (let ((_hd6935_
                                                          _hd69116930_))
                                                     (let ((_rest6937_
                                                            _tl69126932_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd6935_)
                                                               (_lp6895_
                                                                _rest6937_
                                                                _ns6898_
                                                                (cons (cons _hd6935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns6898_
                                              (gx#stx-identifier
                                               _hd6935_
                                               _ns6898_
                                               '"#"
                                               _hd6935_)
                                              _hd6935_)
                                          '()))
                              _r6899_))
                       (let ((_e69386948_ _hd6935_))
                         (let ((_E69406952_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e69386948_))))
                           (let ((_E69396976_
                                  (lambda ()
                                    (if (gx#stx-pair? _e69386948_)
                                        (let ((_e69416956_
                                               (gx#syntax-e _e69386948_)))
                                          (let ((_hd69426959_
                                                 (##car _e69416956_))
                                                (_tl69436961_
                                                 (##cdr _e69416956_)))
                                            (let ((_id6964_ _hd69426959_))
                                              (if (gx#stx-pair? _tl69436961_)
                                                  (let ((_e69446966_
                                                         (gx#syntax-e
                                                          _tl69436961_)))
                                                    (let ((_hd69456969_
                                                           (##car _e69446966_))
                                                          (_tl69466971_
                                                           (##cdr _e69446966_)))
                                                      (let ((_eid6974_
                                                             _hd69456969_))
                                                        (if (gx#stx-null?
                                                             _tl69466971_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6964_)
                            (gx#identifier? _eid6974_)
                            '#f)
                        (_lp6895_
                         _rest6937_
                         _ns6898_
                         (cons (cons _id6964_ (cons _eid6974_ '())) _r6899_))
                        (_E69406952_))
                    (_E69406952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E69406952_)))))
                                        (_E69406952_)))))
                             (let () (_E69396976_))))))
                   (_E69096923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E69096923_)))))
                                    (let ((_E69017009_
                                           (lambda ()
                                             (if (gx#stx-pair? _e69006915_)
                                                 (let ((_e69036984_
                                                        (gx#syntax-e
                                                         _e69006915_)))
                                                   (let ((_hd69046987_
                                                          (##car _e69036984_))
                                                         (_tl69056989_
                                                          (##cdr _e69036984_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd69046987_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl69056989_)
                                                             (let ((_e69066992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl69056989_)))
                       (let ((_hd69076995_ (##car _e69066992_))
                             (_tl69086997_ (##cdr _e69066992_)))
                         (let ((_ns7000_ _hd69076995_))
                           (let ((_rest7002_ _tl69086997_))
                             (if '#t
                                 (let ((_ns7007_
                                        (if (gx#identifier? _ns7000_)
                                            (symbol->string
                                             (gx#stx-e _ns7000_))
                                            (if (let ((_$e7004_
                                                       (gx#stx-string?
                                                        _ns7000_)))
                                                  (if _$e7004_
                                                      _$e7004_
                                                      (gx#stx-false?
                                                       _ns7000_)))
                                                (gx#stx-e _ns7000_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx6861_
                                                 _ns7000_)))))
                                   (_lp6895_ _rest7002_ _ns7007_ _r6899_))
                                 (_E69026980_))))))
                     (_E69026980_))
                 (_E69026980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E69026980_)))))
                                      (let () (_E69017009_))))))))))
                  _lp6895_)
                _body6893_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e68646871_ _stx6861_))
          (let ((_E68666875_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e68646871_))))
            (let ((_E68656889_
                   (lambda ()
                     (if (gx#stx-pair? _e68646871_)
                         (let ((_e68676879_ (gx#syntax-e _e68646871_)))
                           (let ((_hd68686882_ (##car _e68676879_))
                                 (_tl68696884_ (##cdr _e68676879_)))
                             (let ((_body6887_ _tl68696884_))
                               (if (gx#stx-list? _body6887_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate6863_ _body6887_))
                                   (_E68666875_)))))
                         (_E68666875_)))))
              (let () (_E68656889_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6807_)
      (let ((_e68086821_ _stx6807_))
        (let ((_E68106825_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68086821_))))
          (let ((_E68096857_
                 (lambda ()
                   (if (gx#stx-pair? _e68086821_)
                       (let ((_e68116829_ (gx#syntax-e _e68086821_)))
                         (let ((_hd68126832_ (##car _e68116829_))
                               (_tl68136834_ (##cdr _e68116829_)))
                           (if (gx#stx-pair? _tl68136834_)
                               (let ((_e68146837_ (gx#syntax-e _tl68136834_)))
                                 (let ((_hd68156840_ (##car _e68146837_))
                                       (_tl68166842_ (##cdr _e68146837_)))
                                   (let ((_hd6845_ _hd68156840_))
                                     (if (gx#stx-pair? _tl68166842_)
                                         (let ((_e68176847_
                                                (gx#syntax-e _tl68166842_)))
                                           (let ((_hd68186850_
                                                  (##car _e68176847_))
                                                 (_tl68196852_
                                                  (##cdr _e68176847_)))
                                             (let ((_expr6855_ _hd68186850_))
                                               (if (gx#stx-null? _tl68196852_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd6845_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd6845_)
                           (cons _expr6855_ '())))
               (_E68106825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68106825_)))))
                                         (_E68106825_)))))
                               (_E68106825_))))
                       (_E68106825_)))))
            (let () (_E68096857_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6753_)
      (let ((_e67546767_ _stx6753_))
        (let ((_E67566771_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67546767_))))
          (let ((_E67556803_
                 (lambda ()
                   (if (gx#stx-pair? _e67546767_)
                       (let ((_e67576775_ (gx#syntax-e _e67546767_)))
                         (let ((_hd67586778_ (##car _e67576775_))
                               (_tl67596780_ (##cdr _e67576775_)))
                           (if (gx#stx-pair? _tl67596780_)
                               (let ((_e67606783_ (gx#syntax-e _tl67596780_)))
                                 (let ((_hd67616786_ (##car _e67606783_))
                                       (_tl67626788_ (##cdr _e67606783_)))
                                   (let ((_hd6791_ _hd67616786_))
                                     (if (gx#stx-pair? _tl67626788_)
                                         (let ((_e67636793_
                                                (gx#syntax-e _tl67626788_)))
                                           (let ((_hd67646796_
                                                  (##car _e67636793_))
                                                 (_tl67656798_
                                                  (##cdr _e67636793_)))
                                             (let ((_expr6801_ _hd67646796_))
                                               (if (gx#stx-null? _tl67656798_)
                                                   (if (gx#identifier?
                                                        _hd6791_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6801_ '())))
               (_E67566771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67566771_)))))
                                         (_E67566771_)))))
                               (_E67566771_))))
                       (_E67566771_)))))
            (let () (_E67556803_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6699_)
      (let ((_e67006713_ _stx6699_))
        (let ((_E67026717_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67006713_))))
          (let ((_E67016749_
                 (lambda ()
                   (if (gx#stx-pair? _e67006713_)
                       (let ((_e67036721_ (gx#syntax-e _e67006713_)))
                         (let ((_hd67046724_ (##car _e67036721_))
                               (_tl67056726_ (##cdr _e67036721_)))
                           (if (gx#stx-pair? _tl67056726_)
                               (let ((_e67066729_ (gx#syntax-e _tl67056726_)))
                                 (let ((_hd67076732_ (##car _e67066729_))
                                       (_tl67086734_ (##cdr _e67066729_)))
                                   (let ((_id6737_ _hd67076732_))
                                     (if (gx#stx-pair? _tl67086734_)
                                         (let ((_e67096739_
                                                (gx#syntax-e _tl67086734_)))
                                           (let ((_hd67106742_
                                                  (##car _e67096739_))
                                                 (_tl67116744_
                                                  (##cdr _e67096739_)))
                                             (let ((_alias-id6747_
                                                    _hd67106742_))
                                               (if (gx#stx-null? _tl67116744_)
                                                   (if (if (gx#identifier?
                                                            _id6737_)
                                                           (gx#identifier?
                                                            _alias-id6747_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6747_ '())))
               (_E67026717_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67026717_)))))
                                         (_E67026717_)))))
                               (_E67026717_))))
                       (_E67026717_)))))
            (let () (_E67016749_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6656_)
      (let ((_e66576667_ _stx6656_))
        (let ((_E66596671_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66576667_))))
          (let ((_E66586695_
                 (lambda ()
                   (if (gx#stx-pair? _e66576667_)
                       (let ((_e66606675_ (gx#syntax-e _e66576667_)))
                         (let ((_hd66616678_ (##car _e66606675_))
                               (_tl66626680_ (##cdr _e66606675_)))
                           (if (gx#stx-pair? _tl66626680_)
                               (let ((_e66636683_ (gx#syntax-e _tl66626680_)))
                                 (let ((_hd66646686_ (##car _e66636683_))
                                       (_tl66656688_ (##cdr _e66636683_)))
                                   (let ((_hd6691_ _hd66646686_))
                                     (let ((_body6693_ _tl66656688_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6691_)
                                               (if (gx#stx-list? _body6693_)
                                                   (not (gx#stx-null?
                                                         _body6693_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6691_)
                                            _body6693_)
                                           (_E66596671_))))))
                               (_E66596671_))))
                       (_E66596671_)))))
            (let () (_E66586695_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6592_)
      (let ((_generate6594_
             (lambda (_clause6624_)
               (let ((_e66256632_ _clause6624_))
                 (let ((_E66276636_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6592_
                           _clause6624_))))
                   (let ((_E66266652_
                          (lambda ()
                            (if (gx#stx-pair? _e66256632_)
                                (let ((_e66286640_ (gx#syntax-e _e66256632_)))
                                  (let ((_hd66296643_ (##car _e66286640_))
                                        (_tl66306645_ (##cdr _e66286640_)))
                                    (let ((_hd6648_ _hd66296643_))
                                      (let ((_body6650_ _tl66306645_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6648_)
                                                (if (gx#stx-list? _body6650_)
                                                    (not (gx#stx-null?
                                                          _body6650_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6648_)
                                                   _body6650_)
                                             (gx#stx-source _clause6624_))
                                            (_E66276636_))))))
                                (_E66276636_)))))
                     (let () (_E66266652_))))))))
        (let ((_e65956602_ _stx6592_))
          (let ((_E65976606_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e65956602_))))
            (let ((_E65966620_
                   (lambda ()
                     (if (gx#stx-pair? _e65956602_)
                         (let ((_e65986610_ (gx#syntax-e _e65956602_)))
                           (let ((_hd65996613_ (##car _e65986610_))
                                 (_tl66006615_ (##cdr _e65986610_)))
                             (let ((_clauses6618_ _tl66006615_))
                               (if (gx#stx-list? _clauses6618_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6594_ _clauses6618_))
                                   (_E65976606_)))))
                         (_E65976606_)))))
              (let () (_E65966620_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6491
      (lambda (_stx6493_ _form6494_)
        (let ((_generate6496_
               (lambda (_bind6539_)
                 (let ((_e65406550_ _bind6539_))
                   (let ((_E65426554_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6493_
                             _bind6539_))))
                     (let ((_E65416578_
                            (lambda ()
                              (if (gx#stx-pair? _e65406550_)
                                  (let ((_e65436558_
                                         (gx#syntax-e _e65406550_)))
                                    (let ((_hd65446561_ (##car _e65436558_))
                                          (_tl65456563_ (##cdr _e65436558_)))
                                      (let ((_ids6566_ _hd65446561_))
                                        (if (gx#stx-pair? _tl65456563_)
                                            (let ((_e65466568_
                                                   (gx#syntax-e _tl65456563_)))
                                              (let ((_hd65476571_
                                                     (##car _e65466568_))
                                                    (_tl65486573_
                                                     (##cdr _e65466568_)))
                                                (let ((_expr6576_
                                                       _hd65476571_))
                                                  (if (gx#stx-null?
                                                       _tl65486573_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6566_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6566_)
                        (cons _expr6576_ '()))
                  (_E65426554_))
              (_E65426554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E65426554_)))))
                                  (_E65426554_)))))
                       (let () (_E65416578_))))))))
          (let ((_e64976507_ _stx6493_))
            (let ((_E64996511_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e64976507_))))
              (let ((_E64986535_
                     (lambda ()
                       (if (gx#stx-pair? _e64976507_)
                           (let ((_e65006515_ (gx#syntax-e _e64976507_)))
                             (let ((_hd65016518_ (##car _e65006515_))
                                   (_tl65026520_ (##cdr _e65006515_)))
                               (if (gx#stx-pair? _tl65026520_)
                                   (let ((_e65036523_
                                          (gx#syntax-e _tl65026520_)))
                                     (let ((_hd65046526_ (##car _e65036523_))
                                           (_tl65056528_ (##cdr _e65036523_)))
                                       (let ((_hd6531_ _hd65046526_))
                                         (let ((_body6533_ _tl65056528_))
                                           (if (if (gx#stx-list? _hd6531_)
                                                   (if (gx#stx-list?
                                                        _body6533_)
                                                       (not (gx#stx-null?
                                                             _body6533_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6494_
                                                (gx#stx-map1
                                                 _generate6496_
                                                 _hd6531_)
                                                _body6533_)
                                               (_E64996511_))))))
                                   (_E64996511_))))
                           (_E64996511_)))))
                (let () (_E64986535_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6585_)
          (let ((_form6587_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6491
             _stx6585_
             _form6587_))))
      (define gx#macro-expand-let-values
        (lambda _g8937_
          (let ((_g8936_ (length _g8937_)))
            (cond ((fx= _g8936_ 1)
                   (apply gx#macro-expand-let-values__0 _g8937_))
                  ((fx= _g8936_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6491 _g8937_))
                  (else (error "No clause matching arguments" _g8937_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6490_)
      (gx#macro-expand-let-values__opt-lambda6491 _stx6490_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6488_)
      (gx#macro-expand-let-values__opt-lambda6491
       _stx6488_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6379_)
      (let ((_e63806406_ _stx6379_))
        (let ((_E63926410_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63806406_))))
          (let ((_E63826452_
                 (lambda ()
                   (if (gx#stx-pair? _e63806406_)
                       (let ((_e63936414_ (gx#syntax-e _e63806406_)))
                         (let ((_hd63946417_ (##car _e63936414_))
                               (_tl63956419_ (##cdr _e63936414_)))
                           (if (gx#stx-pair? _tl63956419_)
                               (let ((_e63966422_ (gx#syntax-e _tl63956419_)))
                                 (let ((_hd63976425_ (##car _e63966422_))
                                       (_tl63986427_ (##cdr _e63966422_)))
                                   (let ((_test6430_ _hd63976425_))
                                     (if (gx#stx-pair? _tl63986427_)
                                         (let ((_e63996432_
                                                (gx#syntax-e _tl63986427_)))
                                           (let ((_hd64006435_
                                                  (##car _e63996432_))
                                                 (_tl64016437_
                                                  (##cdr _e63996432_)))
                                             (let ((_K6440_ _hd64006435_))
                                               (if (gx#stx-pair? _tl64016437_)
                                                   (let ((_e64026442_
                                                          (gx#syntax-e
                                                           _tl64016437_)))
                                                     (let ((_hd64036445_
                                                            (##car _e64026442_))
                                                           (_tl64046447_
                                                            (##cdr _e64026442_)))
                                                       (let ((_E6450_ _hd64036445_))
                                                         (if (gx#stx-null?
                                                              _tl64046447_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6430_ _K6440_ _E6450_)
                         (_E63926410_))
                     (_E63926410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63926410_)))))
                                         (_E63926410_)))))
                               (_E63926410_))))
                       (_E63926410_)))))
            (let ((_E63816484_
                   (lambda ()
                     (if (gx#stx-pair? _e63806406_)
                         (let ((_e63836456_ (gx#syntax-e _e63806406_)))
                           (let ((_hd63846459_ (##car _e63836456_))
                                 (_tl63856461_ (##cdr _e63836456_)))
                             (if (gx#stx-pair? _tl63856461_)
                                 (let ((_e63866464_
                                        (gx#syntax-e _tl63856461_)))
                                   (let ((_hd63876467_ (##car _e63866464_))
                                         (_tl63886469_ (##cdr _e63866464_)))
                                     (let ((_test6472_ _hd63876467_))
                                       (if (gx#stx-pair? _tl63886469_)
                                           (let ((_e63896474_
                                                  (gx#syntax-e _tl63886469_)))
                                             (let ((_hd63906477_
                                                    (##car _e63896474_))
                                                   (_tl63916479_
                                                    (##cdr _e63896474_)))
                                               (let ((_K6482_ _hd63906477_))
                                                 (if (gx#stx-null?
                                                      _tl63916479_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6472_
                                                          _K6482_
                                                          '#!void)
                                                         (_E63826452_))
                                                     (_E63826452_)))))
                                           (_E63826452_)))))
                                 (_E63826452_))))
                         (_E63826452_)))))
              (let () (_E63816484_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6367_ _yid6368_)
      (let ((_xe6370_ (gx#resolve-identifier__0 _xid6367_))
            (_ye6371_ (gx#resolve-identifier__0 _yid6368_)))
        (if (if _xe6370_ _ye6371_ '#f)
            (let ((_$e6373_ (eq? _xe6370_ _ye6371_)))
              (if _$e6373_
                  _$e6373_
                  (if (##structure-instance-of? _xe6370_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6371_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6370_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6371_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6376_ _xe6370_)) (if _$e6376_ _$e6376_ _ye6371_))
                '#f
                (gx#stx-eq? _xid6367_ _yid6368_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6351_ _yid6352_)
      (let ((_context6354_
             (lambda (_e6365_)
               (if (##structure-direct-instance-of?
                    _e6365_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6365_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6355_
               (lambda (_e6363_)
                 (if (symbol? _e6363_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6363_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6363_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6363_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6356_
                 (lambda (_e6361_)
                   (if (symbol? _e6361_)
                       _e6361_
                       (gx#syntax-local-unwrap _e6361_)))))
            (let ((_x6358_ (_unwrap6356_ _xid6351_))
                  (_y6359_ (_unwrap6356_ _yid6352_)))
              (if (gx#stx-eq? _x6358_ _y6359_)
                  (if (eq? (_context6354_ _x6358_) (_context6354_ _y6359_))
                      (andmap eq? (_marks6355_ _x6358_) (_marks6355_ _y6359_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6349_)
      (if (gx#identifier? _stx6349_) (gx#core-identifier=? _stx6349_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6347_)
      (if (gx#identifier? _stx6347_)
          (gx#core-identifier=? _stx6347_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6345_)
      (if (gx#identifier? _x6345_)
          (if (not (gx#underscore? _x6345_)) _x6345_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6289
      (lambda (_stx6291_ _where6292_)
        ((letrec ((_lp6294_
                   (lambda (_rest6296_)
                     (let ((_rest62976305_ _rest6296_))
                       (let ((_E63006309_
                              (lambda ()
                                (error '"No clause matching" _rest62976305_))))
                         (let ((_else62996313_ (lambda () '#t)))
                           (let ((_K63016323_
                                  (lambda (_rest6316_ _hd6317_)
                                    (if (not (gx#identifier? _hd6317_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6292_
                                         _hd6317_)
                                        (if (find (lambda (_g63186320_)
                                                    (gx#bound-identifier=?
                                                     _g63186320_
                                                     _hd6317_))
                                                  _rest6316_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6292_
                                             _hd6317_)
                                            (_lp6294_ _rest6316_))))))
                             (if (##pair? _rest62976305_)
                                 (let ((_hd63026326_ (##car _rest62976305_))
                                       (_tl63036328_ (##cdr _rest62976305_)))
                                   (let ((_hd6331_ _hd63026326_))
                                     (let ((_rest6333_ _tl63036328_))
                                       (_K63016323_ _rest6333_ _hd6331_))))
                                 (_else62996313_)))))))))
           _lp6294_)
         (gx#syntax->list _stx6291_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6338_)
          (let ((_where6340_ _stx6338_))
            (gx#check-duplicate-identifiers__opt-lambda6289
             _stx6338_
             _where6340_))))
      (define gx#check-duplicate-identifiers
        (lambda _g8939_
          (let ((_g8938_ (length _g8939_)))
            (cond ((fx= _g8938_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g8939_))
                  ((fx= _g8938_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6289
                          _g8939_))
                  (else (error "No clause matching arguments" _g8939_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6283_)
      (gx#stx-andmap
       (lambda (_x6285_)
         (let ((_$e6287_ (gx#identifier? _x6285_)))
           (if _$e6287_ _$e6287_ (gx#stx-false? _x6285_))))
       _stx6283_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6245
      (lambda (_stx6247_ _rebind?6248_ _phi6249_ _ctx6250_)
        (gx#stx-for-each1
         (lambda (_id6252_)
           (if (gx#identifier? _id6252_)
               (gx#core-bind-runtime!__opt-lambda6181
                _id6252_
                _rebind?6248_
                _phi6249_
                _ctx6250_)
               '#!void))
         _stx6247_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6257_)
          (let ((_rebind?6259_ '#f))
            (let ((_phi6261_ (gx#current-expander-phi)))
              (let ((_ctx6263_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6245
                 _stx6257_
                 _rebind?6259_
                 _phi6261_
                 _ctx6263_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6265_ _rebind?6266_)
          (let ((_phi6268_ (gx#current-expander-phi)))
            (let ((_ctx6270_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6245
               _stx6265_
               _rebind?6266_
               _phi6268_
               _ctx6270_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6272_ _rebind?6273_ _phi6274_)
          (let ((_ctx6276_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6245
             _stx6272_
             _rebind?6273_
             _phi6274_
             _ctx6276_))))
      (define gx#core-bind-values!
        (lambda _g8941_
          (let ((_g8940_ (length _g8941_)))
            (cond ((fx= _g8940_ 1) (apply gx#core-bind-values!__0 _g8941_))
                  ((fx= _g8940_ 2) (apply gx#core-bind-values!__1 _g8941_))
                  ((fx= _g8940_ 3) (apply gx#core-bind-values!__2 _g8941_))
                  ((fx= _g8940_ 4)
                   (apply gx#core-bind-values!__opt-lambda6245 _g8941_))
                  (else (error "No clause matching arguments" _g8941_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6242_)
      (gx#stx-map1
       (lambda (_x6244_)
         (if (gx#identifier? _x6244_) (gx#core-quote-syntax__0 _x6244_) '#f))
       _stx6242_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6235_)
      (if (gx#identifier? _stx6235_)
          (let ((_bind6237_ (gx#resolve-identifier__0 _stx6235_)))
            (let ((_$e6239_ (not _bind6237_)))
              (if _$e6239_
                  _$e6239_
                  (##structure-instance-of?
                   _bind6237_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6224_ _form6225_)
      (let ((_bind6227_ (gx#resolve-identifier__0 _id6224_)))
        (if (##structure-instance-of? _bind6227_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6224_)
            (if (not _bind6227_)
                (if (let ((_$e6229_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6229_
                          _$e6229_
                          (let ((_$e6232_
                                 (gx#core-context-rebind?__opt-lambda4099
                                  (gx#core-context-top__0))))
                            (if _$e6232_
                                _$e6232_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6224_))))))
                    (gx#core-quote-syntax__0 _id6224_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6225_
                     _id6224_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6225_
                 _id6224_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6181
      (lambda (_id6183_ _rebind?6184_ _phi6185_ _ctx6186_)
        (let ((_key6188_ (gx#core-identifier-key _id6183_)))
          (let ((_eid6190_
                 (gx#make-binding-id__opt-lambda5948
                  _key6188_
                  '#f
                  _phi6185_
                  _ctx6186_)))
            (let ((_bind6192_
                   (if (##structure-instance-of?
                        _ctx6186_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6190_
                        _key6188_
                        _phi6185_
                        _ctx6186_)
                       (if (##structure-instance-of?
                            _ctx6186_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6190_
                            _key6188_
                            _phi6185_)
                           (if (##structure-instance-of?
                                _ctx6186_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6190_
                                _key6188_
                                _phi6185_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6190_
                                _key6188_
                                _phi6185_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4545
                 _id6183_
                 _bind6192_
                 _rebind?6184_
                 _phi6185_
                 _ctx6186_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6198_)
          (let ((_rebind?6200_ '#f))
            (let ((_phi6202_ (gx#current-expander-phi)))
              (let ((_ctx6204_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6181
                 _id6198_
                 _rebind?6200_
                 _phi6202_
                 _ctx6204_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6206_ _rebind?6207_)
          (let ((_phi6209_ (gx#current-expander-phi)))
            (let ((_ctx6211_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6181
               _id6206_
               _rebind?6207_
               _phi6209_
               _ctx6211_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6213_ _rebind?6214_ _phi6215_)
          (let ((_ctx6217_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6181
             _id6213_
             _rebind?6214_
             _phi6215_
             _ctx6217_))))
      (define gx#core-bind-runtime!
        (lambda _g8943_
          (let ((_g8942_ (length _g8943_)))
            (cond ((fx= _g8942_ 1) (apply gx#core-bind-runtime!__0 _g8943_))
                  ((fx= _g8942_ 2) (apply gx#core-bind-runtime!__1 _g8943_))
                  ((fx= _g8942_ 3) (apply gx#core-bind-runtime!__2 _g8943_))
                  ((fx= _g8942_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6181 _g8943_))
                  (else (error "No clause matching arguments" _g8943_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6136
      (lambda (_id6138_ _eid6139_ _rebind?6140_ _phi6141_ _ctx6142_)
        (let ((_key6144_ (gx#core-identifier-key _id6138_)))
          (let ((_bind6146_
                 (if (##structure-instance-of? _ctx6142_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6139_
                      _key6144_
                      _phi6141_
                      _ctx6142_)
                     (if (##structure-instance-of?
                          _ctx6142_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6139_
                          _key6144_
                          _phi6141_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6139_
                          _key6144_
                          _phi6141_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4545
               _id6138_
               _bind6146_
               _rebind?6140_
               _phi6141_
               _ctx6142_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6152_ _eid6153_)
          (let ((_rebind?6155_ '#f))
            (let ((_phi6157_ (gx#current-expander-phi)))
              (let ((_ctx6159_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6136
                 _id6152_
                 _eid6153_
                 _rebind?6155_
                 _phi6157_
                 _ctx6159_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6161_ _eid6162_ _rebind?6163_)
          (let ((_phi6165_ (gx#current-expander-phi)))
            (let ((_ctx6167_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6136
               _id6161_
               _eid6162_
               _rebind?6163_
               _phi6165_
               _ctx6167_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6169_ _eid6170_ _rebind?6171_ _phi6172_)
          (let ((_ctx6174_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6136
             _id6169_
             _eid6170_
             _rebind?6171_
             _phi6172_
             _ctx6174_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g8945_
          (let ((_g8944_ (length _g8945_)))
            (cond ((fx= _g8944_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g8945_))
                  ((fx= _g8944_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g8945_))
                  ((fx= _g8944_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g8945_))
                  ((fx= _g8944_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6136
                          _g8945_))
                  (else (error "No clause matching arguments" _g8945_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6096
      (lambda (_id6098_ _eid6099_ _rebind?6100_ _phi6101_ _ctx6102_)
        (gx#bind-identifier!__opt-lambda4545
         _id6098_
         (##structure
          gx#extern-binding::t
          _eid6099_
          (gx#core-identifier-key _id6098_)
          _phi6101_)
         _rebind?6100_
         _phi6101_
         _ctx6102_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6107_ _eid6108_)
          (let ((_rebind?6110_ '#f))
            (let ((_phi6112_ (gx#current-expander-phi)))
              (let ((_ctx6114_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6096
                 _id6107_
                 _eid6108_
                 _rebind?6110_
                 _phi6112_
                 _ctx6114_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6116_ _eid6117_ _rebind?6118_)
          (let ((_phi6120_ (gx#current-expander-phi)))
            (let ((_ctx6122_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6096
               _id6116_
               _eid6117_
               _rebind?6118_
               _phi6120_
               _ctx6122_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6124_ _eid6125_ _rebind?6126_ _phi6127_)
          (let ((_ctx6129_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6096
             _id6124_
             _eid6125_
             _rebind?6126_
             _phi6127_
             _ctx6129_))))
      (define gx#core-bind-extern!
        (lambda _g8947_
          (let ((_g8946_ (length _g8947_)))
            (cond ((fx= _g8946_ 2) (apply gx#core-bind-extern!__0 _g8947_))
                  ((fx= _g8946_ 3) (apply gx#core-bind-extern!__1 _g8947_))
                  ((fx= _g8946_ 4) (apply gx#core-bind-extern!__2 _g8947_))
                  ((fx= _g8946_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6096 _g8947_))
                  (else (error "No clause matching arguments" _g8947_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6050
      (lambda (_id6052_ _e6053_ _rebind?6054_ _phi6055_ _ctx6056_)
        (gx#bind-identifier!__opt-lambda4545
         _id6052_
         (let ((_key6061_ (gx#core-identifier-key _id6052_))
               (_e6062_ (if (let ((_$e6058_
                                   (##structure-instance-of?
                                    _e6053_
                                    'gx#expander::t)))
                              (if _$e6058_
                                  _$e6058_
                                  (##structure-instance-of?
                                   _e6053_
                                   'gx#expander-context::t)))
                            _e6053_
                            (##structure
                             gx#user-expander::t
                             _e6053_
                             _ctx6056_
                             _phi6055_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda5948
             _key6061_
             '#t
             _phi6055_
             _ctx6056_)
            _key6061_
            _phi6055_
            _e6062_))
         _rebind?6054_
         _phi6055_
         _ctx6056_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6067_ _e6068_)
          (let ((_rebind?6070_ '#f))
            (let ((_phi6072_ (gx#current-expander-phi)))
              (let ((_ctx6074_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6050
                 _id6067_
                 _e6068_
                 _rebind?6070_
                 _phi6072_
                 _ctx6074_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6076_ _e6077_ _rebind?6078_)
          (let ((_phi6080_ (gx#current-expander-phi)))
            (let ((_ctx6082_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6050
               _id6076_
               _e6077_
               _rebind?6078_
               _phi6080_
               _ctx6082_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6084_ _e6085_ _rebind?6086_ _phi6087_)
          (let ((_ctx6089_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6050
             _id6084_
             _e6085_
             _rebind?6086_
             _phi6087_
             _ctx6089_))))
      (define gx#core-bind-syntax!
        (lambda _g8949_
          (let ((_g8948_ (length _g8949_)))
            (cond ((fx= _g8948_ 2) (apply gx#core-bind-syntax!__0 _g8949_))
                  ((fx= _g8948_ 3) (apply gx#core-bind-syntax!__1 _g8949_))
                  ((fx= _g8948_ 4) (apply gx#core-bind-syntax!__2 _g8949_))
                  ((fx= _g8948_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6050 _g8949_))
                  (else (error "No clause matching arguments" _g8949_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6033
      (lambda (_id6035_ _e6036_ _rebind?6037_)
        (gx#core-bind-syntax!__opt-lambda6050
         _id6035_
         _e6036_
         _rebind?6037_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6042_ _e6043_)
          (let ((_rebind?6045_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6033
             _id6042_
             _e6043_
             _rebind?6045_))))
      (define gx#core-bind-root-syntax!
        (lambda _g8951_
          (let ((_g8950_ (length _g8951_)))
            (cond ((fx= _g8950_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g8951_))
                  ((fx= _g8950_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6033 _g8951_))
                  (else (error "No clause matching arguments" _g8951_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda5991
      (lambda (_id5993_ _alias-id5994_ _rebind?5995_ _phi5996_ _ctx5997_)
        (gx#bind-identifier!__opt-lambda4545
         _id5993_
         (let ((_key5999_ (gx#core-identifier-key _id5993_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda5948
             _key5999_
             '#t
             _phi5996_
             _ctx5997_)
            _key5999_
            _phi5996_
            _alias-id5994_))
         _rebind?5995_
         _phi5996_
         _ctx5997_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6004_ _alias-id6005_)
          (let ((_rebind?6007_ '#f))
            (let ((_phi6009_ (gx#current-expander-phi)))
              (let ((_ctx6011_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda5991
                 _id6004_
                 _alias-id6005_
                 _rebind?6007_
                 _phi6009_
                 _ctx6011_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6013_ _alias-id6014_ _rebind?6015_)
          (let ((_phi6017_ (gx#current-expander-phi)))
            (let ((_ctx6019_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda5991
               _id6013_
               _alias-id6014_
               _rebind?6015_
               _phi6017_
               _ctx6019_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6021_ _alias-id6022_ _rebind?6023_ _phi6024_)
          (let ((_ctx6026_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda5991
             _id6021_
             _alias-id6022_
             _rebind?6023_
             _phi6024_
             _ctx6026_))))
      (define gx#core-bind-alias!
        (lambda _g8953_
          (let ((_g8952_ (length _g8953_)))
            (cond ((fx= _g8952_ 2) (apply gx#core-bind-alias!__0 _g8953_))
                  ((fx= _g8952_ 3) (apply gx#core-bind-alias!__1 _g8953_))
                  ((fx= _g8952_ 4) (apply gx#core-bind-alias!__2 _g8953_))
                  ((fx= _g8952_ 5)
                   (apply gx#core-bind-alias!__opt-lambda5991 _g8953_))
                  (else (error "No clause matching arguments" _g8953_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda5948
      (lambda (_key5950_ _syntax?5951_ _phi5952_ _ctx5953_)
        (if (uninterned-symbol? _key5950_)
            (gensym 'L)
            (if (pair? _key5950_)
                (gensym (car _key5950_))
                (if (##structure-instance-of? _ctx5953_ 'gx#top-context::t)
                    (let ((_ns5955_
                           (gx#core-context-namespace__opt-lambda4082
                            _ctx5953_)))
                      (if (if (fxzero? _phi5952_) (not _syntax?5951_) '#f)
                          (if _ns5955_
                              (make-symbol _ns5955_ '"#" _key5950_)
                              _key5950_)
                          (if _syntax?5951_
                              (make-symbol
                               (let ((_$e5957_ _ns5955_))
                                 (if _$e5957_ _$e5957_ '""))
                               '"[:"
                               (number->string _phi5952_)
                               '":]#"
                               _key5950_)
                              (make-symbol
                               (let ((_$e5960_ _ns5955_))
                                 (if _$e5960_ _$e5960_ '""))
                               '"["
                               (number->string _phi5952_)
                               '"]#"
                               _key5950_))))
                    (gensym _key5950_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key5966_)
          (let ((_syntax?5968_ '#f))
            (let ((_phi5970_ (gx#current-expander-phi)))
              (let ((_ctx5972_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda5948
                 _key5966_
                 _syntax?5968_
                 _phi5970_
                 _ctx5972_))))))
      (define gx#make-binding-id__1
        (lambda (_key5974_ _syntax?5975_)
          (let ((_phi5977_ (gx#current-expander-phi)))
            (let ((_ctx5979_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda5948
               _key5974_
               _syntax?5975_
               _phi5977_
               _ctx5979_)))))
      (define gx#make-binding-id__2
        (lambda (_key5981_ _syntax?5982_ _phi5983_)
          (let ((_ctx5985_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda5948
             _key5981_
             _syntax?5982_
             _phi5983_
             _ctx5985_))))
      (define gx#make-binding-id
        (lambda _g8955_
          (let ((_g8954_ (length _g8955_)))
            (cond ((fx= _g8954_ 1) (apply gx#make-binding-id__0 _g8955_))
                  ((fx= _g8954_ 2) (apply gx#make-binding-id__1 _g8955_))
                  ((fx= _g8954_ 3) (apply gx#make-binding-id__2 _g8955_))
                  ((fx= _g8954_ 4)
                   (apply gx#make-binding-id__opt-lambda5948 _g8955_))
                  (else (error "No clause matching arguments" _g8955_)))))))))
