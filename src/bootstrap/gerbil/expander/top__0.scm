(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9070_)
      (let ((_expand-special9072_
             (lambda (_hd9074_ _K9075_ _rest9076_ _r9077_)
               (_K9075_ _rest9076_
                        (cons (gx#core-expand-top _hd9074_) _r9077_)))))
        (gx#core-expand-block__0 _stx9070_ _expand-special9072_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8823_)
      (let ((_expand-special8825_
             (lambda (_hd8945_ _K8946_ _rest8947_ _r8948_)
               (let ((_K8952_ (lambda (_e8950_)
                                (_K8946_ _rest8947_ (cons _e8950_ _r8948_)))))
                 (let ((_e89538982_ _hd8945_))
                   (let ((_E89778986_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89538982_))))
                     (let ((_E89738998_
                            (lambda ()
                              (if (gx#stx-pair? _e89538982_)
                                  (let ((_e89788990_
                                         (gx#syntax-e _e89538982_)))
                                    (let ((_hd89798993_ (##car _e89788990_))
                                          (_tl89808995_ (##cdr _e89788990_)))
                                      (if (if (gx#identifier? _hd89798993_)
                                              (gx#core-identifier=?
                                               _hd89798993_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8952_ (gx#core-expand-define-runtime%
                                                        _hd8945_))
                                              (_E89778986_))
                                          (_E89778986_))))
                                  (_E89778986_)))))
                       (let ((_E89699010_
                              (lambda ()
                                (if (gx#stx-pair? _e89538982_)
                                    (let ((_e89749002_
                                           (gx#syntax-e _e89538982_)))
                                      (let ((_hd89759005_ (##car _e89749002_))
                                            (_tl89769007_ (##cdr _e89749002_)))
                                        (if (if (gx#identifier? _hd89759005_)
                                                (gx#core-identifier=?
                                                 _hd89759005_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8952_ (gx#core-expand-define-alias%
                                                          _hd8945_))
                                                (_E89738998_))
                                            (_E89738998_))))
                                    (_E89738998_)))))
                         (let ((_E89599022_
                                (lambda ()
                                  (if (gx#stx-pair? _e89538982_)
                                      (let ((_e89709014_
                                             (gx#syntax-e _e89538982_)))
                                        (let ((_hd89719017_
                                               (##car _e89709014_))
                                              (_tl89729019_
                                               (##cdr _e89709014_)))
                                          (if (if (gx#identifier? _hd89719017_)
                                                  (gx#core-identifier=?
                                                   _hd89719017_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8952_ (gx#core-expand-define-syntax%
                                                            _hd8945_))
                                                  (_E89699010_))
                                              (_E89699010_))))
                                      (_E89699010_)))))
                           (let ((_E89559054_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89538982_)
                                        (let ((_e89609026_
                                               (gx#syntax-e _e89538982_)))
                                          (let ((_hd89619029_
                                                 (##car _e89609026_))
                                                (_tl89629031_
                                                 (##cdr _e89609026_)))
                                            (if (if (gx#identifier?
                                                     _hd89619029_)
                                                    (gx#core-identifier=?
                                                     _hd89619029_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89629031_)
                                                    (let ((_e89639034_
                                                           (gx#syntax-e
                                                            _tl89629031_)))
                                                      (let ((_hd89649037_
                                                             (##car _e89639034_))
                                                            (_tl89659039_
                                                             (##cdr _e89639034_)))
                                                        (let ((_hd-bind9042_
                                                               _hd89649037_))
                                                          (if (gx#stx-pair?
                                                               _tl89659039_)
                                                              (let ((_e89669044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89659039_)))
                        (let ((_hd89679047_ (##car _e89669044_))
                              (_tl89689049_ (##cdr _e89669044_)))
                          (let ((_expr9052_ _hd89679047_))
                            (if (gx#stx-null? _tl89689049_)
                                (if (gx#core-bind-values? _hd-bind9042_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9042_)
                                      (_K8952_ _hd8945_))
                                    (_E89599022_))
                                (_E89599022_)))))
                      (_E89599022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89599022_))
                                                (_E89599022_))))
                                        (_E89599022_)))))
                             (let ((_E89549066_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89538982_)
                                          (let ((_e89569058_
                                                 (gx#syntax-e _e89538982_)))
                                            (let ((_hd89579061_
                                                   (##car _e89569058_))
                                                  (_tl89589063_
                                                   (##cdr _e89569058_)))
                                              (if (if (gx#identifier?
                                                       _hd89579061_)
                                                      (gx#core-identifier=?
                                                       _hd89579061_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8952_ (gx#core-expand-begin-syntax%
                                                                _hd8945_))
                                                      (_E89559054_))
                                                  (_E89559054_))))
                                          (_E89559054_)))))
                               (let () (_E89549066_)))))))))))))
        (let ((_eval-body8826_
               (lambda (_rbody8834_)
                 ((letrec ((_lp8836_
                            (lambda (_rest8838_ _body8839_ _ebody8840_)
                              (let ((_rest88418849_ _rest8838_))
                                (let ((_E88448853_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88418849_))))
                                  (let ((_else88438857_
                                         (lambda ()
                                           (values _body8839_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8840_)
                                                     (gx#stx-source
                                                      _stx8823_)))))))
                                    (let ((_K88458933_
                                           (lambda (_rest8860_ _hd8861_)
                                             (let ((_e88628879_ _hd8861_))
                                               (let ((_E88748883_
                                                      (lambda ()
                                                        (_lp8836_
                                                         _rest8860_
                                                         (cons _hd8861_
                                                               _body8839_)
                                                         (cons _hd8861_
                                                               _ebody8840_)))))
                                                 (let ((_E88648895_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88628879_)
                                                              (let ((_e88758887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88628879_)))
                        (let ((_hd88768890_ (##car _e88758887_))
                              (_tl88778892_ (##cdr _e88758887_)))
                          (if (if (gx#identifier? _hd88768890_)
                                  (gx#core-identifier=?
                                   _hd88768890_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8836_
                                   _rest8860_
                                   (cons _hd8861_ _body8839_)
                                   _ebody8840_)
                                  (_E88748883_))
                              (_E88748883_))))
                      (_E88748883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88638929_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88628879_)
                        (let ((_e88658899_ (gx#syntax-e _e88628879_)))
                          (let ((_hd88668902_ (##car _e88658899_))
                                (_tl88678904_ (##cdr _e88658899_)))
                            (if (if (gx#identifier? _hd88668902_)
                                    (gx#core-identifier=?
                                     _hd88668902_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88678904_)
                                    (let ((_e88688907_
                                           (gx#syntax-e _tl88678904_)))
                                      (let ((_hd88698910_ (##car _e88688907_))
                                            (_tl88708912_ (##cdr _e88688907_)))
                                        (let ((_hd-bind8915_ _hd88698910_))
                                          (if (gx#stx-pair? _tl88708912_)
                                              (let ((_e88718917_
                                                     (gx#syntax-e
                                                      _tl88708912_)))
                                                (let ((_hd88728920_
                                                       (##car _e88718917_))
                                                      (_tl88738922_
                                                       (##cdr _e88718917_)))
                                                  (let ((_expr8925_
                                                         _hd88728920_))
                                                    (if (gx#stx-null?
                                                         _tl88738922_)
                                                        (if '#t
                                                            (let ((_ehd8927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8915_)
                                        (cons (gx#core-expand-expression
                                               _expr8925_)
                                              '())))
                            (gx#stx-source _hd8861_))))
                      (_lp8836_
                       _rest8860_
                       (cons _ehd8927_ _body8839_)
                       (cons _ehd8927_ _ebody8840_)))
                    (_E88648895_))
                (_E88648895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88648895_)))))
                                    (_E88648895_))
                                (_E88648895_))))
                        (_E88648895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88638929_)))))))))
                                      (if (##pair? _rest88418849_)
                                          (let ((_hd88468936_
                                                 (##car _rest88418849_))
                                                (_tl88478938_
                                                 (##cdr _rest88418849_)))
                                            (let ((_hd8941_ _hd88468936_))
                                              (let ((_rest8943_ _tl88478938_))
                                                (_K88458933_
                                                 _rest8943_
                                                 _hd8941_))))
                                          (_else88438857_)))))))))
                    _lp8836_)
                  _rbody8834_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8829_
                    (gx#core-expand-block__1
                     _stx8823_
                     _expand-special8825_
                     '#f)))
               (let ((_g9084_ (_eval-body8826_ _rbody8829_)))
                 (begin
                   (let ((_g9085_ (values-count _g9084_)))
                     (if (not (fx= _g9085_ 2))
                         (error "Context expects 2 values" _g9085_)))
                   (let ((_expanded-body8831_ (values-ref _g9084_ 0))
                         (_value8832_ (values-ref _g9084_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8831_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8832_ '())))
                      (gx#stx-source _stx8823_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8793_)
      (let ((_e87948801_ _stx8793_))
        (let ((_E87968805_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87948801_))))
          (let ((_E87958819_
                 (lambda ()
                   (if (gx#stx-pair? _e87948801_)
                       (let ((_e87978809_ (gx#syntax-e _e87948801_)))
                         (let ((_hd87988812_ (##car _e87978809_))
                               (_tl87998814_ (##cdr _e87978809_)))
                           (let ((_body8817_ _tl87998814_))
                             (if (gx#stx-list? _body8817_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8817_)
                                  (gx#stx-source _stx8793_))
                                 (_E87968805_)))))
                       (_E87968805_)))))
            (let () (_E87958819_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8791_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8791_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8779_)
      (let ((_e87808783_ _stx8779_))
        (let ((_E87818787_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87808783_))))
          (let () (_E87818787_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8503_ _body8504_)
      (let ((_expand-internal-special8508_
             (lambda (_hd8665_ _K8666_ _rest8667_ _r8668_)
               (let ((_e86698694_ _hd8665_))
                 (let ((_E86898698_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86698694_))))
                   (let ((_E86858710_
                          (lambda ()
                            (if (gx#stx-pair? _e86698694_)
                                (let ((_e86908702_ (gx#syntax-e _e86698694_)))
                                  (let ((_hd86918705_ (##car _e86908702_))
                                        (_tl86928707_ (##cdr _e86908702_)))
                                    (if (if (gx#identifier? _hd86918705_)
                                            (gx#core-identifier=?
                                             _hd86918705_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8666_ _rest8667_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8665_)
                                                           _r8668_))
                                            (_E86898698_))
                                        (_E86898698_))))
                                (_E86898698_)))))
                     (let ((_E86818722_
                            (lambda ()
                              (if (gx#stx-pair? _e86698694_)
                                  (let ((_e86868714_
                                         (gx#syntax-e _e86698694_)))
                                    (let ((_hd86878717_ (##car _e86868714_))
                                          (_tl86888719_ (##cdr _e86868714_)))
                                      (if (if (gx#identifier? _hd86878717_)
                                              (gx#core-identifier=?
                                               _hd86878717_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8665_)
                                                (_K8666_ _rest8667_ _r8668_))
                                              (_E86858710_))
                                          (_E86858710_))))
                                  (_E86858710_)))))
                       (let ((_E86718734_
                              (lambda ()
                                (if (gx#stx-pair? _e86698694_)
                                    (let ((_e86828726_
                                           (gx#syntax-e _e86698694_)))
                                      (let ((_hd86838729_ (##car _e86828726_))
                                            (_tl86848731_ (##cdr _e86828726_)))
                                        (if (if (gx#identifier? _hd86838729_)
                                                (gx#core-identifier=?
                                                 _hd86838729_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8665_)
                                                  (_K8666_ _rest8667_ _r8668_))
                                                (_E86818722_))
                                            (_E86818722_))))
                                    (_E86818722_)))))
                         (let ((_E86708766_
                                (lambda ()
                                  (if (gx#stx-pair? _e86698694_)
                                      (let ((_e86728738_
                                             (gx#syntax-e _e86698694_)))
                                        (let ((_hd86738741_
                                               (##car _e86728738_))
                                              (_tl86748743_
                                               (##cdr _e86728738_)))
                                          (if (if (gx#identifier? _hd86738741_)
                                                  (gx#core-identifier=?
                                                   _hd86738741_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86748743_)
                                                  (let ((_e86758746_
                                                         (gx#syntax-e
                                                          _tl86748743_)))
                                                    (let ((_hd86768749_
                                                           (##car _e86758746_))
                                                          (_tl86778751_
                                                           (##cdr _e86758746_)))
                                                      (let ((_hd-bind8754_
                                                             _hd86768749_))
                                                        (if (gx#stx-pair?
                                                             _tl86778751_)
                                                            (let ((_e86788756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86778751_)))
                      (let ((_hd86798759_ (##car _e86788756_))
                            (_tl86808761_ (##cdr _e86788756_)))
                        (let ((_expr8764_ _hd86798759_))
                          (if (gx#stx-null? _tl86808761_)
                              (if (gx#core-bind-values? _hd-bind8754_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8754_)
                                    (_K8666_ _rest8667_
                                             (cons _hd8665_ _r8668_)))
                                  (_E86718734_))
                              (_E86718734_)))))
                    (_E86718734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86718734_))
                                              (_E86718734_))))
                                      (_E86718734_)))))
                           (let () (_E86708766_)))))))))))
        (let ((_wrap-internal8509_
               (lambda (_rbody8511_)
                 ((letrec ((_lp8513_
                            (lambda (_rest8515_
                                     _decls8516_
                                     _bind8517_
                                     _body8518_)
                              (let ((_e85198526_ _rest8515_))
                                (let ((_E85218575_
                                       (lambda ()
                                         (let ((_body8570_
                                                (let ((_body85298539_
                                                       _body8518_))
                                                  (let ((_E85338543_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85298539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85328547_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8518_)
                                                              (gx#stx-source
                                                               _stx8503_)))))
                                                      (let ((_try-match85318563_
                                                             (lambda ()
                                                               (let ((_K85348553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8551_) _expr8551_)))
                         (if (##pair? _body85298539_)
                             (let ((_hd85358556_ (##car _body85298539_))
                                   (_tl85368558_ (##cdr _body85298539_)))
                               (let ((_expr8561_ _hd85358556_))
                                 (if (##null? _tl85368558_)
                                     (_K85348553_ _expr8561_)
                                     (_else85328547_))))
                             (_else85328547_))))))
                (let ((_K85378567_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8503_))))
                  (if (##null? _body85298539_)
                      (_K85378567_)
                      (_try-match85318563_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8572_
                                                  (if (null? _bind8517_)
                                                      _body8570_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8570_ '())))
               (gx#stx-source _stx8503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8516_)
                                                   _body8572_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8516_
                                                                (cons _body8572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8503_)))))))))
                                  (let ((_E85208661_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85198526_)
                                               (let ((_e85228579_
                                                      (gx#syntax-e
                                                       _e85198526_)))
                                                 (let ((_hd85238582_
                                                        (##car _e85228579_))
                                                       (_tl85248584_
                                                        (##cdr _e85228579_)))
                                                   (let ((_hd8587_
                                                          _hd85238582_))
                                                     (let ((_rest8589_
                                                            _tl85248584_))
                                                       (if '#t
                                                           (let ((_e85908607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8587_))
                     (let ((_E86028611_
                            (lambda ()
                              (if (null? _bind8517_)
                                  (_lp8513_
                                   _rest8589_
                                   _decls8516_
                                   _bind8517_
                                   (cons _hd8587_ _body8518_))
                                  (_lp8513_
                                   _rest8589_
                                   _decls8516_
                                   (cons (cons '#f (cons _hd8587_ '()))
                                         _bind8517_)
                                   _body8518_)))))
                       (let ((_E85928625_
                              (lambda ()
                                (if (gx#stx-pair? _e85908607_)
                                    (let ((_e86038615_
                                           (gx#syntax-e _e85908607_)))
                                      (let ((_hd86048618_ (##car _e86038615_))
                                            (_tl86058620_ (##cdr _e86038615_)))
                                        (if (if (gx#identifier? _hd86048618_)
                                                (gx#core-identifier=?
                                                 _hd86048618_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8623_ _tl86058620_))
                                              (if '#t
                                                  (_lp8513_
                                                   _rest8589_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8516_
                                                    _xdecls8623_)
                                                   _bind8517_
                                                   _body8518_)
                                                  (_E86028611_)))
                                            (_E86028611_))))
                                    (_E86028611_)))))
                         (let ((_E85918657_
                                (lambda ()
                                  (if (gx#stx-pair? _e85908607_)
                                      (let ((_e85938629_
                                             (gx#syntax-e _e85908607_)))
                                        (let ((_hd85948632_
                                               (##car _e85938629_))
                                              (_tl85958634_
                                               (##cdr _e85938629_)))
                                          (if (if (gx#identifier? _hd85948632_)
                                                  (gx#core-identifier=?
                                                   _hd85948632_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85958634_)
                                                  (let ((_e85968637_
                                                         (gx#syntax-e
                                                          _tl85958634_)))
                                                    (let ((_hd85978640_
                                                           (##car _e85968637_))
                                                          (_tl85988642_
                                                           (##cdr _e85968637_)))
                                                      (let ((_hd-bind8645_
                                                             _hd85978640_))
                                                        (if (gx#stx-pair?
                                                             _tl85988642_)
                                                            (let ((_e85998647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl85988642_)))
                      (let ((_hd86008650_ (##car _e85998647_))
                            (_tl86018652_ (##cdr _e85998647_)))
                        (let ((_expr8655_ _hd86008650_))
                          (if (gx#stx-null? _tl86018652_)
                              (if '#t
                                  (_lp8513_
                                   _rest8589_
                                   _decls8516_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8645_)
                                               (cons (gx#core-expand-expression
                                                      _expr8655_)
                                                     '()))
                                         _bind8517_)
                                   _body8518_)
                                  (_E85928625_))
                              (_E85928625_)))))
                    (_E85928625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85928625_))
                                              (_E85928625_))))
                                      (_E85928625_)))))
                           (let () (_E85918657_))))))
                   (_E85218575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85218575_)))))
                                    (let () (_E85208661_))))))))
                    _lp8513_)
                  _rbody8511_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8507_
                 (lambda (_hd8770_ _rest8771_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8509_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8770_ _rest8771_)
                         (gx#stx-source _stx8503_))
                        _expand-internal-special8508_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9078 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9078)
                        __obj9078))))))
            (let ((_expand-special8506_
                   (lambda (_hd8774_ _K8775_ _rest8776_ _r8777_)
                     (_K8775_ '()
                              (cons (_expand-internal8507_ _hd8774_ _rest8776_)
                                    _r8777_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8504_)
                (gx#stx-source _stx8503_))
               _expand-special8506_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8441_)
      (let ((_e84428449_ _stx8441_))
        (let ((_E84448453_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84428449_))))
          (let ((_E84438499_
                 (lambda ()
                   (if (gx#stx-pair? _e84428449_)
                       (let ((_e84458457_ (gx#syntax-e _e84428449_)))
                         (let ((_hd84468460_ (##car _e84458457_))
                               (_tl84478462_ (##cdr _e84458457_)))
                           (let ((_body8465_ _tl84478462_))
                             (if (gx#stx-list? _body8465_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8467_)
                                      (let ((_e84688475_ _decl8467_))
                                        (let ((_E84708479_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84688475_))))
                                          (let ((_E84698495_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84688475_)
                                                       (let ((_e84718483_
                                                              (gx#syntax-e
                                                               _e84688475_)))
                                                         (let ((_hd84728486_
                                                                (##car _e84718483_))
                                                               (_tl84738488_
                                                                (##cdr _e84718483_)))
                                                           (let ((_head8491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84728486_))
                     (let ((_args8493_ _tl84738488_))
                       (if (gx#stx-list? _args8493_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8467_)
                           (_E84708479_))))))
               (_E84708479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84698495_))))))
                                    _body8465_))
                                  (gx#stx-source _stx8441_))
                                 (_E84448453_)))))
                       (_E84448453_)))))
            (let () (_E84438499_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8325_)
      (let ((_e83268333_ _stx8325_))
        (let ((_E83288337_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83268333_))))
          (let ((_E83278437_
                 (lambda ()
                   (if (gx#stx-pair? _e83268333_)
                       (let ((_e83298341_ (gx#syntax-e _e83268333_)))
                         (let ((_hd83308344_ (##car _e83298341_))
                               (_tl83318346_ (##cdr _e83298341_)))
                           (let ((_body8349_ _tl83318346_))
                             (if (gx#stx-list? _body8349_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8351_)
                                      (let ((_e83528362_ _bind8351_))
                                        (let ((_E83548366_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83528362_))))
                                          (let ((_E83538390_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83528362_)
                                                       (let ((_e83558370_
                                                              (gx#syntax-e
                                                               _e83528362_)))
                                                         (let ((_hd83568373_
                                                                (##car _e83558370_))
                                                               (_tl83578375_
                                                                (##cdr _e83558370_)))
                                                           (let ((_id8378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83568373_))
                     (if (gx#stx-pair? _tl83578375_)
                         (let ((_e83588380_ (gx#syntax-e _tl83578375_)))
                           (let ((_hd83598383_ (##car _e83588380_))
                                 (_tl83608385_ (##cdr _e83588380_)))
                             (let ((_eid8388_ _hd83598383_))
                               (if (gx#stx-null? _tl83608385_)
                                   (if (if (gx#identifier? _id8378_)
                                           (gx#identifier? _eid8388_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8378_
                                        (gx#stx-e _eid8388_))
                                       (_E83548366_))
                                   (_E83548366_)))))
                         (_E83548366_)))))
               (_E83548366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83538390_))))))
                                    _body8349_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8394_)
                                        (let ((_e83958405_ _bind8394_))
                                          (let ((_E83978409_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e83958405_))))
                                            (let ((_E83968433_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e83958405_)
                                                         (let ((_e83988413_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e83958405_)))
                   (let ((_hd83998416_ (##car _e83988413_))
                         (_tl84008418_ (##cdr _e83988413_)))
                     (let ((_id8421_ _hd83998416_))
                       (if (gx#stx-pair? _tl84008418_)
                           (let ((_e84018423_ (gx#syntax-e _tl84008418_)))
                             (let ((_hd84028426_ (##car _e84018423_))
                                   (_tl84038428_ (##cdr _e84018423_)))
                               (let ((_eid8431_ _hd84028426_))
                                 (if (gx#stx-null? _tl84038428_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8421_)
                                               (cons (gx#stx-e _eid8431_) '()))
                                         (_E83978409_))
                                     (_E83978409_)))))
                           (_E83978409_)))))
                 (_E83978409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E83968433_))))))
                                      _body8349_))
                                    (gx#stx-source _stx8325_)))
                                 (_E83288337_)))))
                       (_E83288337_)))))
            (let () (_E83278437_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8271_)
      (let ((_e82728285_ _stx8271_))
        (let ((_E82748289_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82728285_))))
          (let ((_E82738321_
                 (lambda ()
                   (if (gx#stx-pair? _e82728285_)
                       (let ((_e82758293_ (gx#syntax-e _e82728285_)))
                         (let ((_hd82768296_ (##car _e82758293_))
                               (_tl82778298_ (##cdr _e82758293_)))
                           (if (gx#stx-pair? _tl82778298_)
                               (let ((_e82788301_ (gx#syntax-e _tl82778298_)))
                                 (let ((_hd82798304_ (##car _e82788301_))
                                       (_tl82808306_ (##cdr _e82788301_)))
                                   (let ((_hd8309_ _hd82798304_))
                                     (if (gx#stx-pair? _tl82808306_)
                                         (let ((_e82818311_
                                                (gx#syntax-e _tl82808306_)))
                                           (let ((_hd82828314_
                                                  (##car _e82818311_))
                                                 (_tl82838316_
                                                  (##cdr _e82818311_)))
                                             (let ((_expr8319_ _hd82828314_))
                                               (if (gx#stx-null? _tl82838316_)
                                                   (if (gx#core-bind-values?
                                                        _hd8309_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8309_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8309_)
                              (cons (gx#core-expand-expression _expr8319_)
                                    '())))
                  (gx#stx-source _stx8271_)))
               (_E82748289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82748289_)))))
                                         (_E82748289_)))))
                               (_E82748289_))))
                       (_E82748289_)))))
            (let () (_E82738321_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8217_)
      (let ((_e82188231_ _stx8217_))
        (let ((_E82208235_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82188231_))))
          (let ((_E82198267_
                 (lambda ()
                   (if (gx#stx-pair? _e82188231_)
                       (let ((_e82218239_ (gx#syntax-e _e82188231_)))
                         (let ((_hd82228242_ (##car _e82218239_))
                               (_tl82238244_ (##cdr _e82218239_)))
                           (if (gx#stx-pair? _tl82238244_)
                               (let ((_e82248247_ (gx#syntax-e _tl82238244_)))
                                 (let ((_hd82258250_ (##car _e82248247_))
                                       (_tl82268252_ (##cdr _e82248247_)))
                                   (let ((_id8255_ _hd82258250_))
                                     (if (gx#stx-pair? _tl82268252_)
                                         (let ((_e82278257_
                                                (gx#syntax-e _tl82268252_)))
                                           (let ((_hd82288260_
                                                  (##car _e82278257_))
                                                 (_tl82298262_
                                                  (##cdr _e82278257_)))
                                             (let ((_binding-id8265_
                                                    _hd82288260_))
                                               (if (gx#stx-null? _tl82298262_)
                                                   (if (if (gx#identifier?
                                                            _id8255_)
                                                           (gx#identifier?
                                                            _binding-id8265_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8255_
                                                          (gx#stx-e
                                                           _binding-id8265_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8255_)
                              (cons (gx#core-quote-syntax__0 _binding-id8265_)
                                    '())))))
               (_E82208235_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82208235_)))))
                                         (_E82208235_)))))
                               (_E82208235_))))
                       (_E82208235_)))))
            (let () (_E82198267_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8160_)
      (let ((_e81618174_ _stx8160_))
        (let ((_E81638178_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81618174_))))
          (let ((_E81628213_
                 (lambda ()
                   (if (gx#stx-pair? _e81618174_)
                       (let ((_e81648182_ (gx#syntax-e _e81618174_)))
                         (let ((_hd81658185_ (##car _e81648182_))
                               (_tl81668187_ (##cdr _e81648182_)))
                           (if (gx#stx-pair? _tl81668187_)
                               (let ((_e81678190_ (gx#syntax-e _tl81668187_)))
                                 (let ((_hd81688193_ (##car _e81678190_))
                                       (_tl81698195_ (##cdr _e81678190_)))
                                   (let ((_id8198_ _hd81688193_))
                                     (if (gx#stx-pair? _tl81698195_)
                                         (let ((_e81708200_
                                                (gx#syntax-e _tl81698195_)))
                                           (let ((_hd81718203_
                                                  (##car _e81708200_))
                                                 (_tl81728205_
                                                  (##cdr _e81708200_)))
                                             (let ((_expr8208_ _hd81718203_))
                                               (if (gx#stx-null? _tl81728205_)
                                                   (if (gx#identifier?
                                                        _id8198_)
                                                       (let ((_g9086_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8208_)))
                 (begin
                   (let ((_g9087_ (values-count _g9086_)))
                     (if (not (fx= _g9087_ 2))
                         (error "Context expects 2 values" _g9087_)))
                   (let ((_e-stx8210_ (values-ref _g9086_ 0))
                         (_e8211_ (values-ref _g9086_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8198_ _e8211_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8198_)
                                    (cons _e-stx8210_ '())))
                        (gx#stx-source _stx8160_))))))
               (_E81638178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81638178_)))))
                                         (_E81638178_)))))
                               (_E81638178_))))
                       (_E81638178_)))))
            (let () (_E81628213_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8104_)
      (let ((_e81058118_ _stx8104_))
        (let ((_E81078122_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81058118_))))
          (let ((_E81068156_
                 (lambda ()
                   (if (gx#stx-pair? _e81058118_)
                       (let ((_e81088126_ (gx#syntax-e _e81058118_)))
                         (let ((_hd81098129_ (##car _e81088126_))
                               (_tl81108131_ (##cdr _e81088126_)))
                           (if (gx#stx-pair? _tl81108131_)
                               (let ((_e81118134_ (gx#syntax-e _tl81108131_)))
                                 (let ((_hd81128137_ (##car _e81118134_))
                                       (_tl81138139_ (##cdr _e81118134_)))
                                   (let ((_id8142_ _hd81128137_))
                                     (if (gx#stx-pair? _tl81138139_)
                                         (let ((_e81148144_
                                                (gx#syntax-e _tl81138139_)))
                                           (let ((_hd81158147_
                                                  (##car _e81148144_))
                                                 (_tl81168149_
                                                  (##cdr _e81148144_)))
                                             (let ((_alias-id8152_
                                                    _hd81158147_))
                                               (if (gx#stx-null? _tl81168149_)
                                                   (if (if (gx#identifier?
                                                            _id8142_)
                                                           (gx#identifier?
                                                            _alias-id8152_)
                                                           '#f)
                                                       (let ((_alias-id8154_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8152_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8142_
                                                            _alias-id8154_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8142_)
                                (cons _alias-id8154_ '()))))))
               (_E81078122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81078122_)))))
                                         (_E81078122_)))))
                               (_E81078122_))))
                       (_E81078122_)))))
            (let () (_E81068156_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8045
      (lambda (_stx8047_ _wrap?8048_)
        (let ((_e80498059_ _stx8047_))
          (let ((_E80518063_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80498059_))))
            (let ((_E80508090_
                   (lambda ()
                     (if (gx#stx-pair? _e80498059_)
                         (let ((_e80528067_ (gx#syntax-e _e80498059_)))
                           (let ((_hd80538070_ (##car _e80528067_))
                                 (_tl80548072_ (##cdr _e80528067_)))
                             (if (gx#stx-pair? _tl80548072_)
                                 (let ((_e80558075_
                                        (gx#syntax-e _tl80548072_)))
                                   (let ((_hd80568078_ (##car _e80558075_))
                                         (_tl80578080_ (##cdr _e80558075_)))
                                     (let ((_hd8083_ _hd80568078_))
                                       (let ((_body8085_ _tl80578080_))
                                         (if (gx#core-bind-values? _hd8083_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8083_)
                                                  (let ((_body8088_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8083_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8047_
                              _body8085_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8048_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8088_)
                                                         (gx#stx-source
                                                          _stx8047_))
                                                        _body8088_))))
                                              gx#current-expander-context
                                              (let ((__obj9079
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9079)
                                                  __obj9079)))
                                             (_E80518063_))))))
                                 (_E80518063_))))
                         (_E80518063_)))))
              (let () (_E80508090_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8097_)
          (let ((_wrap?8099_ '#t))
            (gx#core-expand-lambda%__opt-lambda8045 _stx8097_ _wrap?8099_))))
      (define gx#core-expand-lambda%
        (lambda _g9089_
          (let ((_g9088_ (length _g9089_)))
            (cond ((fx= _g9088_ 1) (apply gx#core-expand-lambda%__0 _g9089_))
                  ((fx= _g9088_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8045 _g9089_))
                  (else (error "No clause matching arguments" _g9089_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8011_)
      (let ((_e80128019_ _stx8011_))
        (let ((_E80148023_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80128019_))))
          (let ((_E80138042_
                 (lambda ()
                   (if (gx#stx-pair? _e80128019_)
                       (let ((_e80158027_ (gx#syntax-e _e80128019_)))
                         (let ((_hd80168030_ (##car _e80158027_))
                               (_tl80178032_ (##cdr _e80158027_)))
                           (let ((_clauses8035_ _tl80178032_))
                             (if (gx#stx-list? _clauses8035_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8037_)
                                      (gx#core-expand-lambda%__opt-lambda8045
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8037_)
                                        (let ((_$e8039_
                                               (gx#stx-source _clause8037_)))
                                          (if _$e8039_
                                              _$e8039_
                                              (gx#stx-source _stx8011_))))
                                       '#f))
                                    _clauses8035_))
                                  (gx#stx-source _stx8011_))
                                 (_E80148023_)))))
                       (_E80148023_)))))
            (let () (_E80138042_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7965_)
      (let ((_e79667976_ _stx7965_))
        (let ((_E79687980_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79667976_))))
          (let ((_E79678007_
                 (lambda ()
                   (if (gx#stx-pair? _e79667976_)
                       (let ((_e79697984_ (gx#syntax-e _e79667976_)))
                         (let ((_hd79707987_ (##car _e79697984_))
                               (_tl79717989_ (##cdr _e79697984_)))
                           (if (gx#stx-pair? _tl79717989_)
                               (let ((_e79727992_ (gx#syntax-e _tl79717989_)))
                                 (let ((_hd79737995_ (##car _e79727992_))
                                       (_tl79747997_ (##cdr _e79727992_)))
                                   (let ((_hd8000_ _hd79737995_))
                                     (let ((_body8002_ _tl79747997_))
                                       (if (gx#core-expand-let-bind? _hd8000_)
                                           (let ((_expressions8004_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8000_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8000_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8000_
                                                                _expressions8004_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7965_
                              _body8002_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7965_))))
                                              gx#current-expander-context
                                              (let ((__obj9080
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9080)
                                                  __obj9080))))
                                           (_E79687980_))))))
                               (_E79687980_))))
                       (_E79687980_)))))
            (let () (_E79678007_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7908
      (lambda (_stx7910_ _form7911_)
        (let ((_e79127922_ _stx7910_))
          (let ((_E79147926_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79127922_))))
            (let ((_E79137951_
                   (lambda ()
                     (if (gx#stx-pair? _e79127922_)
                         (let ((_e79157930_ (gx#syntax-e _e79127922_)))
                           (let ((_hd79167933_ (##car _e79157930_))
                                 (_tl79177935_ (##cdr _e79157930_)))
                             (if (gx#stx-pair? _tl79177935_)
                                 (let ((_e79187938_
                                        (gx#syntax-e _tl79177935_)))
                                   (let ((_hd79197941_ (##car _e79187938_))
                                         (_tl79207943_ (##cdr _e79187938_)))
                                     (let ((_hd7946_ _hd79197941_))
                                       (let ((_body7948_ _tl79207943_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7946_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7946_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7911_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7946_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7946_))
                       (cons (gx#core-expand-local-block _stx7910_ _body7948_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7910_))))
                                              gx#current-expander-context
                                              (let ((__obj9081
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9081)
                                                  __obj9081)))
                                             (_E79147926_))))))
                                 (_E79147926_))))
                         (_E79147926_)))))
              (let () (_E79137951_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7958_)
          (let ((_form7960_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7908
             _stx7958_
             _form7960_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9091_
          (let ((_g9090_ (length _g9091_)))
            (cond ((fx= _g9090_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9091_))
                  ((fx= _g9090_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7908
                          _g9091_))
                  (else (error "No clause matching arguments" _g9091_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7907_)
      (gx#core-expand-letrec-values%__opt-lambda7908
       _stx7907_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7864_)
      (if (gx#stx-list? _stx7864_)
          (gx#stx-andmap
           (lambda (_bind7866_)
             (let ((_e78677877_ _bind7866_))
               (let ((_E78697881_ (lambda () '#f)))
                 (let ((_E78687903_
                        (lambda ()
                          (if (gx#stx-pair? _e78677877_)
                              (let ((_e78707885_ (gx#syntax-e _e78677877_)))
                                (let ((_hd78717888_ (##car _e78707885_))
                                      (_tl78727890_ (##cdr _e78707885_)))
                                  (let ((_hd7893_ _hd78717888_))
                                    (if (gx#stx-pair? _tl78727890_)
                                        (let ((_e78737895_
                                               (gx#syntax-e _tl78727890_)))
                                          (let ((_hd78747898_
                                                 (##car _e78737895_))
                                                (_tl78757900_
                                                 (##cdr _e78737895_)))
                                            (if (gx#stx-null? _tl78757900_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7893_)
                                                    (_E78697881_))
                                                (_E78697881_))))
                                        (_E78697881_)))))
                              (_E78697881_)))))
                   (let () (_E78687903_))))))
           _stx7864_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7823_)
      (let ((_e78247834_ _bind7823_))
        (let ((_E78267838_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78247834_))))
          (let ((_E78257860_
                 (lambda ()
                   (if (gx#stx-pair? _e78247834_)
                       (let ((_e78277842_ (gx#syntax-e _e78247834_)))
                         (let ((_hd78287845_ (##car _e78277842_))
                               (_tl78297847_ (##cdr _e78277842_)))
                           (if (gx#stx-pair? _tl78297847_)
                               (let ((_e78307850_ (gx#syntax-e _tl78297847_)))
                                 (let ((_hd78317853_ (##car _e78307850_))
                                       (_tl78327855_ (##cdr _e78307850_)))
                                   (let ((_expr7858_ _hd78317853_))
                                     (if (gx#stx-null? _tl78327855_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7858_)
                                             (_E78267838_))
                                         (_E78267838_)))))
                               (_E78267838_))))
                       (_E78267838_)))))
            (let () (_E78257860_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7782_)
      (let ((_e77837793_ _bind7782_))
        (let ((_E77857797_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77837793_))))
          (let ((_E77847819_
                 (lambda ()
                   (if (gx#stx-pair? _e77837793_)
                       (let ((_e77867801_ (gx#syntax-e _e77837793_)))
                         (let ((_hd77877804_ (##car _e77867801_))
                               (_tl77887806_ (##cdr _e77867801_)))
                           (let ((_hd7809_ _hd77877804_))
                             (if (gx#stx-pair? _tl77887806_)
                                 (let ((_e77897811_
                                        (gx#syntax-e _tl77887806_)))
                                   (let ((_hd77907814_ (##car _e77897811_))
                                         (_tl77917816_ (##cdr _e77897811_)))
                                     (if (gx#stx-null? _tl77917816_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7809_)
                                             (_E77857797_))
                                         (_E77857797_))))
                                 (_E77857797_)))))
                       (_E77857797_)))))
            (let () (_E77847819_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7740_ _expr7741_)
      (let ((_e77427752_ _bind7740_))
        (let ((_E77447756_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77427752_))))
          (let ((_E77437778_
                 (lambda ()
                   (if (gx#stx-pair? _e77427752_)
                       (let ((_e77457760_ (gx#syntax-e _e77427752_)))
                         (let ((_hd77467763_ (##car _e77457760_))
                               (_tl77477765_ (##cdr _e77457760_)))
                           (let ((_hd7768_ _hd77467763_))
                             (if (gx#stx-pair? _tl77477765_)
                                 (let ((_e77487770_
                                        (gx#syntax-e _tl77477765_)))
                                   (let ((_hd77497773_ (##car _e77487770_))
                                         (_tl77507775_ (##cdr _e77487770_)))
                                     (if (gx#stx-null? _tl77507775_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7768_)
                                                   (cons _expr7741_ '()))
                                             (_E77447756_))
                                         (_E77447756_))))
                                 (_E77447756_)))))
                       (_E77447756_)))))
            (let () (_E77437778_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7694_)
      (let ((_e76957705_ _stx7694_))
        (let ((_E76977709_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76957705_))))
          (let ((_E76967736_
                 (lambda ()
                   (if (gx#stx-pair? _e76957705_)
                       (let ((_e76987713_ (gx#syntax-e _e76957705_)))
                         (let ((_hd76997716_ (##car _e76987713_))
                               (_tl77007718_ (##cdr _e76987713_)))
                           (if (gx#stx-pair? _tl77007718_)
                               (let ((_e77017721_ (gx#syntax-e _tl77007718_)))
                                 (let ((_hd77027724_ (##car _e77017721_))
                                       (_tl77037726_ (##cdr _e77017721_)))
                                   (let ((_hd7729_ _hd77027724_))
                                     (let ((_body7731_ _tl77037726_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7729_)
                                           (let ((_expanders7733_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7729_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7729_
                                                   _expanders7733_)
                                                  (gx#core-expand-local-block
                                                   _stx7694_
                                                   _body7731_)))
                                              gx#current-expander-context
                                              (let ((__obj9082
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9082)
                                                  __obj9082))))
                                           (_E76977709_))))))
                               (_E76977709_))))
                       (_E76977709_)))))
            (let () (_E76967736_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7643_)
      (let ((_e76447654_ _stx7643_))
        (let ((_E76467658_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76447654_))))
          (let ((_E76457690_
                 (lambda ()
                   (if (gx#stx-pair? _e76447654_)
                       (let ((_e76477662_ (gx#syntax-e _e76447654_)))
                         (let ((_hd76487665_ (##car _e76477662_))
                               (_tl76497667_ (##cdr _e76477662_)))
                           (if (gx#stx-pair? _tl76497667_)
                               (let ((_e76507670_ (gx#syntax-e _tl76497667_)))
                                 (let ((_hd76517673_ (##car _e76507670_))
                                       (_tl76527675_ (##cdr _e76507670_)))
                                   (let ((_hd7678_ _hd76517673_))
                                     (let ((_body7680_ _tl76527675_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7678_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7678_
                                                 (make-list
                                                  (gx#stx-length _hd7678_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76827685_
                                                          _g76837687_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7500
                                                    _g76827685_
                                                    _g76837687_
                                                    '#t))
                                                 _hd7678_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7678_))
                                                (gx#core-expand-local-block
                                                 _stx7643_
                                                 _body7680_)))
                                            gx#current-expander-context
                                            (let ((__obj9083
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9083)
                                                __obj9083)))
                                           (_E76467658_))))))
                               (_E76467658_))))
                       (_E76467658_)))))
            (let () (_E76457690_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7600_)
      (if (gx#stx-list? _stx7600_)
          (gx#stx-andmap
           (lambda (_bind7602_)
             (let ((_e76037613_ _bind7602_))
               (let ((_E76057617_ (lambda () '#f)))
                 (let ((_E76047639_
                        (lambda ()
                          (if (gx#stx-pair? _e76037613_)
                              (let ((_e76067621_ (gx#syntax-e _e76037613_)))
                                (let ((_hd76077624_ (##car _e76067621_))
                                      (_tl76087626_ (##cdr _e76067621_)))
                                  (let ((_hd7629_ _hd76077624_))
                                    (if (gx#stx-pair? _tl76087626_)
                                        (let ((_e76097631_
                                               (gx#syntax-e _tl76087626_)))
                                          (let ((_hd76107634_
                                                 (##car _e76097631_))
                                                (_tl76117636_
                                                 (##cdr _e76097631_)))
                                            (if (gx#stx-null? _tl76117636_)
                                                (if '#t
                                                    (gx#identifier? _hd7629_)
                                                    (_E76057617_))
                                                (_E76057617_))))
                                        (_E76057617_)))))
                              (_E76057617_)))))
                   (let () (_E76047639_))))))
           _stx7600_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7557_)
      (let ((_e75587568_ _bind7557_))
        (let ((_E75607572_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75587568_))))
          (let ((_E75597596_
                 (lambda ()
                   (if (gx#stx-pair? _e75587568_)
                       (let ((_e75617576_ (gx#syntax-e _e75587568_)))
                         (let ((_hd75627579_ (##car _e75617576_))
                               (_tl75637581_ (##cdr _e75617576_)))
                           (if (gx#stx-pair? _tl75637581_)
                               (let ((_e75647584_ (gx#syntax-e _tl75637581_)))
                                 (let ((_hd75657587_ (##car _e75647584_))
                                       (_tl75667589_ (##cdr _e75647584_)))
                                   (let ((_expr7592_ _hd75657587_))
                                     (if (gx#stx-null? _tl75667589_)
                                         (if '#t
                                             (let ((_g9092_ (gx#core-expand-expression+1
                                                             _expr7592_)))
                                               (begin
                                                 (let ((_g9093_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9093_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9093_)))
                                                 (let ((_e7594_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9092_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7594_)))
                                             (_E75607572_))
                                         (_E75607572_)))))
                               (_E75607572_))))
                       (_E75607572_)))))
            (let () (_E75597596_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7500
      (lambda (_bind7502_ _e7503_ _rebind?7504_)
        (let ((_e75057515_ _bind7502_))
          (let ((_E75077519_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75057515_))))
            (let ((_E75067541_
                   (lambda ()
                     (if (gx#stx-pair? _e75057515_)
                         (let ((_e75087523_ (gx#syntax-e _e75057515_)))
                           (let ((_hd75097526_ (##car _e75087523_))
                                 (_tl75107528_ (##cdr _e75087523_)))
                             (let ((_id7531_ _hd75097526_))
                               (if (gx#stx-pair? _tl75107528_)
                                   (let ((_e75117533_
                                          (gx#syntax-e _tl75107528_)))
                                     (let ((_hd75127536_ (##car _e75117533_))
                                           (_tl75137538_ (##cdr _e75117533_)))
                                       (if (gx#stx-null? _tl75137538_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7531_
                                                _e7503_
                                                _rebind?7504_)
                                               (_E75077519_))
                                           (_E75077519_))))
                                   (_E75077519_)))))
                         (_E75077519_)))))
              (let () (_E75067541_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7548_ _e7549_)
          (let ((_rebind?7551_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7500
             _bind7548_
             _e7549_
             _rebind?7551_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9095_
          (let ((_g9094_ (length _g9095_)))
            (cond ((fx= _g9094_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9095_))
                  ((fx= _g9094_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7500
                          _g9095_))
                  (else (error "No clause matching arguments" _g9095_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7460_)
      (let ((_e74617471_ _stx7460_))
        (let ((_E74637475_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74617471_))))
          (let ((_E74627497_
                 (lambda ()
                   (if (gx#stx-pair? _e74617471_)
                       (let ((_e74647479_ (gx#syntax-e _e74617471_)))
                         (let ((_hd74657482_ (##car _e74647479_))
                               (_tl74667484_ (##cdr _e74647479_)))
                           (if (gx#stx-pair? _tl74667484_)
                               (let ((_e74677487_ (gx#syntax-e _tl74667484_)))
                                 (let ((_hd74687490_ (##car _e74677487_))
                                       (_tl74697492_ (##cdr _e74677487_)))
                                   (let ((_expr7495_ _hd74687490_))
                                     (if (gx#stx-null? _tl74697492_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7495_)
                                             (_E74637475_))
                                         (_E74637475_)))))
                               (_E74637475_))))
                       (_E74637475_)))))
            (let () (_E74627497_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7419_)
      (let ((_e74207430_ _stx7419_))
        (let ((_E74227434_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74207430_))))
          (let ((_E74217456_
                 (lambda ()
                   (if (gx#stx-pair? _e74207430_)
                       (let ((_e74237438_ (gx#syntax-e _e74207430_)))
                         (let ((_hd74247441_ (##car _e74237438_))
                               (_tl74257443_ (##cdr _e74237438_)))
                           (if (gx#stx-pair? _tl74257443_)
                               (let ((_e74267446_ (gx#syntax-e _tl74257443_)))
                                 (let ((_hd74277449_ (##car _e74267446_))
                                       (_tl74287451_ (##cdr _e74267446_)))
                                   (let ((_e7454_ _hd74277449_))
                                     (if (gx#stx-null? _tl74287451_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7454_)
                                                          '()))
                                              (gx#stx-source _stx7419_))
                                             (_E74227434_))
                                         (_E74227434_)))))
                               (_E74227434_))))
                       (_E74227434_)))))
            (let () (_E74217456_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7378_)
      (let ((_e73797389_ _stx7378_))
        (let ((_E73817393_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73797389_))))
          (let ((_E73807415_
                 (lambda ()
                   (if (gx#stx-pair? _e73797389_)
                       (let ((_e73827397_ (gx#syntax-e _e73797389_)))
                         (let ((_hd73837400_ (##car _e73827397_))
                               (_tl73847402_ (##cdr _e73827397_)))
                           (if (gx#stx-pair? _tl73847402_)
                               (let ((_e73857405_ (gx#syntax-e _tl73847402_)))
                                 (let ((_hd73867408_ (##car _e73857405_))
                                       (_tl73877410_ (##cdr _e73857405_)))
                                   (let ((_e7413_ _hd73867408_))
                                     (if (gx#stx-null? _tl73877410_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7413_)
                                                          '()))
                                              (gx#stx-source _stx7378_))
                                             (_E73817393_))
                                         (_E73817393_)))))
                               (_E73817393_))))
                       (_E73817393_)))))
            (let () (_E73807415_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7335_)
      (let ((_e73367346_ _stx7335_))
        (let ((_E73387350_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73367346_))))
          (let ((_E73377374_
                 (lambda ()
                   (if (gx#stx-pair? _e73367346_)
                       (let ((_e73397354_ (gx#syntax-e _e73367346_)))
                         (let ((_hd73407357_ (##car _e73397354_))
                               (_tl73417359_ (##cdr _e73397354_)))
                           (if (gx#stx-pair? _tl73417359_)
                               (let ((_e73427362_ (gx#syntax-e _tl73417359_)))
                                 (let ((_hd73437365_ (##car _e73427362_))
                                       (_tl73447367_ (##cdr _e73427362_)))
                                   (let ((_rator7370_ _hd73437365_))
                                     (let ((_args7372_ _tl73447367_))
                                       (if (gx#stx-list? _args7372_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7370_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7372_))
                                            (gx#stx-source _stx7335_))
                                           (_E73387350_))))))
                               (_E73387350_))))
                       (_E73387350_)))))
            (let () (_E73377374_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7268_)
      (let ((_e72697285_ _stx7268_))
        (let ((_E72717289_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72697285_))))
          (let ((_E72707331_
                 (lambda ()
                   (if (gx#stx-pair? _e72697285_)
                       (let ((_e72727293_ (gx#syntax-e _e72697285_)))
                         (let ((_hd72737296_ (##car _e72727293_))
                               (_tl72747298_ (##cdr _e72727293_)))
                           (if (gx#stx-pair? _tl72747298_)
                               (let ((_e72757301_ (gx#syntax-e _tl72747298_)))
                                 (let ((_hd72767304_ (##car _e72757301_))
                                       (_tl72777306_ (##cdr _e72757301_)))
                                   (let ((_test7309_ _hd72767304_))
                                     (if (gx#stx-pair? _tl72777306_)
                                         (let ((_e72787311_
                                                (gx#syntax-e _tl72777306_)))
                                           (let ((_hd72797314_
                                                  (##car _e72787311_))
                                                 (_tl72807316_
                                                  (##cdr _e72787311_)))
                                             (let ((_K7319_ _hd72797314_))
                                               (if (gx#stx-pair? _tl72807316_)
                                                   (let ((_e72817321_
                                                          (gx#syntax-e
                                                           _tl72807316_)))
                                                     (let ((_hd72827324_
                                                            (##car _e72817321_))
                                                           (_tl72837326_
                                                            (##cdr _e72817321_)))
                                                       (let ((_E7329_ _hd72827324_))
                                                         (if (gx#stx-null?
                                                              _tl72837326_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7309_)
                                      (cons (gx#core-expand-expression _K7319_)
                                            (cons (gx#core-expand-expression
                                                   _E7329_)
                                                  '()))))
                          (gx#stx-source _stx7268_))
                         (_E72717289_))
                     (_E72717289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72717289_)))))
                                         (_E72717289_)))))
                               (_E72717289_))))
                       (_E72717289_)))))
            (let () (_E72707331_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7227_)
      (let ((_e72287238_ _stx7227_))
        (let ((_E72307242_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72287238_))))
          (let ((_E72297264_
                 (lambda ()
                   (if (gx#stx-pair? _e72287238_)
                       (let ((_e72317246_ (gx#syntax-e _e72287238_)))
                         (let ((_hd72327249_ (##car _e72317246_))
                               (_tl72337251_ (##cdr _e72317246_)))
                           (if (gx#stx-pair? _tl72337251_)
                               (let ((_e72347254_ (gx#syntax-e _tl72337251_)))
                                 (let ((_hd72357257_ (##car _e72347254_))
                                       (_tl72367259_ (##cdr _e72347254_)))
                                   (let ((_id7262_ _hd72357257_))
                                     (if (gx#stx-null? _tl72367259_)
                                         (if (gx#core-runtime-ref? _id7262_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7262_
                                                           _stx7227_)
                                                          '()))
                                              (gx#stx-source _stx7227_))
                                             (_E72307242_))
                                         (_E72307242_)))))
                               (_E72307242_))))
                       (_E72307242_)))))
            (let () (_E72297264_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7173_)
      (let ((_e71747187_ _stx7173_))
        (let ((_E71767191_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71747187_))))
          (let ((_E71757223_
                 (lambda ()
                   (if (gx#stx-pair? _e71747187_)
                       (let ((_e71777195_ (gx#syntax-e _e71747187_)))
                         (let ((_hd71787198_ (##car _e71777195_))
                               (_tl71797200_ (##cdr _e71777195_)))
                           (if (gx#stx-pair? _tl71797200_)
                               (let ((_e71807203_ (gx#syntax-e _tl71797200_)))
                                 (let ((_hd71817206_ (##car _e71807203_))
                                       (_tl71827208_ (##cdr _e71807203_)))
                                   (let ((_id7211_ _hd71817206_))
                                     (if (gx#stx-pair? _tl71827208_)
                                         (let ((_e71837213_
                                                (gx#syntax-e _tl71827208_)))
                                           (let ((_hd71847216_
                                                  (##car _e71837213_))
                                                 (_tl71857218_
                                                  (##cdr _e71837213_)))
                                             (let ((_expr7221_ _hd71847216_))
                                               (if (gx#stx-null? _tl71857218_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7211_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7211_
                             _stx7173_)
                            (cons (gx#core-expand-expression _expr7221_) '())))
                (gx#stx-source _stx7173_))
               (_E71767191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71767191_)))))
                                         (_E71767191_)))))
                               (_E71767191_))))
                       (_E71767191_)))))
            (let () (_E71757223_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7021_)
      (let ((_generate7023_
             (lambda (_body7053_)
               ((letrec ((_lp7055_
                          (lambda (_rest7057_ _ns7058_ _r7059_)
                            (let ((_e70607075_ _rest7057_))
                              (let ((_E70737079_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70607075_))))
                                (let ((_E70697083_
                                       (lambda ()
                                         (if (gx#stx-null? _e70607075_)
                                             (if '#t
                                                 (reverse _r7059_)
                                                 (_E70737079_))
                                             (_E70737079_)))))
                                  (let ((_E70627140_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70607075_)
                                               (let ((_e70707087_
                                                      (gx#syntax-e
                                                       _e70607075_)))
                                                 (let ((_hd70717090_
                                                        (##car _e70707087_))
                                                       (_tl70727092_
                                                        (##cdr _e70707087_)))
                                                   (let ((_hd7095_
                                                          _hd70717090_))
                                                     (let ((_rest7097_
                                                            _tl70727092_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7095_)
                                                               (_lp7055_
                                                                _rest7097_
                                                                _ns7058_
                                                                (cons (cons _hd7095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7058_
                                              (gx#stx-identifier
                                               _hd7095_
                                               _ns7058_
                                               '"#"
                                               _hd7095_)
                                              _hd7095_)
                                          '()))
                              _r7059_))
                       (let ((_e70987108_ _hd7095_))
                         (let ((_E71007112_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e70987108_))))
                           (let ((_E70997136_
                                  (lambda ()
                                    (if (gx#stx-pair? _e70987108_)
                                        (let ((_e71017116_
                                               (gx#syntax-e _e70987108_)))
                                          (let ((_hd71027119_
                                                 (##car _e71017116_))
                                                (_tl71037121_
                                                 (##cdr _e71017116_)))
                                            (let ((_id7124_ _hd71027119_))
                                              (if (gx#stx-pair? _tl71037121_)
                                                  (let ((_e71047126_
                                                         (gx#syntax-e
                                                          _tl71037121_)))
                                                    (let ((_hd71057129_
                                                           (##car _e71047126_))
                                                          (_tl71067131_
                                                           (##cdr _e71047126_)))
                                                      (let ((_eid7134_
                                                             _hd71057129_))
                                                        (if (gx#stx-null?
                                                             _tl71067131_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7124_)
                            (gx#identifier? _eid7134_)
                            '#f)
                        (_lp7055_
                         _rest7097_
                         _ns7058_
                         (cons (cons _id7124_ (cons _eid7134_ '())) _r7059_))
                        (_E71007112_))
                    (_E71007112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71007112_)))))
                                        (_E71007112_)))))
                             (let () (_E70997136_))))))
                   (_E70697083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70697083_)))))
                                    (let ((_E70617169_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70607075_)
                                                 (let ((_e70637144_
                                                        (gx#syntax-e
                                                         _e70607075_)))
                                                   (let ((_hd70647147_
                                                          (##car _e70637144_))
                                                         (_tl70657149_
                                                          (##cdr _e70637144_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70647147_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70657149_)
                                                             (let ((_e70667152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70657149_)))
                       (let ((_hd70677155_ (##car _e70667152_))
                             (_tl70687157_ (##cdr _e70667152_)))
                         (let ((_ns7160_ _hd70677155_))
                           (let ((_rest7162_ _tl70687157_))
                             (if '#t
                                 (let ((_ns7167_
                                        (if (gx#identifier? _ns7160_)
                                            (symbol->string
                                             (gx#stx-e _ns7160_))
                                            (if (let ((_$e7164_
                                                       (gx#stx-string?
                                                        _ns7160_)))
                                                  (if _$e7164_
                                                      _$e7164_
                                                      (gx#stx-false?
                                                       _ns7160_)))
                                                (gx#stx-e _ns7160_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7021_
                                                 _ns7160_)))))
                                   (_lp7055_ _rest7162_ _ns7167_ _r7059_))
                                 (_E70627140_))))))
                     (_E70627140_))
                 (_E70627140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70627140_)))))
                                      (let () (_E70617169_))))))))))
                  _lp7055_)
                _body7053_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70247031_ _stx7021_))
          (let ((_E70267035_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70247031_))))
            (let ((_E70257049_
                   (lambda ()
                     (if (gx#stx-pair? _e70247031_)
                         (let ((_e70277039_ (gx#syntax-e _e70247031_)))
                           (let ((_hd70287042_ (##car _e70277039_))
                                 (_tl70297044_ (##cdr _e70277039_)))
                             (let ((_body7047_ _tl70297044_))
                               (if (gx#stx-list? _body7047_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7023_ _body7047_))
                                   (_E70267035_)))))
                         (_E70267035_)))))
              (let () (_E70257049_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6967_)
      (let ((_e69686981_ _stx6967_))
        (let ((_E69706985_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69686981_))))
          (let ((_E69697017_
                 (lambda ()
                   (if (gx#stx-pair? _e69686981_)
                       (let ((_e69716989_ (gx#syntax-e _e69686981_)))
                         (let ((_hd69726992_ (##car _e69716989_))
                               (_tl69736994_ (##cdr _e69716989_)))
                           (if (gx#stx-pair? _tl69736994_)
                               (let ((_e69746997_ (gx#syntax-e _tl69736994_)))
                                 (let ((_hd69757000_ (##car _e69746997_))
                                       (_tl69767002_ (##cdr _e69746997_)))
                                   (let ((_hd7005_ _hd69757000_))
                                     (if (gx#stx-pair? _tl69767002_)
                                         (let ((_e69777007_
                                                (gx#syntax-e _tl69767002_)))
                                           (let ((_hd69787010_
                                                  (##car _e69777007_))
                                                 (_tl69797012_
                                                  (##cdr _e69777007_)))
                                             (let ((_expr7015_ _hd69787010_))
                                               (if (gx#stx-null? _tl69797012_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7005_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7005_)
                           (cons _expr7015_ '())))
               (_E69706985_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69706985_)))))
                                         (_E69706985_)))))
                               (_E69706985_))))
                       (_E69706985_)))))
            (let () (_E69697017_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6913_)
      (let ((_e69146927_ _stx6913_))
        (let ((_E69166931_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69146927_))))
          (let ((_E69156963_
                 (lambda ()
                   (if (gx#stx-pair? _e69146927_)
                       (let ((_e69176935_ (gx#syntax-e _e69146927_)))
                         (let ((_hd69186938_ (##car _e69176935_))
                               (_tl69196940_ (##cdr _e69176935_)))
                           (if (gx#stx-pair? _tl69196940_)
                               (let ((_e69206943_ (gx#syntax-e _tl69196940_)))
                                 (let ((_hd69216946_ (##car _e69206943_))
                                       (_tl69226948_ (##cdr _e69206943_)))
                                   (let ((_hd6951_ _hd69216946_))
                                     (if (gx#stx-pair? _tl69226948_)
                                         (let ((_e69236953_
                                                (gx#syntax-e _tl69226948_)))
                                           (let ((_hd69246956_
                                                  (##car _e69236953_))
                                                 (_tl69256958_
                                                  (##cdr _e69236953_)))
                                             (let ((_expr6961_ _hd69246956_))
                                               (if (gx#stx-null? _tl69256958_)
                                                   (if (gx#identifier?
                                                        _hd6951_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6961_ '())))
               (_E69166931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69166931_)))))
                                         (_E69166931_)))))
                               (_E69166931_))))
                       (_E69166931_)))))
            (let () (_E69156963_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6859_)
      (let ((_e68606873_ _stx6859_))
        (let ((_E68626877_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68606873_))))
          (let ((_E68616909_
                 (lambda ()
                   (if (gx#stx-pair? _e68606873_)
                       (let ((_e68636881_ (gx#syntax-e _e68606873_)))
                         (let ((_hd68646884_ (##car _e68636881_))
                               (_tl68656886_ (##cdr _e68636881_)))
                           (if (gx#stx-pair? _tl68656886_)
                               (let ((_e68666889_ (gx#syntax-e _tl68656886_)))
                                 (let ((_hd68676892_ (##car _e68666889_))
                                       (_tl68686894_ (##cdr _e68666889_)))
                                   (let ((_id6897_ _hd68676892_))
                                     (if (gx#stx-pair? _tl68686894_)
                                         (let ((_e68696899_
                                                (gx#syntax-e _tl68686894_)))
                                           (let ((_hd68706902_
                                                  (##car _e68696899_))
                                                 (_tl68716904_
                                                  (##cdr _e68696899_)))
                                             (let ((_alias-id6907_
                                                    _hd68706902_))
                                               (if (gx#stx-null? _tl68716904_)
                                                   (if (if (gx#identifier?
                                                            _id6897_)
                                                           (gx#identifier?
                                                            _alias-id6907_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6907_ '())))
               (_E68626877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68626877_)))))
                                         (_E68626877_)))))
                               (_E68626877_))))
                       (_E68626877_)))))
            (let () (_E68616909_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6816_)
      (let ((_e68176827_ _stx6816_))
        (let ((_E68196831_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68176827_))))
          (let ((_E68186855_
                 (lambda ()
                   (if (gx#stx-pair? _e68176827_)
                       (let ((_e68206835_ (gx#syntax-e _e68176827_)))
                         (let ((_hd68216838_ (##car _e68206835_))
                               (_tl68226840_ (##cdr _e68206835_)))
                           (if (gx#stx-pair? _tl68226840_)
                               (let ((_e68236843_ (gx#syntax-e _tl68226840_)))
                                 (let ((_hd68246846_ (##car _e68236843_))
                                       (_tl68256848_ (##cdr _e68236843_)))
                                   (let ((_hd6851_ _hd68246846_))
                                     (let ((_body6853_ _tl68256848_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6851_)
                                               (if (gx#stx-list? _body6853_)
                                                   (not (gx#stx-null?
                                                         _body6853_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6851_)
                                            _body6853_)
                                           (_E68196831_))))))
                               (_E68196831_))))
                       (_E68196831_)))))
            (let () (_E68186855_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6752_)
      (let ((_generate6754_
             (lambda (_clause6784_)
               (let ((_e67856792_ _clause6784_))
                 (let ((_E67876796_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6752_
                           _clause6784_))))
                   (let ((_E67866812_
                          (lambda ()
                            (if (gx#stx-pair? _e67856792_)
                                (let ((_e67886800_ (gx#syntax-e _e67856792_)))
                                  (let ((_hd67896803_ (##car _e67886800_))
                                        (_tl67906805_ (##cdr _e67886800_)))
                                    (let ((_hd6808_ _hd67896803_))
                                      (let ((_body6810_ _tl67906805_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6808_)
                                                (if (gx#stx-list? _body6810_)
                                                    (not (gx#stx-null?
                                                          _body6810_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6808_)
                                                   _body6810_)
                                             (gx#stx-source _clause6784_))
                                            (_E67876796_))))))
                                (_E67876796_)))))
                     (let () (_E67866812_))))))))
        (let ((_e67556762_ _stx6752_))
          (let ((_E67576766_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67556762_))))
            (let ((_E67566780_
                   (lambda ()
                     (if (gx#stx-pair? _e67556762_)
                         (let ((_e67586770_ (gx#syntax-e _e67556762_)))
                           (let ((_hd67596773_ (##car _e67586770_))
                                 (_tl67606775_ (##cdr _e67586770_)))
                             (let ((_clauses6778_ _tl67606775_))
                               (if (gx#stx-list? _clauses6778_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6754_ _clauses6778_))
                                   (_E67576766_)))))
                         (_E67576766_)))))
              (let () (_E67566780_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6651
      (lambda (_stx6653_ _form6654_)
        (let ((_generate6656_
               (lambda (_bind6699_)
                 (let ((_e67006710_ _bind6699_))
                   (let ((_E67026714_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6653_
                             _bind6699_))))
                     (let ((_E67016738_
                            (lambda ()
                              (if (gx#stx-pair? _e67006710_)
                                  (let ((_e67036718_
                                         (gx#syntax-e _e67006710_)))
                                    (let ((_hd67046721_ (##car _e67036718_))
                                          (_tl67056723_ (##cdr _e67036718_)))
                                      (let ((_ids6726_ _hd67046721_))
                                        (if (gx#stx-pair? _tl67056723_)
                                            (let ((_e67066728_
                                                   (gx#syntax-e _tl67056723_)))
                                              (let ((_hd67076731_
                                                     (##car _e67066728_))
                                                    (_tl67086733_
                                                     (##cdr _e67066728_)))
                                                (let ((_expr6736_
                                                       _hd67076731_))
                                                  (if (gx#stx-null?
                                                       _tl67086733_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6726_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6726_)
                        (cons _expr6736_ '()))
                  (_E67026714_))
              (_E67026714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67026714_)))))
                                  (_E67026714_)))))
                       (let () (_E67016738_))))))))
          (let ((_e66576667_ _stx6653_))
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
                                   (let ((_e66636683_
                                          (gx#syntax-e _tl66626680_)))
                                     (let ((_hd66646686_ (##car _e66636683_))
                                           (_tl66656688_ (##cdr _e66636683_)))
                                       (let ((_hd6691_ _hd66646686_))
                                         (let ((_body6693_ _tl66656688_))
                                           (if (if (gx#stx-list? _hd6691_)
                                                   (if (gx#stx-list?
                                                        _body6693_)
                                                       (not (gx#stx-null?
                                                             _body6693_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6654_
                                                (gx#stx-map1
                                                 _generate6656_
                                                 _hd6691_)
                                                _body6693_)
                                               (_E66596671_))))))
                                   (_E66596671_))))
                           (_E66596671_)))))
                (let () (_E66586695_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6745_)
          (let ((_form6747_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6651
             _stx6745_
             _form6747_))))
      (define gx#macro-expand-let-values
        (lambda _g9097_
          (let ((_g9096_ (length _g9097_)))
            (cond ((fx= _g9096_ 1)
                   (apply gx#macro-expand-let-values__0 _g9097_))
                  ((fx= _g9096_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6651 _g9097_))
                  (else (error "No clause matching arguments" _g9097_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6650_)
      (gx#macro-expand-let-values__opt-lambda6651 _stx6650_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6648_)
      (gx#macro-expand-let-values__opt-lambda6651
       _stx6648_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6539_)
      (let ((_e65406566_ _stx6539_))
        (let ((_E65526570_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65406566_))))
          (let ((_E65426612_
                 (lambda ()
                   (if (gx#stx-pair? _e65406566_)
                       (let ((_e65536574_ (gx#syntax-e _e65406566_)))
                         (let ((_hd65546577_ (##car _e65536574_))
                               (_tl65556579_ (##cdr _e65536574_)))
                           (if (gx#stx-pair? _tl65556579_)
                               (let ((_e65566582_ (gx#syntax-e _tl65556579_)))
                                 (let ((_hd65576585_ (##car _e65566582_))
                                       (_tl65586587_ (##cdr _e65566582_)))
                                   (let ((_test6590_ _hd65576585_))
                                     (if (gx#stx-pair? _tl65586587_)
                                         (let ((_e65596592_
                                                (gx#syntax-e _tl65586587_)))
                                           (let ((_hd65606595_
                                                  (##car _e65596592_))
                                                 (_tl65616597_
                                                  (##cdr _e65596592_)))
                                             (let ((_K6600_ _hd65606595_))
                                               (if (gx#stx-pair? _tl65616597_)
                                                   (let ((_e65626602_
                                                          (gx#syntax-e
                                                           _tl65616597_)))
                                                     (let ((_hd65636605_
                                                            (##car _e65626602_))
                                                           (_tl65646607_
                                                            (##cdr _e65626602_)))
                                                       (let ((_E6610_ _hd65636605_))
                                                         (if (gx#stx-null?
                                                              _tl65646607_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6590_ _K6600_ _E6610_)
                         (_E65526570_))
                     (_E65526570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65526570_)))))
                                         (_E65526570_)))))
                               (_E65526570_))))
                       (_E65526570_)))))
            (let ((_E65416644_
                   (lambda ()
                     (if (gx#stx-pair? _e65406566_)
                         (let ((_e65436616_ (gx#syntax-e _e65406566_)))
                           (let ((_hd65446619_ (##car _e65436616_))
                                 (_tl65456621_ (##cdr _e65436616_)))
                             (if (gx#stx-pair? _tl65456621_)
                                 (let ((_e65466624_
                                        (gx#syntax-e _tl65456621_)))
                                   (let ((_hd65476627_ (##car _e65466624_))
                                         (_tl65486629_ (##cdr _e65466624_)))
                                     (let ((_test6632_ _hd65476627_))
                                       (if (gx#stx-pair? _tl65486629_)
                                           (let ((_e65496634_
                                                  (gx#syntax-e _tl65486629_)))
                                             (let ((_hd65506637_
                                                    (##car _e65496634_))
                                                   (_tl65516639_
                                                    (##cdr _e65496634_)))
                                               (let ((_K6642_ _hd65506637_))
                                                 (if (gx#stx-null?
                                                      _tl65516639_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6632_
                                                          _K6642_
                                                          '#!void)
                                                         (_E65426612_))
                                                     (_E65426612_)))))
                                           (_E65426612_)))))
                                 (_E65426612_))))
                         (_E65426612_)))))
              (let () (_E65416644_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6527_ _yid6528_)
      (let ((_xe6530_ (gx#resolve-identifier__0 _xid6527_))
            (_ye6531_ (gx#resolve-identifier__0 _yid6528_)))
        (if (if _xe6530_ _ye6531_ '#f)
            (let ((_$e6533_ (eq? _xe6530_ _ye6531_)))
              (if _$e6533_
                  _$e6533_
                  (if (##structure-instance-of? _xe6530_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6531_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6530_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6531_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6536_ _xe6530_)) (if _$e6536_ _$e6536_ _ye6531_))
                '#f
                (gx#stx-eq? _xid6527_ _yid6528_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6511_ _yid6512_)
      (let ((_context6514_
             (lambda (_e6525_)
               (if (##structure-direct-instance-of?
                    _e6525_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6525_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6515_
               (lambda (_e6523_)
                 (if (symbol? _e6523_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6523_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6523_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6523_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6516_
                 (lambda (_e6521_)
                   (if (symbol? _e6521_)
                       _e6521_
                       (gx#syntax-local-unwrap _e6521_)))))
            (let ((_x6518_ (_unwrap6516_ _xid6511_))
                  (_y6519_ (_unwrap6516_ _yid6512_)))
              (if (gx#stx-eq? _x6518_ _y6519_)
                  (if (eq? (_context6514_ _x6518_) (_context6514_ _y6519_))
                      (andmap eq? (_marks6515_ _x6518_) (_marks6515_ _y6519_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6509_)
      (if (gx#identifier? _stx6509_) (gx#core-identifier=? _stx6509_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6507_)
      (if (gx#identifier? _stx6507_)
          (gx#core-identifier=? _stx6507_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6505_)
      (if (gx#identifier? _x6505_)
          (if (not (gx#underscore? _x6505_)) _x6505_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6449
      (lambda (_stx6451_ _where6452_)
        ((letrec ((_lp6454_
                   (lambda (_rest6456_)
                     (let ((_rest64576465_ _rest6456_))
                       (let ((_E64606469_
                              (lambda ()
                                (error '"No clause matching" _rest64576465_))))
                         (let ((_else64596473_ (lambda () '#t)))
                           (let ((_K64616483_
                                  (lambda (_rest6476_ _hd6477_)
                                    (if (not (gx#identifier? _hd6477_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6452_
                                         _hd6477_)
                                        (if (find (lambda (_g64786480_)
                                                    (gx#bound-identifier=?
                                                     _g64786480_
                                                     _hd6477_))
                                                  _rest6476_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6452_
                                             _hd6477_)
                                            (_lp6454_ _rest6476_))))))
                             (if (##pair? _rest64576465_)
                                 (let ((_hd64626486_ (##car _rest64576465_))
                                       (_tl64636488_ (##cdr _rest64576465_)))
                                   (let ((_hd6491_ _hd64626486_))
                                     (let ((_rest6493_ _tl64636488_))
                                       (_K64616483_ _rest6493_ _hd6491_))))
                                 (_else64596473_)))))))))
           _lp6454_)
         (gx#syntax->list _stx6451_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6498_)
          (let ((_where6500_ _stx6498_))
            (gx#check-duplicate-identifiers__opt-lambda6449
             _stx6498_
             _where6500_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9099_
          (let ((_g9098_ (length _g9099_)))
            (cond ((fx= _g9098_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9099_))
                  ((fx= _g9098_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6449
                          _g9099_))
                  (else (error "No clause matching arguments" _g9099_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6443_)
      (gx#stx-andmap
       (lambda (_x6445_)
         (let ((_$e6447_ (gx#identifier? _x6445_)))
           (if _$e6447_ _$e6447_ (gx#stx-false? _x6445_))))
       _stx6443_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6405
      (lambda (_stx6407_ _rebind?6408_ _phi6409_ _ctx6410_)
        (gx#stx-for-each1
         (lambda (_id6412_)
           (if (gx#identifier? _id6412_)
               (gx#core-bind-runtime!__opt-lambda6344
                _id6412_
                _rebind?6408_
                _phi6409_
                _ctx6410_)
               '#!void))
         _stx6407_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6417_)
          (let ((_rebind?6419_ '#f))
            (let ((_phi6421_ (gx#current-expander-phi)))
              (let ((_ctx6423_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6405
                 _stx6417_
                 _rebind?6419_
                 _phi6421_
                 _ctx6423_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6425_ _rebind?6426_)
          (let ((_phi6428_ (gx#current-expander-phi)))
            (let ((_ctx6430_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6405
               _stx6425_
               _rebind?6426_
               _phi6428_
               _ctx6430_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6432_ _rebind?6433_ _phi6434_)
          (let ((_ctx6436_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6405
             _stx6432_
             _rebind?6433_
             _phi6434_
             _ctx6436_))))
      (define gx#core-bind-values!
        (lambda _g9101_
          (let ((_g9100_ (length _g9101_)))
            (cond ((fx= _g9100_ 1) (apply gx#core-bind-values!__0 _g9101_))
                  ((fx= _g9100_ 2) (apply gx#core-bind-values!__1 _g9101_))
                  ((fx= _g9100_ 3) (apply gx#core-bind-values!__2 _g9101_))
                  ((fx= _g9100_ 4)
                   (apply gx#core-bind-values!__opt-lambda6405 _g9101_))
                  (else (error "No clause matching arguments" _g9101_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6402_)
      (gx#stx-map1
       (lambda (_x6404_)
         (if (gx#identifier? _x6404_) (gx#core-quote-syntax__0 _x6404_) '#f))
       _stx6402_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6395_)
      (if (gx#identifier? _stx6395_)
          (let ((_bind6397_ (gx#resolve-identifier__0 _stx6395_)))
            (let ((_$e6399_ (not _bind6397_)))
              (if _$e6399_
                  _$e6399_
                  (##structure-instance-of?
                   _bind6397_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6387_ _form6388_)
      (let ((_bind6390_ (gx#resolve-identifier__0 _id6387_)))
        (if (##structure-instance-of? _bind6390_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6387_)
            (if (not _bind6390_)
                (if (let ((_$e6392_
                           (gx#core-context-rebind?__opt-lambda4261
                            (gx#core-context-top__0))))
                      (if _$e6392_
                          _$e6392_
                          (gx#core-extern-symbol? (gx#stx-e _id6387_))))
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
        (lambda _g9103_
          (let ((_g9102_ (length _g9103_)))
            (cond ((fx= _g9102_ 1) (apply gx#core-bind-runtime!__0 _g9103_))
                  ((fx= _g9102_ 2) (apply gx#core-bind-runtime!__1 _g9103_))
                  ((fx= _g9102_ 3) (apply gx#core-bind-runtime!__2 _g9103_))
                  ((fx= _g9102_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6344 _g9103_))
                  (else (error "No clause matching arguments" _g9103_))))))))
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
        (lambda _g9105_
          (let ((_g9104_ (length _g9105_)))
            (cond ((fx= _g9104_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9105_))
                  ((fx= _g9104_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9105_))
                  ((fx= _g9104_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9105_))
                  ((fx= _g9104_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6299
                          _g9105_))
                  (else (error "No clause matching arguments" _g9105_))))))))
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
        (lambda _g9107_
          (let ((_g9106_ (length _g9107_)))
            (cond ((fx= _g9106_ 2) (apply gx#core-bind-extern!__0 _g9107_))
                  ((fx= _g9106_ 3) (apply gx#core-bind-extern!__1 _g9107_))
                  ((fx= _g9106_ 4) (apply gx#core-bind-extern!__2 _g9107_))
                  ((fx= _g9106_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6259 _g9107_))
                  (else (error "No clause matching arguments" _g9107_))))))))
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
        (lambda _g9109_
          (let ((_g9108_ (length _g9109_)))
            (cond ((fx= _g9108_ 2) (apply gx#core-bind-syntax!__0 _g9109_))
                  ((fx= _g9108_ 3) (apply gx#core-bind-syntax!__1 _g9109_))
                  ((fx= _g9108_ 4) (apply gx#core-bind-syntax!__2 _g9109_))
                  ((fx= _g9108_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6213 _g9109_))
                  (else (error "No clause matching arguments" _g9109_))))))))
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
        (lambda _g9111_
          (let ((_g9110_ (length _g9111_)))
            (cond ((fx= _g9110_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9111_))
                  ((fx= _g9110_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6196 _g9111_))
                  (else (error "No clause matching arguments" _g9111_))))))))
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
        (lambda _g9113_
          (let ((_g9112_ (length _g9113_)))
            (cond ((fx= _g9112_ 2) (apply gx#core-bind-alias!__0 _g9113_))
                  ((fx= _g9112_ 3) (apply gx#core-bind-alias!__1 _g9113_))
                  ((fx= _g9112_ 4) (apply gx#core-bind-alias!__2 _g9113_))
                  ((fx= _g9112_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6154 _g9113_))
                  (else (error "No clause matching arguments" _g9113_))))))))
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
        (lambda _g9115_
          (let ((_g9114_ (length _g9115_)))
            (cond ((fx= _g9114_ 1) (apply gx#make-binding-id__0 _g9115_))
                  ((fx= _g9114_ 2) (apply gx#make-binding-id__1 _g9115_))
                  ((fx= _g9114_ 3) (apply gx#make-binding-id__2 _g9115_))
                  ((fx= _g9114_ 4)
                   (apply gx#make-binding-id__opt-lambda6111 _g9115_))
                  (else (error "No clause matching arguments" _g9115_)))))))))
