(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707618265)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152989_)
        (letrec ((_expand-special152991_
                  (lambda (_hd152993_ _K152994_ _rest152995_ _r152996_)
                    (_K152994_
                     _rest152995_
                     (cons (gx#core-expand-top _hd152993_) _r152996_)))))
          (gx#core-expand-block__0 _stx152989_ _expand-special152991_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152742_)
        (letrec ((_expand-special152744_
                  (lambda (_hd152864_ _K152865_ _rest152866_ _r152867_)
                    (let* ((_K152871_
                            (lambda (_e152869_)
                              (_K152865_
                               _rest152866_
                               (cons _e152869_ _r152867_))))
                           (_e152872152901_ _hd152864_)
                           (_E152896152905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152872152901_)))
                           (_E152892152917_
                            (lambda ()
                              (if (gx#stx-pair? _e152872152901_)
                                  (let ((_e152897152909_
                                         (gx#syntax-e _e152872152901_)))
                                    (let ((_hd152898152912_
                                           (##car _e152897152909_))
                                          (_tl152899152914_
                                           (##cdr _e152897152909_)))
                                      (if (and (gx#identifier?
                                                _hd152898152912_)
                                               (gx#core-identifier=?
                                                _hd152898152912_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152871_
                                               (gx#core-expand-define-runtime%
                                                _hd152864_))
                                              (_E152896152905_))
                                          (_E152896152905_))))
                                  (_E152896152905_))))
                           (_E152888152929_
                            (lambda ()
                              (if (gx#stx-pair? _e152872152901_)
                                  (let ((_e152893152921_
                                         (gx#syntax-e _e152872152901_)))
                                    (let ((_hd152894152924_
                                           (##car _e152893152921_))
                                          (_tl152895152926_
                                           (##cdr _e152893152921_)))
                                      (if (and (gx#identifier?
                                                _hd152894152924_)
                                               (gx#core-identifier=?
                                                _hd152894152924_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152871_
                                               (gx#core-expand-define-alias%
                                                _hd152864_))
                                              (_E152892152917_))
                                          (_E152892152917_))))
                                  (_E152892152917_))))
                           (_E152878152941_
                            (lambda ()
                              (if (gx#stx-pair? _e152872152901_)
                                  (let ((_e152889152933_
                                         (gx#syntax-e _e152872152901_)))
                                    (let ((_hd152890152936_
                                           (##car _e152889152933_))
                                          (_tl152891152938_
                                           (##cdr _e152889152933_)))
                                      (if (and (gx#identifier?
                                                _hd152890152936_)
                                               (gx#core-identifier=?
                                                _hd152890152936_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152871_
                                               (gx#core-expand-define-syntax%
                                                _hd152864_))
                                              (_E152888152929_))
                                          (_E152888152929_))))
                                  (_E152888152929_))))
                           (_E152874152973_
                            (lambda ()
                              (if (gx#stx-pair? _e152872152901_)
                                  (let ((_e152879152945_
                                         (gx#syntax-e _e152872152901_)))
                                    (let ((_hd152880152948_
                                           (##car _e152879152945_))
                                          (_tl152881152950_
                                           (##cdr _e152879152945_)))
                                      (if (and (gx#identifier?
                                                _hd152880152948_)
                                               (gx#core-identifier=?
                                                _hd152880152948_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152881152950_)
                                              (let ((_e152882152953_
                                                     (gx#syntax-e
                                                      _tl152881152950_)))
                                                (let ((_hd152883152956_
                                                       (##car _e152882152953_))
                                                      (_tl152884152958_
                                                       (##cdr _e152882152953_)))
                                                  (let ((_hd-bind152961_
                                                         _hd152883152956_))
                                                    (if (gx#stx-pair?
                                                         _tl152884152958_)
                                                        (let ((_e152885152963_
                                                               (gx#syntax-e
                                                                _tl152884152958_)))
                                                          (let ((_hd152886152966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152885152963_))
                        (_tl152887152968_ (##cdr _e152885152963_)))
                    (let ((_expr152971_ _hd152886152966_))
                      (if (gx#stx-null? _tl152887152968_)
                          (if (gx#core-bind-values? _hd-bind152961_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152961_)
                                (_K152871_ _hd152864_))
                              (_E152878152941_))
                          (_E152878152941_)))))
                (_E152878152941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152878152941_))
                                          (_E152878152941_))))
                                  (_E152878152941_))))
                           (_E152873152985_
                            (lambda ()
                              (if (gx#stx-pair? _e152872152901_)
                                  (let ((_e152875152977_
                                         (gx#syntax-e _e152872152901_)))
                                    (let ((_hd152876152980_
                                           (##car _e152875152977_))
                                          (_tl152877152982_
                                           (##cdr _e152875152977_)))
                                      (if (and (gx#identifier?
                                                _hd152876152980_)
                                               (gx#core-identifier=?
                                                _hd152876152980_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152871_
                                               (gx#core-expand-begin-syntax%
                                                _hd152864_))
                                              (_E152874152973_))
                                          (_E152874152973_))))
                                  (_E152874152973_)))))
                      (_E152873152985_))))
                 (_eval-body152745_
                  (lambda (_rbody152753_)
                    (let _lp152755_ ((_rest152757_ _rbody152753_)
                                     (_body152758_ '())
                                     (_ebody152759_ '()))
                      (let* ((_rest152760152768_ _rest152757_)
                             (_else152762152776_
                              (lambda ()
                                (values _body152758_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152759_)
                                          (gx#stx-source _stx152742_))))))
                             (_K152764152852_
                              (lambda (_rest152779_ _hd152780_)
                                (let* ((_e152781152798_ _hd152780_)
                                       (_E152793152802_
                                        (lambda ()
                                          (_lp152755_
                                           _rest152779_
                                           (cons _hd152780_ _body152758_)
                                           (cons _hd152780_ _ebody152759_))))
                                       (_E152783152814_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152781152798_)
                                              (let ((_e152794152806_
                                                     (gx#syntax-e
                                                      _e152781152798_)))
                                                (let ((_hd152795152809_
                                                       (##car _e152794152806_))
                                                      (_tl152796152811_
                                                       (##cdr _e152794152806_)))
                                                  (if (and (gx#identifier?
                                                            _hd152795152809_)
                                                           (gx#core-identifier=?
                                                            _hd152795152809_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152755_
                                                           _rest152779_
                                                           (cons _hd152780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152758_)
                   _ebody152759_)
                  (_E152793152802_))
              (_E152793152802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152793152802_))))
                                       (_E152782152848_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152781152798_)
                                              (let ((_e152784152818_
                                                     (gx#syntax-e
                                                      _e152781152798_)))
                                                (let ((_hd152785152821_
                                                       (##car _e152784152818_))
                                                      (_tl152786152823_
                                                       (##cdr _e152784152818_)))
                                                  (if (and (gx#identifier?
                                                            _hd152785152821_)
                                                           (gx#core-identifier=?
                                                            _hd152785152821_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152786152823_)
                                                          (let ((_e152787152826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152786152823_)))
                    (let ((_hd152788152829_ (##car _e152787152826_))
                          (_tl152789152831_ (##cdr _e152787152826_)))
                      (let ((_hd-bind152834_ _hd152788152829_))
                        (if (gx#stx-pair? _tl152789152831_)
                            (let ((_e152790152836_
                                   (gx#syntax-e _tl152789152831_)))
                              (let ((_hd152791152839_ (##car _e152790152836_))
                                    (_tl152792152841_ (##cdr _e152790152836_)))
                                (let ((_expr152844_ _hd152791152839_))
                                  (if (gx#stx-null? _tl152792152841_)
                                      (if '#t
                                          (let ((_ehd152846_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152834_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152844_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152780_))))
                                            (_lp152755_
                                             _rest152779_
                                             (cons _ehd152846_ _body152758_)
                                             (cons _ehd152846_ _ebody152759_)))
                                          (_E152783152814_))
                                      (_E152783152814_)))))
                            (_E152783152814_)))))
                  (_E152783152814_))
              (_E152783152814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152783152814_)))))
                                  (_E152782152848_)))))
                        (if (##pair? _rest152760152768_)
                            (let ((_hd152765152855_ (##car _rest152760152768_))
                                  (_tl152766152857_
                                   (##cdr _rest152760152768_)))
                              (let* ((_hd152860_ _hd152765152855_)
                                     (_rest152862_ _tl152766152857_))
                                (_K152764152852_ _rest152862_ _hd152860_)))
                            (_else152762152776_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152748_
                     (gx#core-expand-block__1
                      _stx152742_
                      _expand-special152744_
                      '#f))
                    (_g157480_ (_eval-body152745_ _rbody152748_)))
               (begin
                 (let ((_g157481_
                        (if (##values? _g157480_)
                            (##vector-length _g157480_)
                            1)))
                   (if (not (##fx= _g157481_ 2))
                       (error "Context expects 2 values" _g157481_)))
                 (let ((_expanded-body152750_ (##vector-ref _g157480_ 0))
                       (_value152751_ (##vector-ref _g157480_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152750_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152751_ '())))
                    (gx#stx-source _stx152742_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152712_)
        (let* ((_e152713152720_ _stx152712_)
               (_E152715152724_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152713152720_)))
               (_E152714152738_
                (lambda ()
                  (if (gx#stx-pair? _e152713152720_)
                      (let ((_e152716152728_ (gx#syntax-e _e152713152720_)))
                        (let ((_hd152717152731_ (##car _e152716152728_))
                              (_tl152718152733_ (##cdr _e152716152728_)))
                          (let ((_body152736_ _tl152718152733_))
                            (if (gx#stx-list? _body152736_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152736_)
                                 (gx#stx-source _stx152712_))
                                (_E152715152724_)))))
                      (_E152715152724_)))))
          (_E152714152738_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152710_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152710_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152656_)
        (let* ((_e152657152670_ _stx152656_)
               (_E152659152674_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152657152670_)))
               (_E152658152706_
                (lambda ()
                  (if (gx#stx-pair? _e152657152670_)
                      (let ((_e152660152678_ (gx#syntax-e _e152657152670_)))
                        (let ((_hd152661152681_ (##car _e152660152678_))
                              (_tl152662152683_ (##cdr _e152660152678_)))
                          (if (gx#stx-pair? _tl152662152683_)
                              (let ((_e152663152686_
                                     (gx#syntax-e _tl152662152683_)))
                                (let ((_hd152664152689_
                                       (##car _e152663152686_))
                                      (_tl152665152691_
                                       (##cdr _e152663152686_)))
                                  (let ((_ann152694_ _hd152664152689_))
                                    (if (gx#stx-pair? _tl152665152691_)
                                        (let ((_e152666152696_
                                               (gx#syntax-e _tl152665152691_)))
                                          (let ((_hd152667152699_
                                                 (##car _e152666152696_))
                                                (_tl152668152701_
                                                 (##cdr _e152666152696_)))
                                            (let ((_expr152704_
                                                   _hd152667152699_))
                                              (if (gx#stx-null?
                                                   _tl152668152701_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152704_)
                                 '())))
               (gx#stx-source _stx152656_))
              (_E152659152674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152659152674_)))))
                                        (_E152659152674_)))))
                              (_E152659152674_))))
                      (_E152659152674_)))))
          (_E152658152706_))))
    (define gx#core-expand-local-block
      (lambda (_stx152380_ _body152381_)
        (letrec ((_expand-special152383_
                  (lambda (_hd152651_ _K152652_ _rest152653_ _r152654_)
                    (_K152652_
                     '()
                     (cons (_expand-internal152384_ _hd152651_ _rest152653_)
                           _r152654_))))
                 (_expand-internal152384_
                  (lambda (_hd152647_ _rest152648_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152386_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152647_ _rest152648_))
                          (gx#stx-source _stx152380_))
                         _expand-internal-special152385_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157474
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157474)
                       __obj157474))))
                 (_expand-internal-special152385_
                  (lambda (_hd152542_ _K152543_ _rest152544_ _r152545_)
                    (let* ((_e152546152571_ _hd152542_)
                           (_E152566152575_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152546152571_)))
                           (_E152562152587_
                            (lambda ()
                              (if (gx#stx-pair? _e152546152571_)
                                  (let ((_e152567152579_
                                         (gx#syntax-e _e152546152571_)))
                                    (let ((_hd152568152582_
                                           (##car _e152567152579_))
                                          (_tl152569152584_
                                           (##cdr _e152567152579_)))
                                      (if (and (gx#identifier?
                                                _hd152568152582_)
                                               (gx#core-identifier=?
                                                _hd152568152582_
                                                '%#declare))
                                          (if '#t
                                              (_K152543_
                                               _rest152544_
                                               (cons (gx#core-expand-declare%
                                                      _hd152542_)
                                                     _r152545_))
                                              (_E152566152575_))
                                          (_E152566152575_))))
                                  (_E152566152575_))))
                           (_E152558152599_
                            (lambda ()
                              (if (gx#stx-pair? _e152546152571_)
                                  (let ((_e152563152591_
                                         (gx#syntax-e _e152546152571_)))
                                    (let ((_hd152564152594_
                                           (##car _e152563152591_))
                                          (_tl152565152596_
                                           (##cdr _e152563152591_)))
                                      (if (and (gx#identifier?
                                                _hd152564152594_)
                                               (gx#core-identifier=?
                                                _hd152564152594_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152542_)
                                                (_K152543_
                                                 _rest152544_
                                                 _r152545_))
                                              (_E152562152587_))
                                          (_E152562152587_))))
                                  (_E152562152587_))))
                           (_E152548152611_
                            (lambda ()
                              (if (gx#stx-pair? _e152546152571_)
                                  (let ((_e152559152603_
                                         (gx#syntax-e _e152546152571_)))
                                    (let ((_hd152560152606_
                                           (##car _e152559152603_))
                                          (_tl152561152608_
                                           (##cdr _e152559152603_)))
                                      (if (and (gx#identifier?
                                                _hd152560152606_)
                                               (gx#core-identifier=?
                                                _hd152560152606_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152542_)
                                                (_K152543_
                                                 _rest152544_
                                                 _r152545_))
                                              (_E152558152599_))
                                          (_E152558152599_))))
                                  (_E152558152599_))))
                           (_E152547152643_
                            (lambda ()
                              (if (gx#stx-pair? _e152546152571_)
                                  (let ((_e152549152615_
                                         (gx#syntax-e _e152546152571_)))
                                    (let ((_hd152550152618_
                                           (##car _e152549152615_))
                                          (_tl152551152620_
                                           (##cdr _e152549152615_)))
                                      (if (and (gx#identifier?
                                                _hd152550152618_)
                                               (gx#core-identifier=?
                                                _hd152550152618_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152551152620_)
                                              (let ((_e152552152623_
                                                     (gx#syntax-e
                                                      _tl152551152620_)))
                                                (let ((_hd152553152626_
                                                       (##car _e152552152623_))
                                                      (_tl152554152628_
                                                       (##cdr _e152552152623_)))
                                                  (let ((_hd-bind152631_
                                                         _hd152553152626_))
                                                    (if (gx#stx-pair?
                                                         _tl152554152628_)
                                                        (let ((_e152555152633_
                                                               (gx#syntax-e
                                                                _tl152554152628_)))
                                                          (let ((_hd152556152636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152555152633_))
                        (_tl152557152638_ (##cdr _e152555152633_)))
                    (let ((_expr152641_ _hd152556152636_))
                      (if (gx#stx-null? _tl152557152638_)
                          (if (gx#core-bind-values? _hd-bind152631_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152631_)
                                (_K152543_
                                 _rest152544_
                                 (cons _hd152542_ _r152545_)))
                              (_E152548152611_))
                          (_E152548152611_)))))
                (_E152548152611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152548152611_))
                                          (_E152548152611_))))
                                  (_E152548152611_)))))
                      (_E152547152643_))))
                 (_wrap-internal152386_
                  (lambda (_rbody152388_)
                    (let _lp152390_ ((_rest152392_ _rbody152388_)
                                     (_decls152393_ '())
                                     (_bind152394_ '())
                                     (_body152395_ '()))
                      (let* ((_e152396152403_ _rest152392_)
                             (_E152398152452_
                              (lambda ()
                                (let* ((_body152447_
                                        (let* ((_body152406152416_
                                                _body152395_)
                                               (_else152409152424_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152395_)
                                                   (gx#stx-source
                                                    _stx152380_)))))
                                          (let ((_K152414152444_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152380_)))
                                                (_K152411152430_
                                                 (lambda (_expr152428_)
                                                   _expr152428_)))
                                            (let ((_try-match152408152440_
                                                   (lambda ()
                                                     (if (##pair? _body152406152416_)
                                                         (let ((_tl152413152435_
                                                                (##cdr _body152406152416_))
                                                               (_hd152412152433_
                                                                (##car _body152406152416_)))
                                                           (if (##null? _tl152413152435_)
                                                               (let ((_expr152438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152412152433_))
                         (_K152411152430_ _expr152438_))
                       (_else152409152424_)))
                 (_else152409152424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152406152416_)
                                                  (_K152414152444_)
                                                  (_try-match152408152440_))))))
                                       (_body152449_
                                        (if (null? _bind152394_)
                                            _body152447_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152394_
                                                         (cons _body152447_
                                                               '())))
                                             (gx#stx-source _stx152380_)))))
                                  (if (null? _decls152393_)
                                      _body152449_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152393_
                                                   (cons _body152449_ '())))
                                       (gx#stx-source _stx152380_))))))
                             (_E152397152538_
                              (lambda ()
                                (if (gx#stx-pair? _e152396152403_)
                                    (let ((_e152399152456_
                                           (gx#syntax-e _e152396152403_)))
                                      (let ((_hd152400152459_
                                             (##car _e152399152456_))
                                            (_tl152401152461_
                                             (##cdr _e152399152456_)))
                                        (let* ((_hd152464_ _hd152400152459_)
                                               (_rest152466_ _tl152401152461_))
                                          (if '#t
                                              (let* ((_e152467152484_
                                                      _hd152464_)
                                                     (_E152479152488_
                                                      (lambda ()
                                                        (if (null? _bind152394_)
                                                            (_lp152390_
                                                             _rest152466_
                                                             _decls152393_
                                                             _bind152394_
                                                             (cons _hd152464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152395_))
                    (_lp152390_
                     _rest152466_
                     _decls152393_
                     (cons (cons '#f (cons _hd152464_ '())) _bind152394_)
                     _body152395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152469152502_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152467152484_)
                                                            (let ((_e152480152492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152467152484_)))
                      (let ((_hd152481152495_ (##car _e152480152492_))
                            (_tl152482152497_ (##cdr _e152480152492_)))
                        (if (and (gx#identifier? _hd152481152495_)
                                 (gx#core-identifier=?
                                  _hd152481152495_
                                  '%#declare))
                            (let ((_xdecls152500_ _tl152482152497_))
                              (if '#t
                                  (_lp152390_
                                   _rest152466_
                                   (gx#stx-foldr
                                    cons
                                    _decls152393_
                                    _xdecls152500_)
                                   _bind152394_
                                   _body152395_)
                                  (_E152479152488_)))
                            (_E152479152488_))))
                    (_E152479152488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152468152534_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152467152484_)
                                                            (let ((_e152470152506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152467152484_)))
                      (let ((_hd152471152509_ (##car _e152470152506_))
                            (_tl152472152511_ (##cdr _e152470152506_)))
                        (if (and (gx#identifier? _hd152471152509_)
                                 (gx#core-identifier=?
                                  _hd152471152509_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152472152511_)
                                (let ((_e152473152514_
                                       (gx#syntax-e _tl152472152511_)))
                                  (let ((_hd152474152517_
                                         (##car _e152473152514_))
                                        (_tl152475152519_
                                         (##cdr _e152473152514_)))
                                    (let ((_hd-bind152522_ _hd152474152517_))
                                      (if (gx#stx-pair? _tl152475152519_)
                                          (let ((_e152476152524_
                                                 (gx#syntax-e
                                                  _tl152475152519_)))
                                            (let ((_hd152477152527_
                                                   (##car _e152476152524_))
                                                  (_tl152478152529_
                                                   (##cdr _e152476152524_)))
                                              (let ((_expr152532_
                                                     _hd152477152527_))
                                                (if (gx#stx-null?
                                                     _tl152478152529_)
                                                    (if '#t
                                                        (_lp152390_
                                                         _rest152466_
                                                         _decls152393_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152522_)
                             (cons (gx#core-expand-expression _expr152532_)
                                   '()))
                       _bind152394_)
                 _body152395_)
                (_E152469152502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152469152502_)))))
                                          (_E152469152502_)))))
                                (_E152469152502_))
                            (_E152469152502_))))
                    (_E152469152502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152468152534_))
                                              (_E152398152452_)))))
                                    (_E152398152452_)))))
                        (_E152397152538_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152381_)
            (gx#stx-source _stx152380_))
           _expand-special152383_))))
    (define gx#core-expand-declare%
      (lambda (_stx152318_)
        (let* ((_e152319152326_ _stx152318_)
               (_E152321152330_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152319152326_)))
               (_E152320152376_
                (lambda ()
                  (if (gx#stx-pair? _e152319152326_)
                      (let ((_e152322152334_ (gx#syntax-e _e152319152326_)))
                        (let ((_hd152323152337_ (##car _e152322152334_))
                              (_tl152324152339_ (##cdr _e152322152334_)))
                          (let ((_body152342_ _tl152324152339_))
                            (if (gx#stx-list? _body152342_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152344_)
                                     (let* ((_e152345152352_ _decl152344_)
                                            (_E152347152356_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152345152352_)))
                                            (_E152346152372_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152345152352_)
                                                   (let ((_e152348152360_
                                                          (gx#syntax-e
                                                           _e152345152352_)))
                                                     (let ((_hd152349152363_
                                                            (##car _e152348152360_))
                                                           (_tl152350152365_
                                                            (##cdr _e152348152360_)))
                                                       (let* ((_head152368_
                                                               _hd152349152363_)
                                                              (_args152370_
                                                               _tl152350152365_))
                                                         (if (gx#stx-list?
                                                              _args152370_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152344_)
                                                             (_E152347152356_)))))
                                                   (_E152347152356_)))))
                                       (_E152346152372_)))
                                   _body152342_))
                                 (gx#stx-source _stx152318_))
                                (_E152321152330_)))))
                      (_E152321152330_)))))
          (_E152320152376_))))
    (define gx#core-expand-extern%
      (lambda (_stx152222_)
        (let* ((_e152223152230_ _stx152222_)
               (_E152225152234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152223152230_)))
               (_E152224152314_
                (lambda ()
                  (if (gx#stx-pair? _e152223152230_)
                      (let ((_e152226152238_ (gx#syntax-e _e152223152230_)))
                        (let ((_hd152227152241_ (##car _e152226152238_))
                              (_tl152228152243_ (##cdr _e152226152238_)))
                          (let ((_body152246_ _tl152228152243_))
                            (if '#t
                                (let _lp152248_ ((_rest152250_ _body152246_)
                                                 (_r152251_ '()))
                                  (let* ((_e152252152266_ _rest152250_)
                                         (_E152264152270_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152222_)))
                                         (_E152254152274_
                                          (lambda ()
                                            (if (gx#stx-null? _e152252152266_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152251_))
                                                     (gx#stx-source
                                                      _stx152222_))
                                                    (_E152264152270_))
                                                (_E152264152270_))))
                                         (_E152253152310_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152252152266_)
                                                (let ((_e152255152278_
                                                       (gx#syntax-e
                                                        _e152252152266_)))
                                                  (let ((_hd152256152281_
                                                         (##car _e152255152278_))
                                                        (_tl152257152283_
                                                         (##cdr _e152255152278_)))
                                                    (if (gx#stx-pair?
                                                         _hd152256152281_)
                                                        (let ((_e152258152286_
                                                               (gx#syntax-e
                                                                _hd152256152281_)))
                                                          (let ((_hd152259152289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152258152286_))
                        (_tl152260152291_ (##cdr _e152258152286_)))
                    (let ((_id152294_ _hd152259152289_))
                      (if (gx#stx-pair? _tl152260152291_)
                          (let ((_e152261152296_
                                 (gx#syntax-e _tl152260152291_)))
                            (let ((_hd152262152299_ (##car _e152261152296_))
                                  (_tl152263152301_ (##cdr _e152261152296_)))
                              (let ((_eid152304_ _hd152262152299_))
                                (if (gx#stx-null? _tl152263152301_)
                                    (let ((_rest152306_ _tl152257152283_))
                                      (if (and (gx#identifier? _id152294_)
                                               (gx#identifier? _eid152304_))
                                          (let ((_eid152308_
                                                 (gx#stx-e _eid152304_)))
                                            (gx#core-bind-extern!__0
                                             _id152294_
                                             _eid152308_)
                                            (_lp152248_
                                             _rest152306_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152294_)
                                                         (cons _eid152308_
                                                               '()))
                                                   _r152251_)))
                                          (_E152254152274_)))
                                    (_E152254152274_)))))
                          (_E152254152274_)))))
                (_E152254152274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152254152274_)))))
                                    (_E152253152310_)))
                                (_E152225152234_)))))
                      (_E152225152234_)))))
          (_E152224152314_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152168_)
        (let* ((_e152169152182_ _stx152168_)
               (_E152171152186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152169152182_)))
               (_E152170152218_
                (lambda ()
                  (if (gx#stx-pair? _e152169152182_)
                      (let ((_e152172152190_ (gx#syntax-e _e152169152182_)))
                        (let ((_hd152173152193_ (##car _e152172152190_))
                              (_tl152174152195_ (##cdr _e152172152190_)))
                          (if (gx#stx-pair? _tl152174152195_)
                              (let ((_e152175152198_
                                     (gx#syntax-e _tl152174152195_)))
                                (let ((_hd152176152201_
                                       (##car _e152175152198_))
                                      (_tl152177152203_
                                       (##cdr _e152175152198_)))
                                  (let ((_hd152206_ _hd152176152201_))
                                    (if (gx#stx-pair? _tl152177152203_)
                                        (let ((_e152178152208_
                                               (gx#syntax-e _tl152177152203_)))
                                          (let ((_hd152179152211_
                                                 (##car _e152178152208_))
                                                (_tl152180152213_
                                                 (##cdr _e152178152208_)))
                                            (let ((_expr152216_
                                                   _hd152179152211_))
                                              (if (gx#stx-null?
                                                   _tl152180152213_)
                                                  (if (gx#core-bind-values?
                                                       _hd152206_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152206_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152206_)
                             (cons (gx#core-expand-expression _expr152216_)
                                   '())))
                 (gx#stx-source _stx152168_)))
              (_E152171152186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152171152186_)))))
                                        (_E152171152186_)))))
                              (_E152171152186_))))
                      (_E152171152186_)))))
          (_E152170152218_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152112_)
        (let* ((_e152113152126_ _stx152112_)
               (_E152115152130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152113152126_)))
               (_E152114152164_
                (lambda ()
                  (if (gx#stx-pair? _e152113152126_)
                      (let ((_e152116152134_ (gx#syntax-e _e152113152126_)))
                        (let ((_hd152117152137_ (##car _e152116152134_))
                              (_tl152118152139_ (##cdr _e152116152134_)))
                          (if (gx#stx-pair? _tl152118152139_)
                              (let ((_e152119152142_
                                     (gx#syntax-e _tl152118152139_)))
                                (let ((_hd152120152145_
                                       (##car _e152119152142_))
                                      (_tl152121152147_
                                       (##cdr _e152119152142_)))
                                  (let ((_id152150_ _hd152120152145_))
                                    (if (gx#stx-pair? _tl152121152147_)
                                        (let ((_e152122152152_
                                               (gx#syntax-e _tl152121152147_)))
                                          (let ((_hd152123152155_
                                                 (##car _e152122152152_))
                                                (_tl152124152157_
                                                 (##cdr _e152122152152_)))
                                            (let ((_binding-id152160_
                                                   _hd152123152155_))
                                              (if (gx#stx-null?
                                                   _tl152124152157_)
                                                  (if (and (gx#identifier?
                                                            _id152150_)
                                                           (gx#identifier?
                                                            _binding-id152160_))
                                                      (let ((_eid152162_
                                                             (gx#stx-e
                                                              _binding-id152160_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152150_
                                                         _eid152162_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152150_)
                             (cons _eid152162_ '())))))
              (_E152115152130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152115152130_)))))
                                        (_E152115152130_)))))
                              (_E152115152130_))))
                      (_E152115152130_)))))
          (_E152114152164_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152055_)
        (let* ((_e152056152069_ _stx152055_)
               (_E152058152073_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152056152069_)))
               (_E152057152108_
                (lambda ()
                  (if (gx#stx-pair? _e152056152069_)
                      (let ((_e152059152077_ (gx#syntax-e _e152056152069_)))
                        (let ((_hd152060152080_ (##car _e152059152077_))
                              (_tl152061152082_ (##cdr _e152059152077_)))
                          (if (gx#stx-pair? _tl152061152082_)
                              (let ((_e152062152085_
                                     (gx#syntax-e _tl152061152082_)))
                                (let ((_hd152063152088_
                                       (##car _e152062152085_))
                                      (_tl152064152090_
                                       (##cdr _e152062152085_)))
                                  (let ((_id152093_ _hd152063152088_))
                                    (if (gx#stx-pair? _tl152064152090_)
                                        (let ((_e152065152095_
                                               (gx#syntax-e _tl152064152090_)))
                                          (let ((_hd152066152098_
                                                 (##car _e152065152095_))
                                                (_tl152067152100_
                                                 (##cdr _e152065152095_)))
                                            (let ((_expr152103_
                                                   _hd152066152098_))
                                              (if (gx#stx-null?
                                                   _tl152067152100_)
                                                  (if (gx#identifier?
                                                       _id152093_)
                                                      (let ((_g157482_
                                                             (gx#core-expand-expression+1
                                                              _expr152103_)))
                                                        (begin
                                                          (let ((_g157483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157482_)
                             (##vector-length _g157482_)
                             1)))
                    (if (not (##fx= _g157483_ 2))
                        (error "Context expects 2 values" _g157483_)))
                  (let ((_e-stx152105_ (##vector-ref _g157482_ 0))
                        (_e152106_ (##vector-ref _g157482_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152093_ _e152106_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152093_)
                                   (cons _e-stx152105_ '())))
                       (gx#stx-source _stx152055_))))))
              (_E152058152073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152058152073_)))))
                                        (_E152058152073_)))))
                              (_E152058152073_))))
                      (_E152058152073_)))))
          (_E152057152108_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151999_)
        (let* ((_e152000152013_ _stx151999_)
               (_E152002152017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152000152013_)))
               (_E152001152051_
                (lambda ()
                  (if (gx#stx-pair? _e152000152013_)
                      (let ((_e152003152021_ (gx#syntax-e _e152000152013_)))
                        (let ((_hd152004152024_ (##car _e152003152021_))
                              (_tl152005152026_ (##cdr _e152003152021_)))
                          (if (gx#stx-pair? _tl152005152026_)
                              (let ((_e152006152029_
                                     (gx#syntax-e _tl152005152026_)))
                                (let ((_hd152007152032_
                                       (##car _e152006152029_))
                                      (_tl152008152034_
                                       (##cdr _e152006152029_)))
                                  (let ((_id152037_ _hd152007152032_))
                                    (if (gx#stx-pair? _tl152008152034_)
                                        (let ((_e152009152039_
                                               (gx#syntax-e _tl152008152034_)))
                                          (let ((_hd152010152042_
                                                 (##car _e152009152039_))
                                                (_tl152011152044_
                                                 (##cdr _e152009152039_)))
                                            (let ((_alias-id152047_
                                                   _hd152010152042_))
                                              (if (gx#stx-null?
                                                   _tl152011152044_)
                                                  (if (and (gx#identifier?
                                                            _id152037_)
                                                           (gx#identifier?
                                                            _alias-id152047_))
                                                      (let ((_alias-id152049_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152047_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152037_
                                                         _alias-id152049_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152037_)
                             (cons _alias-id152049_ '())))))
              (_E152002152017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152002152017_)))))
                                        (_E152002152017_)))))
                              (_E152002152017_))))
                      (_E152002152017_)))))
          (_E152001152051_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151942_ _wrap?151943_)
        (let* ((_e151944151954_ _stx151942_)
               (_E151946151958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151944151954_)))
               (_E151945151985_
                (lambda ()
                  (if (gx#stx-pair? _e151944151954_)
                      (let ((_e151947151962_ (gx#syntax-e _e151944151954_)))
                        (let ((_hd151948151965_ (##car _e151947151962_))
                              (_tl151949151967_ (##cdr _e151947151962_)))
                          (if (gx#stx-pair? _tl151949151967_)
                              (let ((_e151950151970_
                                     (gx#syntax-e _tl151949151967_)))
                                (let ((_hd151951151973_
                                       (##car _e151950151970_))
                                      (_tl151952151975_
                                       (##cdr _e151950151970_)))
                                  (let* ((_hd151978_ _hd151951151973_)
                                         (_body151980_ _tl151952151975_))
                                    (if (gx#core-bind-values? _hd151978_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151978_)
                                           (let ((_body151983_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151978_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151942_
                                                               _body151980_)
                                                              '()))))
                                             (if _wrap?151943_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151983_)
                                                  (gx#stx-source _stx151942_))
                                                 _body151983_)))
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
                                           __obj157475))
                                        (_E151946151958_)))))
                              (_E151946151958_))))
                      (_E151946151958_)))))
          (_E151945151985_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151992_)
        (let ((_wrap?151994_ '#t))
          (gx#core-expand-lambda%__% _stx151992_ _wrap?151994_))))
    (define gx#core-expand-lambda%
      (lambda _g157485_
        (let ((_g157484_ (##length _g157485_)))
          (cond ((##fx= _g157484_ 1)
                 (apply (lambda (_stx151992_)
                          (gx#core-expand-lambda%__0 _stx151992_))
                        _g157485_))
                ((##fx= _g157484_ 2)
                 (apply (lambda (_stx151996_ _wrap?151997_)
                          (gx#core-expand-lambda%__%
                           _stx151996_
                           _wrap?151997_))
                        _g157485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157485_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151906_)
        (let* ((_e151907151914_ _stx151906_)
               (_E151909151918_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151907151914_)))
               (_E151908151937_
                (lambda ()
                  (if (gx#stx-pair? _e151907151914_)
                      (let ((_e151910151922_ (gx#syntax-e _e151907151914_)))
                        (let ((_hd151911151925_ (##car _e151910151922_))
                              (_tl151912151927_ (##cdr _e151910151922_)))
                          (let ((_clauses151930_ _tl151912151927_))
                            (if (gx#stx-list? _clauses151930_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151932_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151932_)
                                       (let ((_$e151934_
                                              (gx#stx-source _clause151932_)))
                                         (if _$e151934_
                                             _$e151934_
                                             (gx#stx-source _stx151906_))))
                                      '#f))
                                   _clauses151930_))
                                 (gx#stx-source _stx151906_))
                                (_E151909151918_)))))
                      (_E151909151918_)))))
          (_E151908151937_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151860_)
        (let* ((_e151861151871_ _stx151860_)
               (_E151863151875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151861151871_)))
               (_E151862151902_
                (lambda ()
                  (if (gx#stx-pair? _e151861151871_)
                      (let ((_e151864151879_ (gx#syntax-e _e151861151871_)))
                        (let ((_hd151865151882_ (##car _e151864151879_))
                              (_tl151866151884_ (##cdr _e151864151879_)))
                          (if (gx#stx-pair? _tl151866151884_)
                              (let ((_e151867151887_
                                     (gx#syntax-e _tl151866151884_)))
                                (let ((_hd151868151890_
                                       (##car _e151867151887_))
                                      (_tl151869151892_
                                       (##cdr _e151867151887_)))
                                  (let* ((_hd151895_ _hd151868151890_)
                                         (_body151897_ _tl151869151892_))
                                    (if (gx#core-expand-let-bind? _hd151895_)
                                        (let ((_expressions151899_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151895_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151895_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151895_
                                                           _expressions151899_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151860_
                         _body151897_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151860_)))
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
                                             __obj157476)))
                                        (_E151863151875_)))))
                              (_E151863151875_))))
                      (_E151863151875_)))))
          (_E151862151902_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151805_ _form151806_)
        (let* ((_e151807151817_ _stx151805_)
               (_E151809151821_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151807151817_)))
               (_E151808151846_
                (lambda ()
                  (if (gx#stx-pair? _e151807151817_)
                      (let ((_e151810151825_ (gx#syntax-e _e151807151817_)))
                        (let ((_hd151811151828_ (##car _e151810151825_))
                              (_tl151812151830_ (##cdr _e151810151825_)))
                          (if (gx#stx-pair? _tl151812151830_)
                              (let ((_e151813151833_
                                     (gx#syntax-e _tl151812151830_)))
                                (let ((_hd151814151836_
                                       (##car _e151813151833_))
                                      (_tl151815151838_
                                       (##cdr _e151813151833_)))
                                  (let* ((_hd151841_ _hd151814151836_)
                                         (_body151843_ _tl151815151838_))
                                    (if (gx#core-expand-let-bind? _hd151841_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151841_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151806_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151841_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151841_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151805_
                                                               _body151843_)
                                                              '())))
                                            (gx#stx-source _stx151805_)))
                                         gx#current-expander-context
                                         (let ((__obj157477
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157477)
                                           __obj157477))
                                        (_E151809151821_)))))
                              (_E151809151821_))))
                      (_E151809151821_)))))
          (_E151808151846_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151853_)
        (let ((_form151855_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151853_ _form151855_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157487_
        (let ((_g157486_ (##length _g157487_)))
          (cond ((##fx= _g157486_ 1)
                 (apply (lambda (_stx151853_)
                          (gx#core-expand-letrec-values%__0 _stx151853_))
                        _g157487_))
                ((##fx= _g157486_ 2)
                 (apply (lambda (_stx151857_ _form151858_)
                          (gx#core-expand-letrec-values%__%
                           _stx151857_
                           _form151858_))
                        _g157487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157487_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151802_)
        (gx#core-expand-letrec-values%__% _stx151802_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151759_)
        (if (gx#stx-list? _stx151759_)
            (gx#stx-andmap
             (lambda (_bind151761_)
               (let* ((_e151762151772_ _bind151761_)
                      (_E151764151776_ (lambda () '#f))
                      (_E151763151798_
                       (lambda ()
                         (if (gx#stx-pair? _e151762151772_)
                             (let ((_e151765151780_
                                    (gx#syntax-e _e151762151772_)))
                               (let ((_hd151766151783_ (##car _e151765151780_))
                                     (_tl151767151785_
                                      (##cdr _e151765151780_)))
                                 (let ((_hd151788_ _hd151766151783_))
                                   (if (gx#stx-pair? _tl151767151785_)
                                       (let ((_e151768151790_
                                              (gx#syntax-e _tl151767151785_)))
                                         (let ((_hd151769151793_
                                                (##car _e151768151790_))
                                               (_tl151770151795_
                                                (##cdr _e151768151790_)))
                                           (if (gx#stx-null? _tl151770151795_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151788_)
                                                   (_E151764151776_))
                                               (_E151764151776_))))
                                       (_E151764151776_)))))
                             (_E151764151776_)))))
                 (_E151763151798_)))
             _stx151759_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151718_)
        (let* ((_e151719151729_ _bind151718_)
               (_E151721151733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151719151729_)))
               (_E151720151755_
                (lambda ()
                  (if (gx#stx-pair? _e151719151729_)
                      (let ((_e151722151737_ (gx#syntax-e _e151719151729_)))
                        (let ((_hd151723151740_ (##car _e151722151737_))
                              (_tl151724151742_ (##cdr _e151722151737_)))
                          (if (gx#stx-pair? _tl151724151742_)
                              (let ((_e151725151745_
                                     (gx#syntax-e _tl151724151742_)))
                                (let ((_hd151726151748_
                                       (##car _e151725151745_))
                                      (_tl151727151750_
                                       (##cdr _e151725151745_)))
                                  (let ((_expr151753_ _hd151726151748_))
                                    (if (gx#stx-null? _tl151727151750_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151753_)
                                            (_E151721151733_))
                                        (_E151721151733_)))))
                              (_E151721151733_))))
                      (_E151721151733_)))))
          (_E151720151755_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151677_)
        (let* ((_e151678151688_ _bind151677_)
               (_E151680151692_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151678151688_)))
               (_E151679151714_
                (lambda ()
                  (if (gx#stx-pair? _e151678151688_)
                      (let ((_e151681151696_ (gx#syntax-e _e151678151688_)))
                        (let ((_hd151682151699_ (##car _e151681151696_))
                              (_tl151683151701_ (##cdr _e151681151696_)))
                          (let ((_hd151704_ _hd151682151699_))
                            (if (gx#stx-pair? _tl151683151701_)
                                (let ((_e151684151706_
                                       (gx#syntax-e _tl151683151701_)))
                                  (let ((_hd151685151709_
                                         (##car _e151684151706_))
                                        (_tl151686151711_
                                         (##cdr _e151684151706_)))
                                    (if (gx#stx-null? _tl151686151711_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151704_)
                                            (_E151680151692_))
                                        (_E151680151692_))))
                                (_E151680151692_)))))
                      (_E151680151692_)))))
          (_E151679151714_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151635_ _expr151636_)
        (let* ((_e151637151647_ _bind151635_)
               (_E151639151651_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151637151647_)))
               (_E151638151673_
                (lambda ()
                  (if (gx#stx-pair? _e151637151647_)
                      (let ((_e151640151655_ (gx#syntax-e _e151637151647_)))
                        (let ((_hd151641151658_ (##car _e151640151655_))
                              (_tl151642151660_ (##cdr _e151640151655_)))
                          (let ((_hd151663_ _hd151641151658_))
                            (if (gx#stx-pair? _tl151642151660_)
                                (let ((_e151643151665_
                                       (gx#syntax-e _tl151642151660_)))
                                  (let ((_hd151644151668_
                                         (##car _e151643151665_))
                                        (_tl151645151670_
                                         (##cdr _e151643151665_)))
                                    (if (gx#stx-null? _tl151645151670_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151663_)
                                                  (cons _expr151636_ '()))
                                            (_E151639151651_))
                                        (_E151639151651_))))
                                (_E151639151651_)))))
                      (_E151639151651_)))))
          (_E151638151673_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151589_)
        (let* ((_e151590151600_ _stx151589_)
               (_E151592151604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151590151600_)))
               (_E151591151631_
                (lambda ()
                  (if (gx#stx-pair? _e151590151600_)
                      (let ((_e151593151608_ (gx#syntax-e _e151590151600_)))
                        (let ((_hd151594151611_ (##car _e151593151608_))
                              (_tl151595151613_ (##cdr _e151593151608_)))
                          (if (gx#stx-pair? _tl151595151613_)
                              (let ((_e151596151616_
                                     (gx#syntax-e _tl151595151613_)))
                                (let ((_hd151597151619_
                                       (##car _e151596151616_))
                                      (_tl151598151621_
                                       (##cdr _e151596151616_)))
                                  (let* ((_hd151624_ _hd151597151619_)
                                         (_body151626_ _tl151598151621_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151624_)
                                        (let ((_expanders151628_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151624_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151624_
                                              _expanders151628_)
                                             (gx#core-expand-local-block
                                              _stx151589_
                                              _body151626_))
                                           gx#current-expander-context
                                           (let ((__obj157478
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157478)
                                             __obj157478)))
                                        (_E151592151604_)))))
                              (_E151592151604_))))
                      (_E151592151604_)))))
          (_E151591151631_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151538_)
        (let* ((_e151539151549_ _stx151538_)
               (_E151541151553_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151539151549_)))
               (_E151540151585_
                (lambda ()
                  (if (gx#stx-pair? _e151539151549_)
                      (let ((_e151542151557_ (gx#syntax-e _e151539151549_)))
                        (let ((_hd151543151560_ (##car _e151542151557_))
                              (_tl151544151562_ (##cdr _e151542151557_)))
                          (if (gx#stx-pair? _tl151544151562_)
                              (let ((_e151545151565_
                                     (gx#syntax-e _tl151544151562_)))
                                (let ((_hd151546151568_
                                       (##car _e151545151565_))
                                      (_tl151547151570_
                                       (##cdr _e151545151565_)))
                                  (let* ((_hd151573_ _hd151546151568_)
                                         (_body151575_ _tl151547151570_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151573_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151573_
                                            (make-list
                                             (gx#stx-length _hd151573_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151577151580_
                                                     _g151578151582_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151577151580_
                                               _g151578151582_
                                               '#t))
                                            _hd151573_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151573_))
                                           (gx#core-expand-local-block
                                            _stx151538_
                                            _body151575_))
                                         gx#current-expander-context
                                         (let ((__obj157479
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157479)
                                           __obj157479))
                                        (_E151541151553_)))))
                              (_E151541151553_))))
                      (_E151541151553_)))))
          (_E151540151585_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151495_)
        (if (gx#stx-list? _stx151495_)
            (gx#stx-andmap
             (lambda (_bind151497_)
               (let* ((_e151498151508_ _bind151497_)
                      (_E151500151512_ (lambda () '#f))
                      (_E151499151534_
                       (lambda ()
                         (if (gx#stx-pair? _e151498151508_)
                             (let ((_e151501151516_
                                    (gx#syntax-e _e151498151508_)))
                               (let ((_hd151502151519_ (##car _e151501151516_))
                                     (_tl151503151521_
                                      (##cdr _e151501151516_)))
                                 (let ((_hd151524_ _hd151502151519_))
                                   (if (gx#stx-pair? _tl151503151521_)
                                       (let ((_e151504151526_
                                              (gx#syntax-e _tl151503151521_)))
                                         (let ((_hd151505151529_
                                                (##car _e151504151526_))
                                               (_tl151506151531_
                                                (##cdr _e151504151526_)))
                                           (if (gx#stx-null? _tl151506151531_)
                                               (if '#t
                                                   (gx#identifier? _hd151524_)
                                                   (_E151500151512_))
                                               (_E151500151512_))))
                                       (_E151500151512_)))))
                             (_E151500151512_)))))
                 (_E151499151534_)))
             _stx151495_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151452_)
        (let* ((_e151453151463_ _bind151452_)
               (_E151455151467_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151453151463_)))
               (_E151454151491_
                (lambda ()
                  (if (gx#stx-pair? _e151453151463_)
                      (let ((_e151456151471_ (gx#syntax-e _e151453151463_)))
                        (let ((_hd151457151474_ (##car _e151456151471_))
                              (_tl151458151476_ (##cdr _e151456151471_)))
                          (if (gx#stx-pair? _tl151458151476_)
                              (let ((_e151459151479_
                                     (gx#syntax-e _tl151458151476_)))
                                (let ((_hd151460151482_
                                       (##car _e151459151479_))
                                      (_tl151461151484_
                                       (##cdr _e151459151479_)))
                                  (let ((_expr151487_ _hd151460151482_))
                                    (if (gx#stx-null? _tl151461151484_)
                                        (if '#t
                                            (let ((_g157488_
                                                   (gx#core-expand-expression+1
                                                    _expr151487_)))
                                              (begin
                                                (let ((_g157489_
                                                       (if (##values?
                                                            _g157488_)
                                                           (##vector-length
                                                            _g157488_)
                                                           1)))
                                                  (if (not (##fx= _g157489_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157489_)))
                                                (let ((_e151489_
                                                       (##vector-ref
                                                        _g157488_
                                                        1)))
                                                  _e151489_)))
                                            (_E151455151467_))
                                        (_E151455151467_)))))
                              (_E151455151467_))))
                      (_E151455151467_)))))
          (_E151454151491_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151397_ _e151398_ _rebind?151399_)
        (let* ((_e151400151410_ _bind151397_)
               (_E151402151414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151400151410_)))
               (_E151401151436_
                (lambda ()
                  (if (gx#stx-pair? _e151400151410_)
                      (let ((_e151403151418_ (gx#syntax-e _e151400151410_)))
                        (let ((_hd151404151421_ (##car _e151403151418_))
                              (_tl151405151423_ (##cdr _e151403151418_)))
                          (let ((_id151426_ _hd151404151421_))
                            (if (gx#stx-pair? _tl151405151423_)
                                (let ((_e151406151428_
                                       (gx#syntax-e _tl151405151423_)))
                                  (let ((_hd151407151431_
                                         (##car _e151406151428_))
                                        (_tl151408151433_
                                         (##cdr _e151406151428_)))
                                    (if (gx#stx-null? _tl151408151433_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151426_
                                             _e151398_
                                             _rebind?151399_)
                                            (_E151402151414_))
                                        (_E151402151414_))))
                                (_E151402151414_)))))
                      (_E151402151414_)))))
          (_E151401151436_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151443_ _e151444_)
        (let ((_rebind?151446_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151443_
           _e151444_
           _rebind?151446_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157491_
        (let ((_g157490_ (##length _g157491_)))
          (cond ((##fx= _g157490_ 2)
                 (apply (lambda (_bind151443_ _e151444_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151443_
                           _e151444_))
                        _g157491_))
                ((##fx= _g157490_ 3)
                 (apply (lambda (_bind151448_ _e151449_ _rebind?151450_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151448_
                           _e151449_
                           _rebind?151450_))
                        _g157491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157491_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151355_)
        (let* ((_e151356151366_ _stx151355_)
               (_E151358151370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151356151366_)))
               (_E151357151392_
                (lambda ()
                  (if (gx#stx-pair? _e151356151366_)
                      (let ((_e151359151374_ (gx#syntax-e _e151356151366_)))
                        (let ((_hd151360151377_ (##car _e151359151374_))
                              (_tl151361151379_ (##cdr _e151359151374_)))
                          (if (gx#stx-pair? _tl151361151379_)
                              (let ((_e151362151382_
                                     (gx#syntax-e _tl151361151379_)))
                                (let ((_hd151363151385_
                                       (##car _e151362151382_))
                                      (_tl151364151387_
                                       (##cdr _e151362151382_)))
                                  (let ((_expr151390_ _hd151363151385_))
                                    (if (gx#stx-null? _tl151364151387_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151390_)
                                            (_E151358151370_))
                                        (_E151358151370_)))))
                              (_E151358151370_))))
                      (_E151358151370_)))))
          (_E151357151392_))))
    (define gx#core-expand-quote%
      (lambda (_stx151314_)
        (let* ((_e151315151325_ _stx151314_)
               (_E151317151329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151315151325_)))
               (_E151316151351_
                (lambda ()
                  (if (gx#stx-pair? _e151315151325_)
                      (let ((_e151318151333_ (gx#syntax-e _e151315151325_)))
                        (let ((_hd151319151336_ (##car _e151318151333_))
                              (_tl151320151338_ (##cdr _e151318151333_)))
                          (if (gx#stx-pair? _tl151320151338_)
                              (let ((_e151321151341_
                                     (gx#syntax-e _tl151320151338_)))
                                (let ((_hd151322151344_
                                       (##car _e151321151341_))
                                      (_tl151323151346_
                                       (##cdr _e151321151341_)))
                                  (let ((_e151349_ _hd151322151344_))
                                    (if (gx#stx-null? _tl151323151346_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151349_)
                                                         '()))
                                             (gx#stx-source _stx151314_))
                                            (_E151317151329_))
                                        (_E151317151329_)))))
                              (_E151317151329_))))
                      (_E151317151329_)))))
          (_E151316151351_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151273_)
        (let* ((_e151274151284_ _stx151273_)
               (_E151276151288_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151274151284_)))
               (_E151275151310_
                (lambda ()
                  (if (gx#stx-pair? _e151274151284_)
                      (let ((_e151277151292_ (gx#syntax-e _e151274151284_)))
                        (let ((_hd151278151295_ (##car _e151277151292_))
                              (_tl151279151297_ (##cdr _e151277151292_)))
                          (if (gx#stx-pair? _tl151279151297_)
                              (let ((_e151280151300_
                                     (gx#syntax-e _tl151279151297_)))
                                (let ((_hd151281151303_
                                       (##car _e151280151300_))
                                      (_tl151282151305_
                                       (##cdr _e151280151300_)))
                                  (let ((_e151308_ _hd151281151303_))
                                    (if (gx#stx-null? _tl151282151305_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151308_)
                                                         '()))
                                             (gx#stx-source _stx151273_))
                                            (_E151276151288_))
                                        (_E151276151288_)))))
                              (_E151276151288_))))
                      (_E151276151288_)))))
          (_E151275151310_))))
    (define gx#core-expand-call%
      (lambda (_stx151230_)
        (let* ((_e151231151241_ _stx151230_)
               (_E151233151245_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151231151241_)))
               (_E151232151269_
                (lambda ()
                  (if (gx#stx-pair? _e151231151241_)
                      (let ((_e151234151249_ (gx#syntax-e _e151231151241_)))
                        (let ((_hd151235151252_ (##car _e151234151249_))
                              (_tl151236151254_ (##cdr _e151234151249_)))
                          (if (gx#stx-pair? _tl151236151254_)
                              (let ((_e151237151257_
                                     (gx#syntax-e _tl151236151254_)))
                                (let ((_hd151238151260_
                                       (##car _e151237151257_))
                                      (_tl151239151262_
                                       (##cdr _e151237151257_)))
                                  (let* ((_rator151265_ _hd151238151260_)
                                         (_args151267_ _tl151239151262_))
                                    (if (gx#stx-list? _args151267_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151265_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151267_))
                                         (gx#stx-source _stx151230_))
                                        (_E151233151245_)))))
                              (_E151233151245_))))
                      (_E151233151245_)))))
          (_E151232151269_))))
    (define gx#core-expand-if%
      (lambda (_stx151163_)
        (let* ((_e151164151180_ _stx151163_)
               (_E151166151184_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151164151180_)))
               (_E151165151226_
                (lambda ()
                  (if (gx#stx-pair? _e151164151180_)
                      (let ((_e151167151188_ (gx#syntax-e _e151164151180_)))
                        (let ((_hd151168151191_ (##car _e151167151188_))
                              (_tl151169151193_ (##cdr _e151167151188_)))
                          (if (gx#stx-pair? _tl151169151193_)
                              (let ((_e151170151196_
                                     (gx#syntax-e _tl151169151193_)))
                                (let ((_hd151171151199_
                                       (##car _e151170151196_))
                                      (_tl151172151201_
                                       (##cdr _e151170151196_)))
                                  (let ((_test151204_ _hd151171151199_))
                                    (if (gx#stx-pair? _tl151172151201_)
                                        (let ((_e151173151206_
                                               (gx#syntax-e _tl151172151201_)))
                                          (let ((_hd151174151209_
                                                 (##car _e151173151206_))
                                                (_tl151175151211_
                                                 (##cdr _e151173151206_)))
                                            (let ((_K151214_ _hd151174151209_))
                                              (if (gx#stx-pair?
                                                   _tl151175151211_)
                                                  (let ((_e151176151216_
                                                         (gx#syntax-e
                                                          _tl151175151211_)))
                                                    (let ((_hd151177151219_
                                                           (##car _e151176151216_))
                                                          (_tl151178151221_
                                                           (##cdr _e151176151216_)))
                                                      (let ((_E151224_
                                                             _hd151177151219_))
                                                        (if (gx#stx-null?
                                                             _tl151178151221_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151204_)
                                     (cons (gx#core-expand-expression
                                            _K151214_)
                                           (cons (gx#core-expand-expression
                                                  _E151224_)
                                                 '()))))
                         (gx#stx-source _stx151163_))
                        (_E151166151184_))
                    (_E151166151184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151166151184_)))))
                                        (_E151166151184_)))))
                              (_E151166151184_))))
                      (_E151166151184_)))))
          (_E151165151226_))))
    (define gx#core-expand-ref%
      (lambda (_stx151122_)
        (let* ((_e151123151133_ _stx151122_)
               (_E151125151137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151123151133_)))
               (_E151124151159_
                (lambda ()
                  (if (gx#stx-pair? _e151123151133_)
                      (let ((_e151126151141_ (gx#syntax-e _e151123151133_)))
                        (let ((_hd151127151144_ (##car _e151126151141_))
                              (_tl151128151146_ (##cdr _e151126151141_)))
                          (if (gx#stx-pair? _tl151128151146_)
                              (let ((_e151129151149_
                                     (gx#syntax-e _tl151128151146_)))
                                (let ((_hd151130151152_
                                       (##car _e151129151149_))
                                      (_tl151131151154_
                                       (##cdr _e151129151149_)))
                                  (let ((_id151157_ _hd151130151152_))
                                    (if (gx#stx-null? _tl151131151154_)
                                        (if (gx#identifier? _id151157_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151157_
                                                          _stx151122_)
                                                         '()))
                                             (gx#stx-source _stx151122_))
                                            (_E151125151137_))
                                        (_E151125151137_)))))
                              (_E151125151137_))))
                      (_E151125151137_)))))
          (_E151124151159_))))
    (define gx#core-expand-setq%
      (lambda (_stx151068_)
        (let* ((_e151069151082_ _stx151068_)
               (_E151071151086_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151069151082_)))
               (_E151070151118_
                (lambda ()
                  (if (gx#stx-pair? _e151069151082_)
                      (let ((_e151072151090_ (gx#syntax-e _e151069151082_)))
                        (let ((_hd151073151093_ (##car _e151072151090_))
                              (_tl151074151095_ (##cdr _e151072151090_)))
                          (if (gx#stx-pair? _tl151074151095_)
                              (let ((_e151075151098_
                                     (gx#syntax-e _tl151074151095_)))
                                (let ((_hd151076151101_
                                       (##car _e151075151098_))
                                      (_tl151077151103_
                                       (##cdr _e151075151098_)))
                                  (let ((_id151106_ _hd151076151101_))
                                    (if (gx#stx-pair? _tl151077151103_)
                                        (let ((_e151078151108_
                                               (gx#syntax-e _tl151077151103_)))
                                          (let ((_hd151079151111_
                                                 (##car _e151078151108_))
                                                (_tl151080151113_
                                                 (##cdr _e151078151108_)))
                                            (let ((_expr151116_
                                                   _hd151079151111_))
                                              (if (gx#stx-null?
                                                   _tl151080151113_)
                                                  (if (gx#identifier?
                                                       _id151106_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151106_
                            _stx151068_)
                           (cons (gx#core-expand-expression _expr151116_)
                                 '())))
               (gx#stx-source _stx151068_))
              (_E151071151086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151071151086_)))))
                                        (_E151071151086_)))))
                              (_E151071151086_))))
                      (_E151071151086_)))))
          (_E151070151118_))))
    (define gx#macro-expand-extern
      (lambda (_stx150916_)
        (letrec ((_generate150918_
                  (lambda (_body150948_)
                    (let _lp150950_ ((_rest150952_ _body150948_)
                                     (_ns150953_
                                      (gx#core-context-namespace__0))
                                     (_r150954_ '()))
                      (let* ((_e150955150970_ _rest150952_)
                             (_E150968150974_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150955150970_)))
                             (_E150964150978_
                              (lambda ()
                                (if (gx#stx-null? _e150955150970_)
                                    (if '#t
                                        (reverse _r150954_)
                                        (_E150968150974_))
                                    (_E150968150974_))))
                             (_E150957151035_
                              (lambda ()
                                (if (gx#stx-pair? _e150955150970_)
                                    (let ((_e150965150982_
                                           (gx#syntax-e _e150955150970_)))
                                      (let ((_hd150966150985_
                                             (##car _e150965150982_))
                                            (_tl150967150987_
                                             (##cdr _e150965150982_)))
                                        (let* ((_hd150990_ _hd150966150985_)
                                               (_rest150992_ _tl150967150987_))
                                          (if '#t
                                              (if (gx#identifier? _hd150990_)
                                                  (_lp150950_
                                                   _rest150992_
                                                   _ns150953_
                                                   (cons (cons _hd150990_
                                                               (cons (if _ns150953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150990_
                                  _ns150953_
                                  '"#"
                                  _hd150990_)
                                 _hd150990_)
                             '()))
                 _r150954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150993151003_
                                                          _hd150990_)
                                                         (_E150995151007_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150993151003_)))
                                                         (_E150994151031_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150993151003_)
                        (let ((_e150996151011_ (gx#syntax-e _e150993151003_)))
                          (let ((_hd150997151014_ (##car _e150996151011_))
                                (_tl150998151016_ (##cdr _e150996151011_)))
                            (let ((_id151019_ _hd150997151014_))
                              (if (gx#stx-pair? _tl150998151016_)
                                  (let ((_e150999151021_
                                         (gx#syntax-e _tl150998151016_)))
                                    (let ((_hd151000151024_
                                           (##car _e150999151021_))
                                          (_tl151001151026_
                                           (##cdr _e150999151021_)))
                                      (let ((_eid151029_ _hd151000151024_))
                                        (if (gx#stx-null? _tl151001151026_)
                                            (if (and (gx#identifier?
                                                      _id151019_)
                                                     (gx#identifier?
                                                      _eid151029_))
                                                (_lp150950_
                                                 _rest150992_
                                                 _ns150953_
                                                 (cons (cons _id151019_
                                                             (cons _eid151029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150995151007_))
                                            (_E150995151007_)))))
                                  (_E150995151007_)))))
                        (_E150995151007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150994151031_)))
                                              (_E150964150978_)))))
                                    (_E150964150978_))))
                             (_E150956151064_
                              (lambda ()
                                (if (gx#stx-pair? _e150955150970_)
                                    (let ((_e150958151039_
                                           (gx#syntax-e _e150955150970_)))
                                      (let ((_hd150959151042_
                                             (##car _e150958151039_))
                                            (_tl150960151044_
                                             (##cdr _e150958151039_)))
                                        (if (eq? (gx#stx-e _hd150959151042_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150960151044_)
                                                (let ((_e150961151047_
                                                       (gx#syntax-e
                                                        _tl150960151044_)))
                                                  (let ((_hd150962151050_
                                                         (##car _e150961151047_))
                                                        (_tl150963151052_
                                                         (##cdr _e150961151047_)))
                                                    (let* ((_ns151055_
                                                            _hd150962151050_)
                                                           (_rest151057_
                                                            _tl150963151052_))
                                                      (if '#t
                                                          (let ((_ns151062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151055_)
                             (symbol->string (gx#stx-e _ns151055_))
                             (if (or (gx#stx-string? _ns151055_)
                                     (gx#stx-false? _ns151055_))
                                 (gx#stx-e _ns151055_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150916_
                                  _ns151055_)))))
                    (_lp150950_ _rest151057_ _ns151062_ _r150954_))
                  (_E150957151035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150957151035_))
                                            (_E150957151035_))))
                                    (_E150957151035_)))))
                        (_E150956151064_))))))
          (let* ((_e150919150926_ _stx150916_)
                 (_E150921150930_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150919150926_)))
                 (_E150920150944_
                  (lambda ()
                    (if (gx#stx-pair? _e150919150926_)
                        (let ((_e150922150934_ (gx#syntax-e _e150919150926_)))
                          (let ((_hd150923150937_ (##car _e150922150934_))
                                (_tl150924150939_ (##cdr _e150922150934_)))
                            (let ((_body150942_ _tl150924150939_))
                              (if (gx#stx-list? _body150942_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150918_ _body150942_))
                                  (_E150921150930_)))))
                        (_E150921150930_)))))
            (_E150920150944_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150862_)
        (let* ((_e150863150876_ _stx150862_)
               (_E150865150880_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150863150876_)))
               (_E150864150912_
                (lambda ()
                  (if (gx#stx-pair? _e150863150876_)
                      (let ((_e150866150884_ (gx#syntax-e _e150863150876_)))
                        (let ((_hd150867150887_ (##car _e150866150884_))
                              (_tl150868150889_ (##cdr _e150866150884_)))
                          (if (gx#stx-pair? _tl150868150889_)
                              (let ((_e150869150892_
                                     (gx#syntax-e _tl150868150889_)))
                                (let ((_hd150870150895_
                                       (##car _e150869150892_))
                                      (_tl150871150897_
                                       (##cdr _e150869150892_)))
                                  (let ((_hd150900_ _hd150870150895_))
                                    (if (gx#stx-pair? _tl150871150897_)
                                        (let ((_e150872150902_
                                               (gx#syntax-e _tl150871150897_)))
                                          (let ((_hd150873150905_
                                                 (##car _e150872150902_))
                                                (_tl150874150907_
                                                 (##cdr _e150872150902_)))
                                            (let ((_expr150910_
                                                   _hd150873150905_))
                                              (if (gx#stx-null?
                                                   _tl150874150907_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150900_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150900_)
                          (cons _expr150910_ '())))
              (_E150865150880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150865150880_)))))
                                        (_E150865150880_)))))
                              (_E150865150880_))))
                      (_E150865150880_)))))
          (_E150864150912_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150808_)
        (let* ((_e150809150822_ _stx150808_)
               (_E150811150826_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150809150822_)))
               (_E150810150858_
                (lambda ()
                  (if (gx#stx-pair? _e150809150822_)
                      (let ((_e150812150830_ (gx#syntax-e _e150809150822_)))
                        (let ((_hd150813150833_ (##car _e150812150830_))
                              (_tl150814150835_ (##cdr _e150812150830_)))
                          (if (gx#stx-pair? _tl150814150835_)
                              (let ((_e150815150838_
                                     (gx#syntax-e _tl150814150835_)))
                                (let ((_hd150816150841_
                                       (##car _e150815150838_))
                                      (_tl150817150843_
                                       (##cdr _e150815150838_)))
                                  (let ((_hd150846_ _hd150816150841_))
                                    (if (gx#stx-pair? _tl150817150843_)
                                        (let ((_e150818150848_
                                               (gx#syntax-e _tl150817150843_)))
                                          (let ((_hd150819150851_
                                                 (##car _e150818150848_))
                                                (_tl150820150853_
                                                 (##cdr _e150818150848_)))
                                            (let ((_expr150856_
                                                   _hd150819150851_))
                                              (if (gx#stx-null?
                                                   _tl150820150853_)
                                                  (if (gx#identifier?
                                                       _hd150846_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150856_ '())))
              (_E150811150826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150811150826_)))))
                                        (_E150811150826_)))))
                              (_E150811150826_))))
                      (_E150811150826_)))))
          (_E150810150858_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150754_)
        (let* ((_e150755150768_ _stx150754_)
               (_E150757150772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150755150768_)))
               (_E150756150804_
                (lambda ()
                  (if (gx#stx-pair? _e150755150768_)
                      (let ((_e150758150776_ (gx#syntax-e _e150755150768_)))
                        (let ((_hd150759150779_ (##car _e150758150776_))
                              (_tl150760150781_ (##cdr _e150758150776_)))
                          (if (gx#stx-pair? _tl150760150781_)
                              (let ((_e150761150784_
                                     (gx#syntax-e _tl150760150781_)))
                                (let ((_hd150762150787_
                                       (##car _e150761150784_))
                                      (_tl150763150789_
                                       (##cdr _e150761150784_)))
                                  (let ((_id150792_ _hd150762150787_))
                                    (if (gx#stx-pair? _tl150763150789_)
                                        (let ((_e150764150794_
                                               (gx#syntax-e _tl150763150789_)))
                                          (let ((_hd150765150797_
                                                 (##car _e150764150794_))
                                                (_tl150766150799_
                                                 (##cdr _e150764150794_)))
                                            (let ((_alias-id150802_
                                                   _hd150765150797_))
                                              (if (gx#stx-null?
                                                   _tl150766150799_)
                                                  (if (and (gx#identifier?
                                                            _id150792_)
                                                           (gx#identifier?
                                                            _alias-id150802_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150802_ '())))
              (_E150757150772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150757150772_)))))
                                        (_E150757150772_)))))
                              (_E150757150772_))))
                      (_E150757150772_)))))
          (_E150756150804_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150711_)
        (let* ((_e150712150722_ _stx150711_)
               (_E150714150726_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150712150722_)))
               (_E150713150750_
                (lambda ()
                  (if (gx#stx-pair? _e150712150722_)
                      (let ((_e150715150730_ (gx#syntax-e _e150712150722_)))
                        (let ((_hd150716150733_ (##car _e150715150730_))
                              (_tl150717150735_ (##cdr _e150715150730_)))
                          (if (gx#stx-pair? _tl150717150735_)
                              (let ((_e150718150738_
                                     (gx#syntax-e _tl150717150735_)))
                                (let ((_hd150719150741_
                                       (##car _e150718150738_))
                                      (_tl150720150743_
                                       (##cdr _e150718150738_)))
                                  (let* ((_hd150746_ _hd150719150741_)
                                         (_body150748_ _tl150720150743_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150746_)
                                             (gx#stx-list? _body150748_)
                                             (not (gx#stx-null? _body150748_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150746_)
                                         _body150748_)
                                        (_E150714150726_)))))
                              (_E150714150726_))))
                      (_E150714150726_)))))
          (_E150713150750_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150647_)
        (letrec ((_generate150649_
                  (lambda (_clause150679_)
                    (let* ((_e150680150687_ _clause150679_)
                           (_E150682150691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150647_
                               _clause150679_)))
                           (_E150681150707_
                            (lambda ()
                              (if (gx#stx-pair? _e150680150687_)
                                  (let ((_e150683150695_
                                         (gx#syntax-e _e150680150687_)))
                                    (let ((_hd150684150698_
                                           (##car _e150683150695_))
                                          (_tl150685150700_
                                           (##cdr _e150683150695_)))
                                      (let* ((_hd150703_ _hd150684150698_)
                                             (_body150705_ _tl150685150700_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150703_)
                                                 (gx#stx-list? _body150705_)
                                                 (not (gx#stx-null?
                                                       _body150705_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150703_)
                                                   _body150705_)
                                             (gx#stx-source _clause150679_))
                                            (_E150682150691_)))))
                                  (_E150682150691_)))))
                      (_E150681150707_)))))
          (let* ((_e150650150657_ _stx150647_)
                 (_E150652150661_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150650150657_)))
                 (_E150651150675_
                  (lambda ()
                    (if (gx#stx-pair? _e150650150657_)
                        (let ((_e150653150665_ (gx#syntax-e _e150650150657_)))
                          (let ((_hd150654150668_ (##car _e150653150665_))
                                (_tl150655150670_ (##cdr _e150653150665_)))
                            (let ((_clauses150673_ _tl150655150670_))
                              (if (gx#stx-list? _clauses150673_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150649_
                                    _clauses150673_))
                                  (_E150652150661_)))))
                        (_E150652150661_)))))
            (_E150651150675_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150548_ _form150549_)
        (letrec ((_generate150551_
                  (lambda (_bind150594_)
                    (let* ((_e150595150605_ _bind150594_)
                           (_E150597150609_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150548_
                               _bind150594_)))
                           (_E150596150633_
                            (lambda ()
                              (if (gx#stx-pair? _e150595150605_)
                                  (let ((_e150598150613_
                                         (gx#syntax-e _e150595150605_)))
                                    (let ((_hd150599150616_
                                           (##car _e150598150613_))
                                          (_tl150600150618_
                                           (##cdr _e150598150613_)))
                                      (let ((_ids150621_ _hd150599150616_))
                                        (if (gx#stx-pair? _tl150600150618_)
                                            (let ((_e150601150623_
                                                   (gx#syntax-e
                                                    _tl150600150618_)))
                                              (let ((_hd150602150626_
                                                     (##car _e150601150623_))
                                                    (_tl150603150628_
                                                     (##cdr _e150601150623_)))
                                                (let ((_expr150631_
                                                       _hd150602150626_))
                                                  (if (gx#stx-null?
                                                       _tl150603150628_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150621_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150621_)
                        (cons _expr150631_ '()))
                  (_E150597150609_))
              (_E150597150609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150597150609_)))))
                                  (_E150597150609_)))))
                      (_E150596150633_)))))
          (let* ((_e150552150562_ _stx150548_)
                 (_E150554150566_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150552150562_)))
                 (_E150553150590_
                  (lambda ()
                    (if (gx#stx-pair? _e150552150562_)
                        (let ((_e150555150570_ (gx#syntax-e _e150552150562_)))
                          (let ((_hd150556150573_ (##car _e150555150570_))
                                (_tl150557150575_ (##cdr _e150555150570_)))
                            (if (gx#stx-pair? _tl150557150575_)
                                (let ((_e150558150578_
                                       (gx#syntax-e _tl150557150575_)))
                                  (let ((_hd150559150581_
                                         (##car _e150558150578_))
                                        (_tl150560150583_
                                         (##cdr _e150558150578_)))
                                    (let* ((_hd150586_ _hd150559150581_)
                                           (_body150588_ _tl150560150583_))
                                      (if (and (gx#stx-list? _hd150586_)
                                               (gx#stx-list? _body150588_)
                                               (not (gx#stx-null?
                                                     _body150588_)))
                                          (gx#core-cons*
                                           _form150549_
                                           (gx#stx-map1
                                            _generate150551_
                                            _hd150586_)
                                           _body150588_)
                                          (_E150554150566_)))))
                                (_E150554150566_))))
                        (_E150554150566_)))))
            (_E150553150590_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150640_)
        (let ((_form150642_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150640_ _form150642_))))
    (define gx#macro-expand-let-values
      (lambda _g157493_
        (let ((_g157492_ (##length _g157493_)))
          (cond ((##fx= _g157492_ 1)
                 (apply (lambda (_stx150640_)
                          (gx#macro-expand-let-values__0 _stx150640_))
                        _g157493_))
                ((##fx= _g157492_ 2)
                 (apply (lambda (_stx150644_ _form150645_)
                          (gx#macro-expand-let-values__%
                           _stx150644_
                           _form150645_))
                        _g157493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157493_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150545_)
        (gx#macro-expand-let-values__% _stx150545_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150543_)
        (gx#macro-expand-let-values__% _stx150543_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150434_)
        (let* ((_e150435150461_ _stx150434_)
               (_E150447150465_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150435150461_)))
               (_E150437150507_
                (lambda ()
                  (if (gx#stx-pair? _e150435150461_)
                      (let ((_e150448150469_ (gx#syntax-e _e150435150461_)))
                        (let ((_hd150449150472_ (##car _e150448150469_))
                              (_tl150450150474_ (##cdr _e150448150469_)))
                          (if (gx#stx-pair? _tl150450150474_)
                              (let ((_e150451150477_
                                     (gx#syntax-e _tl150450150474_)))
                                (let ((_hd150452150480_
                                       (##car _e150451150477_))
                                      (_tl150453150482_
                                       (##cdr _e150451150477_)))
                                  (let ((_test150485_ _hd150452150480_))
                                    (if (gx#stx-pair? _tl150453150482_)
                                        (let ((_e150454150487_
                                               (gx#syntax-e _tl150453150482_)))
                                          (let ((_hd150455150490_
                                                 (##car _e150454150487_))
                                                (_tl150456150492_
                                                 (##cdr _e150454150487_)))
                                            (let ((_K150495_ _hd150455150490_))
                                              (if (gx#stx-pair?
                                                   _tl150456150492_)
                                                  (let ((_e150457150497_
                                                         (gx#syntax-e
                                                          _tl150456150492_)))
                                                    (let ((_hd150458150500_
                                                           (##car _e150457150497_))
                                                          (_tl150459150502_
                                                           (##cdr _e150457150497_)))
                                                      (let ((_E150505_
                                                             _hd150458150500_))
                                                        (if (gx#stx-null?
                                                             _tl150459150502_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150485_
                         _K150495_
                         _E150505_)
                        (_E150447150465_))
                    (_E150447150465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150447150465_)))))
                                        (_E150447150465_)))))
                              (_E150447150465_))))
                      (_E150447150465_))))
               (_E150436150539_
                (lambda ()
                  (if (gx#stx-pair? _e150435150461_)
                      (let ((_e150438150511_ (gx#syntax-e _e150435150461_)))
                        (let ((_hd150439150514_ (##car _e150438150511_))
                              (_tl150440150516_ (##cdr _e150438150511_)))
                          (if (gx#stx-pair? _tl150440150516_)
                              (let ((_e150441150519_
                                     (gx#syntax-e _tl150440150516_)))
                                (let ((_hd150442150522_
                                       (##car _e150441150519_))
                                      (_tl150443150524_
                                       (##cdr _e150441150519_)))
                                  (let ((_test150527_ _hd150442150522_))
                                    (if (gx#stx-pair? _tl150443150524_)
                                        (let ((_e150444150529_
                                               (gx#syntax-e _tl150443150524_)))
                                          (let ((_hd150445150532_
                                                 (##car _e150444150529_))
                                                (_tl150446150534_
                                                 (##cdr _e150444150529_)))
                                            (let ((_K150537_ _hd150445150532_))
                                              (if (gx#stx-null?
                                                   _tl150446150534_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150527_
                                                       _K150537_
                                                       '#!void)
                                                      (_E150437150507_))
                                                  (_E150437150507_)))))
                                        (_E150437150507_)))))
                              (_E150437150507_))))
                      (_E150437150507_)))))
          (_E150436150539_))))
    (define gx#free-identifier=?
      (lambda (_xid150422_ _yid150423_)
        (let ((_xe150425_ (gx#resolve-identifier__0 _xid150422_))
              (_ye150426_ (gx#resolve-identifier__0 _yid150423_)))
          (if (and _xe150425_ _ye150426_)
              (let ((_$e150428_ (eq? _xe150425_ _ye150426_)))
                (if _$e150428_
                    _$e150428_
                    (if (##structure-instance-of? _xe150425_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150426_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150425_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150426_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150425_ _ye150426_)
                  '#f
                  (gx#stx-eq? _xid150422_ _yid150423_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150406_ _yid150407_)
        (letrec ((_context150409_
                  (lambda (_e150420_)
                    (if (##structure-direct-instance-of?
                         _e150420_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150420_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150410_
                  (lambda (_e150418_)
                    (if (symbol? _e150418_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150418_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150418_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150418_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150411_
                  (lambda (_e150416_)
                    (if (symbol? _e150416_)
                        _e150416_
                        (gx#syntax-local-unwrap _e150416_)))))
          (let ((_x150413_ (_unwrap150411_ _xid150406_))
                (_y150414_ (_unwrap150411_ _yid150407_)))
            (if (gx#stx-eq? _x150413_ _y150414_)
                (if (eq? (_context150409_ _x150413_)
                         (_context150409_ _y150414_))
                    (equal? (_marks150410_ _x150413_)
                            (_marks150410_ _y150414_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150404_)
        (if (gx#identifier? _stx150404_)
            (gx#core-identifier=? _stx150404_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150402_)
        (if (gx#identifier? _stx150402_)
            (gx#core-identifier=? _stx150402_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150400_)
        (if (gx#identifier? _x150400_)
            (if (not (gx#underscore? _x150400_)) _x150400_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150346_ _where150347_)
        (let _lp150349_ ((_rest150351_ (gx#syntax->list _stx150346_)))
          (let* ((_rest150352150360_ _rest150351_)
                 (_else150354150368_ (lambda () '#t))
                 (_K150356150378_
                  (lambda (_rest150371_ _hd150372_)
                    (if (not (gx#identifier? _hd150372_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150347_
                         _hd150372_)
                        (if (find (lambda (_g150373150375_)
                                    (gx#bound-identifier=?
                                     _g150373150375_
                                     _hd150372_))
                                  _rest150371_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150347_
                             _hd150372_)
                            (_lp150349_ _rest150371_))))))
            (if (##pair? _rest150352150360_)
                (let ((_hd150357150381_ (##car _rest150352150360_))
                      (_tl150358150383_ (##cdr _rest150352150360_)))
                  (let* ((_hd150386_ _hd150357150381_)
                         (_rest150388_ _tl150358150383_))
                    (_K150356150378_ _rest150388_ _hd150386_)))
                (_else150354150368_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150393_)
        (let ((_where150395_ _stx150393_))
          (gx#check-duplicate-identifiers__% _stx150393_ _where150395_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157495_
        (let ((_g157494_ (##length _g157495_)))
          (cond ((##fx= _g157494_ 1)
                 (apply (lambda (_stx150393_)
                          (gx#check-duplicate-identifiers__0 _stx150393_))
                        _g157495_))
                ((##fx= _g157494_ 2)
                 (apply (lambda (_stx150397_ _where150398_)
                          (gx#check-duplicate-identifiers__%
                           _stx150397_
                           _where150398_))
                        _g157495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157495_))))))
    (define gx#core-bind-values?
      (lambda (_stx150338_)
        (gx#stx-andmap
         (lambda (_x150340_)
           (let ((_$e150342_ (gx#identifier? _x150340_)))
             (if _$e150342_ _$e150342_ (gx#stx-false? _x150340_))))
         _stx150338_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150302_ _rebind?150303_ _phi150304_ _ctx150305_)
        (gx#stx-for-each1
         (lambda (_id150307_)
           (if (gx#identifier? _id150307_)
               (gx#core-bind-runtime!__%
                _id150307_
                _rebind?150303_
                _phi150304_
                _ctx150305_)
               '#!void))
         _stx150302_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150312_)
        (let* ((_rebind?150314_ '#f)
               (_phi150316_ (gx#current-expander-phi))
               (_ctx150318_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150312_
           _rebind?150314_
           _phi150316_
           _ctx150318_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150320_ _rebind?150321_)
        (let* ((_phi150323_ (gx#current-expander-phi))
               (_ctx150325_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150320_
           _rebind?150321_
           _phi150323_
           _ctx150325_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150327_ _rebind?150328_ _phi150329_)
        (let ((_ctx150331_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150327_
           _rebind?150328_
           _phi150329_
           _ctx150331_))))
    (define gx#core-bind-values!
      (lambda _g157497_
        (let ((_g157496_ (##length _g157497_)))
          (cond ((##fx= _g157496_ 1)
                 (apply (lambda (_stx150312_)
                          (gx#core-bind-values!__0 _stx150312_))
                        _g157497_))
                ((##fx= _g157496_ 2)
                 (apply (lambda (_stx150320_ _rebind?150321_)
                          (gx#core-bind-values!__1
                           _stx150320_
                           _rebind?150321_))
                        _g157497_))
                ((##fx= _g157496_ 3)
                 (apply (lambda (_stx150327_ _rebind?150328_ _phi150329_)
                          (gx#core-bind-values!__2
                           _stx150327_
                           _rebind?150328_
                           _phi150329_))
                        _g157497_))
                ((##fx= _g157496_ 4)
                 (apply (lambda (_stx150333_
                                 _rebind?150334_
                                 _phi150335_
                                 _ctx150336_)
                          (gx#core-bind-values!__%
                           _stx150333_
                           _rebind?150334_
                           _phi150335_
                           _ctx150336_))
                        _g157497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157497_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150297_)
        (gx#stx-map1
         (lambda (_x150299_)
           (if (gx#identifier? _x150299_)
               (gx#core-quote-syntax__0 _x150299_)
               '#f))
         _stx150297_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150290_)
        (if (gx#identifier? _stx150290_)
            (let* ((_bind150292_ (gx#resolve-identifier__0 _stx150290_))
                   (_$e150294_ (not _bind150292_)))
              (if _$e150294_
                  _$e150294_
                  (##structure-instance-of?
                   _bind150292_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150282_ _form150283_)
        (let ((_bind150285_ (gx#resolve-identifier__0 _id150282_)))
          (if (##structure-instance-of? _bind150285_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150282_)
              (if (not _bind150285_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150282_)))
                      (gx#core-quote-syntax__0 _id150282_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150283_
                       _id150282_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150283_
                   _id150282_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150241_ _rebind?150242_ _phi150243_ _ctx150244_)
        (let* ((_key150246_ (gx#core-identifier-key _id150241_))
               (_eid150248_
                (gx#make-binding-id__%
                 _key150246_
                 '#f
                 _phi150243_
                 _ctx150244_))
               (_bind150250_
                (if (##structure-instance-of?
                     _ctx150244_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150248_
                     _key150246_
                     _phi150243_
                     _ctx150244_)
                    (if (##structure-instance-of?
                         _ctx150244_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150248_
                         _key150246_
                         _phi150243_)
                        (if (##structure-instance-of?
                             _ctx150244_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150248_
                             _key150246_
                             _phi150243_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150248_
                             _key150246_
                             _phi150243_))))))
          (gx#bind-identifier!__%
           _id150241_
           _bind150250_
           _rebind?150242_
           _phi150243_
           _ctx150244_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150256_)
        (let* ((_rebind?150258_ '#f)
               (_phi150260_ (gx#current-expander-phi))
               (_ctx150262_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150256_
           _rebind?150258_
           _phi150260_
           _ctx150262_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150264_ _rebind?150265_)
        (let* ((_phi150267_ (gx#current-expander-phi))
               (_ctx150269_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150264_
           _rebind?150265_
           _phi150267_
           _ctx150269_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150271_ _rebind?150272_ _phi150273_)
        (let ((_ctx150275_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150271_
           _rebind?150272_
           _phi150273_
           _ctx150275_))))
    (define gx#core-bind-runtime!
      (lambda _g157499_
        (let ((_g157498_ (##length _g157499_)))
          (cond ((##fx= _g157498_ 1)
                 (apply (lambda (_id150256_)
                          (gx#core-bind-runtime!__0 _id150256_))
                        _g157499_))
                ((##fx= _g157498_ 2)
                 (apply (lambda (_id150264_ _rebind?150265_)
                          (gx#core-bind-runtime!__1
                           _id150264_
                           _rebind?150265_))
                        _g157499_))
                ((##fx= _g157498_ 3)
                 (apply (lambda (_id150271_ _rebind?150272_ _phi150273_)
                          (gx#core-bind-runtime!__2
                           _id150271_
                           _rebind?150272_
                           _phi150273_))
                        _g157499_))
                ((##fx= _g157498_ 4)
                 (apply (lambda (_id150277_
                                 _rebind?150278_
                                 _phi150279_
                                 _ctx150280_)
                          (gx#core-bind-runtime!__%
                           _id150277_
                           _rebind?150278_
                           _phi150279_
                           _ctx150280_))
                        _g157499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157499_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150196_ _eid150197_ _rebind?150198_ _phi150199_ _ctx150200_)
        (let* ((_key150202_ (gx#core-identifier-key _id150196_))
               (_bind150204_
                (if (##structure-instance-of?
                     _ctx150200_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150197_
                     _key150202_
                     _phi150199_
                     _ctx150200_)
                    (if (##structure-instance-of?
                         _ctx150200_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150197_
                         _key150202_
                         _phi150199_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150197_
                         _key150202_
                         _phi150199_)))))
          (gx#bind-identifier!__%
           _id150196_
           _bind150204_
           _rebind?150198_
           _phi150199_
           _ctx150200_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150210_ _eid150211_)
        (let* ((_rebind?150213_ '#f)
               (_phi150215_ (gx#current-expander-phi))
               (_ctx150217_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150210_
           _eid150211_
           _rebind?150213_
           _phi150215_
           _ctx150217_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150219_ _eid150220_ _rebind?150221_)
        (let* ((_phi150223_ (gx#current-expander-phi))
               (_ctx150225_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150219_
           _eid150220_
           _rebind?150221_
           _phi150223_
           _ctx150225_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150227_ _eid150228_ _rebind?150229_ _phi150230_)
        (let ((_ctx150232_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150227_
           _eid150228_
           _rebind?150229_
           _phi150230_
           _ctx150232_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157501_
        (let ((_g157500_ (##length _g157501_)))
          (cond ((##fx= _g157500_ 2)
                 (apply (lambda (_id150210_ _eid150211_)
                          (gx#core-bind-runtime-reference!__0
                           _id150210_
                           _eid150211_))
                        _g157501_))
                ((##fx= _g157500_ 3)
                 (apply (lambda (_id150219_ _eid150220_ _rebind?150221_)
                          (gx#core-bind-runtime-reference!__1
                           _id150219_
                           _eid150220_
                           _rebind?150221_))
                        _g157501_))
                ((##fx= _g157500_ 4)
                 (apply (lambda (_id150227_
                                 _eid150228_
                                 _rebind?150229_
                                 _phi150230_)
                          (gx#core-bind-runtime-reference!__2
                           _id150227_
                           _eid150228_
                           _rebind?150229_
                           _phi150230_))
                        _g157501_))
                ((##fx= _g157500_ 5)
                 (apply (lambda (_id150234_
                                 _eid150235_
                                 _rebind?150236_
                                 _phi150237_
                                 _ctx150238_)
                          (gx#core-bind-runtime-reference!__%
                           _id150234_
                           _eid150235_
                           _rebind?150236_
                           _phi150237_
                           _ctx150238_))
                        _g157501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157501_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150156_ _eid150157_ _rebind?150158_ _phi150159_ _ctx150160_)
        (gx#bind-identifier!__%
         _id150156_
         (##structure
          gx#extern-binding::t
          _eid150157_
          (gx#core-identifier-key _id150156_)
          _phi150159_)
         _rebind?150158_
         _phi150159_
         _ctx150160_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150165_ _eid150166_)
        (let* ((_rebind?150168_ '#f)
               (_phi150170_ (gx#current-expander-phi))
               (_ctx150172_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150165_
           _eid150166_
           _rebind?150168_
           _phi150170_
           _ctx150172_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150174_ _eid150175_ _rebind?150176_)
        (let* ((_phi150178_ (gx#current-expander-phi))
               (_ctx150180_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150174_
           _eid150175_
           _rebind?150176_
           _phi150178_
           _ctx150180_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150182_ _eid150183_ _rebind?150184_ _phi150185_)
        (let ((_ctx150187_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150182_
           _eid150183_
           _rebind?150184_
           _phi150185_
           _ctx150187_))))
    (define gx#core-bind-extern!
      (lambda _g157503_
        (let ((_g157502_ (##length _g157503_)))
          (cond ((##fx= _g157502_ 2)
                 (apply (lambda (_id150165_ _eid150166_)
                          (gx#core-bind-extern!__0 _id150165_ _eid150166_))
                        _g157503_))
                ((##fx= _g157502_ 3)
                 (apply (lambda (_id150174_ _eid150175_ _rebind?150176_)
                          (gx#core-bind-extern!__1
                           _id150174_
                           _eid150175_
                           _rebind?150176_))
                        _g157503_))
                ((##fx= _g157502_ 4)
                 (apply (lambda (_id150182_
                                 _eid150183_
                                 _rebind?150184_
                                 _phi150185_)
                          (gx#core-bind-extern!__2
                           _id150182_
                           _eid150183_
                           _rebind?150184_
                           _phi150185_))
                        _g157503_))
                ((##fx= _g157502_ 5)
                 (apply (lambda (_id150189_
                                 _eid150190_
                                 _rebind?150191_
                                 _phi150192_
                                 _ctx150193_)
                          (gx#core-bind-extern!__%
                           _id150189_
                           _eid150190_
                           _rebind?150191_
                           _phi150192_
                           _ctx150193_))
                        _g157503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157503_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150110_ _e150111_ _rebind?150112_ _phi150113_ _ctx150114_)
        (gx#bind-identifier!__%
         _id150110_
         (let ((_key150119_ (gx#core-identifier-key _id150110_))
               (_e150120_
                (if (or (##structure-instance-of? _e150111_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150111_
                         'gx#expander-context::t))
                    _e150111_
                    (##structure
                     gx#user-expander::t
                     _e150111_
                     _ctx150114_
                     _phi150113_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150119_ '#t _phi150113_ _ctx150114_)
            _key150119_
            _phi150113_
            _e150120_))
         _rebind?150112_
         _phi150113_
         _ctx150114_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150125_ _e150126_)
        (let* ((_rebind?150128_ '#f)
               (_phi150130_ (gx#current-expander-phi))
               (_ctx150132_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150125_
           _e150126_
           _rebind?150128_
           _phi150130_
           _ctx150132_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150134_ _e150135_ _rebind?150136_)
        (let* ((_phi150138_ (gx#current-expander-phi))
               (_ctx150140_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150134_
           _e150135_
           _rebind?150136_
           _phi150138_
           _ctx150140_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150142_ _e150143_ _rebind?150144_ _phi150145_)
        (let ((_ctx150147_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150142_
           _e150143_
           _rebind?150144_
           _phi150145_
           _ctx150147_))))
    (define gx#core-bind-syntax!
      (lambda _g157505_
        (let ((_g157504_ (##length _g157505_)))
          (cond ((##fx= _g157504_ 2)
                 (apply (lambda (_id150125_ _e150126_)
                          (gx#core-bind-syntax!__0 _id150125_ _e150126_))
                        _g157505_))
                ((##fx= _g157504_ 3)
                 (apply (lambda (_id150134_ _e150135_ _rebind?150136_)
                          (gx#core-bind-syntax!__1
                           _id150134_
                           _e150135_
                           _rebind?150136_))
                        _g157505_))
                ((##fx= _g157504_ 4)
                 (apply (lambda (_id150142_
                                 _e150143_
                                 _rebind?150144_
                                 _phi150145_)
                          (gx#core-bind-syntax!__2
                           _id150142_
                           _e150143_
                           _rebind?150144_
                           _phi150145_))
                        _g157505_))
                ((##fx= _g157504_ 5)
                 (apply (lambda (_id150149_
                                 _e150150_
                                 _rebind?150151_
                                 _phi150152_
                                 _ctx150153_)
                          (gx#core-bind-syntax!__%
                           _id150149_
                           _e150150_
                           _rebind?150151_
                           _phi150152_
                           _ctx150153_))
                        _g157505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157505_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150093_ _e150094_ _rebind?150095_)
        (gx#core-bind-syntax!__%
         _id150093_
         _e150094_
         _rebind?150095_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150100_ _e150101_)
        (let ((_rebind?150103_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150100_
           _e150101_
           _rebind?150103_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157507_
        (let ((_g157506_ (##length _g157507_)))
          (cond ((##fx= _g157506_ 2)
                 (apply (lambda (_id150100_ _e150101_)
                          (gx#core-bind-root-syntax!__0 _id150100_ _e150101_))
                        _g157507_))
                ((##fx= _g157506_ 3)
                 (apply (lambda (_id150105_ _e150106_ _rebind?150107_)
                          (gx#core-bind-root-syntax!__%
                           _id150105_
                           _e150106_
                           _rebind?150107_))
                        _g157507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157507_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150051_
               _alias-id150052_
               _rebind?150053_
               _phi150054_
               _ctx150055_)
        (gx#bind-identifier!__%
         _id150051_
         (let ((_key150057_ (gx#core-identifier-key _id150051_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150057_ '#t _phi150054_ _ctx150055_)
            _key150057_
            _phi150054_
            _alias-id150052_))
         _rebind?150053_
         _phi150054_
         _ctx150055_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150062_ _alias-id150063_)
        (let* ((_rebind?150065_ '#f)
               (_phi150067_ (gx#current-expander-phi))
               (_ctx150069_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150062_
           _alias-id150063_
           _rebind?150065_
           _phi150067_
           _ctx150069_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150071_ _alias-id150072_ _rebind?150073_)
        (let* ((_phi150075_ (gx#current-expander-phi))
               (_ctx150077_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150071_
           _alias-id150072_
           _rebind?150073_
           _phi150075_
           _ctx150077_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150079_ _alias-id150080_ _rebind?150081_ _phi150082_)
        (let ((_ctx150084_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150079_
           _alias-id150080_
           _rebind?150081_
           _phi150082_
           _ctx150084_))))
    (define gx#core-bind-alias!
      (lambda _g157509_
        (let ((_g157508_ (##length _g157509_)))
          (cond ((##fx= _g157508_ 2)
                 (apply (lambda (_id150062_ _alias-id150063_)
                          (gx#core-bind-alias!__0 _id150062_ _alias-id150063_))
                        _g157509_))
                ((##fx= _g157508_ 3)
                 (apply (lambda (_id150071_ _alias-id150072_ _rebind?150073_)
                          (gx#core-bind-alias!__1
                           _id150071_
                           _alias-id150072_
                           _rebind?150073_))
                        _g157509_))
                ((##fx= _g157508_ 4)
                 (apply (lambda (_id150079_
                                 _alias-id150080_
                                 _rebind?150081_
                                 _phi150082_)
                          (gx#core-bind-alias!__2
                           _id150079_
                           _alias-id150080_
                           _rebind?150081_
                           _phi150082_))
                        _g157509_))
                ((##fx= _g157508_ 5)
                 (apply (lambda (_id150086_
                                 _alias-id150087_
                                 _rebind?150088_
                                 _phi150089_
                                 _ctx150090_)
                          (gx#core-bind-alias!__%
                           _id150086_
                           _alias-id150087_
                           _rebind?150088_
                           _phi150089_
                           _ctx150090_))
                        _g157509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157509_))))))
    (define gx#make-binding-id__%
      (lambda (_key150008_ _syntax?150009_ _phi150010_ _ctx150011_)
        (if (uninterned-symbol? _key150008_)
            (gensym 'L)
            (if (pair? _key150008_)
                (gensym (car _key150008_))
                (if (##structure-instance-of? _ctx150011_ 'gx#top-context::t)
                    (let ((_ns150013_
                           (gx#core-context-namespace__% _ctx150011_)))
                      (if (and (fxzero? _phi150010_) (not _syntax?150009_))
                          (if _ns150013_
                              (make-symbol__1 _ns150013_ '"#" _key150008_)
                              _key150008_)
                          (if _syntax?150009_
                              (make-symbol__1
                               (let ((_$e150015_ _ns150013_))
                                 (if _$e150015_ _$e150015_ '""))
                               '"[:"
                               (number->string _phi150010_)
                               '":]#"
                               _key150008_)
                              (make-symbol__1
                               (let ((_$e150018_ _ns150013_))
                                 (if _$e150018_ _$e150018_ '""))
                               '"["
                               (number->string _phi150010_)
                               '"]#"
                               _key150008_))))
                    (gensym _key150008_))))))
    (define gx#make-binding-id__0
      (lambda (_key150024_)
        (let* ((_syntax?150026_ '#f)
               (_phi150028_ (gx#current-expander-phi))
               (_ctx150030_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150024_
           _syntax?150026_
           _phi150028_
           _ctx150030_))))
    (define gx#make-binding-id__1
      (lambda (_key150032_ _syntax?150033_)
        (let* ((_phi150035_ (gx#current-expander-phi))
               (_ctx150037_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150032_
           _syntax?150033_
           _phi150035_
           _ctx150037_))))
    (define gx#make-binding-id__2
      (lambda (_key150039_ _syntax?150040_ _phi150041_)
        (let ((_ctx150043_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150039_
           _syntax?150040_
           _phi150041_
           _ctx150043_))))
    (define gx#make-binding-id
      (lambda _g157511_
        (let ((_g157510_ (##length _g157511_)))
          (cond ((##fx= _g157510_ 1)
                 (apply (lambda (_key150024_)
                          (gx#make-binding-id__0 _key150024_))
                        _g157511_))
                ((##fx= _g157510_ 2)
                 (apply (lambda (_key150032_ _syntax?150033_)
                          (gx#make-binding-id__1 _key150032_ _syntax?150033_))
                        _g157511_))
                ((##fx= _g157510_ 3)
                 (apply (lambda (_key150039_ _syntax?150040_ _phi150041_)
                          (gx#make-binding-id__2
                           _key150039_
                           _syntax?150040_
                           _phi150041_))
                        _g157511_))
                ((##fx= _g157510_ 4)
                 (apply (lambda (_key150045_
                                 _syntax?150046_
                                 _phi150047_
                                 _ctx150048_)
                          (gx#make-binding-id__%
                           _key150045_
                           _syntax?150046_
                           _phi150047_
                           _ctx150048_))
                        _g157511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157511_))))))))
