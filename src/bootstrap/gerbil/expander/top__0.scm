(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9073_)
      (let ((_expand-special9075_
             (lambda (_hd9077_ _K9078_ _rest9079_ _r9080_)
               (_K9078_ _rest9079_
                        (cons (gx#core-expand-top _hd9077_) _r9080_)))))
        (gx#core-expand-block__0 _stx9073_ _expand-special9075_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8826_)
      (let ((_expand-special8828_
             (lambda (_hd8948_ _K8949_ _rest8950_ _r8951_)
               (let ((_K8955_ (lambda (_e8953_)
                                (_K8949_ _rest8950_ (cons _e8953_ _r8951_)))))
                 (let ((_e89568985_ _hd8948_))
                   (let ((_E89808989_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89568985_))))
                     (let ((_E89769001_
                            (lambda ()
                              (if (gx#stx-pair? _e89568985_)
                                  (let ((_e89818993_
                                         (gx#syntax-e _e89568985_)))
                                    (let ((_hd89828996_ (##car _e89818993_))
                                          (_tl89838998_ (##cdr _e89818993_)))
                                      (if (if (gx#identifier? _hd89828996_)
                                              (gx#core-identifier=?
                                               _hd89828996_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8955_ (gx#core-expand-define-runtime%
                                                        _hd8948_))
                                              (_E89808989_))
                                          (_E89808989_))))
                                  (_E89808989_)))))
                       (let ((_E89729013_
                              (lambda ()
                                (if (gx#stx-pair? _e89568985_)
                                    (let ((_e89779005_
                                           (gx#syntax-e _e89568985_)))
                                      (let ((_hd89789008_ (##car _e89779005_))
                                            (_tl89799010_ (##cdr _e89779005_)))
                                        (if (if (gx#identifier? _hd89789008_)
                                                (gx#core-identifier=?
                                                 _hd89789008_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8955_ (gx#core-expand-define-alias%
                                                          _hd8948_))
                                                (_E89769001_))
                                            (_E89769001_))))
                                    (_E89769001_)))))
                         (let ((_E89629025_
                                (lambda ()
                                  (if (gx#stx-pair? _e89568985_)
                                      (let ((_e89739017_
                                             (gx#syntax-e _e89568985_)))
                                        (let ((_hd89749020_
                                               (##car _e89739017_))
                                              (_tl89759022_
                                               (##cdr _e89739017_)))
                                          (if (if (gx#identifier? _hd89749020_)
                                                  (gx#core-identifier=?
                                                   _hd89749020_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8955_ (gx#core-expand-define-syntax%
                                                            _hd8948_))
                                                  (_E89729013_))
                                              (_E89729013_))))
                                      (_E89729013_)))))
                           (let ((_E89589057_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89568985_)
                                        (let ((_e89639029_
                                               (gx#syntax-e _e89568985_)))
                                          (let ((_hd89649032_
                                                 (##car _e89639029_))
                                                (_tl89659034_
                                                 (##cdr _e89639029_)))
                                            (if (if (gx#identifier?
                                                     _hd89649032_)
                                                    (gx#core-identifier=?
                                                     _hd89649032_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89659034_)
                                                    (let ((_e89669037_
                                                           (gx#syntax-e
                                                            _tl89659034_)))
                                                      (let ((_hd89679040_
                                                             (##car _e89669037_))
                                                            (_tl89689042_
                                                             (##cdr _e89669037_)))
                                                        (let ((_hd-bind9045_
                                                               _hd89679040_))
                                                          (if (gx#stx-pair?
                                                               _tl89689042_)
                                                              (let ((_e89699047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89689042_)))
                        (let ((_hd89709050_ (##car _e89699047_))
                              (_tl89719052_ (##cdr _e89699047_)))
                          (let ((_expr9055_ _hd89709050_))
                            (if (gx#stx-null? _tl89719052_)
                                (if (gx#core-bind-values? _hd-bind9045_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9045_)
                                      (_K8955_ _hd8948_))
                                    (_E89629025_))
                                (_E89629025_)))))
                      (_E89629025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89629025_))
                                                (_E89629025_))))
                                        (_E89629025_)))))
                             (let ((_E89579069_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89568985_)
                                          (let ((_e89599061_
                                                 (gx#syntax-e _e89568985_)))
                                            (let ((_hd89609064_
                                                   (##car _e89599061_))
                                                  (_tl89619066_
                                                   (##cdr _e89599061_)))
                                              (if (if (gx#identifier?
                                                       _hd89609064_)
                                                      (gx#core-identifier=?
                                                       _hd89609064_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8955_ (gx#core-expand-begin-syntax%
                                                                _hd8948_))
                                                      (_E89589057_))
                                                  (_E89589057_))))
                                          (_E89589057_)))))
                               (let () (_E89579069_)))))))))))))
        (let ((_eval-body8829_
               (lambda (_rbody8837_)
                 ((letrec ((_lp8839_
                            (lambda (_rest8841_ _body8842_ _ebody8843_)
                              (let ((_rest88448852_ _rest8841_))
                                (let ((_E88478856_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88448852_))))
                                  (let ((_else88468860_
                                         (lambda ()
                                           (values _body8842_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8843_)
                                                     (gx#stx-source
                                                      _stx8826_)))))))
                                    (let ((_K88488936_
                                           (lambda (_rest8863_ _hd8864_)
                                             (let ((_e88658882_ _hd8864_))
                                               (let ((_E88778886_
                                                      (lambda ()
                                                        (_lp8839_
                                                         _rest8863_
                                                         (cons _hd8864_
                                                               _body8842_)
                                                         (cons _hd8864_
                                                               _ebody8843_)))))
                                                 (let ((_E88678898_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88658882_)
                                                              (let ((_e88788890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88658882_)))
                        (let ((_hd88798893_ (##car _e88788890_))
                              (_tl88808895_ (##cdr _e88788890_)))
                          (if (if (gx#identifier? _hd88798893_)
                                  (gx#core-identifier=?
                                   _hd88798893_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8839_
                                   _rest8863_
                                   (cons _hd8864_ _body8842_)
                                   _ebody8843_)
                                  (_E88778886_))
                              (_E88778886_))))
                      (_E88778886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88668932_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88658882_)
                        (let ((_e88688902_ (gx#syntax-e _e88658882_)))
                          (let ((_hd88698905_ (##car _e88688902_))
                                (_tl88708907_ (##cdr _e88688902_)))
                            (if (if (gx#identifier? _hd88698905_)
                                    (gx#core-identifier=?
                                     _hd88698905_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88708907_)
                                    (let ((_e88718910_
                                           (gx#syntax-e _tl88708907_)))
                                      (let ((_hd88728913_ (##car _e88718910_))
                                            (_tl88738915_ (##cdr _e88718910_)))
                                        (let ((_hd-bind8918_ _hd88728913_))
                                          (if (gx#stx-pair? _tl88738915_)
                                              (let ((_e88748920_
                                                     (gx#syntax-e
                                                      _tl88738915_)))
                                                (let ((_hd88758923_
                                                       (##car _e88748920_))
                                                      (_tl88768925_
                                                       (##cdr _e88748920_)))
                                                  (let ((_expr8928_
                                                         _hd88758923_))
                                                    (if (gx#stx-null?
                                                         _tl88768925_)
                                                        (if '#t
                                                            (let ((_ehd8930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8918_)
                                        (cons (gx#core-expand-expression
                                               _expr8928_)
                                              '())))
                            (gx#stx-source _hd8864_))))
                      (_lp8839_
                       _rest8863_
                       (cons _ehd8930_ _body8842_)
                       (cons _ehd8930_ _ebody8843_)))
                    (_E88678898_))
                (_E88678898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88678898_)))))
                                    (_E88678898_))
                                (_E88678898_))))
                        (_E88678898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88668932_)))))))))
                                      (if (##pair? _rest88448852_)
                                          (let ((_hd88498939_
                                                 (##car _rest88448852_))
                                                (_tl88508941_
                                                 (##cdr _rest88448852_)))
                                            (let ((_hd8944_ _hd88498939_))
                                              (let ((_rest8946_ _tl88508941_))
                                                (_K88488936_
                                                 _rest8946_
                                                 _hd8944_))))
                                          (_else88468860_)))))))))
                    _lp8839_)
                  _rbody8837_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8832_
                    (gx#core-expand-block__1
                     _stx8826_
                     _expand-special8828_
                     '#f)))
               (let ((_g9087_ (_eval-body8829_ _rbody8832_)))
                 (begin
                   (let ((_g9088_ (values-count _g9087_)))
                     (if (not (fx= _g9088_ 2))
                         (error "Context expects 2 values" _g9088_)))
                   (let ((_expanded-body8834_ (values-ref _g9087_ 0))
                         (_value8835_ (values-ref _g9087_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8834_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8835_ '())))
                      (gx#stx-source _stx8826_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8796_)
      (let ((_e87978804_ _stx8796_))
        (let ((_E87998808_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87978804_))))
          (let ((_E87988822_
                 (lambda ()
                   (if (gx#stx-pair? _e87978804_)
                       (let ((_e88008812_ (gx#syntax-e _e87978804_)))
                         (let ((_hd88018815_ (##car _e88008812_))
                               (_tl88028817_ (##cdr _e88008812_)))
                           (let ((_body8820_ _tl88028817_))
                             (if (gx#stx-list? _body8820_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8820_)
                                  (gx#stx-source _stx8796_))
                                 (_E87998808_)))))
                       (_E87998808_)))))
            (let () (_E87988822_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8794_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8794_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8782_)
      (let ((_e87838786_ _stx8782_))
        (let ((_E87848790_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87838786_))))
          (let () (_E87848790_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8506_ _body8507_)
      (let ((_expand-internal-special8511_
             (lambda (_hd8668_ _K8669_ _rest8670_ _r8671_)
               (let ((_e86728697_ _hd8668_))
                 (let ((_E86928701_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86728697_))))
                   (let ((_E86888713_
                          (lambda ()
                            (if (gx#stx-pair? _e86728697_)
                                (let ((_e86938705_ (gx#syntax-e _e86728697_)))
                                  (let ((_hd86948708_ (##car _e86938705_))
                                        (_tl86958710_ (##cdr _e86938705_)))
                                    (if (if (gx#identifier? _hd86948708_)
                                            (gx#core-identifier=?
                                             _hd86948708_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8669_ _rest8670_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8668_)
                                                           _r8671_))
                                            (_E86928701_))
                                        (_E86928701_))))
                                (_E86928701_)))))
                     (let ((_E86848725_
                            (lambda ()
                              (if (gx#stx-pair? _e86728697_)
                                  (let ((_e86898717_
                                         (gx#syntax-e _e86728697_)))
                                    (let ((_hd86908720_ (##car _e86898717_))
                                          (_tl86918722_ (##cdr _e86898717_)))
                                      (if (if (gx#identifier? _hd86908720_)
                                              (gx#core-identifier=?
                                               _hd86908720_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8668_)
                                                (_K8669_ _rest8670_ _r8671_))
                                              (_E86888713_))
                                          (_E86888713_))))
                                  (_E86888713_)))))
                       (let ((_E86748737_
                              (lambda ()
                                (if (gx#stx-pair? _e86728697_)
                                    (let ((_e86858729_
                                           (gx#syntax-e _e86728697_)))
                                      (let ((_hd86868732_ (##car _e86858729_))
                                            (_tl86878734_ (##cdr _e86858729_)))
                                        (if (if (gx#identifier? _hd86868732_)
                                                (gx#core-identifier=?
                                                 _hd86868732_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8668_)
                                                  (_K8669_ _rest8670_ _r8671_))
                                                (_E86848725_))
                                            (_E86848725_))))
                                    (_E86848725_)))))
                         (let ((_E86738769_
                                (lambda ()
                                  (if (gx#stx-pair? _e86728697_)
                                      (let ((_e86758741_
                                             (gx#syntax-e _e86728697_)))
                                        (let ((_hd86768744_
                                               (##car _e86758741_))
                                              (_tl86778746_
                                               (##cdr _e86758741_)))
                                          (if (if (gx#identifier? _hd86768744_)
                                                  (gx#core-identifier=?
                                                   _hd86768744_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86778746_)
                                                  (let ((_e86788749_
                                                         (gx#syntax-e
                                                          _tl86778746_)))
                                                    (let ((_hd86798752_
                                                           (##car _e86788749_))
                                                          (_tl86808754_
                                                           (##cdr _e86788749_)))
                                                      (let ((_hd-bind8757_
                                                             _hd86798752_))
                                                        (if (gx#stx-pair?
                                                             _tl86808754_)
                                                            (let ((_e86818759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86808754_)))
                      (let ((_hd86828762_ (##car _e86818759_))
                            (_tl86838764_ (##cdr _e86818759_)))
                        (let ((_expr8767_ _hd86828762_))
                          (if (gx#stx-null? _tl86838764_)
                              (if (gx#core-bind-values? _hd-bind8757_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8757_)
                                    (_K8669_ _rest8670_
                                             (cons _hd8668_ _r8671_)))
                                  (_E86748737_))
                              (_E86748737_)))))
                    (_E86748737_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86748737_))
                                              (_E86748737_))))
                                      (_E86748737_)))))
                           (let () (_E86738769_)))))))))))
        (let ((_wrap-internal8512_
               (lambda (_rbody8514_)
                 ((letrec ((_lp8516_
                            (lambda (_rest8518_
                                     _decls8519_
                                     _bind8520_
                                     _body8521_)
                              (let ((_e85228529_ _rest8518_))
                                (let ((_E85248578_
                                       (lambda ()
                                         (let ((_body8573_
                                                (let ((_body85328542_
                                                       _body8521_))
                                                  (let ((_E85368546_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85328542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85358550_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8521_)
                                                              (gx#stx-source
                                                               _stx8506_)))))
                                                      (let ((_try-match85348566_
                                                             (lambda ()
                                                               (let ((_K85378556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8554_) _expr8554_)))
                         (if (##pair? _body85328542_)
                             (let ((_hd85388559_ (##car _body85328542_))
                                   (_tl85398561_ (##cdr _body85328542_)))
                               (let ((_expr8564_ _hd85388559_))
                                 (if (##null? _tl85398561_)
                                     (_K85378556_ _expr8564_)
                                     (_else85358550_))))
                             (_else85358550_))))))
                (let ((_K85408570_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8506_))))
                  (if (##null? _body85328542_)
                      (_K85408570_)
                      (_try-match85348566_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8575_
                                                  (if (null? _bind8520_)
                                                      _body8573_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8573_ '())))
               (gx#stx-source _stx8506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8519_)
                                                   _body8575_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8519_
                                                                (cons _body8575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8506_)))))))))
                                  (let ((_E85238664_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85228529_)
                                               (let ((_e85258582_
                                                      (gx#syntax-e
                                                       _e85228529_)))
                                                 (let ((_hd85268585_
                                                        (##car _e85258582_))
                                                       (_tl85278587_
                                                        (##cdr _e85258582_)))
                                                   (let ((_hd8590_
                                                          _hd85268585_))
                                                     (let ((_rest8592_
                                                            _tl85278587_))
                                                       (if '#t
                                                           (let ((_e85938610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8590_))
                     (let ((_E86058614_
                            (lambda ()
                              (if (null? _bind8520_)
                                  (_lp8516_
                                   _rest8592_
                                   _decls8519_
                                   _bind8520_
                                   (cons _hd8590_ _body8521_))
                                  (_lp8516_
                                   _rest8592_
                                   _decls8519_
                                   (cons (cons '#f (cons _hd8590_ '()))
                                         _bind8520_)
                                   _body8521_)))))
                       (let ((_E85958628_
                              (lambda ()
                                (if (gx#stx-pair? _e85938610_)
                                    (let ((_e86068618_
                                           (gx#syntax-e _e85938610_)))
                                      (let ((_hd86078621_ (##car _e86068618_))
                                            (_tl86088623_ (##cdr _e86068618_)))
                                        (if (if (gx#identifier? _hd86078621_)
                                                (gx#core-identifier=?
                                                 _hd86078621_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8626_ _tl86088623_))
                                              (if '#t
                                                  (_lp8516_
                                                   _rest8592_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8519_
                                                    _xdecls8626_)
                                                   _bind8520_
                                                   _body8521_)
                                                  (_E86058614_)))
                                            (_E86058614_))))
                                    (_E86058614_)))))
                         (let ((_E85948660_
                                (lambda ()
                                  (if (gx#stx-pair? _e85938610_)
                                      (let ((_e85968632_
                                             (gx#syntax-e _e85938610_)))
                                        (let ((_hd85978635_
                                               (##car _e85968632_))
                                              (_tl85988637_
                                               (##cdr _e85968632_)))
                                          (if (if (gx#identifier? _hd85978635_)
                                                  (gx#core-identifier=?
                                                   _hd85978635_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85988637_)
                                                  (let ((_e85998640_
                                                         (gx#syntax-e
                                                          _tl85988637_)))
                                                    (let ((_hd86008643_
                                                           (##car _e85998640_))
                                                          (_tl86018645_
                                                           (##cdr _e85998640_)))
                                                      (let ((_hd-bind8648_
                                                             _hd86008643_))
                                                        (if (gx#stx-pair?
                                                             _tl86018645_)
                                                            (let ((_e86028650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86018645_)))
                      (let ((_hd86038653_ (##car _e86028650_))
                            (_tl86048655_ (##cdr _e86028650_)))
                        (let ((_expr8658_ _hd86038653_))
                          (if (gx#stx-null? _tl86048655_)
                              (if '#t
                                  (_lp8516_
                                   _rest8592_
                                   _decls8519_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8648_)
                                               (cons (gx#core-expand-expression
                                                      _expr8658_)
                                                     '()))
                                         _bind8520_)
                                   _body8521_)
                                  (_E85958628_))
                              (_E85958628_)))))
                    (_E85958628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85958628_))
                                              (_E85958628_))))
                                      (_E85958628_)))))
                           (let () (_E85948660_))))))
                   (_E85248578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85248578_)))))
                                    (let () (_E85238664_))))))))
                    _lp8516_)
                  _rbody8514_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8510_
                 (lambda (_hd8773_ _rest8774_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8512_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8773_ _rest8774_)
                         (gx#stx-source _stx8506_))
                        _expand-internal-special8511_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9081 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9081)
                        __obj9081))))))
            (let ((_expand-special8509_
                   (lambda (_hd8777_ _K8778_ _rest8779_ _r8780_)
                     (_K8778_ '()
                              (cons (_expand-internal8510_ _hd8777_ _rest8779_)
                                    _r8780_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8507_)
                (gx#stx-source _stx8506_))
               _expand-special8509_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8444_)
      (let ((_e84458452_ _stx8444_))
        (let ((_E84478456_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84458452_))))
          (let ((_E84468502_
                 (lambda ()
                   (if (gx#stx-pair? _e84458452_)
                       (let ((_e84488460_ (gx#syntax-e _e84458452_)))
                         (let ((_hd84498463_ (##car _e84488460_))
                               (_tl84508465_ (##cdr _e84488460_)))
                           (let ((_body8468_ _tl84508465_))
                             (if (gx#stx-list? _body8468_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8470_)
                                      (let ((_e84718478_ _decl8470_))
                                        (let ((_E84738482_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84718478_))))
                                          (let ((_E84728498_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84718478_)
                                                       (let ((_e84748486_
                                                              (gx#syntax-e
                                                               _e84718478_)))
                                                         (let ((_hd84758489_
                                                                (##car _e84748486_))
                                                               (_tl84768491_
                                                                (##cdr _e84748486_)))
                                                           (let ((_head8494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84758489_))
                     (let ((_args8496_ _tl84768491_))
                       (if (gx#stx-list? _args8496_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8470_)
                           (_E84738482_))))))
               (_E84738482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84728498_))))))
                                    _body8468_))
                                  (gx#stx-source _stx8444_))
                                 (_E84478456_)))))
                       (_E84478456_)))))
            (let () (_E84468502_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8328_)
      (let ((_e83298336_ _stx8328_))
        (let ((_E83318340_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83298336_))))
          (let ((_E83308440_
                 (lambda ()
                   (if (gx#stx-pair? _e83298336_)
                       (let ((_e83328344_ (gx#syntax-e _e83298336_)))
                         (let ((_hd83338347_ (##car _e83328344_))
                               (_tl83348349_ (##cdr _e83328344_)))
                           (let ((_body8352_ _tl83348349_))
                             (if (gx#stx-list? _body8352_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8354_)
                                      (let ((_e83558365_ _bind8354_))
                                        (let ((_E83578369_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83558365_))))
                                          (let ((_E83568393_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83558365_)
                                                       (let ((_e83588373_
                                                              (gx#syntax-e
                                                               _e83558365_)))
                                                         (let ((_hd83598376_
                                                                (##car _e83588373_))
                                                               (_tl83608378_
                                                                (##cdr _e83588373_)))
                                                           (let ((_id8381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83598376_))
                     (if (gx#stx-pair? _tl83608378_)
                         (let ((_e83618383_ (gx#syntax-e _tl83608378_)))
                           (let ((_hd83628386_ (##car _e83618383_))
                                 (_tl83638388_ (##cdr _e83618383_)))
                             (let ((_eid8391_ _hd83628386_))
                               (if (gx#stx-null? _tl83638388_)
                                   (if (if (gx#identifier? _id8381_)
                                           (gx#identifier? _eid8391_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8381_
                                        (gx#stx-e _eid8391_))
                                       (_E83578369_))
                                   (_E83578369_)))))
                         (_E83578369_)))))
               (_E83578369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83568393_))))))
                                    _body8352_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8397_)
                                        (let ((_e83988408_ _bind8397_))
                                          (let ((_E84008412_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e83988408_))))
                                            (let ((_E83998436_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e83988408_)
                                                         (let ((_e84018416_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e83988408_)))
                   (let ((_hd84028419_ (##car _e84018416_))
                         (_tl84038421_ (##cdr _e84018416_)))
                     (let ((_id8424_ _hd84028419_))
                       (if (gx#stx-pair? _tl84038421_)
                           (let ((_e84048426_ (gx#syntax-e _tl84038421_)))
                             (let ((_hd84058429_ (##car _e84048426_))
                                   (_tl84068431_ (##cdr _e84048426_)))
                               (let ((_eid8434_ _hd84058429_))
                                 (if (gx#stx-null? _tl84068431_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8424_)
                                               (cons (gx#stx-e _eid8434_) '()))
                                         (_E84008412_))
                                     (_E84008412_)))))
                           (_E84008412_)))))
                 (_E84008412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E83998436_))))))
                                      _body8352_))
                                    (gx#stx-source _stx8328_)))
                                 (_E83318340_)))))
                       (_E83318340_)))))
            (let () (_E83308440_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8274_)
      (let ((_e82758288_ _stx8274_))
        (let ((_E82778292_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82758288_))))
          (let ((_E82768324_
                 (lambda ()
                   (if (gx#stx-pair? _e82758288_)
                       (let ((_e82788296_ (gx#syntax-e _e82758288_)))
                         (let ((_hd82798299_ (##car _e82788296_))
                               (_tl82808301_ (##cdr _e82788296_)))
                           (if (gx#stx-pair? _tl82808301_)
                               (let ((_e82818304_ (gx#syntax-e _tl82808301_)))
                                 (let ((_hd82828307_ (##car _e82818304_))
                                       (_tl82838309_ (##cdr _e82818304_)))
                                   (let ((_hd8312_ _hd82828307_))
                                     (if (gx#stx-pair? _tl82838309_)
                                         (let ((_e82848314_
                                                (gx#syntax-e _tl82838309_)))
                                           (let ((_hd82858317_
                                                  (##car _e82848314_))
                                                 (_tl82868319_
                                                  (##cdr _e82848314_)))
                                             (let ((_expr8322_ _hd82858317_))
                                               (if (gx#stx-null? _tl82868319_)
                                                   (if (gx#core-bind-values?
                                                        _hd8312_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8312_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8312_)
                              (cons (gx#core-expand-expression _expr8322_)
                                    '())))
                  (gx#stx-source _stx8274_)))
               (_E82778292_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82778292_)))))
                                         (_E82778292_)))))
                               (_E82778292_))))
                       (_E82778292_)))))
            (let () (_E82768324_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8220_)
      (let ((_e82218234_ _stx8220_))
        (let ((_E82238238_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82218234_))))
          (let ((_E82228270_
                 (lambda ()
                   (if (gx#stx-pair? _e82218234_)
                       (let ((_e82248242_ (gx#syntax-e _e82218234_)))
                         (let ((_hd82258245_ (##car _e82248242_))
                               (_tl82268247_ (##cdr _e82248242_)))
                           (if (gx#stx-pair? _tl82268247_)
                               (let ((_e82278250_ (gx#syntax-e _tl82268247_)))
                                 (let ((_hd82288253_ (##car _e82278250_))
                                       (_tl82298255_ (##cdr _e82278250_)))
                                   (let ((_id8258_ _hd82288253_))
                                     (if (gx#stx-pair? _tl82298255_)
                                         (let ((_e82308260_
                                                (gx#syntax-e _tl82298255_)))
                                           (let ((_hd82318263_
                                                  (##car _e82308260_))
                                                 (_tl82328265_
                                                  (##cdr _e82308260_)))
                                             (let ((_binding-id8268_
                                                    _hd82318263_))
                                               (if (gx#stx-null? _tl82328265_)
                                                   (if (if (gx#identifier?
                                                            _id8258_)
                                                           (gx#identifier?
                                                            _binding-id8268_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8258_
                                                          (gx#stx-e
                                                           _binding-id8268_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8258_)
                              (cons (gx#core-quote-syntax__0 _binding-id8268_)
                                    '())))))
               (_E82238238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82238238_)))))
                                         (_E82238238_)))))
                               (_E82238238_))))
                       (_E82238238_)))))
            (let () (_E82228270_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8163_)
      (let ((_e81648177_ _stx8163_))
        (let ((_E81668181_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81648177_))))
          (let ((_E81658216_
                 (lambda ()
                   (if (gx#stx-pair? _e81648177_)
                       (let ((_e81678185_ (gx#syntax-e _e81648177_)))
                         (let ((_hd81688188_ (##car _e81678185_))
                               (_tl81698190_ (##cdr _e81678185_)))
                           (if (gx#stx-pair? _tl81698190_)
                               (let ((_e81708193_ (gx#syntax-e _tl81698190_)))
                                 (let ((_hd81718196_ (##car _e81708193_))
                                       (_tl81728198_ (##cdr _e81708193_)))
                                   (let ((_id8201_ _hd81718196_))
                                     (if (gx#stx-pair? _tl81728198_)
                                         (let ((_e81738203_
                                                (gx#syntax-e _tl81728198_)))
                                           (let ((_hd81748206_
                                                  (##car _e81738203_))
                                                 (_tl81758208_
                                                  (##cdr _e81738203_)))
                                             (let ((_expr8211_ _hd81748206_))
                                               (if (gx#stx-null? _tl81758208_)
                                                   (if (gx#identifier?
                                                        _id8201_)
                                                       (let ((_g9089_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8211_)))
                 (begin
                   (let ((_g9090_ (values-count _g9089_)))
                     (if (not (fx= _g9090_ 2))
                         (error "Context expects 2 values" _g9090_)))
                   (let ((_e-stx8213_ (values-ref _g9089_ 0))
                         (_e8214_ (values-ref _g9089_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8201_ _e8214_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8201_)
                                    (cons _e-stx8213_ '())))
                        (gx#stx-source _stx8163_))))))
               (_E81668181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81668181_)))))
                                         (_E81668181_)))))
                               (_E81668181_))))
                       (_E81668181_)))))
            (let () (_E81658216_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8107_)
      (let ((_e81088121_ _stx8107_))
        (let ((_E81108125_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81088121_))))
          (let ((_E81098159_
                 (lambda ()
                   (if (gx#stx-pair? _e81088121_)
                       (let ((_e81118129_ (gx#syntax-e _e81088121_)))
                         (let ((_hd81128132_ (##car _e81118129_))
                               (_tl81138134_ (##cdr _e81118129_)))
                           (if (gx#stx-pair? _tl81138134_)
                               (let ((_e81148137_ (gx#syntax-e _tl81138134_)))
                                 (let ((_hd81158140_ (##car _e81148137_))
                                       (_tl81168142_ (##cdr _e81148137_)))
                                   (let ((_id8145_ _hd81158140_))
                                     (if (gx#stx-pair? _tl81168142_)
                                         (let ((_e81178147_
                                                (gx#syntax-e _tl81168142_)))
                                           (let ((_hd81188150_
                                                  (##car _e81178147_))
                                                 (_tl81198152_
                                                  (##cdr _e81178147_)))
                                             (let ((_alias-id8155_
                                                    _hd81188150_))
                                               (if (gx#stx-null? _tl81198152_)
                                                   (if (if (gx#identifier?
                                                            _id8145_)
                                                           (gx#identifier?
                                                            _alias-id8155_)
                                                           '#f)
                                                       (let ((_alias-id8157_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8155_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8145_
                                                            _alias-id8157_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8145_)
                                (cons _alias-id8157_ '()))))))
               (_E81108125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81108125_)))))
                                         (_E81108125_)))))
                               (_E81108125_))))
                       (_E81108125_)))))
            (let () (_E81098159_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8048
      (lambda (_stx8050_ _wrap?8051_)
        (let ((_e80528062_ _stx8050_))
          (let ((_E80548066_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80528062_))))
            (let ((_E80538093_
                   (lambda ()
                     (if (gx#stx-pair? _e80528062_)
                         (let ((_e80558070_ (gx#syntax-e _e80528062_)))
                           (let ((_hd80568073_ (##car _e80558070_))
                                 (_tl80578075_ (##cdr _e80558070_)))
                             (if (gx#stx-pair? _tl80578075_)
                                 (let ((_e80588078_
                                        (gx#syntax-e _tl80578075_)))
                                   (let ((_hd80598081_ (##car _e80588078_))
                                         (_tl80608083_ (##cdr _e80588078_)))
                                     (let ((_hd8086_ _hd80598081_))
                                       (let ((_body8088_ _tl80608083_))
                                         (if (gx#core-bind-values? _hd8086_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8086_)
                                                  (let ((_body8091_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8086_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8050_
                              _body8088_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8051_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8091_)
                                                         (gx#stx-source
                                                          _stx8050_))
                                                        _body8091_))))
                                              gx#current-expander-context
                                              (let ((__obj9082
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9082)
                                                  __obj9082)))
                                             (_E80548066_))))))
                                 (_E80548066_))))
                         (_E80548066_)))))
              (let () (_E80538093_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8100_)
          (let ((_wrap?8102_ '#t))
            (gx#core-expand-lambda%__opt-lambda8048 _stx8100_ _wrap?8102_))))
      (define gx#core-expand-lambda%
        (lambda _g9092_
          (let ((_g9091_ (length _g9092_)))
            (cond ((fx= _g9091_ 1) (apply gx#core-expand-lambda%__0 _g9092_))
                  ((fx= _g9091_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8048 _g9092_))
                  (else (error "No clause matching arguments" _g9092_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8014_)
      (let ((_e80158022_ _stx8014_))
        (let ((_E80178026_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80158022_))))
          (let ((_E80168045_
                 (lambda ()
                   (if (gx#stx-pair? _e80158022_)
                       (let ((_e80188030_ (gx#syntax-e _e80158022_)))
                         (let ((_hd80198033_ (##car _e80188030_))
                               (_tl80208035_ (##cdr _e80188030_)))
                           (let ((_clauses8038_ _tl80208035_))
                             (if (gx#stx-list? _clauses8038_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8040_)
                                      (gx#core-expand-lambda%__opt-lambda8048
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8040_)
                                        (let ((_$e8042_
                                               (gx#stx-source _clause8040_)))
                                          (if _$e8042_
                                              _$e8042_
                                              (gx#stx-source _stx8014_))))
                                       '#f))
                                    _clauses8038_))
                                  (gx#stx-source _stx8014_))
                                 (_E80178026_)))))
                       (_E80178026_)))))
            (let () (_E80168045_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7968_)
      (let ((_e79697979_ _stx7968_))
        (let ((_E79717983_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79697979_))))
          (let ((_E79708010_
                 (lambda ()
                   (if (gx#stx-pair? _e79697979_)
                       (let ((_e79727987_ (gx#syntax-e _e79697979_)))
                         (let ((_hd79737990_ (##car _e79727987_))
                               (_tl79747992_ (##cdr _e79727987_)))
                           (if (gx#stx-pair? _tl79747992_)
                               (let ((_e79757995_ (gx#syntax-e _tl79747992_)))
                                 (let ((_hd79767998_ (##car _e79757995_))
                                       (_tl79778000_ (##cdr _e79757995_)))
                                   (let ((_hd8003_ _hd79767998_))
                                     (let ((_body8005_ _tl79778000_))
                                       (if (gx#core-expand-let-bind? _hd8003_)
                                           (let ((_expressions8007_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8003_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8003_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8003_
                                                                _expressions8007_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7968_
                              _body8005_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7968_))))
                                              gx#current-expander-context
                                              (let ((__obj9083
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9083)
                                                  __obj9083))))
                                           (_E79717983_))))))
                               (_E79717983_))))
                       (_E79717983_)))))
            (let () (_E79708010_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7911
      (lambda (_stx7913_ _form7914_)
        (let ((_e79157925_ _stx7913_))
          (let ((_E79177929_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79157925_))))
            (let ((_E79167954_
                   (lambda ()
                     (if (gx#stx-pair? _e79157925_)
                         (let ((_e79187933_ (gx#syntax-e _e79157925_)))
                           (let ((_hd79197936_ (##car _e79187933_))
                                 (_tl79207938_ (##cdr _e79187933_)))
                             (if (gx#stx-pair? _tl79207938_)
                                 (let ((_e79217941_
                                        (gx#syntax-e _tl79207938_)))
                                   (let ((_hd79227944_ (##car _e79217941_))
                                         (_tl79237946_ (##cdr _e79217941_)))
                                     (let ((_hd7949_ _hd79227944_))
                                       (let ((_body7951_ _tl79237946_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7949_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7949_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7914_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7949_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7949_))
                       (cons (gx#core-expand-local-block _stx7913_ _body7951_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7913_))))
                                              gx#current-expander-context
                                              (let ((__obj9084
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9084)
                                                  __obj9084)))
                                             (_E79177929_))))))
                                 (_E79177929_))))
                         (_E79177929_)))))
              (let () (_E79167954_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7961_)
          (let ((_form7963_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7911
             _stx7961_
             _form7963_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9094_
          (let ((_g9093_ (length _g9094_)))
            (cond ((fx= _g9093_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9094_))
                  ((fx= _g9093_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7911
                          _g9094_))
                  (else (error "No clause matching arguments" _g9094_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7910_)
      (gx#core-expand-letrec-values%__opt-lambda7911
       _stx7910_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7867_)
      (if (gx#stx-list? _stx7867_)
          (gx#stx-andmap
           (lambda (_bind7869_)
             (let ((_e78707880_ _bind7869_))
               (let ((_E78727884_ (lambda () '#f)))
                 (let ((_E78717906_
                        (lambda ()
                          (if (gx#stx-pair? _e78707880_)
                              (let ((_e78737888_ (gx#syntax-e _e78707880_)))
                                (let ((_hd78747891_ (##car _e78737888_))
                                      (_tl78757893_ (##cdr _e78737888_)))
                                  (let ((_hd7896_ _hd78747891_))
                                    (if (gx#stx-pair? _tl78757893_)
                                        (let ((_e78767898_
                                               (gx#syntax-e _tl78757893_)))
                                          (let ((_hd78777901_
                                                 (##car _e78767898_))
                                                (_tl78787903_
                                                 (##cdr _e78767898_)))
                                            (if (gx#stx-null? _tl78787903_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7896_)
                                                    (_E78727884_))
                                                (_E78727884_))))
                                        (_E78727884_)))))
                              (_E78727884_)))))
                   (let () (_E78717906_))))))
           _stx7867_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7826_)
      (let ((_e78277837_ _bind7826_))
        (let ((_E78297841_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78277837_))))
          (let ((_E78287863_
                 (lambda ()
                   (if (gx#stx-pair? _e78277837_)
                       (let ((_e78307845_ (gx#syntax-e _e78277837_)))
                         (let ((_hd78317848_ (##car _e78307845_))
                               (_tl78327850_ (##cdr _e78307845_)))
                           (if (gx#stx-pair? _tl78327850_)
                               (let ((_e78337853_ (gx#syntax-e _tl78327850_)))
                                 (let ((_hd78347856_ (##car _e78337853_))
                                       (_tl78357858_ (##cdr _e78337853_)))
                                   (let ((_expr7861_ _hd78347856_))
                                     (if (gx#stx-null? _tl78357858_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7861_)
                                             (_E78297841_))
                                         (_E78297841_)))))
                               (_E78297841_))))
                       (_E78297841_)))))
            (let () (_E78287863_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7785_)
      (let ((_e77867796_ _bind7785_))
        (let ((_E77887800_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77867796_))))
          (let ((_E77877822_
                 (lambda ()
                   (if (gx#stx-pair? _e77867796_)
                       (let ((_e77897804_ (gx#syntax-e _e77867796_)))
                         (let ((_hd77907807_ (##car _e77897804_))
                               (_tl77917809_ (##cdr _e77897804_)))
                           (let ((_hd7812_ _hd77907807_))
                             (if (gx#stx-pair? _tl77917809_)
                                 (let ((_e77927814_
                                        (gx#syntax-e _tl77917809_)))
                                   (let ((_hd77937817_ (##car _e77927814_))
                                         (_tl77947819_ (##cdr _e77927814_)))
                                     (if (gx#stx-null? _tl77947819_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7812_)
                                             (_E77887800_))
                                         (_E77887800_))))
                                 (_E77887800_)))))
                       (_E77887800_)))))
            (let () (_E77877822_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7743_ _expr7744_)
      (let ((_e77457755_ _bind7743_))
        (let ((_E77477759_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77457755_))))
          (let ((_E77467781_
                 (lambda ()
                   (if (gx#stx-pair? _e77457755_)
                       (let ((_e77487763_ (gx#syntax-e _e77457755_)))
                         (let ((_hd77497766_ (##car _e77487763_))
                               (_tl77507768_ (##cdr _e77487763_)))
                           (let ((_hd7771_ _hd77497766_))
                             (if (gx#stx-pair? _tl77507768_)
                                 (let ((_e77517773_
                                        (gx#syntax-e _tl77507768_)))
                                   (let ((_hd77527776_ (##car _e77517773_))
                                         (_tl77537778_ (##cdr _e77517773_)))
                                     (if (gx#stx-null? _tl77537778_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7771_)
                                                   (cons _expr7744_ '()))
                                             (_E77477759_))
                                         (_E77477759_))))
                                 (_E77477759_)))))
                       (_E77477759_)))))
            (let () (_E77467781_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7697_)
      (let ((_e76987708_ _stx7697_))
        (let ((_E77007712_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76987708_))))
          (let ((_E76997739_
                 (lambda ()
                   (if (gx#stx-pair? _e76987708_)
                       (let ((_e77017716_ (gx#syntax-e _e76987708_)))
                         (let ((_hd77027719_ (##car _e77017716_))
                               (_tl77037721_ (##cdr _e77017716_)))
                           (if (gx#stx-pair? _tl77037721_)
                               (let ((_e77047724_ (gx#syntax-e _tl77037721_)))
                                 (let ((_hd77057727_ (##car _e77047724_))
                                       (_tl77067729_ (##cdr _e77047724_)))
                                   (let ((_hd7732_ _hd77057727_))
                                     (let ((_body7734_ _tl77067729_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7732_)
                                           (let ((_expanders7736_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7732_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7732_
                                                   _expanders7736_)
                                                  (gx#core-expand-local-block
                                                   _stx7697_
                                                   _body7734_)))
                                              gx#current-expander-context
                                              (let ((__obj9085
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9085)
                                                  __obj9085))))
                                           (_E77007712_))))))
                               (_E77007712_))))
                       (_E77007712_)))))
            (let () (_E76997739_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7646_)
      (let ((_e76477657_ _stx7646_))
        (let ((_E76497661_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76477657_))))
          (let ((_E76487693_
                 (lambda ()
                   (if (gx#stx-pair? _e76477657_)
                       (let ((_e76507665_ (gx#syntax-e _e76477657_)))
                         (let ((_hd76517668_ (##car _e76507665_))
                               (_tl76527670_ (##cdr _e76507665_)))
                           (if (gx#stx-pair? _tl76527670_)
                               (let ((_e76537673_ (gx#syntax-e _tl76527670_)))
                                 (let ((_hd76547676_ (##car _e76537673_))
                                       (_tl76557678_ (##cdr _e76537673_)))
                                   (let ((_hd7681_ _hd76547676_))
                                     (let ((_body7683_ _tl76557678_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7681_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7681_
                                                 (make-list
                                                  (gx#stx-length _hd7681_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76857688_
                                                          _g76867690_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7503
                                                    _g76857688_
                                                    _g76867690_
                                                    '#t))
                                                 _hd7681_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7681_))
                                                (gx#core-expand-local-block
                                                 _stx7646_
                                                 _body7683_)))
                                            gx#current-expander-context
                                            (let ((__obj9086
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9086)
                                                __obj9086)))
                                           (_E76497661_))))))
                               (_E76497661_))))
                       (_E76497661_)))))
            (let () (_E76487693_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7603_)
      (if (gx#stx-list? _stx7603_)
          (gx#stx-andmap
           (lambda (_bind7605_)
             (let ((_e76067616_ _bind7605_))
               (let ((_E76087620_ (lambda () '#f)))
                 (let ((_E76077642_
                        (lambda ()
                          (if (gx#stx-pair? _e76067616_)
                              (let ((_e76097624_ (gx#syntax-e _e76067616_)))
                                (let ((_hd76107627_ (##car _e76097624_))
                                      (_tl76117629_ (##cdr _e76097624_)))
                                  (let ((_hd7632_ _hd76107627_))
                                    (if (gx#stx-pair? _tl76117629_)
                                        (let ((_e76127634_
                                               (gx#syntax-e _tl76117629_)))
                                          (let ((_hd76137637_
                                                 (##car _e76127634_))
                                                (_tl76147639_
                                                 (##cdr _e76127634_)))
                                            (if (gx#stx-null? _tl76147639_)
                                                (if '#t
                                                    (gx#identifier? _hd7632_)
                                                    (_E76087620_))
                                                (_E76087620_))))
                                        (_E76087620_)))))
                              (_E76087620_)))))
                   (let () (_E76077642_))))))
           _stx7603_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7560_)
      (let ((_e75617571_ _bind7560_))
        (let ((_E75637575_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75617571_))))
          (let ((_E75627599_
                 (lambda ()
                   (if (gx#stx-pair? _e75617571_)
                       (let ((_e75647579_ (gx#syntax-e _e75617571_)))
                         (let ((_hd75657582_ (##car _e75647579_))
                               (_tl75667584_ (##cdr _e75647579_)))
                           (if (gx#stx-pair? _tl75667584_)
                               (let ((_e75677587_ (gx#syntax-e _tl75667584_)))
                                 (let ((_hd75687590_ (##car _e75677587_))
                                       (_tl75697592_ (##cdr _e75677587_)))
                                   (let ((_expr7595_ _hd75687590_))
                                     (if (gx#stx-null? _tl75697592_)
                                         (if '#t
                                             (let ((_g9095_ (gx#core-expand-expression+1
                                                             _expr7595_)))
                                               (begin
                                                 (let ((_g9096_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9095_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9096_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9096_)))
                                                 (let ((_e7597_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9095_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7597_)))
                                             (_E75637575_))
                                         (_E75637575_)))))
                               (_E75637575_))))
                       (_E75637575_)))))
            (let () (_E75627599_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7503
      (lambda (_bind7505_ _e7506_ _rebind?7507_)
        (let ((_e75087518_ _bind7505_))
          (let ((_E75107522_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75087518_))))
            (let ((_E75097544_
                   (lambda ()
                     (if (gx#stx-pair? _e75087518_)
                         (let ((_e75117526_ (gx#syntax-e _e75087518_)))
                           (let ((_hd75127529_ (##car _e75117526_))
                                 (_tl75137531_ (##cdr _e75117526_)))
                             (let ((_id7534_ _hd75127529_))
                               (if (gx#stx-pair? _tl75137531_)
                                   (let ((_e75147536_
                                          (gx#syntax-e _tl75137531_)))
                                     (let ((_hd75157539_ (##car _e75147536_))
                                           (_tl75167541_ (##cdr _e75147536_)))
                                       (if (gx#stx-null? _tl75167541_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7534_
                                                _e7506_
                                                _rebind?7507_)
                                               (_E75107522_))
                                           (_E75107522_))))
                                   (_E75107522_)))))
                         (_E75107522_)))))
              (let () (_E75097544_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7551_ _e7552_)
          (let ((_rebind?7554_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7503
             _bind7551_
             _e7552_
             _rebind?7554_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9098_
          (let ((_g9097_ (length _g9098_)))
            (cond ((fx= _g9097_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9098_))
                  ((fx= _g9097_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7503
                          _g9098_))
                  (else (error "No clause matching arguments" _g9098_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7463_)
      (let ((_e74647474_ _stx7463_))
        (let ((_E74667478_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74647474_))))
          (let ((_E74657500_
                 (lambda ()
                   (if (gx#stx-pair? _e74647474_)
                       (let ((_e74677482_ (gx#syntax-e _e74647474_)))
                         (let ((_hd74687485_ (##car _e74677482_))
                               (_tl74697487_ (##cdr _e74677482_)))
                           (if (gx#stx-pair? _tl74697487_)
                               (let ((_e74707490_ (gx#syntax-e _tl74697487_)))
                                 (let ((_hd74717493_ (##car _e74707490_))
                                       (_tl74727495_ (##cdr _e74707490_)))
                                   (let ((_expr7498_ _hd74717493_))
                                     (if (gx#stx-null? _tl74727495_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7498_)
                                             (_E74667478_))
                                         (_E74667478_)))))
                               (_E74667478_))))
                       (_E74667478_)))))
            (let () (_E74657500_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7422_)
      (let ((_e74237433_ _stx7422_))
        (let ((_E74257437_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74237433_))))
          (let ((_E74247459_
                 (lambda ()
                   (if (gx#stx-pair? _e74237433_)
                       (let ((_e74267441_ (gx#syntax-e _e74237433_)))
                         (let ((_hd74277444_ (##car _e74267441_))
                               (_tl74287446_ (##cdr _e74267441_)))
                           (if (gx#stx-pair? _tl74287446_)
                               (let ((_e74297449_ (gx#syntax-e _tl74287446_)))
                                 (let ((_hd74307452_ (##car _e74297449_))
                                       (_tl74317454_ (##cdr _e74297449_)))
                                   (let ((_e7457_ _hd74307452_))
                                     (if (gx#stx-null? _tl74317454_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7457_)
                                                          '()))
                                              (gx#stx-source _stx7422_))
                                             (_E74257437_))
                                         (_E74257437_)))))
                               (_E74257437_))))
                       (_E74257437_)))))
            (let () (_E74247459_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7381_)
      (let ((_e73827392_ _stx7381_))
        (let ((_E73847396_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73827392_))))
          (let ((_E73837418_
                 (lambda ()
                   (if (gx#stx-pair? _e73827392_)
                       (let ((_e73857400_ (gx#syntax-e _e73827392_)))
                         (let ((_hd73867403_ (##car _e73857400_))
                               (_tl73877405_ (##cdr _e73857400_)))
                           (if (gx#stx-pair? _tl73877405_)
                               (let ((_e73887408_ (gx#syntax-e _tl73877405_)))
                                 (let ((_hd73897411_ (##car _e73887408_))
                                       (_tl73907413_ (##cdr _e73887408_)))
                                   (let ((_e7416_ _hd73897411_))
                                     (if (gx#stx-null? _tl73907413_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7416_)
                                                          '()))
                                              (gx#stx-source _stx7381_))
                                             (_E73847396_))
                                         (_E73847396_)))))
                               (_E73847396_))))
                       (_E73847396_)))))
            (let () (_E73837418_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7338_)
      (let ((_e73397349_ _stx7338_))
        (let ((_E73417353_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73397349_))))
          (let ((_E73407377_
                 (lambda ()
                   (if (gx#stx-pair? _e73397349_)
                       (let ((_e73427357_ (gx#syntax-e _e73397349_)))
                         (let ((_hd73437360_ (##car _e73427357_))
                               (_tl73447362_ (##cdr _e73427357_)))
                           (if (gx#stx-pair? _tl73447362_)
                               (let ((_e73457365_ (gx#syntax-e _tl73447362_)))
                                 (let ((_hd73467368_ (##car _e73457365_))
                                       (_tl73477370_ (##cdr _e73457365_)))
                                   (let ((_rator7373_ _hd73467368_))
                                     (let ((_args7375_ _tl73477370_))
                                       (if (gx#stx-list? _args7375_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7373_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7375_))
                                            (gx#stx-source _stx7338_))
                                           (_E73417353_))))))
                               (_E73417353_))))
                       (_E73417353_)))))
            (let () (_E73407377_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7271_)
      (let ((_e72727288_ _stx7271_))
        (let ((_E72747292_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72727288_))))
          (let ((_E72737334_
                 (lambda ()
                   (if (gx#stx-pair? _e72727288_)
                       (let ((_e72757296_ (gx#syntax-e _e72727288_)))
                         (let ((_hd72767299_ (##car _e72757296_))
                               (_tl72777301_ (##cdr _e72757296_)))
                           (if (gx#stx-pair? _tl72777301_)
                               (let ((_e72787304_ (gx#syntax-e _tl72777301_)))
                                 (let ((_hd72797307_ (##car _e72787304_))
                                       (_tl72807309_ (##cdr _e72787304_)))
                                   (let ((_test7312_ _hd72797307_))
                                     (if (gx#stx-pair? _tl72807309_)
                                         (let ((_e72817314_
                                                (gx#syntax-e _tl72807309_)))
                                           (let ((_hd72827317_
                                                  (##car _e72817314_))
                                                 (_tl72837319_
                                                  (##cdr _e72817314_)))
                                             (let ((_K7322_ _hd72827317_))
                                               (if (gx#stx-pair? _tl72837319_)
                                                   (let ((_e72847324_
                                                          (gx#syntax-e
                                                           _tl72837319_)))
                                                     (let ((_hd72857327_
                                                            (##car _e72847324_))
                                                           (_tl72867329_
                                                            (##cdr _e72847324_)))
                                                       (let ((_E7332_ _hd72857327_))
                                                         (if (gx#stx-null?
                                                              _tl72867329_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7312_)
                                      (cons (gx#core-expand-expression _K7322_)
                                            (cons (gx#core-expand-expression
                                                   _E7332_)
                                                  '()))))
                          (gx#stx-source _stx7271_))
                         (_E72747292_))
                     (_E72747292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72747292_)))))
                                         (_E72747292_)))))
                               (_E72747292_))))
                       (_E72747292_)))))
            (let () (_E72737334_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7230_)
      (let ((_e72317241_ _stx7230_))
        (let ((_E72337245_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72317241_))))
          (let ((_E72327267_
                 (lambda ()
                   (if (gx#stx-pair? _e72317241_)
                       (let ((_e72347249_ (gx#syntax-e _e72317241_)))
                         (let ((_hd72357252_ (##car _e72347249_))
                               (_tl72367254_ (##cdr _e72347249_)))
                           (if (gx#stx-pair? _tl72367254_)
                               (let ((_e72377257_ (gx#syntax-e _tl72367254_)))
                                 (let ((_hd72387260_ (##car _e72377257_))
                                       (_tl72397262_ (##cdr _e72377257_)))
                                   (let ((_id7265_ _hd72387260_))
                                     (if (gx#stx-null? _tl72397262_)
                                         (if (gx#core-runtime-ref? _id7265_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7265_
                                                           _stx7230_)
                                                          '()))
                                              (gx#stx-source _stx7230_))
                                             (_E72337245_))
                                         (_E72337245_)))))
                               (_E72337245_))))
                       (_E72337245_)))))
            (let () (_E72327267_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7176_)
      (let ((_e71777190_ _stx7176_))
        (let ((_E71797194_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71777190_))))
          (let ((_E71787226_
                 (lambda ()
                   (if (gx#stx-pair? _e71777190_)
                       (let ((_e71807198_ (gx#syntax-e _e71777190_)))
                         (let ((_hd71817201_ (##car _e71807198_))
                               (_tl71827203_ (##cdr _e71807198_)))
                           (if (gx#stx-pair? _tl71827203_)
                               (let ((_e71837206_ (gx#syntax-e _tl71827203_)))
                                 (let ((_hd71847209_ (##car _e71837206_))
                                       (_tl71857211_ (##cdr _e71837206_)))
                                   (let ((_id7214_ _hd71847209_))
                                     (if (gx#stx-pair? _tl71857211_)
                                         (let ((_e71867216_
                                                (gx#syntax-e _tl71857211_)))
                                           (let ((_hd71877219_
                                                  (##car _e71867216_))
                                                 (_tl71887221_
                                                  (##cdr _e71867216_)))
                                             (let ((_expr7224_ _hd71877219_))
                                               (if (gx#stx-null? _tl71887221_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7214_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7214_
                             _stx7176_)
                            (cons (gx#core-expand-expression _expr7224_) '())))
                (gx#stx-source _stx7176_))
               (_E71797194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71797194_)))))
                                         (_E71797194_)))))
                               (_E71797194_))))
                       (_E71797194_)))))
            (let () (_E71787226_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7024_)
      (let ((_generate7026_
             (lambda (_body7056_)
               ((letrec ((_lp7058_
                          (lambda (_rest7060_ _ns7061_ _r7062_)
                            (let ((_e70637078_ _rest7060_))
                              (let ((_E70767082_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70637078_))))
                                (let ((_E70727086_
                                       (lambda ()
                                         (if (gx#stx-null? _e70637078_)
                                             (if '#t
                                                 (reverse _r7062_)
                                                 (_E70767082_))
                                             (_E70767082_)))))
                                  (let ((_E70657143_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70637078_)
                                               (let ((_e70737090_
                                                      (gx#syntax-e
                                                       _e70637078_)))
                                                 (let ((_hd70747093_
                                                        (##car _e70737090_))
                                                       (_tl70757095_
                                                        (##cdr _e70737090_)))
                                                   (let ((_hd7098_
                                                          _hd70747093_))
                                                     (let ((_rest7100_
                                                            _tl70757095_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7098_)
                                                               (_lp7058_
                                                                _rest7100_
                                                                _ns7061_
                                                                (cons (cons _hd7098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7061_
                                              (gx#stx-identifier
                                               _hd7098_
                                               _ns7061_
                                               '"#"
                                               _hd7098_)
                                              _hd7098_)
                                          '()))
                              _r7062_))
                       (let ((_e71017111_ _hd7098_))
                         (let ((_E71037115_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e71017111_))))
                           (let ((_E71027139_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71017111_)
                                        (let ((_e71047119_
                                               (gx#syntax-e _e71017111_)))
                                          (let ((_hd71057122_
                                                 (##car _e71047119_))
                                                (_tl71067124_
                                                 (##cdr _e71047119_)))
                                            (let ((_id7127_ _hd71057122_))
                                              (if (gx#stx-pair? _tl71067124_)
                                                  (let ((_e71077129_
                                                         (gx#syntax-e
                                                          _tl71067124_)))
                                                    (let ((_hd71087132_
                                                           (##car _e71077129_))
                                                          (_tl71097134_
                                                           (##cdr _e71077129_)))
                                                      (let ((_eid7137_
                                                             _hd71087132_))
                                                        (if (gx#stx-null?
                                                             _tl71097134_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7127_)
                            (gx#identifier? _eid7137_)
                            '#f)
                        (_lp7058_
                         _rest7100_
                         _ns7061_
                         (cons (cons _id7127_ (cons _eid7137_ '())) _r7062_))
                        (_E71037115_))
                    (_E71037115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71037115_)))))
                                        (_E71037115_)))))
                             (let () (_E71027139_))))))
                   (_E70727086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70727086_)))))
                                    (let ((_E70647172_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70637078_)
                                                 (let ((_e70667147_
                                                        (gx#syntax-e
                                                         _e70637078_)))
                                                   (let ((_hd70677150_
                                                          (##car _e70667147_))
                                                         (_tl70687152_
                                                          (##cdr _e70667147_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70677150_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70687152_)
                                                             (let ((_e70697155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70687152_)))
                       (let ((_hd70707158_ (##car _e70697155_))
                             (_tl70717160_ (##cdr _e70697155_)))
                         (let ((_ns7163_ _hd70707158_))
                           (let ((_rest7165_ _tl70717160_))
                             (if '#t
                                 (let ((_ns7170_
                                        (if (gx#identifier? _ns7163_)
                                            (symbol->string
                                             (gx#stx-e _ns7163_))
                                            (if (let ((_$e7167_
                                                       (gx#stx-string?
                                                        _ns7163_)))
                                                  (if _$e7167_
                                                      _$e7167_
                                                      (gx#stx-false?
                                                       _ns7163_)))
                                                (gx#stx-e _ns7163_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7024_
                                                 _ns7163_)))))
                                   (_lp7058_ _rest7165_ _ns7170_ _r7062_))
                                 (_E70657143_))))))
                     (_E70657143_))
                 (_E70657143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70657143_)))))
                                      (let () (_E70647172_))))))))))
                  _lp7058_)
                _body7056_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70277034_ _stx7024_))
          (let ((_E70297038_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70277034_))))
            (let ((_E70287052_
                   (lambda ()
                     (if (gx#stx-pair? _e70277034_)
                         (let ((_e70307042_ (gx#syntax-e _e70277034_)))
                           (let ((_hd70317045_ (##car _e70307042_))
                                 (_tl70327047_ (##cdr _e70307042_)))
                             (let ((_body7050_ _tl70327047_))
                               (if (gx#stx-list? _body7050_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7026_ _body7050_))
                                   (_E70297038_)))))
                         (_E70297038_)))))
              (let () (_E70287052_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6970_)
      (let ((_e69716984_ _stx6970_))
        (let ((_E69736988_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69716984_))))
          (let ((_E69727020_
                 (lambda ()
                   (if (gx#stx-pair? _e69716984_)
                       (let ((_e69746992_ (gx#syntax-e _e69716984_)))
                         (let ((_hd69756995_ (##car _e69746992_))
                               (_tl69766997_ (##cdr _e69746992_)))
                           (if (gx#stx-pair? _tl69766997_)
                               (let ((_e69777000_ (gx#syntax-e _tl69766997_)))
                                 (let ((_hd69787003_ (##car _e69777000_))
                                       (_tl69797005_ (##cdr _e69777000_)))
                                   (let ((_hd7008_ _hd69787003_))
                                     (if (gx#stx-pair? _tl69797005_)
                                         (let ((_e69807010_
                                                (gx#syntax-e _tl69797005_)))
                                           (let ((_hd69817013_
                                                  (##car _e69807010_))
                                                 (_tl69827015_
                                                  (##cdr _e69807010_)))
                                             (let ((_expr7018_ _hd69817013_))
                                               (if (gx#stx-null? _tl69827015_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7008_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7008_)
                           (cons _expr7018_ '())))
               (_E69736988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69736988_)))))
                                         (_E69736988_)))))
                               (_E69736988_))))
                       (_E69736988_)))))
            (let () (_E69727020_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6916_)
      (let ((_e69176930_ _stx6916_))
        (let ((_E69196934_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69176930_))))
          (let ((_E69186966_
                 (lambda ()
                   (if (gx#stx-pair? _e69176930_)
                       (let ((_e69206938_ (gx#syntax-e _e69176930_)))
                         (let ((_hd69216941_ (##car _e69206938_))
                               (_tl69226943_ (##cdr _e69206938_)))
                           (if (gx#stx-pair? _tl69226943_)
                               (let ((_e69236946_ (gx#syntax-e _tl69226943_)))
                                 (let ((_hd69246949_ (##car _e69236946_))
                                       (_tl69256951_ (##cdr _e69236946_)))
                                   (let ((_hd6954_ _hd69246949_))
                                     (if (gx#stx-pair? _tl69256951_)
                                         (let ((_e69266956_
                                                (gx#syntax-e _tl69256951_)))
                                           (let ((_hd69276959_
                                                  (##car _e69266956_))
                                                 (_tl69286961_
                                                  (##cdr _e69266956_)))
                                             (let ((_expr6964_ _hd69276959_))
                                               (if (gx#stx-null? _tl69286961_)
                                                   (if (gx#identifier?
                                                        _hd6954_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6964_ '())))
               (_E69196934_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69196934_)))))
                                         (_E69196934_)))))
                               (_E69196934_))))
                       (_E69196934_)))))
            (let () (_E69186966_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6862_)
      (let ((_e68636876_ _stx6862_))
        (let ((_E68656880_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68636876_))))
          (let ((_E68646912_
                 (lambda ()
                   (if (gx#stx-pair? _e68636876_)
                       (let ((_e68666884_ (gx#syntax-e _e68636876_)))
                         (let ((_hd68676887_ (##car _e68666884_))
                               (_tl68686889_ (##cdr _e68666884_)))
                           (if (gx#stx-pair? _tl68686889_)
                               (let ((_e68696892_ (gx#syntax-e _tl68686889_)))
                                 (let ((_hd68706895_ (##car _e68696892_))
                                       (_tl68716897_ (##cdr _e68696892_)))
                                   (let ((_id6900_ _hd68706895_))
                                     (if (gx#stx-pair? _tl68716897_)
                                         (let ((_e68726902_
                                                (gx#syntax-e _tl68716897_)))
                                           (let ((_hd68736905_
                                                  (##car _e68726902_))
                                                 (_tl68746907_
                                                  (##cdr _e68726902_)))
                                             (let ((_alias-id6910_
                                                    _hd68736905_))
                                               (if (gx#stx-null? _tl68746907_)
                                                   (if (if (gx#identifier?
                                                            _id6900_)
                                                           (gx#identifier?
                                                            _alias-id6910_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6910_ '())))
               (_E68656880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68656880_)))))
                                         (_E68656880_)))))
                               (_E68656880_))))
                       (_E68656880_)))))
            (let () (_E68646912_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6819_)
      (let ((_e68206830_ _stx6819_))
        (let ((_E68226834_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68206830_))))
          (let ((_E68216858_
                 (lambda ()
                   (if (gx#stx-pair? _e68206830_)
                       (let ((_e68236838_ (gx#syntax-e _e68206830_)))
                         (let ((_hd68246841_ (##car _e68236838_))
                               (_tl68256843_ (##cdr _e68236838_)))
                           (if (gx#stx-pair? _tl68256843_)
                               (let ((_e68266846_ (gx#syntax-e _tl68256843_)))
                                 (let ((_hd68276849_ (##car _e68266846_))
                                       (_tl68286851_ (##cdr _e68266846_)))
                                   (let ((_hd6854_ _hd68276849_))
                                     (let ((_body6856_ _tl68286851_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6854_)
                                               (if (gx#stx-list? _body6856_)
                                                   (not (gx#stx-null?
                                                         _body6856_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6854_)
                                            _body6856_)
                                           (_E68226834_))))))
                               (_E68226834_))))
                       (_E68226834_)))))
            (let () (_E68216858_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6755_)
      (let ((_generate6757_
             (lambda (_clause6787_)
               (let ((_e67886795_ _clause6787_))
                 (let ((_E67906799_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6755_
                           _clause6787_))))
                   (let ((_E67896815_
                          (lambda ()
                            (if (gx#stx-pair? _e67886795_)
                                (let ((_e67916803_ (gx#syntax-e _e67886795_)))
                                  (let ((_hd67926806_ (##car _e67916803_))
                                        (_tl67936808_ (##cdr _e67916803_)))
                                    (let ((_hd6811_ _hd67926806_))
                                      (let ((_body6813_ _tl67936808_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6811_)
                                                (if (gx#stx-list? _body6813_)
                                                    (not (gx#stx-null?
                                                          _body6813_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6811_)
                                                   _body6813_)
                                             (gx#stx-source _clause6787_))
                                            (_E67906799_))))))
                                (_E67906799_)))))
                     (let () (_E67896815_))))))))
        (let ((_e67586765_ _stx6755_))
          (let ((_E67606769_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67586765_))))
            (let ((_E67596783_
                   (lambda ()
                     (if (gx#stx-pair? _e67586765_)
                         (let ((_e67616773_ (gx#syntax-e _e67586765_)))
                           (let ((_hd67626776_ (##car _e67616773_))
                                 (_tl67636778_ (##cdr _e67616773_)))
                             (let ((_clauses6781_ _tl67636778_))
                               (if (gx#stx-list? _clauses6781_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6757_ _clauses6781_))
                                   (_E67606769_)))))
                         (_E67606769_)))))
              (let () (_E67596783_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6654
      (lambda (_stx6656_ _form6657_)
        (let ((_generate6659_
               (lambda (_bind6702_)
                 (let ((_e67036713_ _bind6702_))
                   (let ((_E67056717_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6656_
                             _bind6702_))))
                     (let ((_E67046741_
                            (lambda ()
                              (if (gx#stx-pair? _e67036713_)
                                  (let ((_e67066721_
                                         (gx#syntax-e _e67036713_)))
                                    (let ((_hd67076724_ (##car _e67066721_))
                                          (_tl67086726_ (##cdr _e67066721_)))
                                      (let ((_ids6729_ _hd67076724_))
                                        (if (gx#stx-pair? _tl67086726_)
                                            (let ((_e67096731_
                                                   (gx#syntax-e _tl67086726_)))
                                              (let ((_hd67106734_
                                                     (##car _e67096731_))
                                                    (_tl67116736_
                                                     (##cdr _e67096731_)))
                                                (let ((_expr6739_
                                                       _hd67106734_))
                                                  (if (gx#stx-null?
                                                       _tl67116736_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6729_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6729_)
                        (cons _expr6739_ '()))
                  (_E67056717_))
              (_E67056717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67056717_)))))
                                  (_E67056717_)))))
                       (let () (_E67046741_))))))))
          (let ((_e66606670_ _stx6656_))
            (let ((_E66626674_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e66606670_))))
              (let ((_E66616698_
                     (lambda ()
                       (if (gx#stx-pair? _e66606670_)
                           (let ((_e66636678_ (gx#syntax-e _e66606670_)))
                             (let ((_hd66646681_ (##car _e66636678_))
                                   (_tl66656683_ (##cdr _e66636678_)))
                               (if (gx#stx-pair? _tl66656683_)
                                   (let ((_e66666686_
                                          (gx#syntax-e _tl66656683_)))
                                     (let ((_hd66676689_ (##car _e66666686_))
                                           (_tl66686691_ (##cdr _e66666686_)))
                                       (let ((_hd6694_ _hd66676689_))
                                         (let ((_body6696_ _tl66686691_))
                                           (if (if (gx#stx-list? _hd6694_)
                                                   (if (gx#stx-list?
                                                        _body6696_)
                                                       (not (gx#stx-null?
                                                             _body6696_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6657_
                                                (gx#stx-map1
                                                 _generate6659_
                                                 _hd6694_)
                                                _body6696_)
                                               (_E66626674_))))))
                                   (_E66626674_))))
                           (_E66626674_)))))
                (let () (_E66616698_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6748_)
          (let ((_form6750_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6654
             _stx6748_
             _form6750_))))
      (define gx#macro-expand-let-values
        (lambda _g9100_
          (let ((_g9099_ (length _g9100_)))
            (cond ((fx= _g9099_ 1)
                   (apply gx#macro-expand-let-values__0 _g9100_))
                  ((fx= _g9099_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6654 _g9100_))
                  (else (error "No clause matching arguments" _g9100_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6653_)
      (gx#macro-expand-let-values__opt-lambda6654 _stx6653_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6651_)
      (gx#macro-expand-let-values__opt-lambda6654
       _stx6651_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6542_)
      (let ((_e65436569_ _stx6542_))
        (let ((_E65556573_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65436569_))))
          (let ((_E65456615_
                 (lambda ()
                   (if (gx#stx-pair? _e65436569_)
                       (let ((_e65566577_ (gx#syntax-e _e65436569_)))
                         (let ((_hd65576580_ (##car _e65566577_))
                               (_tl65586582_ (##cdr _e65566577_)))
                           (if (gx#stx-pair? _tl65586582_)
                               (let ((_e65596585_ (gx#syntax-e _tl65586582_)))
                                 (let ((_hd65606588_ (##car _e65596585_))
                                       (_tl65616590_ (##cdr _e65596585_)))
                                   (let ((_test6593_ _hd65606588_))
                                     (if (gx#stx-pair? _tl65616590_)
                                         (let ((_e65626595_
                                                (gx#syntax-e _tl65616590_)))
                                           (let ((_hd65636598_
                                                  (##car _e65626595_))
                                                 (_tl65646600_
                                                  (##cdr _e65626595_)))
                                             (let ((_K6603_ _hd65636598_))
                                               (if (gx#stx-pair? _tl65646600_)
                                                   (let ((_e65656605_
                                                          (gx#syntax-e
                                                           _tl65646600_)))
                                                     (let ((_hd65666608_
                                                            (##car _e65656605_))
                                                           (_tl65676610_
                                                            (##cdr _e65656605_)))
                                                       (let ((_E6613_ _hd65666608_))
                                                         (if (gx#stx-null?
                                                              _tl65676610_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6593_ _K6603_ _E6613_)
                         (_E65556573_))
                     (_E65556573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65556573_)))))
                                         (_E65556573_)))))
                               (_E65556573_))))
                       (_E65556573_)))))
            (let ((_E65446647_
                   (lambda ()
                     (if (gx#stx-pair? _e65436569_)
                         (let ((_e65466619_ (gx#syntax-e _e65436569_)))
                           (let ((_hd65476622_ (##car _e65466619_))
                                 (_tl65486624_ (##cdr _e65466619_)))
                             (if (gx#stx-pair? _tl65486624_)
                                 (let ((_e65496627_
                                        (gx#syntax-e _tl65486624_)))
                                   (let ((_hd65506630_ (##car _e65496627_))
                                         (_tl65516632_ (##cdr _e65496627_)))
                                     (let ((_test6635_ _hd65506630_))
                                       (if (gx#stx-pair? _tl65516632_)
                                           (let ((_e65526637_
                                                  (gx#syntax-e _tl65516632_)))
                                             (let ((_hd65536640_
                                                    (##car _e65526637_))
                                                   (_tl65546642_
                                                    (##cdr _e65526637_)))
                                               (let ((_K6645_ _hd65536640_))
                                                 (if (gx#stx-null?
                                                      _tl65546642_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6635_
                                                          _K6645_
                                                          '#!void)
                                                         (_E65456615_))
                                                     (_E65456615_)))))
                                           (_E65456615_)))))
                                 (_E65456615_))))
                         (_E65456615_)))))
              (let () (_E65446647_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6530_ _yid6531_)
      (let ((_xe6533_ (gx#resolve-identifier__0 _xid6530_))
            (_ye6534_ (gx#resolve-identifier__0 _yid6531_)))
        (if (if _xe6533_ _ye6534_ '#f)
            (let ((_$e6536_ (eq? _xe6533_ _ye6534_)))
              (if _$e6536_
                  _$e6536_
                  (if (##structure-instance-of? _xe6533_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6534_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6533_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6534_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6539_ _xe6533_)) (if _$e6539_ _$e6539_ _ye6534_))
                '#f
                (gx#stx-eq? _xid6530_ _yid6531_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6514_ _yid6515_)
      (let ((_context6517_
             (lambda (_e6528_)
               (if (##structure-direct-instance-of?
                    _e6528_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6528_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6518_
               (lambda (_e6526_)
                 (if (symbol? _e6526_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6526_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6526_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6526_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6519_
                 (lambda (_e6524_)
                   (if (symbol? _e6524_)
                       _e6524_
                       (gx#syntax-local-unwrap _e6524_)))))
            (let ((_x6521_ (_unwrap6519_ _xid6514_))
                  (_y6522_ (_unwrap6519_ _yid6515_)))
              (if (gx#stx-eq? _x6521_ _y6522_)
                  (if (eq? (_context6517_ _x6521_) (_context6517_ _y6522_))
                      (andmap eq? (_marks6518_ _x6521_) (_marks6518_ _y6522_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6512_)
      (if (gx#identifier? _stx6512_) (gx#core-identifier=? _stx6512_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6510_)
      (if (gx#identifier? _stx6510_)
          (gx#core-identifier=? _stx6510_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6508_)
      (if (gx#identifier? _x6508_)
          (if (not (gx#underscore? _x6508_)) _x6508_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6452
      (lambda (_stx6454_ _where6455_)
        ((letrec ((_lp6457_
                   (lambda (_rest6459_)
                     (let ((_rest64606468_ _rest6459_))
                       (let ((_E64636472_
                              (lambda ()
                                (error '"No clause matching" _rest64606468_))))
                         (let ((_else64626476_ (lambda () '#t)))
                           (let ((_K64646486_
                                  (lambda (_rest6479_ _hd6480_)
                                    (if (not (gx#identifier? _hd6480_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6455_
                                         _hd6480_)
                                        (if (find (lambda (_g64816483_)
                                                    (gx#bound-identifier=?
                                                     _g64816483_
                                                     _hd6480_))
                                                  _rest6479_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6455_
                                             _hd6480_)
                                            (_lp6457_ _rest6479_))))))
                             (if (##pair? _rest64606468_)
                                 (let ((_hd64656489_ (##car _rest64606468_))
                                       (_tl64666491_ (##cdr _rest64606468_)))
                                   (let ((_hd6494_ _hd64656489_))
                                     (let ((_rest6496_ _tl64666491_))
                                       (_K64646486_ _rest6496_ _hd6494_))))
                                 (_else64626476_)))))))))
           _lp6457_)
         (gx#syntax->list _stx6454_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6501_)
          (let ((_where6503_ _stx6501_))
            (gx#check-duplicate-identifiers__opt-lambda6452
             _stx6501_
             _where6503_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9102_
          (let ((_g9101_ (length _g9102_)))
            (cond ((fx= _g9101_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9102_))
                  ((fx= _g9101_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6452
                          _g9102_))
                  (else (error "No clause matching arguments" _g9102_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6446_)
      (gx#stx-andmap
       (lambda (_x6448_)
         (let ((_$e6450_ (gx#identifier? _x6448_)))
           (if _$e6450_ _$e6450_ (gx#stx-false? _x6448_))))
       _stx6446_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6408
      (lambda (_stx6410_ _rebind?6411_ _phi6412_ _ctx6413_)
        (gx#stx-for-each1
         (lambda (_id6415_)
           (if (gx#identifier? _id6415_)
               (gx#core-bind-runtime!__opt-lambda6344
                _id6415_
                _rebind?6411_
                _phi6412_
                _ctx6413_)
               '#!void))
         _stx6410_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6420_)
          (let ((_rebind?6422_ '#f))
            (let ((_phi6424_ (gx#current-expander-phi)))
              (let ((_ctx6426_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6408
                 _stx6420_
                 _rebind?6422_
                 _phi6424_
                 _ctx6426_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6428_ _rebind?6429_)
          (let ((_phi6431_ (gx#current-expander-phi)))
            (let ((_ctx6433_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6408
               _stx6428_
               _rebind?6429_
               _phi6431_
               _ctx6433_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6435_ _rebind?6436_ _phi6437_)
          (let ((_ctx6439_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6408
             _stx6435_
             _rebind?6436_
             _phi6437_
             _ctx6439_))))
      (define gx#core-bind-values!
        (lambda _g9104_
          (let ((_g9103_ (length _g9104_)))
            (cond ((fx= _g9103_ 1) (apply gx#core-bind-values!__0 _g9104_))
                  ((fx= _g9103_ 2) (apply gx#core-bind-values!__1 _g9104_))
                  ((fx= _g9103_ 3) (apply gx#core-bind-values!__2 _g9104_))
                  ((fx= _g9103_ 4)
                   (apply gx#core-bind-values!__opt-lambda6408 _g9104_))
                  (else (error "No clause matching arguments" _g9104_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6405_)
      (gx#stx-map1
       (lambda (_x6407_)
         (if (gx#identifier? _x6407_) (gx#core-quote-syntax__0 _x6407_) '#f))
       _stx6405_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6398_)
      (if (gx#identifier? _stx6398_)
          (let ((_bind6400_ (gx#resolve-identifier__0 _stx6398_)))
            (let ((_$e6402_ (not _bind6400_)))
              (if _$e6402_
                  _$e6402_
                  (##structure-instance-of?
                   _bind6400_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6387_ _form6388_)
      (let ((_bind6390_ (gx#resolve-identifier__0 _id6387_)))
        (if (##structure-instance-of? _bind6390_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6387_)
            (if (not _bind6390_)
                (if (let ((_$e6392_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6392_
                          _$e6392_
                          (let ((_$e6395_
                                 (gx#core-context-rebind?__opt-lambda4261
                                  (gx#core-context-top__0))))
                            (if _$e6395_
                                _$e6395_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6387_))))))
                    (gx#core-quote-syntax__0 _id6387_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6388_
                     _id6387_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6388_
                 _id6387_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6344
      (lambda (_id6346_ _rebind?6347_ _phi6348_ _ctx6349_)
        (let ((_key6351_ (gx#core-identifier-key _id6346_)))
          (let ((_eid6353_
                 (gx#make-binding-id__opt-lambda6111
                  _key6351_
                  '#f
                  _phi6348_
                  _ctx6349_)))
            (let ((_bind6355_
                   (if (##structure-instance-of?
                        _ctx6349_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6353_
                        _key6351_
                        _phi6348_
                        _ctx6349_)
                       (if (##structure-instance-of?
                            _ctx6349_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6353_
                            _key6351_
                            _phi6348_)
                           (if (##structure-instance-of?
                                _ctx6349_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6353_
                                _key6351_
                                _phi6348_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6353_
                                _key6351_
                                _phi6348_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4708
                 _id6346_
                 _bind6355_
                 _rebind?6347_
                 _phi6348_
                 _ctx6349_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6361_)
          (let ((_rebind?6363_ '#f))
            (let ((_phi6365_ (gx#current-expander-phi)))
              (let ((_ctx6367_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6344
                 _id6361_
                 _rebind?6363_
                 _phi6365_
                 _ctx6367_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6369_ _rebind?6370_)
          (let ((_phi6372_ (gx#current-expander-phi)))
            (let ((_ctx6374_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6344
               _id6369_
               _rebind?6370_
               _phi6372_
               _ctx6374_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6376_ _rebind?6377_ _phi6378_)
          (let ((_ctx6380_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6344
             _id6376_
             _rebind?6377_
             _phi6378_
             _ctx6380_))))
      (define gx#core-bind-runtime!
        (lambda _g9106_
          (let ((_g9105_ (length _g9106_)))
            (cond ((fx= _g9105_ 1) (apply gx#core-bind-runtime!__0 _g9106_))
                  ((fx= _g9105_ 2) (apply gx#core-bind-runtime!__1 _g9106_))
                  ((fx= _g9105_ 3) (apply gx#core-bind-runtime!__2 _g9106_))
                  ((fx= _g9105_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6344 _g9106_))
                  (else (error "No clause matching arguments" _g9106_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6299
      (lambda (_id6301_ _eid6302_ _rebind?6303_ _phi6304_ _ctx6305_)
        (let ((_key6307_ (gx#core-identifier-key _id6301_)))
          (let ((_bind6309_
                 (if (##structure-instance-of? _ctx6305_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6302_
                      _key6307_
                      _phi6304_
                      _ctx6305_)
                     (if (##structure-instance-of?
                          _ctx6305_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6302_
                          _key6307_
                          _phi6304_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6302_
                          _key6307_
                          _phi6304_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4708
               _id6301_
               _bind6309_
               _rebind?6303_
               _phi6304_
               _ctx6305_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6315_ _eid6316_)
          (let ((_rebind?6318_ '#f))
            (let ((_phi6320_ (gx#current-expander-phi)))
              (let ((_ctx6322_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6299
                 _id6315_
                 _eid6316_
                 _rebind?6318_
                 _phi6320_
                 _ctx6322_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6324_ _eid6325_ _rebind?6326_)
          (let ((_phi6328_ (gx#current-expander-phi)))
            (let ((_ctx6330_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6299
               _id6324_
               _eid6325_
               _rebind?6326_
               _phi6328_
               _ctx6330_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6332_ _eid6333_ _rebind?6334_ _phi6335_)
          (let ((_ctx6337_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6299
             _id6332_
             _eid6333_
             _rebind?6334_
             _phi6335_
             _ctx6337_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9108_
          (let ((_g9107_ (length _g9108_)))
            (cond ((fx= _g9107_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9108_))
                  ((fx= _g9107_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9108_))
                  ((fx= _g9107_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9108_))
                  ((fx= _g9107_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6299
                          _g9108_))
                  (else (error "No clause matching arguments" _g9108_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6259
      (lambda (_id6261_ _eid6262_ _rebind?6263_ _phi6264_ _ctx6265_)
        (gx#bind-identifier!__opt-lambda4708
         _id6261_
         (##structure
          gx#extern-binding::t
          _eid6262_
          (gx#core-identifier-key _id6261_)
          _phi6264_)
         _rebind?6263_
         _phi6264_
         _ctx6265_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6270_ _eid6271_)
          (let ((_rebind?6273_ '#f))
            (let ((_phi6275_ (gx#current-expander-phi)))
              (let ((_ctx6277_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6259
                 _id6270_
                 _eid6271_
                 _rebind?6273_
                 _phi6275_
                 _ctx6277_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6279_ _eid6280_ _rebind?6281_)
          (let ((_phi6283_ (gx#current-expander-phi)))
            (let ((_ctx6285_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6259
               _id6279_
               _eid6280_
               _rebind?6281_
               _phi6283_
               _ctx6285_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6287_ _eid6288_ _rebind?6289_ _phi6290_)
          (let ((_ctx6292_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6259
             _id6287_
             _eid6288_
             _rebind?6289_
             _phi6290_
             _ctx6292_))))
      (define gx#core-bind-extern!
        (lambda _g9110_
          (let ((_g9109_ (length _g9110_)))
            (cond ((fx= _g9109_ 2) (apply gx#core-bind-extern!__0 _g9110_))
                  ((fx= _g9109_ 3) (apply gx#core-bind-extern!__1 _g9110_))
                  ((fx= _g9109_ 4) (apply gx#core-bind-extern!__2 _g9110_))
                  ((fx= _g9109_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6259 _g9110_))
                  (else (error "No clause matching arguments" _g9110_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6213
      (lambda (_id6215_ _e6216_ _rebind?6217_ _phi6218_ _ctx6219_)
        (gx#bind-identifier!__opt-lambda4708
         _id6215_
         (let ((_key6224_ (gx#core-identifier-key _id6215_))
               (_e6225_ (if (let ((_$e6221_
                                   (##structure-instance-of?
                                    _e6216_
                                    'gx#expander::t)))
                              (if _$e6221_
                                  _$e6221_
                                  (##structure-instance-of?
                                   _e6216_
                                   'gx#expander-context::t)))
                            _e6216_
                            (##structure
                             gx#user-expander::t
                             _e6216_
                             _ctx6219_
                             _phi6218_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6111
             _key6224_
             '#t
             _phi6218_
             _ctx6219_)
            _key6224_
            _phi6218_
            _e6225_))
         _rebind?6217_
         _phi6218_
         _ctx6219_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6230_ _e6231_)
          (let ((_rebind?6233_ '#f))
            (let ((_phi6235_ (gx#current-expander-phi)))
              (let ((_ctx6237_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6213
                 _id6230_
                 _e6231_
                 _rebind?6233_
                 _phi6235_
                 _ctx6237_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6239_ _e6240_ _rebind?6241_)
          (let ((_phi6243_ (gx#current-expander-phi)))
            (let ((_ctx6245_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6213
               _id6239_
               _e6240_
               _rebind?6241_
               _phi6243_
               _ctx6245_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6247_ _e6248_ _rebind?6249_ _phi6250_)
          (let ((_ctx6252_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6213
             _id6247_
             _e6248_
             _rebind?6249_
             _phi6250_
             _ctx6252_))))
      (define gx#core-bind-syntax!
        (lambda _g9112_
          (let ((_g9111_ (length _g9112_)))
            (cond ((fx= _g9111_ 2) (apply gx#core-bind-syntax!__0 _g9112_))
                  ((fx= _g9111_ 3) (apply gx#core-bind-syntax!__1 _g9112_))
                  ((fx= _g9111_ 4) (apply gx#core-bind-syntax!__2 _g9112_))
                  ((fx= _g9111_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6213 _g9112_))
                  (else (error "No clause matching arguments" _g9112_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6196
      (lambda (_id6198_ _e6199_ _rebind?6200_)
        (gx#core-bind-syntax!__opt-lambda6213
         _id6198_
         _e6199_
         _rebind?6200_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6205_ _e6206_)
          (let ((_rebind?6208_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6196
             _id6205_
             _e6206_
             _rebind?6208_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9114_
          (let ((_g9113_ (length _g9114_)))
            (cond ((fx= _g9113_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9114_))
                  ((fx= _g9113_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6196 _g9114_))
                  (else (error "No clause matching arguments" _g9114_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6154
      (lambda (_id6156_ _alias-id6157_ _rebind?6158_ _phi6159_ _ctx6160_)
        (gx#bind-identifier!__opt-lambda4708
         _id6156_
         (let ((_key6162_ (gx#core-identifier-key _id6156_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6111
             _key6162_
             '#t
             _phi6159_
             _ctx6160_)
            _key6162_
            _phi6159_
            _alias-id6157_))
         _rebind?6158_
         _phi6159_
         _ctx6160_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6167_ _alias-id6168_)
          (let ((_rebind?6170_ '#f))
            (let ((_phi6172_ (gx#current-expander-phi)))
              (let ((_ctx6174_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda6154
                 _id6167_
                 _alias-id6168_
                 _rebind?6170_
                 _phi6172_
                 _ctx6174_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6176_ _alias-id6177_ _rebind?6178_)
          (let ((_phi6180_ (gx#current-expander-phi)))
            (let ((_ctx6182_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda6154
               _id6176_
               _alias-id6177_
               _rebind?6178_
               _phi6180_
               _ctx6182_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6184_ _alias-id6185_ _rebind?6186_ _phi6187_)
          (let ((_ctx6189_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6154
             _id6184_
             _alias-id6185_
             _rebind?6186_
             _phi6187_
             _ctx6189_))))
      (define gx#core-bind-alias!
        (lambda _g9116_
          (let ((_g9115_ (length _g9116_)))
            (cond ((fx= _g9115_ 2) (apply gx#core-bind-alias!__0 _g9116_))
                  ((fx= _g9115_ 3) (apply gx#core-bind-alias!__1 _g9116_))
                  ((fx= _g9115_ 4) (apply gx#core-bind-alias!__2 _g9116_))
                  ((fx= _g9115_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6154 _g9116_))
                  (else (error "No clause matching arguments" _g9116_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6111
      (lambda (_key6113_ _syntax?6114_ _phi6115_ _ctx6116_)
        (if (uninterned-symbol? _key6113_)
            (gensym 'L)
            (if (pair? _key6113_)
                (gensym (car _key6113_))
                (if (##structure-instance-of? _ctx6116_ 'gx#top-context::t)
                    (let ((_ns6118_
                           (gx#core-context-namespace__opt-lambda4244
                            _ctx6116_)))
                      (if (if (fxzero? _phi6115_) (not _syntax?6114_) '#f)
                          (if _ns6118_
                              (make-symbol _ns6118_ '"#" _key6113_)
                              _key6113_)
                          (if _syntax?6114_
                              (make-symbol
                               (let ((_$e6120_ _ns6118_))
                                 (if _$e6120_ _$e6120_ '""))
                               '"[:"
                               (number->string _phi6115_)
                               '":]#"
                               _key6113_)
                              (make-symbol
                               (let ((_$e6123_ _ns6118_))
                                 (if _$e6123_ _$e6123_ '""))
                               '"["
                               (number->string _phi6115_)
                               '"]#"
                               _key6113_))))
                    (gensym _key6113_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6129_)
          (let ((_syntax?6131_ '#f))
            (let ((_phi6133_ (gx#current-expander-phi)))
              (let ((_ctx6135_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda6111
                 _key6129_
                 _syntax?6131_
                 _phi6133_
                 _ctx6135_))))))
      (define gx#make-binding-id__1
        (lambda (_key6137_ _syntax?6138_)
          (let ((_phi6140_ (gx#current-expander-phi)))
            (let ((_ctx6142_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda6111
               _key6137_
               _syntax?6138_
               _phi6140_
               _ctx6142_)))))
      (define gx#make-binding-id__2
        (lambda (_key6144_ _syntax?6145_ _phi6146_)
          (let ((_ctx6148_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6111
             _key6144_
             _syntax?6145_
             _phi6146_
             _ctx6148_))))
      (define gx#make-binding-id
        (lambda _g9118_
          (let ((_g9117_ (length _g9118_)))
            (cond ((fx= _g9117_ 1) (apply gx#make-binding-id__0 _g9118_))
                  ((fx= _g9117_ 2) (apply gx#make-binding-id__1 _g9118_))
                  ((fx= _g9117_ 3) (apply gx#make-binding-id__2 _g9118_))
                  ((fx= _g9117_ 4)
                   (apply gx#make-binding-id__opt-lambda6111 _g9118_))
                  (else (error "No clause matching arguments" _g9118_)))))))))
