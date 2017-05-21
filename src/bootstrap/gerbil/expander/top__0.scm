(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9072_)
      (let ((_expand-special9074_
             (lambda (_hd9076_ _K9077_ _rest9078_ _r9079_)
               (_K9077_ _rest9078_
                        (cons (gx#core-expand-top _hd9076_) _r9079_)))))
        (gx#core-expand-block__0 _stx9072_ _expand-special9074_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8825_)
      (let ((_expand-special8827_
             (lambda (_hd8947_ _K8948_ _rest8949_ _r8950_)
               (let ((_K8954_ (lambda (_e8952_)
                                (_K8948_ _rest8949_ (cons _e8952_ _r8950_)))))
                 (let ((_e89558984_ _hd8947_))
                   (let ((_E89798988_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89558984_))))
                     (let ((_E89759000_
                            (lambda ()
                              (if (gx#stx-pair? _e89558984_)
                                  (let ((_e89808992_
                                         (gx#syntax-e _e89558984_)))
                                    (let ((_hd89818995_ (##car _e89808992_))
                                          (_tl89828997_ (##cdr _e89808992_)))
                                      (if (if (gx#identifier? _hd89818995_)
                                              (gx#core-identifier=?
                                               _hd89818995_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8954_ (gx#core-expand-define-runtime%
                                                        _hd8947_))
                                              (_E89798988_))
                                          (_E89798988_))))
                                  (_E89798988_)))))
                       (let ((_E89719012_
                              (lambda ()
                                (if (gx#stx-pair? _e89558984_)
                                    (let ((_e89769004_
                                           (gx#syntax-e _e89558984_)))
                                      (let ((_hd89779007_ (##car _e89769004_))
                                            (_tl89789009_ (##cdr _e89769004_)))
                                        (if (if (gx#identifier? _hd89779007_)
                                                (gx#core-identifier=?
                                                 _hd89779007_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8954_ (gx#core-expand-define-alias%
                                                          _hd8947_))
                                                (_E89759000_))
                                            (_E89759000_))))
                                    (_E89759000_)))))
                         (let ((_E89619024_
                                (lambda ()
                                  (if (gx#stx-pair? _e89558984_)
                                      (let ((_e89729016_
                                             (gx#syntax-e _e89558984_)))
                                        (let ((_hd89739019_
                                               (##car _e89729016_))
                                              (_tl89749021_
                                               (##cdr _e89729016_)))
                                          (if (if (gx#identifier? _hd89739019_)
                                                  (gx#core-identifier=?
                                                   _hd89739019_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8954_ (gx#core-expand-define-syntax%
                                                            _hd8947_))
                                                  (_E89719012_))
                                              (_E89719012_))))
                                      (_E89719012_)))))
                           (let ((_E89579056_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89558984_)
                                        (let ((_e89629028_
                                               (gx#syntax-e _e89558984_)))
                                          (let ((_hd89639031_
                                                 (##car _e89629028_))
                                                (_tl89649033_
                                                 (##cdr _e89629028_)))
                                            (if (if (gx#identifier?
                                                     _hd89639031_)
                                                    (gx#core-identifier=?
                                                     _hd89639031_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89649033_)
                                                    (let ((_e89659036_
                                                           (gx#syntax-e
                                                            _tl89649033_)))
                                                      (let ((_hd89669039_
                                                             (##car _e89659036_))
                                                            (_tl89679041_
                                                             (##cdr _e89659036_)))
                                                        (let ((_hd-bind9044_
                                                               _hd89669039_))
                                                          (if (gx#stx-pair?
                                                               _tl89679041_)
                                                              (let ((_e89689046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89679041_)))
                        (let ((_hd89699049_ (##car _e89689046_))
                              (_tl89709051_ (##cdr _e89689046_)))
                          (let ((_expr9054_ _hd89699049_))
                            (if (gx#stx-null? _tl89709051_)
                                (if (gx#core-bind-values? _hd-bind9044_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9044_)
                                      (_K8954_ _hd8947_))
                                    (_E89619024_))
                                (_E89619024_)))))
                      (_E89619024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89619024_))
                                                (_E89619024_))))
                                        (_E89619024_)))))
                             (let ((_E89569068_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89558984_)
                                          (let ((_e89589060_
                                                 (gx#syntax-e _e89558984_)))
                                            (let ((_hd89599063_
                                                   (##car _e89589060_))
                                                  (_tl89609065_
                                                   (##cdr _e89589060_)))
                                              (if (if (gx#identifier?
                                                       _hd89599063_)
                                                      (gx#core-identifier=?
                                                       _hd89599063_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8954_ (gx#core-expand-begin-syntax%
                                                                _hd8947_))
                                                      (_E89579056_))
                                                  (_E89579056_))))
                                          (_E89579056_)))))
                               (let () (_E89569068_)))))))))))))
        (let ((_eval-body8828_
               (lambda (_rbody8836_)
                 ((letrec ((_lp8838_
                            (lambda (_rest8840_ _body8841_ _ebody8842_)
                              (let ((_rest88438851_ _rest8840_))
                                (let ((_E88468855_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88438851_))))
                                  (let ((_else88458859_
                                         (lambda ()
                                           (values _body8841_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8842_)
                                                     (gx#stx-source
                                                      _stx8825_)))))))
                                    (let ((_K88478935_
                                           (lambda (_rest8862_ _hd8863_)
                                             (let ((_e88648881_ _hd8863_))
                                               (let ((_E88768885_
                                                      (lambda ()
                                                        (_lp8838_
                                                         _rest8862_
                                                         (cons _hd8863_
                                                               _body8841_)
                                                         (cons _hd8863_
                                                               _ebody8842_)))))
                                                 (let ((_E88668897_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88648881_)
                                                              (let ((_e88778889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88648881_)))
                        (let ((_hd88788892_ (##car _e88778889_))
                              (_tl88798894_ (##cdr _e88778889_)))
                          (if (if (gx#identifier? _hd88788892_)
                                  (gx#core-identifier=?
                                   _hd88788892_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8838_
                                   _rest8862_
                                   (cons _hd8863_ _body8841_)
                                   _ebody8842_)
                                  (_E88768885_))
                              (_E88768885_))))
                      (_E88768885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88658931_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88648881_)
                        (let ((_e88678901_ (gx#syntax-e _e88648881_)))
                          (let ((_hd88688904_ (##car _e88678901_))
                                (_tl88698906_ (##cdr _e88678901_)))
                            (if (if (gx#identifier? _hd88688904_)
                                    (gx#core-identifier=?
                                     _hd88688904_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88698906_)
                                    (let ((_e88708909_
                                           (gx#syntax-e _tl88698906_)))
                                      (let ((_hd88718912_ (##car _e88708909_))
                                            (_tl88728914_ (##cdr _e88708909_)))
                                        (let ((_hd-bind8917_ _hd88718912_))
                                          (if (gx#stx-pair? _tl88728914_)
                                              (let ((_e88738919_
                                                     (gx#syntax-e
                                                      _tl88728914_)))
                                                (let ((_hd88748922_
                                                       (##car _e88738919_))
                                                      (_tl88758924_
                                                       (##cdr _e88738919_)))
                                                  (let ((_expr8927_
                                                         _hd88748922_))
                                                    (if (gx#stx-null?
                                                         _tl88758924_)
                                                        (if '#t
                                                            (let ((_ehd8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8917_)
                                        (cons (gx#core-expand-expression
                                               _expr8927_)
                                              '())))
                            (gx#stx-source _hd8863_))))
                      (_lp8838_
                       _rest8862_
                       (cons _ehd8929_ _body8841_)
                       (cons _ehd8929_ _ebody8842_)))
                    (_E88668897_))
                (_E88668897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88668897_)))))
                                    (_E88668897_))
                                (_E88668897_))))
                        (_E88668897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88658931_)))))))))
                                      (if (##pair? _rest88438851_)
                                          (let ((_hd88488938_
                                                 (##car _rest88438851_))
                                                (_tl88498940_
                                                 (##cdr _rest88438851_)))
                                            (let ((_hd8943_ _hd88488938_))
                                              (let ((_rest8945_ _tl88498940_))
                                                (_K88478935_
                                                 _rest8945_
                                                 _hd8943_))))
                                          (_else88458859_)))))))))
                    _lp8838_)
                  _rbody8836_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8831_
                    (gx#core-expand-block__1
                     _stx8825_
                     _expand-special8827_
                     '#f)))
               (let ((_g9086_ (_eval-body8828_ _rbody8831_)))
                 (begin
                   (let ((_g9087_ (values-count _g9086_)))
                     (if (not (fx= _g9087_ 2))
                         (error "Context expects 2 values" _g9087_)))
                   (let ((_expanded-body8833_ (values-ref _g9086_ 0))
                         (_value8834_ (values-ref _g9086_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8833_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8834_ '())))
                      (gx#stx-source _stx8825_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8795_)
      (let ((_e87968803_ _stx8795_))
        (let ((_E87988807_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87968803_))))
          (let ((_E87978821_
                 (lambda ()
                   (if (gx#stx-pair? _e87968803_)
                       (let ((_e87998811_ (gx#syntax-e _e87968803_)))
                         (let ((_hd88008814_ (##car _e87998811_))
                               (_tl88018816_ (##cdr _e87998811_)))
                           (let ((_body8819_ _tl88018816_))
                             (if (gx#stx-list? _body8819_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8819_)
                                  (gx#stx-source _stx8795_))
                                 (_E87988807_)))))
                       (_E87988807_)))))
            (let () (_E87978821_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8793_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8793_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8781_)
      (let ((_e87828785_ _stx8781_))
        (let ((_E87838789_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87828785_))))
          (let () (_E87838789_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8505_ _body8506_)
      (let ((_expand-internal-special8510_
             (lambda (_hd8667_ _K8668_ _rest8669_ _r8670_)
               (let ((_e86718696_ _hd8667_))
                 (let ((_E86918700_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86718696_))))
                   (let ((_E86878712_
                          (lambda ()
                            (if (gx#stx-pair? _e86718696_)
                                (let ((_e86928704_ (gx#syntax-e _e86718696_)))
                                  (let ((_hd86938707_ (##car _e86928704_))
                                        (_tl86948709_ (##cdr _e86928704_)))
                                    (if (if (gx#identifier? _hd86938707_)
                                            (gx#core-identifier=?
                                             _hd86938707_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8668_ _rest8669_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8667_)
                                                           _r8670_))
                                            (_E86918700_))
                                        (_E86918700_))))
                                (_E86918700_)))))
                     (let ((_E86838724_
                            (lambda ()
                              (if (gx#stx-pair? _e86718696_)
                                  (let ((_e86888716_
                                         (gx#syntax-e _e86718696_)))
                                    (let ((_hd86898719_ (##car _e86888716_))
                                          (_tl86908721_ (##cdr _e86888716_)))
                                      (if (if (gx#identifier? _hd86898719_)
                                              (gx#core-identifier=?
                                               _hd86898719_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8667_)
                                                (_K8668_ _rest8669_ _r8670_))
                                              (_E86878712_))
                                          (_E86878712_))))
                                  (_E86878712_)))))
                       (let ((_E86738736_
                              (lambda ()
                                (if (gx#stx-pair? _e86718696_)
                                    (let ((_e86848728_
                                           (gx#syntax-e _e86718696_)))
                                      (let ((_hd86858731_ (##car _e86848728_))
                                            (_tl86868733_ (##cdr _e86848728_)))
                                        (if (if (gx#identifier? _hd86858731_)
                                                (gx#core-identifier=?
                                                 _hd86858731_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8667_)
                                                  (_K8668_ _rest8669_ _r8670_))
                                                (_E86838724_))
                                            (_E86838724_))))
                                    (_E86838724_)))))
                         (let ((_E86728768_
                                (lambda ()
                                  (if (gx#stx-pair? _e86718696_)
                                      (let ((_e86748740_
                                             (gx#syntax-e _e86718696_)))
                                        (let ((_hd86758743_
                                               (##car _e86748740_))
                                              (_tl86768745_
                                               (##cdr _e86748740_)))
                                          (if (if (gx#identifier? _hd86758743_)
                                                  (gx#core-identifier=?
                                                   _hd86758743_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86768745_)
                                                  (let ((_e86778748_
                                                         (gx#syntax-e
                                                          _tl86768745_)))
                                                    (let ((_hd86788751_
                                                           (##car _e86778748_))
                                                          (_tl86798753_
                                                           (##cdr _e86778748_)))
                                                      (let ((_hd-bind8756_
                                                             _hd86788751_))
                                                        (if (gx#stx-pair?
                                                             _tl86798753_)
                                                            (let ((_e86808758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86798753_)))
                      (let ((_hd86818761_ (##car _e86808758_))
                            (_tl86828763_ (##cdr _e86808758_)))
                        (let ((_expr8766_ _hd86818761_))
                          (if (gx#stx-null? _tl86828763_)
                              (if (gx#core-bind-values? _hd-bind8756_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8756_)
                                    (_K8668_ _rest8669_
                                             (cons _hd8667_ _r8670_)))
                                  (_E86738736_))
                              (_E86738736_)))))
                    (_E86738736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86738736_))
                                              (_E86738736_))))
                                      (_E86738736_)))))
                           (let () (_E86728768_)))))))))))
        (let ((_wrap-internal8511_
               (lambda (_rbody8513_)
                 ((letrec ((_lp8515_
                            (lambda (_rest8517_
                                     _decls8518_
                                     _bind8519_
                                     _body8520_)
                              (let ((_e85218528_ _rest8517_))
                                (let ((_E85238577_
                                       (lambda ()
                                         (let ((_body8572_
                                                (let ((_body85318541_
                                                       _body8520_))
                                                  (let ((_E85358545_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85318541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85348549_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8520_)
                                                              (gx#stx-source
                                                               _stx8505_)))))
                                                      (let ((_try-match85338565_
                                                             (lambda ()
                                                               (let ((_K85368555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8553_) _expr8553_)))
                         (if (##pair? _body85318541_)
                             (let ((_hd85378558_ (##car _body85318541_))
                                   (_tl85388560_ (##cdr _body85318541_)))
                               (let ((_expr8563_ _hd85378558_))
                                 (if (##null? _tl85388560_)
                                     (_K85368555_ _expr8563_)
                                     (_else85348549_))))
                             (_else85348549_))))))
                (let ((_K85398569_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8505_))))
                  (if (##null? _body85318541_)
                      (_K85398569_)
                      (_try-match85338565_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8574_
                                                  (if (null? _bind8519_)
                                                      _body8572_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8572_ '())))
               (gx#stx-source _stx8505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8518_)
                                                   _body8574_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8518_
                                                                (cons _body8574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8505_)))))))))
                                  (let ((_E85228663_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85218528_)
                                               (let ((_e85248581_
                                                      (gx#syntax-e
                                                       _e85218528_)))
                                                 (let ((_hd85258584_
                                                        (##car _e85248581_))
                                                       (_tl85268586_
                                                        (##cdr _e85248581_)))
                                                   (let ((_hd8589_
                                                          _hd85258584_))
                                                     (let ((_rest8591_
                                                            _tl85268586_))
                                                       (if '#t
                                                           (let ((_e85928609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8589_))
                     (let ((_E86048613_
                            (lambda ()
                              (if (null? _bind8519_)
                                  (_lp8515_
                                   _rest8591_
                                   _decls8518_
                                   _bind8519_
                                   (cons _hd8589_ _body8520_))
                                  (_lp8515_
                                   _rest8591_
                                   _decls8518_
                                   (cons (cons '#f (cons _hd8589_ '()))
                                         _bind8519_)
                                   _body8520_)))))
                       (let ((_E85948627_
                              (lambda ()
                                (if (gx#stx-pair? _e85928609_)
                                    (let ((_e86058617_
                                           (gx#syntax-e _e85928609_)))
                                      (let ((_hd86068620_ (##car _e86058617_))
                                            (_tl86078622_ (##cdr _e86058617_)))
                                        (if (if (gx#identifier? _hd86068620_)
                                                (gx#core-identifier=?
                                                 _hd86068620_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8625_ _tl86078622_))
                                              (if '#t
                                                  (_lp8515_
                                                   _rest8591_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8518_
                                                    _xdecls8625_)
                                                   _bind8519_
                                                   _body8520_)
                                                  (_E86048613_)))
                                            (_E86048613_))))
                                    (_E86048613_)))))
                         (let ((_E85938659_
                                (lambda ()
                                  (if (gx#stx-pair? _e85928609_)
                                      (let ((_e85958631_
                                             (gx#syntax-e _e85928609_)))
                                        (let ((_hd85968634_
                                               (##car _e85958631_))
                                              (_tl85978636_
                                               (##cdr _e85958631_)))
                                          (if (if (gx#identifier? _hd85968634_)
                                                  (gx#core-identifier=?
                                                   _hd85968634_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85978636_)
                                                  (let ((_e85988639_
                                                         (gx#syntax-e
                                                          _tl85978636_)))
                                                    (let ((_hd85998642_
                                                           (##car _e85988639_))
                                                          (_tl86008644_
                                                           (##cdr _e85988639_)))
                                                      (let ((_hd-bind8647_
                                                             _hd85998642_))
                                                        (if (gx#stx-pair?
                                                             _tl86008644_)
                                                            (let ((_e86018649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86008644_)))
                      (let ((_hd86028652_ (##car _e86018649_))
                            (_tl86038654_ (##cdr _e86018649_)))
                        (let ((_expr8657_ _hd86028652_))
                          (if (gx#stx-null? _tl86038654_)
                              (if '#t
                                  (_lp8515_
                                   _rest8591_
                                   _decls8518_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8647_)
                                               (cons (gx#core-expand-expression
                                                      _expr8657_)
                                                     '()))
                                         _bind8519_)
                                   _body8520_)
                                  (_E85948627_))
                              (_E85948627_)))))
                    (_E85948627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85948627_))
                                              (_E85948627_))))
                                      (_E85948627_)))))
                           (let () (_E85938659_))))))
                   (_E85238577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85238577_)))))
                                    (let () (_E85228663_))))))))
                    _lp8515_)
                  _rbody8513_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8509_
                 (lambda (_hd8772_ _rest8773_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8511_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8772_ _rest8773_)
                         (gx#stx-source _stx8505_))
                        _expand-internal-special8510_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9080 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9080)
                        __obj9080))))))
            (let ((_expand-special8508_
                   (lambda (_hd8776_ _K8777_ _rest8778_ _r8779_)
                     (_K8777_ '()
                              (cons (_expand-internal8509_ _hd8776_ _rest8778_)
                                    _r8779_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8506_)
                (gx#stx-source _stx8505_))
               _expand-special8508_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8443_)
      (let ((_e84448451_ _stx8443_))
        (let ((_E84468455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84448451_))))
          (let ((_E84458501_
                 (lambda ()
                   (if (gx#stx-pair? _e84448451_)
                       (let ((_e84478459_ (gx#syntax-e _e84448451_)))
                         (let ((_hd84488462_ (##car _e84478459_))
                               (_tl84498464_ (##cdr _e84478459_)))
                           (let ((_body8467_ _tl84498464_))
                             (if (gx#stx-list? _body8467_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8469_)
                                      (let ((_e84708477_ _decl8469_))
                                        (let ((_E84728481_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84708477_))))
                                          (let ((_E84718497_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84708477_)
                                                       (let ((_e84738485_
                                                              (gx#syntax-e
                                                               _e84708477_)))
                                                         (let ((_hd84748488_
                                                                (##car _e84738485_))
                                                               (_tl84758490_
                                                                (##cdr _e84738485_)))
                                                           (let ((_head8493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84748488_))
                     (let ((_args8495_ _tl84758490_))
                       (if (gx#stx-list? _args8495_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8469_)
                           (_E84728481_))))))
               (_E84728481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84718497_))))))
                                    _body8467_))
                                  (gx#stx-source _stx8443_))
                                 (_E84468455_)))))
                       (_E84468455_)))))
            (let () (_E84458501_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8327_)
      (let ((_e83288335_ _stx8327_))
        (let ((_E83308339_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83288335_))))
          (let ((_E83298439_
                 (lambda ()
                   (if (gx#stx-pair? _e83288335_)
                       (let ((_e83318343_ (gx#syntax-e _e83288335_)))
                         (let ((_hd83328346_ (##car _e83318343_))
                               (_tl83338348_ (##cdr _e83318343_)))
                           (let ((_body8351_ _tl83338348_))
                             (if (gx#stx-list? _body8351_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8353_)
                                      (let ((_e83548364_ _bind8353_))
                                        (let ((_E83568368_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83548364_))))
                                          (let ((_E83558392_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83548364_)
                                                       (let ((_e83578372_
                                                              (gx#syntax-e
                                                               _e83548364_)))
                                                         (let ((_hd83588375_
                                                                (##car _e83578372_))
                                                               (_tl83598377_
                                                                (##cdr _e83578372_)))
                                                           (let ((_id8380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83588375_))
                     (if (gx#stx-pair? _tl83598377_)
                         (let ((_e83608382_ (gx#syntax-e _tl83598377_)))
                           (let ((_hd83618385_ (##car _e83608382_))
                                 (_tl83628387_ (##cdr _e83608382_)))
                             (let ((_eid8390_ _hd83618385_))
                               (if (gx#stx-null? _tl83628387_)
                                   (if (if (gx#identifier? _id8380_)
                                           (gx#identifier? _eid8390_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8380_
                                        (gx#stx-e _eid8390_))
                                       (_E83568368_))
                                   (_E83568368_)))))
                         (_E83568368_)))))
               (_E83568368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83558392_))))))
                                    _body8351_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8396_)
                                        (let ((_e83978407_ _bind8396_))
                                          (let ((_E83998411_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e83978407_))))
                                            (let ((_E83988435_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e83978407_)
                                                         (let ((_e84008415_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e83978407_)))
                   (let ((_hd84018418_ (##car _e84008415_))
                         (_tl84028420_ (##cdr _e84008415_)))
                     (let ((_id8423_ _hd84018418_))
                       (if (gx#stx-pair? _tl84028420_)
                           (let ((_e84038425_ (gx#syntax-e _tl84028420_)))
                             (let ((_hd84048428_ (##car _e84038425_))
                                   (_tl84058430_ (##cdr _e84038425_)))
                               (let ((_eid8433_ _hd84048428_))
                                 (if (gx#stx-null? _tl84058430_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8423_)
                                               (cons (gx#stx-e _eid8433_) '()))
                                         (_E83998411_))
                                     (_E83998411_)))))
                           (_E83998411_)))))
                 (_E83998411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E83988435_))))))
                                      _body8351_))
                                    (gx#stx-source _stx8327_)))
                                 (_E83308339_)))))
                       (_E83308339_)))))
            (let () (_E83298439_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8273_)
      (let ((_e82748287_ _stx8273_))
        (let ((_E82768291_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82748287_))))
          (let ((_E82758323_
                 (lambda ()
                   (if (gx#stx-pair? _e82748287_)
                       (let ((_e82778295_ (gx#syntax-e _e82748287_)))
                         (let ((_hd82788298_ (##car _e82778295_))
                               (_tl82798300_ (##cdr _e82778295_)))
                           (if (gx#stx-pair? _tl82798300_)
                               (let ((_e82808303_ (gx#syntax-e _tl82798300_)))
                                 (let ((_hd82818306_ (##car _e82808303_))
                                       (_tl82828308_ (##cdr _e82808303_)))
                                   (let ((_hd8311_ _hd82818306_))
                                     (if (gx#stx-pair? _tl82828308_)
                                         (let ((_e82838313_
                                                (gx#syntax-e _tl82828308_)))
                                           (let ((_hd82848316_
                                                  (##car _e82838313_))
                                                 (_tl82858318_
                                                  (##cdr _e82838313_)))
                                             (let ((_expr8321_ _hd82848316_))
                                               (if (gx#stx-null? _tl82858318_)
                                                   (if (gx#core-bind-values?
                                                        _hd8311_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8311_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8311_)
                              (cons (gx#core-expand-expression _expr8321_)
                                    '())))
                  (gx#stx-source _stx8273_)))
               (_E82768291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82768291_)))))
                                         (_E82768291_)))))
                               (_E82768291_))))
                       (_E82768291_)))))
            (let () (_E82758323_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8219_)
      (let ((_e82208233_ _stx8219_))
        (let ((_E82228237_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82208233_))))
          (let ((_E82218269_
                 (lambda ()
                   (if (gx#stx-pair? _e82208233_)
                       (let ((_e82238241_ (gx#syntax-e _e82208233_)))
                         (let ((_hd82248244_ (##car _e82238241_))
                               (_tl82258246_ (##cdr _e82238241_)))
                           (if (gx#stx-pair? _tl82258246_)
                               (let ((_e82268249_ (gx#syntax-e _tl82258246_)))
                                 (let ((_hd82278252_ (##car _e82268249_))
                                       (_tl82288254_ (##cdr _e82268249_)))
                                   (let ((_id8257_ _hd82278252_))
                                     (if (gx#stx-pair? _tl82288254_)
                                         (let ((_e82298259_
                                                (gx#syntax-e _tl82288254_)))
                                           (let ((_hd82308262_
                                                  (##car _e82298259_))
                                                 (_tl82318264_
                                                  (##cdr _e82298259_)))
                                             (let ((_binding-id8267_
                                                    _hd82308262_))
                                               (if (gx#stx-null? _tl82318264_)
                                                   (if (if (gx#identifier?
                                                            _id8257_)
                                                           (gx#identifier?
                                                            _binding-id8267_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8257_
                                                          (gx#stx-e
                                                           _binding-id8267_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8257_)
                              (cons (gx#core-quote-syntax__0 _binding-id8267_)
                                    '())))))
               (_E82228237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82228237_)))))
                                         (_E82228237_)))))
                               (_E82228237_))))
                       (_E82228237_)))))
            (let () (_E82218269_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8162_)
      (let ((_e81638176_ _stx8162_))
        (let ((_E81658180_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81638176_))))
          (let ((_E81648215_
                 (lambda ()
                   (if (gx#stx-pair? _e81638176_)
                       (let ((_e81668184_ (gx#syntax-e _e81638176_)))
                         (let ((_hd81678187_ (##car _e81668184_))
                               (_tl81688189_ (##cdr _e81668184_)))
                           (if (gx#stx-pair? _tl81688189_)
                               (let ((_e81698192_ (gx#syntax-e _tl81688189_)))
                                 (let ((_hd81708195_ (##car _e81698192_))
                                       (_tl81718197_ (##cdr _e81698192_)))
                                   (let ((_id8200_ _hd81708195_))
                                     (if (gx#stx-pair? _tl81718197_)
                                         (let ((_e81728202_
                                                (gx#syntax-e _tl81718197_)))
                                           (let ((_hd81738205_
                                                  (##car _e81728202_))
                                                 (_tl81748207_
                                                  (##cdr _e81728202_)))
                                             (let ((_expr8210_ _hd81738205_))
                                               (if (gx#stx-null? _tl81748207_)
                                                   (if (gx#identifier?
                                                        _id8200_)
                                                       (let ((_g9088_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8210_)))
                 (begin
                   (let ((_g9089_ (values-count _g9088_)))
                     (if (not (fx= _g9089_ 2))
                         (error "Context expects 2 values" _g9089_)))
                   (let ((_e-stx8212_ (values-ref _g9088_ 0))
                         (_e8213_ (values-ref _g9088_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8200_ _e8213_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8200_)
                                    (cons _e-stx8212_ '())))
                        (gx#stx-source _stx8162_))))))
               (_E81658180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81658180_)))))
                                         (_E81658180_)))))
                               (_E81658180_))))
                       (_E81658180_)))))
            (let () (_E81648215_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8106_)
      (let ((_e81078120_ _stx8106_))
        (let ((_E81098124_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81078120_))))
          (let ((_E81088158_
                 (lambda ()
                   (if (gx#stx-pair? _e81078120_)
                       (let ((_e81108128_ (gx#syntax-e _e81078120_)))
                         (let ((_hd81118131_ (##car _e81108128_))
                               (_tl81128133_ (##cdr _e81108128_)))
                           (if (gx#stx-pair? _tl81128133_)
                               (let ((_e81138136_ (gx#syntax-e _tl81128133_)))
                                 (let ((_hd81148139_ (##car _e81138136_))
                                       (_tl81158141_ (##cdr _e81138136_)))
                                   (let ((_id8144_ _hd81148139_))
                                     (if (gx#stx-pair? _tl81158141_)
                                         (let ((_e81168146_
                                                (gx#syntax-e _tl81158141_)))
                                           (let ((_hd81178149_
                                                  (##car _e81168146_))
                                                 (_tl81188151_
                                                  (##cdr _e81168146_)))
                                             (let ((_alias-id8154_
                                                    _hd81178149_))
                                               (if (gx#stx-null? _tl81188151_)
                                                   (if (if (gx#identifier?
                                                            _id8144_)
                                                           (gx#identifier?
                                                            _alias-id8154_)
                                                           '#f)
                                                       (let ((_alias-id8156_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8154_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8144_
                                                            _alias-id8156_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8144_)
                                (cons _alias-id8156_ '()))))))
               (_E81098124_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81098124_)))))
                                         (_E81098124_)))))
                               (_E81098124_))))
                       (_E81098124_)))))
            (let () (_E81088158_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8047
      (lambda (_stx8049_ _wrap?8050_)
        (let ((_e80518061_ _stx8049_))
          (let ((_E80538065_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80518061_))))
            (let ((_E80528092_
                   (lambda ()
                     (if (gx#stx-pair? _e80518061_)
                         (let ((_e80548069_ (gx#syntax-e _e80518061_)))
                           (let ((_hd80558072_ (##car _e80548069_))
                                 (_tl80568074_ (##cdr _e80548069_)))
                             (if (gx#stx-pair? _tl80568074_)
                                 (let ((_e80578077_
                                        (gx#syntax-e _tl80568074_)))
                                   (let ((_hd80588080_ (##car _e80578077_))
                                         (_tl80598082_ (##cdr _e80578077_)))
                                     (let ((_hd8085_ _hd80588080_))
                                       (let ((_body8087_ _tl80598082_))
                                         (if (gx#core-bind-values? _hd8085_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8085_)
                                                  (let ((_body8090_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8085_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8049_
                              _body8087_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8050_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8090_)
                                                         (gx#stx-source
                                                          _stx8049_))
                                                        _body8090_))))
                                              gx#current-expander-context
                                              (let ((__obj9081
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9081)
                                                  __obj9081)))
                                             (_E80538065_))))))
                                 (_E80538065_))))
                         (_E80538065_)))))
              (let () (_E80528092_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8099_)
          (let ((_wrap?8101_ '#t))
            (gx#core-expand-lambda%__opt-lambda8047 _stx8099_ _wrap?8101_))))
      (define gx#core-expand-lambda%
        (lambda _g9091_
          (let ((_g9090_ (length _g9091_)))
            (cond ((fx= _g9090_ 1) (apply gx#core-expand-lambda%__0 _g9091_))
                  ((fx= _g9090_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8047 _g9091_))
                  (else (error "No clause matching arguments" _g9091_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8013_)
      (let ((_e80148021_ _stx8013_))
        (let ((_E80168025_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80148021_))))
          (let ((_E80158044_
                 (lambda ()
                   (if (gx#stx-pair? _e80148021_)
                       (let ((_e80178029_ (gx#syntax-e _e80148021_)))
                         (let ((_hd80188032_ (##car _e80178029_))
                               (_tl80198034_ (##cdr _e80178029_)))
                           (let ((_clauses8037_ _tl80198034_))
                             (if (gx#stx-list? _clauses8037_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8039_)
                                      (gx#core-expand-lambda%__opt-lambda8047
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8039_)
                                        (let ((_$e8041_
                                               (gx#stx-source _clause8039_)))
                                          (if _$e8041_
                                              _$e8041_
                                              (gx#stx-source _stx8013_))))
                                       '#f))
                                    _clauses8037_))
                                  (gx#stx-source _stx8013_))
                                 (_E80168025_)))))
                       (_E80168025_)))))
            (let () (_E80158044_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7967_)
      (let ((_e79687978_ _stx7967_))
        (let ((_E79707982_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79687978_))))
          (let ((_E79698009_
                 (lambda ()
                   (if (gx#stx-pair? _e79687978_)
                       (let ((_e79717986_ (gx#syntax-e _e79687978_)))
                         (let ((_hd79727989_ (##car _e79717986_))
                               (_tl79737991_ (##cdr _e79717986_)))
                           (if (gx#stx-pair? _tl79737991_)
                               (let ((_e79747994_ (gx#syntax-e _tl79737991_)))
                                 (let ((_hd79757997_ (##car _e79747994_))
                                       (_tl79767999_ (##cdr _e79747994_)))
                                   (let ((_hd8002_ _hd79757997_))
                                     (let ((_body8004_ _tl79767999_))
                                       (if (gx#core-expand-let-bind? _hd8002_)
                                           (let ((_expressions8006_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8002_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8002_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8002_
                                                                _expressions8006_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7967_
                              _body8004_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7967_))))
                                              gx#current-expander-context
                                              (let ((__obj9082
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9082)
                                                  __obj9082))))
                                           (_E79707982_))))))
                               (_E79707982_))))
                       (_E79707982_)))))
            (let () (_E79698009_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7910
      (lambda (_stx7912_ _form7913_)
        (let ((_e79147924_ _stx7912_))
          (let ((_E79167928_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79147924_))))
            (let ((_E79157953_
                   (lambda ()
                     (if (gx#stx-pair? _e79147924_)
                         (let ((_e79177932_ (gx#syntax-e _e79147924_)))
                           (let ((_hd79187935_ (##car _e79177932_))
                                 (_tl79197937_ (##cdr _e79177932_)))
                             (if (gx#stx-pair? _tl79197937_)
                                 (let ((_e79207940_
                                        (gx#syntax-e _tl79197937_)))
                                   (let ((_hd79217943_ (##car _e79207940_))
                                         (_tl79227945_ (##cdr _e79207940_)))
                                     (let ((_hd7948_ _hd79217943_))
                                       (let ((_body7950_ _tl79227945_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7948_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7948_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7913_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7948_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7948_))
                       (cons (gx#core-expand-local-block _stx7912_ _body7950_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7912_))))
                                              gx#current-expander-context
                                              (let ((__obj9083
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9083)
                                                  __obj9083)))
                                             (_E79167928_))))))
                                 (_E79167928_))))
                         (_E79167928_)))))
              (let () (_E79157953_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7960_)
          (let ((_form7962_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7910
             _stx7960_
             _form7962_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9093_
          (let ((_g9092_ (length _g9093_)))
            (cond ((fx= _g9092_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9093_))
                  ((fx= _g9092_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7910
                          _g9093_))
                  (else (error "No clause matching arguments" _g9093_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7909_)
      (gx#core-expand-letrec-values%__opt-lambda7910
       _stx7909_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7866_)
      (if (gx#stx-list? _stx7866_)
          (gx#stx-andmap
           (lambda (_bind7868_)
             (let ((_e78697879_ _bind7868_))
               (let ((_E78717883_ (lambda () '#f)))
                 (let ((_E78707905_
                        (lambda ()
                          (if (gx#stx-pair? _e78697879_)
                              (let ((_e78727887_ (gx#syntax-e _e78697879_)))
                                (let ((_hd78737890_ (##car _e78727887_))
                                      (_tl78747892_ (##cdr _e78727887_)))
                                  (let ((_hd7895_ _hd78737890_))
                                    (if (gx#stx-pair? _tl78747892_)
                                        (let ((_e78757897_
                                               (gx#syntax-e _tl78747892_)))
                                          (let ((_hd78767900_
                                                 (##car _e78757897_))
                                                (_tl78777902_
                                                 (##cdr _e78757897_)))
                                            (if (gx#stx-null? _tl78777902_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7895_)
                                                    (_E78717883_))
                                                (_E78717883_))))
                                        (_E78717883_)))))
                              (_E78717883_)))))
                   (let () (_E78707905_))))))
           _stx7866_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7825_)
      (let ((_e78267836_ _bind7825_))
        (let ((_E78287840_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78267836_))))
          (let ((_E78277862_
                 (lambda ()
                   (if (gx#stx-pair? _e78267836_)
                       (let ((_e78297844_ (gx#syntax-e _e78267836_)))
                         (let ((_hd78307847_ (##car _e78297844_))
                               (_tl78317849_ (##cdr _e78297844_)))
                           (if (gx#stx-pair? _tl78317849_)
                               (let ((_e78327852_ (gx#syntax-e _tl78317849_)))
                                 (let ((_hd78337855_ (##car _e78327852_))
                                       (_tl78347857_ (##cdr _e78327852_)))
                                   (let ((_expr7860_ _hd78337855_))
                                     (if (gx#stx-null? _tl78347857_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7860_)
                                             (_E78287840_))
                                         (_E78287840_)))))
                               (_E78287840_))))
                       (_E78287840_)))))
            (let () (_E78277862_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7784_)
      (let ((_e77857795_ _bind7784_))
        (let ((_E77877799_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77857795_))))
          (let ((_E77867821_
                 (lambda ()
                   (if (gx#stx-pair? _e77857795_)
                       (let ((_e77887803_ (gx#syntax-e _e77857795_)))
                         (let ((_hd77897806_ (##car _e77887803_))
                               (_tl77907808_ (##cdr _e77887803_)))
                           (let ((_hd7811_ _hd77897806_))
                             (if (gx#stx-pair? _tl77907808_)
                                 (let ((_e77917813_
                                        (gx#syntax-e _tl77907808_)))
                                   (let ((_hd77927816_ (##car _e77917813_))
                                         (_tl77937818_ (##cdr _e77917813_)))
                                     (if (gx#stx-null? _tl77937818_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7811_)
                                             (_E77877799_))
                                         (_E77877799_))))
                                 (_E77877799_)))))
                       (_E77877799_)))))
            (let () (_E77867821_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7742_ _expr7743_)
      (let ((_e77447754_ _bind7742_))
        (let ((_E77467758_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77447754_))))
          (let ((_E77457780_
                 (lambda ()
                   (if (gx#stx-pair? _e77447754_)
                       (let ((_e77477762_ (gx#syntax-e _e77447754_)))
                         (let ((_hd77487765_ (##car _e77477762_))
                               (_tl77497767_ (##cdr _e77477762_)))
                           (let ((_hd7770_ _hd77487765_))
                             (if (gx#stx-pair? _tl77497767_)
                                 (let ((_e77507772_
                                        (gx#syntax-e _tl77497767_)))
                                   (let ((_hd77517775_ (##car _e77507772_))
                                         (_tl77527777_ (##cdr _e77507772_)))
                                     (if (gx#stx-null? _tl77527777_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7770_)
                                                   (cons _expr7743_ '()))
                                             (_E77467758_))
                                         (_E77467758_))))
                                 (_E77467758_)))))
                       (_E77467758_)))))
            (let () (_E77457780_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7696_)
      (let ((_e76977707_ _stx7696_))
        (let ((_E76997711_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76977707_))))
          (let ((_E76987738_
                 (lambda ()
                   (if (gx#stx-pair? _e76977707_)
                       (let ((_e77007715_ (gx#syntax-e _e76977707_)))
                         (let ((_hd77017718_ (##car _e77007715_))
                               (_tl77027720_ (##cdr _e77007715_)))
                           (if (gx#stx-pair? _tl77027720_)
                               (let ((_e77037723_ (gx#syntax-e _tl77027720_)))
                                 (let ((_hd77047726_ (##car _e77037723_))
                                       (_tl77057728_ (##cdr _e77037723_)))
                                   (let ((_hd7731_ _hd77047726_))
                                     (let ((_body7733_ _tl77057728_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7731_)
                                           (let ((_expanders7735_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7731_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7731_
                                                   _expanders7735_)
                                                  (gx#core-expand-local-block
                                                   _stx7696_
                                                   _body7733_)))
                                              gx#current-expander-context
                                              (let ((__obj9084
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9084)
                                                  __obj9084))))
                                           (_E76997711_))))))
                               (_E76997711_))))
                       (_E76997711_)))))
            (let () (_E76987738_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7645_)
      (let ((_e76467656_ _stx7645_))
        (let ((_E76487660_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76467656_))))
          (let ((_E76477692_
                 (lambda ()
                   (if (gx#stx-pair? _e76467656_)
                       (let ((_e76497664_ (gx#syntax-e _e76467656_)))
                         (let ((_hd76507667_ (##car _e76497664_))
                               (_tl76517669_ (##cdr _e76497664_)))
                           (if (gx#stx-pair? _tl76517669_)
                               (let ((_e76527672_ (gx#syntax-e _tl76517669_)))
                                 (let ((_hd76537675_ (##car _e76527672_))
                                       (_tl76547677_ (##cdr _e76527672_)))
                                   (let ((_hd7680_ _hd76537675_))
                                     (let ((_body7682_ _tl76547677_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7680_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7680_
                                                 (make-list
                                                  (gx#stx-length _hd7680_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76847687_
                                                          _g76857689_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7502
                                                    _g76847687_
                                                    _g76857689_
                                                    '#t))
                                                 _hd7680_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7680_))
                                                (gx#core-expand-local-block
                                                 _stx7645_
                                                 _body7682_)))
                                            gx#current-expander-context
                                            (let ((__obj9085
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9085)
                                                __obj9085)))
                                           (_E76487660_))))))
                               (_E76487660_))))
                       (_E76487660_)))))
            (let () (_E76477692_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7602_)
      (if (gx#stx-list? _stx7602_)
          (gx#stx-andmap
           (lambda (_bind7604_)
             (let ((_e76057615_ _bind7604_))
               (let ((_E76077619_ (lambda () '#f)))
                 (let ((_E76067641_
                        (lambda ()
                          (if (gx#stx-pair? _e76057615_)
                              (let ((_e76087623_ (gx#syntax-e _e76057615_)))
                                (let ((_hd76097626_ (##car _e76087623_))
                                      (_tl76107628_ (##cdr _e76087623_)))
                                  (let ((_hd7631_ _hd76097626_))
                                    (if (gx#stx-pair? _tl76107628_)
                                        (let ((_e76117633_
                                               (gx#syntax-e _tl76107628_)))
                                          (let ((_hd76127636_
                                                 (##car _e76117633_))
                                                (_tl76137638_
                                                 (##cdr _e76117633_)))
                                            (if (gx#stx-null? _tl76137638_)
                                                (if '#t
                                                    (gx#identifier? _hd7631_)
                                                    (_E76077619_))
                                                (_E76077619_))))
                                        (_E76077619_)))))
                              (_E76077619_)))))
                   (let () (_E76067641_))))))
           _stx7602_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7559_)
      (let ((_e75607570_ _bind7559_))
        (let ((_E75627574_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75607570_))))
          (let ((_E75617598_
                 (lambda ()
                   (if (gx#stx-pair? _e75607570_)
                       (let ((_e75637578_ (gx#syntax-e _e75607570_)))
                         (let ((_hd75647581_ (##car _e75637578_))
                               (_tl75657583_ (##cdr _e75637578_)))
                           (if (gx#stx-pair? _tl75657583_)
                               (let ((_e75667586_ (gx#syntax-e _tl75657583_)))
                                 (let ((_hd75677589_ (##car _e75667586_))
                                       (_tl75687591_ (##cdr _e75667586_)))
                                   (let ((_expr7594_ _hd75677589_))
                                     (if (gx#stx-null? _tl75687591_)
                                         (if '#t
                                             (let ((_g9094_ (gx#core-expand-expression+1
                                                             _expr7594_)))
                                               (begin
                                                 (let ((_g9095_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9094_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9095_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9095_)))
                                                 (let ((_e7596_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9094_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7596_)))
                                             (_E75627574_))
                                         (_E75627574_)))))
                               (_E75627574_))))
                       (_E75627574_)))))
            (let () (_E75617598_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7502
      (lambda (_bind7504_ _e7505_ _rebind?7506_)
        (let ((_e75077517_ _bind7504_))
          (let ((_E75097521_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75077517_))))
            (let ((_E75087543_
                   (lambda ()
                     (if (gx#stx-pair? _e75077517_)
                         (let ((_e75107525_ (gx#syntax-e _e75077517_)))
                           (let ((_hd75117528_ (##car _e75107525_))
                                 (_tl75127530_ (##cdr _e75107525_)))
                             (let ((_id7533_ _hd75117528_))
                               (if (gx#stx-pair? _tl75127530_)
                                   (let ((_e75137535_
                                          (gx#syntax-e _tl75127530_)))
                                     (let ((_hd75147538_ (##car _e75137535_))
                                           (_tl75157540_ (##cdr _e75137535_)))
                                       (if (gx#stx-null? _tl75157540_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7533_
                                                _e7505_
                                                _rebind?7506_)
                                               (_E75097521_))
                                           (_E75097521_))))
                                   (_E75097521_)))))
                         (_E75097521_)))))
              (let () (_E75087543_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7550_ _e7551_)
          (let ((_rebind?7553_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7502
             _bind7550_
             _e7551_
             _rebind?7553_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9097_
          (let ((_g9096_ (length _g9097_)))
            (cond ((fx= _g9096_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9097_))
                  ((fx= _g9096_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7502
                          _g9097_))
                  (else (error "No clause matching arguments" _g9097_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7462_)
      (let ((_e74637473_ _stx7462_))
        (let ((_E74657477_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74637473_))))
          (let ((_E74647499_
                 (lambda ()
                   (if (gx#stx-pair? _e74637473_)
                       (let ((_e74667481_ (gx#syntax-e _e74637473_)))
                         (let ((_hd74677484_ (##car _e74667481_))
                               (_tl74687486_ (##cdr _e74667481_)))
                           (if (gx#stx-pair? _tl74687486_)
                               (let ((_e74697489_ (gx#syntax-e _tl74687486_)))
                                 (let ((_hd74707492_ (##car _e74697489_))
                                       (_tl74717494_ (##cdr _e74697489_)))
                                   (let ((_expr7497_ _hd74707492_))
                                     (if (gx#stx-null? _tl74717494_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7497_)
                                             (_E74657477_))
                                         (_E74657477_)))))
                               (_E74657477_))))
                       (_E74657477_)))))
            (let () (_E74647499_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7421_)
      (let ((_e74227432_ _stx7421_))
        (let ((_E74247436_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74227432_))))
          (let ((_E74237458_
                 (lambda ()
                   (if (gx#stx-pair? _e74227432_)
                       (let ((_e74257440_ (gx#syntax-e _e74227432_)))
                         (let ((_hd74267443_ (##car _e74257440_))
                               (_tl74277445_ (##cdr _e74257440_)))
                           (if (gx#stx-pair? _tl74277445_)
                               (let ((_e74287448_ (gx#syntax-e _tl74277445_)))
                                 (let ((_hd74297451_ (##car _e74287448_))
                                       (_tl74307453_ (##cdr _e74287448_)))
                                   (let ((_e7456_ _hd74297451_))
                                     (if (gx#stx-null? _tl74307453_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7456_)
                                                          '()))
                                              (gx#stx-source _stx7421_))
                                             (_E74247436_))
                                         (_E74247436_)))))
                               (_E74247436_))))
                       (_E74247436_)))))
            (let () (_E74237458_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7380_)
      (let ((_e73817391_ _stx7380_))
        (let ((_E73837395_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73817391_))))
          (let ((_E73827417_
                 (lambda ()
                   (if (gx#stx-pair? _e73817391_)
                       (let ((_e73847399_ (gx#syntax-e _e73817391_)))
                         (let ((_hd73857402_ (##car _e73847399_))
                               (_tl73867404_ (##cdr _e73847399_)))
                           (if (gx#stx-pair? _tl73867404_)
                               (let ((_e73877407_ (gx#syntax-e _tl73867404_)))
                                 (let ((_hd73887410_ (##car _e73877407_))
                                       (_tl73897412_ (##cdr _e73877407_)))
                                   (let ((_e7415_ _hd73887410_))
                                     (if (gx#stx-null? _tl73897412_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7415_)
                                                          '()))
                                              (gx#stx-source _stx7380_))
                                             (_E73837395_))
                                         (_E73837395_)))))
                               (_E73837395_))))
                       (_E73837395_)))))
            (let () (_E73827417_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7337_)
      (let ((_e73387348_ _stx7337_))
        (let ((_E73407352_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73387348_))))
          (let ((_E73397376_
                 (lambda ()
                   (if (gx#stx-pair? _e73387348_)
                       (let ((_e73417356_ (gx#syntax-e _e73387348_)))
                         (let ((_hd73427359_ (##car _e73417356_))
                               (_tl73437361_ (##cdr _e73417356_)))
                           (if (gx#stx-pair? _tl73437361_)
                               (let ((_e73447364_ (gx#syntax-e _tl73437361_)))
                                 (let ((_hd73457367_ (##car _e73447364_))
                                       (_tl73467369_ (##cdr _e73447364_)))
                                   (let ((_rator7372_ _hd73457367_))
                                     (let ((_args7374_ _tl73467369_))
                                       (if (gx#stx-list? _args7374_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7372_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7374_))
                                            (gx#stx-source _stx7337_))
                                           (_E73407352_))))))
                               (_E73407352_))))
                       (_E73407352_)))))
            (let () (_E73397376_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7270_)
      (let ((_e72717287_ _stx7270_))
        (let ((_E72737291_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72717287_))))
          (let ((_E72727333_
                 (lambda ()
                   (if (gx#stx-pair? _e72717287_)
                       (let ((_e72747295_ (gx#syntax-e _e72717287_)))
                         (let ((_hd72757298_ (##car _e72747295_))
                               (_tl72767300_ (##cdr _e72747295_)))
                           (if (gx#stx-pair? _tl72767300_)
                               (let ((_e72777303_ (gx#syntax-e _tl72767300_)))
                                 (let ((_hd72787306_ (##car _e72777303_))
                                       (_tl72797308_ (##cdr _e72777303_)))
                                   (let ((_test7311_ _hd72787306_))
                                     (if (gx#stx-pair? _tl72797308_)
                                         (let ((_e72807313_
                                                (gx#syntax-e _tl72797308_)))
                                           (let ((_hd72817316_
                                                  (##car _e72807313_))
                                                 (_tl72827318_
                                                  (##cdr _e72807313_)))
                                             (let ((_K7321_ _hd72817316_))
                                               (if (gx#stx-pair? _tl72827318_)
                                                   (let ((_e72837323_
                                                          (gx#syntax-e
                                                           _tl72827318_)))
                                                     (let ((_hd72847326_
                                                            (##car _e72837323_))
                                                           (_tl72857328_
                                                            (##cdr _e72837323_)))
                                                       (let ((_E7331_ _hd72847326_))
                                                         (if (gx#stx-null?
                                                              _tl72857328_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7311_)
                                      (cons (gx#core-expand-expression _K7321_)
                                            (cons (gx#core-expand-expression
                                                   _E7331_)
                                                  '()))))
                          (gx#stx-source _stx7270_))
                         (_E72737291_))
                     (_E72737291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72737291_)))))
                                         (_E72737291_)))))
                               (_E72737291_))))
                       (_E72737291_)))))
            (let () (_E72727333_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7229_)
      (let ((_e72307240_ _stx7229_))
        (let ((_E72327244_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72307240_))))
          (let ((_E72317266_
                 (lambda ()
                   (if (gx#stx-pair? _e72307240_)
                       (let ((_e72337248_ (gx#syntax-e _e72307240_)))
                         (let ((_hd72347251_ (##car _e72337248_))
                               (_tl72357253_ (##cdr _e72337248_)))
                           (if (gx#stx-pair? _tl72357253_)
                               (let ((_e72367256_ (gx#syntax-e _tl72357253_)))
                                 (let ((_hd72377259_ (##car _e72367256_))
                                       (_tl72387261_ (##cdr _e72367256_)))
                                   (let ((_id7264_ _hd72377259_))
                                     (if (gx#stx-null? _tl72387261_)
                                         (if (gx#core-runtime-ref? _id7264_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7264_
                                                           _stx7229_)
                                                          '()))
                                              (gx#stx-source _stx7229_))
                                             (_E72327244_))
                                         (_E72327244_)))))
                               (_E72327244_))))
                       (_E72327244_)))))
            (let () (_E72317266_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7175_)
      (let ((_e71767189_ _stx7175_))
        (let ((_E71787193_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71767189_))))
          (let ((_E71777225_
                 (lambda ()
                   (if (gx#stx-pair? _e71767189_)
                       (let ((_e71797197_ (gx#syntax-e _e71767189_)))
                         (let ((_hd71807200_ (##car _e71797197_))
                               (_tl71817202_ (##cdr _e71797197_)))
                           (if (gx#stx-pair? _tl71817202_)
                               (let ((_e71827205_ (gx#syntax-e _tl71817202_)))
                                 (let ((_hd71837208_ (##car _e71827205_))
                                       (_tl71847210_ (##cdr _e71827205_)))
                                   (let ((_id7213_ _hd71837208_))
                                     (if (gx#stx-pair? _tl71847210_)
                                         (let ((_e71857215_
                                                (gx#syntax-e _tl71847210_)))
                                           (let ((_hd71867218_
                                                  (##car _e71857215_))
                                                 (_tl71877220_
                                                  (##cdr _e71857215_)))
                                             (let ((_expr7223_ _hd71867218_))
                                               (if (gx#stx-null? _tl71877220_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7213_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7213_
                             _stx7175_)
                            (cons (gx#core-expand-expression _expr7223_) '())))
                (gx#stx-source _stx7175_))
               (_E71787193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71787193_)))))
                                         (_E71787193_)))))
                               (_E71787193_))))
                       (_E71787193_)))))
            (let () (_E71777225_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7023_)
      (let ((_generate7025_
             (lambda (_body7055_)
               ((letrec ((_lp7057_
                          (lambda (_rest7059_ _ns7060_ _r7061_)
                            (let ((_e70627077_ _rest7059_))
                              (let ((_E70757081_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70627077_))))
                                (let ((_E70717085_
                                       (lambda ()
                                         (if (gx#stx-null? _e70627077_)
                                             (if '#t
                                                 (reverse _r7061_)
                                                 (_E70757081_))
                                             (_E70757081_)))))
                                  (let ((_E70647142_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70627077_)
                                               (let ((_e70727089_
                                                      (gx#syntax-e
                                                       _e70627077_)))
                                                 (let ((_hd70737092_
                                                        (##car _e70727089_))
                                                       (_tl70747094_
                                                        (##cdr _e70727089_)))
                                                   (let ((_hd7097_
                                                          _hd70737092_))
                                                     (let ((_rest7099_
                                                            _tl70747094_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7097_)
                                                               (_lp7057_
                                                                _rest7099_
                                                                _ns7060_
                                                                (cons (cons _hd7097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7060_
                                              (gx#stx-identifier
                                               _hd7097_
                                               _ns7060_
                                               '"#"
                                               _hd7097_)
                                              _hd7097_)
                                          '()))
                              _r7061_))
                       (let ((_e71007110_ _hd7097_))
                         (let ((_E71027114_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e71007110_))))
                           (let ((_E71017138_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71007110_)
                                        (let ((_e71037118_
                                               (gx#syntax-e _e71007110_)))
                                          (let ((_hd71047121_
                                                 (##car _e71037118_))
                                                (_tl71057123_
                                                 (##cdr _e71037118_)))
                                            (let ((_id7126_ _hd71047121_))
                                              (if (gx#stx-pair? _tl71057123_)
                                                  (let ((_e71067128_
                                                         (gx#syntax-e
                                                          _tl71057123_)))
                                                    (let ((_hd71077131_
                                                           (##car _e71067128_))
                                                          (_tl71087133_
                                                           (##cdr _e71067128_)))
                                                      (let ((_eid7136_
                                                             _hd71077131_))
                                                        (if (gx#stx-null?
                                                             _tl71087133_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7126_)
                            (gx#identifier? _eid7136_)
                            '#f)
                        (_lp7057_
                         _rest7099_
                         _ns7060_
                         (cons (cons _id7126_ (cons _eid7136_ '())) _r7061_))
                        (_E71027114_))
                    (_E71027114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71027114_)))))
                                        (_E71027114_)))))
                             (let () (_E71017138_))))))
                   (_E70717085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70717085_)))))
                                    (let ((_E70637171_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70627077_)
                                                 (let ((_e70657146_
                                                        (gx#syntax-e
                                                         _e70627077_)))
                                                   (let ((_hd70667149_
                                                          (##car _e70657146_))
                                                         (_tl70677151_
                                                          (##cdr _e70657146_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70667149_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70677151_)
                                                             (let ((_e70687154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70677151_)))
                       (let ((_hd70697157_ (##car _e70687154_))
                             (_tl70707159_ (##cdr _e70687154_)))
                         (let ((_ns7162_ _hd70697157_))
                           (let ((_rest7164_ _tl70707159_))
                             (if '#t
                                 (let ((_ns7169_
                                        (if (gx#identifier? _ns7162_)
                                            (symbol->string
                                             (gx#stx-e _ns7162_))
                                            (if (let ((_$e7166_
                                                       (gx#stx-string?
                                                        _ns7162_)))
                                                  (if _$e7166_
                                                      _$e7166_
                                                      (gx#stx-false?
                                                       _ns7162_)))
                                                (gx#stx-e _ns7162_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7023_
                                                 _ns7162_)))))
                                   (_lp7057_ _rest7164_ _ns7169_ _r7061_))
                                 (_E70647142_))))))
                     (_E70647142_))
                 (_E70647142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70647142_)))))
                                      (let () (_E70637171_))))))))))
                  _lp7057_)
                _body7055_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70267033_ _stx7023_))
          (let ((_E70287037_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70267033_))))
            (let ((_E70277051_
                   (lambda ()
                     (if (gx#stx-pair? _e70267033_)
                         (let ((_e70297041_ (gx#syntax-e _e70267033_)))
                           (let ((_hd70307044_ (##car _e70297041_))
                                 (_tl70317046_ (##cdr _e70297041_)))
                             (let ((_body7049_ _tl70317046_))
                               (if (gx#stx-list? _body7049_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7025_ _body7049_))
                                   (_E70287037_)))))
                         (_E70287037_)))))
              (let () (_E70277051_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6969_)
      (let ((_e69706983_ _stx6969_))
        (let ((_E69726987_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69706983_))))
          (let ((_E69717019_
                 (lambda ()
                   (if (gx#stx-pair? _e69706983_)
                       (let ((_e69736991_ (gx#syntax-e _e69706983_)))
                         (let ((_hd69746994_ (##car _e69736991_))
                               (_tl69756996_ (##cdr _e69736991_)))
                           (if (gx#stx-pair? _tl69756996_)
                               (let ((_e69766999_ (gx#syntax-e _tl69756996_)))
                                 (let ((_hd69777002_ (##car _e69766999_))
                                       (_tl69787004_ (##cdr _e69766999_)))
                                   (let ((_hd7007_ _hd69777002_))
                                     (if (gx#stx-pair? _tl69787004_)
                                         (let ((_e69797009_
                                                (gx#syntax-e _tl69787004_)))
                                           (let ((_hd69807012_
                                                  (##car _e69797009_))
                                                 (_tl69817014_
                                                  (##cdr _e69797009_)))
                                             (let ((_expr7017_ _hd69807012_))
                                               (if (gx#stx-null? _tl69817014_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7007_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7007_)
                           (cons _expr7017_ '())))
               (_E69726987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69726987_)))))
                                         (_E69726987_)))))
                               (_E69726987_))))
                       (_E69726987_)))))
            (let () (_E69717019_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6915_)
      (let ((_e69166929_ _stx6915_))
        (let ((_E69186933_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69166929_))))
          (let ((_E69176965_
                 (lambda ()
                   (if (gx#stx-pair? _e69166929_)
                       (let ((_e69196937_ (gx#syntax-e _e69166929_)))
                         (let ((_hd69206940_ (##car _e69196937_))
                               (_tl69216942_ (##cdr _e69196937_)))
                           (if (gx#stx-pair? _tl69216942_)
                               (let ((_e69226945_ (gx#syntax-e _tl69216942_)))
                                 (let ((_hd69236948_ (##car _e69226945_))
                                       (_tl69246950_ (##cdr _e69226945_)))
                                   (let ((_hd6953_ _hd69236948_))
                                     (if (gx#stx-pair? _tl69246950_)
                                         (let ((_e69256955_
                                                (gx#syntax-e _tl69246950_)))
                                           (let ((_hd69266958_
                                                  (##car _e69256955_))
                                                 (_tl69276960_
                                                  (##cdr _e69256955_)))
                                             (let ((_expr6963_ _hd69266958_))
                                               (if (gx#stx-null? _tl69276960_)
                                                   (if (gx#identifier?
                                                        _hd6953_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6963_ '())))
               (_E69186933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69186933_)))))
                                         (_E69186933_)))))
                               (_E69186933_))))
                       (_E69186933_)))))
            (let () (_E69176965_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6861_)
      (let ((_e68626875_ _stx6861_))
        (let ((_E68646879_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68626875_))))
          (let ((_E68636911_
                 (lambda ()
                   (if (gx#stx-pair? _e68626875_)
                       (let ((_e68656883_ (gx#syntax-e _e68626875_)))
                         (let ((_hd68666886_ (##car _e68656883_))
                               (_tl68676888_ (##cdr _e68656883_)))
                           (if (gx#stx-pair? _tl68676888_)
                               (let ((_e68686891_ (gx#syntax-e _tl68676888_)))
                                 (let ((_hd68696894_ (##car _e68686891_))
                                       (_tl68706896_ (##cdr _e68686891_)))
                                   (let ((_id6899_ _hd68696894_))
                                     (if (gx#stx-pair? _tl68706896_)
                                         (let ((_e68716901_
                                                (gx#syntax-e _tl68706896_)))
                                           (let ((_hd68726904_
                                                  (##car _e68716901_))
                                                 (_tl68736906_
                                                  (##cdr _e68716901_)))
                                             (let ((_alias-id6909_
                                                    _hd68726904_))
                                               (if (gx#stx-null? _tl68736906_)
                                                   (if (if (gx#identifier?
                                                            _id6899_)
                                                           (gx#identifier?
                                                            _alias-id6909_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6909_ '())))
               (_E68646879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68646879_)))))
                                         (_E68646879_)))))
                               (_E68646879_))))
                       (_E68646879_)))))
            (let () (_E68636911_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6818_)
      (let ((_e68196829_ _stx6818_))
        (let ((_E68216833_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68196829_))))
          (let ((_E68206857_
                 (lambda ()
                   (if (gx#stx-pair? _e68196829_)
                       (let ((_e68226837_ (gx#syntax-e _e68196829_)))
                         (let ((_hd68236840_ (##car _e68226837_))
                               (_tl68246842_ (##cdr _e68226837_)))
                           (if (gx#stx-pair? _tl68246842_)
                               (let ((_e68256845_ (gx#syntax-e _tl68246842_)))
                                 (let ((_hd68266848_ (##car _e68256845_))
                                       (_tl68276850_ (##cdr _e68256845_)))
                                   (let ((_hd6853_ _hd68266848_))
                                     (let ((_body6855_ _tl68276850_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6853_)
                                               (if (gx#stx-list? _body6855_)
                                                   (not (gx#stx-null?
                                                         _body6855_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6853_)
                                            _body6855_)
                                           (_E68216833_))))))
                               (_E68216833_))))
                       (_E68216833_)))))
            (let () (_E68206857_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6754_)
      (let ((_generate6756_
             (lambda (_clause6786_)
               (let ((_e67876794_ _clause6786_))
                 (let ((_E67896798_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6754_
                           _clause6786_))))
                   (let ((_E67886814_
                          (lambda ()
                            (if (gx#stx-pair? _e67876794_)
                                (let ((_e67906802_ (gx#syntax-e _e67876794_)))
                                  (let ((_hd67916805_ (##car _e67906802_))
                                        (_tl67926807_ (##cdr _e67906802_)))
                                    (let ((_hd6810_ _hd67916805_))
                                      (let ((_body6812_ _tl67926807_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6810_)
                                                (if (gx#stx-list? _body6812_)
                                                    (not (gx#stx-null?
                                                          _body6812_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6810_)
                                                   _body6812_)
                                             (gx#stx-source _clause6786_))
                                            (_E67896798_))))))
                                (_E67896798_)))))
                     (let () (_E67886814_))))))))
        (let ((_e67576764_ _stx6754_))
          (let ((_E67596768_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67576764_))))
            (let ((_E67586782_
                   (lambda ()
                     (if (gx#stx-pair? _e67576764_)
                         (let ((_e67606772_ (gx#syntax-e _e67576764_)))
                           (let ((_hd67616775_ (##car _e67606772_))
                                 (_tl67626777_ (##cdr _e67606772_)))
                             (let ((_clauses6780_ _tl67626777_))
                               (if (gx#stx-list? _clauses6780_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6756_ _clauses6780_))
                                   (_E67596768_)))))
                         (_E67596768_)))))
              (let () (_E67586782_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6653
      (lambda (_stx6655_ _form6656_)
        (let ((_generate6658_
               (lambda (_bind6701_)
                 (let ((_e67026712_ _bind6701_))
                   (let ((_E67046716_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6655_
                             _bind6701_))))
                     (let ((_E67036740_
                            (lambda ()
                              (if (gx#stx-pair? _e67026712_)
                                  (let ((_e67056720_
                                         (gx#syntax-e _e67026712_)))
                                    (let ((_hd67066723_ (##car _e67056720_))
                                          (_tl67076725_ (##cdr _e67056720_)))
                                      (let ((_ids6728_ _hd67066723_))
                                        (if (gx#stx-pair? _tl67076725_)
                                            (let ((_e67086730_
                                                   (gx#syntax-e _tl67076725_)))
                                              (let ((_hd67096733_
                                                     (##car _e67086730_))
                                                    (_tl67106735_
                                                     (##cdr _e67086730_)))
                                                (let ((_expr6738_
                                                       _hd67096733_))
                                                  (if (gx#stx-null?
                                                       _tl67106735_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6728_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6728_)
                        (cons _expr6738_ '()))
                  (_E67046716_))
              (_E67046716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67046716_)))))
                                  (_E67046716_)))))
                       (let () (_E67036740_))))))))
          (let ((_e66596669_ _stx6655_))
            (let ((_E66616673_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e66596669_))))
              (let ((_E66606697_
                     (lambda ()
                       (if (gx#stx-pair? _e66596669_)
                           (let ((_e66626677_ (gx#syntax-e _e66596669_)))
                             (let ((_hd66636680_ (##car _e66626677_))
                                   (_tl66646682_ (##cdr _e66626677_)))
                               (if (gx#stx-pair? _tl66646682_)
                                   (let ((_e66656685_
                                          (gx#syntax-e _tl66646682_)))
                                     (let ((_hd66666688_ (##car _e66656685_))
                                           (_tl66676690_ (##cdr _e66656685_)))
                                       (let ((_hd6693_ _hd66666688_))
                                         (let ((_body6695_ _tl66676690_))
                                           (if (if (gx#stx-list? _hd6693_)
                                                   (if (gx#stx-list?
                                                        _body6695_)
                                                       (not (gx#stx-null?
                                                             _body6695_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6656_
                                                (gx#stx-map1
                                                 _generate6658_
                                                 _hd6693_)
                                                _body6695_)
                                               (_E66616673_))))))
                                   (_E66616673_))))
                           (_E66616673_)))))
                (let () (_E66606697_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6747_)
          (let ((_form6749_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6653
             _stx6747_
             _form6749_))))
      (define gx#macro-expand-let-values
        (lambda _g9099_
          (let ((_g9098_ (length _g9099_)))
            (cond ((fx= _g9098_ 1)
                   (apply gx#macro-expand-let-values__0 _g9099_))
                  ((fx= _g9098_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6653 _g9099_))
                  (else (error "No clause matching arguments" _g9099_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6652_)
      (gx#macro-expand-let-values__opt-lambda6653 _stx6652_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6650_)
      (gx#macro-expand-let-values__opt-lambda6653
       _stx6650_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6541_)
      (let ((_e65426568_ _stx6541_))
        (let ((_E65546572_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65426568_))))
          (let ((_E65446614_
                 (lambda ()
                   (if (gx#stx-pair? _e65426568_)
                       (let ((_e65556576_ (gx#syntax-e _e65426568_)))
                         (let ((_hd65566579_ (##car _e65556576_))
                               (_tl65576581_ (##cdr _e65556576_)))
                           (if (gx#stx-pair? _tl65576581_)
                               (let ((_e65586584_ (gx#syntax-e _tl65576581_)))
                                 (let ((_hd65596587_ (##car _e65586584_))
                                       (_tl65606589_ (##cdr _e65586584_)))
                                   (let ((_test6592_ _hd65596587_))
                                     (if (gx#stx-pair? _tl65606589_)
                                         (let ((_e65616594_
                                                (gx#syntax-e _tl65606589_)))
                                           (let ((_hd65626597_
                                                  (##car _e65616594_))
                                                 (_tl65636599_
                                                  (##cdr _e65616594_)))
                                             (let ((_K6602_ _hd65626597_))
                                               (if (gx#stx-pair? _tl65636599_)
                                                   (let ((_e65646604_
                                                          (gx#syntax-e
                                                           _tl65636599_)))
                                                     (let ((_hd65656607_
                                                            (##car _e65646604_))
                                                           (_tl65666609_
                                                            (##cdr _e65646604_)))
                                                       (let ((_E6612_ _hd65656607_))
                                                         (if (gx#stx-null?
                                                              _tl65666609_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6592_ _K6602_ _E6612_)
                         (_E65546572_))
                     (_E65546572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65546572_)))))
                                         (_E65546572_)))))
                               (_E65546572_))))
                       (_E65546572_)))))
            (let ((_E65436646_
                   (lambda ()
                     (if (gx#stx-pair? _e65426568_)
                         (let ((_e65456618_ (gx#syntax-e _e65426568_)))
                           (let ((_hd65466621_ (##car _e65456618_))
                                 (_tl65476623_ (##cdr _e65456618_)))
                             (if (gx#stx-pair? _tl65476623_)
                                 (let ((_e65486626_
                                        (gx#syntax-e _tl65476623_)))
                                   (let ((_hd65496629_ (##car _e65486626_))
                                         (_tl65506631_ (##cdr _e65486626_)))
                                     (let ((_test6634_ _hd65496629_))
                                       (if (gx#stx-pair? _tl65506631_)
                                           (let ((_e65516636_
                                                  (gx#syntax-e _tl65506631_)))
                                             (let ((_hd65526639_
                                                    (##car _e65516636_))
                                                   (_tl65536641_
                                                    (##cdr _e65516636_)))
                                               (let ((_K6644_ _hd65526639_))
                                                 (if (gx#stx-null?
                                                      _tl65536641_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6634_
                                                          _K6644_
                                                          '#!void)
                                                         (_E65446614_))
                                                     (_E65446614_)))))
                                           (_E65446614_)))))
                                 (_E65446614_))))
                         (_E65446614_)))))
              (let () (_E65436646_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6529_ _yid6530_)
      (let ((_xe6532_ (gx#resolve-identifier__0 _xid6529_))
            (_ye6533_ (gx#resolve-identifier__0 _yid6530_)))
        (if (if _xe6532_ _ye6533_ '#f)
            (let ((_$e6535_ (eq? _xe6532_ _ye6533_)))
              (if _$e6535_
                  _$e6535_
                  (if (##structure-instance-of? _xe6532_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6533_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6532_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6533_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6538_ _xe6532_)) (if _$e6538_ _$e6538_ _ye6533_))
                '#f
                (gx#stx-eq? _xid6529_ _yid6530_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6513_ _yid6514_)
      (let ((_context6516_
             (lambda (_e6527_)
               (if (##structure-direct-instance-of?
                    _e6527_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6527_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6517_
               (lambda (_e6525_)
                 (if (symbol? _e6525_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6525_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6525_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6525_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6518_
                 (lambda (_e6523_)
                   (if (symbol? _e6523_)
                       _e6523_
                       (gx#syntax-local-unwrap _e6523_)))))
            (let ((_x6520_ (_unwrap6518_ _xid6513_))
                  (_y6521_ (_unwrap6518_ _yid6514_)))
              (if (gx#stx-eq? _x6520_ _y6521_)
                  (if (eq? (_context6516_ _x6520_) (_context6516_ _y6521_))
                      (andmap eq? (_marks6517_ _x6520_) (_marks6517_ _y6521_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6511_)
      (if (gx#identifier? _stx6511_) (gx#core-identifier=? _stx6511_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6509_)
      (if (gx#identifier? _stx6509_)
          (gx#core-identifier=? _stx6509_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6507_)
      (if (gx#identifier? _x6507_)
          (if (not (gx#underscore? _x6507_)) _x6507_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6451
      (lambda (_stx6453_ _where6454_)
        ((letrec ((_lp6456_
                   (lambda (_rest6458_)
                     (let ((_rest64596467_ _rest6458_))
                       (let ((_E64626471_
                              (lambda ()
                                (error '"No clause matching" _rest64596467_))))
                         (let ((_else64616475_ (lambda () '#t)))
                           (let ((_K64636485_
                                  (lambda (_rest6478_ _hd6479_)
                                    (if (not (gx#identifier? _hd6479_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6454_
                                         _hd6479_)
                                        (if (find (lambda (_g64806482_)
                                                    (gx#bound-identifier=?
                                                     _g64806482_
                                                     _hd6479_))
                                                  _rest6478_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6454_
                                             _hd6479_)
                                            (_lp6456_ _rest6478_))))))
                             (if (##pair? _rest64596467_)
                                 (let ((_hd64646488_ (##car _rest64596467_))
                                       (_tl64656490_ (##cdr _rest64596467_)))
                                   (let ((_hd6493_ _hd64646488_))
                                     (let ((_rest6495_ _tl64656490_))
                                       (_K64636485_ _rest6495_ _hd6493_))))
                                 (_else64616475_)))))))))
           _lp6456_)
         (gx#syntax->list _stx6453_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6500_)
          (let ((_where6502_ _stx6500_))
            (gx#check-duplicate-identifiers__opt-lambda6451
             _stx6500_
             _where6502_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9101_
          (let ((_g9100_ (length _g9101_)))
            (cond ((fx= _g9100_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9101_))
                  ((fx= _g9100_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6451
                          _g9101_))
                  (else (error "No clause matching arguments" _g9101_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6445_)
      (gx#stx-andmap
       (lambda (_x6447_)
         (let ((_$e6449_ (gx#identifier? _x6447_)))
           (if _$e6449_ _$e6449_ (gx#stx-false? _x6447_))))
       _stx6445_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6407
      (lambda (_stx6409_ _rebind?6410_ _phi6411_ _ctx6412_)
        (gx#stx-for-each1
         (lambda (_id6414_)
           (if (gx#identifier? _id6414_)
               (gx#core-bind-runtime!__opt-lambda6343
                _id6414_
                _rebind?6410_
                _phi6411_
                _ctx6412_)
               '#!void))
         _stx6409_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6419_)
          (let ((_rebind?6421_ '#f))
            (let ((_phi6423_ (gx#current-expander-phi)))
              (let ((_ctx6425_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6407
                 _stx6419_
                 _rebind?6421_
                 _phi6423_
                 _ctx6425_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6427_ _rebind?6428_)
          (let ((_phi6430_ (gx#current-expander-phi)))
            (let ((_ctx6432_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6407
               _stx6427_
               _rebind?6428_
               _phi6430_
               _ctx6432_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6434_ _rebind?6435_ _phi6436_)
          (let ((_ctx6438_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6407
             _stx6434_
             _rebind?6435_
             _phi6436_
             _ctx6438_))))
      (define gx#core-bind-values!
        (lambda _g9103_
          (let ((_g9102_ (length _g9103_)))
            (cond ((fx= _g9102_ 1) (apply gx#core-bind-values!__0 _g9103_))
                  ((fx= _g9102_ 2) (apply gx#core-bind-values!__1 _g9103_))
                  ((fx= _g9102_ 3) (apply gx#core-bind-values!__2 _g9103_))
                  ((fx= _g9102_ 4)
                   (apply gx#core-bind-values!__opt-lambda6407 _g9103_))
                  (else (error "No clause matching arguments" _g9103_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6404_)
      (gx#stx-map1
       (lambda (_x6406_)
         (if (gx#identifier? _x6406_) (gx#core-quote-syntax__0 _x6406_) '#f))
       _stx6404_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6397_)
      (if (gx#identifier? _stx6397_)
          (let ((_bind6399_ (gx#resolve-identifier__0 _stx6397_)))
            (let ((_$e6401_ (not _bind6399_)))
              (if _$e6401_
                  _$e6401_
                  (##structure-instance-of?
                   _bind6399_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6386_ _form6387_)
      (let ((_bind6389_ (gx#resolve-identifier__0 _id6386_)))
        (if (##structure-instance-of? _bind6389_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6386_)
            (if (not _bind6389_)
                (if (let ((_$e6391_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6391_
                          _$e6391_
                          (let ((_$e6394_
                                 (gx#core-context-rebind?__opt-lambda4261
                                  (gx#core-context-top__0))))
                            (if _$e6394_
                                _$e6394_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6386_))))))
                    (gx#core-quote-syntax__0 _id6386_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6387_
                     _id6386_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6387_
                 _id6386_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6343
      (lambda (_id6345_ _rebind?6346_ _phi6347_ _ctx6348_)
        (let ((_key6350_ (gx#core-identifier-key _id6345_)))
          (let ((_eid6352_
                 (gx#make-binding-id__opt-lambda6110
                  _key6350_
                  '#f
                  _phi6347_
                  _ctx6348_)))
            (let ((_bind6354_
                   (if (##structure-instance-of?
                        _ctx6348_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6352_
                        _key6350_
                        _phi6347_
                        _ctx6348_)
                       (if (##structure-instance-of?
                            _ctx6348_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6352_
                            _key6350_
                            _phi6347_)
                           (if (##structure-instance-of?
                                _ctx6348_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6352_
                                _key6350_
                                _phi6347_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6352_
                                _key6350_
                                _phi6347_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4707
                 _id6345_
                 _bind6354_
                 _rebind?6346_
                 _phi6347_
                 _ctx6348_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6360_)
          (let ((_rebind?6362_ '#f))
            (let ((_phi6364_ (gx#current-expander-phi)))
              (let ((_ctx6366_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6343
                 _id6360_
                 _rebind?6362_
                 _phi6364_
                 _ctx6366_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6368_ _rebind?6369_)
          (let ((_phi6371_ (gx#current-expander-phi)))
            (let ((_ctx6373_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6343
               _id6368_
               _rebind?6369_
               _phi6371_
               _ctx6373_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6375_ _rebind?6376_ _phi6377_)
          (let ((_ctx6379_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6343
             _id6375_
             _rebind?6376_
             _phi6377_
             _ctx6379_))))
      (define gx#core-bind-runtime!
        (lambda _g9105_
          (let ((_g9104_ (length _g9105_)))
            (cond ((fx= _g9104_ 1) (apply gx#core-bind-runtime!__0 _g9105_))
                  ((fx= _g9104_ 2) (apply gx#core-bind-runtime!__1 _g9105_))
                  ((fx= _g9104_ 3) (apply gx#core-bind-runtime!__2 _g9105_))
                  ((fx= _g9104_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6343 _g9105_))
                  (else (error "No clause matching arguments" _g9105_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6298
      (lambda (_id6300_ _eid6301_ _rebind?6302_ _phi6303_ _ctx6304_)
        (let ((_key6306_ (gx#core-identifier-key _id6300_)))
          (let ((_bind6308_
                 (if (##structure-instance-of? _ctx6304_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6301_
                      _key6306_
                      _phi6303_
                      _ctx6304_)
                     (if (##structure-instance-of?
                          _ctx6304_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6301_
                          _key6306_
                          _phi6303_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6301_
                          _key6306_
                          _phi6303_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4707
               _id6300_
               _bind6308_
               _rebind?6302_
               _phi6303_
               _ctx6304_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6314_ _eid6315_)
          (let ((_rebind?6317_ '#f))
            (let ((_phi6319_ (gx#current-expander-phi)))
              (let ((_ctx6321_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6298
                 _id6314_
                 _eid6315_
                 _rebind?6317_
                 _phi6319_
                 _ctx6321_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6323_ _eid6324_ _rebind?6325_)
          (let ((_phi6327_ (gx#current-expander-phi)))
            (let ((_ctx6329_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6298
               _id6323_
               _eid6324_
               _rebind?6325_
               _phi6327_
               _ctx6329_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6331_ _eid6332_ _rebind?6333_ _phi6334_)
          (let ((_ctx6336_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6298
             _id6331_
             _eid6332_
             _rebind?6333_
             _phi6334_
             _ctx6336_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9107_
          (let ((_g9106_ (length _g9107_)))
            (cond ((fx= _g9106_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9107_))
                  ((fx= _g9106_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9107_))
                  ((fx= _g9106_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9107_))
                  ((fx= _g9106_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6298
                          _g9107_))
                  (else (error "No clause matching arguments" _g9107_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6258
      (lambda (_id6260_ _eid6261_ _rebind?6262_ _phi6263_ _ctx6264_)
        (gx#bind-identifier!__opt-lambda4707
         _id6260_
         (##structure
          gx#extern-binding::t
          _eid6261_
          (gx#core-identifier-key _id6260_)
          _phi6263_)
         _rebind?6262_
         _phi6263_
         _ctx6264_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6269_ _eid6270_)
          (let ((_rebind?6272_ '#f))
            (let ((_phi6274_ (gx#current-expander-phi)))
              (let ((_ctx6276_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6258
                 _id6269_
                 _eid6270_
                 _rebind?6272_
                 _phi6274_
                 _ctx6276_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6278_ _eid6279_ _rebind?6280_)
          (let ((_phi6282_ (gx#current-expander-phi)))
            (let ((_ctx6284_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6258
               _id6278_
               _eid6279_
               _rebind?6280_
               _phi6282_
               _ctx6284_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6286_ _eid6287_ _rebind?6288_ _phi6289_)
          (let ((_ctx6291_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6258
             _id6286_
             _eid6287_
             _rebind?6288_
             _phi6289_
             _ctx6291_))))
      (define gx#core-bind-extern!
        (lambda _g9109_
          (let ((_g9108_ (length _g9109_)))
            (cond ((fx= _g9108_ 2) (apply gx#core-bind-extern!__0 _g9109_))
                  ((fx= _g9108_ 3) (apply gx#core-bind-extern!__1 _g9109_))
                  ((fx= _g9108_ 4) (apply gx#core-bind-extern!__2 _g9109_))
                  ((fx= _g9108_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6258 _g9109_))
                  (else (error "No clause matching arguments" _g9109_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6212
      (lambda (_id6214_ _e6215_ _rebind?6216_ _phi6217_ _ctx6218_)
        (gx#bind-identifier!__opt-lambda4707
         _id6214_
         (let ((_key6223_ (gx#core-identifier-key _id6214_))
               (_e6224_ (if (let ((_$e6220_
                                   (##structure-instance-of?
                                    _e6215_
                                    'gx#expander::t)))
                              (if _$e6220_
                                  _$e6220_
                                  (##structure-instance-of?
                                   _e6215_
                                   'gx#expander-context::t)))
                            _e6215_
                            (##structure
                             gx#user-expander::t
                             _e6215_
                             _ctx6218_
                             _phi6217_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6110
             _key6223_
             '#t
             _phi6217_
             _ctx6218_)
            _key6223_
            _phi6217_
            _e6224_))
         _rebind?6216_
         _phi6217_
         _ctx6218_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6229_ _e6230_)
          (let ((_rebind?6232_ '#f))
            (let ((_phi6234_ (gx#current-expander-phi)))
              (let ((_ctx6236_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6212
                 _id6229_
                 _e6230_
                 _rebind?6232_
                 _phi6234_
                 _ctx6236_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6238_ _e6239_ _rebind?6240_)
          (let ((_phi6242_ (gx#current-expander-phi)))
            (let ((_ctx6244_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6212
               _id6238_
               _e6239_
               _rebind?6240_
               _phi6242_
               _ctx6244_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6246_ _e6247_ _rebind?6248_ _phi6249_)
          (let ((_ctx6251_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6212
             _id6246_
             _e6247_
             _rebind?6248_
             _phi6249_
             _ctx6251_))))
      (define gx#core-bind-syntax!
        (lambda _g9111_
          (let ((_g9110_ (length _g9111_)))
            (cond ((fx= _g9110_ 2) (apply gx#core-bind-syntax!__0 _g9111_))
                  ((fx= _g9110_ 3) (apply gx#core-bind-syntax!__1 _g9111_))
                  ((fx= _g9110_ 4) (apply gx#core-bind-syntax!__2 _g9111_))
                  ((fx= _g9110_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6212 _g9111_))
                  (else (error "No clause matching arguments" _g9111_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6195
      (lambda (_id6197_ _e6198_ _rebind?6199_)
        (gx#core-bind-syntax!__opt-lambda6212
         _id6197_
         _e6198_
         _rebind?6199_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6204_ _e6205_)
          (let ((_rebind?6207_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6195
             _id6204_
             _e6205_
             _rebind?6207_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9113_
          (let ((_g9112_ (length _g9113_)))
            (cond ((fx= _g9112_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9113_))
                  ((fx= _g9112_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6195 _g9113_))
                  (else (error "No clause matching arguments" _g9113_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6153
      (lambda (_id6155_ _alias-id6156_ _rebind?6157_ _phi6158_ _ctx6159_)
        (gx#bind-identifier!__opt-lambda4707
         _id6155_
         (let ((_key6161_ (gx#core-identifier-key _id6155_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6110
             _key6161_
             '#t
             _phi6158_
             _ctx6159_)
            _key6161_
            _phi6158_
            _alias-id6156_))
         _rebind?6157_
         _phi6158_
         _ctx6159_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6166_ _alias-id6167_)
          (let ((_rebind?6169_ '#f))
            (let ((_phi6171_ (gx#current-expander-phi)))
              (let ((_ctx6173_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda6153
                 _id6166_
                 _alias-id6167_
                 _rebind?6169_
                 _phi6171_
                 _ctx6173_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6175_ _alias-id6176_ _rebind?6177_)
          (let ((_phi6179_ (gx#current-expander-phi)))
            (let ((_ctx6181_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda6153
               _id6175_
               _alias-id6176_
               _rebind?6177_
               _phi6179_
               _ctx6181_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6183_ _alias-id6184_ _rebind?6185_ _phi6186_)
          (let ((_ctx6188_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6153
             _id6183_
             _alias-id6184_
             _rebind?6185_
             _phi6186_
             _ctx6188_))))
      (define gx#core-bind-alias!
        (lambda _g9115_
          (let ((_g9114_ (length _g9115_)))
            (cond ((fx= _g9114_ 2) (apply gx#core-bind-alias!__0 _g9115_))
                  ((fx= _g9114_ 3) (apply gx#core-bind-alias!__1 _g9115_))
                  ((fx= _g9114_ 4) (apply gx#core-bind-alias!__2 _g9115_))
                  ((fx= _g9114_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6153 _g9115_))
                  (else (error "No clause matching arguments" _g9115_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6110
      (lambda (_key6112_ _syntax?6113_ _phi6114_ _ctx6115_)
        (if (uninterned-symbol? _key6112_)
            (gensym 'L)
            (if (pair? _key6112_)
                (gensym (car _key6112_))
                (if (##structure-instance-of? _ctx6115_ 'gx#top-context::t)
                    (let ((_ns6117_
                           (gx#core-context-namespace__opt-lambda4244
                            _ctx6115_)))
                      (if (if (fxzero? _phi6114_) (not _syntax?6113_) '#f)
                          (if _ns6117_
                              (make-symbol _ns6117_ '"#" _key6112_)
                              _key6112_)
                          (if _syntax?6113_
                              (make-symbol
                               (let ((_$e6119_ _ns6117_))
                                 (if _$e6119_ _$e6119_ '""))
                               '"[:"
                               (number->string _phi6114_)
                               '":]#"
                               _key6112_)
                              (make-symbol
                               (let ((_$e6122_ _ns6117_))
                                 (if _$e6122_ _$e6122_ '""))
                               '"["
                               (number->string _phi6114_)
                               '"]#"
                               _key6112_))))
                    (gensym _key6112_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6128_)
          (let ((_syntax?6130_ '#f))
            (let ((_phi6132_ (gx#current-expander-phi)))
              (let ((_ctx6134_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda6110
                 _key6128_
                 _syntax?6130_
                 _phi6132_
                 _ctx6134_))))))
      (define gx#make-binding-id__1
        (lambda (_key6136_ _syntax?6137_)
          (let ((_phi6139_ (gx#current-expander-phi)))
            (let ((_ctx6141_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda6110
               _key6136_
               _syntax?6137_
               _phi6139_
               _ctx6141_)))))
      (define gx#make-binding-id__2
        (lambda (_key6143_ _syntax?6144_ _phi6145_)
          (let ((_ctx6147_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6110
             _key6143_
             _syntax?6144_
             _phi6145_
             _ctx6147_))))
      (define gx#make-binding-id
        (lambda _g9117_
          (let ((_g9116_ (length _g9117_)))
            (cond ((fx= _g9116_ 1) (apply gx#make-binding-id__0 _g9117_))
                  ((fx= _g9116_ 2) (apply gx#make-binding-id__1 _g9117_))
                  ((fx= _g9116_ 3) (apply gx#make-binding-id__2 _g9117_))
                  ((fx= _g9116_ 4)
                   (apply gx#make-binding-id__opt-lambda6110 _g9117_))
                  (else (error "No clause matching arguments" _g9117_)))))))))
