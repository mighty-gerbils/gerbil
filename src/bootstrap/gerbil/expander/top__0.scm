(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9074_)
      (let ((_expand-special9076_
             (lambda (_hd9078_ _K9079_ _rest9080_ _r9081_)
               (_K9079_ _rest9080_
                        (cons (gx#core-expand-top _hd9078_) _r9081_)))))
        (gx#core-expand-block__0 _stx9074_ _expand-special9076_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8827_)
      (let ((_expand-special8829_
             (lambda (_hd8949_ _K8950_ _rest8951_ _r8952_)
               (let ((_K8956_ (lambda (_e8954_)
                                (_K8950_ _rest8951_ (cons _e8954_ _r8952_)))))
                 (let ((_e89578986_ _hd8949_))
                   (let ((_E89818990_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89578986_))))
                     (let ((_E89779002_
                            (lambda ()
                              (if (gx#stx-pair? _e89578986_)
                                  (let ((_e89828994_
                                         (gx#syntax-e _e89578986_)))
                                    (let ((_hd89838997_ (##car _e89828994_))
                                          (_tl89848999_ (##cdr _e89828994_)))
                                      (if (if (gx#identifier? _hd89838997_)
                                              (gx#core-identifier=?
                                               _hd89838997_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8956_ (gx#core-expand-define-runtime%
                                                        _hd8949_))
                                              (_E89818990_))
                                          (_E89818990_))))
                                  (_E89818990_)))))
                       (let ((_E89739014_
                              (lambda ()
                                (if (gx#stx-pair? _e89578986_)
                                    (let ((_e89789006_
                                           (gx#syntax-e _e89578986_)))
                                      (let ((_hd89799009_ (##car _e89789006_))
                                            (_tl89809011_ (##cdr _e89789006_)))
                                        (if (if (gx#identifier? _hd89799009_)
                                                (gx#core-identifier=?
                                                 _hd89799009_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8956_ (gx#core-expand-define-alias%
                                                          _hd8949_))
                                                (_E89779002_))
                                            (_E89779002_))))
                                    (_E89779002_)))))
                         (let ((_E89639026_
                                (lambda ()
                                  (if (gx#stx-pair? _e89578986_)
                                      (let ((_e89749018_
                                             (gx#syntax-e _e89578986_)))
                                        (let ((_hd89759021_
                                               (##car _e89749018_))
                                              (_tl89769023_
                                               (##cdr _e89749018_)))
                                          (if (if (gx#identifier? _hd89759021_)
                                                  (gx#core-identifier=?
                                                   _hd89759021_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8956_ (gx#core-expand-define-syntax%
                                                            _hd8949_))
                                                  (_E89739014_))
                                              (_E89739014_))))
                                      (_E89739014_)))))
                           (let ((_E89599058_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89578986_)
                                        (let ((_e89649030_
                                               (gx#syntax-e _e89578986_)))
                                          (let ((_hd89659033_
                                                 (##car _e89649030_))
                                                (_tl89669035_
                                                 (##cdr _e89649030_)))
                                            (if (if (gx#identifier?
                                                     _hd89659033_)
                                                    (gx#core-identifier=?
                                                     _hd89659033_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89669035_)
                                                    (let ((_e89679038_
                                                           (gx#syntax-e
                                                            _tl89669035_)))
                                                      (let ((_hd89689041_
                                                             (##car _e89679038_))
                                                            (_tl89699043_
                                                             (##cdr _e89679038_)))
                                                        (let ((_hd-bind9046_
                                                               _hd89689041_))
                                                          (if (gx#stx-pair?
                                                               _tl89699043_)
                                                              (let ((_e89709048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89699043_)))
                        (let ((_hd89719051_ (##car _e89709048_))
                              (_tl89729053_ (##cdr _e89709048_)))
                          (let ((_expr9056_ _hd89719051_))
                            (if (gx#stx-null? _tl89729053_)
                                (if (gx#core-bind-values? _hd-bind9046_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9046_)
                                      (_K8956_ _hd8949_))
                                    (_E89639026_))
                                (_E89639026_)))))
                      (_E89639026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89639026_))
                                                (_E89639026_))))
                                        (_E89639026_)))))
                             (let ((_E89589070_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89578986_)
                                          (let ((_e89609062_
                                                 (gx#syntax-e _e89578986_)))
                                            (let ((_hd89619065_
                                                   (##car _e89609062_))
                                                  (_tl89629067_
                                                   (##cdr _e89609062_)))
                                              (if (if (gx#identifier?
                                                       _hd89619065_)
                                                      (gx#core-identifier=?
                                                       _hd89619065_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8956_ (gx#core-expand-begin-syntax%
                                                                _hd8949_))
                                                      (_E89599058_))
                                                  (_E89599058_))))
                                          (_E89599058_)))))
                               (let () (_E89589070_)))))))))))))
        (let ((_eval-body8830_
               (lambda (_rbody8838_)
                 ((letrec ((_lp8840_
                            (lambda (_rest8842_ _body8843_ _ebody8844_)
                              (let ((_rest88458853_ _rest8842_))
                                (let ((_E88488857_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88458853_))))
                                  (let ((_else88478861_
                                         (lambda ()
                                           (values _body8843_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8844_)
                                                     (gx#stx-source
                                                      _stx8827_)))))))
                                    (let ((_K88498937_
                                           (lambda (_rest8864_ _hd8865_)
                                             (let ((_e88668883_ _hd8865_))
                                               (let ((_E88788887_
                                                      (lambda ()
                                                        (_lp8840_
                                                         _rest8864_
                                                         (cons _hd8865_
                                                               _body8843_)
                                                         (cons _hd8865_
                                                               _ebody8844_)))))
                                                 (let ((_E88688899_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88668883_)
                                                              (let ((_e88798891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88668883_)))
                        (let ((_hd88808894_ (##car _e88798891_))
                              (_tl88818896_ (##cdr _e88798891_)))
                          (if (if (gx#identifier? _hd88808894_)
                                  (gx#core-identifier=?
                                   _hd88808894_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8840_
                                   _rest8864_
                                   (cons _hd8865_ _body8843_)
                                   _ebody8844_)
                                  (_E88788887_))
                              (_E88788887_))))
                      (_E88788887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88678933_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88668883_)
                        (let ((_e88698903_ (gx#syntax-e _e88668883_)))
                          (let ((_hd88708906_ (##car _e88698903_))
                                (_tl88718908_ (##cdr _e88698903_)))
                            (if (if (gx#identifier? _hd88708906_)
                                    (gx#core-identifier=?
                                     _hd88708906_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88718908_)
                                    (let ((_e88728911_
                                           (gx#syntax-e _tl88718908_)))
                                      (let ((_hd88738914_ (##car _e88728911_))
                                            (_tl88748916_ (##cdr _e88728911_)))
                                        (let ((_hd-bind8919_ _hd88738914_))
                                          (if (gx#stx-pair? _tl88748916_)
                                              (let ((_e88758921_
                                                     (gx#syntax-e
                                                      _tl88748916_)))
                                                (let ((_hd88768924_
                                                       (##car _e88758921_))
                                                      (_tl88778926_
                                                       (##cdr _e88758921_)))
                                                  (let ((_expr8929_
                                                         _hd88768924_))
                                                    (if (gx#stx-null?
                                                         _tl88778926_)
                                                        (if '#t
                                                            (let ((_ehd8931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8919_)
                                        (cons (gx#core-expand-expression
                                               _expr8929_)
                                              '())))
                            (gx#stx-source _hd8865_))))
                      (_lp8840_
                       _rest8864_
                       (cons _ehd8931_ _body8843_)
                       (cons _ehd8931_ _ebody8844_)))
                    (_E88688899_))
                (_E88688899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88688899_)))))
                                    (_E88688899_))
                                (_E88688899_))))
                        (_E88688899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88678933_)))))))))
                                      (if (##pair? _rest88458853_)
                                          (let ((_hd88508940_
                                                 (##car _rest88458853_))
                                                (_tl88518942_
                                                 (##cdr _rest88458853_)))
                                            (let ((_hd8945_ _hd88508940_))
                                              (let ((_rest8947_ _tl88518942_))
                                                (_K88498937_
                                                 _rest8947_
                                                 _hd8945_))))
                                          (_else88478861_)))))))))
                    _lp8840_)
                  _rbody8838_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8833_
                    (gx#core-expand-block__1
                     _stx8827_
                     _expand-special8829_
                     '#f)))
               (let ((_g9088_ (_eval-body8830_ _rbody8833_)))
                 (begin
                   (let ((_g9089_ (values-count _g9088_)))
                     (if (not (fx= _g9089_ 2))
                         (error "Context expects 2 values" _g9089_)))
                   (let ((_expanded-body8835_ (values-ref _g9088_ 0))
                         (_value8836_ (values-ref _g9088_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8835_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8836_ '())))
                      (gx#stx-source _stx8827_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8797_)
      (let ((_e87988805_ _stx8797_))
        (let ((_E88008809_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87988805_))))
          (let ((_E87998823_
                 (lambda ()
                   (if (gx#stx-pair? _e87988805_)
                       (let ((_e88018813_ (gx#syntax-e _e87988805_)))
                         (let ((_hd88028816_ (##car _e88018813_))
                               (_tl88038818_ (##cdr _e88018813_)))
                           (let ((_body8821_ _tl88038818_))
                             (if (gx#stx-list? _body8821_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8821_)
                                  (gx#stx-source _stx8797_))
                                 (_E88008809_)))))
                       (_E88008809_)))))
            (let () (_E87998823_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8795_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8795_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8783_)
      (let ((_e87848787_ _stx8783_))
        (let ((_E87858791_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87848787_))))
          (let () (_E87858791_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8507_ _body8508_)
      (let ((_expand-internal-special8512_
             (lambda (_hd8669_ _K8670_ _rest8671_ _r8672_)
               (let ((_e86738698_ _hd8669_))
                 (let ((_E86938702_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86738698_))))
                   (let ((_E86898714_
                          (lambda ()
                            (if (gx#stx-pair? _e86738698_)
                                (let ((_e86948706_ (gx#syntax-e _e86738698_)))
                                  (let ((_hd86958709_ (##car _e86948706_))
                                        (_tl86968711_ (##cdr _e86948706_)))
                                    (if (if (gx#identifier? _hd86958709_)
                                            (gx#core-identifier=?
                                             _hd86958709_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8670_ _rest8671_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8669_)
                                                           _r8672_))
                                            (_E86938702_))
                                        (_E86938702_))))
                                (_E86938702_)))))
                     (let ((_E86858726_
                            (lambda ()
                              (if (gx#stx-pair? _e86738698_)
                                  (let ((_e86908718_
                                         (gx#syntax-e _e86738698_)))
                                    (let ((_hd86918721_ (##car _e86908718_))
                                          (_tl86928723_ (##cdr _e86908718_)))
                                      (if (if (gx#identifier? _hd86918721_)
                                              (gx#core-identifier=?
                                               _hd86918721_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8669_)
                                                (_K8670_ _rest8671_ _r8672_))
                                              (_E86898714_))
                                          (_E86898714_))))
                                  (_E86898714_)))))
                       (let ((_E86758738_
                              (lambda ()
                                (if (gx#stx-pair? _e86738698_)
                                    (let ((_e86868730_
                                           (gx#syntax-e _e86738698_)))
                                      (let ((_hd86878733_ (##car _e86868730_))
                                            (_tl86888735_ (##cdr _e86868730_)))
                                        (if (if (gx#identifier? _hd86878733_)
                                                (gx#core-identifier=?
                                                 _hd86878733_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8669_)
                                                  (_K8670_ _rest8671_ _r8672_))
                                                (_E86858726_))
                                            (_E86858726_))))
                                    (_E86858726_)))))
                         (let ((_E86748770_
                                (lambda ()
                                  (if (gx#stx-pair? _e86738698_)
                                      (let ((_e86768742_
                                             (gx#syntax-e _e86738698_)))
                                        (let ((_hd86778745_
                                               (##car _e86768742_))
                                              (_tl86788747_
                                               (##cdr _e86768742_)))
                                          (if (if (gx#identifier? _hd86778745_)
                                                  (gx#core-identifier=?
                                                   _hd86778745_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86788747_)
                                                  (let ((_e86798750_
                                                         (gx#syntax-e
                                                          _tl86788747_)))
                                                    (let ((_hd86808753_
                                                           (##car _e86798750_))
                                                          (_tl86818755_
                                                           (##cdr _e86798750_)))
                                                      (let ((_hd-bind8758_
                                                             _hd86808753_))
                                                        (if (gx#stx-pair?
                                                             _tl86818755_)
                                                            (let ((_e86828760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86818755_)))
                      (let ((_hd86838763_ (##car _e86828760_))
                            (_tl86848765_ (##cdr _e86828760_)))
                        (let ((_expr8768_ _hd86838763_))
                          (if (gx#stx-null? _tl86848765_)
                              (if (gx#core-bind-values? _hd-bind8758_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8758_)
                                    (_K8670_ _rest8671_
                                             (cons _hd8669_ _r8672_)))
                                  (_E86758738_))
                              (_E86758738_)))))
                    (_E86758738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86758738_))
                                              (_E86758738_))))
                                      (_E86758738_)))))
                           (let () (_E86748770_)))))))))))
        (let ((_wrap-internal8513_
               (lambda (_rbody8515_)
                 ((letrec ((_lp8517_
                            (lambda (_rest8519_
                                     _decls8520_
                                     _bind8521_
                                     _body8522_)
                              (let ((_e85238530_ _rest8519_))
                                (let ((_E85258579_
                                       (lambda ()
                                         (let ((_body8574_
                                                (let ((_body85338543_
                                                       _body8522_))
                                                  (let ((_E85378547_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85338543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85368551_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8522_)
                                                              (gx#stx-source
                                                               _stx8507_)))))
                                                      (let ((_try-match85358567_
                                                             (lambda ()
                                                               (let ((_K85388557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8555_) _expr8555_)))
                         (if (##pair? _body85338543_)
                             (let ((_hd85398560_ (##car _body85338543_))
                                   (_tl85408562_ (##cdr _body85338543_)))
                               (let ((_expr8565_ _hd85398560_))
                                 (if (##null? _tl85408562_)
                                     (_K85388557_ _expr8565_)
                                     (_else85368551_))))
                             (_else85368551_))))))
                (let ((_K85418571_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8507_))))
                  (if (##null? _body85338543_)
                      (_K85418571_)
                      (_try-match85358567_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8576_
                                                  (if (null? _bind8521_)
                                                      _body8574_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8574_ '())))
               (gx#stx-source _stx8507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8520_)
                                                   _body8576_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8520_
                                                                (cons _body8576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8507_)))))))))
                                  (let ((_E85248665_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85238530_)
                                               (let ((_e85268583_
                                                      (gx#syntax-e
                                                       _e85238530_)))
                                                 (let ((_hd85278586_
                                                        (##car _e85268583_))
                                                       (_tl85288588_
                                                        (##cdr _e85268583_)))
                                                   (let ((_hd8591_
                                                          _hd85278586_))
                                                     (let ((_rest8593_
                                                            _tl85288588_))
                                                       (if '#t
                                                           (let ((_e85948611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8591_))
                     (let ((_E86068615_
                            (lambda ()
                              (if (null? _bind8521_)
                                  (_lp8517_
                                   _rest8593_
                                   _decls8520_
                                   _bind8521_
                                   (cons _hd8591_ _body8522_))
                                  (_lp8517_
                                   _rest8593_
                                   _decls8520_
                                   (cons (cons '#f (cons _hd8591_ '()))
                                         _bind8521_)
                                   _body8522_)))))
                       (let ((_E85968629_
                              (lambda ()
                                (if (gx#stx-pair? _e85948611_)
                                    (let ((_e86078619_
                                           (gx#syntax-e _e85948611_)))
                                      (let ((_hd86088622_ (##car _e86078619_))
                                            (_tl86098624_ (##cdr _e86078619_)))
                                        (if (if (gx#identifier? _hd86088622_)
                                                (gx#core-identifier=?
                                                 _hd86088622_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8627_ _tl86098624_))
                                              (if '#t
                                                  (_lp8517_
                                                   _rest8593_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8520_
                                                    _xdecls8627_)
                                                   _bind8521_
                                                   _body8522_)
                                                  (_E86068615_)))
                                            (_E86068615_))))
                                    (_E86068615_)))))
                         (let ((_E85958661_
                                (lambda ()
                                  (if (gx#stx-pair? _e85948611_)
                                      (let ((_e85978633_
                                             (gx#syntax-e _e85948611_)))
                                        (let ((_hd85988636_
                                               (##car _e85978633_))
                                              (_tl85998638_
                                               (##cdr _e85978633_)))
                                          (if (if (gx#identifier? _hd85988636_)
                                                  (gx#core-identifier=?
                                                   _hd85988636_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85998638_)
                                                  (let ((_e86008641_
                                                         (gx#syntax-e
                                                          _tl85998638_)))
                                                    (let ((_hd86018644_
                                                           (##car _e86008641_))
                                                          (_tl86028646_
                                                           (##cdr _e86008641_)))
                                                      (let ((_hd-bind8649_
                                                             _hd86018644_))
                                                        (if (gx#stx-pair?
                                                             _tl86028646_)
                                                            (let ((_e86038651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86028646_)))
                      (let ((_hd86048654_ (##car _e86038651_))
                            (_tl86058656_ (##cdr _e86038651_)))
                        (let ((_expr8659_ _hd86048654_))
                          (if (gx#stx-null? _tl86058656_)
                              (if '#t
                                  (_lp8517_
                                   _rest8593_
                                   _decls8520_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8649_)
                                               (cons (gx#core-expand-expression
                                                      _expr8659_)
                                                     '()))
                                         _bind8521_)
                                   _body8522_)
                                  (_E85968629_))
                              (_E85968629_)))))
                    (_E85968629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85968629_))
                                              (_E85968629_))))
                                      (_E85968629_)))))
                           (let () (_E85958661_))))))
                   (_E85258579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85258579_)))))
                                    (let () (_E85248665_))))))))
                    _lp8517_)
                  _rbody8515_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8511_
                 (lambda (_hd8774_ _rest8775_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8513_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8774_ _rest8775_)
                         (gx#stx-source _stx8507_))
                        _expand-internal-special8512_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9082 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9082)
                        __obj9082))))))
            (let ((_expand-special8510_
                   (lambda (_hd8778_ _K8779_ _rest8780_ _r8781_)
                     (_K8779_ '()
                              (cons (_expand-internal8511_ _hd8778_ _rest8780_)
                                    _r8781_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8508_)
                (gx#stx-source _stx8507_))
               _expand-special8510_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8445_)
      (let ((_e84468453_ _stx8445_))
        (let ((_E84488457_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84468453_))))
          (let ((_E84478503_
                 (lambda ()
                   (if (gx#stx-pair? _e84468453_)
                       (let ((_e84498461_ (gx#syntax-e _e84468453_)))
                         (let ((_hd84508464_ (##car _e84498461_))
                               (_tl84518466_ (##cdr _e84498461_)))
                           (let ((_body8469_ _tl84518466_))
                             (if (gx#stx-list? _body8469_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8471_)
                                      (let ((_e84728479_ _decl8471_))
                                        (let ((_E84748483_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84728479_))))
                                          (let ((_E84738499_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84728479_)
                                                       (let ((_e84758487_
                                                              (gx#syntax-e
                                                               _e84728479_)))
                                                         (let ((_hd84768490_
                                                                (##car _e84758487_))
                                                               (_tl84778492_
                                                                (##cdr _e84758487_)))
                                                           (let ((_head8495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84768490_))
                     (let ((_args8497_ _tl84778492_))
                       (if (gx#stx-list? _args8497_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8471_)
                           (_E84748483_))))))
               (_E84748483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84738499_))))))
                                    _body8469_))
                                  (gx#stx-source _stx8445_))
                                 (_E84488457_)))))
                       (_E84488457_)))))
            (let () (_E84478503_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8329_)
      (let ((_e83308337_ _stx8329_))
        (let ((_E83328341_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83308337_))))
          (let ((_E83318441_
                 (lambda ()
                   (if (gx#stx-pair? _e83308337_)
                       (let ((_e83338345_ (gx#syntax-e _e83308337_)))
                         (let ((_hd83348348_ (##car _e83338345_))
                               (_tl83358350_ (##cdr _e83338345_)))
                           (let ((_body8353_ _tl83358350_))
                             (if (gx#stx-list? _body8353_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8355_)
                                      (let ((_e83568366_ _bind8355_))
                                        (let ((_E83588370_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83568366_))))
                                          (let ((_E83578394_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83568366_)
                                                       (let ((_e83598374_
                                                              (gx#syntax-e
                                                               _e83568366_)))
                                                         (let ((_hd83608377_
                                                                (##car _e83598374_))
                                                               (_tl83618379_
                                                                (##cdr _e83598374_)))
                                                           (let ((_id8382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83608377_))
                     (if (gx#stx-pair? _tl83618379_)
                         (let ((_e83628384_ (gx#syntax-e _tl83618379_)))
                           (let ((_hd83638387_ (##car _e83628384_))
                                 (_tl83648389_ (##cdr _e83628384_)))
                             (let ((_eid8392_ _hd83638387_))
                               (if (gx#stx-null? _tl83648389_)
                                   (if (if (gx#identifier? _id8382_)
                                           (gx#identifier? _eid8392_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8382_
                                        (gx#stx-e _eid8392_))
                                       (_E83588370_))
                                   (_E83588370_)))))
                         (_E83588370_)))))
               (_E83588370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83578394_))))))
                                    _body8353_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8398_)
                                        (let ((_e83998409_ _bind8398_))
                                          (let ((_E84018413_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e83998409_))))
                                            (let ((_E84008437_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e83998409_)
                                                         (let ((_e84028417_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e83998409_)))
                   (let ((_hd84038420_ (##car _e84028417_))
                         (_tl84048422_ (##cdr _e84028417_)))
                     (let ((_id8425_ _hd84038420_))
                       (if (gx#stx-pair? _tl84048422_)
                           (let ((_e84058427_ (gx#syntax-e _tl84048422_)))
                             (let ((_hd84068430_ (##car _e84058427_))
                                   (_tl84078432_ (##cdr _e84058427_)))
                               (let ((_eid8435_ _hd84068430_))
                                 (if (gx#stx-null? _tl84078432_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8425_)
                                               (cons (gx#stx-e _eid8435_) '()))
                                         (_E84018413_))
                                     (_E84018413_)))))
                           (_E84018413_)))))
                 (_E84018413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E84008437_))))))
                                      _body8353_))
                                    (gx#stx-source _stx8329_)))
                                 (_E83328341_)))))
                       (_E83328341_)))))
            (let () (_E83318441_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8275_)
      (let ((_e82768289_ _stx8275_))
        (let ((_E82788293_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82768289_))))
          (let ((_E82778325_
                 (lambda ()
                   (if (gx#stx-pair? _e82768289_)
                       (let ((_e82798297_ (gx#syntax-e _e82768289_)))
                         (let ((_hd82808300_ (##car _e82798297_))
                               (_tl82818302_ (##cdr _e82798297_)))
                           (if (gx#stx-pair? _tl82818302_)
                               (let ((_e82828305_ (gx#syntax-e _tl82818302_)))
                                 (let ((_hd82838308_ (##car _e82828305_))
                                       (_tl82848310_ (##cdr _e82828305_)))
                                   (let ((_hd8313_ _hd82838308_))
                                     (if (gx#stx-pair? _tl82848310_)
                                         (let ((_e82858315_
                                                (gx#syntax-e _tl82848310_)))
                                           (let ((_hd82868318_
                                                  (##car _e82858315_))
                                                 (_tl82878320_
                                                  (##cdr _e82858315_)))
                                             (let ((_expr8323_ _hd82868318_))
                                               (if (gx#stx-null? _tl82878320_)
                                                   (if (gx#core-bind-values?
                                                        _hd8313_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8313_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8313_)
                              (cons (gx#core-expand-expression _expr8323_)
                                    '())))
                  (gx#stx-source _stx8275_)))
               (_E82788293_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82788293_)))))
                                         (_E82788293_)))))
                               (_E82788293_))))
                       (_E82788293_)))))
            (let () (_E82778325_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8221_)
      (let ((_e82228235_ _stx8221_))
        (let ((_E82248239_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82228235_))))
          (let ((_E82238271_
                 (lambda ()
                   (if (gx#stx-pair? _e82228235_)
                       (let ((_e82258243_ (gx#syntax-e _e82228235_)))
                         (let ((_hd82268246_ (##car _e82258243_))
                               (_tl82278248_ (##cdr _e82258243_)))
                           (if (gx#stx-pair? _tl82278248_)
                               (let ((_e82288251_ (gx#syntax-e _tl82278248_)))
                                 (let ((_hd82298254_ (##car _e82288251_))
                                       (_tl82308256_ (##cdr _e82288251_)))
                                   (let ((_id8259_ _hd82298254_))
                                     (if (gx#stx-pair? _tl82308256_)
                                         (let ((_e82318261_
                                                (gx#syntax-e _tl82308256_)))
                                           (let ((_hd82328264_
                                                  (##car _e82318261_))
                                                 (_tl82338266_
                                                  (##cdr _e82318261_)))
                                             (let ((_binding-id8269_
                                                    _hd82328264_))
                                               (if (gx#stx-null? _tl82338266_)
                                                   (if (if (gx#identifier?
                                                            _id8259_)
                                                           (gx#identifier?
                                                            _binding-id8269_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8259_
                                                          (gx#stx-e
                                                           _binding-id8269_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8259_)
                              (cons (gx#core-quote-syntax__0 _binding-id8269_)
                                    '())))))
               (_E82248239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82248239_)))))
                                         (_E82248239_)))))
                               (_E82248239_))))
                       (_E82248239_)))))
            (let () (_E82238271_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8164_)
      (let ((_e81658178_ _stx8164_))
        (let ((_E81678182_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81658178_))))
          (let ((_E81668217_
                 (lambda ()
                   (if (gx#stx-pair? _e81658178_)
                       (let ((_e81688186_ (gx#syntax-e _e81658178_)))
                         (let ((_hd81698189_ (##car _e81688186_))
                               (_tl81708191_ (##cdr _e81688186_)))
                           (if (gx#stx-pair? _tl81708191_)
                               (let ((_e81718194_ (gx#syntax-e _tl81708191_)))
                                 (let ((_hd81728197_ (##car _e81718194_))
                                       (_tl81738199_ (##cdr _e81718194_)))
                                   (let ((_id8202_ _hd81728197_))
                                     (if (gx#stx-pair? _tl81738199_)
                                         (let ((_e81748204_
                                                (gx#syntax-e _tl81738199_)))
                                           (let ((_hd81758207_
                                                  (##car _e81748204_))
                                                 (_tl81768209_
                                                  (##cdr _e81748204_)))
                                             (let ((_expr8212_ _hd81758207_))
                                               (if (gx#stx-null? _tl81768209_)
                                                   (if (gx#identifier?
                                                        _id8202_)
                                                       (let ((_g9090_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8212_)))
                 (begin
                   (let ((_g9091_ (values-count _g9090_)))
                     (if (not (fx= _g9091_ 2))
                         (error "Context expects 2 values" _g9091_)))
                   (let ((_e-stx8214_ (values-ref _g9090_ 0))
                         (_e8215_ (values-ref _g9090_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8202_ _e8215_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8202_)
                                    (cons _e-stx8214_ '())))
                        (gx#stx-source _stx8164_))))))
               (_E81678182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81678182_)))))
                                         (_E81678182_)))))
                               (_E81678182_))))
                       (_E81678182_)))))
            (let () (_E81668217_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8108_)
      (let ((_e81098122_ _stx8108_))
        (let ((_E81118126_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81098122_))))
          (let ((_E81108160_
                 (lambda ()
                   (if (gx#stx-pair? _e81098122_)
                       (let ((_e81128130_ (gx#syntax-e _e81098122_)))
                         (let ((_hd81138133_ (##car _e81128130_))
                               (_tl81148135_ (##cdr _e81128130_)))
                           (if (gx#stx-pair? _tl81148135_)
                               (let ((_e81158138_ (gx#syntax-e _tl81148135_)))
                                 (let ((_hd81168141_ (##car _e81158138_))
                                       (_tl81178143_ (##cdr _e81158138_)))
                                   (let ((_id8146_ _hd81168141_))
                                     (if (gx#stx-pair? _tl81178143_)
                                         (let ((_e81188148_
                                                (gx#syntax-e _tl81178143_)))
                                           (let ((_hd81198151_
                                                  (##car _e81188148_))
                                                 (_tl81208153_
                                                  (##cdr _e81188148_)))
                                             (let ((_alias-id8156_
                                                    _hd81198151_))
                                               (if (gx#stx-null? _tl81208153_)
                                                   (if (if (gx#identifier?
                                                            _id8146_)
                                                           (gx#identifier?
                                                            _alias-id8156_)
                                                           '#f)
                                                       (let ((_alias-id8158_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8156_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8146_
                                                            _alias-id8158_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8146_)
                                (cons _alias-id8158_ '()))))))
               (_E81118126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81118126_)))))
                                         (_E81118126_)))))
                               (_E81118126_))))
                       (_E81118126_)))))
            (let () (_E81108160_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8049
      (lambda (_stx8051_ _wrap?8052_)
        (let ((_e80538063_ _stx8051_))
          (let ((_E80558067_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80538063_))))
            (let ((_E80548094_
                   (lambda ()
                     (if (gx#stx-pair? _e80538063_)
                         (let ((_e80568071_ (gx#syntax-e _e80538063_)))
                           (let ((_hd80578074_ (##car _e80568071_))
                                 (_tl80588076_ (##cdr _e80568071_)))
                             (if (gx#stx-pair? _tl80588076_)
                                 (let ((_e80598079_
                                        (gx#syntax-e _tl80588076_)))
                                   (let ((_hd80608082_ (##car _e80598079_))
                                         (_tl80618084_ (##cdr _e80598079_)))
                                     (let ((_hd8087_ _hd80608082_))
                                       (let ((_body8089_ _tl80618084_))
                                         (if (gx#core-bind-values? _hd8087_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8087_)
                                                  (let ((_body8092_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8087_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8051_
                              _body8089_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8052_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8092_)
                                                         (gx#stx-source
                                                          _stx8051_))
                                                        _body8092_))))
                                              gx#current-expander-context
                                              (let ((__obj9083
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9083)
                                                  __obj9083)))
                                             (_E80558067_))))))
                                 (_E80558067_))))
                         (_E80558067_)))))
              (let () (_E80548094_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8101_)
          (let ((_wrap?8103_ '#t))
            (gx#core-expand-lambda%__opt-lambda8049 _stx8101_ _wrap?8103_))))
      (define gx#core-expand-lambda%
        (lambda _g9093_
          (let ((_g9092_ (length _g9093_)))
            (cond ((fx= _g9092_ 1) (apply gx#core-expand-lambda%__0 _g9093_))
                  ((fx= _g9092_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8049 _g9093_))
                  (else (error "No clause matching arguments" _g9093_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8015_)
      (let ((_e80168023_ _stx8015_))
        (let ((_E80188027_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80168023_))))
          (let ((_E80178046_
                 (lambda ()
                   (if (gx#stx-pair? _e80168023_)
                       (let ((_e80198031_ (gx#syntax-e _e80168023_)))
                         (let ((_hd80208034_ (##car _e80198031_))
                               (_tl80218036_ (##cdr _e80198031_)))
                           (let ((_clauses8039_ _tl80218036_))
                             (if (gx#stx-list? _clauses8039_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8041_)
                                      (gx#core-expand-lambda%__opt-lambda8049
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8041_)
                                        (let ((_$e8043_
                                               (gx#stx-source _clause8041_)))
                                          (if _$e8043_
                                              _$e8043_
                                              (gx#stx-source _stx8015_))))
                                       '#f))
                                    _clauses8039_))
                                  (gx#stx-source _stx8015_))
                                 (_E80188027_)))))
                       (_E80188027_)))))
            (let () (_E80178046_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7969_)
      (let ((_e79707980_ _stx7969_))
        (let ((_E79727984_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79707980_))))
          (let ((_E79718011_
                 (lambda ()
                   (if (gx#stx-pair? _e79707980_)
                       (let ((_e79737988_ (gx#syntax-e _e79707980_)))
                         (let ((_hd79747991_ (##car _e79737988_))
                               (_tl79757993_ (##cdr _e79737988_)))
                           (if (gx#stx-pair? _tl79757993_)
                               (let ((_e79767996_ (gx#syntax-e _tl79757993_)))
                                 (let ((_hd79777999_ (##car _e79767996_))
                                       (_tl79788001_ (##cdr _e79767996_)))
                                   (let ((_hd8004_ _hd79777999_))
                                     (let ((_body8006_ _tl79788001_))
                                       (if (gx#core-expand-let-bind? _hd8004_)
                                           (let ((_expressions8008_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8004_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8004_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8004_
                                                                _expressions8008_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7969_
                              _body8006_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7969_))))
                                              gx#current-expander-context
                                              (let ((__obj9084
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9084)
                                                  __obj9084))))
                                           (_E79727984_))))))
                               (_E79727984_))))
                       (_E79727984_)))))
            (let () (_E79718011_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7912
      (lambda (_stx7914_ _form7915_)
        (let ((_e79167926_ _stx7914_))
          (let ((_E79187930_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79167926_))))
            (let ((_E79177955_
                   (lambda ()
                     (if (gx#stx-pair? _e79167926_)
                         (let ((_e79197934_ (gx#syntax-e _e79167926_)))
                           (let ((_hd79207937_ (##car _e79197934_))
                                 (_tl79217939_ (##cdr _e79197934_)))
                             (if (gx#stx-pair? _tl79217939_)
                                 (let ((_e79227942_
                                        (gx#syntax-e _tl79217939_)))
                                   (let ((_hd79237945_ (##car _e79227942_))
                                         (_tl79247947_ (##cdr _e79227942_)))
                                     (let ((_hd7950_ _hd79237945_))
                                       (let ((_body7952_ _tl79247947_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7950_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7950_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7915_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7950_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7950_))
                       (cons (gx#core-expand-local-block _stx7914_ _body7952_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7914_))))
                                              gx#current-expander-context
                                              (let ((__obj9085
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9085)
                                                  __obj9085)))
                                             (_E79187930_))))))
                                 (_E79187930_))))
                         (_E79187930_)))))
              (let () (_E79177955_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7962_)
          (let ((_form7964_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7912
             _stx7962_
             _form7964_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9095_
          (let ((_g9094_ (length _g9095_)))
            (cond ((fx= _g9094_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9095_))
                  ((fx= _g9094_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7912
                          _g9095_))
                  (else (error "No clause matching arguments" _g9095_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7911_)
      (gx#core-expand-letrec-values%__opt-lambda7912
       _stx7911_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7868_)
      (if (gx#stx-list? _stx7868_)
          (gx#stx-andmap
           (lambda (_bind7870_)
             (let ((_e78717881_ _bind7870_))
               (let ((_E78737885_ (lambda () '#f)))
                 (let ((_E78727907_
                        (lambda ()
                          (if (gx#stx-pair? _e78717881_)
                              (let ((_e78747889_ (gx#syntax-e _e78717881_)))
                                (let ((_hd78757892_ (##car _e78747889_))
                                      (_tl78767894_ (##cdr _e78747889_)))
                                  (let ((_hd7897_ _hd78757892_))
                                    (if (gx#stx-pair? _tl78767894_)
                                        (let ((_e78777899_
                                               (gx#syntax-e _tl78767894_)))
                                          (let ((_hd78787902_
                                                 (##car _e78777899_))
                                                (_tl78797904_
                                                 (##cdr _e78777899_)))
                                            (if (gx#stx-null? _tl78797904_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7897_)
                                                    (_E78737885_))
                                                (_E78737885_))))
                                        (_E78737885_)))))
                              (_E78737885_)))))
                   (let () (_E78727907_))))))
           _stx7868_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7827_)
      (let ((_e78287838_ _bind7827_))
        (let ((_E78307842_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78287838_))))
          (let ((_E78297864_
                 (lambda ()
                   (if (gx#stx-pair? _e78287838_)
                       (let ((_e78317846_ (gx#syntax-e _e78287838_)))
                         (let ((_hd78327849_ (##car _e78317846_))
                               (_tl78337851_ (##cdr _e78317846_)))
                           (if (gx#stx-pair? _tl78337851_)
                               (let ((_e78347854_ (gx#syntax-e _tl78337851_)))
                                 (let ((_hd78357857_ (##car _e78347854_))
                                       (_tl78367859_ (##cdr _e78347854_)))
                                   (let ((_expr7862_ _hd78357857_))
                                     (if (gx#stx-null? _tl78367859_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7862_)
                                             (_E78307842_))
                                         (_E78307842_)))))
                               (_E78307842_))))
                       (_E78307842_)))))
            (let () (_E78297864_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7786_)
      (let ((_e77877797_ _bind7786_))
        (let ((_E77897801_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77877797_))))
          (let ((_E77887823_
                 (lambda ()
                   (if (gx#stx-pair? _e77877797_)
                       (let ((_e77907805_ (gx#syntax-e _e77877797_)))
                         (let ((_hd77917808_ (##car _e77907805_))
                               (_tl77927810_ (##cdr _e77907805_)))
                           (let ((_hd7813_ _hd77917808_))
                             (if (gx#stx-pair? _tl77927810_)
                                 (let ((_e77937815_
                                        (gx#syntax-e _tl77927810_)))
                                   (let ((_hd77947818_ (##car _e77937815_))
                                         (_tl77957820_ (##cdr _e77937815_)))
                                     (if (gx#stx-null? _tl77957820_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7813_)
                                             (_E77897801_))
                                         (_E77897801_))))
                                 (_E77897801_)))))
                       (_E77897801_)))))
            (let () (_E77887823_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7744_ _expr7745_)
      (let ((_e77467756_ _bind7744_))
        (let ((_E77487760_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77467756_))))
          (let ((_E77477782_
                 (lambda ()
                   (if (gx#stx-pair? _e77467756_)
                       (let ((_e77497764_ (gx#syntax-e _e77467756_)))
                         (let ((_hd77507767_ (##car _e77497764_))
                               (_tl77517769_ (##cdr _e77497764_)))
                           (let ((_hd7772_ _hd77507767_))
                             (if (gx#stx-pair? _tl77517769_)
                                 (let ((_e77527774_
                                        (gx#syntax-e _tl77517769_)))
                                   (let ((_hd77537777_ (##car _e77527774_))
                                         (_tl77547779_ (##cdr _e77527774_)))
                                     (if (gx#stx-null? _tl77547779_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7772_)
                                                   (cons _expr7745_ '()))
                                             (_E77487760_))
                                         (_E77487760_))))
                                 (_E77487760_)))))
                       (_E77487760_)))))
            (let () (_E77477782_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7698_)
      (let ((_e76997709_ _stx7698_))
        (let ((_E77017713_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76997709_))))
          (let ((_E77007740_
                 (lambda ()
                   (if (gx#stx-pair? _e76997709_)
                       (let ((_e77027717_ (gx#syntax-e _e76997709_)))
                         (let ((_hd77037720_ (##car _e77027717_))
                               (_tl77047722_ (##cdr _e77027717_)))
                           (if (gx#stx-pair? _tl77047722_)
                               (let ((_e77057725_ (gx#syntax-e _tl77047722_)))
                                 (let ((_hd77067728_ (##car _e77057725_))
                                       (_tl77077730_ (##cdr _e77057725_)))
                                   (let ((_hd7733_ _hd77067728_))
                                     (let ((_body7735_ _tl77077730_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7733_)
                                           (let ((_expanders7737_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7733_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7733_
                                                   _expanders7737_)
                                                  (gx#core-expand-local-block
                                                   _stx7698_
                                                   _body7735_)))
                                              gx#current-expander-context
                                              (let ((__obj9086
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9086)
                                                  __obj9086))))
                                           (_E77017713_))))))
                               (_E77017713_))))
                       (_E77017713_)))))
            (let () (_E77007740_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7647_)
      (let ((_e76487658_ _stx7647_))
        (let ((_E76507662_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76487658_))))
          (let ((_E76497694_
                 (lambda ()
                   (if (gx#stx-pair? _e76487658_)
                       (let ((_e76517666_ (gx#syntax-e _e76487658_)))
                         (let ((_hd76527669_ (##car _e76517666_))
                               (_tl76537671_ (##cdr _e76517666_)))
                           (if (gx#stx-pair? _tl76537671_)
                               (let ((_e76547674_ (gx#syntax-e _tl76537671_)))
                                 (let ((_hd76557677_ (##car _e76547674_))
                                       (_tl76567679_ (##cdr _e76547674_)))
                                   (let ((_hd7682_ _hd76557677_))
                                     (let ((_body7684_ _tl76567679_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7682_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7682_
                                                 (make-list
                                                  (gx#stx-length _hd7682_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76867689_
                                                          _g76877691_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7504
                                                    _g76867689_
                                                    _g76877691_
                                                    '#t))
                                                 _hd7682_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7682_))
                                                (gx#core-expand-local-block
                                                 _stx7647_
                                                 _body7684_)))
                                            gx#current-expander-context
                                            (let ((__obj9087
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9087)
                                                __obj9087)))
                                           (_E76507662_))))))
                               (_E76507662_))))
                       (_E76507662_)))))
            (let () (_E76497694_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7604_)
      (if (gx#stx-list? _stx7604_)
          (gx#stx-andmap
           (lambda (_bind7606_)
             (let ((_e76077617_ _bind7606_))
               (let ((_E76097621_ (lambda () '#f)))
                 (let ((_E76087643_
                        (lambda ()
                          (if (gx#stx-pair? _e76077617_)
                              (let ((_e76107625_ (gx#syntax-e _e76077617_)))
                                (let ((_hd76117628_ (##car _e76107625_))
                                      (_tl76127630_ (##cdr _e76107625_)))
                                  (let ((_hd7633_ _hd76117628_))
                                    (if (gx#stx-pair? _tl76127630_)
                                        (let ((_e76137635_
                                               (gx#syntax-e _tl76127630_)))
                                          (let ((_hd76147638_
                                                 (##car _e76137635_))
                                                (_tl76157640_
                                                 (##cdr _e76137635_)))
                                            (if (gx#stx-null? _tl76157640_)
                                                (if '#t
                                                    (gx#identifier? _hd7633_)
                                                    (_E76097621_))
                                                (_E76097621_))))
                                        (_E76097621_)))))
                              (_E76097621_)))))
                   (let () (_E76087643_))))))
           _stx7604_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7561_)
      (let ((_e75627572_ _bind7561_))
        (let ((_E75647576_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75627572_))))
          (let ((_E75637600_
                 (lambda ()
                   (if (gx#stx-pair? _e75627572_)
                       (let ((_e75657580_ (gx#syntax-e _e75627572_)))
                         (let ((_hd75667583_ (##car _e75657580_))
                               (_tl75677585_ (##cdr _e75657580_)))
                           (if (gx#stx-pair? _tl75677585_)
                               (let ((_e75687588_ (gx#syntax-e _tl75677585_)))
                                 (let ((_hd75697591_ (##car _e75687588_))
                                       (_tl75707593_ (##cdr _e75687588_)))
                                   (let ((_expr7596_ _hd75697591_))
                                     (if (gx#stx-null? _tl75707593_)
                                         (if '#t
                                             (let ((_g9096_ (gx#core-expand-expression+1
                                                             _expr7596_)))
                                               (begin
                                                 (let ((_g9097_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9096_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9097_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9097_)))
                                                 (let ((_e7598_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9096_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7598_)))
                                             (_E75647576_))
                                         (_E75647576_)))))
                               (_E75647576_))))
                       (_E75647576_)))))
            (let () (_E75637600_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7504
      (lambda (_bind7506_ _e7507_ _rebind?7508_)
        (let ((_e75097519_ _bind7506_))
          (let ((_E75117523_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75097519_))))
            (let ((_E75107545_
                   (lambda ()
                     (if (gx#stx-pair? _e75097519_)
                         (let ((_e75127527_ (gx#syntax-e _e75097519_)))
                           (let ((_hd75137530_ (##car _e75127527_))
                                 (_tl75147532_ (##cdr _e75127527_)))
                             (let ((_id7535_ _hd75137530_))
                               (if (gx#stx-pair? _tl75147532_)
                                   (let ((_e75157537_
                                          (gx#syntax-e _tl75147532_)))
                                     (let ((_hd75167540_ (##car _e75157537_))
                                           (_tl75177542_ (##cdr _e75157537_)))
                                       (if (gx#stx-null? _tl75177542_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7535_
                                                _e7507_
                                                _rebind?7508_)
                                               (_E75117523_))
                                           (_E75117523_))))
                                   (_E75117523_)))))
                         (_E75117523_)))))
              (let () (_E75107545_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7552_ _e7553_)
          (let ((_rebind?7555_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7504
             _bind7552_
             _e7553_
             _rebind?7555_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9099_
          (let ((_g9098_ (length _g9099_)))
            (cond ((fx= _g9098_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9099_))
                  ((fx= _g9098_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7504
                          _g9099_))
                  (else (error "No clause matching arguments" _g9099_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7464_)
      (let ((_e74657475_ _stx7464_))
        (let ((_E74677479_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74657475_))))
          (let ((_E74667501_
                 (lambda ()
                   (if (gx#stx-pair? _e74657475_)
                       (let ((_e74687483_ (gx#syntax-e _e74657475_)))
                         (let ((_hd74697486_ (##car _e74687483_))
                               (_tl74707488_ (##cdr _e74687483_)))
                           (if (gx#stx-pair? _tl74707488_)
                               (let ((_e74717491_ (gx#syntax-e _tl74707488_)))
                                 (let ((_hd74727494_ (##car _e74717491_))
                                       (_tl74737496_ (##cdr _e74717491_)))
                                   (let ((_expr7499_ _hd74727494_))
                                     (if (gx#stx-null? _tl74737496_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7499_)
                                             (_E74677479_))
                                         (_E74677479_)))))
                               (_E74677479_))))
                       (_E74677479_)))))
            (let () (_E74667501_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7423_)
      (let ((_e74247434_ _stx7423_))
        (let ((_E74267438_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74247434_))))
          (let ((_E74257460_
                 (lambda ()
                   (if (gx#stx-pair? _e74247434_)
                       (let ((_e74277442_ (gx#syntax-e _e74247434_)))
                         (let ((_hd74287445_ (##car _e74277442_))
                               (_tl74297447_ (##cdr _e74277442_)))
                           (if (gx#stx-pair? _tl74297447_)
                               (let ((_e74307450_ (gx#syntax-e _tl74297447_)))
                                 (let ((_hd74317453_ (##car _e74307450_))
                                       (_tl74327455_ (##cdr _e74307450_)))
                                   (let ((_e7458_ _hd74317453_))
                                     (if (gx#stx-null? _tl74327455_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7458_)
                                                          '()))
                                              (gx#stx-source _stx7423_))
                                             (_E74267438_))
                                         (_E74267438_)))))
                               (_E74267438_))))
                       (_E74267438_)))))
            (let () (_E74257460_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7382_)
      (let ((_e73837393_ _stx7382_))
        (let ((_E73857397_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73837393_))))
          (let ((_E73847419_
                 (lambda ()
                   (if (gx#stx-pair? _e73837393_)
                       (let ((_e73867401_ (gx#syntax-e _e73837393_)))
                         (let ((_hd73877404_ (##car _e73867401_))
                               (_tl73887406_ (##cdr _e73867401_)))
                           (if (gx#stx-pair? _tl73887406_)
                               (let ((_e73897409_ (gx#syntax-e _tl73887406_)))
                                 (let ((_hd73907412_ (##car _e73897409_))
                                       (_tl73917414_ (##cdr _e73897409_)))
                                   (let ((_e7417_ _hd73907412_))
                                     (if (gx#stx-null? _tl73917414_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7417_)
                                                          '()))
                                              (gx#stx-source _stx7382_))
                                             (_E73857397_))
                                         (_E73857397_)))))
                               (_E73857397_))))
                       (_E73857397_)))))
            (let () (_E73847419_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7339_)
      (let ((_e73407350_ _stx7339_))
        (let ((_E73427354_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73407350_))))
          (let ((_E73417378_
                 (lambda ()
                   (if (gx#stx-pair? _e73407350_)
                       (let ((_e73437358_ (gx#syntax-e _e73407350_)))
                         (let ((_hd73447361_ (##car _e73437358_))
                               (_tl73457363_ (##cdr _e73437358_)))
                           (if (gx#stx-pair? _tl73457363_)
                               (let ((_e73467366_ (gx#syntax-e _tl73457363_)))
                                 (let ((_hd73477369_ (##car _e73467366_))
                                       (_tl73487371_ (##cdr _e73467366_)))
                                   (let ((_rator7374_ _hd73477369_))
                                     (let ((_args7376_ _tl73487371_))
                                       (if (gx#stx-list? _args7376_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7374_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7376_))
                                            (gx#stx-source _stx7339_))
                                           (_E73427354_))))))
                               (_E73427354_))))
                       (_E73427354_)))))
            (let () (_E73417378_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7272_)
      (let ((_e72737289_ _stx7272_))
        (let ((_E72757293_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72737289_))))
          (let ((_E72747335_
                 (lambda ()
                   (if (gx#stx-pair? _e72737289_)
                       (let ((_e72767297_ (gx#syntax-e _e72737289_)))
                         (let ((_hd72777300_ (##car _e72767297_))
                               (_tl72787302_ (##cdr _e72767297_)))
                           (if (gx#stx-pair? _tl72787302_)
                               (let ((_e72797305_ (gx#syntax-e _tl72787302_)))
                                 (let ((_hd72807308_ (##car _e72797305_))
                                       (_tl72817310_ (##cdr _e72797305_)))
                                   (let ((_test7313_ _hd72807308_))
                                     (if (gx#stx-pair? _tl72817310_)
                                         (let ((_e72827315_
                                                (gx#syntax-e _tl72817310_)))
                                           (let ((_hd72837318_
                                                  (##car _e72827315_))
                                                 (_tl72847320_
                                                  (##cdr _e72827315_)))
                                             (let ((_K7323_ _hd72837318_))
                                               (if (gx#stx-pair? _tl72847320_)
                                                   (let ((_e72857325_
                                                          (gx#syntax-e
                                                           _tl72847320_)))
                                                     (let ((_hd72867328_
                                                            (##car _e72857325_))
                                                           (_tl72877330_
                                                            (##cdr _e72857325_)))
                                                       (let ((_E7333_ _hd72867328_))
                                                         (if (gx#stx-null?
                                                              _tl72877330_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7313_)
                                      (cons (gx#core-expand-expression _K7323_)
                                            (cons (gx#core-expand-expression
                                                   _E7333_)
                                                  '()))))
                          (gx#stx-source _stx7272_))
                         (_E72757293_))
                     (_E72757293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72757293_)))))
                                         (_E72757293_)))))
                               (_E72757293_))))
                       (_E72757293_)))))
            (let () (_E72747335_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7231_)
      (let ((_e72327242_ _stx7231_))
        (let ((_E72347246_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72327242_))))
          (let ((_E72337268_
                 (lambda ()
                   (if (gx#stx-pair? _e72327242_)
                       (let ((_e72357250_ (gx#syntax-e _e72327242_)))
                         (let ((_hd72367253_ (##car _e72357250_))
                               (_tl72377255_ (##cdr _e72357250_)))
                           (if (gx#stx-pair? _tl72377255_)
                               (let ((_e72387258_ (gx#syntax-e _tl72377255_)))
                                 (let ((_hd72397261_ (##car _e72387258_))
                                       (_tl72407263_ (##cdr _e72387258_)))
                                   (let ((_id7266_ _hd72397261_))
                                     (if (gx#stx-null? _tl72407263_)
                                         (if (gx#core-runtime-ref? _id7266_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7266_
                                                           _stx7231_)
                                                          '()))
                                              (gx#stx-source _stx7231_))
                                             (_E72347246_))
                                         (_E72347246_)))))
                               (_E72347246_))))
                       (_E72347246_)))))
            (let () (_E72337268_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7177_)
      (let ((_e71787191_ _stx7177_))
        (let ((_E71807195_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71787191_))))
          (let ((_E71797227_
                 (lambda ()
                   (if (gx#stx-pair? _e71787191_)
                       (let ((_e71817199_ (gx#syntax-e _e71787191_)))
                         (let ((_hd71827202_ (##car _e71817199_))
                               (_tl71837204_ (##cdr _e71817199_)))
                           (if (gx#stx-pair? _tl71837204_)
                               (let ((_e71847207_ (gx#syntax-e _tl71837204_)))
                                 (let ((_hd71857210_ (##car _e71847207_))
                                       (_tl71867212_ (##cdr _e71847207_)))
                                   (let ((_id7215_ _hd71857210_))
                                     (if (gx#stx-pair? _tl71867212_)
                                         (let ((_e71877217_
                                                (gx#syntax-e _tl71867212_)))
                                           (let ((_hd71887220_
                                                  (##car _e71877217_))
                                                 (_tl71897222_
                                                  (##cdr _e71877217_)))
                                             (let ((_expr7225_ _hd71887220_))
                                               (if (gx#stx-null? _tl71897222_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7215_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7215_
                             _stx7177_)
                            (cons (gx#core-expand-expression _expr7225_) '())))
                (gx#stx-source _stx7177_))
               (_E71807195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71807195_)))))
                                         (_E71807195_)))))
                               (_E71807195_))))
                       (_E71807195_)))))
            (let () (_E71797227_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7025_)
      (let ((_generate7027_
             (lambda (_body7057_)
               ((letrec ((_lp7059_
                          (lambda (_rest7061_ _ns7062_ _r7063_)
                            (let ((_e70647079_ _rest7061_))
                              (let ((_E70777083_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70647079_))))
                                (let ((_E70737087_
                                       (lambda ()
                                         (if (gx#stx-null? _e70647079_)
                                             (if '#t
                                                 (reverse _r7063_)
                                                 (_E70777083_))
                                             (_E70777083_)))))
                                  (let ((_E70667144_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70647079_)
                                               (let ((_e70747091_
                                                      (gx#syntax-e
                                                       _e70647079_)))
                                                 (let ((_hd70757094_
                                                        (##car _e70747091_))
                                                       (_tl70767096_
                                                        (##cdr _e70747091_)))
                                                   (let ((_hd7099_
                                                          _hd70757094_))
                                                     (let ((_rest7101_
                                                            _tl70767096_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7099_)
                                                               (_lp7059_
                                                                _rest7101_
                                                                _ns7062_
                                                                (cons (cons _hd7099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7062_
                                              (gx#stx-identifier
                                               _hd7099_
                                               _ns7062_
                                               '"#"
                                               _hd7099_)
                                              _hd7099_)
                                          '()))
                              _r7063_))
                       (let ((_e71027112_ _hd7099_))
                         (let ((_E71047116_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e71027112_))))
                           (let ((_E71037140_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71027112_)
                                        (let ((_e71057120_
                                               (gx#syntax-e _e71027112_)))
                                          (let ((_hd71067123_
                                                 (##car _e71057120_))
                                                (_tl71077125_
                                                 (##cdr _e71057120_)))
                                            (let ((_id7128_ _hd71067123_))
                                              (if (gx#stx-pair? _tl71077125_)
                                                  (let ((_e71087130_
                                                         (gx#syntax-e
                                                          _tl71077125_)))
                                                    (let ((_hd71097133_
                                                           (##car _e71087130_))
                                                          (_tl71107135_
                                                           (##cdr _e71087130_)))
                                                      (let ((_eid7138_
                                                             _hd71097133_))
                                                        (if (gx#stx-null?
                                                             _tl71107135_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7128_)
                            (gx#identifier? _eid7138_)
                            '#f)
                        (_lp7059_
                         _rest7101_
                         _ns7062_
                         (cons (cons _id7128_ (cons _eid7138_ '())) _r7063_))
                        (_E71047116_))
                    (_E71047116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71047116_)))))
                                        (_E71047116_)))))
                             (let () (_E71037140_))))))
                   (_E70737087_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70737087_)))))
                                    (let ((_E70657173_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70647079_)
                                                 (let ((_e70677148_
                                                        (gx#syntax-e
                                                         _e70647079_)))
                                                   (let ((_hd70687151_
                                                          (##car _e70677148_))
                                                         (_tl70697153_
                                                          (##cdr _e70677148_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70687151_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70697153_)
                                                             (let ((_e70707156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70697153_)))
                       (let ((_hd70717159_ (##car _e70707156_))
                             (_tl70727161_ (##cdr _e70707156_)))
                         (let ((_ns7164_ _hd70717159_))
                           (let ((_rest7166_ _tl70727161_))
                             (if '#t
                                 (let ((_ns7171_
                                        (if (gx#identifier? _ns7164_)
                                            (symbol->string
                                             (gx#stx-e _ns7164_))
                                            (if (let ((_$e7168_
                                                       (gx#stx-string?
                                                        _ns7164_)))
                                                  (if _$e7168_
                                                      _$e7168_
                                                      (gx#stx-false?
                                                       _ns7164_)))
                                                (gx#stx-e _ns7164_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7025_
                                                 _ns7164_)))))
                                   (_lp7059_ _rest7166_ _ns7171_ _r7063_))
                                 (_E70667144_))))))
                     (_E70667144_))
                 (_E70667144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70667144_)))))
                                      (let () (_E70657173_))))))))))
                  _lp7059_)
                _body7057_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70287035_ _stx7025_))
          (let ((_E70307039_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70287035_))))
            (let ((_E70297053_
                   (lambda ()
                     (if (gx#stx-pair? _e70287035_)
                         (let ((_e70317043_ (gx#syntax-e _e70287035_)))
                           (let ((_hd70327046_ (##car _e70317043_))
                                 (_tl70337048_ (##cdr _e70317043_)))
                             (let ((_body7051_ _tl70337048_))
                               (if (gx#stx-list? _body7051_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7027_ _body7051_))
                                   (_E70307039_)))))
                         (_E70307039_)))))
              (let () (_E70297053_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6971_)
      (let ((_e69726985_ _stx6971_))
        (let ((_E69746989_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69726985_))))
          (let ((_E69737021_
                 (lambda ()
                   (if (gx#stx-pair? _e69726985_)
                       (let ((_e69756993_ (gx#syntax-e _e69726985_)))
                         (let ((_hd69766996_ (##car _e69756993_))
                               (_tl69776998_ (##cdr _e69756993_)))
                           (if (gx#stx-pair? _tl69776998_)
                               (let ((_e69787001_ (gx#syntax-e _tl69776998_)))
                                 (let ((_hd69797004_ (##car _e69787001_))
                                       (_tl69807006_ (##cdr _e69787001_)))
                                   (let ((_hd7009_ _hd69797004_))
                                     (if (gx#stx-pair? _tl69807006_)
                                         (let ((_e69817011_
                                                (gx#syntax-e _tl69807006_)))
                                           (let ((_hd69827014_
                                                  (##car _e69817011_))
                                                 (_tl69837016_
                                                  (##cdr _e69817011_)))
                                             (let ((_expr7019_ _hd69827014_))
                                               (if (gx#stx-null? _tl69837016_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7009_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7009_)
                           (cons _expr7019_ '())))
               (_E69746989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69746989_)))))
                                         (_E69746989_)))))
                               (_E69746989_))))
                       (_E69746989_)))))
            (let () (_E69737021_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6917_)
      (let ((_e69186931_ _stx6917_))
        (let ((_E69206935_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69186931_))))
          (let ((_E69196967_
                 (lambda ()
                   (if (gx#stx-pair? _e69186931_)
                       (let ((_e69216939_ (gx#syntax-e _e69186931_)))
                         (let ((_hd69226942_ (##car _e69216939_))
                               (_tl69236944_ (##cdr _e69216939_)))
                           (if (gx#stx-pair? _tl69236944_)
                               (let ((_e69246947_ (gx#syntax-e _tl69236944_)))
                                 (let ((_hd69256950_ (##car _e69246947_))
                                       (_tl69266952_ (##cdr _e69246947_)))
                                   (let ((_hd6955_ _hd69256950_))
                                     (if (gx#stx-pair? _tl69266952_)
                                         (let ((_e69276957_
                                                (gx#syntax-e _tl69266952_)))
                                           (let ((_hd69286960_
                                                  (##car _e69276957_))
                                                 (_tl69296962_
                                                  (##cdr _e69276957_)))
                                             (let ((_expr6965_ _hd69286960_))
                                               (if (gx#stx-null? _tl69296962_)
                                                   (if (gx#identifier?
                                                        _hd6955_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6965_ '())))
               (_E69206935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69206935_)))))
                                         (_E69206935_)))))
                               (_E69206935_))))
                       (_E69206935_)))))
            (let () (_E69196967_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6863_)
      (let ((_e68646877_ _stx6863_))
        (let ((_E68666881_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68646877_))))
          (let ((_E68656913_
                 (lambda ()
                   (if (gx#stx-pair? _e68646877_)
                       (let ((_e68676885_ (gx#syntax-e _e68646877_)))
                         (let ((_hd68686888_ (##car _e68676885_))
                               (_tl68696890_ (##cdr _e68676885_)))
                           (if (gx#stx-pair? _tl68696890_)
                               (let ((_e68706893_ (gx#syntax-e _tl68696890_)))
                                 (let ((_hd68716896_ (##car _e68706893_))
                                       (_tl68726898_ (##cdr _e68706893_)))
                                   (let ((_id6901_ _hd68716896_))
                                     (if (gx#stx-pair? _tl68726898_)
                                         (let ((_e68736903_
                                                (gx#syntax-e _tl68726898_)))
                                           (let ((_hd68746906_
                                                  (##car _e68736903_))
                                                 (_tl68756908_
                                                  (##cdr _e68736903_)))
                                             (let ((_alias-id6911_
                                                    _hd68746906_))
                                               (if (gx#stx-null? _tl68756908_)
                                                   (if (if (gx#identifier?
                                                            _id6901_)
                                                           (gx#identifier?
                                                            _alias-id6911_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6911_ '())))
               (_E68666881_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68666881_)))))
                                         (_E68666881_)))))
                               (_E68666881_))))
                       (_E68666881_)))))
            (let () (_E68656913_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6820_)
      (let ((_e68216831_ _stx6820_))
        (let ((_E68236835_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68216831_))))
          (let ((_E68226859_
                 (lambda ()
                   (if (gx#stx-pair? _e68216831_)
                       (let ((_e68246839_ (gx#syntax-e _e68216831_)))
                         (let ((_hd68256842_ (##car _e68246839_))
                               (_tl68266844_ (##cdr _e68246839_)))
                           (if (gx#stx-pair? _tl68266844_)
                               (let ((_e68276847_ (gx#syntax-e _tl68266844_)))
                                 (let ((_hd68286850_ (##car _e68276847_))
                                       (_tl68296852_ (##cdr _e68276847_)))
                                   (let ((_hd6855_ _hd68286850_))
                                     (let ((_body6857_ _tl68296852_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6855_)
                                               (if (gx#stx-list? _body6857_)
                                                   (not (gx#stx-null?
                                                         _body6857_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6855_)
                                            _body6857_)
                                           (_E68236835_))))))
                               (_E68236835_))))
                       (_E68236835_)))))
            (let () (_E68226859_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6756_)
      (let ((_generate6758_
             (lambda (_clause6788_)
               (let ((_e67896796_ _clause6788_))
                 (let ((_E67916800_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6756_
                           _clause6788_))))
                   (let ((_E67906816_
                          (lambda ()
                            (if (gx#stx-pair? _e67896796_)
                                (let ((_e67926804_ (gx#syntax-e _e67896796_)))
                                  (let ((_hd67936807_ (##car _e67926804_))
                                        (_tl67946809_ (##cdr _e67926804_)))
                                    (let ((_hd6812_ _hd67936807_))
                                      (let ((_body6814_ _tl67946809_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6812_)
                                                (if (gx#stx-list? _body6814_)
                                                    (not (gx#stx-null?
                                                          _body6814_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6812_)
                                                   _body6814_)
                                             (gx#stx-source _clause6788_))
                                            (_E67916800_))))))
                                (_E67916800_)))))
                     (let () (_E67906816_))))))))
        (let ((_e67596766_ _stx6756_))
          (let ((_E67616770_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67596766_))))
            (let ((_E67606784_
                   (lambda ()
                     (if (gx#stx-pair? _e67596766_)
                         (let ((_e67626774_ (gx#syntax-e _e67596766_)))
                           (let ((_hd67636777_ (##car _e67626774_))
                                 (_tl67646779_ (##cdr _e67626774_)))
                             (let ((_clauses6782_ _tl67646779_))
                               (if (gx#stx-list? _clauses6782_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6758_ _clauses6782_))
                                   (_E67616770_)))))
                         (_E67616770_)))))
              (let () (_E67606784_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6655
      (lambda (_stx6657_ _form6658_)
        (let ((_generate6660_
               (lambda (_bind6703_)
                 (let ((_e67046714_ _bind6703_))
                   (let ((_E67066718_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6657_
                             _bind6703_))))
                     (let ((_E67056742_
                            (lambda ()
                              (if (gx#stx-pair? _e67046714_)
                                  (let ((_e67076722_
                                         (gx#syntax-e _e67046714_)))
                                    (let ((_hd67086725_ (##car _e67076722_))
                                          (_tl67096727_ (##cdr _e67076722_)))
                                      (let ((_ids6730_ _hd67086725_))
                                        (if (gx#stx-pair? _tl67096727_)
                                            (let ((_e67106732_
                                                   (gx#syntax-e _tl67096727_)))
                                              (let ((_hd67116735_
                                                     (##car _e67106732_))
                                                    (_tl67126737_
                                                     (##cdr _e67106732_)))
                                                (let ((_expr6740_
                                                       _hd67116735_))
                                                  (if (gx#stx-null?
                                                       _tl67126737_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6730_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6730_)
                        (cons _expr6740_ '()))
                  (_E67066718_))
              (_E67066718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67066718_)))))
                                  (_E67066718_)))))
                       (let () (_E67056742_))))))))
          (let ((_e66616671_ _stx6657_))
            (let ((_E66636675_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e66616671_))))
              (let ((_E66626699_
                     (lambda ()
                       (if (gx#stx-pair? _e66616671_)
                           (let ((_e66646679_ (gx#syntax-e _e66616671_)))
                             (let ((_hd66656682_ (##car _e66646679_))
                                   (_tl66666684_ (##cdr _e66646679_)))
                               (if (gx#stx-pair? _tl66666684_)
                                   (let ((_e66676687_
                                          (gx#syntax-e _tl66666684_)))
                                     (let ((_hd66686690_ (##car _e66676687_))
                                           (_tl66696692_ (##cdr _e66676687_)))
                                       (let ((_hd6695_ _hd66686690_))
                                         (let ((_body6697_ _tl66696692_))
                                           (if (if (gx#stx-list? _hd6695_)
                                                   (if (gx#stx-list?
                                                        _body6697_)
                                                       (not (gx#stx-null?
                                                             _body6697_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6658_
                                                (gx#stx-map1
                                                 _generate6660_
                                                 _hd6695_)
                                                _body6697_)
                                               (_E66636675_))))))
                                   (_E66636675_))))
                           (_E66636675_)))))
                (let () (_E66626699_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6749_)
          (let ((_form6751_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6655
             _stx6749_
             _form6751_))))
      (define gx#macro-expand-let-values
        (lambda _g9101_
          (let ((_g9100_ (length _g9101_)))
            (cond ((fx= _g9100_ 1)
                   (apply gx#macro-expand-let-values__0 _g9101_))
                  ((fx= _g9100_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6655 _g9101_))
                  (else (error "No clause matching arguments" _g9101_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6654_)
      (gx#macro-expand-let-values__opt-lambda6655 _stx6654_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6652_)
      (gx#macro-expand-let-values__opt-lambda6655
       _stx6652_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6543_)
      (let ((_e65446570_ _stx6543_))
        (let ((_E65566574_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65446570_))))
          (let ((_E65466616_
                 (lambda ()
                   (if (gx#stx-pair? _e65446570_)
                       (let ((_e65576578_ (gx#syntax-e _e65446570_)))
                         (let ((_hd65586581_ (##car _e65576578_))
                               (_tl65596583_ (##cdr _e65576578_)))
                           (if (gx#stx-pair? _tl65596583_)
                               (let ((_e65606586_ (gx#syntax-e _tl65596583_)))
                                 (let ((_hd65616589_ (##car _e65606586_))
                                       (_tl65626591_ (##cdr _e65606586_)))
                                   (let ((_test6594_ _hd65616589_))
                                     (if (gx#stx-pair? _tl65626591_)
                                         (let ((_e65636596_
                                                (gx#syntax-e _tl65626591_)))
                                           (let ((_hd65646599_
                                                  (##car _e65636596_))
                                                 (_tl65656601_
                                                  (##cdr _e65636596_)))
                                             (let ((_K6604_ _hd65646599_))
                                               (if (gx#stx-pair? _tl65656601_)
                                                   (let ((_e65666606_
                                                          (gx#syntax-e
                                                           _tl65656601_)))
                                                     (let ((_hd65676609_
                                                            (##car _e65666606_))
                                                           (_tl65686611_
                                                            (##cdr _e65666606_)))
                                                       (let ((_E6614_ _hd65676609_))
                                                         (if (gx#stx-null?
                                                              _tl65686611_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6594_ _K6604_ _E6614_)
                         (_E65566574_))
                     (_E65566574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65566574_)))))
                                         (_E65566574_)))))
                               (_E65566574_))))
                       (_E65566574_)))))
            (let ((_E65456648_
                   (lambda ()
                     (if (gx#stx-pair? _e65446570_)
                         (let ((_e65476620_ (gx#syntax-e _e65446570_)))
                           (let ((_hd65486623_ (##car _e65476620_))
                                 (_tl65496625_ (##cdr _e65476620_)))
                             (if (gx#stx-pair? _tl65496625_)
                                 (let ((_e65506628_
                                        (gx#syntax-e _tl65496625_)))
                                   (let ((_hd65516631_ (##car _e65506628_))
                                         (_tl65526633_ (##cdr _e65506628_)))
                                     (let ((_test6636_ _hd65516631_))
                                       (if (gx#stx-pair? _tl65526633_)
                                           (let ((_e65536638_
                                                  (gx#syntax-e _tl65526633_)))
                                             (let ((_hd65546641_
                                                    (##car _e65536638_))
                                                   (_tl65556643_
                                                    (##cdr _e65536638_)))
                                               (let ((_K6646_ _hd65546641_))
                                                 (if (gx#stx-null?
                                                      _tl65556643_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6636_
                                                          _K6646_
                                                          '#!void)
                                                         (_E65466616_))
                                                     (_E65466616_)))))
                                           (_E65466616_)))))
                                 (_E65466616_))))
                         (_E65466616_)))))
              (let () (_E65456648_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6531_ _yid6532_)
      (let ((_xe6534_ (gx#resolve-identifier__0 _xid6531_))
            (_ye6535_ (gx#resolve-identifier__0 _yid6532_)))
        (if (if _xe6534_ _ye6535_ '#f)
            (let ((_$e6537_ (eq? _xe6534_ _ye6535_)))
              (if _$e6537_
                  _$e6537_
                  (if (##structure-instance-of? _xe6534_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6535_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6534_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6535_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6540_ _xe6534_)) (if _$e6540_ _$e6540_ _ye6535_))
                '#f
                (gx#stx-eq? _xid6531_ _yid6532_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6515_ _yid6516_)
      (let ((_context6518_
             (lambda (_e6529_)
               (if (##structure-direct-instance-of?
                    _e6529_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6529_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6519_
               (lambda (_e6527_)
                 (if (symbol? _e6527_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6527_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6527_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6527_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6520_
                 (lambda (_e6525_)
                   (if (symbol? _e6525_)
                       _e6525_
                       (gx#syntax-local-unwrap _e6525_)))))
            (let ((_x6522_ (_unwrap6520_ _xid6515_))
                  (_y6523_ (_unwrap6520_ _yid6516_)))
              (if (gx#stx-eq? _x6522_ _y6523_)
                  (if (eq? (_context6518_ _x6522_) (_context6518_ _y6523_))
                      (andmap eq? (_marks6519_ _x6522_) (_marks6519_ _y6523_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6513_)
      (if (gx#identifier? _stx6513_) (gx#core-identifier=? _stx6513_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6511_)
      (if (gx#identifier? _stx6511_)
          (gx#core-identifier=? _stx6511_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6509_)
      (if (gx#identifier? _x6509_)
          (if (not (gx#underscore? _x6509_)) _x6509_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6453
      (lambda (_stx6455_ _where6456_)
        ((letrec ((_lp6458_
                   (lambda (_rest6460_)
                     (let ((_rest64616469_ _rest6460_))
                       (let ((_E64646473_
                              (lambda ()
                                (error '"No clause matching" _rest64616469_))))
                         (let ((_else64636477_ (lambda () '#t)))
                           (let ((_K64656487_
                                  (lambda (_rest6480_ _hd6481_)
                                    (if (not (gx#identifier? _hd6481_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6456_
                                         _hd6481_)
                                        (if (find (lambda (_g64826484_)
                                                    (gx#bound-identifier=?
                                                     _g64826484_
                                                     _hd6481_))
                                                  _rest6480_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6456_
                                             _hd6481_)
                                            (_lp6458_ _rest6480_))))))
                             (if (##pair? _rest64616469_)
                                 (let ((_hd64666490_ (##car _rest64616469_))
                                       (_tl64676492_ (##cdr _rest64616469_)))
                                   (let ((_hd6495_ _hd64666490_))
                                     (let ((_rest6497_ _tl64676492_))
                                       (_K64656487_ _rest6497_ _hd6495_))))
                                 (_else64636477_)))))))))
           _lp6458_)
         (gx#syntax->list _stx6455_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6502_)
          (let ((_where6504_ _stx6502_))
            (gx#check-duplicate-identifiers__opt-lambda6453
             _stx6502_
             _where6504_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9103_
          (let ((_g9102_ (length _g9103_)))
            (cond ((fx= _g9102_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9103_))
                  ((fx= _g9102_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6453
                          _g9103_))
                  (else (error "No clause matching arguments" _g9103_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6447_)
      (gx#stx-andmap
       (lambda (_x6449_)
         (let ((_$e6451_ (gx#identifier? _x6449_)))
           (if _$e6451_ _$e6451_ (gx#stx-false? _x6449_))))
       _stx6447_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6409
      (lambda (_stx6411_ _rebind?6412_ _phi6413_ _ctx6414_)
        (gx#stx-for-each1
         (lambda (_id6416_)
           (if (gx#identifier? _id6416_)
               (gx#core-bind-runtime!__opt-lambda6348
                _id6416_
                _rebind?6412_
                _phi6413_
                _ctx6414_)
               '#!void))
         _stx6411_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6421_)
          (let ((_rebind?6423_ '#f))
            (let ((_phi6425_ (gx#current-expander-phi)))
              (let ((_ctx6427_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6409
                 _stx6421_
                 _rebind?6423_
                 _phi6425_
                 _ctx6427_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6429_ _rebind?6430_)
          (let ((_phi6432_ (gx#current-expander-phi)))
            (let ((_ctx6434_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6409
               _stx6429_
               _rebind?6430_
               _phi6432_
               _ctx6434_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6436_ _rebind?6437_ _phi6438_)
          (let ((_ctx6440_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6409
             _stx6436_
             _rebind?6437_
             _phi6438_
             _ctx6440_))))
      (define gx#core-bind-values!
        (lambda _g9105_
          (let ((_g9104_ (length _g9105_)))
            (cond ((fx= _g9104_ 1) (apply gx#core-bind-values!__0 _g9105_))
                  ((fx= _g9104_ 2) (apply gx#core-bind-values!__1 _g9105_))
                  ((fx= _g9104_ 3) (apply gx#core-bind-values!__2 _g9105_))
                  ((fx= _g9104_ 4)
                   (apply gx#core-bind-values!__opt-lambda6409 _g9105_))
                  (else (error "No clause matching arguments" _g9105_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6406_)
      (gx#stx-map1
       (lambda (_x6408_)
         (if (gx#identifier? _x6408_) (gx#core-quote-syntax__0 _x6408_) '#f))
       _stx6406_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6399_)
      (if (gx#identifier? _stx6399_)
          (let ((_bind6401_ (gx#resolve-identifier__0 _stx6399_)))
            (let ((_$e6403_ (not _bind6401_)))
              (if _$e6403_
                  _$e6403_
                  (##structure-instance-of?
                   _bind6401_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6391_ _form6392_)
      (let ((_bind6394_ (gx#resolve-identifier__0 _id6391_)))
        (if (##structure-instance-of? _bind6394_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6391_)
            (if (not _bind6394_)
                (if (let ((_$e6396_
                           (gx#core-context-rebind?__opt-lambda4265
                            (gx#core-context-top__0))))
                      (if _$e6396_
                          _$e6396_
                          (gx#core-extern-symbol? (gx#stx-e _id6391_))))
                    (gx#core-quote-syntax__0 _id6391_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6392_
                     _id6391_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6392_
                 _id6391_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6348
      (lambda (_id6350_ _rebind?6351_ _phi6352_ _ctx6353_)
        (let ((_key6355_ (gx#core-identifier-key _id6350_)))
          (let ((_eid6357_
                 (gx#make-binding-id__opt-lambda6115
                  _key6355_
                  '#f
                  _phi6352_
                  _ctx6353_)))
            (let ((_bind6359_
                   (if (##structure-instance-of?
                        _ctx6353_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6357_
                        _key6355_
                        _phi6352_
                        _ctx6353_)
                       (if (##structure-instance-of?
                            _ctx6353_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6357_
                            _key6355_
                            _phi6352_)
                           (if (##structure-instance-of?
                                _ctx6353_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6357_
                                _key6355_
                                _phi6352_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6357_
                                _key6355_
                                _phi6352_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4712
                 _id6350_
                 _bind6359_
                 _rebind?6351_
                 _phi6352_
                 _ctx6353_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6365_)
          (let ((_rebind?6367_ '#f))
            (let ((_phi6369_ (gx#current-expander-phi)))
              (let ((_ctx6371_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6348
                 _id6365_
                 _rebind?6367_
                 _phi6369_
                 _ctx6371_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6373_ _rebind?6374_)
          (let ((_phi6376_ (gx#current-expander-phi)))
            (let ((_ctx6378_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6348
               _id6373_
               _rebind?6374_
               _phi6376_
               _ctx6378_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6380_ _rebind?6381_ _phi6382_)
          (let ((_ctx6384_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6348
             _id6380_
             _rebind?6381_
             _phi6382_
             _ctx6384_))))
      (define gx#core-bind-runtime!
        (lambda _g9107_
          (let ((_g9106_ (length _g9107_)))
            (cond ((fx= _g9106_ 1) (apply gx#core-bind-runtime!__0 _g9107_))
                  ((fx= _g9106_ 2) (apply gx#core-bind-runtime!__1 _g9107_))
                  ((fx= _g9106_ 3) (apply gx#core-bind-runtime!__2 _g9107_))
                  ((fx= _g9106_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6348 _g9107_))
                  (else (error "No clause matching arguments" _g9107_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6303
      (lambda (_id6305_ _eid6306_ _rebind?6307_ _phi6308_ _ctx6309_)
        (let ((_key6311_ (gx#core-identifier-key _id6305_)))
          (let ((_bind6313_
                 (if (##structure-instance-of? _ctx6309_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6306_
                      _key6311_
                      _phi6308_
                      _ctx6309_)
                     (if (##structure-instance-of?
                          _ctx6309_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6306_
                          _key6311_
                          _phi6308_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6306_
                          _key6311_
                          _phi6308_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4712
               _id6305_
               _bind6313_
               _rebind?6307_
               _phi6308_
               _ctx6309_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6319_ _eid6320_)
          (let ((_rebind?6322_ '#f))
            (let ((_phi6324_ (gx#current-expander-phi)))
              (let ((_ctx6326_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6303
                 _id6319_
                 _eid6320_
                 _rebind?6322_
                 _phi6324_
                 _ctx6326_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6328_ _eid6329_ _rebind?6330_)
          (let ((_phi6332_ (gx#current-expander-phi)))
            (let ((_ctx6334_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6303
               _id6328_
               _eid6329_
               _rebind?6330_
               _phi6332_
               _ctx6334_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6336_ _eid6337_ _rebind?6338_ _phi6339_)
          (let ((_ctx6341_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6303
             _id6336_
             _eid6337_
             _rebind?6338_
             _phi6339_
             _ctx6341_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9109_
          (let ((_g9108_ (length _g9109_)))
            (cond ((fx= _g9108_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9109_))
                  ((fx= _g9108_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9109_))
                  ((fx= _g9108_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9109_))
                  ((fx= _g9108_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6303
                          _g9109_))
                  (else (error "No clause matching arguments" _g9109_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6263
      (lambda (_id6265_ _eid6266_ _rebind?6267_ _phi6268_ _ctx6269_)
        (gx#bind-identifier!__opt-lambda4712
         _id6265_
         (##structure
          gx#extern-binding::t
          _eid6266_
          (gx#core-identifier-key _id6265_)
          _phi6268_)
         _rebind?6267_
         _phi6268_
         _ctx6269_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6274_ _eid6275_)
          (let ((_rebind?6277_ '#f))
            (let ((_phi6279_ (gx#current-expander-phi)))
              (let ((_ctx6281_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6263
                 _id6274_
                 _eid6275_
                 _rebind?6277_
                 _phi6279_
                 _ctx6281_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6283_ _eid6284_ _rebind?6285_)
          (let ((_phi6287_ (gx#current-expander-phi)))
            (let ((_ctx6289_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6263
               _id6283_
               _eid6284_
               _rebind?6285_
               _phi6287_
               _ctx6289_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6291_ _eid6292_ _rebind?6293_ _phi6294_)
          (let ((_ctx6296_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6263
             _id6291_
             _eid6292_
             _rebind?6293_
             _phi6294_
             _ctx6296_))))
      (define gx#core-bind-extern!
        (lambda _g9111_
          (let ((_g9110_ (length _g9111_)))
            (cond ((fx= _g9110_ 2) (apply gx#core-bind-extern!__0 _g9111_))
                  ((fx= _g9110_ 3) (apply gx#core-bind-extern!__1 _g9111_))
                  ((fx= _g9110_ 4) (apply gx#core-bind-extern!__2 _g9111_))
                  ((fx= _g9110_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6263 _g9111_))
                  (else (error "No clause matching arguments" _g9111_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6217
      (lambda (_id6219_ _e6220_ _rebind?6221_ _phi6222_ _ctx6223_)
        (gx#bind-identifier!__opt-lambda4712
         _id6219_
         (let ((_key6228_ (gx#core-identifier-key _id6219_))
               (_e6229_ (if (let ((_$e6225_
                                   (##structure-instance-of?
                                    _e6220_
                                    'gx#expander::t)))
                              (if _$e6225_
                                  _$e6225_
                                  (##structure-instance-of?
                                   _e6220_
                                   'gx#expander-context::t)))
                            _e6220_
                            (##structure
                             gx#user-expander::t
                             _e6220_
                             _ctx6223_
                             _phi6222_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6115
             _key6228_
             '#t
             _phi6222_
             _ctx6223_)
            _key6228_
            _phi6222_
            _e6229_))
         _rebind?6221_
         _phi6222_
         _ctx6223_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6234_ _e6235_)
          (let ((_rebind?6237_ '#f))
            (let ((_phi6239_ (gx#current-expander-phi)))
              (let ((_ctx6241_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6217
                 _id6234_
                 _e6235_
                 _rebind?6237_
                 _phi6239_
                 _ctx6241_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6243_ _e6244_ _rebind?6245_)
          (let ((_phi6247_ (gx#current-expander-phi)))
            (let ((_ctx6249_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6217
               _id6243_
               _e6244_
               _rebind?6245_
               _phi6247_
               _ctx6249_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6251_ _e6252_ _rebind?6253_ _phi6254_)
          (let ((_ctx6256_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6217
             _id6251_
             _e6252_
             _rebind?6253_
             _phi6254_
             _ctx6256_))))
      (define gx#core-bind-syntax!
        (lambda _g9113_
          (let ((_g9112_ (length _g9113_)))
            (cond ((fx= _g9112_ 2) (apply gx#core-bind-syntax!__0 _g9113_))
                  ((fx= _g9112_ 3) (apply gx#core-bind-syntax!__1 _g9113_))
                  ((fx= _g9112_ 4) (apply gx#core-bind-syntax!__2 _g9113_))
                  ((fx= _g9112_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6217 _g9113_))
                  (else (error "No clause matching arguments" _g9113_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6200
      (lambda (_id6202_ _e6203_ _rebind?6204_)
        (gx#core-bind-syntax!__opt-lambda6217
         _id6202_
         _e6203_
         _rebind?6204_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6209_ _e6210_)
          (let ((_rebind?6212_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6200
             _id6209_
             _e6210_
             _rebind?6212_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9115_
          (let ((_g9114_ (length _g9115_)))
            (cond ((fx= _g9114_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9115_))
                  ((fx= _g9114_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6200 _g9115_))
                  (else (error "No clause matching arguments" _g9115_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6158
      (lambda (_id6160_ _alias-id6161_ _rebind?6162_ _phi6163_ _ctx6164_)
        (gx#bind-identifier!__opt-lambda4712
         _id6160_
         (let ((_key6166_ (gx#core-identifier-key _id6160_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6115
             _key6166_
             '#t
             _phi6163_
             _ctx6164_)
            _key6166_
            _phi6163_
            _alias-id6161_))
         _rebind?6162_
         _phi6163_
         _ctx6164_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6171_ _alias-id6172_)
          (let ((_rebind?6174_ '#f))
            (let ((_phi6176_ (gx#current-expander-phi)))
              (let ((_ctx6178_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda6158
                 _id6171_
                 _alias-id6172_
                 _rebind?6174_
                 _phi6176_
                 _ctx6178_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6180_ _alias-id6181_ _rebind?6182_)
          (let ((_phi6184_ (gx#current-expander-phi)))
            (let ((_ctx6186_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda6158
               _id6180_
               _alias-id6181_
               _rebind?6182_
               _phi6184_
               _ctx6186_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6188_ _alias-id6189_ _rebind?6190_ _phi6191_)
          (let ((_ctx6193_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6158
             _id6188_
             _alias-id6189_
             _rebind?6190_
             _phi6191_
             _ctx6193_))))
      (define gx#core-bind-alias!
        (lambda _g9117_
          (let ((_g9116_ (length _g9117_)))
            (cond ((fx= _g9116_ 2) (apply gx#core-bind-alias!__0 _g9117_))
                  ((fx= _g9116_ 3) (apply gx#core-bind-alias!__1 _g9117_))
                  ((fx= _g9116_ 4) (apply gx#core-bind-alias!__2 _g9117_))
                  ((fx= _g9116_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6158 _g9117_))
                  (else (error "No clause matching arguments" _g9117_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6115
      (lambda (_key6117_ _syntax?6118_ _phi6119_ _ctx6120_)
        (if (uninterned-symbol? _key6117_)
            (gensym 'L)
            (if (pair? _key6117_)
                (gensym (car _key6117_))
                (if (##structure-instance-of? _ctx6120_ 'gx#top-context::t)
                    (let ((_ns6122_
                           (gx#core-context-namespace__opt-lambda4248
                            _ctx6120_)))
                      (if (if (fxzero? _phi6119_) (not _syntax?6118_) '#f)
                          (if _ns6122_
                              (make-symbol _ns6122_ '"#" _key6117_)
                              _key6117_)
                          (if _syntax?6118_
                              (make-symbol
                               (let ((_$e6124_ _ns6122_))
                                 (if _$e6124_ _$e6124_ '""))
                               '"[:"
                               (number->string _phi6119_)
                               '":]#"
                               _key6117_)
                              (make-symbol
                               (let ((_$e6127_ _ns6122_))
                                 (if _$e6127_ _$e6127_ '""))
                               '"["
                               (number->string _phi6119_)
                               '"]#"
                               _key6117_))))
                    (gensym _key6117_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6133_)
          (let ((_syntax?6135_ '#f))
            (let ((_phi6137_ (gx#current-expander-phi)))
              (let ((_ctx6139_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda6115
                 _key6133_
                 _syntax?6135_
                 _phi6137_
                 _ctx6139_))))))
      (define gx#make-binding-id__1
        (lambda (_key6141_ _syntax?6142_)
          (let ((_phi6144_ (gx#current-expander-phi)))
            (let ((_ctx6146_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda6115
               _key6141_
               _syntax?6142_
               _phi6144_
               _ctx6146_)))))
      (define gx#make-binding-id__2
        (lambda (_key6148_ _syntax?6149_ _phi6150_)
          (let ((_ctx6152_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6115
             _key6148_
             _syntax?6149_
             _phi6150_
             _ctx6152_))))
      (define gx#make-binding-id
        (lambda _g9119_
          (let ((_g9118_ (length _g9119_)))
            (cond ((fx= _g9118_ 1) (apply gx#make-binding-id__0 _g9119_))
                  ((fx= _g9118_ 2) (apply gx#make-binding-id__1 _g9119_))
                  ((fx= _g9118_ 3) (apply gx#make-binding-id__2 _g9119_))
                  ((fx= _g9118_ 4)
                   (apply gx#make-binding-id__opt-lambda6115 _g9119_))
                  (else (error "No clause matching arguments" _g9119_)))))))))
