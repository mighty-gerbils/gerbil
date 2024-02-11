(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707616238)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152986_)
        (letrec ((_expand-special152988_
                  (lambda (_hd152990_ _K152991_ _rest152992_ _r152993_)
                    (_K152991_
                     _rest152992_
                     (cons (gx#core-expand-top _hd152990_) _r152993_)))))
          (gx#core-expand-block__0 _stx152986_ _expand-special152988_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152739_)
        (letrec ((_expand-special152741_
                  (lambda (_hd152861_ _K152862_ _rest152863_ _r152864_)
                    (let* ((_K152868_
                            (lambda (_e152866_)
                              (_K152862_
                               _rest152863_
                               (cons _e152866_ _r152864_))))
                           (_e152869152898_ _hd152861_)
                           (_E152893152902_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152869152898_)))
                           (_E152889152914_
                            (lambda ()
                              (if (gx#stx-pair? _e152869152898_)
                                  (let ((_e152894152906_
                                         (gx#syntax-e _e152869152898_)))
                                    (let ((_hd152895152909_
                                           (##car _e152894152906_))
                                          (_tl152896152911_
                                           (##cdr _e152894152906_)))
                                      (if (and (gx#identifier?
                                                _hd152895152909_)
                                               (gx#core-identifier=?
                                                _hd152895152909_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152868_
                                               (gx#core-expand-define-runtime%
                                                _hd152861_))
                                              (_E152893152902_))
                                          (_E152893152902_))))
                                  (_E152893152902_))))
                           (_E152885152926_
                            (lambda ()
                              (if (gx#stx-pair? _e152869152898_)
                                  (let ((_e152890152918_
                                         (gx#syntax-e _e152869152898_)))
                                    (let ((_hd152891152921_
                                           (##car _e152890152918_))
                                          (_tl152892152923_
                                           (##cdr _e152890152918_)))
                                      (if (and (gx#identifier?
                                                _hd152891152921_)
                                               (gx#core-identifier=?
                                                _hd152891152921_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152868_
                                               (gx#core-expand-define-alias%
                                                _hd152861_))
                                              (_E152889152914_))
                                          (_E152889152914_))))
                                  (_E152889152914_))))
                           (_E152875152938_
                            (lambda ()
                              (if (gx#stx-pair? _e152869152898_)
                                  (let ((_e152886152930_
                                         (gx#syntax-e _e152869152898_)))
                                    (let ((_hd152887152933_
                                           (##car _e152886152930_))
                                          (_tl152888152935_
                                           (##cdr _e152886152930_)))
                                      (if (and (gx#identifier?
                                                _hd152887152933_)
                                               (gx#core-identifier=?
                                                _hd152887152933_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152868_
                                               (gx#core-expand-define-syntax%
                                                _hd152861_))
                                              (_E152885152926_))
                                          (_E152885152926_))))
                                  (_E152885152926_))))
                           (_E152871152970_
                            (lambda ()
                              (if (gx#stx-pair? _e152869152898_)
                                  (let ((_e152876152942_
                                         (gx#syntax-e _e152869152898_)))
                                    (let ((_hd152877152945_
                                           (##car _e152876152942_))
                                          (_tl152878152947_
                                           (##cdr _e152876152942_)))
                                      (if (and (gx#identifier?
                                                _hd152877152945_)
                                               (gx#core-identifier=?
                                                _hd152877152945_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152878152947_)
                                              (let ((_e152879152950_
                                                     (gx#syntax-e
                                                      _tl152878152947_)))
                                                (let ((_hd152880152953_
                                                       (##car _e152879152950_))
                                                      (_tl152881152955_
                                                       (##cdr _e152879152950_)))
                                                  (let ((_hd-bind152958_
                                                         _hd152880152953_))
                                                    (if (gx#stx-pair?
                                                         _tl152881152955_)
                                                        (let ((_e152882152960_
                                                               (gx#syntax-e
                                                                _tl152881152955_)))
                                                          (let ((_hd152883152963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152882152960_))
                        (_tl152884152965_ (##cdr _e152882152960_)))
                    (let ((_expr152968_ _hd152883152963_))
                      (if (gx#stx-null? _tl152884152965_)
                          (if (gx#core-bind-values? _hd-bind152958_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152958_)
                                (_K152868_ _hd152861_))
                              (_E152875152938_))
                          (_E152875152938_)))))
                (_E152875152938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152875152938_))
                                          (_E152875152938_))))
                                  (_E152875152938_))))
                           (_E152870152982_
                            (lambda ()
                              (if (gx#stx-pair? _e152869152898_)
                                  (let ((_e152872152974_
                                         (gx#syntax-e _e152869152898_)))
                                    (let ((_hd152873152977_
                                           (##car _e152872152974_))
                                          (_tl152874152979_
                                           (##cdr _e152872152974_)))
                                      (if (and (gx#identifier?
                                                _hd152873152977_)
                                               (gx#core-identifier=?
                                                _hd152873152977_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152868_
                                               (gx#core-expand-begin-syntax%
                                                _hd152861_))
                                              (_E152871152970_))
                                          (_E152871152970_))))
                                  (_E152871152970_)))))
                      (_E152870152982_))))
                 (_eval-body152742_
                  (lambda (_rbody152750_)
                    (let _lp152752_ ((_rest152754_ _rbody152750_)
                                     (_body152755_ '())
                                     (_ebody152756_ '()))
                      (let* ((_rest152757152765_ _rest152754_)
                             (_else152759152773_
                              (lambda ()
                                (values _body152755_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152756_)
                                          (gx#stx-source _stx152739_))))))
                             (_K152761152849_
                              (lambda (_rest152776_ _hd152777_)
                                (let* ((_e152778152795_ _hd152777_)
                                       (_E152790152799_
                                        (lambda ()
                                          (_lp152752_
                                           _rest152776_
                                           (cons _hd152777_ _body152755_)
                                           (cons _hd152777_ _ebody152756_))))
                                       (_E152780152811_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152778152795_)
                                              (let ((_e152791152803_
                                                     (gx#syntax-e
                                                      _e152778152795_)))
                                                (let ((_hd152792152806_
                                                       (##car _e152791152803_))
                                                      (_tl152793152808_
                                                       (##cdr _e152791152803_)))
                                                  (if (and (gx#identifier?
                                                            _hd152792152806_)
                                                           (gx#core-identifier=?
                                                            _hd152792152806_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152752_
                                                           _rest152776_
                                                           (cons _hd152777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152755_)
                   _ebody152756_)
                  (_E152790152799_))
              (_E152790152799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152790152799_))))
                                       (_E152779152845_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152778152795_)
                                              (let ((_e152781152815_
                                                     (gx#syntax-e
                                                      _e152778152795_)))
                                                (let ((_hd152782152818_
                                                       (##car _e152781152815_))
                                                      (_tl152783152820_
                                                       (##cdr _e152781152815_)))
                                                  (if (and (gx#identifier?
                                                            _hd152782152818_)
                                                           (gx#core-identifier=?
                                                            _hd152782152818_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152783152820_)
                                                          (let ((_e152784152823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152783152820_)))
                    (let ((_hd152785152826_ (##car _e152784152823_))
                          (_tl152786152828_ (##cdr _e152784152823_)))
                      (let ((_hd-bind152831_ _hd152785152826_))
                        (if (gx#stx-pair? _tl152786152828_)
                            (let ((_e152787152833_
                                   (gx#syntax-e _tl152786152828_)))
                              (let ((_hd152788152836_ (##car _e152787152833_))
                                    (_tl152789152838_ (##cdr _e152787152833_)))
                                (let ((_expr152841_ _hd152788152836_))
                                  (if (gx#stx-null? _tl152789152838_)
                                      (if '#t
                                          (let ((_ehd152843_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152831_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152841_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152777_))))
                                            (_lp152752_
                                             _rest152776_
                                             (cons _ehd152843_ _body152755_)
                                             (cons _ehd152843_ _ebody152756_)))
                                          (_E152780152811_))
                                      (_E152780152811_)))))
                            (_E152780152811_)))))
                  (_E152780152811_))
              (_E152780152811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152780152811_)))))
                                  (_E152779152845_)))))
                        (if (##pair? _rest152757152765_)
                            (let ((_hd152762152852_ (##car _rest152757152765_))
                                  (_tl152763152854_
                                   (##cdr _rest152757152765_)))
                              (let* ((_hd152857_ _hd152762152852_)
                                     (_rest152859_ _tl152763152854_))
                                (_K152761152849_ _rest152859_ _hd152857_)))
                            (_else152759152773_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152745_
                     (gx#core-expand-block__1
                      _stx152739_
                      _expand-special152741_
                      '#f))
                    (_g157477_ (_eval-body152742_ _rbody152745_)))
               (begin
                 (let ((_g157478_
                        (if (##values? _g157477_)
                            (##vector-length _g157477_)
                            1)))
                   (if (not (##fx= _g157478_ 2))
                       (error "Context expects 2 values" _g157478_)))
                 (let ((_expanded-body152747_ (##vector-ref _g157477_ 0))
                       (_value152748_ (##vector-ref _g157477_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152747_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152748_ '())))
                    (gx#stx-source _stx152739_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152709_)
        (let* ((_e152710152717_ _stx152709_)
               (_E152712152721_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152710152717_)))
               (_E152711152735_
                (lambda ()
                  (if (gx#stx-pair? _e152710152717_)
                      (let ((_e152713152725_ (gx#syntax-e _e152710152717_)))
                        (let ((_hd152714152728_ (##car _e152713152725_))
                              (_tl152715152730_ (##cdr _e152713152725_)))
                          (let ((_body152733_ _tl152715152730_))
                            (if (gx#stx-list? _body152733_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152733_)
                                 (gx#stx-source _stx152709_))
                                (_E152712152721_)))))
                      (_E152712152721_)))))
          (_E152711152735_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152707_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152707_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152653_)
        (let* ((_e152654152667_ _stx152653_)
               (_E152656152671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152654152667_)))
               (_E152655152703_
                (lambda ()
                  (if (gx#stx-pair? _e152654152667_)
                      (let ((_e152657152675_ (gx#syntax-e _e152654152667_)))
                        (let ((_hd152658152678_ (##car _e152657152675_))
                              (_tl152659152680_ (##cdr _e152657152675_)))
                          (if (gx#stx-pair? _tl152659152680_)
                              (let ((_e152660152683_
                                     (gx#syntax-e _tl152659152680_)))
                                (let ((_hd152661152686_
                                       (##car _e152660152683_))
                                      (_tl152662152688_
                                       (##cdr _e152660152683_)))
                                  (let ((_ann152691_ _hd152661152686_))
                                    (if (gx#stx-pair? _tl152662152688_)
                                        (let ((_e152663152693_
                                               (gx#syntax-e _tl152662152688_)))
                                          (let ((_hd152664152696_
                                                 (##car _e152663152693_))
                                                (_tl152665152698_
                                                 (##cdr _e152663152693_)))
                                            (let ((_expr152701_
                                                   _hd152664152696_))
                                              (if (gx#stx-null?
                                                   _tl152665152698_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152701_)
                                 '())))
               (gx#stx-source _stx152653_))
              (_E152656152671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152656152671_)))))
                                        (_E152656152671_)))))
                              (_E152656152671_))))
                      (_E152656152671_)))))
          (_E152655152703_))))
    (define gx#core-expand-local-block
      (lambda (_stx152377_ _body152378_)
        (letrec ((_expand-special152380_
                  (lambda (_hd152648_ _K152649_ _rest152650_ _r152651_)
                    (_K152649_
                     '()
                     (cons (_expand-internal152381_ _hd152648_ _rest152650_)
                           _r152651_))))
                 (_expand-internal152381_
                  (lambda (_hd152644_ _rest152645_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152383_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152644_ _rest152645_))
                          (gx#stx-source _stx152377_))
                         _expand-internal-special152382_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157471
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157471)
                       __obj157471))))
                 (_expand-internal-special152382_
                  (lambda (_hd152539_ _K152540_ _rest152541_ _r152542_)
                    (let* ((_e152543152568_ _hd152539_)
                           (_E152563152572_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152543152568_)))
                           (_E152559152584_
                            (lambda ()
                              (if (gx#stx-pair? _e152543152568_)
                                  (let ((_e152564152576_
                                         (gx#syntax-e _e152543152568_)))
                                    (let ((_hd152565152579_
                                           (##car _e152564152576_))
                                          (_tl152566152581_
                                           (##cdr _e152564152576_)))
                                      (if (and (gx#identifier?
                                                _hd152565152579_)
                                               (gx#core-identifier=?
                                                _hd152565152579_
                                                '%#declare))
                                          (if '#t
                                              (_K152540_
                                               _rest152541_
                                               (cons (gx#core-expand-declare%
                                                      _hd152539_)
                                                     _r152542_))
                                              (_E152563152572_))
                                          (_E152563152572_))))
                                  (_E152563152572_))))
                           (_E152555152596_
                            (lambda ()
                              (if (gx#stx-pair? _e152543152568_)
                                  (let ((_e152560152588_
                                         (gx#syntax-e _e152543152568_)))
                                    (let ((_hd152561152591_
                                           (##car _e152560152588_))
                                          (_tl152562152593_
                                           (##cdr _e152560152588_)))
                                      (if (and (gx#identifier?
                                                _hd152561152591_)
                                               (gx#core-identifier=?
                                                _hd152561152591_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152539_)
                                                (_K152540_
                                                 _rest152541_
                                                 _r152542_))
                                              (_E152559152584_))
                                          (_E152559152584_))))
                                  (_E152559152584_))))
                           (_E152545152608_
                            (lambda ()
                              (if (gx#stx-pair? _e152543152568_)
                                  (let ((_e152556152600_
                                         (gx#syntax-e _e152543152568_)))
                                    (let ((_hd152557152603_
                                           (##car _e152556152600_))
                                          (_tl152558152605_
                                           (##cdr _e152556152600_)))
                                      (if (and (gx#identifier?
                                                _hd152557152603_)
                                               (gx#core-identifier=?
                                                _hd152557152603_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152539_)
                                                (_K152540_
                                                 _rest152541_
                                                 _r152542_))
                                              (_E152555152596_))
                                          (_E152555152596_))))
                                  (_E152555152596_))))
                           (_E152544152640_
                            (lambda ()
                              (if (gx#stx-pair? _e152543152568_)
                                  (let ((_e152546152612_
                                         (gx#syntax-e _e152543152568_)))
                                    (let ((_hd152547152615_
                                           (##car _e152546152612_))
                                          (_tl152548152617_
                                           (##cdr _e152546152612_)))
                                      (if (and (gx#identifier?
                                                _hd152547152615_)
                                               (gx#core-identifier=?
                                                _hd152547152615_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152548152617_)
                                              (let ((_e152549152620_
                                                     (gx#syntax-e
                                                      _tl152548152617_)))
                                                (let ((_hd152550152623_
                                                       (##car _e152549152620_))
                                                      (_tl152551152625_
                                                       (##cdr _e152549152620_)))
                                                  (let ((_hd-bind152628_
                                                         _hd152550152623_))
                                                    (if (gx#stx-pair?
                                                         _tl152551152625_)
                                                        (let ((_e152552152630_
                                                               (gx#syntax-e
                                                                _tl152551152625_)))
                                                          (let ((_hd152553152633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152552152630_))
                        (_tl152554152635_ (##cdr _e152552152630_)))
                    (let ((_expr152638_ _hd152553152633_))
                      (if (gx#stx-null? _tl152554152635_)
                          (if (gx#core-bind-values? _hd-bind152628_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152628_)
                                (_K152540_
                                 _rest152541_
                                 (cons _hd152539_ _r152542_)))
                              (_E152545152608_))
                          (_E152545152608_)))))
                (_E152545152608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152545152608_))
                                          (_E152545152608_))))
                                  (_E152545152608_)))))
                      (_E152544152640_))))
                 (_wrap-internal152383_
                  (lambda (_rbody152385_)
                    (let _lp152387_ ((_rest152389_ _rbody152385_)
                                     (_decls152390_ '())
                                     (_bind152391_ '())
                                     (_body152392_ '()))
                      (let* ((_e152393152400_ _rest152389_)
                             (_E152395152449_
                              (lambda ()
                                (let* ((_body152444_
                                        (let* ((_body152403152413_
                                                _body152392_)
                                               (_else152406152421_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152392_)
                                                   (gx#stx-source
                                                    _stx152377_)))))
                                          (let ((_K152411152441_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152377_)))
                                                (_K152408152427_
                                                 (lambda (_expr152425_)
                                                   _expr152425_)))
                                            (let ((_try-match152405152437_
                                                   (lambda ()
                                                     (if (##pair? _body152403152413_)
                                                         (let ((_tl152410152432_
                                                                (##cdr _body152403152413_))
                                                               (_hd152409152430_
                                                                (##car _body152403152413_)))
                                                           (if (##null? _tl152410152432_)
                                                               (let ((_expr152435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152409152430_))
                         (_K152408152427_ _expr152435_))
                       (_else152406152421_)))
                 (_else152406152421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152403152413_)
                                                  (_K152411152441_)
                                                  (_try-match152405152437_))))))
                                       (_body152446_
                                        (if (null? _bind152391_)
                                            _body152444_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152391_
                                                         (cons _body152444_
                                                               '())))
                                             (gx#stx-source _stx152377_)))))
                                  (if (null? _decls152390_)
                                      _body152446_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152390_
                                                   (cons _body152446_ '())))
                                       (gx#stx-source _stx152377_))))))
                             (_E152394152535_
                              (lambda ()
                                (if (gx#stx-pair? _e152393152400_)
                                    (let ((_e152396152453_
                                           (gx#syntax-e _e152393152400_)))
                                      (let ((_hd152397152456_
                                             (##car _e152396152453_))
                                            (_tl152398152458_
                                             (##cdr _e152396152453_)))
                                        (let* ((_hd152461_ _hd152397152456_)
                                               (_rest152463_ _tl152398152458_))
                                          (if '#t
                                              (let* ((_e152464152481_
                                                      _hd152461_)
                                                     (_E152476152485_
                                                      (lambda ()
                                                        (if (null? _bind152391_)
                                                            (_lp152387_
                                                             _rest152463_
                                                             _decls152390_
                                                             _bind152391_
                                                             (cons _hd152461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152392_))
                    (_lp152387_
                     _rest152463_
                     _decls152390_
                     (cons (cons '#f (cons _hd152461_ '())) _bind152391_)
                     _body152392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152466152499_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152464152481_)
                                                            (let ((_e152477152489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152464152481_)))
                      (let ((_hd152478152492_ (##car _e152477152489_))
                            (_tl152479152494_ (##cdr _e152477152489_)))
                        (if (and (gx#identifier? _hd152478152492_)
                                 (gx#core-identifier=?
                                  _hd152478152492_
                                  '%#declare))
                            (let ((_xdecls152497_ _tl152479152494_))
                              (if '#t
                                  (_lp152387_
                                   _rest152463_
                                   (gx#stx-foldr
                                    cons
                                    _decls152390_
                                    _xdecls152497_)
                                   _bind152391_
                                   _body152392_)
                                  (_E152476152485_)))
                            (_E152476152485_))))
                    (_E152476152485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152465152531_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152464152481_)
                                                            (let ((_e152467152503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152464152481_)))
                      (let ((_hd152468152506_ (##car _e152467152503_))
                            (_tl152469152508_ (##cdr _e152467152503_)))
                        (if (and (gx#identifier? _hd152468152506_)
                                 (gx#core-identifier=?
                                  _hd152468152506_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152469152508_)
                                (let ((_e152470152511_
                                       (gx#syntax-e _tl152469152508_)))
                                  (let ((_hd152471152514_
                                         (##car _e152470152511_))
                                        (_tl152472152516_
                                         (##cdr _e152470152511_)))
                                    (let ((_hd-bind152519_ _hd152471152514_))
                                      (if (gx#stx-pair? _tl152472152516_)
                                          (let ((_e152473152521_
                                                 (gx#syntax-e
                                                  _tl152472152516_)))
                                            (let ((_hd152474152524_
                                                   (##car _e152473152521_))
                                                  (_tl152475152526_
                                                   (##cdr _e152473152521_)))
                                              (let ((_expr152529_
                                                     _hd152474152524_))
                                                (if (gx#stx-null?
                                                     _tl152475152526_)
                                                    (if '#t
                                                        (_lp152387_
                                                         _rest152463_
                                                         _decls152390_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152519_)
                             (cons (gx#core-expand-expression _expr152529_)
                                   '()))
                       _bind152391_)
                 _body152392_)
                (_E152466152499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152466152499_)))))
                                          (_E152466152499_)))))
                                (_E152466152499_))
                            (_E152466152499_))))
                    (_E152466152499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152465152531_))
                                              (_E152395152449_)))))
                                    (_E152395152449_)))))
                        (_E152394152535_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152378_)
            (gx#stx-source _stx152377_))
           _expand-special152380_))))
    (define gx#core-expand-declare%
      (lambda (_stx152315_)
        (let* ((_e152316152323_ _stx152315_)
               (_E152318152327_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152316152323_)))
               (_E152317152373_
                (lambda ()
                  (if (gx#stx-pair? _e152316152323_)
                      (let ((_e152319152331_ (gx#syntax-e _e152316152323_)))
                        (let ((_hd152320152334_ (##car _e152319152331_))
                              (_tl152321152336_ (##cdr _e152319152331_)))
                          (let ((_body152339_ _tl152321152336_))
                            (if (gx#stx-list? _body152339_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152341_)
                                     (let* ((_e152342152349_ _decl152341_)
                                            (_E152344152353_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152342152349_)))
                                            (_E152343152369_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152342152349_)
                                                   (let ((_e152345152357_
                                                          (gx#syntax-e
                                                           _e152342152349_)))
                                                     (let ((_hd152346152360_
                                                            (##car _e152345152357_))
                                                           (_tl152347152362_
                                                            (##cdr _e152345152357_)))
                                                       (let* ((_head152365_
                                                               _hd152346152360_)
                                                              (_args152367_
                                                               _tl152347152362_))
                                                         (if (gx#stx-list?
                                                              _args152367_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152341_)
                                                             (_E152344152353_)))))
                                                   (_E152344152353_)))))
                                       (_E152343152369_)))
                                   _body152339_))
                                 (gx#stx-source _stx152315_))
                                (_E152318152327_)))))
                      (_E152318152327_)))))
          (_E152317152373_))))
    (define gx#core-expand-extern%
      (lambda (_stx152219_)
        (let* ((_e152220152227_ _stx152219_)
               (_E152222152231_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152220152227_)))
               (_E152221152311_
                (lambda ()
                  (if (gx#stx-pair? _e152220152227_)
                      (let ((_e152223152235_ (gx#syntax-e _e152220152227_)))
                        (let ((_hd152224152238_ (##car _e152223152235_))
                              (_tl152225152240_ (##cdr _e152223152235_)))
                          (let ((_body152243_ _tl152225152240_))
                            (if '#t
                                (let _lp152245_ ((_rest152247_ _body152243_)
                                                 (_r152248_ '()))
                                  (let* ((_e152249152263_ _rest152247_)
                                         (_E152261152267_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152219_)))
                                         (_E152251152271_
                                          (lambda ()
                                            (if (gx#stx-null? _e152249152263_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152248_))
                                                     (gx#stx-source
                                                      _stx152219_))
                                                    (_E152261152267_))
                                                (_E152261152267_))))
                                         (_E152250152307_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152249152263_)
                                                (let ((_e152252152275_
                                                       (gx#syntax-e
                                                        _e152249152263_)))
                                                  (let ((_hd152253152278_
                                                         (##car _e152252152275_))
                                                        (_tl152254152280_
                                                         (##cdr _e152252152275_)))
                                                    (if (gx#stx-pair?
                                                         _hd152253152278_)
                                                        (let ((_e152255152283_
                                                               (gx#syntax-e
                                                                _hd152253152278_)))
                                                          (let ((_hd152256152286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152255152283_))
                        (_tl152257152288_ (##cdr _e152255152283_)))
                    (let ((_id152291_ _hd152256152286_))
                      (if (gx#stx-pair? _tl152257152288_)
                          (let ((_e152258152293_
                                 (gx#syntax-e _tl152257152288_)))
                            (let ((_hd152259152296_ (##car _e152258152293_))
                                  (_tl152260152298_ (##cdr _e152258152293_)))
                              (let ((_eid152301_ _hd152259152296_))
                                (if (gx#stx-null? _tl152260152298_)
                                    (let ((_rest152303_ _tl152254152280_))
                                      (if (and (gx#identifier? _id152291_)
                                               (gx#identifier? _eid152301_))
                                          (let ((_eid152305_
                                                 (gx#stx-e _eid152301_)))
                                            (gx#core-bind-extern!__0
                                             _id152291_
                                             _eid152305_)
                                            (_lp152245_
                                             _rest152303_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152291_)
                                                         (cons _eid152305_
                                                               '()))
                                                   _r152248_)))
                                          (_E152251152271_)))
                                    (_E152251152271_)))))
                          (_E152251152271_)))))
                (_E152251152271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152251152271_)))))
                                    (_E152250152307_)))
                                (_E152222152231_)))))
                      (_E152222152231_)))))
          (_E152221152311_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152165_)
        (let* ((_e152166152179_ _stx152165_)
               (_E152168152183_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152166152179_)))
               (_E152167152215_
                (lambda ()
                  (if (gx#stx-pair? _e152166152179_)
                      (let ((_e152169152187_ (gx#syntax-e _e152166152179_)))
                        (let ((_hd152170152190_ (##car _e152169152187_))
                              (_tl152171152192_ (##cdr _e152169152187_)))
                          (if (gx#stx-pair? _tl152171152192_)
                              (let ((_e152172152195_
                                     (gx#syntax-e _tl152171152192_)))
                                (let ((_hd152173152198_
                                       (##car _e152172152195_))
                                      (_tl152174152200_
                                       (##cdr _e152172152195_)))
                                  (let ((_hd152203_ _hd152173152198_))
                                    (if (gx#stx-pair? _tl152174152200_)
                                        (let ((_e152175152205_
                                               (gx#syntax-e _tl152174152200_)))
                                          (let ((_hd152176152208_
                                                 (##car _e152175152205_))
                                                (_tl152177152210_
                                                 (##cdr _e152175152205_)))
                                            (let ((_expr152213_
                                                   _hd152176152208_))
                                              (if (gx#stx-null?
                                                   _tl152177152210_)
                                                  (if (gx#core-bind-values?
                                                       _hd152203_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152203_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152203_)
                             (cons (gx#core-expand-expression _expr152213_)
                                   '())))
                 (gx#stx-source _stx152165_)))
              (_E152168152183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152168152183_)))))
                                        (_E152168152183_)))))
                              (_E152168152183_))))
                      (_E152168152183_)))))
          (_E152167152215_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152109_)
        (let* ((_e152110152123_ _stx152109_)
               (_E152112152127_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152110152123_)))
               (_E152111152161_
                (lambda ()
                  (if (gx#stx-pair? _e152110152123_)
                      (let ((_e152113152131_ (gx#syntax-e _e152110152123_)))
                        (let ((_hd152114152134_ (##car _e152113152131_))
                              (_tl152115152136_ (##cdr _e152113152131_)))
                          (if (gx#stx-pair? _tl152115152136_)
                              (let ((_e152116152139_
                                     (gx#syntax-e _tl152115152136_)))
                                (let ((_hd152117152142_
                                       (##car _e152116152139_))
                                      (_tl152118152144_
                                       (##cdr _e152116152139_)))
                                  (let ((_id152147_ _hd152117152142_))
                                    (if (gx#stx-pair? _tl152118152144_)
                                        (let ((_e152119152149_
                                               (gx#syntax-e _tl152118152144_)))
                                          (let ((_hd152120152152_
                                                 (##car _e152119152149_))
                                                (_tl152121152154_
                                                 (##cdr _e152119152149_)))
                                            (let ((_binding-id152157_
                                                   _hd152120152152_))
                                              (if (gx#stx-null?
                                                   _tl152121152154_)
                                                  (if (and (gx#identifier?
                                                            _id152147_)
                                                           (gx#identifier?
                                                            _binding-id152157_))
                                                      (let ((_eid152159_
                                                             (gx#stx-e
                                                              _binding-id152157_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152147_
                                                         _eid152159_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152147_)
                             (cons _eid152159_ '())))))
              (_E152112152127_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152112152127_)))))
                                        (_E152112152127_)))))
                              (_E152112152127_))))
                      (_E152112152127_)))))
          (_E152111152161_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152052_)
        (let* ((_e152053152066_ _stx152052_)
               (_E152055152070_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152053152066_)))
               (_E152054152105_
                (lambda ()
                  (if (gx#stx-pair? _e152053152066_)
                      (let ((_e152056152074_ (gx#syntax-e _e152053152066_)))
                        (let ((_hd152057152077_ (##car _e152056152074_))
                              (_tl152058152079_ (##cdr _e152056152074_)))
                          (if (gx#stx-pair? _tl152058152079_)
                              (let ((_e152059152082_
                                     (gx#syntax-e _tl152058152079_)))
                                (let ((_hd152060152085_
                                       (##car _e152059152082_))
                                      (_tl152061152087_
                                       (##cdr _e152059152082_)))
                                  (let ((_id152090_ _hd152060152085_))
                                    (if (gx#stx-pair? _tl152061152087_)
                                        (let ((_e152062152092_
                                               (gx#syntax-e _tl152061152087_)))
                                          (let ((_hd152063152095_
                                                 (##car _e152062152092_))
                                                (_tl152064152097_
                                                 (##cdr _e152062152092_)))
                                            (let ((_expr152100_
                                                   _hd152063152095_))
                                              (if (gx#stx-null?
                                                   _tl152064152097_)
                                                  (if (gx#identifier?
                                                       _id152090_)
                                                      (let ((_g157479_
                                                             (gx#core-expand-expression+1
                                                              _expr152100_)))
                                                        (begin
                                                          (let ((_g157480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157479_)
                             (##vector-length _g157479_)
                             1)))
                    (if (not (##fx= _g157480_ 2))
                        (error "Context expects 2 values" _g157480_)))
                  (let ((_e-stx152102_ (##vector-ref _g157479_ 0))
                        (_e152103_ (##vector-ref _g157479_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152090_ _e152103_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152090_)
                                   (cons _e-stx152102_ '())))
                       (gx#stx-source _stx152052_))))))
              (_E152055152070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152055152070_)))))
                                        (_E152055152070_)))))
                              (_E152055152070_))))
                      (_E152055152070_)))))
          (_E152054152105_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151996_)
        (let* ((_e151997152010_ _stx151996_)
               (_E151999152014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151997152010_)))
               (_E151998152048_
                (lambda ()
                  (if (gx#stx-pair? _e151997152010_)
                      (let ((_e152000152018_ (gx#syntax-e _e151997152010_)))
                        (let ((_hd152001152021_ (##car _e152000152018_))
                              (_tl152002152023_ (##cdr _e152000152018_)))
                          (if (gx#stx-pair? _tl152002152023_)
                              (let ((_e152003152026_
                                     (gx#syntax-e _tl152002152023_)))
                                (let ((_hd152004152029_
                                       (##car _e152003152026_))
                                      (_tl152005152031_
                                       (##cdr _e152003152026_)))
                                  (let ((_id152034_ _hd152004152029_))
                                    (if (gx#stx-pair? _tl152005152031_)
                                        (let ((_e152006152036_
                                               (gx#syntax-e _tl152005152031_)))
                                          (let ((_hd152007152039_
                                                 (##car _e152006152036_))
                                                (_tl152008152041_
                                                 (##cdr _e152006152036_)))
                                            (let ((_alias-id152044_
                                                   _hd152007152039_))
                                              (if (gx#stx-null?
                                                   _tl152008152041_)
                                                  (if (and (gx#identifier?
                                                            _id152034_)
                                                           (gx#identifier?
                                                            _alias-id152044_))
                                                      (let ((_alias-id152046_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152044_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152034_
                                                         _alias-id152046_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152034_)
                             (cons _alias-id152046_ '())))))
              (_E151999152014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151999152014_)))))
                                        (_E151999152014_)))))
                              (_E151999152014_))))
                      (_E151999152014_)))))
          (_E151998152048_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151939_ _wrap?151940_)
        (let* ((_e151941151951_ _stx151939_)
               (_E151943151955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151941151951_)))
               (_E151942151982_
                (lambda ()
                  (if (gx#stx-pair? _e151941151951_)
                      (let ((_e151944151959_ (gx#syntax-e _e151941151951_)))
                        (let ((_hd151945151962_ (##car _e151944151959_))
                              (_tl151946151964_ (##cdr _e151944151959_)))
                          (if (gx#stx-pair? _tl151946151964_)
                              (let ((_e151947151967_
                                     (gx#syntax-e _tl151946151964_)))
                                (let ((_hd151948151970_
                                       (##car _e151947151967_))
                                      (_tl151949151972_
                                       (##cdr _e151947151967_)))
                                  (let* ((_hd151975_ _hd151948151970_)
                                         (_body151977_ _tl151949151972_))
                                    (if (gx#core-bind-values? _hd151975_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151975_)
                                           (let ((_body151980_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151975_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151939_
                                                               _body151977_)
                                                              '()))))
                                             (if _wrap?151940_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151980_)
                                                  (gx#stx-source _stx151939_))
                                                 _body151980_)))
                                         gx#current-expander-context
                                         (let ((__obj157472
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157472)
                                           __obj157472))
                                        (_E151943151955_)))))
                              (_E151943151955_))))
                      (_E151943151955_)))))
          (_E151942151982_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151989_)
        (let ((_wrap?151991_ '#t))
          (gx#core-expand-lambda%__% _stx151989_ _wrap?151991_))))
    (define gx#core-expand-lambda%
      (lambda _g157482_
        (let ((_g157481_ (##length _g157482_)))
          (cond ((##fx= _g157481_ 1)
                 (apply (lambda (_stx151989_)
                          (gx#core-expand-lambda%__0 _stx151989_))
                        _g157482_))
                ((##fx= _g157481_ 2)
                 (apply (lambda (_stx151993_ _wrap?151994_)
                          (gx#core-expand-lambda%__%
                           _stx151993_
                           _wrap?151994_))
                        _g157482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157482_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151903_)
        (let* ((_e151904151911_ _stx151903_)
               (_E151906151915_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151904151911_)))
               (_E151905151934_
                (lambda ()
                  (if (gx#stx-pair? _e151904151911_)
                      (let ((_e151907151919_ (gx#syntax-e _e151904151911_)))
                        (let ((_hd151908151922_ (##car _e151907151919_))
                              (_tl151909151924_ (##cdr _e151907151919_)))
                          (let ((_clauses151927_ _tl151909151924_))
                            (if (gx#stx-list? _clauses151927_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151929_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151929_)
                                       (let ((_$e151931_
                                              (gx#stx-source _clause151929_)))
                                         (if _$e151931_
                                             _$e151931_
                                             (gx#stx-source _stx151903_))))
                                      '#f))
                                   _clauses151927_))
                                 (gx#stx-source _stx151903_))
                                (_E151906151915_)))))
                      (_E151906151915_)))))
          (_E151905151934_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151857_)
        (let* ((_e151858151868_ _stx151857_)
               (_E151860151872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151858151868_)))
               (_E151859151899_
                (lambda ()
                  (if (gx#stx-pair? _e151858151868_)
                      (let ((_e151861151876_ (gx#syntax-e _e151858151868_)))
                        (let ((_hd151862151879_ (##car _e151861151876_))
                              (_tl151863151881_ (##cdr _e151861151876_)))
                          (if (gx#stx-pair? _tl151863151881_)
                              (let ((_e151864151884_
                                     (gx#syntax-e _tl151863151881_)))
                                (let ((_hd151865151887_
                                       (##car _e151864151884_))
                                      (_tl151866151889_
                                       (##cdr _e151864151884_)))
                                  (let* ((_hd151892_ _hd151865151887_)
                                         (_body151894_ _tl151866151889_))
                                    (if (gx#core-expand-let-bind? _hd151892_)
                                        (let ((_expressions151896_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151892_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151892_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151892_
                                                           _expressions151896_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151857_
                         _body151894_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151857_)))
                                           gx#current-expander-context
                                           (let ((__obj157473
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157473)
                                             __obj157473)))
                                        (_E151860151872_)))))
                              (_E151860151872_))))
                      (_E151860151872_)))))
          (_E151859151899_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151802_ _form151803_)
        (let* ((_e151804151814_ _stx151802_)
               (_E151806151818_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151804151814_)))
               (_E151805151843_
                (lambda ()
                  (if (gx#stx-pair? _e151804151814_)
                      (let ((_e151807151822_ (gx#syntax-e _e151804151814_)))
                        (let ((_hd151808151825_ (##car _e151807151822_))
                              (_tl151809151827_ (##cdr _e151807151822_)))
                          (if (gx#stx-pair? _tl151809151827_)
                              (let ((_e151810151830_
                                     (gx#syntax-e _tl151809151827_)))
                                (let ((_hd151811151833_
                                       (##car _e151810151830_))
                                      (_tl151812151835_
                                       (##cdr _e151810151830_)))
                                  (let* ((_hd151838_ _hd151811151833_)
                                         (_body151840_ _tl151812151835_))
                                    (if (gx#core-expand-let-bind? _hd151838_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151838_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151803_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151838_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151838_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151802_
                                                               _body151840_)
                                                              '())))
                                            (gx#stx-source _stx151802_)))
                                         gx#current-expander-context
                                         (let ((__obj157474
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157474)
                                           __obj157474))
                                        (_E151806151818_)))))
                              (_E151806151818_))))
                      (_E151806151818_)))))
          (_E151805151843_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151850_)
        (let ((_form151852_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151850_ _form151852_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157484_
        (let ((_g157483_ (##length _g157484_)))
          (cond ((##fx= _g157483_ 1)
                 (apply (lambda (_stx151850_)
                          (gx#core-expand-letrec-values%__0 _stx151850_))
                        _g157484_))
                ((##fx= _g157483_ 2)
                 (apply (lambda (_stx151854_ _form151855_)
                          (gx#core-expand-letrec-values%__%
                           _stx151854_
                           _form151855_))
                        _g157484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157484_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151799_)
        (gx#core-expand-letrec-values%__% _stx151799_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151756_)
        (if (gx#stx-list? _stx151756_)
            (gx#stx-andmap
             (lambda (_bind151758_)
               (let* ((_e151759151769_ _bind151758_)
                      (_E151761151773_ (lambda () '#f))
                      (_E151760151795_
                       (lambda ()
                         (if (gx#stx-pair? _e151759151769_)
                             (let ((_e151762151777_
                                    (gx#syntax-e _e151759151769_)))
                               (let ((_hd151763151780_ (##car _e151762151777_))
                                     (_tl151764151782_
                                      (##cdr _e151762151777_)))
                                 (let ((_hd151785_ _hd151763151780_))
                                   (if (gx#stx-pair? _tl151764151782_)
                                       (let ((_e151765151787_
                                              (gx#syntax-e _tl151764151782_)))
                                         (let ((_hd151766151790_
                                                (##car _e151765151787_))
                                               (_tl151767151792_
                                                (##cdr _e151765151787_)))
                                           (if (gx#stx-null? _tl151767151792_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151785_)
                                                   (_E151761151773_))
                                               (_E151761151773_))))
                                       (_E151761151773_)))))
                             (_E151761151773_)))))
                 (_E151760151795_)))
             _stx151756_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151715_)
        (let* ((_e151716151726_ _bind151715_)
               (_E151718151730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151716151726_)))
               (_E151717151752_
                (lambda ()
                  (if (gx#stx-pair? _e151716151726_)
                      (let ((_e151719151734_ (gx#syntax-e _e151716151726_)))
                        (let ((_hd151720151737_ (##car _e151719151734_))
                              (_tl151721151739_ (##cdr _e151719151734_)))
                          (if (gx#stx-pair? _tl151721151739_)
                              (let ((_e151722151742_
                                     (gx#syntax-e _tl151721151739_)))
                                (let ((_hd151723151745_
                                       (##car _e151722151742_))
                                      (_tl151724151747_
                                       (##cdr _e151722151742_)))
                                  (let ((_expr151750_ _hd151723151745_))
                                    (if (gx#stx-null? _tl151724151747_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151750_)
                                            (_E151718151730_))
                                        (_E151718151730_)))))
                              (_E151718151730_))))
                      (_E151718151730_)))))
          (_E151717151752_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151674_)
        (let* ((_e151675151685_ _bind151674_)
               (_E151677151689_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151675151685_)))
               (_E151676151711_
                (lambda ()
                  (if (gx#stx-pair? _e151675151685_)
                      (let ((_e151678151693_ (gx#syntax-e _e151675151685_)))
                        (let ((_hd151679151696_ (##car _e151678151693_))
                              (_tl151680151698_ (##cdr _e151678151693_)))
                          (let ((_hd151701_ _hd151679151696_))
                            (if (gx#stx-pair? _tl151680151698_)
                                (let ((_e151681151703_
                                       (gx#syntax-e _tl151680151698_)))
                                  (let ((_hd151682151706_
                                         (##car _e151681151703_))
                                        (_tl151683151708_
                                         (##cdr _e151681151703_)))
                                    (if (gx#stx-null? _tl151683151708_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151701_)
                                            (_E151677151689_))
                                        (_E151677151689_))))
                                (_E151677151689_)))))
                      (_E151677151689_)))))
          (_E151676151711_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151632_ _expr151633_)
        (let* ((_e151634151644_ _bind151632_)
               (_E151636151648_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151634151644_)))
               (_E151635151670_
                (lambda ()
                  (if (gx#stx-pair? _e151634151644_)
                      (let ((_e151637151652_ (gx#syntax-e _e151634151644_)))
                        (let ((_hd151638151655_ (##car _e151637151652_))
                              (_tl151639151657_ (##cdr _e151637151652_)))
                          (let ((_hd151660_ _hd151638151655_))
                            (if (gx#stx-pair? _tl151639151657_)
                                (let ((_e151640151662_
                                       (gx#syntax-e _tl151639151657_)))
                                  (let ((_hd151641151665_
                                         (##car _e151640151662_))
                                        (_tl151642151667_
                                         (##cdr _e151640151662_)))
                                    (if (gx#stx-null? _tl151642151667_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151660_)
                                                  (cons _expr151633_ '()))
                                            (_E151636151648_))
                                        (_E151636151648_))))
                                (_E151636151648_)))))
                      (_E151636151648_)))))
          (_E151635151670_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151586_)
        (let* ((_e151587151597_ _stx151586_)
               (_E151589151601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151587151597_)))
               (_E151588151628_
                (lambda ()
                  (if (gx#stx-pair? _e151587151597_)
                      (let ((_e151590151605_ (gx#syntax-e _e151587151597_)))
                        (let ((_hd151591151608_ (##car _e151590151605_))
                              (_tl151592151610_ (##cdr _e151590151605_)))
                          (if (gx#stx-pair? _tl151592151610_)
                              (let ((_e151593151613_
                                     (gx#syntax-e _tl151592151610_)))
                                (let ((_hd151594151616_
                                       (##car _e151593151613_))
                                      (_tl151595151618_
                                       (##cdr _e151593151613_)))
                                  (let* ((_hd151621_ _hd151594151616_)
                                         (_body151623_ _tl151595151618_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151621_)
                                        (let ((_expanders151625_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151621_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151621_
                                              _expanders151625_)
                                             (gx#core-expand-local-block
                                              _stx151586_
                                              _body151623_))
                                           gx#current-expander-context
                                           (let ((__obj157475
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157475)
                                             __obj157475)))
                                        (_E151589151601_)))))
                              (_E151589151601_))))
                      (_E151589151601_)))))
          (_E151588151628_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151535_)
        (let* ((_e151536151546_ _stx151535_)
               (_E151538151550_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151536151546_)))
               (_E151537151582_
                (lambda ()
                  (if (gx#stx-pair? _e151536151546_)
                      (let ((_e151539151554_ (gx#syntax-e _e151536151546_)))
                        (let ((_hd151540151557_ (##car _e151539151554_))
                              (_tl151541151559_ (##cdr _e151539151554_)))
                          (if (gx#stx-pair? _tl151541151559_)
                              (let ((_e151542151562_
                                     (gx#syntax-e _tl151541151559_)))
                                (let ((_hd151543151565_
                                       (##car _e151542151562_))
                                      (_tl151544151567_
                                       (##cdr _e151542151562_)))
                                  (let* ((_hd151570_ _hd151543151565_)
                                         (_body151572_ _tl151544151567_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151570_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151570_
                                            (make-list
                                             (gx#stx-length _hd151570_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151574151577_
                                                     _g151575151579_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151574151577_
                                               _g151575151579_
                                               '#t))
                                            _hd151570_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151570_))
                                           (gx#core-expand-local-block
                                            _stx151535_
                                            _body151572_))
                                         gx#current-expander-context
                                         (let ((__obj157476
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157476)
                                           __obj157476))
                                        (_E151538151550_)))))
                              (_E151538151550_))))
                      (_E151538151550_)))))
          (_E151537151582_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151492_)
        (if (gx#stx-list? _stx151492_)
            (gx#stx-andmap
             (lambda (_bind151494_)
               (let* ((_e151495151505_ _bind151494_)
                      (_E151497151509_ (lambda () '#f))
                      (_E151496151531_
                       (lambda ()
                         (if (gx#stx-pair? _e151495151505_)
                             (let ((_e151498151513_
                                    (gx#syntax-e _e151495151505_)))
                               (let ((_hd151499151516_ (##car _e151498151513_))
                                     (_tl151500151518_
                                      (##cdr _e151498151513_)))
                                 (let ((_hd151521_ _hd151499151516_))
                                   (if (gx#stx-pair? _tl151500151518_)
                                       (let ((_e151501151523_
                                              (gx#syntax-e _tl151500151518_)))
                                         (let ((_hd151502151526_
                                                (##car _e151501151523_))
                                               (_tl151503151528_
                                                (##cdr _e151501151523_)))
                                           (if (gx#stx-null? _tl151503151528_)
                                               (if '#t
                                                   (gx#identifier? _hd151521_)
                                                   (_E151497151509_))
                                               (_E151497151509_))))
                                       (_E151497151509_)))))
                             (_E151497151509_)))))
                 (_E151496151531_)))
             _stx151492_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151449_)
        (let* ((_e151450151460_ _bind151449_)
               (_E151452151464_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151450151460_)))
               (_E151451151488_
                (lambda ()
                  (if (gx#stx-pair? _e151450151460_)
                      (let ((_e151453151468_ (gx#syntax-e _e151450151460_)))
                        (let ((_hd151454151471_ (##car _e151453151468_))
                              (_tl151455151473_ (##cdr _e151453151468_)))
                          (if (gx#stx-pair? _tl151455151473_)
                              (let ((_e151456151476_
                                     (gx#syntax-e _tl151455151473_)))
                                (let ((_hd151457151479_
                                       (##car _e151456151476_))
                                      (_tl151458151481_
                                       (##cdr _e151456151476_)))
                                  (let ((_expr151484_ _hd151457151479_))
                                    (if (gx#stx-null? _tl151458151481_)
                                        (if '#t
                                            (let ((_g157485_
                                                   (gx#core-expand-expression+1
                                                    _expr151484_)))
                                              (begin
                                                (let ((_g157486_
                                                       (if (##values?
                                                            _g157485_)
                                                           (##vector-length
                                                            _g157485_)
                                                           1)))
                                                  (if (not (##fx= _g157486_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157486_)))
                                                (let ((_e151486_
                                                       (##vector-ref
                                                        _g157485_
                                                        1)))
                                                  _e151486_)))
                                            (_E151452151464_))
                                        (_E151452151464_)))))
                              (_E151452151464_))))
                      (_E151452151464_)))))
          (_E151451151488_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151394_ _e151395_ _rebind?151396_)
        (let* ((_e151397151407_ _bind151394_)
               (_E151399151411_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151397151407_)))
               (_E151398151433_
                (lambda ()
                  (if (gx#stx-pair? _e151397151407_)
                      (let ((_e151400151415_ (gx#syntax-e _e151397151407_)))
                        (let ((_hd151401151418_ (##car _e151400151415_))
                              (_tl151402151420_ (##cdr _e151400151415_)))
                          (let ((_id151423_ _hd151401151418_))
                            (if (gx#stx-pair? _tl151402151420_)
                                (let ((_e151403151425_
                                       (gx#syntax-e _tl151402151420_)))
                                  (let ((_hd151404151428_
                                         (##car _e151403151425_))
                                        (_tl151405151430_
                                         (##cdr _e151403151425_)))
                                    (if (gx#stx-null? _tl151405151430_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151423_
                                             _e151395_
                                             _rebind?151396_)
                                            (_E151399151411_))
                                        (_E151399151411_))))
                                (_E151399151411_)))))
                      (_E151399151411_)))))
          (_E151398151433_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151440_ _e151441_)
        (let ((_rebind?151443_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151440_
           _e151441_
           _rebind?151443_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157488_
        (let ((_g157487_ (##length _g157488_)))
          (cond ((##fx= _g157487_ 2)
                 (apply (lambda (_bind151440_ _e151441_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151440_
                           _e151441_))
                        _g157488_))
                ((##fx= _g157487_ 3)
                 (apply (lambda (_bind151445_ _e151446_ _rebind?151447_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151445_
                           _e151446_
                           _rebind?151447_))
                        _g157488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157488_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151352_)
        (let* ((_e151353151363_ _stx151352_)
               (_E151355151367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151353151363_)))
               (_E151354151389_
                (lambda ()
                  (if (gx#stx-pair? _e151353151363_)
                      (let ((_e151356151371_ (gx#syntax-e _e151353151363_)))
                        (let ((_hd151357151374_ (##car _e151356151371_))
                              (_tl151358151376_ (##cdr _e151356151371_)))
                          (if (gx#stx-pair? _tl151358151376_)
                              (let ((_e151359151379_
                                     (gx#syntax-e _tl151358151376_)))
                                (let ((_hd151360151382_
                                       (##car _e151359151379_))
                                      (_tl151361151384_
                                       (##cdr _e151359151379_)))
                                  (let ((_expr151387_ _hd151360151382_))
                                    (if (gx#stx-null? _tl151361151384_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151387_)
                                            (_E151355151367_))
                                        (_E151355151367_)))))
                              (_E151355151367_))))
                      (_E151355151367_)))))
          (_E151354151389_))))
    (define gx#core-expand-quote%
      (lambda (_stx151311_)
        (let* ((_e151312151322_ _stx151311_)
               (_E151314151326_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151312151322_)))
               (_E151313151348_
                (lambda ()
                  (if (gx#stx-pair? _e151312151322_)
                      (let ((_e151315151330_ (gx#syntax-e _e151312151322_)))
                        (let ((_hd151316151333_ (##car _e151315151330_))
                              (_tl151317151335_ (##cdr _e151315151330_)))
                          (if (gx#stx-pair? _tl151317151335_)
                              (let ((_e151318151338_
                                     (gx#syntax-e _tl151317151335_)))
                                (let ((_hd151319151341_
                                       (##car _e151318151338_))
                                      (_tl151320151343_
                                       (##cdr _e151318151338_)))
                                  (let ((_e151346_ _hd151319151341_))
                                    (if (gx#stx-null? _tl151320151343_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151346_)
                                                         '()))
                                             (gx#stx-source _stx151311_))
                                            (_E151314151326_))
                                        (_E151314151326_)))))
                              (_E151314151326_))))
                      (_E151314151326_)))))
          (_E151313151348_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151270_)
        (let* ((_e151271151281_ _stx151270_)
               (_E151273151285_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151271151281_)))
               (_E151272151307_
                (lambda ()
                  (if (gx#stx-pair? _e151271151281_)
                      (let ((_e151274151289_ (gx#syntax-e _e151271151281_)))
                        (let ((_hd151275151292_ (##car _e151274151289_))
                              (_tl151276151294_ (##cdr _e151274151289_)))
                          (if (gx#stx-pair? _tl151276151294_)
                              (let ((_e151277151297_
                                     (gx#syntax-e _tl151276151294_)))
                                (let ((_hd151278151300_
                                       (##car _e151277151297_))
                                      (_tl151279151302_
                                       (##cdr _e151277151297_)))
                                  (let ((_e151305_ _hd151278151300_))
                                    (if (gx#stx-null? _tl151279151302_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151305_)
                                                         '()))
                                             (gx#stx-source _stx151270_))
                                            (_E151273151285_))
                                        (_E151273151285_)))))
                              (_E151273151285_))))
                      (_E151273151285_)))))
          (_E151272151307_))))
    (define gx#core-expand-call%
      (lambda (_stx151227_)
        (let* ((_e151228151238_ _stx151227_)
               (_E151230151242_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151228151238_)))
               (_E151229151266_
                (lambda ()
                  (if (gx#stx-pair? _e151228151238_)
                      (let ((_e151231151246_ (gx#syntax-e _e151228151238_)))
                        (let ((_hd151232151249_ (##car _e151231151246_))
                              (_tl151233151251_ (##cdr _e151231151246_)))
                          (if (gx#stx-pair? _tl151233151251_)
                              (let ((_e151234151254_
                                     (gx#syntax-e _tl151233151251_)))
                                (let ((_hd151235151257_
                                       (##car _e151234151254_))
                                      (_tl151236151259_
                                       (##cdr _e151234151254_)))
                                  (let* ((_rator151262_ _hd151235151257_)
                                         (_args151264_ _tl151236151259_))
                                    (if (gx#stx-list? _args151264_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151262_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151264_))
                                         (gx#stx-source _stx151227_))
                                        (_E151230151242_)))))
                              (_E151230151242_))))
                      (_E151230151242_)))))
          (_E151229151266_))))
    (define gx#core-expand-if%
      (lambda (_stx151160_)
        (let* ((_e151161151177_ _stx151160_)
               (_E151163151181_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151161151177_)))
               (_E151162151223_
                (lambda ()
                  (if (gx#stx-pair? _e151161151177_)
                      (let ((_e151164151185_ (gx#syntax-e _e151161151177_)))
                        (let ((_hd151165151188_ (##car _e151164151185_))
                              (_tl151166151190_ (##cdr _e151164151185_)))
                          (if (gx#stx-pair? _tl151166151190_)
                              (let ((_e151167151193_
                                     (gx#syntax-e _tl151166151190_)))
                                (let ((_hd151168151196_
                                       (##car _e151167151193_))
                                      (_tl151169151198_
                                       (##cdr _e151167151193_)))
                                  (let ((_test151201_ _hd151168151196_))
                                    (if (gx#stx-pair? _tl151169151198_)
                                        (let ((_e151170151203_
                                               (gx#syntax-e _tl151169151198_)))
                                          (let ((_hd151171151206_
                                                 (##car _e151170151203_))
                                                (_tl151172151208_
                                                 (##cdr _e151170151203_)))
                                            (let ((_K151211_ _hd151171151206_))
                                              (if (gx#stx-pair?
                                                   _tl151172151208_)
                                                  (let ((_e151173151213_
                                                         (gx#syntax-e
                                                          _tl151172151208_)))
                                                    (let ((_hd151174151216_
                                                           (##car _e151173151213_))
                                                          (_tl151175151218_
                                                           (##cdr _e151173151213_)))
                                                      (let ((_E151221_
                                                             _hd151174151216_))
                                                        (if (gx#stx-null?
                                                             _tl151175151218_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151201_)
                                     (cons (gx#core-expand-expression
                                            _K151211_)
                                           (cons (gx#core-expand-expression
                                                  _E151221_)
                                                 '()))))
                         (gx#stx-source _stx151160_))
                        (_E151163151181_))
                    (_E151163151181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151163151181_)))))
                                        (_E151163151181_)))))
                              (_E151163151181_))))
                      (_E151163151181_)))))
          (_E151162151223_))))
    (define gx#core-expand-ref%
      (lambda (_stx151119_)
        (let* ((_e151120151130_ _stx151119_)
               (_E151122151134_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151120151130_)))
               (_E151121151156_
                (lambda ()
                  (if (gx#stx-pair? _e151120151130_)
                      (let ((_e151123151138_ (gx#syntax-e _e151120151130_)))
                        (let ((_hd151124151141_ (##car _e151123151138_))
                              (_tl151125151143_ (##cdr _e151123151138_)))
                          (if (gx#stx-pair? _tl151125151143_)
                              (let ((_e151126151146_
                                     (gx#syntax-e _tl151125151143_)))
                                (let ((_hd151127151149_
                                       (##car _e151126151146_))
                                      (_tl151128151151_
                                       (##cdr _e151126151146_)))
                                  (let ((_id151154_ _hd151127151149_))
                                    (if (gx#stx-null? _tl151128151151_)
                                        (if (gx#identifier? _id151154_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151154_
                                                          _stx151119_)
                                                         '()))
                                             (gx#stx-source _stx151119_))
                                            (_E151122151134_))
                                        (_E151122151134_)))))
                              (_E151122151134_))))
                      (_E151122151134_)))))
          (_E151121151156_))))
    (define gx#core-expand-setq%
      (lambda (_stx151065_)
        (let* ((_e151066151079_ _stx151065_)
               (_E151068151083_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151066151079_)))
               (_E151067151115_
                (lambda ()
                  (if (gx#stx-pair? _e151066151079_)
                      (let ((_e151069151087_ (gx#syntax-e _e151066151079_)))
                        (let ((_hd151070151090_ (##car _e151069151087_))
                              (_tl151071151092_ (##cdr _e151069151087_)))
                          (if (gx#stx-pair? _tl151071151092_)
                              (let ((_e151072151095_
                                     (gx#syntax-e _tl151071151092_)))
                                (let ((_hd151073151098_
                                       (##car _e151072151095_))
                                      (_tl151074151100_
                                       (##cdr _e151072151095_)))
                                  (let ((_id151103_ _hd151073151098_))
                                    (if (gx#stx-pair? _tl151074151100_)
                                        (let ((_e151075151105_
                                               (gx#syntax-e _tl151074151100_)))
                                          (let ((_hd151076151108_
                                                 (##car _e151075151105_))
                                                (_tl151077151110_
                                                 (##cdr _e151075151105_)))
                                            (let ((_expr151113_
                                                   _hd151076151108_))
                                              (if (gx#stx-null?
                                                   _tl151077151110_)
                                                  (if (gx#identifier?
                                                       _id151103_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151103_
                            _stx151065_)
                           (cons (gx#core-expand-expression _expr151113_)
                                 '())))
               (gx#stx-source _stx151065_))
              (_E151068151083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151068151083_)))))
                                        (_E151068151083_)))))
                              (_E151068151083_))))
                      (_E151068151083_)))))
          (_E151067151115_))))
    (define gx#macro-expand-extern
      (lambda (_stx150913_)
        (letrec ((_generate150915_
                  (lambda (_body150945_)
                    (let _lp150947_ ((_rest150949_ _body150945_)
                                     (_ns150950_
                                      (gx#core-context-namespace__0))
                                     (_r150951_ '()))
                      (let* ((_e150952150967_ _rest150949_)
                             (_E150965150971_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150952150967_)))
                             (_E150961150975_
                              (lambda ()
                                (if (gx#stx-null? _e150952150967_)
                                    (if '#t
                                        (reverse _r150951_)
                                        (_E150965150971_))
                                    (_E150965150971_))))
                             (_E150954151032_
                              (lambda ()
                                (if (gx#stx-pair? _e150952150967_)
                                    (let ((_e150962150979_
                                           (gx#syntax-e _e150952150967_)))
                                      (let ((_hd150963150982_
                                             (##car _e150962150979_))
                                            (_tl150964150984_
                                             (##cdr _e150962150979_)))
                                        (let* ((_hd150987_ _hd150963150982_)
                                               (_rest150989_ _tl150964150984_))
                                          (if '#t
                                              (if (gx#identifier? _hd150987_)
                                                  (_lp150947_
                                                   _rest150989_
                                                   _ns150950_
                                                   (cons (cons _hd150987_
                                                               (cons (if _ns150950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150987_
                                  _ns150950_
                                  '"#"
                                  _hd150987_)
                                 _hd150987_)
                             '()))
                 _r150951_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150990151000_
                                                          _hd150987_)
                                                         (_E150992151004_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150990151000_)))
                                                         (_E150991151028_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150990151000_)
                        (let ((_e150993151008_ (gx#syntax-e _e150990151000_)))
                          (let ((_hd150994151011_ (##car _e150993151008_))
                                (_tl150995151013_ (##cdr _e150993151008_)))
                            (let ((_id151016_ _hd150994151011_))
                              (if (gx#stx-pair? _tl150995151013_)
                                  (let ((_e150996151018_
                                         (gx#syntax-e _tl150995151013_)))
                                    (let ((_hd150997151021_
                                           (##car _e150996151018_))
                                          (_tl150998151023_
                                           (##cdr _e150996151018_)))
                                      (let ((_eid151026_ _hd150997151021_))
                                        (if (gx#stx-null? _tl150998151023_)
                                            (if (and (gx#identifier?
                                                      _id151016_)
                                                     (gx#identifier?
                                                      _eid151026_))
                                                (_lp150947_
                                                 _rest150989_
                                                 _ns150950_
                                                 (cons (cons _id151016_
                                                             (cons _eid151026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150951_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150992151004_))
                                            (_E150992151004_)))))
                                  (_E150992151004_)))))
                        (_E150992151004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150991151028_)))
                                              (_E150961150975_)))))
                                    (_E150961150975_))))
                             (_E150953151061_
                              (lambda ()
                                (if (gx#stx-pair? _e150952150967_)
                                    (let ((_e150955151036_
                                           (gx#syntax-e _e150952150967_)))
                                      (let ((_hd150956151039_
                                             (##car _e150955151036_))
                                            (_tl150957151041_
                                             (##cdr _e150955151036_)))
                                        (if (eq? (gx#stx-e _hd150956151039_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150957151041_)
                                                (let ((_e150958151044_
                                                       (gx#syntax-e
                                                        _tl150957151041_)))
                                                  (let ((_hd150959151047_
                                                         (##car _e150958151044_))
                                                        (_tl150960151049_
                                                         (##cdr _e150958151044_)))
                                                    (let* ((_ns151052_
                                                            _hd150959151047_)
                                                           (_rest151054_
                                                            _tl150960151049_))
                                                      (if '#t
                                                          (let ((_ns151059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151052_)
                             (symbol->string (gx#stx-e _ns151052_))
                             (if (or (gx#stx-string? _ns151052_)
                                     (gx#stx-false? _ns151052_))
                                 (gx#stx-e _ns151052_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150913_
                                  _ns151052_)))))
                    (_lp150947_ _rest151054_ _ns151059_ _r150951_))
                  (_E150954151032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150954151032_))
                                            (_E150954151032_))))
                                    (_E150954151032_)))))
                        (_E150953151061_))))))
          (let* ((_e150916150923_ _stx150913_)
                 (_E150918150927_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150916150923_)))
                 (_E150917150941_
                  (lambda ()
                    (if (gx#stx-pair? _e150916150923_)
                        (let ((_e150919150931_ (gx#syntax-e _e150916150923_)))
                          (let ((_hd150920150934_ (##car _e150919150931_))
                                (_tl150921150936_ (##cdr _e150919150931_)))
                            (let ((_body150939_ _tl150921150936_))
                              (if (gx#stx-list? _body150939_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150915_ _body150939_))
                                  (_E150918150927_)))))
                        (_E150918150927_)))))
            (_E150917150941_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150859_)
        (let* ((_e150860150873_ _stx150859_)
               (_E150862150877_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150860150873_)))
               (_E150861150909_
                (lambda ()
                  (if (gx#stx-pair? _e150860150873_)
                      (let ((_e150863150881_ (gx#syntax-e _e150860150873_)))
                        (let ((_hd150864150884_ (##car _e150863150881_))
                              (_tl150865150886_ (##cdr _e150863150881_)))
                          (if (gx#stx-pair? _tl150865150886_)
                              (let ((_e150866150889_
                                     (gx#syntax-e _tl150865150886_)))
                                (let ((_hd150867150892_
                                       (##car _e150866150889_))
                                      (_tl150868150894_
                                       (##cdr _e150866150889_)))
                                  (let ((_hd150897_ _hd150867150892_))
                                    (if (gx#stx-pair? _tl150868150894_)
                                        (let ((_e150869150899_
                                               (gx#syntax-e _tl150868150894_)))
                                          (let ((_hd150870150902_
                                                 (##car _e150869150899_))
                                                (_tl150871150904_
                                                 (##cdr _e150869150899_)))
                                            (let ((_expr150907_
                                                   _hd150870150902_))
                                              (if (gx#stx-null?
                                                   _tl150871150904_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150897_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150897_)
                          (cons _expr150907_ '())))
              (_E150862150877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150862150877_)))))
                                        (_E150862150877_)))))
                              (_E150862150877_))))
                      (_E150862150877_)))))
          (_E150861150909_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150805_)
        (let* ((_e150806150819_ _stx150805_)
               (_E150808150823_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150806150819_)))
               (_E150807150855_
                (lambda ()
                  (if (gx#stx-pair? _e150806150819_)
                      (let ((_e150809150827_ (gx#syntax-e _e150806150819_)))
                        (let ((_hd150810150830_ (##car _e150809150827_))
                              (_tl150811150832_ (##cdr _e150809150827_)))
                          (if (gx#stx-pair? _tl150811150832_)
                              (let ((_e150812150835_
                                     (gx#syntax-e _tl150811150832_)))
                                (let ((_hd150813150838_
                                       (##car _e150812150835_))
                                      (_tl150814150840_
                                       (##cdr _e150812150835_)))
                                  (let ((_hd150843_ _hd150813150838_))
                                    (if (gx#stx-pair? _tl150814150840_)
                                        (let ((_e150815150845_
                                               (gx#syntax-e _tl150814150840_)))
                                          (let ((_hd150816150848_
                                                 (##car _e150815150845_))
                                                (_tl150817150850_
                                                 (##cdr _e150815150845_)))
                                            (let ((_expr150853_
                                                   _hd150816150848_))
                                              (if (gx#stx-null?
                                                   _tl150817150850_)
                                                  (if (gx#identifier?
                                                       _hd150843_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150853_ '())))
              (_E150808150823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150808150823_)))))
                                        (_E150808150823_)))))
                              (_E150808150823_))))
                      (_E150808150823_)))))
          (_E150807150855_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150751_)
        (let* ((_e150752150765_ _stx150751_)
               (_E150754150769_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150752150765_)))
               (_E150753150801_
                (lambda ()
                  (if (gx#stx-pair? _e150752150765_)
                      (let ((_e150755150773_ (gx#syntax-e _e150752150765_)))
                        (let ((_hd150756150776_ (##car _e150755150773_))
                              (_tl150757150778_ (##cdr _e150755150773_)))
                          (if (gx#stx-pair? _tl150757150778_)
                              (let ((_e150758150781_
                                     (gx#syntax-e _tl150757150778_)))
                                (let ((_hd150759150784_
                                       (##car _e150758150781_))
                                      (_tl150760150786_
                                       (##cdr _e150758150781_)))
                                  (let ((_id150789_ _hd150759150784_))
                                    (if (gx#stx-pair? _tl150760150786_)
                                        (let ((_e150761150791_
                                               (gx#syntax-e _tl150760150786_)))
                                          (let ((_hd150762150794_
                                                 (##car _e150761150791_))
                                                (_tl150763150796_
                                                 (##cdr _e150761150791_)))
                                            (let ((_alias-id150799_
                                                   _hd150762150794_))
                                              (if (gx#stx-null?
                                                   _tl150763150796_)
                                                  (if (and (gx#identifier?
                                                            _id150789_)
                                                           (gx#identifier?
                                                            _alias-id150799_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150799_ '())))
              (_E150754150769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150754150769_)))))
                                        (_E150754150769_)))))
                              (_E150754150769_))))
                      (_E150754150769_)))))
          (_E150753150801_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150708_)
        (let* ((_e150709150719_ _stx150708_)
               (_E150711150723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150709150719_)))
               (_E150710150747_
                (lambda ()
                  (if (gx#stx-pair? _e150709150719_)
                      (let ((_e150712150727_ (gx#syntax-e _e150709150719_)))
                        (let ((_hd150713150730_ (##car _e150712150727_))
                              (_tl150714150732_ (##cdr _e150712150727_)))
                          (if (gx#stx-pair? _tl150714150732_)
                              (let ((_e150715150735_
                                     (gx#syntax-e _tl150714150732_)))
                                (let ((_hd150716150738_
                                       (##car _e150715150735_))
                                      (_tl150717150740_
                                       (##cdr _e150715150735_)))
                                  (let* ((_hd150743_ _hd150716150738_)
                                         (_body150745_ _tl150717150740_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150743_)
                                             (gx#stx-list? _body150745_)
                                             (not (gx#stx-null? _body150745_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150743_)
                                         _body150745_)
                                        (_E150711150723_)))))
                              (_E150711150723_))))
                      (_E150711150723_)))))
          (_E150710150747_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150644_)
        (letrec ((_generate150646_
                  (lambda (_clause150676_)
                    (let* ((_e150677150684_ _clause150676_)
                           (_E150679150688_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150644_
                               _clause150676_)))
                           (_E150678150704_
                            (lambda ()
                              (if (gx#stx-pair? _e150677150684_)
                                  (let ((_e150680150692_
                                         (gx#syntax-e _e150677150684_)))
                                    (let ((_hd150681150695_
                                           (##car _e150680150692_))
                                          (_tl150682150697_
                                           (##cdr _e150680150692_)))
                                      (let* ((_hd150700_ _hd150681150695_)
                                             (_body150702_ _tl150682150697_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150700_)
                                                 (gx#stx-list? _body150702_)
                                                 (not (gx#stx-null?
                                                       _body150702_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150700_)
                                                   _body150702_)
                                             (gx#stx-source _clause150676_))
                                            (_E150679150688_)))))
                                  (_E150679150688_)))))
                      (_E150678150704_)))))
          (let* ((_e150647150654_ _stx150644_)
                 (_E150649150658_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150647150654_)))
                 (_E150648150672_
                  (lambda ()
                    (if (gx#stx-pair? _e150647150654_)
                        (let ((_e150650150662_ (gx#syntax-e _e150647150654_)))
                          (let ((_hd150651150665_ (##car _e150650150662_))
                                (_tl150652150667_ (##cdr _e150650150662_)))
                            (let ((_clauses150670_ _tl150652150667_))
                              (if (gx#stx-list? _clauses150670_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150646_
                                    _clauses150670_))
                                  (_E150649150658_)))))
                        (_E150649150658_)))))
            (_E150648150672_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150545_ _form150546_)
        (letrec ((_generate150548_
                  (lambda (_bind150591_)
                    (let* ((_e150592150602_ _bind150591_)
                           (_E150594150606_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150545_
                               _bind150591_)))
                           (_E150593150630_
                            (lambda ()
                              (if (gx#stx-pair? _e150592150602_)
                                  (let ((_e150595150610_
                                         (gx#syntax-e _e150592150602_)))
                                    (let ((_hd150596150613_
                                           (##car _e150595150610_))
                                          (_tl150597150615_
                                           (##cdr _e150595150610_)))
                                      (let ((_ids150618_ _hd150596150613_))
                                        (if (gx#stx-pair? _tl150597150615_)
                                            (let ((_e150598150620_
                                                   (gx#syntax-e
                                                    _tl150597150615_)))
                                              (let ((_hd150599150623_
                                                     (##car _e150598150620_))
                                                    (_tl150600150625_
                                                     (##cdr _e150598150620_)))
                                                (let ((_expr150628_
                                                       _hd150599150623_))
                                                  (if (gx#stx-null?
                                                       _tl150600150625_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150618_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150618_)
                        (cons _expr150628_ '()))
                  (_E150594150606_))
              (_E150594150606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150594150606_)))))
                                  (_E150594150606_)))))
                      (_E150593150630_)))))
          (let* ((_e150549150559_ _stx150545_)
                 (_E150551150563_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150549150559_)))
                 (_E150550150587_
                  (lambda ()
                    (if (gx#stx-pair? _e150549150559_)
                        (let ((_e150552150567_ (gx#syntax-e _e150549150559_)))
                          (let ((_hd150553150570_ (##car _e150552150567_))
                                (_tl150554150572_ (##cdr _e150552150567_)))
                            (if (gx#stx-pair? _tl150554150572_)
                                (let ((_e150555150575_
                                       (gx#syntax-e _tl150554150572_)))
                                  (let ((_hd150556150578_
                                         (##car _e150555150575_))
                                        (_tl150557150580_
                                         (##cdr _e150555150575_)))
                                    (let* ((_hd150583_ _hd150556150578_)
                                           (_body150585_ _tl150557150580_))
                                      (if (and (gx#stx-list? _hd150583_)
                                               (gx#stx-list? _body150585_)
                                               (not (gx#stx-null?
                                                     _body150585_)))
                                          (gx#core-cons*
                                           _form150546_
                                           (gx#stx-map1
                                            _generate150548_
                                            _hd150583_)
                                           _body150585_)
                                          (_E150551150563_)))))
                                (_E150551150563_))))
                        (_E150551150563_)))))
            (_E150550150587_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150637_)
        (let ((_form150639_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150637_ _form150639_))))
    (define gx#macro-expand-let-values
      (lambda _g157490_
        (let ((_g157489_ (##length _g157490_)))
          (cond ((##fx= _g157489_ 1)
                 (apply (lambda (_stx150637_)
                          (gx#macro-expand-let-values__0 _stx150637_))
                        _g157490_))
                ((##fx= _g157489_ 2)
                 (apply (lambda (_stx150641_ _form150642_)
                          (gx#macro-expand-let-values__%
                           _stx150641_
                           _form150642_))
                        _g157490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157490_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150542_)
        (gx#macro-expand-let-values__% _stx150542_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150540_)
        (gx#macro-expand-let-values__% _stx150540_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150431_)
        (let* ((_e150432150458_ _stx150431_)
               (_E150444150462_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150432150458_)))
               (_E150434150504_
                (lambda ()
                  (if (gx#stx-pair? _e150432150458_)
                      (let ((_e150445150466_ (gx#syntax-e _e150432150458_)))
                        (let ((_hd150446150469_ (##car _e150445150466_))
                              (_tl150447150471_ (##cdr _e150445150466_)))
                          (if (gx#stx-pair? _tl150447150471_)
                              (let ((_e150448150474_
                                     (gx#syntax-e _tl150447150471_)))
                                (let ((_hd150449150477_
                                       (##car _e150448150474_))
                                      (_tl150450150479_
                                       (##cdr _e150448150474_)))
                                  (let ((_test150482_ _hd150449150477_))
                                    (if (gx#stx-pair? _tl150450150479_)
                                        (let ((_e150451150484_
                                               (gx#syntax-e _tl150450150479_)))
                                          (let ((_hd150452150487_
                                                 (##car _e150451150484_))
                                                (_tl150453150489_
                                                 (##cdr _e150451150484_)))
                                            (let ((_K150492_ _hd150452150487_))
                                              (if (gx#stx-pair?
                                                   _tl150453150489_)
                                                  (let ((_e150454150494_
                                                         (gx#syntax-e
                                                          _tl150453150489_)))
                                                    (let ((_hd150455150497_
                                                           (##car _e150454150494_))
                                                          (_tl150456150499_
                                                           (##cdr _e150454150494_)))
                                                      (let ((_E150502_
                                                             _hd150455150497_))
                                                        (if (gx#stx-null?
                                                             _tl150456150499_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150482_
                         _K150492_
                         _E150502_)
                        (_E150444150462_))
                    (_E150444150462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150444150462_)))))
                                        (_E150444150462_)))))
                              (_E150444150462_))))
                      (_E150444150462_))))
               (_E150433150536_
                (lambda ()
                  (if (gx#stx-pair? _e150432150458_)
                      (let ((_e150435150508_ (gx#syntax-e _e150432150458_)))
                        (let ((_hd150436150511_ (##car _e150435150508_))
                              (_tl150437150513_ (##cdr _e150435150508_)))
                          (if (gx#stx-pair? _tl150437150513_)
                              (let ((_e150438150516_
                                     (gx#syntax-e _tl150437150513_)))
                                (let ((_hd150439150519_
                                       (##car _e150438150516_))
                                      (_tl150440150521_
                                       (##cdr _e150438150516_)))
                                  (let ((_test150524_ _hd150439150519_))
                                    (if (gx#stx-pair? _tl150440150521_)
                                        (let ((_e150441150526_
                                               (gx#syntax-e _tl150440150521_)))
                                          (let ((_hd150442150529_
                                                 (##car _e150441150526_))
                                                (_tl150443150531_
                                                 (##cdr _e150441150526_)))
                                            (let ((_K150534_ _hd150442150529_))
                                              (if (gx#stx-null?
                                                   _tl150443150531_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150524_
                                                       _K150534_
                                                       '#!void)
                                                      (_E150434150504_))
                                                  (_E150434150504_)))))
                                        (_E150434150504_)))))
                              (_E150434150504_))))
                      (_E150434150504_)))))
          (_E150433150536_))))
    (define gx#free-identifier=?
      (lambda (_xid150419_ _yid150420_)
        (let ((_xe150422_ (gx#resolve-identifier__0 _xid150419_))
              (_ye150423_ (gx#resolve-identifier__0 _yid150420_)))
          (if (and _xe150422_ _ye150423_)
              (let ((_$e150425_ (eq? _xe150422_ _ye150423_)))
                (if _$e150425_
                    _$e150425_
                    (if (##structure-instance-of? _xe150422_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150423_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150422_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150423_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150422_ _ye150423_)
                  '#f
                  (gx#stx-eq? _xid150419_ _yid150420_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150403_ _yid150404_)
        (letrec ((_context150406_
                  (lambda (_e150417_)
                    (if (##structure-direct-instance-of?
                         _e150417_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150417_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150407_
                  (lambda (_e150415_)
                    (if (symbol? _e150415_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150415_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150415_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150415_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150408_
                  (lambda (_e150413_)
                    (if (symbol? _e150413_)
                        _e150413_
                        (gx#syntax-local-unwrap _e150413_)))))
          (let ((_x150410_ (_unwrap150408_ _xid150403_))
                (_y150411_ (_unwrap150408_ _yid150404_)))
            (if (gx#stx-eq? _x150410_ _y150411_)
                (if (eq? (_context150406_ _x150410_)
                         (_context150406_ _y150411_))
                    (equal? (_marks150407_ _x150410_)
                            (_marks150407_ _y150411_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150401_)
        (if (gx#identifier? _stx150401_)
            (gx#core-identifier=? _stx150401_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150399_)
        (if (gx#identifier? _stx150399_)
            (gx#core-identifier=? _stx150399_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150397_)
        (if (gx#identifier? _x150397_)
            (if (not (gx#underscore? _x150397_)) _x150397_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150343_ _where150344_)
        (let _lp150346_ ((_rest150348_ (gx#syntax->list _stx150343_)))
          (let* ((_rest150349150357_ _rest150348_)
                 (_else150351150365_ (lambda () '#t))
                 (_K150353150375_
                  (lambda (_rest150368_ _hd150369_)
                    (if (not (gx#identifier? _hd150369_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150344_
                         _hd150369_)
                        (if (find (lambda (_g150370150372_)
                                    (gx#bound-identifier=?
                                     _g150370150372_
                                     _hd150369_))
                                  _rest150368_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150344_
                             _hd150369_)
                            (_lp150346_ _rest150368_))))))
            (if (##pair? _rest150349150357_)
                (let ((_hd150354150378_ (##car _rest150349150357_))
                      (_tl150355150380_ (##cdr _rest150349150357_)))
                  (let* ((_hd150383_ _hd150354150378_)
                         (_rest150385_ _tl150355150380_))
                    (_K150353150375_ _rest150385_ _hd150383_)))
                (_else150351150365_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150390_)
        (let ((_where150392_ _stx150390_))
          (gx#check-duplicate-identifiers__% _stx150390_ _where150392_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157492_
        (let ((_g157491_ (##length _g157492_)))
          (cond ((##fx= _g157491_ 1)
                 (apply (lambda (_stx150390_)
                          (gx#check-duplicate-identifiers__0 _stx150390_))
                        _g157492_))
                ((##fx= _g157491_ 2)
                 (apply (lambda (_stx150394_ _where150395_)
                          (gx#check-duplicate-identifiers__%
                           _stx150394_
                           _where150395_))
                        _g157492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157492_))))))
    (define gx#core-bind-values?
      (lambda (_stx150335_)
        (gx#stx-andmap
         (lambda (_x150337_)
           (let ((_$e150339_ (gx#identifier? _x150337_)))
             (if _$e150339_ _$e150339_ (gx#stx-false? _x150337_))))
         _stx150335_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150299_ _rebind?150300_ _phi150301_ _ctx150302_)
        (gx#stx-for-each1
         (lambda (_id150304_)
           (if (gx#identifier? _id150304_)
               (gx#core-bind-runtime!__%
                _id150304_
                _rebind?150300_
                _phi150301_
                _ctx150302_)
               '#!void))
         _stx150299_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150309_)
        (let* ((_rebind?150311_ '#f)
               (_phi150313_ (gx#current-expander-phi))
               (_ctx150315_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150309_
           _rebind?150311_
           _phi150313_
           _ctx150315_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150317_ _rebind?150318_)
        (let* ((_phi150320_ (gx#current-expander-phi))
               (_ctx150322_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150317_
           _rebind?150318_
           _phi150320_
           _ctx150322_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150324_ _rebind?150325_ _phi150326_)
        (let ((_ctx150328_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150324_
           _rebind?150325_
           _phi150326_
           _ctx150328_))))
    (define gx#core-bind-values!
      (lambda _g157494_
        (let ((_g157493_ (##length _g157494_)))
          (cond ((##fx= _g157493_ 1)
                 (apply (lambda (_stx150309_)
                          (gx#core-bind-values!__0 _stx150309_))
                        _g157494_))
                ((##fx= _g157493_ 2)
                 (apply (lambda (_stx150317_ _rebind?150318_)
                          (gx#core-bind-values!__1
                           _stx150317_
                           _rebind?150318_))
                        _g157494_))
                ((##fx= _g157493_ 3)
                 (apply (lambda (_stx150324_ _rebind?150325_ _phi150326_)
                          (gx#core-bind-values!__2
                           _stx150324_
                           _rebind?150325_
                           _phi150326_))
                        _g157494_))
                ((##fx= _g157493_ 4)
                 (apply (lambda (_stx150330_
                                 _rebind?150331_
                                 _phi150332_
                                 _ctx150333_)
                          (gx#core-bind-values!__%
                           _stx150330_
                           _rebind?150331_
                           _phi150332_
                           _ctx150333_))
                        _g157494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157494_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150294_)
        (gx#stx-map1
         (lambda (_x150296_)
           (if (gx#identifier? _x150296_)
               (gx#core-quote-syntax__0 _x150296_)
               '#f))
         _stx150294_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150287_)
        (if (gx#identifier? _stx150287_)
            (let* ((_bind150289_ (gx#resolve-identifier__0 _stx150287_))
                   (_$e150291_ (not _bind150289_)))
              (if _$e150291_
                  _$e150291_
                  (##structure-instance-of?
                   _bind150289_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150279_ _form150280_)
        (let ((_bind150282_ (gx#resolve-identifier__0 _id150279_)))
          (if (##structure-instance-of? _bind150282_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150279_)
              (if (not _bind150282_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150279_)))
                      (gx#core-quote-syntax__0 _id150279_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150280_
                       _id150279_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150280_
                   _id150279_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150238_ _rebind?150239_ _phi150240_ _ctx150241_)
        (let* ((_key150243_ (gx#core-identifier-key _id150238_))
               (_eid150245_
                (gx#make-binding-id__%
                 _key150243_
                 '#f
                 _phi150240_
                 _ctx150241_))
               (_bind150247_
                (if (##structure-instance-of?
                     _ctx150241_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150245_
                     _key150243_
                     _phi150240_
                     _ctx150241_)
                    (if (##structure-instance-of?
                         _ctx150241_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150245_
                         _key150243_
                         _phi150240_)
                        (if (##structure-instance-of?
                             _ctx150241_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150245_
                             _key150243_
                             _phi150240_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150245_
                             _key150243_
                             _phi150240_))))))
          (gx#bind-identifier!__%
           _id150238_
           _bind150247_
           _rebind?150239_
           _phi150240_
           _ctx150241_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150253_)
        (let* ((_rebind?150255_ '#f)
               (_phi150257_ (gx#current-expander-phi))
               (_ctx150259_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150253_
           _rebind?150255_
           _phi150257_
           _ctx150259_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150261_ _rebind?150262_)
        (let* ((_phi150264_ (gx#current-expander-phi))
               (_ctx150266_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150261_
           _rebind?150262_
           _phi150264_
           _ctx150266_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150268_ _rebind?150269_ _phi150270_)
        (let ((_ctx150272_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150268_
           _rebind?150269_
           _phi150270_
           _ctx150272_))))
    (define gx#core-bind-runtime!
      (lambda _g157496_
        (let ((_g157495_ (##length _g157496_)))
          (cond ((##fx= _g157495_ 1)
                 (apply (lambda (_id150253_)
                          (gx#core-bind-runtime!__0 _id150253_))
                        _g157496_))
                ((##fx= _g157495_ 2)
                 (apply (lambda (_id150261_ _rebind?150262_)
                          (gx#core-bind-runtime!__1
                           _id150261_
                           _rebind?150262_))
                        _g157496_))
                ((##fx= _g157495_ 3)
                 (apply (lambda (_id150268_ _rebind?150269_ _phi150270_)
                          (gx#core-bind-runtime!__2
                           _id150268_
                           _rebind?150269_
                           _phi150270_))
                        _g157496_))
                ((##fx= _g157495_ 4)
                 (apply (lambda (_id150274_
                                 _rebind?150275_
                                 _phi150276_
                                 _ctx150277_)
                          (gx#core-bind-runtime!__%
                           _id150274_
                           _rebind?150275_
                           _phi150276_
                           _ctx150277_))
                        _g157496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157496_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150193_ _eid150194_ _rebind?150195_ _phi150196_ _ctx150197_)
        (let* ((_key150199_ (gx#core-identifier-key _id150193_))
               (_bind150201_
                (if (##structure-instance-of?
                     _ctx150197_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150194_
                     _key150199_
                     _phi150196_
                     _ctx150197_)
                    (if (##structure-instance-of?
                         _ctx150197_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150194_
                         _key150199_
                         _phi150196_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150194_
                         _key150199_
                         _phi150196_)))))
          (gx#bind-identifier!__%
           _id150193_
           _bind150201_
           _rebind?150195_
           _phi150196_
           _ctx150197_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150207_ _eid150208_)
        (let* ((_rebind?150210_ '#f)
               (_phi150212_ (gx#current-expander-phi))
               (_ctx150214_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150207_
           _eid150208_
           _rebind?150210_
           _phi150212_
           _ctx150214_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150216_ _eid150217_ _rebind?150218_)
        (let* ((_phi150220_ (gx#current-expander-phi))
               (_ctx150222_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150216_
           _eid150217_
           _rebind?150218_
           _phi150220_
           _ctx150222_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150224_ _eid150225_ _rebind?150226_ _phi150227_)
        (let ((_ctx150229_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150224_
           _eid150225_
           _rebind?150226_
           _phi150227_
           _ctx150229_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157498_
        (let ((_g157497_ (##length _g157498_)))
          (cond ((##fx= _g157497_ 2)
                 (apply (lambda (_id150207_ _eid150208_)
                          (gx#core-bind-runtime-reference!__0
                           _id150207_
                           _eid150208_))
                        _g157498_))
                ((##fx= _g157497_ 3)
                 (apply (lambda (_id150216_ _eid150217_ _rebind?150218_)
                          (gx#core-bind-runtime-reference!__1
                           _id150216_
                           _eid150217_
                           _rebind?150218_))
                        _g157498_))
                ((##fx= _g157497_ 4)
                 (apply (lambda (_id150224_
                                 _eid150225_
                                 _rebind?150226_
                                 _phi150227_)
                          (gx#core-bind-runtime-reference!__2
                           _id150224_
                           _eid150225_
                           _rebind?150226_
                           _phi150227_))
                        _g157498_))
                ((##fx= _g157497_ 5)
                 (apply (lambda (_id150231_
                                 _eid150232_
                                 _rebind?150233_
                                 _phi150234_
                                 _ctx150235_)
                          (gx#core-bind-runtime-reference!__%
                           _id150231_
                           _eid150232_
                           _rebind?150233_
                           _phi150234_
                           _ctx150235_))
                        _g157498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157498_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150153_ _eid150154_ _rebind?150155_ _phi150156_ _ctx150157_)
        (gx#bind-identifier!__%
         _id150153_
         (##structure
          gx#extern-binding::t
          _eid150154_
          (gx#core-identifier-key _id150153_)
          _phi150156_)
         _rebind?150155_
         _phi150156_
         _ctx150157_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150162_ _eid150163_)
        (let* ((_rebind?150165_ '#f)
               (_phi150167_ (gx#current-expander-phi))
               (_ctx150169_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150162_
           _eid150163_
           _rebind?150165_
           _phi150167_
           _ctx150169_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150171_ _eid150172_ _rebind?150173_)
        (let* ((_phi150175_ (gx#current-expander-phi))
               (_ctx150177_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150171_
           _eid150172_
           _rebind?150173_
           _phi150175_
           _ctx150177_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150179_ _eid150180_ _rebind?150181_ _phi150182_)
        (let ((_ctx150184_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150179_
           _eid150180_
           _rebind?150181_
           _phi150182_
           _ctx150184_))))
    (define gx#core-bind-extern!
      (lambda _g157500_
        (let ((_g157499_ (##length _g157500_)))
          (cond ((##fx= _g157499_ 2)
                 (apply (lambda (_id150162_ _eid150163_)
                          (gx#core-bind-extern!__0 _id150162_ _eid150163_))
                        _g157500_))
                ((##fx= _g157499_ 3)
                 (apply (lambda (_id150171_ _eid150172_ _rebind?150173_)
                          (gx#core-bind-extern!__1
                           _id150171_
                           _eid150172_
                           _rebind?150173_))
                        _g157500_))
                ((##fx= _g157499_ 4)
                 (apply (lambda (_id150179_
                                 _eid150180_
                                 _rebind?150181_
                                 _phi150182_)
                          (gx#core-bind-extern!__2
                           _id150179_
                           _eid150180_
                           _rebind?150181_
                           _phi150182_))
                        _g157500_))
                ((##fx= _g157499_ 5)
                 (apply (lambda (_id150186_
                                 _eid150187_
                                 _rebind?150188_
                                 _phi150189_
                                 _ctx150190_)
                          (gx#core-bind-extern!__%
                           _id150186_
                           _eid150187_
                           _rebind?150188_
                           _phi150189_
                           _ctx150190_))
                        _g157500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157500_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150107_ _e150108_ _rebind?150109_ _phi150110_ _ctx150111_)
        (gx#bind-identifier!__%
         _id150107_
         (let ((_key150116_ (gx#core-identifier-key _id150107_))
               (_e150117_
                (if (or (##structure-instance-of? _e150108_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150108_
                         'gx#expander-context::t))
                    _e150108_
                    (##structure
                     gx#user-expander::t
                     _e150108_
                     _ctx150111_
                     _phi150110_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150116_ '#t _phi150110_ _ctx150111_)
            _key150116_
            _phi150110_
            _e150117_))
         _rebind?150109_
         _phi150110_
         _ctx150111_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150122_ _e150123_)
        (let* ((_rebind?150125_ '#f)
               (_phi150127_ (gx#current-expander-phi))
               (_ctx150129_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150122_
           _e150123_
           _rebind?150125_
           _phi150127_
           _ctx150129_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150131_ _e150132_ _rebind?150133_)
        (let* ((_phi150135_ (gx#current-expander-phi))
               (_ctx150137_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150131_
           _e150132_
           _rebind?150133_
           _phi150135_
           _ctx150137_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150139_ _e150140_ _rebind?150141_ _phi150142_)
        (let ((_ctx150144_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150139_
           _e150140_
           _rebind?150141_
           _phi150142_
           _ctx150144_))))
    (define gx#core-bind-syntax!
      (lambda _g157502_
        (let ((_g157501_ (##length _g157502_)))
          (cond ((##fx= _g157501_ 2)
                 (apply (lambda (_id150122_ _e150123_)
                          (gx#core-bind-syntax!__0 _id150122_ _e150123_))
                        _g157502_))
                ((##fx= _g157501_ 3)
                 (apply (lambda (_id150131_ _e150132_ _rebind?150133_)
                          (gx#core-bind-syntax!__1
                           _id150131_
                           _e150132_
                           _rebind?150133_))
                        _g157502_))
                ((##fx= _g157501_ 4)
                 (apply (lambda (_id150139_
                                 _e150140_
                                 _rebind?150141_
                                 _phi150142_)
                          (gx#core-bind-syntax!__2
                           _id150139_
                           _e150140_
                           _rebind?150141_
                           _phi150142_))
                        _g157502_))
                ((##fx= _g157501_ 5)
                 (apply (lambda (_id150146_
                                 _e150147_
                                 _rebind?150148_
                                 _phi150149_
                                 _ctx150150_)
                          (gx#core-bind-syntax!__%
                           _id150146_
                           _e150147_
                           _rebind?150148_
                           _phi150149_
                           _ctx150150_))
                        _g157502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157502_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150090_ _e150091_ _rebind?150092_)
        (gx#core-bind-syntax!__%
         _id150090_
         _e150091_
         _rebind?150092_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150097_ _e150098_)
        (let ((_rebind?150100_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150097_
           _e150098_
           _rebind?150100_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157504_
        (let ((_g157503_ (##length _g157504_)))
          (cond ((##fx= _g157503_ 2)
                 (apply (lambda (_id150097_ _e150098_)
                          (gx#core-bind-root-syntax!__0 _id150097_ _e150098_))
                        _g157504_))
                ((##fx= _g157503_ 3)
                 (apply (lambda (_id150102_ _e150103_ _rebind?150104_)
                          (gx#core-bind-root-syntax!__%
                           _id150102_
                           _e150103_
                           _rebind?150104_))
                        _g157504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157504_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150048_
               _alias-id150049_
               _rebind?150050_
               _phi150051_
               _ctx150052_)
        (gx#bind-identifier!__%
         _id150048_
         (let ((_key150054_ (gx#core-identifier-key _id150048_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150054_ '#t _phi150051_ _ctx150052_)
            _key150054_
            _phi150051_
            _alias-id150049_))
         _rebind?150050_
         _phi150051_
         _ctx150052_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150059_ _alias-id150060_)
        (let* ((_rebind?150062_ '#f)
               (_phi150064_ (gx#current-expander-phi))
               (_ctx150066_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150059_
           _alias-id150060_
           _rebind?150062_
           _phi150064_
           _ctx150066_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150068_ _alias-id150069_ _rebind?150070_)
        (let* ((_phi150072_ (gx#current-expander-phi))
               (_ctx150074_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150068_
           _alias-id150069_
           _rebind?150070_
           _phi150072_
           _ctx150074_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150076_ _alias-id150077_ _rebind?150078_ _phi150079_)
        (let ((_ctx150081_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150076_
           _alias-id150077_
           _rebind?150078_
           _phi150079_
           _ctx150081_))))
    (define gx#core-bind-alias!
      (lambda _g157506_
        (let ((_g157505_ (##length _g157506_)))
          (cond ((##fx= _g157505_ 2)
                 (apply (lambda (_id150059_ _alias-id150060_)
                          (gx#core-bind-alias!__0 _id150059_ _alias-id150060_))
                        _g157506_))
                ((##fx= _g157505_ 3)
                 (apply (lambda (_id150068_ _alias-id150069_ _rebind?150070_)
                          (gx#core-bind-alias!__1
                           _id150068_
                           _alias-id150069_
                           _rebind?150070_))
                        _g157506_))
                ((##fx= _g157505_ 4)
                 (apply (lambda (_id150076_
                                 _alias-id150077_
                                 _rebind?150078_
                                 _phi150079_)
                          (gx#core-bind-alias!__2
                           _id150076_
                           _alias-id150077_
                           _rebind?150078_
                           _phi150079_))
                        _g157506_))
                ((##fx= _g157505_ 5)
                 (apply (lambda (_id150083_
                                 _alias-id150084_
                                 _rebind?150085_
                                 _phi150086_
                                 _ctx150087_)
                          (gx#core-bind-alias!__%
                           _id150083_
                           _alias-id150084_
                           _rebind?150085_
                           _phi150086_
                           _ctx150087_))
                        _g157506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157506_))))))
    (define gx#make-binding-id__%
      (lambda (_key150005_ _syntax?150006_ _phi150007_ _ctx150008_)
        (if (uninterned-symbol? _key150005_)
            (gensym 'L)
            (if (pair? _key150005_)
                (gensym (car _key150005_))
                (if (##structure-instance-of? _ctx150008_ 'gx#top-context::t)
                    (let ((_ns150010_
                           (gx#core-context-namespace__% _ctx150008_)))
                      (if (and (fxzero? _phi150007_) (not _syntax?150006_))
                          (if _ns150010_
                              (make-symbol__1 _ns150010_ '"#" _key150005_)
                              _key150005_)
                          (if _syntax?150006_
                              (make-symbol__1
                               (let ((_$e150012_ _ns150010_))
                                 (if _$e150012_ _$e150012_ '""))
                               '"[:"
                               (number->string _phi150007_)
                               '":]#"
                               _key150005_)
                              (make-symbol__1
                               (let ((_$e150015_ _ns150010_))
                                 (if _$e150015_ _$e150015_ '""))
                               '"["
                               (number->string _phi150007_)
                               '"]#"
                               _key150005_))))
                    (gensym _key150005_))))))
    (define gx#make-binding-id__0
      (lambda (_key150021_)
        (let* ((_syntax?150023_ '#f)
               (_phi150025_ (gx#current-expander-phi))
               (_ctx150027_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150021_
           _syntax?150023_
           _phi150025_
           _ctx150027_))))
    (define gx#make-binding-id__1
      (lambda (_key150029_ _syntax?150030_)
        (let* ((_phi150032_ (gx#current-expander-phi))
               (_ctx150034_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150029_
           _syntax?150030_
           _phi150032_
           _ctx150034_))))
    (define gx#make-binding-id__2
      (lambda (_key150036_ _syntax?150037_ _phi150038_)
        (let ((_ctx150040_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150036_
           _syntax?150037_
           _phi150038_
           _ctx150040_))))
    (define gx#make-binding-id
      (lambda _g157508_
        (let ((_g157507_ (##length _g157508_)))
          (cond ((##fx= _g157507_ 1)
                 (apply (lambda (_key150021_)
                          (gx#make-binding-id__0 _key150021_))
                        _g157508_))
                ((##fx= _g157507_ 2)
                 (apply (lambda (_key150029_ _syntax?150030_)
                          (gx#make-binding-id__1 _key150029_ _syntax?150030_))
                        _g157508_))
                ((##fx= _g157507_ 3)
                 (apply (lambda (_key150036_ _syntax?150037_ _phi150038_)
                          (gx#make-binding-id__2
                           _key150036_
                           _syntax?150037_
                           _phi150038_))
                        _g157508_))
                ((##fx= _g157507_ 4)
                 (apply (lambda (_key150042_
                                 _syntax?150043_
                                 _phi150044_
                                 _ctx150045_)
                          (gx#make-binding-id__%
                           _key150042_
                           _syntax?150043_
                           _phi150044_
                           _ctx150045_))
                        _g157508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157508_))))))))
