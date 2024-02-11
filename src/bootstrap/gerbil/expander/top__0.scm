(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707620171)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152996_)
        (letrec ((_expand-special152998_
                  (lambda (_hd153000_ _K153001_ _rest153002_ _r153003_)
                    (_K153001_
                     _rest153002_
                     (cons (gx#core-expand-top _hd153000_) _r153003_)))))
          (gx#core-expand-block__0 _stx152996_ _expand-special152998_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152749_)
        (letrec ((_expand-special152751_
                  (lambda (_hd152871_ _K152872_ _rest152873_ _r152874_)
                    (let* ((_K152878_
                            (lambda (_e152876_)
                              (_K152872_
                               _rest152873_
                               (cons _e152876_ _r152874_))))
                           (_e152879152908_ _hd152871_)
                           (_E152903152912_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152879152908_)))
                           (_E152899152924_
                            (lambda ()
                              (if (gx#stx-pair? _e152879152908_)
                                  (let ((_e152904152916_
                                         (gx#syntax-e _e152879152908_)))
                                    (let ((_hd152905152919_
                                           (##car _e152904152916_))
                                          (_tl152906152921_
                                           (##cdr _e152904152916_)))
                                      (if (and (gx#identifier?
                                                _hd152905152919_)
                                               (gx#core-identifier=?
                                                _hd152905152919_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152878_
                                               (gx#core-expand-define-runtime%
                                                _hd152871_))
                                              (_E152903152912_))
                                          (_E152903152912_))))
                                  (_E152903152912_))))
                           (_E152895152936_
                            (lambda ()
                              (if (gx#stx-pair? _e152879152908_)
                                  (let ((_e152900152928_
                                         (gx#syntax-e _e152879152908_)))
                                    (let ((_hd152901152931_
                                           (##car _e152900152928_))
                                          (_tl152902152933_
                                           (##cdr _e152900152928_)))
                                      (if (and (gx#identifier?
                                                _hd152901152931_)
                                               (gx#core-identifier=?
                                                _hd152901152931_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152878_
                                               (gx#core-expand-define-alias%
                                                _hd152871_))
                                              (_E152899152924_))
                                          (_E152899152924_))))
                                  (_E152899152924_))))
                           (_E152885152948_
                            (lambda ()
                              (if (gx#stx-pair? _e152879152908_)
                                  (let ((_e152896152940_
                                         (gx#syntax-e _e152879152908_)))
                                    (let ((_hd152897152943_
                                           (##car _e152896152940_))
                                          (_tl152898152945_
                                           (##cdr _e152896152940_)))
                                      (if (and (gx#identifier?
                                                _hd152897152943_)
                                               (gx#core-identifier=?
                                                _hd152897152943_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152878_
                                               (gx#core-expand-define-syntax%
                                                _hd152871_))
                                              (_E152895152936_))
                                          (_E152895152936_))))
                                  (_E152895152936_))))
                           (_E152881152980_
                            (lambda ()
                              (if (gx#stx-pair? _e152879152908_)
                                  (let ((_e152886152952_
                                         (gx#syntax-e _e152879152908_)))
                                    (let ((_hd152887152955_
                                           (##car _e152886152952_))
                                          (_tl152888152957_
                                           (##cdr _e152886152952_)))
                                      (if (and (gx#identifier?
                                                _hd152887152955_)
                                               (gx#core-identifier=?
                                                _hd152887152955_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152888152957_)
                                              (let ((_e152889152960_
                                                     (gx#syntax-e
                                                      _tl152888152957_)))
                                                (let ((_hd152890152963_
                                                       (##car _e152889152960_))
                                                      (_tl152891152965_
                                                       (##cdr _e152889152960_)))
                                                  (let ((_hd-bind152968_
                                                         _hd152890152963_))
                                                    (if (gx#stx-pair?
                                                         _tl152891152965_)
                                                        (let ((_e152892152970_
                                                               (gx#syntax-e
                                                                _tl152891152965_)))
                                                          (let ((_hd152893152973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152892152970_))
                        (_tl152894152975_ (##cdr _e152892152970_)))
                    (let ((_expr152978_ _hd152893152973_))
                      (if (gx#stx-null? _tl152894152975_)
                          (if (gx#core-bind-values? _hd-bind152968_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152968_)
                                (_K152878_ _hd152871_))
                              (_E152885152948_))
                          (_E152885152948_)))))
                (_E152885152948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152885152948_))
                                          (_E152885152948_))))
                                  (_E152885152948_))))
                           (_E152880152992_
                            (lambda ()
                              (if (gx#stx-pair? _e152879152908_)
                                  (let ((_e152882152984_
                                         (gx#syntax-e _e152879152908_)))
                                    (let ((_hd152883152987_
                                           (##car _e152882152984_))
                                          (_tl152884152989_
                                           (##cdr _e152882152984_)))
                                      (if (and (gx#identifier?
                                                _hd152883152987_)
                                               (gx#core-identifier=?
                                                _hd152883152987_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152878_
                                               (gx#core-expand-begin-syntax%
                                                _hd152871_))
                                              (_E152881152980_))
                                          (_E152881152980_))))
                                  (_E152881152980_)))))
                      (_E152880152992_))))
                 (_eval-body152752_
                  (lambda (_rbody152760_)
                    (let _lp152762_ ((_rest152764_ _rbody152760_)
                                     (_body152765_ '())
                                     (_ebody152766_ '()))
                      (let* ((_rest152767152775_ _rest152764_)
                             (_else152769152783_
                              (lambda ()
                                (values _body152765_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152766_)
                                          (gx#stx-source _stx152749_))))))
                             (_K152771152859_
                              (lambda (_rest152786_ _hd152787_)
                                (let* ((_e152788152805_ _hd152787_)
                                       (_E152800152809_
                                        (lambda ()
                                          (_lp152762_
                                           _rest152786_
                                           (cons _hd152787_ _body152765_)
                                           (cons _hd152787_ _ebody152766_))))
                                       (_E152790152821_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152788152805_)
                                              (let ((_e152801152813_
                                                     (gx#syntax-e
                                                      _e152788152805_)))
                                                (let ((_hd152802152816_
                                                       (##car _e152801152813_))
                                                      (_tl152803152818_
                                                       (##cdr _e152801152813_)))
                                                  (if (and (gx#identifier?
                                                            _hd152802152816_)
                                                           (gx#core-identifier=?
                                                            _hd152802152816_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152762_
                                                           _rest152786_
                                                           (cons _hd152787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152765_)
                   _ebody152766_)
                  (_E152800152809_))
              (_E152800152809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152800152809_))))
                                       (_E152789152855_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152788152805_)
                                              (let ((_e152791152825_
                                                     (gx#syntax-e
                                                      _e152788152805_)))
                                                (let ((_hd152792152828_
                                                       (##car _e152791152825_))
                                                      (_tl152793152830_
                                                       (##cdr _e152791152825_)))
                                                  (if (and (gx#identifier?
                                                            _hd152792152828_)
                                                           (gx#core-identifier=?
                                                            _hd152792152828_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152793152830_)
                                                          (let ((_e152794152833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152793152830_)))
                    (let ((_hd152795152836_ (##car _e152794152833_))
                          (_tl152796152838_ (##cdr _e152794152833_)))
                      (let ((_hd-bind152841_ _hd152795152836_))
                        (if (gx#stx-pair? _tl152796152838_)
                            (let ((_e152797152843_
                                   (gx#syntax-e _tl152796152838_)))
                              (let ((_hd152798152846_ (##car _e152797152843_))
                                    (_tl152799152848_ (##cdr _e152797152843_)))
                                (let ((_expr152851_ _hd152798152846_))
                                  (if (gx#stx-null? _tl152799152848_)
                                      (if '#t
                                          (let ((_ehd152853_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152841_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152851_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152787_))))
                                            (_lp152762_
                                             _rest152786_
                                             (cons _ehd152853_ _body152765_)
                                             (cons _ehd152853_ _ebody152766_)))
                                          (_E152790152821_))
                                      (_E152790152821_)))))
                            (_E152790152821_)))))
                  (_E152790152821_))
              (_E152790152821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152790152821_)))))
                                  (_E152789152855_)))))
                        (if (##pair? _rest152767152775_)
                            (let ((_hd152772152862_ (##car _rest152767152775_))
                                  (_tl152773152864_
                                   (##cdr _rest152767152775_)))
                              (let* ((_hd152867_ _hd152772152862_)
                                     (_rest152869_ _tl152773152864_))
                                (_K152771152859_ _rest152869_ _hd152867_)))
                            (_else152769152783_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152755_
                     (gx#core-expand-block__1
                      _stx152749_
                      _expand-special152751_
                      '#f))
                    (_g157487_ (_eval-body152752_ _rbody152755_)))
               (begin
                 (let ((_g157488_
                        (if (##values? _g157487_)
                            (##vector-length _g157487_)
                            1)))
                   (if (not (##fx= _g157488_ 2))
                       (error "Context expects 2 values" _g157488_)))
                 (let ((_expanded-body152757_ (##vector-ref _g157487_ 0))
                       (_value152758_ (##vector-ref _g157487_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152757_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152758_ '())))
                    (gx#stx-source _stx152749_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152719_)
        (let* ((_e152720152727_ _stx152719_)
               (_E152722152731_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152720152727_)))
               (_E152721152745_
                (lambda ()
                  (if (gx#stx-pair? _e152720152727_)
                      (let ((_e152723152735_ (gx#syntax-e _e152720152727_)))
                        (let ((_hd152724152738_ (##car _e152723152735_))
                              (_tl152725152740_ (##cdr _e152723152735_)))
                          (let ((_body152743_ _tl152725152740_))
                            (if (gx#stx-list? _body152743_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152743_)
                                 (gx#stx-source _stx152719_))
                                (_E152722152731_)))))
                      (_E152722152731_)))))
          (_E152721152745_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152717_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152717_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152663_)
        (let* ((_e152664152677_ _stx152663_)
               (_E152666152681_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152664152677_)))
               (_E152665152713_
                (lambda ()
                  (if (gx#stx-pair? _e152664152677_)
                      (let ((_e152667152685_ (gx#syntax-e _e152664152677_)))
                        (let ((_hd152668152688_ (##car _e152667152685_))
                              (_tl152669152690_ (##cdr _e152667152685_)))
                          (if (gx#stx-pair? _tl152669152690_)
                              (let ((_e152670152693_
                                     (gx#syntax-e _tl152669152690_)))
                                (let ((_hd152671152696_
                                       (##car _e152670152693_))
                                      (_tl152672152698_
                                       (##cdr _e152670152693_)))
                                  (let ((_ann152701_ _hd152671152696_))
                                    (if (gx#stx-pair? _tl152672152698_)
                                        (let ((_e152673152703_
                                               (gx#syntax-e _tl152672152698_)))
                                          (let ((_hd152674152706_
                                                 (##car _e152673152703_))
                                                (_tl152675152708_
                                                 (##cdr _e152673152703_)))
                                            (let ((_expr152711_
                                                   _hd152674152706_))
                                              (if (gx#stx-null?
                                                   _tl152675152708_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152711_)
                                 '())))
               (gx#stx-source _stx152663_))
              (_E152666152681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152666152681_)))))
                                        (_E152666152681_)))))
                              (_E152666152681_))))
                      (_E152666152681_)))))
          (_E152665152713_))))
    (define gx#core-expand-local-block
      (lambda (_stx152387_ _body152388_)
        (letrec ((_expand-special152390_
                  (lambda (_hd152658_ _K152659_ _rest152660_ _r152661_)
                    (_K152659_
                     '()
                     (cons (_expand-internal152391_ _hd152658_ _rest152660_)
                           _r152661_))))
                 (_expand-internal152391_
                  (lambda (_hd152654_ _rest152655_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152393_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152654_ _rest152655_))
                          (gx#stx-source _stx152387_))
                         _expand-internal-special152392_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157481
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157481)
                       __obj157481))))
                 (_expand-internal-special152392_
                  (lambda (_hd152549_ _K152550_ _rest152551_ _r152552_)
                    (let* ((_e152553152578_ _hd152549_)
                           (_E152573152582_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152553152578_)))
                           (_E152569152594_
                            (lambda ()
                              (if (gx#stx-pair? _e152553152578_)
                                  (let ((_e152574152586_
                                         (gx#syntax-e _e152553152578_)))
                                    (let ((_hd152575152589_
                                           (##car _e152574152586_))
                                          (_tl152576152591_
                                           (##cdr _e152574152586_)))
                                      (if (and (gx#identifier?
                                                _hd152575152589_)
                                               (gx#core-identifier=?
                                                _hd152575152589_
                                                '%#declare))
                                          (if '#t
                                              (_K152550_
                                               _rest152551_
                                               (cons (gx#core-expand-declare%
                                                      _hd152549_)
                                                     _r152552_))
                                              (_E152573152582_))
                                          (_E152573152582_))))
                                  (_E152573152582_))))
                           (_E152565152606_
                            (lambda ()
                              (if (gx#stx-pair? _e152553152578_)
                                  (let ((_e152570152598_
                                         (gx#syntax-e _e152553152578_)))
                                    (let ((_hd152571152601_
                                           (##car _e152570152598_))
                                          (_tl152572152603_
                                           (##cdr _e152570152598_)))
                                      (if (and (gx#identifier?
                                                _hd152571152601_)
                                               (gx#core-identifier=?
                                                _hd152571152601_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152549_)
                                                (_K152550_
                                                 _rest152551_
                                                 _r152552_))
                                              (_E152569152594_))
                                          (_E152569152594_))))
                                  (_E152569152594_))))
                           (_E152555152618_
                            (lambda ()
                              (if (gx#stx-pair? _e152553152578_)
                                  (let ((_e152566152610_
                                         (gx#syntax-e _e152553152578_)))
                                    (let ((_hd152567152613_
                                           (##car _e152566152610_))
                                          (_tl152568152615_
                                           (##cdr _e152566152610_)))
                                      (if (and (gx#identifier?
                                                _hd152567152613_)
                                               (gx#core-identifier=?
                                                _hd152567152613_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152549_)
                                                (_K152550_
                                                 _rest152551_
                                                 _r152552_))
                                              (_E152565152606_))
                                          (_E152565152606_))))
                                  (_E152565152606_))))
                           (_E152554152650_
                            (lambda ()
                              (if (gx#stx-pair? _e152553152578_)
                                  (let ((_e152556152622_
                                         (gx#syntax-e _e152553152578_)))
                                    (let ((_hd152557152625_
                                           (##car _e152556152622_))
                                          (_tl152558152627_
                                           (##cdr _e152556152622_)))
                                      (if (and (gx#identifier?
                                                _hd152557152625_)
                                               (gx#core-identifier=?
                                                _hd152557152625_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152558152627_)
                                              (let ((_e152559152630_
                                                     (gx#syntax-e
                                                      _tl152558152627_)))
                                                (let ((_hd152560152633_
                                                       (##car _e152559152630_))
                                                      (_tl152561152635_
                                                       (##cdr _e152559152630_)))
                                                  (let ((_hd-bind152638_
                                                         _hd152560152633_))
                                                    (if (gx#stx-pair?
                                                         _tl152561152635_)
                                                        (let ((_e152562152640_
                                                               (gx#syntax-e
                                                                _tl152561152635_)))
                                                          (let ((_hd152563152643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152562152640_))
                        (_tl152564152645_ (##cdr _e152562152640_)))
                    (let ((_expr152648_ _hd152563152643_))
                      (if (gx#stx-null? _tl152564152645_)
                          (if (gx#core-bind-values? _hd-bind152638_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152638_)
                                (_K152550_
                                 _rest152551_
                                 (cons _hd152549_ _r152552_)))
                              (_E152555152618_))
                          (_E152555152618_)))))
                (_E152555152618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152555152618_))
                                          (_E152555152618_))))
                                  (_E152555152618_)))))
                      (_E152554152650_))))
                 (_wrap-internal152393_
                  (lambda (_rbody152395_)
                    (let _lp152397_ ((_rest152399_ _rbody152395_)
                                     (_decls152400_ '())
                                     (_bind152401_ '())
                                     (_body152402_ '()))
                      (let* ((_e152403152410_ _rest152399_)
                             (_E152405152459_
                              (lambda ()
                                (let* ((_body152454_
                                        (let* ((_body152413152423_
                                                _body152402_)
                                               (_else152416152431_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152402_)
                                                   (gx#stx-source
                                                    _stx152387_)))))
                                          (let ((_K152421152451_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152387_)))
                                                (_K152418152437_
                                                 (lambda (_expr152435_)
                                                   _expr152435_)))
                                            (let ((_try-match152415152447_
                                                   (lambda ()
                                                     (if (##pair? _body152413152423_)
                                                         (let ((_tl152420152442_
                                                                (##cdr _body152413152423_))
                                                               (_hd152419152440_
                                                                (##car _body152413152423_)))
                                                           (if (##null? _tl152420152442_)
                                                               (let ((_expr152445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152419152440_))
                         (_K152418152437_ _expr152445_))
                       (_else152416152431_)))
                 (_else152416152431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152413152423_)
                                                  (_K152421152451_)
                                                  (_try-match152415152447_))))))
                                       (_body152456_
                                        (if (null? _bind152401_)
                                            _body152454_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152401_
                                                         (cons _body152454_
                                                               '())))
                                             (gx#stx-source _stx152387_)))))
                                  (if (null? _decls152400_)
                                      _body152456_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152400_
                                                   (cons _body152456_ '())))
                                       (gx#stx-source _stx152387_))))))
                             (_E152404152545_
                              (lambda ()
                                (if (gx#stx-pair? _e152403152410_)
                                    (let ((_e152406152463_
                                           (gx#syntax-e _e152403152410_)))
                                      (let ((_hd152407152466_
                                             (##car _e152406152463_))
                                            (_tl152408152468_
                                             (##cdr _e152406152463_)))
                                        (let* ((_hd152471_ _hd152407152466_)
                                               (_rest152473_ _tl152408152468_))
                                          (if '#t
                                              (let* ((_e152474152491_
                                                      _hd152471_)
                                                     (_E152486152495_
                                                      (lambda ()
                                                        (if (null? _bind152401_)
                                                            (_lp152397_
                                                             _rest152473_
                                                             _decls152400_
                                                             _bind152401_
                                                             (cons _hd152471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152402_))
                    (_lp152397_
                     _rest152473_
                     _decls152400_
                     (cons (cons '#f (cons _hd152471_ '())) _bind152401_)
                     _body152402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152476152509_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152474152491_)
                                                            (let ((_e152487152499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152474152491_)))
                      (let ((_hd152488152502_ (##car _e152487152499_))
                            (_tl152489152504_ (##cdr _e152487152499_)))
                        (if (and (gx#identifier? _hd152488152502_)
                                 (gx#core-identifier=?
                                  _hd152488152502_
                                  '%#declare))
                            (let ((_xdecls152507_ _tl152489152504_))
                              (if '#t
                                  (_lp152397_
                                   _rest152473_
                                   (gx#stx-foldr
                                    cons
                                    _decls152400_
                                    _xdecls152507_)
                                   _bind152401_
                                   _body152402_)
                                  (_E152486152495_)))
                            (_E152486152495_))))
                    (_E152486152495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152475152541_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152474152491_)
                                                            (let ((_e152477152513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152474152491_)))
                      (let ((_hd152478152516_ (##car _e152477152513_))
                            (_tl152479152518_ (##cdr _e152477152513_)))
                        (if (and (gx#identifier? _hd152478152516_)
                                 (gx#core-identifier=?
                                  _hd152478152516_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152479152518_)
                                (let ((_e152480152521_
                                       (gx#syntax-e _tl152479152518_)))
                                  (let ((_hd152481152524_
                                         (##car _e152480152521_))
                                        (_tl152482152526_
                                         (##cdr _e152480152521_)))
                                    (let ((_hd-bind152529_ _hd152481152524_))
                                      (if (gx#stx-pair? _tl152482152526_)
                                          (let ((_e152483152531_
                                                 (gx#syntax-e
                                                  _tl152482152526_)))
                                            (let ((_hd152484152534_
                                                   (##car _e152483152531_))
                                                  (_tl152485152536_
                                                   (##cdr _e152483152531_)))
                                              (let ((_expr152539_
                                                     _hd152484152534_))
                                                (if (gx#stx-null?
                                                     _tl152485152536_)
                                                    (if '#t
                                                        (_lp152397_
                                                         _rest152473_
                                                         _decls152400_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152529_)
                             (cons (gx#core-expand-expression _expr152539_)
                                   '()))
                       _bind152401_)
                 _body152402_)
                (_E152476152509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152476152509_)))))
                                          (_E152476152509_)))))
                                (_E152476152509_))
                            (_E152476152509_))))
                    (_E152476152509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152475152541_))
                                              (_E152405152459_)))))
                                    (_E152405152459_)))))
                        (_E152404152545_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152388_)
            (gx#stx-source _stx152387_))
           _expand-special152390_))))
    (define gx#core-expand-declare%
      (lambda (_stx152325_)
        (let* ((_e152326152333_ _stx152325_)
               (_E152328152337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152326152333_)))
               (_E152327152383_
                (lambda ()
                  (if (gx#stx-pair? _e152326152333_)
                      (let ((_e152329152341_ (gx#syntax-e _e152326152333_)))
                        (let ((_hd152330152344_ (##car _e152329152341_))
                              (_tl152331152346_ (##cdr _e152329152341_)))
                          (let ((_body152349_ _tl152331152346_))
                            (if (gx#stx-list? _body152349_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152351_)
                                     (let* ((_e152352152359_ _decl152351_)
                                            (_E152354152363_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152352152359_)))
                                            (_E152353152379_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152352152359_)
                                                   (let ((_e152355152367_
                                                          (gx#syntax-e
                                                           _e152352152359_)))
                                                     (let ((_hd152356152370_
                                                            (##car _e152355152367_))
                                                           (_tl152357152372_
                                                            (##cdr _e152355152367_)))
                                                       (let* ((_head152375_
                                                               _hd152356152370_)
                                                              (_args152377_
                                                               _tl152357152372_))
                                                         (if (gx#stx-list?
                                                              _args152377_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152351_)
                                                             (_E152354152363_)))))
                                                   (_E152354152363_)))))
                                       (_E152353152379_)))
                                   _body152349_))
                                 (gx#stx-source _stx152325_))
                                (_E152328152337_)))))
                      (_E152328152337_)))))
          (_E152327152383_))))
    (define gx#core-expand-extern%
      (lambda (_stx152229_)
        (let* ((_e152230152237_ _stx152229_)
               (_E152232152241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152230152237_)))
               (_E152231152321_
                (lambda ()
                  (if (gx#stx-pair? _e152230152237_)
                      (let ((_e152233152245_ (gx#syntax-e _e152230152237_)))
                        (let ((_hd152234152248_ (##car _e152233152245_))
                              (_tl152235152250_ (##cdr _e152233152245_)))
                          (let ((_body152253_ _tl152235152250_))
                            (if '#t
                                (let _lp152255_ ((_rest152257_ _body152253_)
                                                 (_r152258_ '()))
                                  (let* ((_e152259152273_ _rest152257_)
                                         (_E152271152277_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152229_)))
                                         (_E152261152281_
                                          (lambda ()
                                            (if (gx#stx-null? _e152259152273_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152258_))
                                                     (gx#stx-source
                                                      _stx152229_))
                                                    (_E152271152277_))
                                                (_E152271152277_))))
                                         (_E152260152317_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152259152273_)
                                                (let ((_e152262152285_
                                                       (gx#syntax-e
                                                        _e152259152273_)))
                                                  (let ((_hd152263152288_
                                                         (##car _e152262152285_))
                                                        (_tl152264152290_
                                                         (##cdr _e152262152285_)))
                                                    (if (gx#stx-pair?
                                                         _hd152263152288_)
                                                        (let ((_e152265152293_
                                                               (gx#syntax-e
                                                                _hd152263152288_)))
                                                          (let ((_hd152266152296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152265152293_))
                        (_tl152267152298_ (##cdr _e152265152293_)))
                    (let ((_id152301_ _hd152266152296_))
                      (if (gx#stx-pair? _tl152267152298_)
                          (let ((_e152268152303_
                                 (gx#syntax-e _tl152267152298_)))
                            (let ((_hd152269152306_ (##car _e152268152303_))
                                  (_tl152270152308_ (##cdr _e152268152303_)))
                              (let ((_eid152311_ _hd152269152306_))
                                (if (gx#stx-null? _tl152270152308_)
                                    (let ((_rest152313_ _tl152264152290_))
                                      (if (and (gx#identifier? _id152301_)
                                               (gx#identifier? _eid152311_))
                                          (let ((_eid152315_
                                                 (gx#stx-e _eid152311_)))
                                            (gx#core-bind-extern!__0
                                             _id152301_
                                             _eid152315_)
                                            (_lp152255_
                                             _rest152313_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152301_)
                                                         (cons _eid152315_
                                                               '()))
                                                   _r152258_)))
                                          (_E152261152281_)))
                                    (_E152261152281_)))))
                          (_E152261152281_)))))
                (_E152261152281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152261152281_)))))
                                    (_E152260152317_)))
                                (_E152232152241_)))))
                      (_E152232152241_)))))
          (_E152231152321_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152175_)
        (let* ((_e152176152189_ _stx152175_)
               (_E152178152193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152176152189_)))
               (_E152177152225_
                (lambda ()
                  (if (gx#stx-pair? _e152176152189_)
                      (let ((_e152179152197_ (gx#syntax-e _e152176152189_)))
                        (let ((_hd152180152200_ (##car _e152179152197_))
                              (_tl152181152202_ (##cdr _e152179152197_)))
                          (if (gx#stx-pair? _tl152181152202_)
                              (let ((_e152182152205_
                                     (gx#syntax-e _tl152181152202_)))
                                (let ((_hd152183152208_
                                       (##car _e152182152205_))
                                      (_tl152184152210_
                                       (##cdr _e152182152205_)))
                                  (let ((_hd152213_ _hd152183152208_))
                                    (if (gx#stx-pair? _tl152184152210_)
                                        (let ((_e152185152215_
                                               (gx#syntax-e _tl152184152210_)))
                                          (let ((_hd152186152218_
                                                 (##car _e152185152215_))
                                                (_tl152187152220_
                                                 (##cdr _e152185152215_)))
                                            (let ((_expr152223_
                                                   _hd152186152218_))
                                              (if (gx#stx-null?
                                                   _tl152187152220_)
                                                  (if (gx#core-bind-values?
                                                       _hd152213_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152213_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152213_)
                             (cons (gx#core-expand-expression _expr152223_)
                                   '())))
                 (gx#stx-source _stx152175_)))
              (_E152178152193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152178152193_)))))
                                        (_E152178152193_)))))
                              (_E152178152193_))))
                      (_E152178152193_)))))
          (_E152177152225_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152119_)
        (let* ((_e152120152133_ _stx152119_)
               (_E152122152137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152120152133_)))
               (_E152121152171_
                (lambda ()
                  (if (gx#stx-pair? _e152120152133_)
                      (let ((_e152123152141_ (gx#syntax-e _e152120152133_)))
                        (let ((_hd152124152144_ (##car _e152123152141_))
                              (_tl152125152146_ (##cdr _e152123152141_)))
                          (if (gx#stx-pair? _tl152125152146_)
                              (let ((_e152126152149_
                                     (gx#syntax-e _tl152125152146_)))
                                (let ((_hd152127152152_
                                       (##car _e152126152149_))
                                      (_tl152128152154_
                                       (##cdr _e152126152149_)))
                                  (let ((_id152157_ _hd152127152152_))
                                    (if (gx#stx-pair? _tl152128152154_)
                                        (let ((_e152129152159_
                                               (gx#syntax-e _tl152128152154_)))
                                          (let ((_hd152130152162_
                                                 (##car _e152129152159_))
                                                (_tl152131152164_
                                                 (##cdr _e152129152159_)))
                                            (let ((_binding-id152167_
                                                   _hd152130152162_))
                                              (if (gx#stx-null?
                                                   _tl152131152164_)
                                                  (if (and (gx#identifier?
                                                            _id152157_)
                                                           (gx#identifier?
                                                            _binding-id152167_))
                                                      (let ((_eid152169_
                                                             (gx#stx-e
                                                              _binding-id152167_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152157_
                                                         _eid152169_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152157_)
                             (cons _eid152169_ '())))))
              (_E152122152137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152122152137_)))))
                                        (_E152122152137_)))))
                              (_E152122152137_))))
                      (_E152122152137_)))))
          (_E152121152171_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152062_)
        (let* ((_e152063152076_ _stx152062_)
               (_E152065152080_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152063152076_)))
               (_E152064152115_
                (lambda ()
                  (if (gx#stx-pair? _e152063152076_)
                      (let ((_e152066152084_ (gx#syntax-e _e152063152076_)))
                        (let ((_hd152067152087_ (##car _e152066152084_))
                              (_tl152068152089_ (##cdr _e152066152084_)))
                          (if (gx#stx-pair? _tl152068152089_)
                              (let ((_e152069152092_
                                     (gx#syntax-e _tl152068152089_)))
                                (let ((_hd152070152095_
                                       (##car _e152069152092_))
                                      (_tl152071152097_
                                       (##cdr _e152069152092_)))
                                  (let ((_id152100_ _hd152070152095_))
                                    (if (gx#stx-pair? _tl152071152097_)
                                        (let ((_e152072152102_
                                               (gx#syntax-e _tl152071152097_)))
                                          (let ((_hd152073152105_
                                                 (##car _e152072152102_))
                                                (_tl152074152107_
                                                 (##cdr _e152072152102_)))
                                            (let ((_expr152110_
                                                   _hd152073152105_))
                                              (if (gx#stx-null?
                                                   _tl152074152107_)
                                                  (if (gx#identifier?
                                                       _id152100_)
                                                      (let ((_g157489_
                                                             (gx#core-expand-expression+1
                                                              _expr152110_)))
                                                        (begin
                                                          (let ((_g157490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157489_)
                             (##vector-length _g157489_)
                             1)))
                    (if (not (##fx= _g157490_ 2))
                        (error "Context expects 2 values" _g157490_)))
                  (let ((_e-stx152112_ (##vector-ref _g157489_ 0))
                        (_e152113_ (##vector-ref _g157489_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152100_ _e152113_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152100_)
                                   (cons _e-stx152112_ '())))
                       (gx#stx-source _stx152062_))))))
              (_E152065152080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152065152080_)))))
                                        (_E152065152080_)))))
                              (_E152065152080_))))
                      (_E152065152080_)))))
          (_E152064152115_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx152006_)
        (let* ((_e152007152020_ _stx152006_)
               (_E152009152024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152007152020_)))
               (_E152008152058_
                (lambda ()
                  (if (gx#stx-pair? _e152007152020_)
                      (let ((_e152010152028_ (gx#syntax-e _e152007152020_)))
                        (let ((_hd152011152031_ (##car _e152010152028_))
                              (_tl152012152033_ (##cdr _e152010152028_)))
                          (if (gx#stx-pair? _tl152012152033_)
                              (let ((_e152013152036_
                                     (gx#syntax-e _tl152012152033_)))
                                (let ((_hd152014152039_
                                       (##car _e152013152036_))
                                      (_tl152015152041_
                                       (##cdr _e152013152036_)))
                                  (let ((_id152044_ _hd152014152039_))
                                    (if (gx#stx-pair? _tl152015152041_)
                                        (let ((_e152016152046_
                                               (gx#syntax-e _tl152015152041_)))
                                          (let ((_hd152017152049_
                                                 (##car _e152016152046_))
                                                (_tl152018152051_
                                                 (##cdr _e152016152046_)))
                                            (let ((_alias-id152054_
                                                   _hd152017152049_))
                                              (if (gx#stx-null?
                                                   _tl152018152051_)
                                                  (if (and (gx#identifier?
                                                            _id152044_)
                                                           (gx#identifier?
                                                            _alias-id152054_))
                                                      (let ((_alias-id152056_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152054_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152044_
                                                         _alias-id152056_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152044_)
                             (cons _alias-id152056_ '())))))
              (_E152009152024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152009152024_)))))
                                        (_E152009152024_)))))
                              (_E152009152024_))))
                      (_E152009152024_)))))
          (_E152008152058_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151949_ _wrap?151950_)
        (let* ((_e151951151961_ _stx151949_)
               (_E151953151965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151951151961_)))
               (_E151952151992_
                (lambda ()
                  (if (gx#stx-pair? _e151951151961_)
                      (let ((_e151954151969_ (gx#syntax-e _e151951151961_)))
                        (let ((_hd151955151972_ (##car _e151954151969_))
                              (_tl151956151974_ (##cdr _e151954151969_)))
                          (if (gx#stx-pair? _tl151956151974_)
                              (let ((_e151957151977_
                                     (gx#syntax-e _tl151956151974_)))
                                (let ((_hd151958151980_
                                       (##car _e151957151977_))
                                      (_tl151959151982_
                                       (##cdr _e151957151977_)))
                                  (let* ((_hd151985_ _hd151958151980_)
                                         (_body151987_ _tl151959151982_))
                                    (if (gx#core-bind-values? _hd151985_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151985_)
                                           (let ((_body151990_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151985_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151949_
                                                               _body151987_)
                                                              '()))))
                                             (if _wrap?151950_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151990_)
                                                  (gx#stx-source _stx151949_))
                                                 _body151990_)))
                                         gx#current-expander-context
                                         (let ((__obj157482
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157482)
                                           __obj157482))
                                        (_E151953151965_)))))
                              (_E151953151965_))))
                      (_E151953151965_)))))
          (_E151952151992_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151999_)
        (let ((_wrap?152001_ '#t))
          (gx#core-expand-lambda%__% _stx151999_ _wrap?152001_))))
    (define gx#core-expand-lambda%
      (lambda _g157492_
        (let ((_g157491_ (##length _g157492_)))
          (cond ((##fx= _g157491_ 1)
                 (apply (lambda (_stx151999_)
                          (gx#core-expand-lambda%__0 _stx151999_))
                        _g157492_))
                ((##fx= _g157491_ 2)
                 (apply (lambda (_stx152003_ _wrap?152004_)
                          (gx#core-expand-lambda%__%
                           _stx152003_
                           _wrap?152004_))
                        _g157492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157492_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151913_)
        (let* ((_e151914151921_ _stx151913_)
               (_E151916151925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151914151921_)))
               (_E151915151944_
                (lambda ()
                  (if (gx#stx-pair? _e151914151921_)
                      (let ((_e151917151929_ (gx#syntax-e _e151914151921_)))
                        (let ((_hd151918151932_ (##car _e151917151929_))
                              (_tl151919151934_ (##cdr _e151917151929_)))
                          (let ((_clauses151937_ _tl151919151934_))
                            (if (gx#stx-list? _clauses151937_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151939_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151939_)
                                       (let ((_$e151941_
                                              (gx#stx-source _clause151939_)))
                                         (if _$e151941_
                                             _$e151941_
                                             (gx#stx-source _stx151913_))))
                                      '#f))
                                   _clauses151937_))
                                 (gx#stx-source _stx151913_))
                                (_E151916151925_)))))
                      (_E151916151925_)))))
          (_E151915151944_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151867_)
        (let* ((_e151868151878_ _stx151867_)
               (_E151870151882_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151868151878_)))
               (_E151869151909_
                (lambda ()
                  (if (gx#stx-pair? _e151868151878_)
                      (let ((_e151871151886_ (gx#syntax-e _e151868151878_)))
                        (let ((_hd151872151889_ (##car _e151871151886_))
                              (_tl151873151891_ (##cdr _e151871151886_)))
                          (if (gx#stx-pair? _tl151873151891_)
                              (let ((_e151874151894_
                                     (gx#syntax-e _tl151873151891_)))
                                (let ((_hd151875151897_
                                       (##car _e151874151894_))
                                      (_tl151876151899_
                                       (##cdr _e151874151894_)))
                                  (let* ((_hd151902_ _hd151875151897_)
                                         (_body151904_ _tl151876151899_))
                                    (if (gx#core-expand-let-bind? _hd151902_)
                                        (let ((_expressions151906_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151902_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151902_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151902_
                                                           _expressions151906_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151867_
                         _body151904_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151867_)))
                                           gx#current-expander-context
                                           (let ((__obj157483
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157483)
                                             __obj157483)))
                                        (_E151870151882_)))))
                              (_E151870151882_))))
                      (_E151870151882_)))))
          (_E151869151909_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151812_ _form151813_)
        (let* ((_e151814151824_ _stx151812_)
               (_E151816151828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151814151824_)))
               (_E151815151853_
                (lambda ()
                  (if (gx#stx-pair? _e151814151824_)
                      (let ((_e151817151832_ (gx#syntax-e _e151814151824_)))
                        (let ((_hd151818151835_ (##car _e151817151832_))
                              (_tl151819151837_ (##cdr _e151817151832_)))
                          (if (gx#stx-pair? _tl151819151837_)
                              (let ((_e151820151840_
                                     (gx#syntax-e _tl151819151837_)))
                                (let ((_hd151821151843_
                                       (##car _e151820151840_))
                                      (_tl151822151845_
                                       (##cdr _e151820151840_)))
                                  (let* ((_hd151848_ _hd151821151843_)
                                         (_body151850_ _tl151822151845_))
                                    (if (gx#core-expand-let-bind? _hd151848_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151848_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151813_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151848_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151848_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151812_
                                                               _body151850_)
                                                              '())))
                                            (gx#stx-source _stx151812_)))
                                         gx#current-expander-context
                                         (let ((__obj157484
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157484)
                                           __obj157484))
                                        (_E151816151828_)))))
                              (_E151816151828_))))
                      (_E151816151828_)))))
          (_E151815151853_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151860_)
        (let ((_form151862_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151860_ _form151862_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157494_
        (let ((_g157493_ (##length _g157494_)))
          (cond ((##fx= _g157493_ 1)
                 (apply (lambda (_stx151860_)
                          (gx#core-expand-letrec-values%__0 _stx151860_))
                        _g157494_))
                ((##fx= _g157493_ 2)
                 (apply (lambda (_stx151864_ _form151865_)
                          (gx#core-expand-letrec-values%__%
                           _stx151864_
                           _form151865_))
                        _g157494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157494_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151809_)
        (gx#core-expand-letrec-values%__% _stx151809_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151766_)
        (if (gx#stx-list? _stx151766_)
            (gx#stx-andmap
             (lambda (_bind151768_)
               (let* ((_e151769151779_ _bind151768_)
                      (_E151771151783_ (lambda () '#f))
                      (_E151770151805_
                       (lambda ()
                         (if (gx#stx-pair? _e151769151779_)
                             (let ((_e151772151787_
                                    (gx#syntax-e _e151769151779_)))
                               (let ((_hd151773151790_ (##car _e151772151787_))
                                     (_tl151774151792_
                                      (##cdr _e151772151787_)))
                                 (let ((_hd151795_ _hd151773151790_))
                                   (if (gx#stx-pair? _tl151774151792_)
                                       (let ((_e151775151797_
                                              (gx#syntax-e _tl151774151792_)))
                                         (let ((_hd151776151800_
                                                (##car _e151775151797_))
                                               (_tl151777151802_
                                                (##cdr _e151775151797_)))
                                           (if (gx#stx-null? _tl151777151802_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151795_)
                                                   (_E151771151783_))
                                               (_E151771151783_))))
                                       (_E151771151783_)))))
                             (_E151771151783_)))))
                 (_E151770151805_)))
             _stx151766_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151725_)
        (let* ((_e151726151736_ _bind151725_)
               (_E151728151740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151726151736_)))
               (_E151727151762_
                (lambda ()
                  (if (gx#stx-pair? _e151726151736_)
                      (let ((_e151729151744_ (gx#syntax-e _e151726151736_)))
                        (let ((_hd151730151747_ (##car _e151729151744_))
                              (_tl151731151749_ (##cdr _e151729151744_)))
                          (if (gx#stx-pair? _tl151731151749_)
                              (let ((_e151732151752_
                                     (gx#syntax-e _tl151731151749_)))
                                (let ((_hd151733151755_
                                       (##car _e151732151752_))
                                      (_tl151734151757_
                                       (##cdr _e151732151752_)))
                                  (let ((_expr151760_ _hd151733151755_))
                                    (if (gx#stx-null? _tl151734151757_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151760_)
                                            (_E151728151740_))
                                        (_E151728151740_)))))
                              (_E151728151740_))))
                      (_E151728151740_)))))
          (_E151727151762_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151684_)
        (let* ((_e151685151695_ _bind151684_)
               (_E151687151699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151685151695_)))
               (_E151686151721_
                (lambda ()
                  (if (gx#stx-pair? _e151685151695_)
                      (let ((_e151688151703_ (gx#syntax-e _e151685151695_)))
                        (let ((_hd151689151706_ (##car _e151688151703_))
                              (_tl151690151708_ (##cdr _e151688151703_)))
                          (let ((_hd151711_ _hd151689151706_))
                            (if (gx#stx-pair? _tl151690151708_)
                                (let ((_e151691151713_
                                       (gx#syntax-e _tl151690151708_)))
                                  (let ((_hd151692151716_
                                         (##car _e151691151713_))
                                        (_tl151693151718_
                                         (##cdr _e151691151713_)))
                                    (if (gx#stx-null? _tl151693151718_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151711_)
                                            (_E151687151699_))
                                        (_E151687151699_))))
                                (_E151687151699_)))))
                      (_E151687151699_)))))
          (_E151686151721_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151642_ _expr151643_)
        (let* ((_e151644151654_ _bind151642_)
               (_E151646151658_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151644151654_)))
               (_E151645151680_
                (lambda ()
                  (if (gx#stx-pair? _e151644151654_)
                      (let ((_e151647151662_ (gx#syntax-e _e151644151654_)))
                        (let ((_hd151648151665_ (##car _e151647151662_))
                              (_tl151649151667_ (##cdr _e151647151662_)))
                          (let ((_hd151670_ _hd151648151665_))
                            (if (gx#stx-pair? _tl151649151667_)
                                (let ((_e151650151672_
                                       (gx#syntax-e _tl151649151667_)))
                                  (let ((_hd151651151675_
                                         (##car _e151650151672_))
                                        (_tl151652151677_
                                         (##cdr _e151650151672_)))
                                    (if (gx#stx-null? _tl151652151677_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151670_)
                                                  (cons _expr151643_ '()))
                                            (_E151646151658_))
                                        (_E151646151658_))))
                                (_E151646151658_)))))
                      (_E151646151658_)))))
          (_E151645151680_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151596_)
        (let* ((_e151597151607_ _stx151596_)
               (_E151599151611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151597151607_)))
               (_E151598151638_
                (lambda ()
                  (if (gx#stx-pair? _e151597151607_)
                      (let ((_e151600151615_ (gx#syntax-e _e151597151607_)))
                        (let ((_hd151601151618_ (##car _e151600151615_))
                              (_tl151602151620_ (##cdr _e151600151615_)))
                          (if (gx#stx-pair? _tl151602151620_)
                              (let ((_e151603151623_
                                     (gx#syntax-e _tl151602151620_)))
                                (let ((_hd151604151626_
                                       (##car _e151603151623_))
                                      (_tl151605151628_
                                       (##cdr _e151603151623_)))
                                  (let* ((_hd151631_ _hd151604151626_)
                                         (_body151633_ _tl151605151628_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151631_)
                                        (let ((_expanders151635_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151631_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151631_
                                              _expanders151635_)
                                             (gx#core-expand-local-block
                                              _stx151596_
                                              _body151633_))
                                           gx#current-expander-context
                                           (let ((__obj157485
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157485)
                                             __obj157485)))
                                        (_E151599151611_)))))
                              (_E151599151611_))))
                      (_E151599151611_)))))
          (_E151598151638_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151545_)
        (let* ((_e151546151556_ _stx151545_)
               (_E151548151560_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151546151556_)))
               (_E151547151592_
                (lambda ()
                  (if (gx#stx-pair? _e151546151556_)
                      (let ((_e151549151564_ (gx#syntax-e _e151546151556_)))
                        (let ((_hd151550151567_ (##car _e151549151564_))
                              (_tl151551151569_ (##cdr _e151549151564_)))
                          (if (gx#stx-pair? _tl151551151569_)
                              (let ((_e151552151572_
                                     (gx#syntax-e _tl151551151569_)))
                                (let ((_hd151553151575_
                                       (##car _e151552151572_))
                                      (_tl151554151577_
                                       (##cdr _e151552151572_)))
                                  (let* ((_hd151580_ _hd151553151575_)
                                         (_body151582_ _tl151554151577_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151580_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151580_
                                            (make-list
                                             (gx#stx-length _hd151580_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151584151587_
                                                     _g151585151589_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151584151587_
                                               _g151585151589_
                                               '#t))
                                            _hd151580_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151580_))
                                           (gx#core-expand-local-block
                                            _stx151545_
                                            _body151582_))
                                         gx#current-expander-context
                                         (let ((__obj157486
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157486)
                                           __obj157486))
                                        (_E151548151560_)))))
                              (_E151548151560_))))
                      (_E151548151560_)))))
          (_E151547151592_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151502_)
        (if (gx#stx-list? _stx151502_)
            (gx#stx-andmap
             (lambda (_bind151504_)
               (let* ((_e151505151515_ _bind151504_)
                      (_E151507151519_ (lambda () '#f))
                      (_E151506151541_
                       (lambda ()
                         (if (gx#stx-pair? _e151505151515_)
                             (let ((_e151508151523_
                                    (gx#syntax-e _e151505151515_)))
                               (let ((_hd151509151526_ (##car _e151508151523_))
                                     (_tl151510151528_
                                      (##cdr _e151508151523_)))
                                 (let ((_hd151531_ _hd151509151526_))
                                   (if (gx#stx-pair? _tl151510151528_)
                                       (let ((_e151511151533_
                                              (gx#syntax-e _tl151510151528_)))
                                         (let ((_hd151512151536_
                                                (##car _e151511151533_))
                                               (_tl151513151538_
                                                (##cdr _e151511151533_)))
                                           (if (gx#stx-null? _tl151513151538_)
                                               (if '#t
                                                   (gx#identifier? _hd151531_)
                                                   (_E151507151519_))
                                               (_E151507151519_))))
                                       (_E151507151519_)))))
                             (_E151507151519_)))))
                 (_E151506151541_)))
             _stx151502_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151459_)
        (let* ((_e151460151470_ _bind151459_)
               (_E151462151474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151460151470_)))
               (_E151461151498_
                (lambda ()
                  (if (gx#stx-pair? _e151460151470_)
                      (let ((_e151463151478_ (gx#syntax-e _e151460151470_)))
                        (let ((_hd151464151481_ (##car _e151463151478_))
                              (_tl151465151483_ (##cdr _e151463151478_)))
                          (if (gx#stx-pair? _tl151465151483_)
                              (let ((_e151466151486_
                                     (gx#syntax-e _tl151465151483_)))
                                (let ((_hd151467151489_
                                       (##car _e151466151486_))
                                      (_tl151468151491_
                                       (##cdr _e151466151486_)))
                                  (let ((_expr151494_ _hd151467151489_))
                                    (if (gx#stx-null? _tl151468151491_)
                                        (if '#t
                                            (let ((_g157495_
                                                   (gx#core-expand-expression+1
                                                    _expr151494_)))
                                              (begin
                                                (let ((_g157496_
                                                       (if (##values?
                                                            _g157495_)
                                                           (##vector-length
                                                            _g157495_)
                                                           1)))
                                                  (if (not (##fx= _g157496_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157496_)))
                                                (let ((_e151496_
                                                       (##vector-ref
                                                        _g157495_
                                                        1)))
                                                  _e151496_)))
                                            (_E151462151474_))
                                        (_E151462151474_)))))
                              (_E151462151474_))))
                      (_E151462151474_)))))
          (_E151461151498_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151404_ _e151405_ _rebind?151406_)
        (let* ((_e151407151417_ _bind151404_)
               (_E151409151421_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151407151417_)))
               (_E151408151443_
                (lambda ()
                  (if (gx#stx-pair? _e151407151417_)
                      (let ((_e151410151425_ (gx#syntax-e _e151407151417_)))
                        (let ((_hd151411151428_ (##car _e151410151425_))
                              (_tl151412151430_ (##cdr _e151410151425_)))
                          (let ((_id151433_ _hd151411151428_))
                            (if (gx#stx-pair? _tl151412151430_)
                                (let ((_e151413151435_
                                       (gx#syntax-e _tl151412151430_)))
                                  (let ((_hd151414151438_
                                         (##car _e151413151435_))
                                        (_tl151415151440_
                                         (##cdr _e151413151435_)))
                                    (if (gx#stx-null? _tl151415151440_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151433_
                                             _e151405_
                                             _rebind?151406_)
                                            (_E151409151421_))
                                        (_E151409151421_))))
                                (_E151409151421_)))))
                      (_E151409151421_)))))
          (_E151408151443_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151450_ _e151451_)
        (let ((_rebind?151453_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151450_
           _e151451_
           _rebind?151453_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157498_
        (let ((_g157497_ (##length _g157498_)))
          (cond ((##fx= _g157497_ 2)
                 (apply (lambda (_bind151450_ _e151451_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151450_
                           _e151451_))
                        _g157498_))
                ((##fx= _g157497_ 3)
                 (apply (lambda (_bind151455_ _e151456_ _rebind?151457_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151455_
                           _e151456_
                           _rebind?151457_))
                        _g157498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157498_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151362_)
        (let* ((_e151363151373_ _stx151362_)
               (_E151365151377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151363151373_)))
               (_E151364151399_
                (lambda ()
                  (if (gx#stx-pair? _e151363151373_)
                      (let ((_e151366151381_ (gx#syntax-e _e151363151373_)))
                        (let ((_hd151367151384_ (##car _e151366151381_))
                              (_tl151368151386_ (##cdr _e151366151381_)))
                          (if (gx#stx-pair? _tl151368151386_)
                              (let ((_e151369151389_
                                     (gx#syntax-e _tl151368151386_)))
                                (let ((_hd151370151392_
                                       (##car _e151369151389_))
                                      (_tl151371151394_
                                       (##cdr _e151369151389_)))
                                  (let ((_expr151397_ _hd151370151392_))
                                    (if (gx#stx-null? _tl151371151394_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151397_)
                                            (_E151365151377_))
                                        (_E151365151377_)))))
                              (_E151365151377_))))
                      (_E151365151377_)))))
          (_E151364151399_))))
    (define gx#core-expand-quote%
      (lambda (_stx151321_)
        (let* ((_e151322151332_ _stx151321_)
               (_E151324151336_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151322151332_)))
               (_E151323151358_
                (lambda ()
                  (if (gx#stx-pair? _e151322151332_)
                      (let ((_e151325151340_ (gx#syntax-e _e151322151332_)))
                        (let ((_hd151326151343_ (##car _e151325151340_))
                              (_tl151327151345_ (##cdr _e151325151340_)))
                          (if (gx#stx-pair? _tl151327151345_)
                              (let ((_e151328151348_
                                     (gx#syntax-e _tl151327151345_)))
                                (let ((_hd151329151351_
                                       (##car _e151328151348_))
                                      (_tl151330151353_
                                       (##cdr _e151328151348_)))
                                  (let ((_e151356_ _hd151329151351_))
                                    (if (gx#stx-null? _tl151330151353_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151356_)
                                                         '()))
                                             (gx#stx-source _stx151321_))
                                            (_E151324151336_))
                                        (_E151324151336_)))))
                              (_E151324151336_))))
                      (_E151324151336_)))))
          (_E151323151358_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151280_)
        (let* ((_e151281151291_ _stx151280_)
               (_E151283151295_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151281151291_)))
               (_E151282151317_
                (lambda ()
                  (if (gx#stx-pair? _e151281151291_)
                      (let ((_e151284151299_ (gx#syntax-e _e151281151291_)))
                        (let ((_hd151285151302_ (##car _e151284151299_))
                              (_tl151286151304_ (##cdr _e151284151299_)))
                          (if (gx#stx-pair? _tl151286151304_)
                              (let ((_e151287151307_
                                     (gx#syntax-e _tl151286151304_)))
                                (let ((_hd151288151310_
                                       (##car _e151287151307_))
                                      (_tl151289151312_
                                       (##cdr _e151287151307_)))
                                  (let ((_e151315_ _hd151288151310_))
                                    (if (gx#stx-null? _tl151289151312_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151315_)
                                                         '()))
                                             (gx#stx-source _stx151280_))
                                            (_E151283151295_))
                                        (_E151283151295_)))))
                              (_E151283151295_))))
                      (_E151283151295_)))))
          (_E151282151317_))))
    (define gx#core-expand-call%
      (lambda (_stx151237_)
        (let* ((_e151238151248_ _stx151237_)
               (_E151240151252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151238151248_)))
               (_E151239151276_
                (lambda ()
                  (if (gx#stx-pair? _e151238151248_)
                      (let ((_e151241151256_ (gx#syntax-e _e151238151248_)))
                        (let ((_hd151242151259_ (##car _e151241151256_))
                              (_tl151243151261_ (##cdr _e151241151256_)))
                          (if (gx#stx-pair? _tl151243151261_)
                              (let ((_e151244151264_
                                     (gx#syntax-e _tl151243151261_)))
                                (let ((_hd151245151267_
                                       (##car _e151244151264_))
                                      (_tl151246151269_
                                       (##cdr _e151244151264_)))
                                  (let* ((_rator151272_ _hd151245151267_)
                                         (_args151274_ _tl151246151269_))
                                    (if (gx#stx-list? _args151274_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151272_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151274_))
                                         (gx#stx-source _stx151237_))
                                        (_E151240151252_)))))
                              (_E151240151252_))))
                      (_E151240151252_)))))
          (_E151239151276_))))
    (define gx#core-expand-if%
      (lambda (_stx151170_)
        (let* ((_e151171151187_ _stx151170_)
               (_E151173151191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151171151187_)))
               (_E151172151233_
                (lambda ()
                  (if (gx#stx-pair? _e151171151187_)
                      (let ((_e151174151195_ (gx#syntax-e _e151171151187_)))
                        (let ((_hd151175151198_ (##car _e151174151195_))
                              (_tl151176151200_ (##cdr _e151174151195_)))
                          (if (gx#stx-pair? _tl151176151200_)
                              (let ((_e151177151203_
                                     (gx#syntax-e _tl151176151200_)))
                                (let ((_hd151178151206_
                                       (##car _e151177151203_))
                                      (_tl151179151208_
                                       (##cdr _e151177151203_)))
                                  (let ((_test151211_ _hd151178151206_))
                                    (if (gx#stx-pair? _tl151179151208_)
                                        (let ((_e151180151213_
                                               (gx#syntax-e _tl151179151208_)))
                                          (let ((_hd151181151216_
                                                 (##car _e151180151213_))
                                                (_tl151182151218_
                                                 (##cdr _e151180151213_)))
                                            (let ((_K151221_ _hd151181151216_))
                                              (if (gx#stx-pair?
                                                   _tl151182151218_)
                                                  (let ((_e151183151223_
                                                         (gx#syntax-e
                                                          _tl151182151218_)))
                                                    (let ((_hd151184151226_
                                                           (##car _e151183151223_))
                                                          (_tl151185151228_
                                                           (##cdr _e151183151223_)))
                                                      (let ((_E151231_
                                                             _hd151184151226_))
                                                        (if (gx#stx-null?
                                                             _tl151185151228_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151211_)
                                     (cons (gx#core-expand-expression
                                            _K151221_)
                                           (cons (gx#core-expand-expression
                                                  _E151231_)
                                                 '()))))
                         (gx#stx-source _stx151170_))
                        (_E151173151191_))
                    (_E151173151191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151173151191_)))))
                                        (_E151173151191_)))))
                              (_E151173151191_))))
                      (_E151173151191_)))))
          (_E151172151233_))))
    (define gx#core-expand-ref%
      (lambda (_stx151129_)
        (let* ((_e151130151140_ _stx151129_)
               (_E151132151144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151130151140_)))
               (_E151131151166_
                (lambda ()
                  (if (gx#stx-pair? _e151130151140_)
                      (let ((_e151133151148_ (gx#syntax-e _e151130151140_)))
                        (let ((_hd151134151151_ (##car _e151133151148_))
                              (_tl151135151153_ (##cdr _e151133151148_)))
                          (if (gx#stx-pair? _tl151135151153_)
                              (let ((_e151136151156_
                                     (gx#syntax-e _tl151135151153_)))
                                (let ((_hd151137151159_
                                       (##car _e151136151156_))
                                      (_tl151138151161_
                                       (##cdr _e151136151156_)))
                                  (let ((_id151164_ _hd151137151159_))
                                    (if (gx#stx-null? _tl151138151161_)
                                        (if (gx#identifier? _id151164_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151164_
                                                          _stx151129_)
                                                         '()))
                                             (gx#stx-source _stx151129_))
                                            (_E151132151144_))
                                        (_E151132151144_)))))
                              (_E151132151144_))))
                      (_E151132151144_)))))
          (_E151131151166_))))
    (define gx#core-expand-setq%
      (lambda (_stx151075_)
        (let* ((_e151076151089_ _stx151075_)
               (_E151078151093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151076151089_)))
               (_E151077151125_
                (lambda ()
                  (if (gx#stx-pair? _e151076151089_)
                      (let ((_e151079151097_ (gx#syntax-e _e151076151089_)))
                        (let ((_hd151080151100_ (##car _e151079151097_))
                              (_tl151081151102_ (##cdr _e151079151097_)))
                          (if (gx#stx-pair? _tl151081151102_)
                              (let ((_e151082151105_
                                     (gx#syntax-e _tl151081151102_)))
                                (let ((_hd151083151108_
                                       (##car _e151082151105_))
                                      (_tl151084151110_
                                       (##cdr _e151082151105_)))
                                  (let ((_id151113_ _hd151083151108_))
                                    (if (gx#stx-pair? _tl151084151110_)
                                        (let ((_e151085151115_
                                               (gx#syntax-e _tl151084151110_)))
                                          (let ((_hd151086151118_
                                                 (##car _e151085151115_))
                                                (_tl151087151120_
                                                 (##cdr _e151085151115_)))
                                            (let ((_expr151123_
                                                   _hd151086151118_))
                                              (if (gx#stx-null?
                                                   _tl151087151120_)
                                                  (if (gx#identifier?
                                                       _id151113_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151113_
                            _stx151075_)
                           (cons (gx#core-expand-expression _expr151123_)
                                 '())))
               (gx#stx-source _stx151075_))
              (_E151078151093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151078151093_)))))
                                        (_E151078151093_)))))
                              (_E151078151093_))))
                      (_E151078151093_)))))
          (_E151077151125_))))
    (define gx#macro-expand-extern
      (lambda (_stx150923_)
        (letrec ((_generate150925_
                  (lambda (_body150955_)
                    (let _lp150957_ ((_rest150959_ _body150955_)
                                     (_ns150960_
                                      (gx#core-context-namespace__0))
                                     (_r150961_ '()))
                      (let* ((_e150962150977_ _rest150959_)
                             (_E150975150981_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150962150977_)))
                             (_E150971150985_
                              (lambda ()
                                (if (gx#stx-null? _e150962150977_)
                                    (if '#t
                                        (reverse _r150961_)
                                        (_E150975150981_))
                                    (_E150975150981_))))
                             (_E150964151042_
                              (lambda ()
                                (if (gx#stx-pair? _e150962150977_)
                                    (let ((_e150972150989_
                                           (gx#syntax-e _e150962150977_)))
                                      (let ((_hd150973150992_
                                             (##car _e150972150989_))
                                            (_tl150974150994_
                                             (##cdr _e150972150989_)))
                                        (let* ((_hd150997_ _hd150973150992_)
                                               (_rest150999_ _tl150974150994_))
                                          (if '#t
                                              (if (gx#identifier? _hd150997_)
                                                  (_lp150957_
                                                   _rest150999_
                                                   _ns150960_
                                                   (cons (cons _hd150997_
                                                               (cons (if _ns150960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150997_
                                  _ns150960_
                                  '"#"
                                  _hd150997_)
                                 _hd150997_)
                             '()))
                 _r150961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e151000151010_
                                                          _hd150997_)
                                                         (_E151002151014_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e151000151010_)))
                                                         (_E151001151038_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e151000151010_)
                        (let ((_e151003151018_ (gx#syntax-e _e151000151010_)))
                          (let ((_hd151004151021_ (##car _e151003151018_))
                                (_tl151005151023_ (##cdr _e151003151018_)))
                            (let ((_id151026_ _hd151004151021_))
                              (if (gx#stx-pair? _tl151005151023_)
                                  (let ((_e151006151028_
                                         (gx#syntax-e _tl151005151023_)))
                                    (let ((_hd151007151031_
                                           (##car _e151006151028_))
                                          (_tl151008151033_
                                           (##cdr _e151006151028_)))
                                      (let ((_eid151036_ _hd151007151031_))
                                        (if (gx#stx-null? _tl151008151033_)
                                            (if (and (gx#identifier?
                                                      _id151026_)
                                                     (gx#identifier?
                                                      _eid151036_))
                                                (_lp150957_
                                                 _rest150999_
                                                 _ns150960_
                                                 (cons (cons _id151026_
                                                             (cons _eid151036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151002151014_))
                                            (_E151002151014_)))))
                                  (_E151002151014_)))))
                        (_E151002151014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E151001151038_)))
                                              (_E150971150985_)))))
                                    (_E150971150985_))))
                             (_E150963151071_
                              (lambda ()
                                (if (gx#stx-pair? _e150962150977_)
                                    (let ((_e150965151046_
                                           (gx#syntax-e _e150962150977_)))
                                      (let ((_hd150966151049_
                                             (##car _e150965151046_))
                                            (_tl150967151051_
                                             (##cdr _e150965151046_)))
                                        (if (eq? (gx#stx-e _hd150966151049_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150967151051_)
                                                (let ((_e150968151054_
                                                       (gx#syntax-e
                                                        _tl150967151051_)))
                                                  (let ((_hd150969151057_
                                                         (##car _e150968151054_))
                                                        (_tl150970151059_
                                                         (##cdr _e150968151054_)))
                                                    (let* ((_ns151062_
                                                            _hd150969151057_)
                                                           (_rest151064_
                                                            _tl150970151059_))
                                                      (if '#t
                                                          (let ((_ns151069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151062_)
                             (symbol->string (gx#stx-e _ns151062_))
                             (if (or (gx#stx-string? _ns151062_)
                                     (gx#stx-false? _ns151062_))
                                 (gx#stx-e _ns151062_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150923_
                                  _ns151062_)))))
                    (_lp150957_ _rest151064_ _ns151069_ _r150961_))
                  (_E150964151042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150964151042_))
                                            (_E150964151042_))))
                                    (_E150964151042_)))))
                        (_E150963151071_))))))
          (let* ((_e150926150933_ _stx150923_)
                 (_E150928150937_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150926150933_)))
                 (_E150927150951_
                  (lambda ()
                    (if (gx#stx-pair? _e150926150933_)
                        (let ((_e150929150941_ (gx#syntax-e _e150926150933_)))
                          (let ((_hd150930150944_ (##car _e150929150941_))
                                (_tl150931150946_ (##cdr _e150929150941_)))
                            (let ((_body150949_ _tl150931150946_))
                              (if (gx#stx-list? _body150949_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150925_ _body150949_))
                                  (_E150928150937_)))))
                        (_E150928150937_)))))
            (_E150927150951_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150869_)
        (let* ((_e150870150883_ _stx150869_)
               (_E150872150887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150870150883_)))
               (_E150871150919_
                (lambda ()
                  (if (gx#stx-pair? _e150870150883_)
                      (let ((_e150873150891_ (gx#syntax-e _e150870150883_)))
                        (let ((_hd150874150894_ (##car _e150873150891_))
                              (_tl150875150896_ (##cdr _e150873150891_)))
                          (if (gx#stx-pair? _tl150875150896_)
                              (let ((_e150876150899_
                                     (gx#syntax-e _tl150875150896_)))
                                (let ((_hd150877150902_
                                       (##car _e150876150899_))
                                      (_tl150878150904_
                                       (##cdr _e150876150899_)))
                                  (let ((_hd150907_ _hd150877150902_))
                                    (if (gx#stx-pair? _tl150878150904_)
                                        (let ((_e150879150909_
                                               (gx#syntax-e _tl150878150904_)))
                                          (let ((_hd150880150912_
                                                 (##car _e150879150909_))
                                                (_tl150881150914_
                                                 (##cdr _e150879150909_)))
                                            (let ((_expr150917_
                                                   _hd150880150912_))
                                              (if (gx#stx-null?
                                                   _tl150881150914_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150907_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150907_)
                          (cons _expr150917_ '())))
              (_E150872150887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150872150887_)))))
                                        (_E150872150887_)))))
                              (_E150872150887_))))
                      (_E150872150887_)))))
          (_E150871150919_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150815_)
        (let* ((_e150816150829_ _stx150815_)
               (_E150818150833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150816150829_)))
               (_E150817150865_
                (lambda ()
                  (if (gx#stx-pair? _e150816150829_)
                      (let ((_e150819150837_ (gx#syntax-e _e150816150829_)))
                        (let ((_hd150820150840_ (##car _e150819150837_))
                              (_tl150821150842_ (##cdr _e150819150837_)))
                          (if (gx#stx-pair? _tl150821150842_)
                              (let ((_e150822150845_
                                     (gx#syntax-e _tl150821150842_)))
                                (let ((_hd150823150848_
                                       (##car _e150822150845_))
                                      (_tl150824150850_
                                       (##cdr _e150822150845_)))
                                  (let ((_hd150853_ _hd150823150848_))
                                    (if (gx#stx-pair? _tl150824150850_)
                                        (let ((_e150825150855_
                                               (gx#syntax-e _tl150824150850_)))
                                          (let ((_hd150826150858_
                                                 (##car _e150825150855_))
                                                (_tl150827150860_
                                                 (##cdr _e150825150855_)))
                                            (let ((_expr150863_
                                                   _hd150826150858_))
                                              (if (gx#stx-null?
                                                   _tl150827150860_)
                                                  (if (gx#identifier?
                                                       _hd150853_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150863_ '())))
              (_E150818150833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150818150833_)))))
                                        (_E150818150833_)))))
                              (_E150818150833_))))
                      (_E150818150833_)))))
          (_E150817150865_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150761_)
        (let* ((_e150762150775_ _stx150761_)
               (_E150764150779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150762150775_)))
               (_E150763150811_
                (lambda ()
                  (if (gx#stx-pair? _e150762150775_)
                      (let ((_e150765150783_ (gx#syntax-e _e150762150775_)))
                        (let ((_hd150766150786_ (##car _e150765150783_))
                              (_tl150767150788_ (##cdr _e150765150783_)))
                          (if (gx#stx-pair? _tl150767150788_)
                              (let ((_e150768150791_
                                     (gx#syntax-e _tl150767150788_)))
                                (let ((_hd150769150794_
                                       (##car _e150768150791_))
                                      (_tl150770150796_
                                       (##cdr _e150768150791_)))
                                  (let ((_id150799_ _hd150769150794_))
                                    (if (gx#stx-pair? _tl150770150796_)
                                        (let ((_e150771150801_
                                               (gx#syntax-e _tl150770150796_)))
                                          (let ((_hd150772150804_
                                                 (##car _e150771150801_))
                                                (_tl150773150806_
                                                 (##cdr _e150771150801_)))
                                            (let ((_alias-id150809_
                                                   _hd150772150804_))
                                              (if (gx#stx-null?
                                                   _tl150773150806_)
                                                  (if (and (gx#identifier?
                                                            _id150799_)
                                                           (gx#identifier?
                                                            _alias-id150809_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150809_ '())))
              (_E150764150779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150764150779_)))))
                                        (_E150764150779_)))))
                              (_E150764150779_))))
                      (_E150764150779_)))))
          (_E150763150811_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150718_)
        (let* ((_e150719150729_ _stx150718_)
               (_E150721150733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150719150729_)))
               (_E150720150757_
                (lambda ()
                  (if (gx#stx-pair? _e150719150729_)
                      (let ((_e150722150737_ (gx#syntax-e _e150719150729_)))
                        (let ((_hd150723150740_ (##car _e150722150737_))
                              (_tl150724150742_ (##cdr _e150722150737_)))
                          (if (gx#stx-pair? _tl150724150742_)
                              (let ((_e150725150745_
                                     (gx#syntax-e _tl150724150742_)))
                                (let ((_hd150726150748_
                                       (##car _e150725150745_))
                                      (_tl150727150750_
                                       (##cdr _e150725150745_)))
                                  (let* ((_hd150753_ _hd150726150748_)
                                         (_body150755_ _tl150727150750_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150753_)
                                             (gx#stx-list? _body150755_)
                                             (not (gx#stx-null? _body150755_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150753_)
                                         _body150755_)
                                        (_E150721150733_)))))
                              (_E150721150733_))))
                      (_E150721150733_)))))
          (_E150720150757_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150654_)
        (letrec ((_generate150656_
                  (lambda (_clause150686_)
                    (let* ((_e150687150694_ _clause150686_)
                           (_E150689150698_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150654_
                               _clause150686_)))
                           (_E150688150714_
                            (lambda ()
                              (if (gx#stx-pair? _e150687150694_)
                                  (let ((_e150690150702_
                                         (gx#syntax-e _e150687150694_)))
                                    (let ((_hd150691150705_
                                           (##car _e150690150702_))
                                          (_tl150692150707_
                                           (##cdr _e150690150702_)))
                                      (let* ((_hd150710_ _hd150691150705_)
                                             (_body150712_ _tl150692150707_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150710_)
                                                 (gx#stx-list? _body150712_)
                                                 (not (gx#stx-null?
                                                       _body150712_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150710_)
                                                   _body150712_)
                                             (gx#stx-source _clause150686_))
                                            (_E150689150698_)))))
                                  (_E150689150698_)))))
                      (_E150688150714_)))))
          (let* ((_e150657150664_ _stx150654_)
                 (_E150659150668_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150657150664_)))
                 (_E150658150682_
                  (lambda ()
                    (if (gx#stx-pair? _e150657150664_)
                        (let ((_e150660150672_ (gx#syntax-e _e150657150664_)))
                          (let ((_hd150661150675_ (##car _e150660150672_))
                                (_tl150662150677_ (##cdr _e150660150672_)))
                            (let ((_clauses150680_ _tl150662150677_))
                              (if (gx#stx-list? _clauses150680_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150656_
                                    _clauses150680_))
                                  (_E150659150668_)))))
                        (_E150659150668_)))))
            (_E150658150682_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150555_ _form150556_)
        (letrec ((_generate150558_
                  (lambda (_bind150601_)
                    (let* ((_e150602150612_ _bind150601_)
                           (_E150604150616_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150555_
                               _bind150601_)))
                           (_E150603150640_
                            (lambda ()
                              (if (gx#stx-pair? _e150602150612_)
                                  (let ((_e150605150620_
                                         (gx#syntax-e _e150602150612_)))
                                    (let ((_hd150606150623_
                                           (##car _e150605150620_))
                                          (_tl150607150625_
                                           (##cdr _e150605150620_)))
                                      (let ((_ids150628_ _hd150606150623_))
                                        (if (gx#stx-pair? _tl150607150625_)
                                            (let ((_e150608150630_
                                                   (gx#syntax-e
                                                    _tl150607150625_)))
                                              (let ((_hd150609150633_
                                                     (##car _e150608150630_))
                                                    (_tl150610150635_
                                                     (##cdr _e150608150630_)))
                                                (let ((_expr150638_
                                                       _hd150609150633_))
                                                  (if (gx#stx-null?
                                                       _tl150610150635_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150628_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150628_)
                        (cons _expr150638_ '()))
                  (_E150604150616_))
              (_E150604150616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150604150616_)))))
                                  (_E150604150616_)))))
                      (_E150603150640_)))))
          (let* ((_e150559150569_ _stx150555_)
                 (_E150561150573_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150559150569_)))
                 (_E150560150597_
                  (lambda ()
                    (if (gx#stx-pair? _e150559150569_)
                        (let ((_e150562150577_ (gx#syntax-e _e150559150569_)))
                          (let ((_hd150563150580_ (##car _e150562150577_))
                                (_tl150564150582_ (##cdr _e150562150577_)))
                            (if (gx#stx-pair? _tl150564150582_)
                                (let ((_e150565150585_
                                       (gx#syntax-e _tl150564150582_)))
                                  (let ((_hd150566150588_
                                         (##car _e150565150585_))
                                        (_tl150567150590_
                                         (##cdr _e150565150585_)))
                                    (let* ((_hd150593_ _hd150566150588_)
                                           (_body150595_ _tl150567150590_))
                                      (if (and (gx#stx-list? _hd150593_)
                                               (gx#stx-list? _body150595_)
                                               (not (gx#stx-null?
                                                     _body150595_)))
                                          (gx#core-cons*
                                           _form150556_
                                           (gx#stx-map1
                                            _generate150558_
                                            _hd150593_)
                                           _body150595_)
                                          (_E150561150573_)))))
                                (_E150561150573_))))
                        (_E150561150573_)))))
            (_E150560150597_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150647_)
        (let ((_form150649_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150647_ _form150649_))))
    (define gx#macro-expand-let-values
      (lambda _g157500_
        (let ((_g157499_ (##length _g157500_)))
          (cond ((##fx= _g157499_ 1)
                 (apply (lambda (_stx150647_)
                          (gx#macro-expand-let-values__0 _stx150647_))
                        _g157500_))
                ((##fx= _g157499_ 2)
                 (apply (lambda (_stx150651_ _form150652_)
                          (gx#macro-expand-let-values__%
                           _stx150651_
                           _form150652_))
                        _g157500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157500_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150552_)
        (gx#macro-expand-let-values__% _stx150552_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150550_)
        (gx#macro-expand-let-values__% _stx150550_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150441_)
        (let* ((_e150442150468_ _stx150441_)
               (_E150454150472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150442150468_)))
               (_E150444150514_
                (lambda ()
                  (if (gx#stx-pair? _e150442150468_)
                      (let ((_e150455150476_ (gx#syntax-e _e150442150468_)))
                        (let ((_hd150456150479_ (##car _e150455150476_))
                              (_tl150457150481_ (##cdr _e150455150476_)))
                          (if (gx#stx-pair? _tl150457150481_)
                              (let ((_e150458150484_
                                     (gx#syntax-e _tl150457150481_)))
                                (let ((_hd150459150487_
                                       (##car _e150458150484_))
                                      (_tl150460150489_
                                       (##cdr _e150458150484_)))
                                  (let ((_test150492_ _hd150459150487_))
                                    (if (gx#stx-pair? _tl150460150489_)
                                        (let ((_e150461150494_
                                               (gx#syntax-e _tl150460150489_)))
                                          (let ((_hd150462150497_
                                                 (##car _e150461150494_))
                                                (_tl150463150499_
                                                 (##cdr _e150461150494_)))
                                            (let ((_K150502_ _hd150462150497_))
                                              (if (gx#stx-pair?
                                                   _tl150463150499_)
                                                  (let ((_e150464150504_
                                                         (gx#syntax-e
                                                          _tl150463150499_)))
                                                    (let ((_hd150465150507_
                                                           (##car _e150464150504_))
                                                          (_tl150466150509_
                                                           (##cdr _e150464150504_)))
                                                      (let ((_E150512_
                                                             _hd150465150507_))
                                                        (if (gx#stx-null?
                                                             _tl150466150509_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150492_
                         _K150502_
                         _E150512_)
                        (_E150454150472_))
                    (_E150454150472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150454150472_)))))
                                        (_E150454150472_)))))
                              (_E150454150472_))))
                      (_E150454150472_))))
               (_E150443150546_
                (lambda ()
                  (if (gx#stx-pair? _e150442150468_)
                      (let ((_e150445150518_ (gx#syntax-e _e150442150468_)))
                        (let ((_hd150446150521_ (##car _e150445150518_))
                              (_tl150447150523_ (##cdr _e150445150518_)))
                          (if (gx#stx-pair? _tl150447150523_)
                              (let ((_e150448150526_
                                     (gx#syntax-e _tl150447150523_)))
                                (let ((_hd150449150529_
                                       (##car _e150448150526_))
                                      (_tl150450150531_
                                       (##cdr _e150448150526_)))
                                  (let ((_test150534_ _hd150449150529_))
                                    (if (gx#stx-pair? _tl150450150531_)
                                        (let ((_e150451150536_
                                               (gx#syntax-e _tl150450150531_)))
                                          (let ((_hd150452150539_
                                                 (##car _e150451150536_))
                                                (_tl150453150541_
                                                 (##cdr _e150451150536_)))
                                            (let ((_K150544_ _hd150452150539_))
                                              (if (gx#stx-null?
                                                   _tl150453150541_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150534_
                                                       _K150544_
                                                       '#!void)
                                                      (_E150444150514_))
                                                  (_E150444150514_)))))
                                        (_E150444150514_)))))
                              (_E150444150514_))))
                      (_E150444150514_)))))
          (_E150443150546_))))
    (define gx#free-identifier=?
      (lambda (_xid150429_ _yid150430_)
        (let ((_xe150432_ (gx#resolve-identifier__0 _xid150429_))
              (_ye150433_ (gx#resolve-identifier__0 _yid150430_)))
          (if (and _xe150432_ _ye150433_)
              (let ((_$e150435_ (eq? _xe150432_ _ye150433_)))
                (if _$e150435_
                    _$e150435_
                    (if (##structure-instance-of? _xe150432_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150433_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150432_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150433_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150432_ _ye150433_)
                  '#f
                  (gx#stx-eq? _xid150429_ _yid150430_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150413_ _yid150414_)
        (letrec ((_context150416_
                  (lambda (_e150427_)
                    (if (##structure-direct-instance-of?
                         _e150427_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150427_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150417_
                  (lambda (_e150425_)
                    (if (symbol? _e150425_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150425_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150425_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150425_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150418_
                  (lambda (_e150423_)
                    (if (symbol? _e150423_)
                        _e150423_
                        (gx#syntax-local-unwrap _e150423_)))))
          (let ((_x150420_ (_unwrap150418_ _xid150413_))
                (_y150421_ (_unwrap150418_ _yid150414_)))
            (if (gx#stx-eq? _x150420_ _y150421_)
                (if (eq? (_context150416_ _x150420_)
                         (_context150416_ _y150421_))
                    (equal? (_marks150417_ _x150420_)
                            (_marks150417_ _y150421_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150411_)
        (if (gx#identifier? _stx150411_)
            (gx#core-identifier=? _stx150411_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150409_)
        (if (gx#identifier? _stx150409_)
            (gx#core-identifier=? _stx150409_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150407_)
        (if (gx#identifier? _x150407_)
            (if (not (gx#underscore? _x150407_)) _x150407_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150353_ _where150354_)
        (let _lp150356_ ((_rest150358_ (gx#syntax->list _stx150353_)))
          (let* ((_rest150359150367_ _rest150358_)
                 (_else150361150375_ (lambda () '#t))
                 (_K150363150385_
                  (lambda (_rest150378_ _hd150379_)
                    (if (not (gx#identifier? _hd150379_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150354_
                         _hd150379_)
                        (if (find (lambda (_g150380150382_)
                                    (gx#bound-identifier=?
                                     _g150380150382_
                                     _hd150379_))
                                  _rest150378_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150354_
                             _hd150379_)
                            (_lp150356_ _rest150378_))))))
            (if (##pair? _rest150359150367_)
                (let ((_hd150364150388_ (##car _rest150359150367_))
                      (_tl150365150390_ (##cdr _rest150359150367_)))
                  (let* ((_hd150393_ _hd150364150388_)
                         (_rest150395_ _tl150365150390_))
                    (_K150363150385_ _rest150395_ _hd150393_)))
                (_else150361150375_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150400_)
        (let ((_where150402_ _stx150400_))
          (gx#check-duplicate-identifiers__% _stx150400_ _where150402_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157502_
        (let ((_g157501_ (##length _g157502_)))
          (cond ((##fx= _g157501_ 1)
                 (apply (lambda (_stx150400_)
                          (gx#check-duplicate-identifiers__0 _stx150400_))
                        _g157502_))
                ((##fx= _g157501_ 2)
                 (apply (lambda (_stx150404_ _where150405_)
                          (gx#check-duplicate-identifiers__%
                           _stx150404_
                           _where150405_))
                        _g157502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157502_))))))
    (define gx#core-bind-values?
      (lambda (_stx150345_)
        (gx#stx-andmap
         (lambda (_x150347_)
           (let ((_$e150349_ (gx#identifier? _x150347_)))
             (if _$e150349_ _$e150349_ (gx#stx-false? _x150347_))))
         _stx150345_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150309_ _rebind?150310_ _phi150311_ _ctx150312_)
        (gx#stx-for-each1
         (lambda (_id150314_)
           (if (gx#identifier? _id150314_)
               (gx#core-bind-runtime!__%
                _id150314_
                _rebind?150310_
                _phi150311_
                _ctx150312_)
               '#!void))
         _stx150309_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150319_)
        (let* ((_rebind?150321_ '#f)
               (_phi150323_ (gx#current-expander-phi))
               (_ctx150325_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150319_
           _rebind?150321_
           _phi150323_
           _ctx150325_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150327_ _rebind?150328_)
        (let* ((_phi150330_ (gx#current-expander-phi))
               (_ctx150332_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150327_
           _rebind?150328_
           _phi150330_
           _ctx150332_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150334_ _rebind?150335_ _phi150336_)
        (let ((_ctx150338_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150334_
           _rebind?150335_
           _phi150336_
           _ctx150338_))))
    (define gx#core-bind-values!
      (lambda _g157504_
        (let ((_g157503_ (##length _g157504_)))
          (cond ((##fx= _g157503_ 1)
                 (apply (lambda (_stx150319_)
                          (gx#core-bind-values!__0 _stx150319_))
                        _g157504_))
                ((##fx= _g157503_ 2)
                 (apply (lambda (_stx150327_ _rebind?150328_)
                          (gx#core-bind-values!__1
                           _stx150327_
                           _rebind?150328_))
                        _g157504_))
                ((##fx= _g157503_ 3)
                 (apply (lambda (_stx150334_ _rebind?150335_ _phi150336_)
                          (gx#core-bind-values!__2
                           _stx150334_
                           _rebind?150335_
                           _phi150336_))
                        _g157504_))
                ((##fx= _g157503_ 4)
                 (apply (lambda (_stx150340_
                                 _rebind?150341_
                                 _phi150342_
                                 _ctx150343_)
                          (gx#core-bind-values!__%
                           _stx150340_
                           _rebind?150341_
                           _phi150342_
                           _ctx150343_))
                        _g157504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157504_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150304_)
        (gx#stx-map1
         (lambda (_x150306_)
           (if (gx#identifier? _x150306_)
               (gx#core-quote-syntax__0 _x150306_)
               '#f))
         _stx150304_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150297_)
        (if (gx#identifier? _stx150297_)
            (let* ((_bind150299_ (gx#resolve-identifier__0 _stx150297_))
                   (_$e150301_ (not _bind150299_)))
              (if _$e150301_
                  _$e150301_
                  (##structure-instance-of?
                   _bind150299_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150289_ _form150290_)
        (let ((_bind150292_ (gx#resolve-identifier__0 _id150289_)))
          (if (##structure-instance-of? _bind150292_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150289_)
              (if (not _bind150292_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150289_)))
                      (gx#core-quote-syntax__0 _id150289_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150290_
                       _id150289_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150290_
                   _id150289_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150248_ _rebind?150249_ _phi150250_ _ctx150251_)
        (let* ((_key150253_ (gx#core-identifier-key _id150248_))
               (_eid150255_
                (gx#make-binding-id__%
                 _key150253_
                 '#f
                 _phi150250_
                 _ctx150251_))
               (_bind150257_
                (if (##structure-instance-of?
                     _ctx150251_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150255_
                     _key150253_
                     _phi150250_
                     _ctx150251_)
                    (if (##structure-instance-of?
                         _ctx150251_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150255_
                         _key150253_
                         _phi150250_)
                        (if (##structure-instance-of?
                             _ctx150251_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150255_
                             _key150253_
                             _phi150250_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150255_
                             _key150253_
                             _phi150250_))))))
          (gx#bind-identifier!__%
           _id150248_
           _bind150257_
           _rebind?150249_
           _phi150250_
           _ctx150251_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150263_)
        (let* ((_rebind?150265_ '#f)
               (_phi150267_ (gx#current-expander-phi))
               (_ctx150269_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150263_
           _rebind?150265_
           _phi150267_
           _ctx150269_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150271_ _rebind?150272_)
        (let* ((_phi150274_ (gx#current-expander-phi))
               (_ctx150276_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150271_
           _rebind?150272_
           _phi150274_
           _ctx150276_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150278_ _rebind?150279_ _phi150280_)
        (let ((_ctx150282_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150278_
           _rebind?150279_
           _phi150280_
           _ctx150282_))))
    (define gx#core-bind-runtime!
      (lambda _g157506_
        (let ((_g157505_ (##length _g157506_)))
          (cond ((##fx= _g157505_ 1)
                 (apply (lambda (_id150263_)
                          (gx#core-bind-runtime!__0 _id150263_))
                        _g157506_))
                ((##fx= _g157505_ 2)
                 (apply (lambda (_id150271_ _rebind?150272_)
                          (gx#core-bind-runtime!__1
                           _id150271_
                           _rebind?150272_))
                        _g157506_))
                ((##fx= _g157505_ 3)
                 (apply (lambda (_id150278_ _rebind?150279_ _phi150280_)
                          (gx#core-bind-runtime!__2
                           _id150278_
                           _rebind?150279_
                           _phi150280_))
                        _g157506_))
                ((##fx= _g157505_ 4)
                 (apply (lambda (_id150284_
                                 _rebind?150285_
                                 _phi150286_
                                 _ctx150287_)
                          (gx#core-bind-runtime!__%
                           _id150284_
                           _rebind?150285_
                           _phi150286_
                           _ctx150287_))
                        _g157506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157506_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150203_ _eid150204_ _rebind?150205_ _phi150206_ _ctx150207_)
        (let* ((_key150209_ (gx#core-identifier-key _id150203_))
               (_bind150211_
                (if (##structure-instance-of?
                     _ctx150207_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150204_
                     _key150209_
                     _phi150206_
                     _ctx150207_)
                    (if (##structure-instance-of?
                         _ctx150207_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150204_
                         _key150209_
                         _phi150206_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150204_
                         _key150209_
                         _phi150206_)))))
          (gx#bind-identifier!__%
           _id150203_
           _bind150211_
           _rebind?150205_
           _phi150206_
           _ctx150207_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150217_ _eid150218_)
        (let* ((_rebind?150220_ '#f)
               (_phi150222_ (gx#current-expander-phi))
               (_ctx150224_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150217_
           _eid150218_
           _rebind?150220_
           _phi150222_
           _ctx150224_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150226_ _eid150227_ _rebind?150228_)
        (let* ((_phi150230_ (gx#current-expander-phi))
               (_ctx150232_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150226_
           _eid150227_
           _rebind?150228_
           _phi150230_
           _ctx150232_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150234_ _eid150235_ _rebind?150236_ _phi150237_)
        (let ((_ctx150239_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150234_
           _eid150235_
           _rebind?150236_
           _phi150237_
           _ctx150239_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157508_
        (let ((_g157507_ (##length _g157508_)))
          (cond ((##fx= _g157507_ 2)
                 (apply (lambda (_id150217_ _eid150218_)
                          (gx#core-bind-runtime-reference!__0
                           _id150217_
                           _eid150218_))
                        _g157508_))
                ((##fx= _g157507_ 3)
                 (apply (lambda (_id150226_ _eid150227_ _rebind?150228_)
                          (gx#core-bind-runtime-reference!__1
                           _id150226_
                           _eid150227_
                           _rebind?150228_))
                        _g157508_))
                ((##fx= _g157507_ 4)
                 (apply (lambda (_id150234_
                                 _eid150235_
                                 _rebind?150236_
                                 _phi150237_)
                          (gx#core-bind-runtime-reference!__2
                           _id150234_
                           _eid150235_
                           _rebind?150236_
                           _phi150237_))
                        _g157508_))
                ((##fx= _g157507_ 5)
                 (apply (lambda (_id150241_
                                 _eid150242_
                                 _rebind?150243_
                                 _phi150244_
                                 _ctx150245_)
                          (gx#core-bind-runtime-reference!__%
                           _id150241_
                           _eid150242_
                           _rebind?150243_
                           _phi150244_
                           _ctx150245_))
                        _g157508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157508_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150163_ _eid150164_ _rebind?150165_ _phi150166_ _ctx150167_)
        (gx#bind-identifier!__%
         _id150163_
         (##structure
          gx#extern-binding::t
          _eid150164_
          (gx#core-identifier-key _id150163_)
          _phi150166_)
         _rebind?150165_
         _phi150166_
         _ctx150167_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150172_ _eid150173_)
        (let* ((_rebind?150175_ '#f)
               (_phi150177_ (gx#current-expander-phi))
               (_ctx150179_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150172_
           _eid150173_
           _rebind?150175_
           _phi150177_
           _ctx150179_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150181_ _eid150182_ _rebind?150183_)
        (let* ((_phi150185_ (gx#current-expander-phi))
               (_ctx150187_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150181_
           _eid150182_
           _rebind?150183_
           _phi150185_
           _ctx150187_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150189_ _eid150190_ _rebind?150191_ _phi150192_)
        (let ((_ctx150194_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150189_
           _eid150190_
           _rebind?150191_
           _phi150192_
           _ctx150194_))))
    (define gx#core-bind-extern!
      (lambda _g157510_
        (let ((_g157509_ (##length _g157510_)))
          (cond ((##fx= _g157509_ 2)
                 (apply (lambda (_id150172_ _eid150173_)
                          (gx#core-bind-extern!__0 _id150172_ _eid150173_))
                        _g157510_))
                ((##fx= _g157509_ 3)
                 (apply (lambda (_id150181_ _eid150182_ _rebind?150183_)
                          (gx#core-bind-extern!__1
                           _id150181_
                           _eid150182_
                           _rebind?150183_))
                        _g157510_))
                ((##fx= _g157509_ 4)
                 (apply (lambda (_id150189_
                                 _eid150190_
                                 _rebind?150191_
                                 _phi150192_)
                          (gx#core-bind-extern!__2
                           _id150189_
                           _eid150190_
                           _rebind?150191_
                           _phi150192_))
                        _g157510_))
                ((##fx= _g157509_ 5)
                 (apply (lambda (_id150196_
                                 _eid150197_
                                 _rebind?150198_
                                 _phi150199_
                                 _ctx150200_)
                          (gx#core-bind-extern!__%
                           _id150196_
                           _eid150197_
                           _rebind?150198_
                           _phi150199_
                           _ctx150200_))
                        _g157510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157510_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150117_ _e150118_ _rebind?150119_ _phi150120_ _ctx150121_)
        (gx#bind-identifier!__%
         _id150117_
         (let ((_key150126_ (gx#core-identifier-key _id150117_))
               (_e150127_
                (if (or (##structure-instance-of? _e150118_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150118_
                         'gx#expander-context::t))
                    _e150118_
                    (##structure
                     gx#user-expander::t
                     _e150118_
                     _ctx150121_
                     _phi150120_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150126_ '#t _phi150120_ _ctx150121_)
            _key150126_
            _phi150120_
            _e150127_))
         _rebind?150119_
         _phi150120_
         _ctx150121_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150132_ _e150133_)
        (let* ((_rebind?150135_ '#f)
               (_phi150137_ (gx#current-expander-phi))
               (_ctx150139_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150132_
           _e150133_
           _rebind?150135_
           _phi150137_
           _ctx150139_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150141_ _e150142_ _rebind?150143_)
        (let* ((_phi150145_ (gx#current-expander-phi))
               (_ctx150147_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150141_
           _e150142_
           _rebind?150143_
           _phi150145_
           _ctx150147_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150149_ _e150150_ _rebind?150151_ _phi150152_)
        (let ((_ctx150154_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150149_
           _e150150_
           _rebind?150151_
           _phi150152_
           _ctx150154_))))
    (define gx#core-bind-syntax!
      (lambda _g157512_
        (let ((_g157511_ (##length _g157512_)))
          (cond ((##fx= _g157511_ 2)
                 (apply (lambda (_id150132_ _e150133_)
                          (gx#core-bind-syntax!__0 _id150132_ _e150133_))
                        _g157512_))
                ((##fx= _g157511_ 3)
                 (apply (lambda (_id150141_ _e150142_ _rebind?150143_)
                          (gx#core-bind-syntax!__1
                           _id150141_
                           _e150142_
                           _rebind?150143_))
                        _g157512_))
                ((##fx= _g157511_ 4)
                 (apply (lambda (_id150149_
                                 _e150150_
                                 _rebind?150151_
                                 _phi150152_)
                          (gx#core-bind-syntax!__2
                           _id150149_
                           _e150150_
                           _rebind?150151_
                           _phi150152_))
                        _g157512_))
                ((##fx= _g157511_ 5)
                 (apply (lambda (_id150156_
                                 _e150157_
                                 _rebind?150158_
                                 _phi150159_
                                 _ctx150160_)
                          (gx#core-bind-syntax!__%
                           _id150156_
                           _e150157_
                           _rebind?150158_
                           _phi150159_
                           _ctx150160_))
                        _g157512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157512_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150100_ _e150101_ _rebind?150102_)
        (gx#core-bind-syntax!__%
         _id150100_
         _e150101_
         _rebind?150102_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150107_ _e150108_)
        (let ((_rebind?150110_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150107_
           _e150108_
           _rebind?150110_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157514_
        (let ((_g157513_ (##length _g157514_)))
          (cond ((##fx= _g157513_ 2)
                 (apply (lambda (_id150107_ _e150108_)
                          (gx#core-bind-root-syntax!__0 _id150107_ _e150108_))
                        _g157514_))
                ((##fx= _g157513_ 3)
                 (apply (lambda (_id150112_ _e150113_ _rebind?150114_)
                          (gx#core-bind-root-syntax!__%
                           _id150112_
                           _e150113_
                           _rebind?150114_))
                        _g157514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157514_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150058_
               _alias-id150059_
               _rebind?150060_
               _phi150061_
               _ctx150062_)
        (gx#bind-identifier!__%
         _id150058_
         (let ((_key150064_ (gx#core-identifier-key _id150058_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150064_ '#t _phi150061_ _ctx150062_)
            _key150064_
            _phi150061_
            _alias-id150059_))
         _rebind?150060_
         _phi150061_
         _ctx150062_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150069_ _alias-id150070_)
        (let* ((_rebind?150072_ '#f)
               (_phi150074_ (gx#current-expander-phi))
               (_ctx150076_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150069_
           _alias-id150070_
           _rebind?150072_
           _phi150074_
           _ctx150076_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150078_ _alias-id150079_ _rebind?150080_)
        (let* ((_phi150082_ (gx#current-expander-phi))
               (_ctx150084_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150078_
           _alias-id150079_
           _rebind?150080_
           _phi150082_
           _ctx150084_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150086_ _alias-id150087_ _rebind?150088_ _phi150089_)
        (let ((_ctx150091_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150086_
           _alias-id150087_
           _rebind?150088_
           _phi150089_
           _ctx150091_))))
    (define gx#core-bind-alias!
      (lambda _g157516_
        (let ((_g157515_ (##length _g157516_)))
          (cond ((##fx= _g157515_ 2)
                 (apply (lambda (_id150069_ _alias-id150070_)
                          (gx#core-bind-alias!__0 _id150069_ _alias-id150070_))
                        _g157516_))
                ((##fx= _g157515_ 3)
                 (apply (lambda (_id150078_ _alias-id150079_ _rebind?150080_)
                          (gx#core-bind-alias!__1
                           _id150078_
                           _alias-id150079_
                           _rebind?150080_))
                        _g157516_))
                ((##fx= _g157515_ 4)
                 (apply (lambda (_id150086_
                                 _alias-id150087_
                                 _rebind?150088_
                                 _phi150089_)
                          (gx#core-bind-alias!__2
                           _id150086_
                           _alias-id150087_
                           _rebind?150088_
                           _phi150089_))
                        _g157516_))
                ((##fx= _g157515_ 5)
                 (apply (lambda (_id150093_
                                 _alias-id150094_
                                 _rebind?150095_
                                 _phi150096_
                                 _ctx150097_)
                          (gx#core-bind-alias!__%
                           _id150093_
                           _alias-id150094_
                           _rebind?150095_
                           _phi150096_
                           _ctx150097_))
                        _g157516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157516_))))))
    (define gx#make-binding-id__%
      (lambda (_key150015_ _syntax?150016_ _phi150017_ _ctx150018_)
        (if (uninterned-symbol? _key150015_)
            (gensym 'L)
            (if (pair? _key150015_)
                (gensym (car _key150015_))
                (if (##structure-instance-of? _ctx150018_ 'gx#top-context::t)
                    (let ((_ns150020_
                           (gx#core-context-namespace__% _ctx150018_)))
                      (if (and (fxzero? _phi150017_) (not _syntax?150016_))
                          (if _ns150020_
                              (make-symbol__1 _ns150020_ '"#" _key150015_)
                              _key150015_)
                          (if _syntax?150016_
                              (make-symbol__1
                               (let ((_$e150022_ _ns150020_))
                                 (if _$e150022_ _$e150022_ '""))
                               '"[:"
                               (number->string _phi150017_)
                               '":]#"
                               _key150015_)
                              (make-symbol__1
                               (let ((_$e150025_ _ns150020_))
                                 (if _$e150025_ _$e150025_ '""))
                               '"["
                               (number->string _phi150017_)
                               '"]#"
                               _key150015_))))
                    (gensym _key150015_))))))
    (define gx#make-binding-id__0
      (lambda (_key150031_)
        (let* ((_syntax?150033_ '#f)
               (_phi150035_ (gx#current-expander-phi))
               (_ctx150037_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150031_
           _syntax?150033_
           _phi150035_
           _ctx150037_))))
    (define gx#make-binding-id__1
      (lambda (_key150039_ _syntax?150040_)
        (let* ((_phi150042_ (gx#current-expander-phi))
               (_ctx150044_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150039_
           _syntax?150040_
           _phi150042_
           _ctx150044_))))
    (define gx#make-binding-id__2
      (lambda (_key150046_ _syntax?150047_ _phi150048_)
        (let ((_ctx150050_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150046_
           _syntax?150047_
           _phi150048_
           _ctx150050_))))
    (define gx#make-binding-id
      (lambda _g157518_
        (let ((_g157517_ (##length _g157518_)))
          (cond ((##fx= _g157517_ 1)
                 (apply (lambda (_key150031_)
                          (gx#make-binding-id__0 _key150031_))
                        _g157518_))
                ((##fx= _g157517_ 2)
                 (apply (lambda (_key150039_ _syntax?150040_)
                          (gx#make-binding-id__1 _key150039_ _syntax?150040_))
                        _g157518_))
                ((##fx= _g157517_ 3)
                 (apply (lambda (_key150046_ _syntax?150047_ _phi150048_)
                          (gx#make-binding-id__2
                           _key150046_
                           _syntax?150047_
                           _phi150048_))
                        _g157518_))
                ((##fx= _g157517_ 4)
                 (apply (lambda (_key150052_
                                 _syntax?150053_
                                 _phi150054_
                                 _ctx150055_)
                          (gx#make-binding-id__%
                           _key150052_
                           _syntax?150053_
                           _phi150054_
                           _ctx150055_))
                        _g157518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157518_))))))))
