(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9081_)
      (let ((_expand-special9083_
             (lambda (_hd9085_ _K9086_ _rest9087_ _r9088_)
               (_K9086_ _rest9087_
                        (cons (gx#core-expand-top _hd9085_) _r9088_)))))
        (gx#core-expand-block__0 _stx9081_ _expand-special9083_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8834_)
      (let ((_expand-special8836_
             (lambda (_hd8956_ _K8957_ _rest8958_ _r8959_)
               (let ((_K8963_ (lambda (_e8961_)
                                (_K8957_ _rest8958_ (cons _e8961_ _r8959_)))))
                 (let ((_e89648993_ _hd8956_))
                   (let ((_E89888997_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89648993_))))
                     (let ((_E89849009_
                            (lambda ()
                              (if (gx#stx-pair? _e89648993_)
                                  (let ((_e89899001_
                                         (gx#syntax-e _e89648993_)))
                                    (let ((_hd89909004_ (##car _e89899001_))
                                          (_tl89919006_ (##cdr _e89899001_)))
                                      (if (if (gx#identifier? _hd89909004_)
                                              (gx#core-identifier=?
                                               _hd89909004_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8963_ (gx#core-expand-define-runtime%
                                                        _hd8956_))
                                              (_E89888997_))
                                          (_E89888997_))))
                                  (_E89888997_)))))
                       (let ((_E89809021_
                              (lambda ()
                                (if (gx#stx-pair? _e89648993_)
                                    (let ((_e89859013_
                                           (gx#syntax-e _e89648993_)))
                                      (let ((_hd89869016_ (##car _e89859013_))
                                            (_tl89879018_ (##cdr _e89859013_)))
                                        (if (if (gx#identifier? _hd89869016_)
                                                (gx#core-identifier=?
                                                 _hd89869016_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8963_ (gx#core-expand-define-alias%
                                                          _hd8956_))
                                                (_E89849009_))
                                            (_E89849009_))))
                                    (_E89849009_)))))
                         (let ((_E89709033_
                                (lambda ()
                                  (if (gx#stx-pair? _e89648993_)
                                      (let ((_e89819025_
                                             (gx#syntax-e _e89648993_)))
                                        (let ((_hd89829028_
                                               (##car _e89819025_))
                                              (_tl89839030_
                                               (##cdr _e89819025_)))
                                          (if (if (gx#identifier? _hd89829028_)
                                                  (gx#core-identifier=?
                                                   _hd89829028_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8963_ (gx#core-expand-define-syntax%
                                                            _hd8956_))
                                                  (_E89809021_))
                                              (_E89809021_))))
                                      (_E89809021_)))))
                           (let ((_E89669065_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89648993_)
                                        (let ((_e89719037_
                                               (gx#syntax-e _e89648993_)))
                                          (let ((_hd89729040_
                                                 (##car _e89719037_))
                                                (_tl89739042_
                                                 (##cdr _e89719037_)))
                                            (if (if (gx#identifier?
                                                     _hd89729040_)
                                                    (gx#core-identifier=?
                                                     _hd89729040_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89739042_)
                                                    (let ((_e89749045_
                                                           (gx#syntax-e
                                                            _tl89739042_)))
                                                      (let ((_hd89759048_
                                                             (##car _e89749045_))
                                                            (_tl89769050_
                                                             (##cdr _e89749045_)))
                                                        (let ((_hd-bind9053_
                                                               _hd89759048_))
                                                          (if (gx#stx-pair?
                                                               _tl89769050_)
                                                              (let ((_e89779055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89769050_)))
                        (let ((_hd89789058_ (##car _e89779055_))
                              (_tl89799060_ (##cdr _e89779055_)))
                          (let ((_expr9063_ _hd89789058_))
                            (if (gx#stx-null? _tl89799060_)
                                (if (gx#core-bind-values? _hd-bind9053_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9053_)
                                      (_K8963_ _hd8956_))
                                    (_E89709033_))
                                (_E89709033_)))))
                      (_E89709033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89709033_))
                                                (_E89709033_))))
                                        (_E89709033_)))))
                             (let ((_E89659077_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89648993_)
                                          (let ((_e89679069_
                                                 (gx#syntax-e _e89648993_)))
                                            (let ((_hd89689072_
                                                   (##car _e89679069_))
                                                  (_tl89699074_
                                                   (##cdr _e89679069_)))
                                              (if (if (gx#identifier?
                                                       _hd89689072_)
                                                      (gx#core-identifier=?
                                                       _hd89689072_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8963_ (gx#core-expand-begin-syntax%
                                                                _hd8956_))
                                                      (_E89669065_))
                                                  (_E89669065_))))
                                          (_E89669065_)))))
                               (let () (_E89659077_)))))))))))))
        (let ((_eval-body8837_
               (lambda (_rbody8845_)
                 ((letrec ((_lp8847_
                            (lambda (_rest8849_ _body8850_ _ebody8851_)
                              (let ((_rest88528860_ _rest8849_))
                                (let ((_E88558864_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88528860_))))
                                  (let ((_else88548868_
                                         (lambda ()
                                           (values _body8850_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8851_)
                                                     (gx#stx-source
                                                      _stx8834_)))))))
                                    (let ((_K88568944_
                                           (lambda (_rest8871_ _hd8872_)
                                             (let ((_e88738890_ _hd8872_))
                                               (let ((_E88858894_
                                                      (lambda ()
                                                        (_lp8847_
                                                         _rest8871_
                                                         (cons _hd8872_
                                                               _body8850_)
                                                         (cons _hd8872_
                                                               _ebody8851_)))))
                                                 (let ((_E88758906_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88738890_)
                                                              (let ((_e88868898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88738890_)))
                        (let ((_hd88878901_ (##car _e88868898_))
                              (_tl88888903_ (##cdr _e88868898_)))
                          (if (if (gx#identifier? _hd88878901_)
                                  (gx#core-identifier=?
                                   _hd88878901_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8847_
                                   _rest8871_
                                   (cons _hd8872_ _body8850_)
                                   _ebody8851_)
                                  (_E88858894_))
                              (_E88858894_))))
                      (_E88858894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88748940_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88738890_)
                        (let ((_e88768910_ (gx#syntax-e _e88738890_)))
                          (let ((_hd88778913_ (##car _e88768910_))
                                (_tl88788915_ (##cdr _e88768910_)))
                            (if (if (gx#identifier? _hd88778913_)
                                    (gx#core-identifier=?
                                     _hd88778913_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88788915_)
                                    (let ((_e88798918_
                                           (gx#syntax-e _tl88788915_)))
                                      (let ((_hd88808921_ (##car _e88798918_))
                                            (_tl88818923_ (##cdr _e88798918_)))
                                        (let ((_hd-bind8926_ _hd88808921_))
                                          (if (gx#stx-pair? _tl88818923_)
                                              (let ((_e88828928_
                                                     (gx#syntax-e
                                                      _tl88818923_)))
                                                (let ((_hd88838931_
                                                       (##car _e88828928_))
                                                      (_tl88848933_
                                                       (##cdr _e88828928_)))
                                                  (let ((_expr8936_
                                                         _hd88838931_))
                                                    (if (gx#stx-null?
                                                         _tl88848933_)
                                                        (if '#t
                                                            (let ((_ehd8938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8926_)
                                        (cons (gx#core-expand-expression
                                               _expr8936_)
                                              '())))
                            (gx#stx-source _hd8872_))))
                      (_lp8847_
                       _rest8871_
                       (cons _ehd8938_ _body8850_)
                       (cons _ehd8938_ _ebody8851_)))
                    (_E88758906_))
                (_E88758906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88758906_)))))
                                    (_E88758906_))
                                (_E88758906_))))
                        (_E88758906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88748940_)))))))))
                                      (if (##pair? _rest88528860_)
                                          (let ((_hd88578947_
                                                 (##car _rest88528860_))
                                                (_tl88588949_
                                                 (##cdr _rest88528860_)))
                                            (let ((_hd8952_ _hd88578947_))
                                              (let ((_rest8954_ _tl88588949_))
                                                (_K88568944_
                                                 _rest8954_
                                                 _hd8952_))))
                                          (_else88548868_)))))))))
                    _lp8847_)
                  _rbody8845_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8840_
                    (gx#core-expand-block__1
                     _stx8834_
                     _expand-special8836_
                     '#f)))
               (let ((_g9095_ (_eval-body8837_ _rbody8840_)))
                 (begin
                   (let ((_g9096_ (values-count _g9095_)))
                     (if (not (fx= _g9096_ 2))
                         (error "Context expects 2 values" _g9096_)))
                   (let ((_expanded-body8842_ (values-ref _g9095_ 0))
                         (_value8843_ (values-ref _g9095_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8842_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8843_ '())))
                      (gx#stx-source _stx8834_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8804_)
      (let ((_e88058812_ _stx8804_))
        (let ((_E88078816_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e88058812_))))
          (let ((_E88068830_
                 (lambda ()
                   (if (gx#stx-pair? _e88058812_)
                       (let ((_e88088820_ (gx#syntax-e _e88058812_)))
                         (let ((_hd88098823_ (##car _e88088820_))
                               (_tl88108825_ (##cdr _e88088820_)))
                           (let ((_body8828_ _tl88108825_))
                             (if (gx#stx-list? _body8828_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8828_)
                                  (gx#stx-source _stx8804_))
                                 (_E88078816_)))))
                       (_E88078816_)))))
            (let () (_E88068830_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8802_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8802_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8790_)
      (let ((_e87918794_ _stx8790_))
        (let ((_E87928798_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87918794_))))
          (let () (_E87928798_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8514_ _body8515_)
      (let ((_expand-internal-special8519_
             (lambda (_hd8676_ _K8677_ _rest8678_ _r8679_)
               (let ((_e86808705_ _hd8676_))
                 (let ((_E87008709_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86808705_))))
                   (let ((_E86968721_
                          (lambda ()
                            (if (gx#stx-pair? _e86808705_)
                                (let ((_e87018713_ (gx#syntax-e _e86808705_)))
                                  (let ((_hd87028716_ (##car _e87018713_))
                                        (_tl87038718_ (##cdr _e87018713_)))
                                    (if (if (gx#identifier? _hd87028716_)
                                            (gx#core-identifier=?
                                             _hd87028716_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8677_ _rest8678_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8676_)
                                                           _r8679_))
                                            (_E87008709_))
                                        (_E87008709_))))
                                (_E87008709_)))))
                     (let ((_E86928733_
                            (lambda ()
                              (if (gx#stx-pair? _e86808705_)
                                  (let ((_e86978725_
                                         (gx#syntax-e _e86808705_)))
                                    (let ((_hd86988728_ (##car _e86978725_))
                                          (_tl86998730_ (##cdr _e86978725_)))
                                      (if (if (gx#identifier? _hd86988728_)
                                              (gx#core-identifier=?
                                               _hd86988728_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8676_)
                                                (_K8677_ _rest8678_ _r8679_))
                                              (_E86968721_))
                                          (_E86968721_))))
                                  (_E86968721_)))))
                       (let ((_E86828745_
                              (lambda ()
                                (if (gx#stx-pair? _e86808705_)
                                    (let ((_e86938737_
                                           (gx#syntax-e _e86808705_)))
                                      (let ((_hd86948740_ (##car _e86938737_))
                                            (_tl86958742_ (##cdr _e86938737_)))
                                        (if (if (gx#identifier? _hd86948740_)
                                                (gx#core-identifier=?
                                                 _hd86948740_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8676_)
                                                  (_K8677_ _rest8678_ _r8679_))
                                                (_E86928733_))
                                            (_E86928733_))))
                                    (_E86928733_)))))
                         (let ((_E86818777_
                                (lambda ()
                                  (if (gx#stx-pair? _e86808705_)
                                      (let ((_e86838749_
                                             (gx#syntax-e _e86808705_)))
                                        (let ((_hd86848752_
                                               (##car _e86838749_))
                                              (_tl86858754_
                                               (##cdr _e86838749_)))
                                          (if (if (gx#identifier? _hd86848752_)
                                                  (gx#core-identifier=?
                                                   _hd86848752_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86858754_)
                                                  (let ((_e86868757_
                                                         (gx#syntax-e
                                                          _tl86858754_)))
                                                    (let ((_hd86878760_
                                                           (##car _e86868757_))
                                                          (_tl86888762_
                                                           (##cdr _e86868757_)))
                                                      (let ((_hd-bind8765_
                                                             _hd86878760_))
                                                        (if (gx#stx-pair?
                                                             _tl86888762_)
                                                            (let ((_e86898767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86888762_)))
                      (let ((_hd86908770_ (##car _e86898767_))
                            (_tl86918772_ (##cdr _e86898767_)))
                        (let ((_expr8775_ _hd86908770_))
                          (if (gx#stx-null? _tl86918772_)
                              (if (gx#core-bind-values? _hd-bind8765_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8765_)
                                    (_K8677_ _rest8678_
                                             (cons _hd8676_ _r8679_)))
                                  (_E86828745_))
                              (_E86828745_)))))
                    (_E86828745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86828745_))
                                              (_E86828745_))))
                                      (_E86828745_)))))
                           (let () (_E86818777_)))))))))))
        (let ((_wrap-internal8520_
               (lambda (_rbody8522_)
                 ((letrec ((_lp8524_
                            (lambda (_rest8526_
                                     _decls8527_
                                     _bind8528_
                                     _body8529_)
                              (let ((_e85308537_ _rest8526_))
                                (let ((_E85328586_
                                       (lambda ()
                                         (let ((_body8581_
                                                (let ((_body85408550_
                                                       _body8529_))
                                                  (let ((_E85448554_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85408550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85438558_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8529_)
                                                              (gx#stx-source
                                                               _stx8514_)))))
                                                      (let ((_try-match85428574_
                                                             (lambda ()
                                                               (let ((_K85458564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8562_) _expr8562_)))
                         (if (##pair? _body85408550_)
                             (let ((_hd85468567_ (##car _body85408550_))
                                   (_tl85478569_ (##cdr _body85408550_)))
                               (let ((_expr8572_ _hd85468567_))
                                 (if (##null? _tl85478569_)
                                     (_K85458564_ _expr8572_)
                                     (_else85438558_))))
                             (_else85438558_))))))
                (let ((_K85488578_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8514_))))
                  (if (##null? _body85408550_)
                      (_K85488578_)
                      (_try-match85428574_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8583_
                                                  (if (null? _bind8528_)
                                                      _body8581_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8581_ '())))
               (gx#stx-source _stx8514_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8527_)
                                                   _body8583_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8527_
                                                                (cons _body8583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8514_)))))))))
                                  (let ((_E85318672_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85308537_)
                                               (let ((_e85338590_
                                                      (gx#syntax-e
                                                       _e85308537_)))
                                                 (let ((_hd85348593_
                                                        (##car _e85338590_))
                                                       (_tl85358595_
                                                        (##cdr _e85338590_)))
                                                   (let ((_hd8598_
                                                          _hd85348593_))
                                                     (let ((_rest8600_
                                                            _tl85358595_))
                                                       (if '#t
                                                           (let ((_e86018618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8598_))
                     (let ((_E86138622_
                            (lambda ()
                              (if (null? _bind8528_)
                                  (_lp8524_
                                   _rest8600_
                                   _decls8527_
                                   _bind8528_
                                   (cons _hd8598_ _body8529_))
                                  (_lp8524_
                                   _rest8600_
                                   _decls8527_
                                   (cons (cons '#f (cons _hd8598_ '()))
                                         _bind8528_)
                                   _body8529_)))))
                       (let ((_E86038636_
                              (lambda ()
                                (if (gx#stx-pair? _e86018618_)
                                    (let ((_e86148626_
                                           (gx#syntax-e _e86018618_)))
                                      (let ((_hd86158629_ (##car _e86148626_))
                                            (_tl86168631_ (##cdr _e86148626_)))
                                        (if (if (gx#identifier? _hd86158629_)
                                                (gx#core-identifier=?
                                                 _hd86158629_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8634_ _tl86168631_))
                                              (if '#t
                                                  (_lp8524_
                                                   _rest8600_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8527_
                                                    _xdecls8634_)
                                                   _bind8528_
                                                   _body8529_)
                                                  (_E86138622_)))
                                            (_E86138622_))))
                                    (_E86138622_)))))
                         (let ((_E86028668_
                                (lambda ()
                                  (if (gx#stx-pair? _e86018618_)
                                      (let ((_e86048640_
                                             (gx#syntax-e _e86018618_)))
                                        (let ((_hd86058643_
                                               (##car _e86048640_))
                                              (_tl86068645_
                                               (##cdr _e86048640_)))
                                          (if (if (gx#identifier? _hd86058643_)
                                                  (gx#core-identifier=?
                                                   _hd86058643_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86068645_)
                                                  (let ((_e86078648_
                                                         (gx#syntax-e
                                                          _tl86068645_)))
                                                    (let ((_hd86088651_
                                                           (##car _e86078648_))
                                                          (_tl86098653_
                                                           (##cdr _e86078648_)))
                                                      (let ((_hd-bind8656_
                                                             _hd86088651_))
                                                        (if (gx#stx-pair?
                                                             _tl86098653_)
                                                            (let ((_e86108658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86098653_)))
                      (let ((_hd86118661_ (##car _e86108658_))
                            (_tl86128663_ (##cdr _e86108658_)))
                        (let ((_expr8666_ _hd86118661_))
                          (if (gx#stx-null? _tl86128663_)
                              (if '#t
                                  (_lp8524_
                                   _rest8600_
                                   _decls8527_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8656_)
                                               (cons (gx#core-expand-expression
                                                      _expr8666_)
                                                     '()))
                                         _bind8528_)
                                   _body8529_)
                                  (_E86038636_))
                              (_E86038636_)))))
                    (_E86038636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86038636_))
                                              (_E86038636_))))
                                      (_E86038636_)))))
                           (let () (_E86028668_))))))
                   (_E85328586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85328586_)))))
                                    (let () (_E85318672_))))))))
                    _lp8524_)
                  _rbody8522_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8518_
                 (lambda (_hd8781_ _rest8782_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8520_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8781_ _rest8782_)
                         (gx#stx-source _stx8514_))
                        _expand-internal-special8519_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9089 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9089)
                        __obj9089))))))
            (let ((_expand-special8517_
                   (lambda (_hd8785_ _K8786_ _rest8787_ _r8788_)
                     (_K8786_ '()
                              (cons (_expand-internal8518_ _hd8785_ _rest8787_)
                                    _r8788_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8515_)
                (gx#stx-source _stx8514_))
               _expand-special8517_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8452_)
      (let ((_e84538460_ _stx8452_))
        (let ((_E84558464_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84538460_))))
          (let ((_E84548510_
                 (lambda ()
                   (if (gx#stx-pair? _e84538460_)
                       (let ((_e84568468_ (gx#syntax-e _e84538460_)))
                         (let ((_hd84578471_ (##car _e84568468_))
                               (_tl84588473_ (##cdr _e84568468_)))
                           (let ((_body8476_ _tl84588473_))
                             (if (gx#stx-list? _body8476_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8478_)
                                      (let ((_e84798486_ _decl8478_))
                                        (let ((_E84818490_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84798486_))))
                                          (let ((_E84808506_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84798486_)
                                                       (let ((_e84828494_
                                                              (gx#syntax-e
                                                               _e84798486_)))
                                                         (let ((_hd84838497_
                                                                (##car _e84828494_))
                                                               (_tl84848499_
                                                                (##cdr _e84828494_)))
                                                           (let ((_head8502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84838497_))
                     (let ((_args8504_ _tl84848499_))
                       (if (gx#stx-list? _args8504_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8478_)
                           (_E84818490_))))))
               (_E84818490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84808506_))))))
                                    _body8476_))
                                  (gx#stx-source _stx8452_))
                                 (_E84558464_)))))
                       (_E84558464_)))))
            (let () (_E84548510_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8336_)
      (let ((_e83378344_ _stx8336_))
        (let ((_E83398348_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83378344_))))
          (let ((_E83388448_
                 (lambda ()
                   (if (gx#stx-pair? _e83378344_)
                       (let ((_e83408352_ (gx#syntax-e _e83378344_)))
                         (let ((_hd83418355_ (##car _e83408352_))
                               (_tl83428357_ (##cdr _e83408352_)))
                           (let ((_body8360_ _tl83428357_))
                             (if (gx#stx-list? _body8360_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8362_)
                                      (let ((_e83638373_ _bind8362_))
                                        (let ((_E83658377_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83638373_))))
                                          (let ((_E83648401_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83638373_)
                                                       (let ((_e83668381_
                                                              (gx#syntax-e
                                                               _e83638373_)))
                                                         (let ((_hd83678384_
                                                                (##car _e83668381_))
                                                               (_tl83688386_
                                                                (##cdr _e83668381_)))
                                                           (let ((_id8389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83678384_))
                     (if (gx#stx-pair? _tl83688386_)
                         (let ((_e83698391_ (gx#syntax-e _tl83688386_)))
                           (let ((_hd83708394_ (##car _e83698391_))
                                 (_tl83718396_ (##cdr _e83698391_)))
                             (let ((_eid8399_ _hd83708394_))
                               (if (gx#stx-null? _tl83718396_)
                                   (if (if (gx#identifier? _id8389_)
                                           (gx#identifier? _eid8399_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8389_
                                        (gx#stx-e _eid8399_))
                                       (_E83658377_))
                                   (_E83658377_)))))
                         (_E83658377_)))))
               (_E83658377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83648401_))))))
                                    _body8360_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8405_)
                                        (let ((_e84068416_ _bind8405_))
                                          (let ((_E84088420_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e84068416_))))
                                            (let ((_E84078444_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e84068416_)
                                                         (let ((_e84098424_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e84068416_)))
                   (let ((_hd84108427_ (##car _e84098424_))
                         (_tl84118429_ (##cdr _e84098424_)))
                     (let ((_id8432_ _hd84108427_))
                       (if (gx#stx-pair? _tl84118429_)
                           (let ((_e84128434_ (gx#syntax-e _tl84118429_)))
                             (let ((_hd84138437_ (##car _e84128434_))
                                   (_tl84148439_ (##cdr _e84128434_)))
                               (let ((_eid8442_ _hd84138437_))
                                 (if (gx#stx-null? _tl84148439_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8432_)
                                               (cons (gx#stx-e _eid8442_) '()))
                                         (_E84088420_))
                                     (_E84088420_)))))
                           (_E84088420_)))))
                 (_E84088420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E84078444_))))))
                                      _body8360_))
                                    (gx#stx-source _stx8336_)))
                                 (_E83398348_)))))
                       (_E83398348_)))))
            (let () (_E83388448_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8282_)
      (let ((_e82838296_ _stx8282_))
        (let ((_E82858300_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82838296_))))
          (let ((_E82848332_
                 (lambda ()
                   (if (gx#stx-pair? _e82838296_)
                       (let ((_e82868304_ (gx#syntax-e _e82838296_)))
                         (let ((_hd82878307_ (##car _e82868304_))
                               (_tl82888309_ (##cdr _e82868304_)))
                           (if (gx#stx-pair? _tl82888309_)
                               (let ((_e82898312_ (gx#syntax-e _tl82888309_)))
                                 (let ((_hd82908315_ (##car _e82898312_))
                                       (_tl82918317_ (##cdr _e82898312_)))
                                   (let ((_hd8320_ _hd82908315_))
                                     (if (gx#stx-pair? _tl82918317_)
                                         (let ((_e82928322_
                                                (gx#syntax-e _tl82918317_)))
                                           (let ((_hd82938325_
                                                  (##car _e82928322_))
                                                 (_tl82948327_
                                                  (##cdr _e82928322_)))
                                             (let ((_expr8330_ _hd82938325_))
                                               (if (gx#stx-null? _tl82948327_)
                                                   (if (gx#core-bind-values?
                                                        _hd8320_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8320_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8320_)
                              (cons (gx#core-expand-expression _expr8330_)
                                    '())))
                  (gx#stx-source _stx8282_)))
               (_E82858300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82858300_)))))
                                         (_E82858300_)))))
                               (_E82858300_))))
                       (_E82858300_)))))
            (let () (_E82848332_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8228_)
      (let ((_e82298242_ _stx8228_))
        (let ((_E82318246_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82298242_))))
          (let ((_E82308278_
                 (lambda ()
                   (if (gx#stx-pair? _e82298242_)
                       (let ((_e82328250_ (gx#syntax-e _e82298242_)))
                         (let ((_hd82338253_ (##car _e82328250_))
                               (_tl82348255_ (##cdr _e82328250_)))
                           (if (gx#stx-pair? _tl82348255_)
                               (let ((_e82358258_ (gx#syntax-e _tl82348255_)))
                                 (let ((_hd82368261_ (##car _e82358258_))
                                       (_tl82378263_ (##cdr _e82358258_)))
                                   (let ((_id8266_ _hd82368261_))
                                     (if (gx#stx-pair? _tl82378263_)
                                         (let ((_e82388268_
                                                (gx#syntax-e _tl82378263_)))
                                           (let ((_hd82398271_
                                                  (##car _e82388268_))
                                                 (_tl82408273_
                                                  (##cdr _e82388268_)))
                                             (let ((_binding-id8276_
                                                    _hd82398271_))
                                               (if (gx#stx-null? _tl82408273_)
                                                   (if (if (gx#identifier?
                                                            _id8266_)
                                                           (gx#identifier?
                                                            _binding-id8276_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8266_
                                                          (gx#stx-e
                                                           _binding-id8276_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8266_)
                              (cons (gx#core-quote-syntax__0 _binding-id8276_)
                                    '())))))
               (_E82318246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82318246_)))))
                                         (_E82318246_)))))
                               (_E82318246_))))
                       (_E82318246_)))))
            (let () (_E82308278_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8171_)
      (let ((_e81728185_ _stx8171_))
        (let ((_E81748189_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81728185_))))
          (let ((_E81738224_
                 (lambda ()
                   (if (gx#stx-pair? _e81728185_)
                       (let ((_e81758193_ (gx#syntax-e _e81728185_)))
                         (let ((_hd81768196_ (##car _e81758193_))
                               (_tl81778198_ (##cdr _e81758193_)))
                           (if (gx#stx-pair? _tl81778198_)
                               (let ((_e81788201_ (gx#syntax-e _tl81778198_)))
                                 (let ((_hd81798204_ (##car _e81788201_))
                                       (_tl81808206_ (##cdr _e81788201_)))
                                   (let ((_id8209_ _hd81798204_))
                                     (if (gx#stx-pair? _tl81808206_)
                                         (let ((_e81818211_
                                                (gx#syntax-e _tl81808206_)))
                                           (let ((_hd81828214_
                                                  (##car _e81818211_))
                                                 (_tl81838216_
                                                  (##cdr _e81818211_)))
                                             (let ((_expr8219_ _hd81828214_))
                                               (if (gx#stx-null? _tl81838216_)
                                                   (if (gx#identifier?
                                                        _id8209_)
                                                       (let ((_g9097_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8219_)))
                 (begin
                   (let ((_g9098_ (values-count _g9097_)))
                     (if (not (fx= _g9098_ 2))
                         (error "Context expects 2 values" _g9098_)))
                   (let ((_e-stx8221_ (values-ref _g9097_ 0))
                         (_e8222_ (values-ref _g9097_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8209_ _e8222_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8209_)
                                    (cons _e-stx8221_ '())))
                        (gx#stx-source _stx8171_))))))
               (_E81748189_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81748189_)))))
                                         (_E81748189_)))))
                               (_E81748189_))))
                       (_E81748189_)))))
            (let () (_E81738224_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8115_)
      (let ((_e81168129_ _stx8115_))
        (let ((_E81188133_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81168129_))))
          (let ((_E81178167_
                 (lambda ()
                   (if (gx#stx-pair? _e81168129_)
                       (let ((_e81198137_ (gx#syntax-e _e81168129_)))
                         (let ((_hd81208140_ (##car _e81198137_))
                               (_tl81218142_ (##cdr _e81198137_)))
                           (if (gx#stx-pair? _tl81218142_)
                               (let ((_e81228145_ (gx#syntax-e _tl81218142_)))
                                 (let ((_hd81238148_ (##car _e81228145_))
                                       (_tl81248150_ (##cdr _e81228145_)))
                                   (let ((_id8153_ _hd81238148_))
                                     (if (gx#stx-pair? _tl81248150_)
                                         (let ((_e81258155_
                                                (gx#syntax-e _tl81248150_)))
                                           (let ((_hd81268158_
                                                  (##car _e81258155_))
                                                 (_tl81278160_
                                                  (##cdr _e81258155_)))
                                             (let ((_alias-id8163_
                                                    _hd81268158_))
                                               (if (gx#stx-null? _tl81278160_)
                                                   (if (if (gx#identifier?
                                                            _id8153_)
                                                           (gx#identifier?
                                                            _alias-id8163_)
                                                           '#f)
                                                       (let ((_alias-id8165_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8163_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8153_
                                                            _alias-id8165_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8153_)
                                (cons _alias-id8165_ '()))))))
               (_E81188133_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81188133_)))))
                                         (_E81188133_)))))
                               (_E81188133_))))
                       (_E81188133_)))))
            (let () (_E81178167_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8056
      (lambda (_stx8058_ _wrap?8059_)
        (let ((_e80608070_ _stx8058_))
          (let ((_E80628074_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80608070_))))
            (let ((_E80618101_
                   (lambda ()
                     (if (gx#stx-pair? _e80608070_)
                         (let ((_e80638078_ (gx#syntax-e _e80608070_)))
                           (let ((_hd80648081_ (##car _e80638078_))
                                 (_tl80658083_ (##cdr _e80638078_)))
                             (if (gx#stx-pair? _tl80658083_)
                                 (let ((_e80668086_
                                        (gx#syntax-e _tl80658083_)))
                                   (let ((_hd80678089_ (##car _e80668086_))
                                         (_tl80688091_ (##cdr _e80668086_)))
                                     (let ((_hd8094_ _hd80678089_))
                                       (let ((_body8096_ _tl80688091_))
                                         (if (gx#core-bind-values? _hd8094_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8094_)
                                                  (let ((_body8099_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8094_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8058_
                              _body8096_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8059_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8099_)
                                                         (gx#stx-source
                                                          _stx8058_))
                                                        _body8099_))))
                                              gx#current-expander-context
                                              (let ((__obj9090
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9090)
                                                  __obj9090)))
                                             (_E80628074_))))))
                                 (_E80628074_))))
                         (_E80628074_)))))
              (let () (_E80618101_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8108_)
          (let ((_wrap?8110_ '#t))
            (gx#core-expand-lambda%__opt-lambda8056 _stx8108_ _wrap?8110_))))
      (define gx#core-expand-lambda%
        (lambda _g9100_
          (let ((_g9099_ (length _g9100_)))
            (cond ((fx= _g9099_ 1) (apply gx#core-expand-lambda%__0 _g9100_))
                  ((fx= _g9099_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8056 _g9100_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9100_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8022_)
      (let ((_e80238030_ _stx8022_))
        (let ((_E80258034_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80238030_))))
          (let ((_E80248053_
                 (lambda ()
                   (if (gx#stx-pair? _e80238030_)
                       (let ((_e80268038_ (gx#syntax-e _e80238030_)))
                         (let ((_hd80278041_ (##car _e80268038_))
                               (_tl80288043_ (##cdr _e80268038_)))
                           (let ((_clauses8046_ _tl80288043_))
                             (if (gx#stx-list? _clauses8046_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8048_)
                                      (gx#core-expand-lambda%__opt-lambda8056
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8048_)
                                        (let ((_$e8050_
                                               (gx#stx-source _clause8048_)))
                                          (if _$e8050_
                                              _$e8050_
                                              (gx#stx-source _stx8022_))))
                                       '#f))
                                    _clauses8046_))
                                  (gx#stx-source _stx8022_))
                                 (_E80258034_)))))
                       (_E80258034_)))))
            (let () (_E80248053_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7976_)
      (let ((_e79777987_ _stx7976_))
        (let ((_E79797991_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79777987_))))
          (let ((_E79788018_
                 (lambda ()
                   (if (gx#stx-pair? _e79777987_)
                       (let ((_e79807995_ (gx#syntax-e _e79777987_)))
                         (let ((_hd79817998_ (##car _e79807995_))
                               (_tl79828000_ (##cdr _e79807995_)))
                           (if (gx#stx-pair? _tl79828000_)
                               (let ((_e79838003_ (gx#syntax-e _tl79828000_)))
                                 (let ((_hd79848006_ (##car _e79838003_))
                                       (_tl79858008_ (##cdr _e79838003_)))
                                   (let ((_hd8011_ _hd79848006_))
                                     (let ((_body8013_ _tl79858008_))
                                       (if (gx#core-expand-let-bind? _hd8011_)
                                           (let ((_expressions8015_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8011_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8011_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8011_
                                                                _expressions8015_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7976_
                              _body8013_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7976_))))
                                              gx#current-expander-context
                                              (let ((__obj9091
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9091)
                                                  __obj9091))))
                                           (_E79797991_))))))
                               (_E79797991_))))
                       (_E79797991_)))))
            (let () (_E79788018_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7919
      (lambda (_stx7921_ _form7922_)
        (let ((_e79237933_ _stx7921_))
          (let ((_E79257937_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79237933_))))
            (let ((_E79247962_
                   (lambda ()
                     (if (gx#stx-pair? _e79237933_)
                         (let ((_e79267941_ (gx#syntax-e _e79237933_)))
                           (let ((_hd79277944_ (##car _e79267941_))
                                 (_tl79287946_ (##cdr _e79267941_)))
                             (if (gx#stx-pair? _tl79287946_)
                                 (let ((_e79297949_
                                        (gx#syntax-e _tl79287946_)))
                                   (let ((_hd79307952_ (##car _e79297949_))
                                         (_tl79317954_ (##cdr _e79297949_)))
                                     (let ((_hd7957_ _hd79307952_))
                                       (let ((_body7959_ _tl79317954_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7957_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7957_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7922_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7957_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7957_))
                       (cons (gx#core-expand-local-block _stx7921_ _body7959_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7921_))))
                                              gx#current-expander-context
                                              (let ((__obj9092
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9092)
                                                  __obj9092)))
                                             (_E79257937_))))))
                                 (_E79257937_))))
                         (_E79257937_)))))
              (let () (_E79247962_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7969_)
          (let ((_form7971_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7919
             _stx7969_
             _form7971_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9102_
          (let ((_g9101_ (length _g9102_)))
            (cond ((fx= _g9101_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9102_))
                  ((fx= _g9101_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7919
                          _g9102_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9102_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7918_)
      (gx#core-expand-letrec-values%__opt-lambda7919
       _stx7918_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7875_)
      (if (gx#stx-list? _stx7875_)
          (gx#stx-andmap
           (lambda (_bind7877_)
             (let ((_e78787888_ _bind7877_))
               (let ((_E78807892_ (lambda () '#f)))
                 (let ((_E78797914_
                        (lambda ()
                          (if (gx#stx-pair? _e78787888_)
                              (let ((_e78817896_ (gx#syntax-e _e78787888_)))
                                (let ((_hd78827899_ (##car _e78817896_))
                                      (_tl78837901_ (##cdr _e78817896_)))
                                  (let ((_hd7904_ _hd78827899_))
                                    (if (gx#stx-pair? _tl78837901_)
                                        (let ((_e78847906_
                                               (gx#syntax-e _tl78837901_)))
                                          (let ((_hd78857909_
                                                 (##car _e78847906_))
                                                (_tl78867911_
                                                 (##cdr _e78847906_)))
                                            (if (gx#stx-null? _tl78867911_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7904_)
                                                    (_E78807892_))
                                                (_E78807892_))))
                                        (_E78807892_)))))
                              (_E78807892_)))))
                   (let () (_E78797914_))))))
           _stx7875_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7834_)
      (let ((_e78357845_ _bind7834_))
        (let ((_E78377849_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78357845_))))
          (let ((_E78367871_
                 (lambda ()
                   (if (gx#stx-pair? _e78357845_)
                       (let ((_e78387853_ (gx#syntax-e _e78357845_)))
                         (let ((_hd78397856_ (##car _e78387853_))
                               (_tl78407858_ (##cdr _e78387853_)))
                           (if (gx#stx-pair? _tl78407858_)
                               (let ((_e78417861_ (gx#syntax-e _tl78407858_)))
                                 (let ((_hd78427864_ (##car _e78417861_))
                                       (_tl78437866_ (##cdr _e78417861_)))
                                   (let ((_expr7869_ _hd78427864_))
                                     (if (gx#stx-null? _tl78437866_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7869_)
                                             (_E78377849_))
                                         (_E78377849_)))))
                               (_E78377849_))))
                       (_E78377849_)))))
            (let () (_E78367871_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7793_)
      (let ((_e77947804_ _bind7793_))
        (let ((_E77967808_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77947804_))))
          (let ((_E77957830_
                 (lambda ()
                   (if (gx#stx-pair? _e77947804_)
                       (let ((_e77977812_ (gx#syntax-e _e77947804_)))
                         (let ((_hd77987815_ (##car _e77977812_))
                               (_tl77997817_ (##cdr _e77977812_)))
                           (let ((_hd7820_ _hd77987815_))
                             (if (gx#stx-pair? _tl77997817_)
                                 (let ((_e78007822_
                                        (gx#syntax-e _tl77997817_)))
                                   (let ((_hd78017825_ (##car _e78007822_))
                                         (_tl78027827_ (##cdr _e78007822_)))
                                     (if (gx#stx-null? _tl78027827_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7820_)
                                             (_E77967808_))
                                         (_E77967808_))))
                                 (_E77967808_)))))
                       (_E77967808_)))))
            (let () (_E77957830_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7751_ _expr7752_)
      (let ((_e77537763_ _bind7751_))
        (let ((_E77557767_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77537763_))))
          (let ((_E77547789_
                 (lambda ()
                   (if (gx#stx-pair? _e77537763_)
                       (let ((_e77567771_ (gx#syntax-e _e77537763_)))
                         (let ((_hd77577774_ (##car _e77567771_))
                               (_tl77587776_ (##cdr _e77567771_)))
                           (let ((_hd7779_ _hd77577774_))
                             (if (gx#stx-pair? _tl77587776_)
                                 (let ((_e77597781_
                                        (gx#syntax-e _tl77587776_)))
                                   (let ((_hd77607784_ (##car _e77597781_))
                                         (_tl77617786_ (##cdr _e77597781_)))
                                     (if (gx#stx-null? _tl77617786_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7779_)
                                                   (cons _expr7752_ '()))
                                             (_E77557767_))
                                         (_E77557767_))))
                                 (_E77557767_)))))
                       (_E77557767_)))))
            (let () (_E77547789_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7705_)
      (let ((_e77067716_ _stx7705_))
        (let ((_E77087720_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77067716_))))
          (let ((_E77077747_
                 (lambda ()
                   (if (gx#stx-pair? _e77067716_)
                       (let ((_e77097724_ (gx#syntax-e _e77067716_)))
                         (let ((_hd77107727_ (##car _e77097724_))
                               (_tl77117729_ (##cdr _e77097724_)))
                           (if (gx#stx-pair? _tl77117729_)
                               (let ((_e77127732_ (gx#syntax-e _tl77117729_)))
                                 (let ((_hd77137735_ (##car _e77127732_))
                                       (_tl77147737_ (##cdr _e77127732_)))
                                   (let ((_hd7740_ _hd77137735_))
                                     (let ((_body7742_ _tl77147737_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7740_)
                                           (let ((_expanders7744_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7740_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7740_
                                                   _expanders7744_)
                                                  (gx#core-expand-local-block
                                                   _stx7705_
                                                   _body7742_)))
                                              gx#current-expander-context
                                              (let ((__obj9093
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9093)
                                                  __obj9093))))
                                           (_E77087720_))))))
                               (_E77087720_))))
                       (_E77087720_)))))
            (let () (_E77077747_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7654_)
      (let ((_e76557665_ _stx7654_))
        (let ((_E76577669_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76557665_))))
          (let ((_E76567701_
                 (lambda ()
                   (if (gx#stx-pair? _e76557665_)
                       (let ((_e76587673_ (gx#syntax-e _e76557665_)))
                         (let ((_hd76597676_ (##car _e76587673_))
                               (_tl76607678_ (##cdr _e76587673_)))
                           (if (gx#stx-pair? _tl76607678_)
                               (let ((_e76617681_ (gx#syntax-e _tl76607678_)))
                                 (let ((_hd76627684_ (##car _e76617681_))
                                       (_tl76637686_ (##cdr _e76617681_)))
                                   (let ((_hd7689_ _hd76627684_))
                                     (let ((_body7691_ _tl76637686_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7689_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7689_
                                                 (make-list
                                                  (gx#stx-length _hd7689_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76937696_
                                                          _g76947698_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7511
                                                    _g76937696_
                                                    _g76947698_
                                                    '#t))
                                                 _hd7689_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7689_))
                                                (gx#core-expand-local-block
                                                 _stx7654_
                                                 _body7691_)))
                                            gx#current-expander-context
                                            (let ((__obj9094
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9094)
                                                __obj9094)))
                                           (_E76577669_))))))
                               (_E76577669_))))
                       (_E76577669_)))))
            (let () (_E76567701_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7611_)
      (if (gx#stx-list? _stx7611_)
          (gx#stx-andmap
           (lambda (_bind7613_)
             (let ((_e76147624_ _bind7613_))
               (let ((_E76167628_ (lambda () '#f)))
                 (let ((_E76157650_
                        (lambda ()
                          (if (gx#stx-pair? _e76147624_)
                              (let ((_e76177632_ (gx#syntax-e _e76147624_)))
                                (let ((_hd76187635_ (##car _e76177632_))
                                      (_tl76197637_ (##cdr _e76177632_)))
                                  (let ((_hd7640_ _hd76187635_))
                                    (if (gx#stx-pair? _tl76197637_)
                                        (let ((_e76207642_
                                               (gx#syntax-e _tl76197637_)))
                                          (let ((_hd76217645_
                                                 (##car _e76207642_))
                                                (_tl76227647_
                                                 (##cdr _e76207642_)))
                                            (if (gx#stx-null? _tl76227647_)
                                                (if '#t
                                                    (gx#identifier? _hd7640_)
                                                    (_E76167628_))
                                                (_E76167628_))))
                                        (_E76167628_)))))
                              (_E76167628_)))))
                   (let () (_E76157650_))))))
           _stx7611_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7568_)
      (let ((_e75697579_ _bind7568_))
        (let ((_E75717583_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75697579_))))
          (let ((_E75707607_
                 (lambda ()
                   (if (gx#stx-pair? _e75697579_)
                       (let ((_e75727587_ (gx#syntax-e _e75697579_)))
                         (let ((_hd75737590_ (##car _e75727587_))
                               (_tl75747592_ (##cdr _e75727587_)))
                           (if (gx#stx-pair? _tl75747592_)
                               (let ((_e75757595_ (gx#syntax-e _tl75747592_)))
                                 (let ((_hd75767598_ (##car _e75757595_))
                                       (_tl75777600_ (##cdr _e75757595_)))
                                   (let ((_expr7603_ _hd75767598_))
                                     (if (gx#stx-null? _tl75777600_)
                                         (if '#t
                                             (let ((_g9103_ (gx#core-expand-expression+1
                                                             _expr7603_)))
                                               (begin
                                                 (let ((_g9104_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9103_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9104_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9104_)))
                                                 (let ((_e7605_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9103_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7605_)))
                                             (_E75717583_))
                                         (_E75717583_)))))
                               (_E75717583_))))
                       (_E75717583_)))))
            (let () (_E75707607_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7511
      (lambda (_bind7513_ _e7514_ _rebind?7515_)
        (let ((_e75167526_ _bind7513_))
          (let ((_E75187530_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75167526_))))
            (let ((_E75177552_
                   (lambda ()
                     (if (gx#stx-pair? _e75167526_)
                         (let ((_e75197534_ (gx#syntax-e _e75167526_)))
                           (let ((_hd75207537_ (##car _e75197534_))
                                 (_tl75217539_ (##cdr _e75197534_)))
                             (let ((_id7542_ _hd75207537_))
                               (if (gx#stx-pair? _tl75217539_)
                                   (let ((_e75227544_
                                          (gx#syntax-e _tl75217539_)))
                                     (let ((_hd75237547_ (##car _e75227544_))
                                           (_tl75247549_ (##cdr _e75227544_)))
                                       (if (gx#stx-null? _tl75247549_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7542_
                                                _e7514_
                                                _rebind?7515_)
                                               (_E75187530_))
                                           (_E75187530_))))
                                   (_E75187530_)))))
                         (_E75187530_)))))
              (let () (_E75177552_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7559_ _e7560_)
          (let ((_rebind?7562_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7511
             _bind7559_
             _e7560_
             _rebind?7562_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9106_
          (let ((_g9105_ (length _g9106_)))
            (cond ((fx= _g9105_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9106_))
                  ((fx= _g9105_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7511
                          _g9106_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9106_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7471_)
      (let ((_e74727482_ _stx7471_))
        (let ((_E74747486_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74727482_))))
          (let ((_E74737508_
                 (lambda ()
                   (if (gx#stx-pair? _e74727482_)
                       (let ((_e74757490_ (gx#syntax-e _e74727482_)))
                         (let ((_hd74767493_ (##car _e74757490_))
                               (_tl74777495_ (##cdr _e74757490_)))
                           (if (gx#stx-pair? _tl74777495_)
                               (let ((_e74787498_ (gx#syntax-e _tl74777495_)))
                                 (let ((_hd74797501_ (##car _e74787498_))
                                       (_tl74807503_ (##cdr _e74787498_)))
                                   (let ((_expr7506_ _hd74797501_))
                                     (if (gx#stx-null? _tl74807503_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7506_)
                                             (_E74747486_))
                                         (_E74747486_)))))
                               (_E74747486_))))
                       (_E74747486_)))))
            (let () (_E74737508_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7430_)
      (let ((_e74317441_ _stx7430_))
        (let ((_E74337445_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74317441_))))
          (let ((_E74327467_
                 (lambda ()
                   (if (gx#stx-pair? _e74317441_)
                       (let ((_e74347449_ (gx#syntax-e _e74317441_)))
                         (let ((_hd74357452_ (##car _e74347449_))
                               (_tl74367454_ (##cdr _e74347449_)))
                           (if (gx#stx-pair? _tl74367454_)
                               (let ((_e74377457_ (gx#syntax-e _tl74367454_)))
                                 (let ((_hd74387460_ (##car _e74377457_))
                                       (_tl74397462_ (##cdr _e74377457_)))
                                   (let ((_e7465_ _hd74387460_))
                                     (if (gx#stx-null? _tl74397462_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7465_)
                                                          '()))
                                              (gx#stx-source _stx7430_))
                                             (_E74337445_))
                                         (_E74337445_)))))
                               (_E74337445_))))
                       (_E74337445_)))))
            (let () (_E74327467_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7389_)
      (let ((_e73907400_ _stx7389_))
        (let ((_E73927404_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73907400_))))
          (let ((_E73917426_
                 (lambda ()
                   (if (gx#stx-pair? _e73907400_)
                       (let ((_e73937408_ (gx#syntax-e _e73907400_)))
                         (let ((_hd73947411_ (##car _e73937408_))
                               (_tl73957413_ (##cdr _e73937408_)))
                           (if (gx#stx-pair? _tl73957413_)
                               (let ((_e73967416_ (gx#syntax-e _tl73957413_)))
                                 (let ((_hd73977419_ (##car _e73967416_))
                                       (_tl73987421_ (##cdr _e73967416_)))
                                   (let ((_e7424_ _hd73977419_))
                                     (if (gx#stx-null? _tl73987421_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7424_)
                                                          '()))
                                              (gx#stx-source _stx7389_))
                                             (_E73927404_))
                                         (_E73927404_)))))
                               (_E73927404_))))
                       (_E73927404_)))))
            (let () (_E73917426_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7346_)
      (let ((_e73477357_ _stx7346_))
        (let ((_E73497361_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73477357_))))
          (let ((_E73487385_
                 (lambda ()
                   (if (gx#stx-pair? _e73477357_)
                       (let ((_e73507365_ (gx#syntax-e _e73477357_)))
                         (let ((_hd73517368_ (##car _e73507365_))
                               (_tl73527370_ (##cdr _e73507365_)))
                           (if (gx#stx-pair? _tl73527370_)
                               (let ((_e73537373_ (gx#syntax-e _tl73527370_)))
                                 (let ((_hd73547376_ (##car _e73537373_))
                                       (_tl73557378_ (##cdr _e73537373_)))
                                   (let ((_rator7381_ _hd73547376_))
                                     (let ((_args7383_ _tl73557378_))
                                       (if (gx#stx-list? _args7383_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7381_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7383_))
                                            (gx#stx-source _stx7346_))
                                           (_E73497361_))))))
                               (_E73497361_))))
                       (_E73497361_)))))
            (let () (_E73487385_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7279_)
      (let ((_e72807296_ _stx7279_))
        (let ((_E72827300_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72807296_))))
          (let ((_E72817342_
                 (lambda ()
                   (if (gx#stx-pair? _e72807296_)
                       (let ((_e72837304_ (gx#syntax-e _e72807296_)))
                         (let ((_hd72847307_ (##car _e72837304_))
                               (_tl72857309_ (##cdr _e72837304_)))
                           (if (gx#stx-pair? _tl72857309_)
                               (let ((_e72867312_ (gx#syntax-e _tl72857309_)))
                                 (let ((_hd72877315_ (##car _e72867312_))
                                       (_tl72887317_ (##cdr _e72867312_)))
                                   (let ((_test7320_ _hd72877315_))
                                     (if (gx#stx-pair? _tl72887317_)
                                         (let ((_e72897322_
                                                (gx#syntax-e _tl72887317_)))
                                           (let ((_hd72907325_
                                                  (##car _e72897322_))
                                                 (_tl72917327_
                                                  (##cdr _e72897322_)))
                                             (let ((_K7330_ _hd72907325_))
                                               (if (gx#stx-pair? _tl72917327_)
                                                   (let ((_e72927332_
                                                          (gx#syntax-e
                                                           _tl72917327_)))
                                                     (let ((_hd72937335_
                                                            (##car _e72927332_))
                                                           (_tl72947337_
                                                            (##cdr _e72927332_)))
                                                       (let ((_E7340_ _hd72937335_))
                                                         (if (gx#stx-null?
                                                              _tl72947337_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7320_)
                                      (cons (gx#core-expand-expression _K7330_)
                                            (cons (gx#core-expand-expression
                                                   _E7340_)
                                                  '()))))
                          (gx#stx-source _stx7279_))
                         (_E72827300_))
                     (_E72827300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72827300_)))))
                                         (_E72827300_)))))
                               (_E72827300_))))
                       (_E72827300_)))))
            (let () (_E72817342_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7238_)
      (let ((_e72397249_ _stx7238_))
        (let ((_E72417253_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72397249_))))
          (let ((_E72407275_
                 (lambda ()
                   (if (gx#stx-pair? _e72397249_)
                       (let ((_e72427257_ (gx#syntax-e _e72397249_)))
                         (let ((_hd72437260_ (##car _e72427257_))
                               (_tl72447262_ (##cdr _e72427257_)))
                           (if (gx#stx-pair? _tl72447262_)
                               (let ((_e72457265_ (gx#syntax-e _tl72447262_)))
                                 (let ((_hd72467268_ (##car _e72457265_))
                                       (_tl72477270_ (##cdr _e72457265_)))
                                   (let ((_id7273_ _hd72467268_))
                                     (if (gx#stx-null? _tl72477270_)
                                         (if (gx#core-runtime-ref? _id7273_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7273_
                                                           _stx7238_)
                                                          '()))
                                              (gx#stx-source _stx7238_))
                                             (_E72417253_))
                                         (_E72417253_)))))
                               (_E72417253_))))
                       (_E72417253_)))))
            (let () (_E72407275_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7184_)
      (let ((_e71857198_ _stx7184_))
        (let ((_E71877202_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71857198_))))
          (let ((_E71867234_
                 (lambda ()
                   (if (gx#stx-pair? _e71857198_)
                       (let ((_e71887206_ (gx#syntax-e _e71857198_)))
                         (let ((_hd71897209_ (##car _e71887206_))
                               (_tl71907211_ (##cdr _e71887206_)))
                           (if (gx#stx-pair? _tl71907211_)
                               (let ((_e71917214_ (gx#syntax-e _tl71907211_)))
                                 (let ((_hd71927217_ (##car _e71917214_))
                                       (_tl71937219_ (##cdr _e71917214_)))
                                   (let ((_id7222_ _hd71927217_))
                                     (if (gx#stx-pair? _tl71937219_)
                                         (let ((_e71947224_
                                                (gx#syntax-e _tl71937219_)))
                                           (let ((_hd71957227_
                                                  (##car _e71947224_))
                                                 (_tl71967229_
                                                  (##cdr _e71947224_)))
                                             (let ((_expr7232_ _hd71957227_))
                                               (if (gx#stx-null? _tl71967229_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7222_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7222_
                             _stx7184_)
                            (cons (gx#core-expand-expression _expr7232_) '())))
                (gx#stx-source _stx7184_))
               (_E71877202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71877202_)))))
                                         (_E71877202_)))))
                               (_E71877202_))))
                       (_E71877202_)))))
            (let () (_E71867234_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7032_)
      (let ((_generate7034_
             (lambda (_body7064_)
               ((letrec ((_lp7066_
                          (lambda (_rest7068_ _ns7069_ _r7070_)
                            (let ((_e70717086_ _rest7068_))
                              (let ((_E70847090_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70717086_))))
                                (let ((_E70807094_
                                       (lambda ()
                                         (if (gx#stx-null? _e70717086_)
                                             (if '#t
                                                 (reverse _r7070_)
                                                 (_E70847090_))
                                             (_E70847090_)))))
                                  (let ((_E70737151_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70717086_)
                                               (let ((_e70817098_
                                                      (gx#syntax-e
                                                       _e70717086_)))
                                                 (let ((_hd70827101_
                                                        (##car _e70817098_))
                                                       (_tl70837103_
                                                        (##cdr _e70817098_)))
                                                   (let ((_hd7106_
                                                          _hd70827101_))
                                                     (let ((_rest7108_
                                                            _tl70837103_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7106_)
                                                               (_lp7066_
                                                                _rest7108_
                                                                _ns7069_
                                                                (cons (cons _hd7106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7069_
                                              (gx#stx-identifier
                                               _hd7106_
                                               _ns7069_
                                               '"#"
                                               _hd7106_)
                                              _hd7106_)
                                          '()))
                              _r7070_))
                       (let ((_e71097119_ _hd7106_))
                         (let ((_E71117123_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e71097119_))))
                           (let ((_E71107147_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71097119_)
                                        (let ((_e71127127_
                                               (gx#syntax-e _e71097119_)))
                                          (let ((_hd71137130_
                                                 (##car _e71127127_))
                                                (_tl71147132_
                                                 (##cdr _e71127127_)))
                                            (let ((_id7135_ _hd71137130_))
                                              (if (gx#stx-pair? _tl71147132_)
                                                  (let ((_e71157137_
                                                         (gx#syntax-e
                                                          _tl71147132_)))
                                                    (let ((_hd71167140_
                                                           (##car _e71157137_))
                                                          (_tl71177142_
                                                           (##cdr _e71157137_)))
                                                      (let ((_eid7145_
                                                             _hd71167140_))
                                                        (if (gx#stx-null?
                                                             _tl71177142_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7135_)
                            (gx#identifier? _eid7145_)
                            '#f)
                        (_lp7066_
                         _rest7108_
                         _ns7069_
                         (cons (cons _id7135_ (cons _eid7145_ '())) _r7070_))
                        (_E71117123_))
                    (_E71117123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71117123_)))))
                                        (_E71117123_)))))
                             (let () (_E71107147_))))))
                   (_E70807094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70807094_)))))
                                    (let ((_E70727180_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70717086_)
                                                 (let ((_e70747155_
                                                        (gx#syntax-e
                                                         _e70717086_)))
                                                   (let ((_hd70757158_
                                                          (##car _e70747155_))
                                                         (_tl70767160_
                                                          (##cdr _e70747155_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70757158_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70767160_)
                                                             (let ((_e70777163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70767160_)))
                       (let ((_hd70787166_ (##car _e70777163_))
                             (_tl70797168_ (##cdr _e70777163_)))
                         (let ((_ns7171_ _hd70787166_))
                           (let ((_rest7173_ _tl70797168_))
                             (if '#t
                                 (let ((_ns7178_
                                        (if (gx#identifier? _ns7171_)
                                            (symbol->string
                                             (gx#stx-e _ns7171_))
                                            (if (let ((_$e7175_
                                                       (gx#stx-string?
                                                        _ns7171_)))
                                                  (if _$e7175_
                                                      _$e7175_
                                                      (gx#stx-false?
                                                       _ns7171_)))
                                                (gx#stx-e _ns7171_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7032_
                                                 _ns7171_)))))
                                   (_lp7066_ _rest7173_ _ns7178_ _r7070_))
                                 (_E70737151_))))))
                     (_E70737151_))
                 (_E70737151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70737151_)))))
                                      (let () (_E70727180_))))))))))
                  _lp7066_)
                _body7064_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70357042_ _stx7032_))
          (let ((_E70377046_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70357042_))))
            (let ((_E70367060_
                   (lambda ()
                     (if (gx#stx-pair? _e70357042_)
                         (let ((_e70387050_ (gx#syntax-e _e70357042_)))
                           (let ((_hd70397053_ (##car _e70387050_))
                                 (_tl70407055_ (##cdr _e70387050_)))
                             (let ((_body7058_ _tl70407055_))
                               (if (gx#stx-list? _body7058_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7034_ _body7058_))
                                   (_E70377046_)))))
                         (_E70377046_)))))
              (let () (_E70367060_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6978_)
      (let ((_e69796992_ _stx6978_))
        (let ((_E69816996_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69796992_))))
          (let ((_E69807028_
                 (lambda ()
                   (if (gx#stx-pair? _e69796992_)
                       (let ((_e69827000_ (gx#syntax-e _e69796992_)))
                         (let ((_hd69837003_ (##car _e69827000_))
                               (_tl69847005_ (##cdr _e69827000_)))
                           (if (gx#stx-pair? _tl69847005_)
                               (let ((_e69857008_ (gx#syntax-e _tl69847005_)))
                                 (let ((_hd69867011_ (##car _e69857008_))
                                       (_tl69877013_ (##cdr _e69857008_)))
                                   (let ((_hd7016_ _hd69867011_))
                                     (if (gx#stx-pair? _tl69877013_)
                                         (let ((_e69887018_
                                                (gx#syntax-e _tl69877013_)))
                                           (let ((_hd69897021_
                                                  (##car _e69887018_))
                                                 (_tl69907023_
                                                  (##cdr _e69887018_)))
                                             (let ((_expr7026_ _hd69897021_))
                                               (if (gx#stx-null? _tl69907023_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7016_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7016_)
                           (cons _expr7026_ '())))
               (_E69816996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69816996_)))))
                                         (_E69816996_)))))
                               (_E69816996_))))
                       (_E69816996_)))))
            (let () (_E69807028_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6924_)
      (let ((_e69256938_ _stx6924_))
        (let ((_E69276942_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69256938_))))
          (let ((_E69266974_
                 (lambda ()
                   (if (gx#stx-pair? _e69256938_)
                       (let ((_e69286946_ (gx#syntax-e _e69256938_)))
                         (let ((_hd69296949_ (##car _e69286946_))
                               (_tl69306951_ (##cdr _e69286946_)))
                           (if (gx#stx-pair? _tl69306951_)
                               (let ((_e69316954_ (gx#syntax-e _tl69306951_)))
                                 (let ((_hd69326957_ (##car _e69316954_))
                                       (_tl69336959_ (##cdr _e69316954_)))
                                   (let ((_hd6962_ _hd69326957_))
                                     (if (gx#stx-pair? _tl69336959_)
                                         (let ((_e69346964_
                                                (gx#syntax-e _tl69336959_)))
                                           (let ((_hd69356967_
                                                  (##car _e69346964_))
                                                 (_tl69366969_
                                                  (##cdr _e69346964_)))
                                             (let ((_expr6972_ _hd69356967_))
                                               (if (gx#stx-null? _tl69366969_)
                                                   (if (gx#identifier?
                                                        _hd6962_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6972_ '())))
               (_E69276942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69276942_)))))
                                         (_E69276942_)))))
                               (_E69276942_))))
                       (_E69276942_)))))
            (let () (_E69266974_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6870_)
      (let ((_e68716884_ _stx6870_))
        (let ((_E68736888_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68716884_))))
          (let ((_E68726920_
                 (lambda ()
                   (if (gx#stx-pair? _e68716884_)
                       (let ((_e68746892_ (gx#syntax-e _e68716884_)))
                         (let ((_hd68756895_ (##car _e68746892_))
                               (_tl68766897_ (##cdr _e68746892_)))
                           (if (gx#stx-pair? _tl68766897_)
                               (let ((_e68776900_ (gx#syntax-e _tl68766897_)))
                                 (let ((_hd68786903_ (##car _e68776900_))
                                       (_tl68796905_ (##cdr _e68776900_)))
                                   (let ((_id6908_ _hd68786903_))
                                     (if (gx#stx-pair? _tl68796905_)
                                         (let ((_e68806910_
                                                (gx#syntax-e _tl68796905_)))
                                           (let ((_hd68816913_
                                                  (##car _e68806910_))
                                                 (_tl68826915_
                                                  (##cdr _e68806910_)))
                                             (let ((_alias-id6918_
                                                    _hd68816913_))
                                               (if (gx#stx-null? _tl68826915_)
                                                   (if (if (gx#identifier?
                                                            _id6908_)
                                                           (gx#identifier?
                                                            _alias-id6918_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6918_ '())))
               (_E68736888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68736888_)))))
                                         (_E68736888_)))))
                               (_E68736888_))))
                       (_E68736888_)))))
            (let () (_E68726920_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6827_)
      (let ((_e68286838_ _stx6827_))
        (let ((_E68306842_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68286838_))))
          (let ((_E68296866_
                 (lambda ()
                   (if (gx#stx-pair? _e68286838_)
                       (let ((_e68316846_ (gx#syntax-e _e68286838_)))
                         (let ((_hd68326849_ (##car _e68316846_))
                               (_tl68336851_ (##cdr _e68316846_)))
                           (if (gx#stx-pair? _tl68336851_)
                               (let ((_e68346854_ (gx#syntax-e _tl68336851_)))
                                 (let ((_hd68356857_ (##car _e68346854_))
                                       (_tl68366859_ (##cdr _e68346854_)))
                                   (let ((_hd6862_ _hd68356857_))
                                     (let ((_body6864_ _tl68366859_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6862_)
                                               (if (gx#stx-list? _body6864_)
                                                   (not (gx#stx-null?
                                                         _body6864_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6862_)
                                            _body6864_)
                                           (_E68306842_))))))
                               (_E68306842_))))
                       (_E68306842_)))))
            (let () (_E68296866_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6763_)
      (let ((_generate6765_
             (lambda (_clause6795_)
               (let ((_e67966803_ _clause6795_))
                 (let ((_E67986807_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6763_
                           _clause6795_))))
                   (let ((_E67976823_
                          (lambda ()
                            (if (gx#stx-pair? _e67966803_)
                                (let ((_e67996811_ (gx#syntax-e _e67966803_)))
                                  (let ((_hd68006814_ (##car _e67996811_))
                                        (_tl68016816_ (##cdr _e67996811_)))
                                    (let ((_hd6819_ _hd68006814_))
                                      (let ((_body6821_ _tl68016816_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6819_)
                                                (if (gx#stx-list? _body6821_)
                                                    (not (gx#stx-null?
                                                          _body6821_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6819_)
                                                   _body6821_)
                                             (gx#stx-source _clause6795_))
                                            (_E67986807_))))))
                                (_E67986807_)))))
                     (let () (_E67976823_))))))))
        (let ((_e67666773_ _stx6763_))
          (let ((_E67686777_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67666773_))))
            (let ((_E67676791_
                   (lambda ()
                     (if (gx#stx-pair? _e67666773_)
                         (let ((_e67696781_ (gx#syntax-e _e67666773_)))
                           (let ((_hd67706784_ (##car _e67696781_))
                                 (_tl67716786_ (##cdr _e67696781_)))
                             (let ((_clauses6789_ _tl67716786_))
                               (if (gx#stx-list? _clauses6789_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6765_ _clauses6789_))
                                   (_E67686777_)))))
                         (_E67686777_)))))
              (let () (_E67676791_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6662
      (lambda (_stx6664_ _form6665_)
        (let ((_generate6667_
               (lambda (_bind6710_)
                 (let ((_e67116721_ _bind6710_))
                   (let ((_E67136725_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6664_
                             _bind6710_))))
                     (let ((_E67126749_
                            (lambda ()
                              (if (gx#stx-pair? _e67116721_)
                                  (let ((_e67146729_
                                         (gx#syntax-e _e67116721_)))
                                    (let ((_hd67156732_ (##car _e67146729_))
                                          (_tl67166734_ (##cdr _e67146729_)))
                                      (let ((_ids6737_ _hd67156732_))
                                        (if (gx#stx-pair? _tl67166734_)
                                            (let ((_e67176739_
                                                   (gx#syntax-e _tl67166734_)))
                                              (let ((_hd67186742_
                                                     (##car _e67176739_))
                                                    (_tl67196744_
                                                     (##cdr _e67176739_)))
                                                (let ((_expr6747_
                                                       _hd67186742_))
                                                  (if (gx#stx-null?
                                                       _tl67196744_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6737_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6737_)
                        (cons _expr6747_ '()))
                  (_E67136725_))
              (_E67136725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67136725_)))))
                                  (_E67136725_)))))
                       (let () (_E67126749_))))))))
          (let ((_e66686678_ _stx6664_))
            (let ((_E66706682_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e66686678_))))
              (let ((_E66696706_
                     (lambda ()
                       (if (gx#stx-pair? _e66686678_)
                           (let ((_e66716686_ (gx#syntax-e _e66686678_)))
                             (let ((_hd66726689_ (##car _e66716686_))
                                   (_tl66736691_ (##cdr _e66716686_)))
                               (if (gx#stx-pair? _tl66736691_)
                                   (let ((_e66746694_
                                          (gx#syntax-e _tl66736691_)))
                                     (let ((_hd66756697_ (##car _e66746694_))
                                           (_tl66766699_ (##cdr _e66746694_)))
                                       (let ((_hd6702_ _hd66756697_))
                                         (let ((_body6704_ _tl66766699_))
                                           (if (if (gx#stx-list? _hd6702_)
                                                   (if (gx#stx-list?
                                                        _body6704_)
                                                       (not (gx#stx-null?
                                                             _body6704_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6665_
                                                (gx#stx-map1
                                                 _generate6667_
                                                 _hd6702_)
                                                _body6704_)
                                               (_E66706682_))))))
                                   (_E66706682_))))
                           (_E66706682_)))))
                (let () (_E66696706_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6756_)
          (let ((_form6758_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6662
             _stx6756_
             _form6758_))))
      (define gx#macro-expand-let-values
        (lambda _g9108_
          (let ((_g9107_ (length _g9108_)))
            (cond ((fx= _g9107_ 1)
                   (apply gx#macro-expand-let-values__0 _g9108_))
                  ((fx= _g9107_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6662 _g9108_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9108_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6661_)
      (gx#macro-expand-let-values__opt-lambda6662 _stx6661_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6659_)
      (gx#macro-expand-let-values__opt-lambda6662
       _stx6659_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6550_)
      (let ((_e65516577_ _stx6550_))
        (let ((_E65636581_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65516577_))))
          (let ((_E65536623_
                 (lambda ()
                   (if (gx#stx-pair? _e65516577_)
                       (let ((_e65646585_ (gx#syntax-e _e65516577_)))
                         (let ((_hd65656588_ (##car _e65646585_))
                               (_tl65666590_ (##cdr _e65646585_)))
                           (if (gx#stx-pair? _tl65666590_)
                               (let ((_e65676593_ (gx#syntax-e _tl65666590_)))
                                 (let ((_hd65686596_ (##car _e65676593_))
                                       (_tl65696598_ (##cdr _e65676593_)))
                                   (let ((_test6601_ _hd65686596_))
                                     (if (gx#stx-pair? _tl65696598_)
                                         (let ((_e65706603_
                                                (gx#syntax-e _tl65696598_)))
                                           (let ((_hd65716606_
                                                  (##car _e65706603_))
                                                 (_tl65726608_
                                                  (##cdr _e65706603_)))
                                             (let ((_K6611_ _hd65716606_))
                                               (if (gx#stx-pair? _tl65726608_)
                                                   (let ((_e65736613_
                                                          (gx#syntax-e
                                                           _tl65726608_)))
                                                     (let ((_hd65746616_
                                                            (##car _e65736613_))
                                                           (_tl65756618_
                                                            (##cdr _e65736613_)))
                                                       (let ((_E6621_ _hd65746616_))
                                                         (if (gx#stx-null?
                                                              _tl65756618_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6601_ _K6611_ _E6621_)
                         (_E65636581_))
                     (_E65636581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65636581_)))))
                                         (_E65636581_)))))
                               (_E65636581_))))
                       (_E65636581_)))))
            (let ((_E65526655_
                   (lambda ()
                     (if (gx#stx-pair? _e65516577_)
                         (let ((_e65546627_ (gx#syntax-e _e65516577_)))
                           (let ((_hd65556630_ (##car _e65546627_))
                                 (_tl65566632_ (##cdr _e65546627_)))
                             (if (gx#stx-pair? _tl65566632_)
                                 (let ((_e65576635_
                                        (gx#syntax-e _tl65566632_)))
                                   (let ((_hd65586638_ (##car _e65576635_))
                                         (_tl65596640_ (##cdr _e65576635_)))
                                     (let ((_test6643_ _hd65586638_))
                                       (if (gx#stx-pair? _tl65596640_)
                                           (let ((_e65606645_
                                                  (gx#syntax-e _tl65596640_)))
                                             (let ((_hd65616648_
                                                    (##car _e65606645_))
                                                   (_tl65626650_
                                                    (##cdr _e65606645_)))
                                               (let ((_K6653_ _hd65616648_))
                                                 (if (gx#stx-null?
                                                      _tl65626650_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6643_
                                                          _K6653_
                                                          '#!void)
                                                         (_E65536623_))
                                                     (_E65536623_)))))
                                           (_E65536623_)))))
                                 (_E65536623_))))
                         (_E65536623_)))))
              (let () (_E65526655_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6538_ _yid6539_)
      (let ((_xe6541_ (gx#resolve-identifier__0 _xid6538_))
            (_ye6542_ (gx#resolve-identifier__0 _yid6539_)))
        (if (if _xe6541_ _ye6542_ '#f)
            (let ((_$e6544_ (eq? _xe6541_ _ye6542_)))
              (if _$e6544_
                  _$e6544_
                  (if (##structure-instance-of? _xe6541_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6542_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6541_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6542_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6547_ _xe6541_)) (if _$e6547_ _$e6547_ _ye6542_))
                '#f
                (gx#stx-eq? _xid6538_ _yid6539_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6522_ _yid6523_)
      (let ((_context6525_
             (lambda (_e6536_)
               (if (##structure-direct-instance-of?
                    _e6536_
                    'gx#syntax-quote::t)
                   (##direct-structure-ref _e6536_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6526_
               (lambda (_e6534_)
                 (if (symbol? _e6534_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6534_
                          'gx#identifier-wrap::t)
                         (##direct-structure-ref
                          _e6534_
                          '3
                          gx#identifier-wrap::t
                          '#f)
                         (##direct-structure-ref
                          _e6534_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6527_
                 (lambda (_e6532_)
                   (if (symbol? _e6532_)
                       _e6532_
                       (gx#syntax-local-unwrap _e6532_)))))
            (let ((_x6529_ (_unwrap6527_ _xid6522_))
                  (_y6530_ (_unwrap6527_ _yid6523_)))
              (if (gx#stx-eq? _x6529_ _y6530_)
                  (if (eq? (_context6525_ _x6529_) (_context6525_ _y6530_))
                      (andmap eq? (_marks6526_ _x6529_) (_marks6526_ _y6530_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6520_)
      (if (gx#identifier? _stx6520_) (gx#core-identifier=? _stx6520_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6518_)
      (if (gx#identifier? _stx6518_)
          (gx#core-identifier=? _stx6518_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6516_)
      (if (gx#identifier? _x6516_)
          (if (not (gx#underscore? _x6516_)) _x6516_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6460
      (lambda (_stx6462_ _where6463_)
        ((letrec ((_lp6465_
                   (lambda (_rest6467_)
                     (let ((_rest64686476_ _rest6467_))
                       (let ((_E64716480_
                              (lambda ()
                                (error '"No clause matching" _rest64686476_))))
                         (let ((_else64706484_ (lambda () '#t)))
                           (let ((_K64726494_
                                  (lambda (_rest6487_ _hd6488_)
                                    (if (not (gx#identifier? _hd6488_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6463_
                                         _hd6488_)
                                        (if (find (lambda (_g64896491_)
                                                    (gx#bound-identifier=?
                                                     _g64896491_
                                                     _hd6488_))
                                                  _rest6487_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6463_
                                             _hd6488_)
                                            (_lp6465_ _rest6487_))))))
                             (if (##pair? _rest64686476_)
                                 (let ((_hd64736497_ (##car _rest64686476_))
                                       (_tl64746499_ (##cdr _rest64686476_)))
                                   (let ((_hd6502_ _hd64736497_))
                                     (let ((_rest6504_ _tl64746499_))
                                       (_K64726494_ _rest6504_ _hd6502_))))
                                 (_else64706484_)))))))))
           _lp6465_)
         (gx#syntax->list _stx6462_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6509_)
          (let ((_where6511_ _stx6509_))
            (gx#check-duplicate-identifiers__opt-lambda6460
             _stx6509_
             _where6511_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9110_
          (let ((_g9109_ (length _g9110_)))
            (cond ((fx= _g9109_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9110_))
                  ((fx= _g9109_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6460
                          _g9110_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9110_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6454_)
      (gx#stx-andmap
       (lambda (_x6456_)
         (let ((_$e6458_ (gx#identifier? _x6456_)))
           (if _$e6458_ _$e6458_ (gx#stx-false? _x6456_))))
       _stx6454_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6416
      (lambda (_stx6418_ _rebind?6419_ _phi6420_ _ctx6421_)
        (gx#stx-for-each1
         (lambda (_id6423_)
           (if (gx#identifier? _id6423_)
               (gx#core-bind-runtime!__opt-lambda6355
                _id6423_
                _rebind?6419_
                _phi6420_
                _ctx6421_)
               '#!void))
         _stx6418_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6428_)
          (let ((_rebind?6430_ '#f))
            (let ((_phi6432_ (gx#current-expander-phi)))
              (let ((_ctx6434_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6416
                 _stx6428_
                 _rebind?6430_
                 _phi6432_
                 _ctx6434_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6436_ _rebind?6437_)
          (let ((_phi6439_ (gx#current-expander-phi)))
            (let ((_ctx6441_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6416
               _stx6436_
               _rebind?6437_
               _phi6439_
               _ctx6441_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6443_ _rebind?6444_ _phi6445_)
          (let ((_ctx6447_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6416
             _stx6443_
             _rebind?6444_
             _phi6445_
             _ctx6447_))))
      (define gx#core-bind-values!
        (lambda _g9112_
          (let ((_g9111_ (length _g9112_)))
            (cond ((fx= _g9111_ 1) (apply gx#core-bind-values!__0 _g9112_))
                  ((fx= _g9111_ 2) (apply gx#core-bind-values!__1 _g9112_))
                  ((fx= _g9111_ 3) (apply gx#core-bind-values!__2 _g9112_))
                  ((fx= _g9111_ 4)
                   (apply gx#core-bind-values!__opt-lambda6416 _g9112_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9112_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6413_)
      (gx#stx-map1
       (lambda (_x6415_)
         (if (gx#identifier? _x6415_) (gx#core-quote-syntax__0 _x6415_) '#f))
       _stx6413_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6406_)
      (if (gx#identifier? _stx6406_)
          (let ((_bind6408_ (gx#resolve-identifier__0 _stx6406_)))
            (let ((_$e6410_ (not _bind6408_)))
              (if _$e6410_
                  _$e6410_
                  (##structure-instance-of?
                   _bind6408_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6398_ _form6399_)
      (let ((_bind6401_ (gx#resolve-identifier__0 _id6398_)))
        (if (##structure-instance-of? _bind6401_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6398_)
            (if (not _bind6401_)
                (if (let ((_$e6403_
                           (gx#core-context-rebind?__opt-lambda4272
                            (gx#core-context-top__0))))
                      (if _$e6403_
                          _$e6403_
                          (gx#core-extern-symbol? (gx#stx-e _id6398_))))
                    (gx#core-quote-syntax__0 _id6398_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6399_
                     _id6398_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6399_
                 _id6398_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6355
      (lambda (_id6357_ _rebind?6358_ _phi6359_ _ctx6360_)
        (let ((_key6362_ (gx#core-identifier-key _id6357_)))
          (let ((_eid6364_
                 (gx#make-binding-id__opt-lambda6122
                  _key6362_
                  '#f
                  _phi6359_
                  _ctx6360_)))
            (let ((_bind6366_
                   (if (##structure-instance-of?
                        _ctx6360_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6364_
                        _key6362_
                        _phi6359_
                        _ctx6360_)
                       (if (##structure-instance-of?
                            _ctx6360_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6364_
                            _key6362_
                            _phi6359_)
                           (if (##structure-instance-of?
                                _ctx6360_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6364_
                                _key6362_
                                _phi6359_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6364_
                                _key6362_
                                _phi6359_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4719
                 _id6357_
                 _bind6366_
                 _rebind?6358_
                 _phi6359_
                 _ctx6360_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6372_)
          (let ((_rebind?6374_ '#f))
            (let ((_phi6376_ (gx#current-expander-phi)))
              (let ((_ctx6378_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6355
                 _id6372_
                 _rebind?6374_
                 _phi6376_
                 _ctx6378_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6380_ _rebind?6381_)
          (let ((_phi6383_ (gx#current-expander-phi)))
            (let ((_ctx6385_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6355
               _id6380_
               _rebind?6381_
               _phi6383_
               _ctx6385_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6387_ _rebind?6388_ _phi6389_)
          (let ((_ctx6391_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6355
             _id6387_
             _rebind?6388_
             _phi6389_
             _ctx6391_))))
      (define gx#core-bind-runtime!
        (lambda _g9114_
          (let ((_g9113_ (length _g9114_)))
            (cond ((fx= _g9113_ 1) (apply gx#core-bind-runtime!__0 _g9114_))
                  ((fx= _g9113_ 2) (apply gx#core-bind-runtime!__1 _g9114_))
                  ((fx= _g9113_ 3) (apply gx#core-bind-runtime!__2 _g9114_))
                  ((fx= _g9113_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6355 _g9114_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9114_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6310
      (lambda (_id6312_ _eid6313_ _rebind?6314_ _phi6315_ _ctx6316_)
        (let ((_key6318_ (gx#core-identifier-key _id6312_)))
          (let ((_bind6320_
                 (if (##structure-instance-of? _ctx6316_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6313_
                      _key6318_
                      _phi6315_
                      _ctx6316_)
                     (if (##structure-instance-of?
                          _ctx6316_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6313_
                          _key6318_
                          _phi6315_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6313_
                          _key6318_
                          _phi6315_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4719
               _id6312_
               _bind6320_
               _rebind?6314_
               _phi6315_
               _ctx6316_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6326_ _eid6327_)
          (let ((_rebind?6329_ '#f))
            (let ((_phi6331_ (gx#current-expander-phi)))
              (let ((_ctx6333_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6310
                 _id6326_
                 _eid6327_
                 _rebind?6329_
                 _phi6331_
                 _ctx6333_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6335_ _eid6336_ _rebind?6337_)
          (let ((_phi6339_ (gx#current-expander-phi)))
            (let ((_ctx6341_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6310
               _id6335_
               _eid6336_
               _rebind?6337_
               _phi6339_
               _ctx6341_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6343_ _eid6344_ _rebind?6345_ _phi6346_)
          (let ((_ctx6348_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6310
             _id6343_
             _eid6344_
             _rebind?6345_
             _phi6346_
             _ctx6348_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9116_
          (let ((_g9115_ (length _g9116_)))
            (cond ((fx= _g9115_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9116_))
                  ((fx= _g9115_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9116_))
                  ((fx= _g9115_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9116_))
                  ((fx= _g9115_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6310
                          _g9116_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9116_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6270
      (lambda (_id6272_ _eid6273_ _rebind?6274_ _phi6275_ _ctx6276_)
        (gx#bind-identifier!__opt-lambda4719
         _id6272_
         (##structure
          gx#extern-binding::t
          _eid6273_
          (gx#core-identifier-key _id6272_)
          _phi6275_)
         _rebind?6274_
         _phi6275_
         _ctx6276_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6281_ _eid6282_)
          (let ((_rebind?6284_ '#f))
            (let ((_phi6286_ (gx#current-expander-phi)))
              (let ((_ctx6288_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6270
                 _id6281_
                 _eid6282_
                 _rebind?6284_
                 _phi6286_
                 _ctx6288_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6290_ _eid6291_ _rebind?6292_)
          (let ((_phi6294_ (gx#current-expander-phi)))
            (let ((_ctx6296_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6270
               _id6290_
               _eid6291_
               _rebind?6292_
               _phi6294_
               _ctx6296_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6298_ _eid6299_ _rebind?6300_ _phi6301_)
          (let ((_ctx6303_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6270
             _id6298_
             _eid6299_
             _rebind?6300_
             _phi6301_
             _ctx6303_))))
      (define gx#core-bind-extern!
        (lambda _g9118_
          (let ((_g9117_ (length _g9118_)))
            (cond ((fx= _g9117_ 2) (apply gx#core-bind-extern!__0 _g9118_))
                  ((fx= _g9117_ 3) (apply gx#core-bind-extern!__1 _g9118_))
                  ((fx= _g9117_ 4) (apply gx#core-bind-extern!__2 _g9118_))
                  ((fx= _g9117_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6270 _g9118_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9118_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6224
      (lambda (_id6226_ _e6227_ _rebind?6228_ _phi6229_ _ctx6230_)
        (gx#bind-identifier!__opt-lambda4719
         _id6226_
         (let ((_key6235_ (gx#core-identifier-key _id6226_))
               (_e6236_ (if (let ((_$e6232_
                                   (##structure-instance-of?
                                    _e6227_
                                    'gx#expander::t)))
                              (if _$e6232_
                                  _$e6232_
                                  (##structure-instance-of?
                                   _e6227_
                                   'gx#expander-context::t)))
                            _e6227_
                            (##structure
                             gx#user-expander::t
                             _e6227_
                             _ctx6230_
                             _phi6229_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6122
             _key6235_
             '#t
             _phi6229_
             _ctx6230_)
            _key6235_
            _phi6229_
            _e6236_))
         _rebind?6228_
         _phi6229_
         _ctx6230_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6241_ _e6242_)
          (let ((_rebind?6244_ '#f))
            (let ((_phi6246_ (gx#current-expander-phi)))
              (let ((_ctx6248_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6224
                 _id6241_
                 _e6242_
                 _rebind?6244_
                 _phi6246_
                 _ctx6248_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6250_ _e6251_ _rebind?6252_)
          (let ((_phi6254_ (gx#current-expander-phi)))
            (let ((_ctx6256_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6224
               _id6250_
               _e6251_
               _rebind?6252_
               _phi6254_
               _ctx6256_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6258_ _e6259_ _rebind?6260_ _phi6261_)
          (let ((_ctx6263_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6224
             _id6258_
             _e6259_
             _rebind?6260_
             _phi6261_
             _ctx6263_))))
      (define gx#core-bind-syntax!
        (lambda _g9120_
          (let ((_g9119_ (length _g9120_)))
            (cond ((fx= _g9119_ 2) (apply gx#core-bind-syntax!__0 _g9120_))
                  ((fx= _g9119_ 3) (apply gx#core-bind-syntax!__1 _g9120_))
                  ((fx= _g9119_ 4) (apply gx#core-bind-syntax!__2 _g9120_))
                  ((fx= _g9119_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6224 _g9120_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9120_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6207
      (lambda (_id6209_ _e6210_ _rebind?6211_)
        (gx#core-bind-syntax!__opt-lambda6224
         _id6209_
         _e6210_
         _rebind?6211_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6216_ _e6217_)
          (let ((_rebind?6219_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6207
             _id6216_
             _e6217_
             _rebind?6219_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9122_
          (let ((_g9121_ (length _g9122_)))
            (cond ((fx= _g9121_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9122_))
                  ((fx= _g9121_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6207 _g9122_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9122_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6165
      (lambda (_id6167_ _alias-id6168_ _rebind?6169_ _phi6170_ _ctx6171_)
        (gx#bind-identifier!__opt-lambda4719
         _id6167_
         (let ((_key6173_ (gx#core-identifier-key _id6167_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6122
             _key6173_
             '#t
             _phi6170_
             _ctx6171_)
            _key6173_
            _phi6170_
            _alias-id6168_))
         _rebind?6169_
         _phi6170_
         _ctx6171_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6178_ _alias-id6179_)
          (let ((_rebind?6181_ '#f))
            (let ((_phi6183_ (gx#current-expander-phi)))
              (let ((_ctx6185_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda6165
                 _id6178_
                 _alias-id6179_
                 _rebind?6181_
                 _phi6183_
                 _ctx6185_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6187_ _alias-id6188_ _rebind?6189_)
          (let ((_phi6191_ (gx#current-expander-phi)))
            (let ((_ctx6193_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda6165
               _id6187_
               _alias-id6188_
               _rebind?6189_
               _phi6191_
               _ctx6193_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6195_ _alias-id6196_ _rebind?6197_ _phi6198_)
          (let ((_ctx6200_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6165
             _id6195_
             _alias-id6196_
             _rebind?6197_
             _phi6198_
             _ctx6200_))))
      (define gx#core-bind-alias!
        (lambda _g9124_
          (let ((_g9123_ (length _g9124_)))
            (cond ((fx= _g9123_ 2) (apply gx#core-bind-alias!__0 _g9124_))
                  ((fx= _g9123_ 3) (apply gx#core-bind-alias!__1 _g9124_))
                  ((fx= _g9123_ 4) (apply gx#core-bind-alias!__2 _g9124_))
                  ((fx= _g9123_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6165 _g9124_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9124_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6122
      (lambda (_key6124_ _syntax?6125_ _phi6126_ _ctx6127_)
        (if (uninterned-symbol? _key6124_)
            (gensym 'L)
            (if (pair? _key6124_)
                (gensym (car _key6124_))
                (if (##structure-instance-of? _ctx6127_ 'gx#top-context::t)
                    (let ((_ns6129_
                           (gx#core-context-namespace__opt-lambda4255
                            _ctx6127_)))
                      (if (if (fxzero? _phi6126_) (not _syntax?6125_) '#f)
                          (if _ns6129_
                              (make-symbol _ns6129_ '"#" _key6124_)
                              _key6124_)
                          (if _syntax?6125_
                              (make-symbol
                               (let ((_$e6131_ _ns6129_))
                                 (if _$e6131_ _$e6131_ '""))
                               '"[:"
                               (number->string _phi6126_)
                               '":]#"
                               _key6124_)
                              (make-symbol
                               (let ((_$e6134_ _ns6129_))
                                 (if _$e6134_ _$e6134_ '""))
                               '"["
                               (number->string _phi6126_)
                               '"]#"
                               _key6124_))))
                    (gensym _key6124_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6140_)
          (let ((_syntax?6142_ '#f))
            (let ((_phi6144_ (gx#current-expander-phi)))
              (let ((_ctx6146_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda6122
                 _key6140_
                 _syntax?6142_
                 _phi6144_
                 _ctx6146_))))))
      (define gx#make-binding-id__1
        (lambda (_key6148_ _syntax?6149_)
          (let ((_phi6151_ (gx#current-expander-phi)))
            (let ((_ctx6153_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda6122
               _key6148_
               _syntax?6149_
               _phi6151_
               _ctx6153_)))))
      (define gx#make-binding-id__2
        (lambda (_key6155_ _syntax?6156_ _phi6157_)
          (let ((_ctx6159_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6122
             _key6155_
             _syntax?6156_
             _phi6157_
             _ctx6159_))))
      (define gx#make-binding-id
        (lambda _g9126_
          (let ((_g9125_ (length _g9126_)))
            (cond ((fx= _g9125_ 1) (apply gx#make-binding-id__0 _g9126_))
                  ((fx= _g9125_ 2) (apply gx#make-binding-id__1 _g9126_))
                  ((fx= _g9125_ 3) (apply gx#make-binding-id__2 _g9126_))
                  ((fx= _g9125_ 4)
                   (apply gx#make-binding-id__opt-lambda6122 _g9126_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9126_)))))))))
