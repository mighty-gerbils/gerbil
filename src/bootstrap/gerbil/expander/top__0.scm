(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9079_)
      (letrec ((_expand-special9081_
                (lambda (_hd9083_ _K9084_ _rest9085_ _r9086_)
                  (_K9084_ _rest9085_
                           (cons (gx#core-expand-top _hd9083_) _r9086_)))))
        (gx#core-expand-block__0 _stx9079_ _expand-special9081_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8832_)
      (letrec ((_expand-special8834_
                (lambda (_hd8954_ _K8955_ _rest8956_ _r8957_)
                  (let* ((_K8961_ (lambda (_e8959_)
                                    (_K8955_ _rest8956_
                                             (cons _e8959_ _r8957_))))
                         (_e89628991_ _hd8954_)
                         (_E89868995_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89628991_)))
                         (_E89829007_
                          (lambda ()
                            (if (gx#stx-pair? _e89628991_)
                                (let ((_e89878999_ (gx#syntax-e _e89628991_)))
                                  (let ((_hd89889002_ (##car _e89878999_))
                                        (_tl89899004_ (##cdr _e89878999_)))
                                    (if (if (gx#identifier? _hd89889002_)
                                            (gx#core-identifier=?
                                             _hd89889002_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K8961_ (gx#core-expand-define-runtime%
                                                      _hd8954_))
                                            (_E89868995_))
                                        (_E89868995_))))
                                (_E89868995_))))
                         (_E89789019_
                          (lambda ()
                            (if (gx#stx-pair? _e89628991_)
                                (let ((_e89839011_ (gx#syntax-e _e89628991_)))
                                  (let ((_hd89849014_ (##car _e89839011_))
                                        (_tl89859016_ (##cdr _e89839011_)))
                                    (if (if (gx#identifier? _hd89849014_)
                                            (gx#core-identifier=?
                                             _hd89849014_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K8961_ (gx#core-expand-define-alias%
                                                      _hd8954_))
                                            (_E89829007_))
                                        (_E89829007_))))
                                (_E89829007_))))
                         (_E89689031_
                          (lambda ()
                            (if (gx#stx-pair? _e89628991_)
                                (let ((_e89799023_ (gx#syntax-e _e89628991_)))
                                  (let ((_hd89809026_ (##car _e89799023_))
                                        (_tl89819028_ (##cdr _e89799023_)))
                                    (if (if (gx#identifier? _hd89809026_)
                                            (gx#core-identifier=?
                                             _hd89809026_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8961_ (gx#core-expand-define-syntax%
                                                      _hd8954_))
                                            (_E89789019_))
                                        (_E89789019_))))
                                (_E89789019_))))
                         (_E89649063_
                          (lambda ()
                            (if (gx#stx-pair? _e89628991_)
                                (let ((_e89699035_ (gx#syntax-e _e89628991_)))
                                  (let ((_hd89709038_ (##car _e89699035_))
                                        (_tl89719040_ (##cdr _e89699035_)))
                                    (if (if (gx#identifier? _hd89709038_)
                                            (gx#core-identifier=?
                                             _hd89709038_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl89719040_)
                                            (let ((_e89729043_
                                                   (gx#syntax-e _tl89719040_)))
                                              (let ((_hd89739046_
                                                     (##car _e89729043_))
                                                    (_tl89749048_
                                                     (##cdr _e89729043_)))
                                                (let ((_hd-bind9051_
                                                       _hd89739046_))
                                                  (if (gx#stx-pair?
                                                       _tl89749048_)
                                                      (let ((_e89759053_
                                                             (gx#syntax-e
                                                              _tl89749048_)))
                                                        (let ((_hd89769056_
                                                               (##car _e89759053_))
                                                              (_tl89779058_
                                                               (##cdr _e89759053_)))
                                                          (let ((_expr9061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd89769056_))
                    (if (gx#stx-null? _tl89779058_)
                        (if (gx#core-bind-values? _hd-bind9051_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9051_)
                              (_K8961_ _hd8954_))
                            (_E89689031_))
                        (_E89689031_)))))
              (_E89689031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E89689031_))
                                        (_E89689031_))))
                                (_E89689031_))))
                         (_E89639075_
                          (lambda ()
                            (if (gx#stx-pair? _e89628991_)
                                (let ((_e89659067_ (gx#syntax-e _e89628991_)))
                                  (let ((_hd89669070_ (##car _e89659067_))
                                        (_tl89679072_ (##cdr _e89659067_)))
                                    (if (if (gx#identifier? _hd89669070_)
                                            (gx#core-identifier=?
                                             _hd89669070_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8961_ (gx#core-expand-begin-syntax%
                                                      _hd8954_))
                                            (_E89649063_))
                                        (_E89649063_))))
                                (_E89649063_)))))
                    (_E89639075_))))
               (_eval-body8835_
                (lambda (_rbody8843_)
                  (let _lp8845_ ((_rest8847_ _rbody8843_)
                                 (_body8848_ '())
                                 (_ebody8849_ '()))
                    (let* ((_rest88508858_ _rest8847_)
                           (_E88538862_
                            (lambda ()
                              (error '"No clause matching" _rest88508858_)))
                           (_else88528866_
                            (lambda ()
                              (values _body8848_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody8849_)
                                        (gx#stx-source _stx8832_))))))
                           (_K88548942_
                            (lambda (_rest8869_ _hd8870_)
                              (let* ((_e88718888_ _hd8870_)
                                     (_E88838892_
                                      (lambda ()
                                        (_lp8845_
                                         _rest8869_
                                         (cons _hd8870_ _body8848_)
                                         (cons _hd8870_ _ebody8849_))))
                                     (_E88738904_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88718888_)
                                            (let ((_e88848896_
                                                   (gx#syntax-e _e88718888_)))
                                              (let ((_hd88858899_
                                                     (##car _e88848896_))
                                                    (_tl88868901_
                                                     (##cdr _e88848896_)))
                                                (if (if (gx#identifier?
                                                         _hd88858899_)
                                                        (gx#core-identifier=?
                                                         _hd88858899_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp8845_
                                                         _rest8869_
                                                         (cons _hd8870_
                                                               _body8848_)
                                                         _ebody8849_)
                                                        (_E88838892_))
                                                    (_E88838892_))))
                                            (_E88838892_))))
                                     (_E88728938_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88718888_)
                                            (let ((_e88748908_
                                                   (gx#syntax-e _e88718888_)))
                                              (let ((_hd88758911_
                                                     (##car _e88748908_))
                                                    (_tl88768913_
                                                     (##cdr _e88748908_)))
                                                (if (if (gx#identifier?
                                                         _hd88758911_)
                                                        (gx#core-identifier=?
                                                         _hd88758911_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl88768913_)
                                                        (let ((_e88778916_
                                                               (gx#syntax-e
                                                                _tl88768913_)))
                                                          (let ((_hd88788919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88778916_))
                        (_tl88798921_ (##cdr _e88778916_)))
                    (let ((_hd-bind8924_ _hd88788919_))
                      (if (gx#stx-pair? _tl88798921_)
                          (let ((_e88808926_ (gx#syntax-e _tl88798921_)))
                            (let ((_hd88818929_ (##car _e88808926_))
                                  (_tl88828931_ (##cdr _e88808926_)))
                              (let ((_expr8934_ _hd88818929_))
                                (if (gx#stx-null? _tl88828931_)
                                    (if '#t
                                        (let ((_ehd8936_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind8924_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr8934_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd8870_))))
                                          (_lp8845_
                                           _rest8869_
                                           (cons _ehd8936_ _body8848_)
                                           (cons _ehd8936_ _ebody8849_)))
                                        (_E88738904_))
                                    (_E88738904_)))))
                          (_E88738904_)))))
                (_E88738904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88738904_))))
                                            (_E88738904_)))))
                                (_E88728938_)))))
                      (if (##pair? _rest88508858_)
                          (let ((_hd88558945_ (##car _rest88508858_))
                                (_tl88568947_ (##cdr _rest88508858_)))
                            (let* ((_hd8950_ _hd88558945_)
                                   (_rest8952_ _tl88568947_))
                              (_K88548942_ _rest8952_ _hd8950_)))
                          (_else88528866_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody8838_
                   (gx#core-expand-block__1
                    _stx8832_
                    _expand-special8834_
                    '#f))
                  (_g9093_ (_eval-body8835_ _rbody8838_)))
             (begin
               (let ((_g9094_ (values-count _g9093_)))
                 (if (not (fx= _g9094_ 2))
                     (error "Context expects 2 values" _g9094_)))
               (let ((_expanded-body8840_ (values-ref _g9093_ 0))
                     (_value8841_ (values-ref _g9093_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body8840_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value8841_ '())))
                  (gx#stx-source _stx8832_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8802_)
      (let* ((_e88038810_ _stx8802_)
             (_E88058814_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88038810_)))
             (_E88048828_
              (lambda ()
                (if (gx#stx-pair? _e88038810_)
                    (let ((_e88068818_ (gx#syntax-e _e88038810_)))
                      (let ((_hd88078821_ (##car _e88068818_))
                            (_tl88088823_ (##cdr _e88068818_)))
                        (let ((_body8826_ _tl88088823_))
                          (if (gx#stx-list? _body8826_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body8826_)
                               (gx#stx-source _stx8802_))
                              (_E88058814_)))))
                    (_E88058814_)))))
        (_E88048828_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8800_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8800_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8788_)
      (let* ((_e87898792_ _stx8788_)
             (_E87908796_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87898792_))))
        (_E87908796_))))
  (define gx#core-expand-local-block
    (lambda (_stx8512_ _body8513_)
      (letrec ((_expand-special8515_
                (lambda (_hd8783_ _K8784_ _rest8785_ _r8786_)
                  (_K8784_ '()
                           (cons (_expand-internal8516_ _hd8783_ _rest8785_)
                                 _r8786_))))
               (_expand-internal8516_
                (lambda (_hd8779_ _rest8780_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal8518_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd8779_ _rest8780_)
                        (gx#stx-source _stx8512_))
                       _expand-internal-special8517_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj9087 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj9087)
                       __obj9087)))))
               (_expand-internal-special8517_
                (lambda (_hd8674_ _K8675_ _rest8676_ _r8677_)
                  (let* ((_e86788703_ _hd8674_)
                         (_E86988707_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86788703_)))
                         (_E86948719_
                          (lambda ()
                            (if (gx#stx-pair? _e86788703_)
                                (let ((_e86998711_ (gx#syntax-e _e86788703_)))
                                  (let ((_hd87008714_ (##car _e86998711_))
                                        (_tl87018716_ (##cdr _e86998711_)))
                                    (if (if (gx#identifier? _hd87008714_)
                                            (gx#core-identifier=?
                                             _hd87008714_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8675_ _rest8676_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8674_)
                                                           _r8677_))
                                            (_E86988707_))
                                        (_E86988707_))))
                                (_E86988707_))))
                         (_E86908731_
                          (lambda ()
                            (if (gx#stx-pair? _e86788703_)
                                (let ((_e86958723_ (gx#syntax-e _e86788703_)))
                                  (let ((_hd86968726_ (##car _e86958723_))
                                        (_tl86978728_ (##cdr _e86958723_)))
                                    (if (if (gx#identifier? _hd86968726_)
                                            (gx#core-identifier=?
                                             _hd86968726_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd8674_)
                                              (_K8675_ _rest8676_ _r8677_))
                                            (_E86948719_))
                                        (_E86948719_))))
                                (_E86948719_))))
                         (_E86808743_
                          (lambda ()
                            (if (gx#stx-pair? _e86788703_)
                                (let ((_e86918735_ (gx#syntax-e _e86788703_)))
                                  (let ((_hd86928738_ (##car _e86918735_))
                                        (_tl86938740_ (##cdr _e86918735_)))
                                    (if (if (gx#identifier? _hd86928738_)
                                            (gx#core-identifier=?
                                             _hd86928738_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd8674_)
                                              (_K8675_ _rest8676_ _r8677_))
                                            (_E86908731_))
                                        (_E86908731_))))
                                (_E86908731_))))
                         (_E86798775_
                          (lambda ()
                            (if (gx#stx-pair? _e86788703_)
                                (let ((_e86818747_ (gx#syntax-e _e86788703_)))
                                  (let ((_hd86828750_ (##car _e86818747_))
                                        (_tl86838752_ (##cdr _e86818747_)))
                                    (if (if (gx#identifier? _hd86828750_)
                                            (gx#core-identifier=?
                                             _hd86828750_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl86838752_)
                                            (let ((_e86848755_
                                                   (gx#syntax-e _tl86838752_)))
                                              (let ((_hd86858758_
                                                     (##car _e86848755_))
                                                    (_tl86868760_
                                                     (##cdr _e86848755_)))
                                                (let ((_hd-bind8763_
                                                       _hd86858758_))
                                                  (if (gx#stx-pair?
                                                       _tl86868760_)
                                                      (let ((_e86878765_
                                                             (gx#syntax-e
                                                              _tl86868760_)))
                                                        (let ((_hd86888768_
                                                               (##car _e86878765_))
                                                              (_tl86898770_
                                                               (##cdr _e86878765_)))
                                                          (let ((_expr8773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd86888768_))
                    (if (gx#stx-null? _tl86898770_)
                        (if (gx#core-bind-values? _hd-bind8763_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind8763_)
                              (_K8675_ _rest8676_ (cons _hd8674_ _r8677_)))
                            (_E86808743_))
                        (_E86808743_)))))
              (_E86808743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E86808743_))
                                        (_E86808743_))))
                                (_E86808743_)))))
                    (_E86798775_))))
               (_wrap-internal8518_
                (lambda (_rbody8520_)
                  (let _lp8522_ ((_rest8524_ _rbody8520_)
                                 (_decls8525_ '())
                                 (_bind8526_ '())
                                 (_body8527_ '()))
                    (let* ((_e85288535_ _rest8524_)
                           (_E85308584_
                            (lambda ()
                              (let* ((_body8579_
                                      (let* ((_body85388548_ _body8527_)
                                             (_E85428552_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body85388548_)))
                                             (_else85418556_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body8527_)
                                                 (gx#stx-source _stx8512_))))
                                             (_try-match85408572_
                                              (lambda ()
                                                (let ((_K85438562_
                                                       (lambda (_expr8560_)
                                                         _expr8560_)))
                                                  (if (##pair? _body85388548_)
                                                      (let ((_hd85448565_
                                                             (##car _body85388548_))
                                                            (_tl85458567_
                                                             (##cdr _body85388548_)))
                                                        (let ((_expr8570_
                                                               _hd85448565_))
                                                          (if (##null? _tl85458567_)
                                                              (_K85438562_
                                                               _expr8570_)
                                                              (_else85418556_))))
                                                      (_else85418556_)))))
                                             (_K85468576_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx8512_))))
                                        (if (##null? _body85388548_)
                                            (_K85468576_)
                                            (_try-match85408572_))))
                                     (_body8581_
                                      (if (null? _bind8526_)
                                          _body8579_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind8526_
                                                       (cons _body8579_ '())))
                                           (gx#stx-source _stx8512_)))))
                                (if (null? _decls8525_)
                                    _body8581_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls8525_
                                                 (cons _body8581_ '())))
                                     (gx#stx-source _stx8512_))))))
                           (_E85298670_
                            (lambda ()
                              (if (gx#stx-pair? _e85288535_)
                                  (let ((_e85318588_
                                         (gx#syntax-e _e85288535_)))
                                    (let ((_hd85328591_ (##car _e85318588_))
                                          (_tl85338593_ (##cdr _e85318588_)))
                                      (let* ((_hd8596_ _hd85328591_)
                                             (_rest8598_ _tl85338593_))
                                        (if '#t
                                            (let* ((_e85998616_ _hd8596_)
                                                   (_E86118620_
                                                    (lambda ()
                                                      (if (null? _bind8526_)
                                                          (_lp8522_
                                                           _rest8598_
                                                           _decls8525_
                                                           _bind8526_
                                                           (cons _hd8596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body8527_))
                  (_lp8522_
                   _rest8598_
                   _decls8525_
                   (cons (cons '#f (cons _hd8596_ '())) _bind8526_)
                   _body8527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86018634_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e85998616_)
                                                          (let ((_e86128624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e85998616_)))
                    (let ((_hd86138627_ (##car _e86128624_))
                          (_tl86148629_ (##cdr _e86128624_)))
                      (if (if (gx#identifier? _hd86138627_)
                              (gx#core-identifier=? _hd86138627_ '%#declare)
                              '#f)
                          (let ((_xdecls8632_ _tl86148629_))
                            (if '#t
                                (_lp8522_
                                 _rest8598_
                                 (gx#stx-foldr cons _decls8525_ _xdecls8632_)
                                 _bind8526_
                                 _body8527_)
                                (_E86118620_)))
                          (_E86118620_))))
                  (_E86118620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86008666_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e85998616_)
                                                          (let ((_e86028638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e85998616_)))
                    (let ((_hd86038641_ (##car _e86028638_))
                          (_tl86048643_ (##cdr _e86028638_)))
                      (if (if (gx#identifier? _hd86038641_)
                              (gx#core-identifier=?
                               _hd86038641_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl86048643_)
                              (let ((_e86058646_ (gx#syntax-e _tl86048643_)))
                                (let ((_hd86068649_ (##car _e86058646_))
                                      (_tl86078651_ (##cdr _e86058646_)))
                                  (let ((_hd-bind8654_ _hd86068649_))
                                    (if (gx#stx-pair? _tl86078651_)
                                        (let ((_e86088656_
                                               (gx#syntax-e _tl86078651_)))
                                          (let ((_hd86098659_
                                                 (##car _e86088656_))
                                                (_tl86108661_
                                                 (##cdr _e86088656_)))
                                            (let ((_expr8664_ _hd86098659_))
                                              (if (gx#stx-null? _tl86108661_)
                                                  (if '#t
                                                      (_lp8522_
                                                       _rest8598_
                                                       _decls8525_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind8654_)
                           (cons (gx#core-expand-expression _expr8664_) '()))
                     _bind8526_)
               _body8527_)
              (_E86018634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86018634_)))))
                                        (_E86018634_)))))
                              (_E86018634_))
                          (_E86018634_))))
                  (_E86018634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86008666_))
                                            (_E85308584_)))))
                                  (_E85308584_)))))
                      (_E85298670_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body8513_)
          (gx#stx-source _stx8512_))
         _expand-special8515_))))
  (define gx#core-expand-declare%
    (lambda (_stx8450_)
      (let* ((_e84518458_ _stx8450_)
             (_E84538462_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84518458_)))
             (_E84528508_
              (lambda ()
                (if (gx#stx-pair? _e84518458_)
                    (let ((_e84548466_ (gx#syntax-e _e84518458_)))
                      (let ((_hd84558469_ (##car _e84548466_))
                            (_tl84568471_ (##cdr _e84548466_)))
                        (let ((_body8474_ _tl84568471_))
                          (if (gx#stx-list? _body8474_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl8476_)
                                   (let* ((_e84778484_ _decl8476_)
                                          (_E84798488_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e84778484_)))
                                          (_E84788504_
                                           (lambda ()
                                             (if (gx#stx-pair? _e84778484_)
                                                 (let ((_e84808492_
                                                        (gx#syntax-e
                                                         _e84778484_)))
                                                   (let ((_hd84818495_
                                                          (##car _e84808492_))
                                                         (_tl84828497_
                                                          (##cdr _e84808492_)))
                                                     (let* ((_head8500_
                                                             _hd84818495_)
                                                            (_args8502_
                                                             _tl84828497_))
                                                       (if (gx#stx-list?
                                                            _args8502_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl8476_)
                                                           (_E84798488_)))))
                                                 (_E84798488_)))))
                                     (_E84788504_)))
                                 _body8474_))
                               (gx#stx-source _stx8450_))
                              (_E84538462_)))))
                    (_E84538462_)))))
        (_E84528508_))))
  (define gx#core-expand-extern%
    (lambda (_stx8334_)
      (let* ((_e83358342_ _stx8334_)
             (_E83378346_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83358342_)))
             (_E83368446_
              (lambda ()
                (if (gx#stx-pair? _e83358342_)
                    (let ((_e83388350_ (gx#syntax-e _e83358342_)))
                      (let ((_hd83398353_ (##car _e83388350_))
                            (_tl83408355_ (##cdr _e83388350_)))
                        (let ((_body8358_ _tl83408355_))
                          (if (gx#stx-list? _body8358_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind8360_)
                                   (let* ((_e83618371_ _bind8360_)
                                          (_E83638375_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e83618371_)))
                                          (_E83628399_
                                           (lambda ()
                                             (if (gx#stx-pair? _e83618371_)
                                                 (let ((_e83648379_
                                                        (gx#syntax-e
                                                         _e83618371_)))
                                                   (let ((_hd83658382_
                                                          (##car _e83648379_))
                                                         (_tl83668384_
                                                          (##cdr _e83648379_)))
                                                     (let ((_id8387_
                                                            _hd83658382_))
                                                       (if (gx#stx-pair?
                                                            _tl83668384_)
                                                           (let ((_e83678389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl83668384_)))
                     (let ((_hd83688392_ (##car _e83678389_))
                           (_tl83698394_ (##cdr _e83678389_)))
                       (let ((_eid8397_ _hd83688392_))
                         (if (gx#stx-null? _tl83698394_)
                             (if (if (gx#identifier? _id8387_)
                                     (gx#identifier? _eid8397_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id8387_
                                  (gx#stx-e _eid8397_))
                                 (_E83638375_))
                             (_E83638375_)))))
                   (_E83638375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E83638375_)))))
                                     (_E83628399_)))
                                 _body8358_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind8403_)
                                     (let* ((_e84048414_ _bind8403_)
                                            (_E84068418_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e84048414_)))
                                            (_E84058442_
                                             (lambda ()
                                               (if (gx#stx-pair? _e84048414_)
                                                   (let ((_e84078422_
                                                          (gx#syntax-e
                                                           _e84048414_)))
                                                     (let ((_hd84088425_
                                                            (##car _e84078422_))
                                                           (_tl84098427_
                                                            (##cdr _e84078422_)))
                                                       (let ((_id8430_
                                                              _hd84088425_))
                                                         (if (gx#stx-pair?
                                                              _tl84098427_)
                                                             (let ((_e84108432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84098427_)))
                       (let ((_hd84118435_ (##car _e84108432_))
                             (_tl84128437_ (##cdr _e84108432_)))
                         (let ((_eid8440_ _hd84118435_))
                           (if (gx#stx-null? _tl84128437_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id8430_)
                                         (cons (gx#stx-e _eid8440_) '()))
                                   (_E84068418_))
                               (_E84068418_)))))
                     (_E84068418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84068418_)))))
                                       (_E84058442_)))
                                   _body8358_))
                                 (gx#stx-source _stx8334_)))
                              (_E83378346_)))))
                    (_E83378346_)))))
        (_E83368446_))))
  (define gx#core-expand-define-values%
    (lambda (_stx8280_)
      (let* ((_e82818294_ _stx8280_)
             (_E82838298_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82818294_)))
             (_E82828330_
              (lambda ()
                (if (gx#stx-pair? _e82818294_)
                    (let ((_e82848302_ (gx#syntax-e _e82818294_)))
                      (let ((_hd82858305_ (##car _e82848302_))
                            (_tl82868307_ (##cdr _e82848302_)))
                        (if (gx#stx-pair? _tl82868307_)
                            (let ((_e82878310_ (gx#syntax-e _tl82868307_)))
                              (let ((_hd82888313_ (##car _e82878310_))
                                    (_tl82898315_ (##cdr _e82878310_)))
                                (let ((_hd8318_ _hd82888313_))
                                  (if (gx#stx-pair? _tl82898315_)
                                      (let ((_e82908320_
                                             (gx#syntax-e _tl82898315_)))
                                        (let ((_hd82918323_
                                               (##car _e82908320_))
                                              (_tl82928325_
                                               (##cdr _e82908320_)))
                                          (let ((_expr8328_ _hd82918323_))
                                            (if (gx#stx-null? _tl82928325_)
                                                (if (gx#core-bind-values?
                                                     _hd8318_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd8318_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd8318_)
                           (cons (gx#core-expand-expression _expr8328_) '())))
               (gx#stx-source _stx8280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82838298_))
                                                (_E82838298_)))))
                                      (_E82838298_)))))
                            (_E82838298_))))
                    (_E82838298_)))))
        (_E82828330_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8226_)
      (let* ((_e82278240_ _stx8226_)
             (_E82298244_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82278240_)))
             (_E82288276_
              (lambda ()
                (if (gx#stx-pair? _e82278240_)
                    (let ((_e82308248_ (gx#syntax-e _e82278240_)))
                      (let ((_hd82318251_ (##car _e82308248_))
                            (_tl82328253_ (##cdr _e82308248_)))
                        (if (gx#stx-pair? _tl82328253_)
                            (let ((_e82338256_ (gx#syntax-e _tl82328253_)))
                              (let ((_hd82348259_ (##car _e82338256_))
                                    (_tl82358261_ (##cdr _e82338256_)))
                                (let ((_id8264_ _hd82348259_))
                                  (if (gx#stx-pair? _tl82358261_)
                                      (let ((_e82368266_
                                             (gx#syntax-e _tl82358261_)))
                                        (let ((_hd82378269_
                                               (##car _e82368266_))
                                              (_tl82388271_
                                               (##cdr _e82368266_)))
                                          (let ((_binding-id8274_
                                                 _hd82378269_))
                                            (if (gx#stx-null? _tl82388271_)
                                                (if (if (gx#identifier?
                                                         _id8264_)
                                                        (gx#identifier?
                                                         _binding-id8274_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id8264_
                                                       (gx#stx-e
                                                        _binding-id8274_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id8264_)
                           (cons (gx#core-quote-syntax__0 _binding-id8274_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82298244_))
                                                (_E82298244_)))))
                                      (_E82298244_)))))
                            (_E82298244_))))
                    (_E82298244_)))))
        (_E82288276_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8169_)
      (let* ((_e81708183_ _stx8169_)
             (_E81728187_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81708183_)))
             (_E81718222_
              (lambda ()
                (if (gx#stx-pair? _e81708183_)
                    (let ((_e81738191_ (gx#syntax-e _e81708183_)))
                      (let ((_hd81748194_ (##car _e81738191_))
                            (_tl81758196_ (##cdr _e81738191_)))
                        (if (gx#stx-pair? _tl81758196_)
                            (let ((_e81768199_ (gx#syntax-e _tl81758196_)))
                              (let ((_hd81778202_ (##car _e81768199_))
                                    (_tl81788204_ (##cdr _e81768199_)))
                                (let ((_id8207_ _hd81778202_))
                                  (if (gx#stx-pair? _tl81788204_)
                                      (let ((_e81798209_
                                             (gx#syntax-e _tl81788204_)))
                                        (let ((_hd81808212_
                                               (##car _e81798209_))
                                              (_tl81818214_
                                               (##cdr _e81798209_)))
                                          (let ((_expr8217_ _hd81808212_))
                                            (if (gx#stx-null? _tl81818214_)
                                                (if (gx#identifier? _id8207_)
                                                    (let ((_g9095_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _expr8217_)))
              (begin
                (let ((_g9096_ (values-count _g9095_)))
                  (if (not (fx= _g9096_ 2))
                      (error "Context expects 2 values" _g9096_)))
                (let ((_e-stx8219_ (values-ref _g9095_ 0))
                      (_e8220_ (values-ref _g9095_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id8207_ _e8220_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id8207_)
                                 (cons _e-stx8219_ '())))
                     (gx#stx-source _stx8169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81728187_))
                                                (_E81728187_)))))
                                      (_E81728187_)))))
                            (_E81728187_))))
                    (_E81728187_)))))
        (_E81718222_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8113_)
      (let* ((_e81148127_ _stx8113_)
             (_E81168131_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81148127_)))
             (_E81158165_
              (lambda ()
                (if (gx#stx-pair? _e81148127_)
                    (let ((_e81178135_ (gx#syntax-e _e81148127_)))
                      (let ((_hd81188138_ (##car _e81178135_))
                            (_tl81198140_ (##cdr _e81178135_)))
                        (if (gx#stx-pair? _tl81198140_)
                            (let ((_e81208143_ (gx#syntax-e _tl81198140_)))
                              (let ((_hd81218146_ (##car _e81208143_))
                                    (_tl81228148_ (##cdr _e81208143_)))
                                (let ((_id8151_ _hd81218146_))
                                  (if (gx#stx-pair? _tl81228148_)
                                      (let ((_e81238153_
                                             (gx#syntax-e _tl81228148_)))
                                        (let ((_hd81248156_
                                               (##car _e81238153_))
                                              (_tl81258158_
                                               (##cdr _e81238153_)))
                                          (let ((_alias-id8161_ _hd81248156_))
                                            (if (gx#stx-null? _tl81258158_)
                                                (if (if (gx#identifier?
                                                         _id8151_)
                                                        (gx#identifier?
                                                         _alias-id8161_)
                                                        '#f)
                                                    (let ((_alias-id8163_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id8161_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id8151_
                                                         _alias-id8163_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id8151_)
                             (cons _alias-id8163_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81168131_))
                                                (_E81168131_)))))
                                      (_E81168131_)))))
                            (_E81168131_))))
                    (_E81168131_)))))
        (_E81158165_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8054
      (lambda (_stx8056_ _wrap?8057_)
        (let* ((_e80588068_ _stx8056_)
               (_E80608072_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e80588068_)))
               (_E80598099_
                (lambda ()
                  (if (gx#stx-pair? _e80588068_)
                      (let ((_e80618076_ (gx#syntax-e _e80588068_)))
                        (let ((_hd80628079_ (##car _e80618076_))
                              (_tl80638081_ (##cdr _e80618076_)))
                          (if (gx#stx-pair? _tl80638081_)
                              (let ((_e80648084_ (gx#syntax-e _tl80638081_)))
                                (let ((_hd80658087_ (##car _e80648084_))
                                      (_tl80668089_ (##cdr _e80648084_)))
                                  (let* ((_hd8092_ _hd80658087_)
                                         (_body8094_ _tl80668089_))
                                    (if (gx#core-bind-values? _hd8092_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd8092_)
                                             (let ((_body8097_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd8092_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8056_
                         _body8094_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?8057_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body8097_)
                                                    (gx#stx-source _stx8056_))
                                                   _body8097_))))
                                         gx#current-expander-context
                                         (let ((__obj9088
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9088)
                                             __obj9088)))
                                        (_E80608072_)))))
                              (_E80608072_))))
                      (_E80608072_)))))
          (_E80598099_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8106_)
          (let ((_wrap?8108_ '#t))
            (gx#core-expand-lambda%__opt-lambda8054 _stx8106_ _wrap?8108_))))
      (define gx#core-expand-lambda%
        (lambda _g9098_
          (let ((_g9097_ (length _g9098_)))
            (cond ((fx= _g9097_ 1) (apply gx#core-expand-lambda%__0 _g9098_))
                  ((fx= _g9097_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8054 _g9098_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9098_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8020_)
      (let* ((_e80218028_ _stx8020_)
             (_E80238032_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80218028_)))
             (_E80228051_
              (lambda ()
                (if (gx#stx-pair? _e80218028_)
                    (let ((_e80248036_ (gx#syntax-e _e80218028_)))
                      (let ((_hd80258039_ (##car _e80248036_))
                            (_tl80268041_ (##cdr _e80248036_)))
                        (let ((_clauses8044_ _tl80268041_))
                          (if (gx#stx-list? _clauses8044_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause8046_)
                                   (gx#core-expand-lambda%__opt-lambda8054
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause8046_)
                                     (let ((_$e8048_
                                            (gx#stx-source _clause8046_)))
                                       (if _$e8048_
                                           _$e8048_
                                           (gx#stx-source _stx8020_))))
                                    '#f))
                                 _clauses8044_))
                               (gx#stx-source _stx8020_))
                              (_E80238032_)))))
                    (_E80238032_)))))
        (_E80228051_))))
  (define gx#core-expand-let-values%
    (lambda (_stx7974_)
      (let* ((_e79757985_ _stx7974_)
             (_E79777989_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e79757985_)))
             (_E79768016_
              (lambda ()
                (if (gx#stx-pair? _e79757985_)
                    (let ((_e79787993_ (gx#syntax-e _e79757985_)))
                      (let ((_hd79797996_ (##car _e79787993_))
                            (_tl79807998_ (##cdr _e79787993_)))
                        (if (gx#stx-pair? _tl79807998_)
                            (let ((_e79818001_ (gx#syntax-e _tl79807998_)))
                              (let ((_hd79828004_ (##car _e79818001_))
                                    (_tl79838006_ (##cdr _e79818001_)))
                                (let* ((_hd8009_ _hd79828004_)
                                       (_body8011_ _tl79838006_))
                                  (if (gx#core-expand-let-bind? _hd8009_)
                                      (let ((_expressions8013_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd8009_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8009_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8009_
                                                           _expressions8013_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7974_
                         _body8011_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7974_))))
                                         gx#current-expander-context
                                         (let ((__obj9089
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9089)
                                             __obj9089))))
                                      (_E79777989_)))))
                            (_E79777989_))))
                    (_E79777989_)))))
        (_E79768016_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7917
      (lambda (_stx7919_ _form7920_)
        (let* ((_e79217931_ _stx7919_)
               (_E79237935_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e79217931_)))
               (_E79227960_
                (lambda ()
                  (if (gx#stx-pair? _e79217931_)
                      (let ((_e79247939_ (gx#syntax-e _e79217931_)))
                        (let ((_hd79257942_ (##car _e79247939_))
                              (_tl79267944_ (##cdr _e79247939_)))
                          (if (gx#stx-pair? _tl79267944_)
                              (let ((_e79277947_ (gx#syntax-e _tl79267944_)))
                                (let ((_hd79287950_ (##car _e79277947_))
                                      (_tl79297952_ (##cdr _e79277947_)))
                                  (let* ((_hd7955_ _hd79287950_)
                                         (_body7957_ _tl79297952_))
                                    (if (gx#core-expand-let-bind? _hd7955_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd7955_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form7920_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd7955_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd7955_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7919_
                         _body7957_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7919_))))
                                         gx#current-expander-context
                                         (let ((__obj9090
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9090)
                                             __obj9090)))
                                        (_E79237935_)))))
                              (_E79237935_))))
                      (_E79237935_)))))
          (_E79227960_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7967_)
          (let ((_form7969_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7917
             _stx7967_
             _form7969_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9100_
          (let ((_g9099_ (length _g9100_)))
            (cond ((fx= _g9099_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9100_))
                  ((fx= _g9099_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7917
                          _g9100_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9100_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7916_)
      (gx#core-expand-letrec-values%__opt-lambda7917
       _stx7916_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7873_)
      (if (gx#stx-list? _stx7873_)
          (gx#stx-andmap
           (lambda (_bind7875_)
             (let* ((_e78767886_ _bind7875_)
                    (_E78787890_ (lambda () '#f))
                    (_E78777912_
                     (lambda ()
                       (if (gx#stx-pair? _e78767886_)
                           (let ((_e78797894_ (gx#syntax-e _e78767886_)))
                             (let ((_hd78807897_ (##car _e78797894_))
                                   (_tl78817899_ (##cdr _e78797894_)))
                               (let ((_hd7902_ _hd78807897_))
                                 (if (gx#stx-pair? _tl78817899_)
                                     (let ((_e78827904_
                                            (gx#syntax-e _tl78817899_)))
                                       (let ((_hd78837907_ (##car _e78827904_))
                                             (_tl78847909_
                                              (##cdr _e78827904_)))
                                         (if (gx#stx-null? _tl78847909_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd7902_)
                                                 (_E78787890_))
                                             (_E78787890_))))
                                     (_E78787890_)))))
                           (_E78787890_)))))
               (_E78777912_)))
           _stx7873_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7832_)
      (let* ((_e78337843_ _bind7832_)
             (_E78357847_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78337843_)))
             (_E78347869_
              (lambda ()
                (if (gx#stx-pair? _e78337843_)
                    (let ((_e78367851_ (gx#syntax-e _e78337843_)))
                      (let ((_hd78377854_ (##car _e78367851_))
                            (_tl78387856_ (##cdr _e78367851_)))
                        (if (gx#stx-pair? _tl78387856_)
                            (let ((_e78397859_ (gx#syntax-e _tl78387856_)))
                              (let ((_hd78407862_ (##car _e78397859_))
                                    (_tl78417864_ (##cdr _e78397859_)))
                                (let ((_expr7867_ _hd78407862_))
                                  (if (gx#stx-null? _tl78417864_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7867_)
                                          (_E78357847_))
                                      (_E78357847_)))))
                            (_E78357847_))))
                    (_E78357847_)))))
        (_E78347869_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7791_)
      (let* ((_e77927802_ _bind7791_)
             (_E77947806_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77927802_)))
             (_E77937828_
              (lambda ()
                (if (gx#stx-pair? _e77927802_)
                    (let ((_e77957810_ (gx#syntax-e _e77927802_)))
                      (let ((_hd77967813_ (##car _e77957810_))
                            (_tl77977815_ (##cdr _e77957810_)))
                        (let ((_hd7818_ _hd77967813_))
                          (if (gx#stx-pair? _tl77977815_)
                              (let ((_e77987820_ (gx#syntax-e _tl77977815_)))
                                (let ((_hd77997823_ (##car _e77987820_))
                                      (_tl78007825_ (##cdr _e77987820_)))
                                  (if (gx#stx-null? _tl78007825_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd7818_)
                                          (_E77947806_))
                                      (_E77947806_))))
                              (_E77947806_)))))
                    (_E77947806_)))))
        (_E77937828_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7749_ _expr7750_)
      (let* ((_e77517761_ _bind7749_)
             (_E77537765_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77517761_)))
             (_E77527787_
              (lambda ()
                (if (gx#stx-pair? _e77517761_)
                    (let ((_e77547769_ (gx#syntax-e _e77517761_)))
                      (let ((_hd77557772_ (##car _e77547769_))
                            (_tl77567774_ (##cdr _e77547769_)))
                        (let ((_hd7777_ _hd77557772_))
                          (if (gx#stx-pair? _tl77567774_)
                              (let ((_e77577779_ (gx#syntax-e _tl77567774_)))
                                (let ((_hd77587782_ (##car _e77577779_))
                                      (_tl77597784_ (##cdr _e77577779_)))
                                  (if (gx#stx-null? _tl77597784_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd7777_)
                                                (cons _expr7750_ '()))
                                          (_E77537765_))
                                      (_E77537765_))))
                              (_E77537765_)))))
                    (_E77537765_)))))
        (_E77527787_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7703_)
      (let* ((_e77047714_ _stx7703_)
             (_E77067718_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77047714_)))
             (_E77057745_
              (lambda ()
                (if (gx#stx-pair? _e77047714_)
                    (let ((_e77077722_ (gx#syntax-e _e77047714_)))
                      (let ((_hd77087725_ (##car _e77077722_))
                            (_tl77097727_ (##cdr _e77077722_)))
                        (if (gx#stx-pair? _tl77097727_)
                            (let ((_e77107730_ (gx#syntax-e _tl77097727_)))
                              (let ((_hd77117733_ (##car _e77107730_))
                                    (_tl77127735_ (##cdr _e77107730_)))
                                (let* ((_hd7738_ _hd77117733_)
                                       (_body7740_ _tl77127735_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7738_)
                                      (let ((_expanders7742_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd7738_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd7738_
                                              _expanders7742_)
                                             (gx#core-expand-local-block
                                              _stx7703_
                                              _body7740_)))
                                         gx#current-expander-context
                                         (let ((__obj9091
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9091)
                                             __obj9091))))
                                      (_E77067718_)))))
                            (_E77067718_))))
                    (_E77067718_)))))
        (_E77057745_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7652_)
      (let* ((_e76537663_ _stx7652_)
             (_E76557667_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e76537663_)))
             (_E76547699_
              (lambda ()
                (if (gx#stx-pair? _e76537663_)
                    (let ((_e76567671_ (gx#syntax-e _e76537663_)))
                      (let ((_hd76577674_ (##car _e76567671_))
                            (_tl76587676_ (##cdr _e76567671_)))
                        (if (gx#stx-pair? _tl76587676_)
                            (let ((_e76597679_ (gx#syntax-e _tl76587676_)))
                              (let ((_hd76607682_ (##car _e76597679_))
                                    (_tl76617684_ (##cdr _e76597679_)))
                                (let* ((_hd7687_ _hd76607682_)
                                       (_body7689_ _tl76617684_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7687_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd7687_
                                            (make-list
                                             (gx#stx-length _hd7687_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g76917694_ _g76927696_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda7509
                                               _g76917694_
                                               _g76927696_
                                               '#t))
                                            _hd7687_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd7687_))
                                           (gx#core-expand-local-block
                                            _stx7652_
                                            _body7689_)))
                                       gx#current-expander-context
                                       (let ((__obj9092
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj9092)
                                           __obj9092)))
                                      (_E76557667_)))))
                            (_E76557667_))))
                    (_E76557667_)))))
        (_E76547699_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7609_)
      (if (gx#stx-list? _stx7609_)
          (gx#stx-andmap
           (lambda (_bind7611_)
             (let* ((_e76127622_ _bind7611_)
                    (_E76147626_ (lambda () '#f))
                    (_E76137648_
                     (lambda ()
                       (if (gx#stx-pair? _e76127622_)
                           (let ((_e76157630_ (gx#syntax-e _e76127622_)))
                             (let ((_hd76167633_ (##car _e76157630_))
                                   (_tl76177635_ (##cdr _e76157630_)))
                               (let ((_hd7638_ _hd76167633_))
                                 (if (gx#stx-pair? _tl76177635_)
                                     (let ((_e76187640_
                                            (gx#syntax-e _tl76177635_)))
                                       (let ((_hd76197643_ (##car _e76187640_))
                                             (_tl76207645_
                                              (##cdr _e76187640_)))
                                         (if (gx#stx-null? _tl76207645_)
                                             (if '#t
                                                 (gx#identifier? _hd7638_)
                                                 (_E76147626_))
                                             (_E76147626_))))
                                     (_E76147626_)))))
                           (_E76147626_)))))
               (_E76137648_)))
           _stx7609_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7566_)
      (let* ((_e75677577_ _bind7566_)
             (_E75697581_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e75677577_)))
             (_E75687605_
              (lambda ()
                (if (gx#stx-pair? _e75677577_)
                    (let ((_e75707585_ (gx#syntax-e _e75677577_)))
                      (let ((_hd75717588_ (##car _e75707585_))
                            (_tl75727590_ (##cdr _e75707585_)))
                        (if (gx#stx-pair? _tl75727590_)
                            (let ((_e75737593_ (gx#syntax-e _tl75727590_)))
                              (let ((_hd75747596_ (##car _e75737593_))
                                    (_tl75757598_ (##cdr _e75737593_)))
                                (let ((_expr7601_ _hd75747596_))
                                  (if (gx#stx-null? _tl75757598_)
                                      (if '#t
                                          (let ((_g9101_ (gx#core-expand-expression+1
                                                          _expr7601_)))
                                            (begin
                                              (let ((_g9102_ (values-count
                                                              _g9101_)))
                                                (if (not (fx= _g9102_ 2))
                                                    (error "Context expects 2 values"
                                                           _g9102_)))
                                              (let ((_e7603_ (values-ref
                                                              _g9101_
                                                              1)))
                                                _e7603_)))
                                          (_E75697581_))
                                      (_E75697581_)))))
                            (_E75697581_))))
                    (_E75697581_)))))
        (_E75687605_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7509
      (lambda (_bind7511_ _e7512_ _rebind?7513_)
        (let* ((_e75147524_ _bind7511_)
               (_E75167528_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e75147524_)))
               (_E75157550_
                (lambda ()
                  (if (gx#stx-pair? _e75147524_)
                      (let ((_e75177532_ (gx#syntax-e _e75147524_)))
                        (let ((_hd75187535_ (##car _e75177532_))
                              (_tl75197537_ (##cdr _e75177532_)))
                          (let ((_id7540_ _hd75187535_))
                            (if (gx#stx-pair? _tl75197537_)
                                (let ((_e75207542_ (gx#syntax-e _tl75197537_)))
                                  (let ((_hd75217545_ (##car _e75207542_))
                                        (_tl75227547_ (##cdr _e75207542_)))
                                    (if (gx#stx-null? _tl75227547_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id7540_
                                             _e7512_
                                             _rebind?7513_)
                                            (_E75167528_))
                                        (_E75167528_))))
                                (_E75167528_)))))
                      (_E75167528_)))))
          (_E75157550_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7557_ _e7558_)
          (let ((_rebind?7560_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7509
             _bind7557_
             _e7558_
             _rebind?7560_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9104_
          (let ((_g9103_ (length _g9104_)))
            (cond ((fx= _g9103_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9104_))
                  ((fx= _g9103_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7509
                          _g9104_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9104_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7469_)
      (let* ((_e74707480_ _stx7469_)
             (_E74727484_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74707480_)))
             (_E74717506_
              (lambda ()
                (if (gx#stx-pair? _e74707480_)
                    (let ((_e74737488_ (gx#syntax-e _e74707480_)))
                      (let ((_hd74747491_ (##car _e74737488_))
                            (_tl74757493_ (##cdr _e74737488_)))
                        (if (gx#stx-pair? _tl74757493_)
                            (let ((_e74767496_ (gx#syntax-e _tl74757493_)))
                              (let ((_hd74777499_ (##car _e74767496_))
                                    (_tl74787501_ (##cdr _e74767496_)))
                                (let ((_expr7504_ _hd74777499_))
                                  (if (gx#stx-null? _tl74787501_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7504_)
                                          (_E74727484_))
                                      (_E74727484_)))))
                            (_E74727484_))))
                    (_E74727484_)))))
        (_E74717506_))))
  (define gx#core-expand-quote%
    (lambda (_stx7428_)
      (let* ((_e74297439_ _stx7428_)
             (_E74317443_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74297439_)))
             (_E74307465_
              (lambda ()
                (if (gx#stx-pair? _e74297439_)
                    (let ((_e74327447_ (gx#syntax-e _e74297439_)))
                      (let ((_hd74337450_ (##car _e74327447_))
                            (_tl74347452_ (##cdr _e74327447_)))
                        (if (gx#stx-pair? _tl74347452_)
                            (let ((_e74357455_ (gx#syntax-e _tl74347452_)))
                              (let ((_hd74367458_ (##car _e74357455_))
                                    (_tl74377460_ (##cdr _e74357455_)))
                                (let ((_e7463_ _hd74367458_))
                                  (if (gx#stx-null? _tl74377460_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e7463_)
                                                       '()))
                                           (gx#stx-source _stx7428_))
                                          (_E74317443_))
                                      (_E74317443_)))))
                            (_E74317443_))))
                    (_E74317443_)))))
        (_E74307465_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7387_)
      (let* ((_e73887398_ _stx7387_)
             (_E73907402_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73887398_)))
             (_E73897424_
              (lambda ()
                (if (gx#stx-pair? _e73887398_)
                    (let ((_e73917406_ (gx#syntax-e _e73887398_)))
                      (let ((_hd73927409_ (##car _e73917406_))
                            (_tl73937411_ (##cdr _e73917406_)))
                        (if (gx#stx-pair? _tl73937411_)
                            (let ((_e73947414_ (gx#syntax-e _tl73937411_)))
                              (let ((_hd73957417_ (##car _e73947414_))
                                    (_tl73967419_ (##cdr _e73947414_)))
                                (let ((_e7422_ _hd73957417_))
                                  (if (gx#stx-null? _tl73967419_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e7422_)
                                                       '()))
                                           (gx#stx-source _stx7387_))
                                          (_E73907402_))
                                      (_E73907402_)))))
                            (_E73907402_))))
                    (_E73907402_)))))
        (_E73897424_))))
  (define gx#core-expand-call%
    (lambda (_stx7344_)
      (let* ((_e73457355_ _stx7344_)
             (_E73477359_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73457355_)))
             (_E73467383_
              (lambda ()
                (if (gx#stx-pair? _e73457355_)
                    (let ((_e73487363_ (gx#syntax-e _e73457355_)))
                      (let ((_hd73497366_ (##car _e73487363_))
                            (_tl73507368_ (##cdr _e73487363_)))
                        (if (gx#stx-pair? _tl73507368_)
                            (let ((_e73517371_ (gx#syntax-e _tl73507368_)))
                              (let ((_hd73527374_ (##car _e73517371_))
                                    (_tl73537376_ (##cdr _e73517371_)))
                                (let* ((_rator7379_ _hd73527374_)
                                       (_args7381_ _tl73537376_))
                                  (if (gx#stx-list? _args7381_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator7379_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args7381_))
                                       (gx#stx-source _stx7344_))
                                      (_E73477359_)))))
                            (_E73477359_))))
                    (_E73477359_)))))
        (_E73467383_))))
  (define gx#core-expand-if%
    (lambda (_stx7277_)
      (let* ((_e72787294_ _stx7277_)
             (_E72807298_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72787294_)))
             (_E72797340_
              (lambda ()
                (if (gx#stx-pair? _e72787294_)
                    (let ((_e72817302_ (gx#syntax-e _e72787294_)))
                      (let ((_hd72827305_ (##car _e72817302_))
                            (_tl72837307_ (##cdr _e72817302_)))
                        (if (gx#stx-pair? _tl72837307_)
                            (let ((_e72847310_ (gx#syntax-e _tl72837307_)))
                              (let ((_hd72857313_ (##car _e72847310_))
                                    (_tl72867315_ (##cdr _e72847310_)))
                                (let ((_test7318_ _hd72857313_))
                                  (if (gx#stx-pair? _tl72867315_)
                                      (let ((_e72877320_
                                             (gx#syntax-e _tl72867315_)))
                                        (let ((_hd72887323_
                                               (##car _e72877320_))
                                              (_tl72897325_
                                               (##cdr _e72877320_)))
                                          (let ((_K7328_ _hd72887323_))
                                            (if (gx#stx-pair? _tl72897325_)
                                                (let ((_e72907330_
                                                       (gx#syntax-e
                                                        _tl72897325_)))
                                                  (let ((_hd72917333_
                                                         (##car _e72907330_))
                                                        (_tl72927335_
                                                         (##cdr _e72907330_)))
                                                    (let ((_E7338_ _hd72917333_))
                                                      (if (gx#stx-null?
                                                           _tl72927335_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test7318_)
                                   (cons (gx#core-expand-expression _K7328_)
                                         (cons (gx#core-expand-expression
                                                _E7338_)
                                               '()))))
                       (gx#stx-source _stx7277_))
                      (_E72807298_))
                  (_E72807298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E72807298_)))))
                                      (_E72807298_)))))
                            (_E72807298_))))
                    (_E72807298_)))))
        (_E72797340_))))
  (define gx#core-expand-ref%
    (lambda (_stx7236_)
      (let* ((_e72377247_ _stx7236_)
             (_E72397251_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72377247_)))
             (_E72387273_
              (lambda ()
                (if (gx#stx-pair? _e72377247_)
                    (let ((_e72407255_ (gx#syntax-e _e72377247_)))
                      (let ((_hd72417258_ (##car _e72407255_))
                            (_tl72427260_ (##cdr _e72407255_)))
                        (if (gx#stx-pair? _tl72427260_)
                            (let ((_e72437263_ (gx#syntax-e _tl72427260_)))
                              (let ((_hd72447266_ (##car _e72437263_))
                                    (_tl72457268_ (##cdr _e72437263_)))
                                (let ((_id7271_ _hd72447266_))
                                  (if (gx#stx-null? _tl72457268_)
                                      (if (gx#core-runtime-ref? _id7271_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id7271_
                                                        _stx7236_)
                                                       '()))
                                           (gx#stx-source _stx7236_))
                                          (_E72397251_))
                                      (_E72397251_)))))
                            (_E72397251_))))
                    (_E72397251_)))))
        (_E72387273_))))
  (define gx#core-expand-setq%
    (lambda (_stx7182_)
      (let* ((_e71837196_ _stx7182_)
             (_E71857200_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e71837196_)))
             (_E71847232_
              (lambda ()
                (if (gx#stx-pair? _e71837196_)
                    (let ((_e71867204_ (gx#syntax-e _e71837196_)))
                      (let ((_hd71877207_ (##car _e71867204_))
                            (_tl71887209_ (##cdr _e71867204_)))
                        (if (gx#stx-pair? _tl71887209_)
                            (let ((_e71897212_ (gx#syntax-e _tl71887209_)))
                              (let ((_hd71907215_ (##car _e71897212_))
                                    (_tl71917217_ (##cdr _e71897212_)))
                                (let ((_id7220_ _hd71907215_))
                                  (if (gx#stx-pair? _tl71917217_)
                                      (let ((_e71927222_
                                             (gx#syntax-e _tl71917217_)))
                                        (let ((_hd71937225_
                                               (##car _e71927222_))
                                              (_tl71947227_
                                               (##cdr _e71927222_)))
                                          (let ((_expr7230_ _hd71937225_))
                                            (if (gx#stx-null? _tl71947227_)
                                                (if (gx#core-runtime-ref?
                                                     _id7220_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7220_
                          _stx7182_)
                         (cons (gx#core-expand-expression _expr7230_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx7182_))
                                                    (_E71857200_))
                                                (_E71857200_)))))
                                      (_E71857200_)))))
                            (_E71857200_))))
                    (_E71857200_)))))
        (_E71847232_))))
  (define gx#macro-expand-extern
    (lambda (_stx7030_)
      (letrec ((_generate7032_
                (lambda (_body7062_)
                  (let _lp7064_ ((_rest7066_ _body7062_)
                                 (_ns7067_ (gx#core-context-namespace__0))
                                 (_r7068_ '()))
                    (let* ((_e70697084_ _rest7066_)
                           (_E70827088_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e70697084_)))
                           (_E70787092_
                            (lambda ()
                              (if (gx#stx-null? _e70697084_)
                                  (if '#t (reverse _r7068_) (_E70827088_))
                                  (_E70827088_))))
                           (_E70717149_
                            (lambda ()
                              (if (gx#stx-pair? _e70697084_)
                                  (let ((_e70797096_
                                         (gx#syntax-e _e70697084_)))
                                    (let ((_hd70807099_ (##car _e70797096_))
                                          (_tl70817101_ (##cdr _e70797096_)))
                                      (let* ((_hd7104_ _hd70807099_)
                                             (_rest7106_ _tl70817101_))
                                        (if '#t
                                            (if (gx#identifier? _hd7104_)
                                                (_lp7064_
                                                 _rest7106_
                                                 _ns7067_
                                                 (cons (cons _hd7104_
                                                             (cons (if _ns7067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd7104_
                                _ns7067_
                                '"#"
                                _hd7104_)
                               _hd7104_)
                           '()))
               _r7068_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e71077117_ _hd7104_)
                                                       (_E71097121_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e71077117_)))
                                                       (_E71087145_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e71077117_)
                                                              (let ((_e71107125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e71077117_)))
                        (let ((_hd71117128_ (##car _e71107125_))
                              (_tl71127130_ (##cdr _e71107125_)))
                          (let ((_id7133_ _hd71117128_))
                            (if (gx#stx-pair? _tl71127130_)
                                (let ((_e71137135_ (gx#syntax-e _tl71127130_)))
                                  (let ((_hd71147138_ (##car _e71137135_))
                                        (_tl71157140_ (##cdr _e71137135_)))
                                    (let ((_eid7143_ _hd71147138_))
                                      (if (gx#stx-null? _tl71157140_)
                                          (if (if (gx#identifier? _id7133_)
                                                  (gx#identifier? _eid7143_)
                                                  '#f)
                                              (_lp7064_
                                               _rest7106_
                                               _ns7067_
                                               (cons (cons _id7133_
                                                           (cons _eid7143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r7068_))
                                              (_E71097121_))
                                          (_E71097121_)))))
                                (_E71097121_)))))
                      (_E71097121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71087145_)))
                                            (_E70787092_)))))
                                  (_E70787092_))))
                           (_E70707178_
                            (lambda ()
                              (if (gx#stx-pair? _e70697084_)
                                  (let ((_e70727153_
                                         (gx#syntax-e _e70697084_)))
                                    (let ((_hd70737156_ (##car _e70727153_))
                                          (_tl70747158_ (##cdr _e70727153_)))
                                      (if (eq? (gx#stx-e _hd70737156_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl70747158_)
                                              (let ((_e70757161_
                                                     (gx#syntax-e
                                                      _tl70747158_)))
                                                (let ((_hd70767164_
                                                       (##car _e70757161_))
                                                      (_tl70777166_
                                                       (##cdr _e70757161_)))
                                                  (let* ((_ns7169_
                                                          _hd70767164_)
                                                         (_rest7171_
                                                          _tl70777166_))
                                                    (if '#t
                                                        (let ((_ns7176_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns7169_)
                           (symbol->string (gx#stx-e _ns7169_))
                           (if (let ((_$e7173_ (gx#stx-string? _ns7169_)))
                                 (if _$e7173_
                                     _$e7173_
                                     (gx#stx-false? _ns7169_)))
                               (gx#stx-e _ns7169_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx7030_
                                _ns7169_)))))
                  (_lp7064_ _rest7171_ _ns7176_ _r7068_))
                (_E70717149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E70717149_))
                                          (_E70717149_))))
                                  (_E70717149_)))))
                      (_E70707178_))))))
        (let* ((_e70337040_ _stx7030_)
               (_E70357044_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e70337040_)))
               (_E70347058_
                (lambda ()
                  (if (gx#stx-pair? _e70337040_)
                      (let ((_e70367048_ (gx#syntax-e _e70337040_)))
                        (let ((_hd70377051_ (##car _e70367048_))
                              (_tl70387053_ (##cdr _e70367048_)))
                          (let ((_body7056_ _tl70387053_))
                            (if (gx#stx-list? _body7056_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate7032_ _body7056_))
                                (_E70357044_)))))
                      (_E70357044_)))))
          (_E70347058_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx6976_)
      (let* ((_e69776990_ _stx6976_)
             (_E69796994_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69776990_)))
             (_E69787026_
              (lambda ()
                (if (gx#stx-pair? _e69776990_)
                    (let ((_e69806998_ (gx#syntax-e _e69776990_)))
                      (let ((_hd69817001_ (##car _e69806998_))
                            (_tl69827003_ (##cdr _e69806998_)))
                        (if (gx#stx-pair? _tl69827003_)
                            (let ((_e69837006_ (gx#syntax-e _tl69827003_)))
                              (let ((_hd69847009_ (##car _e69837006_))
                                    (_tl69857011_ (##cdr _e69837006_)))
                                (let ((_hd7014_ _hd69847009_))
                                  (if (gx#stx-pair? _tl69857011_)
                                      (let ((_e69867016_
                                             (gx#syntax-e _tl69857011_)))
                                        (let ((_hd69877019_
                                               (##car _e69867016_))
                                              (_tl69887021_
                                               (##cdr _e69867016_)))
                                          (let ((_expr7024_ _hd69877019_))
                                            (if (gx#stx-null? _tl69887021_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd7014_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd7014_)
                        (cons _expr7024_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69796994_))
                                                (_E69796994_)))))
                                      (_E69796994_)))))
                            (_E69796994_))))
                    (_E69796994_)))))
        (_E69787026_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6922_)
      (let* ((_e69236936_ _stx6922_)
             (_E69256940_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69236936_)))
             (_E69246972_
              (lambda ()
                (if (gx#stx-pair? _e69236936_)
                    (let ((_e69266944_ (gx#syntax-e _e69236936_)))
                      (let ((_hd69276947_ (##car _e69266944_))
                            (_tl69286949_ (##cdr _e69266944_)))
                        (if (gx#stx-pair? _tl69286949_)
                            (let ((_e69296952_ (gx#syntax-e _tl69286949_)))
                              (let ((_hd69306955_ (##car _e69296952_))
                                    (_tl69316957_ (##cdr _e69296952_)))
                                (let ((_hd6960_ _hd69306955_))
                                  (if (gx#stx-pair? _tl69316957_)
                                      (let ((_e69326962_
                                             (gx#syntax-e _tl69316957_)))
                                        (let ((_hd69336965_
                                               (##car _e69326962_))
                                              (_tl69346967_
                                               (##cdr _e69326962_)))
                                          (let ((_expr6970_ _hd69336965_))
                                            (if (gx#stx-null? _tl69346967_)
                                                (if (gx#identifier? _hd6960_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd6960_
                                                                (cons _expr6970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69256940_))
                                                (_E69256940_)))))
                                      (_E69256940_)))))
                            (_E69256940_))))
                    (_E69256940_)))))
        (_E69246972_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6868_)
      (let* ((_e68696882_ _stx6868_)
             (_E68716886_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68696882_)))
             (_E68706918_
              (lambda ()
                (if (gx#stx-pair? _e68696882_)
                    (let ((_e68726890_ (gx#syntax-e _e68696882_)))
                      (let ((_hd68736893_ (##car _e68726890_))
                            (_tl68746895_ (##cdr _e68726890_)))
                        (if (gx#stx-pair? _tl68746895_)
                            (let ((_e68756898_ (gx#syntax-e _tl68746895_)))
                              (let ((_hd68766901_ (##car _e68756898_))
                                    (_tl68776903_ (##cdr _e68756898_)))
                                (let ((_id6906_ _hd68766901_))
                                  (if (gx#stx-pair? _tl68776903_)
                                      (let ((_e68786908_
                                             (gx#syntax-e _tl68776903_)))
                                        (let ((_hd68796911_
                                               (##car _e68786908_))
                                              (_tl68806913_
                                               (##cdr _e68786908_)))
                                          (let ((_alias-id6916_ _hd68796911_))
                                            (if (gx#stx-null? _tl68806913_)
                                                (if (if (gx#identifier?
                                                         _id6906_)
                                                        (gx#identifier?
                                                         _alias-id6916_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id6906_
                                                                (cons _alias-id6916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E68716886_))
                                                (_E68716886_)))))
                                      (_E68716886_)))))
                            (_E68716886_))))
                    (_E68716886_)))))
        (_E68706918_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6825_)
      (let* ((_e68266836_ _stx6825_)
             (_E68286840_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68266836_)))
             (_E68276864_
              (lambda ()
                (if (gx#stx-pair? _e68266836_)
                    (let ((_e68296844_ (gx#syntax-e _e68266836_)))
                      (let ((_hd68306847_ (##car _e68296844_))
                            (_tl68316849_ (##cdr _e68296844_)))
                        (if (gx#stx-pair? _tl68316849_)
                            (let ((_e68326852_ (gx#syntax-e _tl68316849_)))
                              (let ((_hd68336855_ (##car _e68326852_))
                                    (_tl68346857_ (##cdr _e68326852_)))
                                (let* ((_hd6860_ _hd68336855_)
                                       (_body6862_ _tl68346857_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd6860_)
                                          (if (gx#stx-list? _body6862_)
                                              (not (gx#stx-null? _body6862_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd6860_)
                                       _body6862_)
                                      (_E68286840_)))))
                            (_E68286840_))))
                    (_E68286840_)))))
        (_E68276864_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6761_)
      (letrec ((_generate6763_
                (lambda (_clause6793_)
                  (let* ((_e67946801_ _clause6793_)
                         (_E67966805_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx6761_
                             _clause6793_)))
                         (_E67956821_
                          (lambda ()
                            (if (gx#stx-pair? _e67946801_)
                                (let ((_e67976809_ (gx#syntax-e _e67946801_)))
                                  (let ((_hd67986812_ (##car _e67976809_))
                                        (_tl67996814_ (##cdr _e67976809_)))
                                    (let* ((_hd6817_ _hd67986812_)
                                           (_body6819_ _tl67996814_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd6817_)
                                              (if (gx#stx-list? _body6819_)
                                                  (not (gx#stx-null?
                                                        _body6819_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd6817_)
                                                 _body6819_)
                                           (gx#stx-source _clause6793_))
                                          (_E67966805_)))))
                                (_E67966805_)))))
                    (_E67956821_)))))
        (let* ((_e67646771_ _stx6761_)
               (_E67666775_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e67646771_)))
               (_E67656789_
                (lambda ()
                  (if (gx#stx-pair? _e67646771_)
                      (let ((_e67676779_ (gx#syntax-e _e67646771_)))
                        (let ((_hd67686782_ (##car _e67676779_))
                              (_tl67696784_ (##cdr _e67676779_)))
                          (let ((_clauses6787_ _tl67696784_))
                            (if (gx#stx-list? _clauses6787_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate6763_ _clauses6787_))
                                (_E67666775_)))))
                      (_E67666775_)))))
          (_E67656789_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6660
      (lambda (_stx6662_ _form6663_)
        (letrec ((_generate6665_
                  (lambda (_bind6708_)
                    (let* ((_e67096719_ _bind6708_)
                           (_E67116723_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx6662_
                               _bind6708_)))
                           (_E67106747_
                            (lambda ()
                              (if (gx#stx-pair? _e67096719_)
                                  (let ((_e67126727_
                                         (gx#syntax-e _e67096719_)))
                                    (let ((_hd67136730_ (##car _e67126727_))
                                          (_tl67146732_ (##cdr _e67126727_)))
                                      (let ((_ids6735_ _hd67136730_))
                                        (if (gx#stx-pair? _tl67146732_)
                                            (let ((_e67156737_
                                                   (gx#syntax-e _tl67146732_)))
                                              (let ((_hd67166740_
                                                     (##car _e67156737_))
                                                    (_tl67176742_
                                                     (##cdr _e67156737_)))
                                                (let ((_expr6745_
                                                       _hd67166740_))
                                                  (if (gx#stx-null?
                                                       _tl67176742_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6735_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6735_)
                        (cons _expr6745_ '()))
                  (_E67116723_))
              (_E67116723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67116723_)))))
                                  (_E67116723_)))))
                      (_E67106747_)))))
          (let* ((_e66666676_ _stx6662_)
                 (_E66686680_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66666676_)))
                 (_E66676704_
                  (lambda ()
                    (if (gx#stx-pair? _e66666676_)
                        (let ((_e66696684_ (gx#syntax-e _e66666676_)))
                          (let ((_hd66706687_ (##car _e66696684_))
                                (_tl66716689_ (##cdr _e66696684_)))
                            (if (gx#stx-pair? _tl66716689_)
                                (let ((_e66726692_ (gx#syntax-e _tl66716689_)))
                                  (let ((_hd66736695_ (##car _e66726692_))
                                        (_tl66746697_ (##cdr _e66726692_)))
                                    (let* ((_hd6700_ _hd66736695_)
                                           (_body6702_ _tl66746697_))
                                      (if (if (gx#stx-list? _hd6700_)
                                              (if (gx#stx-list? _body6702_)
                                                  (not (gx#stx-null?
                                                        _body6702_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form6663_
                                           (gx#stx-map1
                                            _generate6665_
                                            _hd6700_)
                                           _body6702_)
                                          (_E66686680_)))))
                                (_E66686680_))))
                        (_E66686680_)))))
            (_E66676704_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6754_)
          (let ((_form6756_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6660
             _stx6754_
             _form6756_))))
      (define gx#macro-expand-let-values
        (lambda _g9106_
          (let ((_g9105_ (length _g9106_)))
            (cond ((fx= _g9105_ 1)
                   (apply gx#macro-expand-let-values__0 _g9106_))
                  ((fx= _g9105_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6660 _g9106_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9106_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6659_)
      (gx#macro-expand-let-values__opt-lambda6660 _stx6659_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6657_)
      (gx#macro-expand-let-values__opt-lambda6660
       _stx6657_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6548_)
      (let* ((_e65496575_ _stx6548_)
             (_E65616579_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e65496575_)))
             (_E65516621_
              (lambda ()
                (if (gx#stx-pair? _e65496575_)
                    (let ((_e65626583_ (gx#syntax-e _e65496575_)))
                      (let ((_hd65636586_ (##car _e65626583_))
                            (_tl65646588_ (##cdr _e65626583_)))
                        (if (gx#stx-pair? _tl65646588_)
                            (let ((_e65656591_ (gx#syntax-e _tl65646588_)))
                              (let ((_hd65666594_ (##car _e65656591_))
                                    (_tl65676596_ (##cdr _e65656591_)))
                                (let ((_test6599_ _hd65666594_))
                                  (if (gx#stx-pair? _tl65676596_)
                                      (let ((_e65686601_
                                             (gx#syntax-e _tl65676596_)))
                                        (let ((_hd65696604_
                                               (##car _e65686601_))
                                              (_tl65706606_
                                               (##cdr _e65686601_)))
                                          (let ((_K6609_ _hd65696604_))
                                            (if (gx#stx-pair? _tl65706606_)
                                                (let ((_e65716611_
                                                       (gx#syntax-e
                                                        _tl65706606_)))
                                                  (let ((_hd65726614_
                                                         (##car _e65716611_))
                                                        (_tl65736616_
                                                         (##cdr _e65716611_)))
                                                    (let ((_E6619_ _hd65726614_))
                                                      (if (gx#stx-null?
                                                           _tl65736616_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test6599_
                                                               _K6609_
                                                               _E6619_)
                                                              (_E65616579_))
                                                          (_E65616579_)))))
                                                (_E65616579_)))))
                                      (_E65616579_)))))
                            (_E65616579_))))
                    (_E65616579_))))
             (_E65506653_
              (lambda ()
                (if (gx#stx-pair? _e65496575_)
                    (let ((_e65526625_ (gx#syntax-e _e65496575_)))
                      (let ((_hd65536628_ (##car _e65526625_))
                            (_tl65546630_ (##cdr _e65526625_)))
                        (if (gx#stx-pair? _tl65546630_)
                            (let ((_e65556633_ (gx#syntax-e _tl65546630_)))
                              (let ((_hd65566636_ (##car _e65556633_))
                                    (_tl65576638_ (##cdr _e65556633_)))
                                (let ((_test6641_ _hd65566636_))
                                  (if (gx#stx-pair? _tl65576638_)
                                      (let ((_e65586643_
                                             (gx#syntax-e _tl65576638_)))
                                        (let ((_hd65596646_
                                               (##car _e65586643_))
                                              (_tl65606648_
                                               (##cdr _e65586643_)))
                                          (let ((_K6651_ _hd65596646_))
                                            (if (gx#stx-null? _tl65606648_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test6641_
                                                     _K6651_
                                                     '#!void)
                                                    (_E65516621_))
                                                (_E65516621_)))))
                                      (_E65516621_)))))
                            (_E65516621_))))
                    (_E65516621_)))))
        (_E65506653_))))
  (define gx#free-identifier=?
    (lambda (_xid6536_ _yid6537_)
      (let ((_xe6539_ (gx#resolve-identifier__0 _xid6536_))
            (_ye6540_ (gx#resolve-identifier__0 _yid6537_)))
        (if (if _xe6539_ _ye6540_ '#f)
            (let ((_$e6542_ (eq? _xe6539_ _ye6540_)))
              (if _$e6542_
                  _$e6542_
                  (if (##structure-instance-of? _xe6539_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6540_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6539_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6540_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6545_ _xe6539_)) (if _$e6545_ _$e6545_ _ye6540_))
                '#f
                (gx#stx-eq? _xid6536_ _yid6537_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6520_ _yid6521_)
      (letrec ((_context6523_
                (lambda (_e6534_)
                  (if (##structure-direct-instance-of?
                       _e6534_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e6534_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks6524_
                (lambda (_e6532_)
                  (if (symbol? _e6532_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e6532_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e6532_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e6532_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap6525_
                (lambda (_e6530_)
                  (if (symbol? _e6530_)
                      _e6530_
                      (gx#syntax-local-unwrap _e6530_)))))
        (let ((_x6527_ (_unwrap6525_ _xid6520_))
              (_y6528_ (_unwrap6525_ _yid6521_)))
          (if (gx#stx-eq? _x6527_ _y6528_)
              (if (eq? (_context6523_ _x6527_) (_context6523_ _y6528_))
                  (andmap eq? (_marks6524_ _x6527_) (_marks6524_ _y6528_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx6518_)
      (if (gx#identifier? _stx6518_) (gx#core-identifier=? _stx6518_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6516_)
      (if (gx#identifier? _stx6516_)
          (gx#core-identifier=? _stx6516_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6514_)
      (if (gx#identifier? _x6514_)
          (if (not (gx#underscore? _x6514_)) _x6514_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6458
      (lambda (_stx6460_ _where6461_)
        (let _lp6463_ ((_rest6465_ (gx#syntax->list _stx6460_)))
          (let* ((_rest64666474_ _rest6465_)
                 (_E64696478_
                  (lambda () (error '"No clause matching" _rest64666474_)))
                 (_else64686482_ (lambda () '#t))
                 (_K64706492_
                  (lambda (_rest6485_ _hd6486_)
                    (if (not (gx#identifier? _hd6486_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where6461_
                         _hd6486_)
                        (if (find (lambda (_g64876489_)
                                    (gx#bound-identifier=?
                                     _g64876489_
                                     _hd6486_))
                                  _rest6485_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where6461_
                             _hd6486_)
                            (_lp6463_ _rest6485_))))))
            (if (##pair? _rest64666474_)
                (let ((_hd64716495_ (##car _rest64666474_))
                      (_tl64726497_ (##cdr _rest64666474_)))
                  (let* ((_hd6500_ _hd64716495_) (_rest6502_ _tl64726497_))
                    (_K64706492_ _rest6502_ _hd6500_)))
                (_else64686482_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6507_)
          (let ((_where6509_ _stx6507_))
            (gx#check-duplicate-identifiers__opt-lambda6458
             _stx6507_
             _where6509_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9108_
          (let ((_g9107_ (length _g9108_)))
            (cond ((fx= _g9107_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9108_))
                  ((fx= _g9107_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6458
                          _g9108_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9108_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6452_)
      (gx#stx-andmap
       (lambda (_x6454_)
         (let ((_$e6456_ (gx#identifier? _x6454_)))
           (if _$e6456_ _$e6456_ (gx#stx-false? _x6454_))))
       _stx6452_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6414
      (lambda (_stx6416_ _rebind?6417_ _phi6418_ _ctx6419_)
        (gx#stx-for-each1
         (lambda (_id6421_)
           (if (gx#identifier? _id6421_)
               (gx#core-bind-runtime!__opt-lambda6353
                _id6421_
                _rebind?6417_
                _phi6418_
                _ctx6419_)
               '#!void))
         _stx6416_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6426_)
          (let* ((_rebind?6428_ '#f)
                 (_phi6430_ (gx#current-expander-phi))
                 (_ctx6432_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6414
             _stx6426_
             _rebind?6428_
             _phi6430_
             _ctx6432_))))
      (define gx#core-bind-values!__1
        (lambda (_stx6434_ _rebind?6435_)
          (let* ((_phi6437_ (gx#current-expander-phi))
                 (_ctx6439_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6414
             _stx6434_
             _rebind?6435_
             _phi6437_
             _ctx6439_))))
      (define gx#core-bind-values!__2
        (lambda (_stx6441_ _rebind?6442_ _phi6443_)
          (let ((_ctx6445_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6414
             _stx6441_
             _rebind?6442_
             _phi6443_
             _ctx6445_))))
      (define gx#core-bind-values!
        (lambda _g9110_
          (let ((_g9109_ (length _g9110_)))
            (cond ((fx= _g9109_ 1) (apply gx#core-bind-values!__0 _g9110_))
                  ((fx= _g9109_ 2) (apply gx#core-bind-values!__1 _g9110_))
                  ((fx= _g9109_ 3) (apply gx#core-bind-values!__2 _g9110_))
                  ((fx= _g9109_ 4)
                   (apply gx#core-bind-values!__opt-lambda6414 _g9110_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9110_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6411_)
      (gx#stx-map1
       (lambda (_x6413_)
         (if (gx#identifier? _x6413_) (gx#core-quote-syntax__0 _x6413_) '#f))
       _stx6411_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6404_)
      (if (gx#identifier? _stx6404_)
          (let* ((_bind6406_ (gx#resolve-identifier__0 _stx6404_))
                 (_$e6408_ (not _bind6406_)))
            (if _$e6408_
                _$e6408_
                (##structure-instance-of? _bind6406_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6396_ _form6397_)
      (let ((_bind6399_ (gx#resolve-identifier__0 _id6396_)))
        (if (##structure-instance-of? _bind6399_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6396_)
            (if (not _bind6399_)
                (if (let ((_$e6401_
                           (gx#core-context-rebind?__opt-lambda4270
                            (gx#core-context-top__0))))
                      (if _$e6401_
                          _$e6401_
                          (gx#core-extern-symbol? (gx#stx-e _id6396_))))
                    (gx#core-quote-syntax__0 _id6396_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6397_
                     _id6396_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6397_
                 _id6396_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6353
      (lambda (_id6355_ _rebind?6356_ _phi6357_ _ctx6358_)
        (let* ((_key6360_ (gx#core-identifier-key _id6355_))
               (_eid6362_
                (gx#make-binding-id__opt-lambda6120
                 _key6360_
                 '#f
                 _phi6357_
                 _ctx6358_))
               (_bind6364_
                (if (##structure-instance-of? _ctx6358_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6362_
                     _key6360_
                     _phi6357_
                     _ctx6358_)
                    (if (##structure-instance-of? _ctx6358_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6362_
                         _key6360_
                         _phi6357_)
                        (if (##structure-instance-of?
                             _ctx6358_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid6362_
                             _key6360_
                             _phi6357_)
                            (##structure
                             gx#runtime-binding::t
                             _eid6362_
                             _key6360_
                             _phi6357_))))))
          (gx#bind-identifier!__opt-lambda4717
           _id6355_
           _bind6364_
           _rebind?6356_
           _phi6357_
           _ctx6358_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6370_)
          (let* ((_rebind?6372_ '#f)
                 (_phi6374_ (gx#current-expander-phi))
                 (_ctx6376_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6353
             _id6370_
             _rebind?6372_
             _phi6374_
             _ctx6376_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6378_ _rebind?6379_)
          (let* ((_phi6381_ (gx#current-expander-phi))
                 (_ctx6383_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6353
             _id6378_
             _rebind?6379_
             _phi6381_
             _ctx6383_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6385_ _rebind?6386_ _phi6387_)
          (let ((_ctx6389_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6353
             _id6385_
             _rebind?6386_
             _phi6387_
             _ctx6389_))))
      (define gx#core-bind-runtime!
        (lambda _g9112_
          (let ((_g9111_ (length _g9112_)))
            (cond ((fx= _g9111_ 1) (apply gx#core-bind-runtime!__0 _g9112_))
                  ((fx= _g9111_ 2) (apply gx#core-bind-runtime!__1 _g9112_))
                  ((fx= _g9111_ 3) (apply gx#core-bind-runtime!__2 _g9112_))
                  ((fx= _g9111_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6353 _g9112_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9112_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6308
      (lambda (_id6310_ _eid6311_ _rebind?6312_ _phi6313_ _ctx6314_)
        (let* ((_key6316_ (gx#core-identifier-key _id6310_))
               (_bind6318_
                (if (##structure-instance-of? _ctx6314_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6311_
                     _key6316_
                     _phi6313_
                     _ctx6314_)
                    (if (##structure-instance-of? _ctx6314_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6311_
                         _key6316_
                         _phi6313_)
                        (##structure
                         gx#runtime-binding::t
                         _eid6311_
                         _key6316_
                         _phi6313_)))))
          (gx#bind-identifier!__opt-lambda4717
           _id6310_
           _bind6318_
           _rebind?6312_
           _phi6313_
           _ctx6314_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6324_ _eid6325_)
          (let* ((_rebind?6327_ '#f)
                 (_phi6329_ (gx#current-expander-phi))
                 (_ctx6331_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6308
             _id6324_
             _eid6325_
             _rebind?6327_
             _phi6329_
             _ctx6331_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6333_ _eid6334_ _rebind?6335_)
          (let* ((_phi6337_ (gx#current-expander-phi))
                 (_ctx6339_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6308
             _id6333_
             _eid6334_
             _rebind?6335_
             _phi6337_
             _ctx6339_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6341_ _eid6342_ _rebind?6343_ _phi6344_)
          (let ((_ctx6346_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6308
             _id6341_
             _eid6342_
             _rebind?6343_
             _phi6344_
             _ctx6346_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9114_
          (let ((_g9113_ (length _g9114_)))
            (cond ((fx= _g9113_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9114_))
                  ((fx= _g9113_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9114_))
                  ((fx= _g9113_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9114_))
                  ((fx= _g9113_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6308
                          _g9114_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9114_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6268
      (lambda (_id6270_ _eid6271_ _rebind?6272_ _phi6273_ _ctx6274_)
        (gx#bind-identifier!__opt-lambda4717
         _id6270_
         (##structure
          gx#extern-binding::t
          _eid6271_
          (gx#core-identifier-key _id6270_)
          _phi6273_)
         _rebind?6272_
         _phi6273_
         _ctx6274_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6279_ _eid6280_)
          (let* ((_rebind?6282_ '#f)
                 (_phi6284_ (gx#current-expander-phi))
                 (_ctx6286_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6268
             _id6279_
             _eid6280_
             _rebind?6282_
             _phi6284_
             _ctx6286_))))
      (define gx#core-bind-extern!__1
        (lambda (_id6288_ _eid6289_ _rebind?6290_)
          (let* ((_phi6292_ (gx#current-expander-phi))
                 (_ctx6294_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6268
             _id6288_
             _eid6289_
             _rebind?6290_
             _phi6292_
             _ctx6294_))))
      (define gx#core-bind-extern!__2
        (lambda (_id6296_ _eid6297_ _rebind?6298_ _phi6299_)
          (let ((_ctx6301_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6268
             _id6296_
             _eid6297_
             _rebind?6298_
             _phi6299_
             _ctx6301_))))
      (define gx#core-bind-extern!
        (lambda _g9116_
          (let ((_g9115_ (length _g9116_)))
            (cond ((fx= _g9115_ 2) (apply gx#core-bind-extern!__0 _g9116_))
                  ((fx= _g9115_ 3) (apply gx#core-bind-extern!__1 _g9116_))
                  ((fx= _g9115_ 4) (apply gx#core-bind-extern!__2 _g9116_))
                  ((fx= _g9115_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6268 _g9116_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9116_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6222
      (lambda (_id6224_ _e6225_ _rebind?6226_ _phi6227_ _ctx6228_)
        (gx#bind-identifier!__opt-lambda4717
         _id6224_
         (let ((_key6233_ (gx#core-identifier-key _id6224_))
               (_e6234_ (if (let ((_$e6230_
                                   (##structure-instance-of?
                                    _e6225_
                                    'gx#expander::t)))
                              (if _$e6230_
                                  _$e6230_
                                  (##structure-instance-of?
                                   _e6225_
                                   'gx#expander-context::t)))
                            _e6225_
                            (##structure
                             gx#user-expander::t
                             _e6225_
                             _ctx6228_
                             _phi6227_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6120
             _key6233_
             '#t
             _phi6227_
             _ctx6228_)
            _key6233_
            _phi6227_
            _e6234_))
         _rebind?6226_
         _phi6227_
         _ctx6228_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6239_ _e6240_)
          (let* ((_rebind?6242_ '#f)
                 (_phi6244_ (gx#current-expander-phi))
                 (_ctx6246_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6222
             _id6239_
             _e6240_
             _rebind?6242_
             _phi6244_
             _ctx6246_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6248_ _e6249_ _rebind?6250_)
          (let* ((_phi6252_ (gx#current-expander-phi))
                 (_ctx6254_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6222
             _id6248_
             _e6249_
             _rebind?6250_
             _phi6252_
             _ctx6254_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6256_ _e6257_ _rebind?6258_ _phi6259_)
          (let ((_ctx6261_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6222
             _id6256_
             _e6257_
             _rebind?6258_
             _phi6259_
             _ctx6261_))))
      (define gx#core-bind-syntax!
        (lambda _g9118_
          (let ((_g9117_ (length _g9118_)))
            (cond ((fx= _g9117_ 2) (apply gx#core-bind-syntax!__0 _g9118_))
                  ((fx= _g9117_ 3) (apply gx#core-bind-syntax!__1 _g9118_))
                  ((fx= _g9117_ 4) (apply gx#core-bind-syntax!__2 _g9118_))
                  ((fx= _g9117_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6222 _g9118_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9118_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6205
      (lambda (_id6207_ _e6208_ _rebind?6209_)
        (gx#core-bind-syntax!__opt-lambda6222
         _id6207_
         _e6208_
         _rebind?6209_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6214_ _e6215_)
          (let ((_rebind?6217_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6205
             _id6214_
             _e6215_
             _rebind?6217_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9120_
          (let ((_g9119_ (length _g9120_)))
            (cond ((fx= _g9119_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9120_))
                  ((fx= _g9119_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6205 _g9120_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9120_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6163
      (lambda (_id6165_ _alias-id6166_ _rebind?6167_ _phi6168_ _ctx6169_)
        (gx#bind-identifier!__opt-lambda4717
         _id6165_
         (let ((_key6171_ (gx#core-identifier-key _id6165_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6120
             _key6171_
             '#t
             _phi6168_
             _ctx6169_)
            _key6171_
            _phi6168_
            _alias-id6166_))
         _rebind?6167_
         _phi6168_
         _ctx6169_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6176_ _alias-id6177_)
          (let* ((_rebind?6179_ '#f)
                 (_phi6181_ (gx#current-expander-phi))
                 (_ctx6183_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6163
             _id6176_
             _alias-id6177_
             _rebind?6179_
             _phi6181_
             _ctx6183_))))
      (define gx#core-bind-alias!__1
        (lambda (_id6185_ _alias-id6186_ _rebind?6187_)
          (let* ((_phi6189_ (gx#current-expander-phi))
                 (_ctx6191_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6163
             _id6185_
             _alias-id6186_
             _rebind?6187_
             _phi6189_
             _ctx6191_))))
      (define gx#core-bind-alias!__2
        (lambda (_id6193_ _alias-id6194_ _rebind?6195_ _phi6196_)
          (let ((_ctx6198_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6163
             _id6193_
             _alias-id6194_
             _rebind?6195_
             _phi6196_
             _ctx6198_))))
      (define gx#core-bind-alias!
        (lambda _g9122_
          (let ((_g9121_ (length _g9122_)))
            (cond ((fx= _g9121_ 2) (apply gx#core-bind-alias!__0 _g9122_))
                  ((fx= _g9121_ 3) (apply gx#core-bind-alias!__1 _g9122_))
                  ((fx= _g9121_ 4) (apply gx#core-bind-alias!__2 _g9122_))
                  ((fx= _g9121_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6163 _g9122_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9122_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6120
      (lambda (_key6122_ _syntax?6123_ _phi6124_ _ctx6125_)
        (if (uninterned-symbol? _key6122_)
            (gensym 'L)
            (if (pair? _key6122_)
                (gensym (car _key6122_))
                (if (##structure-instance-of? _ctx6125_ 'gx#top-context::t)
                    (let ((_ns6127_
                           (gx#core-context-namespace__opt-lambda4253
                            _ctx6125_)))
                      (if (if (fxzero? _phi6124_) (not _syntax?6123_) '#f)
                          (if _ns6127_
                              (make-symbol _ns6127_ '"#" _key6122_)
                              _key6122_)
                          (if _syntax?6123_
                              (make-symbol
                               (let ((_$e6129_ _ns6127_))
                                 (if _$e6129_ _$e6129_ '""))
                               '"[:"
                               (number->string _phi6124_)
                               '":]#"
                               _key6122_)
                              (make-symbol
                               (let ((_$e6132_ _ns6127_))
                                 (if _$e6132_ _$e6132_ '""))
                               '"["
                               (number->string _phi6124_)
                               '"]#"
                               _key6122_))))
                    (gensym _key6122_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6138_)
          (let* ((_syntax?6140_ '#f)
                 (_phi6142_ (gx#current-expander-phi))
                 (_ctx6144_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6120
             _key6138_
             _syntax?6140_
             _phi6142_
             _ctx6144_))))
      (define gx#make-binding-id__1
        (lambda (_key6146_ _syntax?6147_)
          (let* ((_phi6149_ (gx#current-expander-phi))
                 (_ctx6151_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6120
             _key6146_
             _syntax?6147_
             _phi6149_
             _ctx6151_))))
      (define gx#make-binding-id__2
        (lambda (_key6153_ _syntax?6154_ _phi6155_)
          (let ((_ctx6157_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6120
             _key6153_
             _syntax?6154_
             _phi6155_
             _ctx6157_))))
      (define gx#make-binding-id
        (lambda _g9124_
          (let ((_g9123_ (length _g9124_)))
            (cond ((fx= _g9123_ 1) (apply gx#make-binding-id__0 _g9124_))
                  ((fx= _g9123_ 2) (apply gx#make-binding-id__1 _g9124_))
                  ((fx= _g9123_ 3) (apply gx#make-binding-id__2 _g9124_))
                  ((fx= _g9123_ 4)
                   (apply gx#make-binding-id__opt-lambda6120 _g9124_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9124_)))))))))
