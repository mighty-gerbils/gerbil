(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708210941)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152969_)
        (letrec ((_expand-special152971_
                  (lambda (_hd152973_ _K152974_ _rest152975_ _r152976_)
                    (_K152974_
                     _rest152975_
                     (cons (gx#core-expand-top _hd152973_) _r152976_)))))
          (gx#core-expand-block__0 _stx152969_ _expand-special152971_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152722_)
        (letrec ((_expand-special152724_
                  (lambda (_hd152844_ _K152845_ _rest152846_ _r152847_)
                    (let* ((_K152851_
                            (lambda (_e152849_)
                              (_K152845_
                               _rest152846_
                               (cons _e152849_ _r152847_))))
                           (_e152852152881_ _hd152844_)
                           (_E152876152885_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152852152881_)))
                           (_E152872152897_
                            (lambda ()
                              (if (gx#stx-pair? _e152852152881_)
                                  (let ((_e152877152889_
                                         (gx#syntax-e _e152852152881_)))
                                    (let ((_hd152878152892_
                                           (##car _e152877152889_))
                                          (_tl152879152894_
                                           (##cdr _e152877152889_)))
                                      (if (and (gx#identifier?
                                                _hd152878152892_)
                                               (gx#core-identifier=?
                                                _hd152878152892_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152851_
                                               (gx#core-expand-define-runtime%
                                                _hd152844_))
                                              (_E152876152885_))
                                          (_E152876152885_))))
                                  (_E152876152885_))))
                           (_E152868152909_
                            (lambda ()
                              (if (gx#stx-pair? _e152852152881_)
                                  (let ((_e152873152901_
                                         (gx#syntax-e _e152852152881_)))
                                    (let ((_hd152874152904_
                                           (##car _e152873152901_))
                                          (_tl152875152906_
                                           (##cdr _e152873152901_)))
                                      (if (and (gx#identifier?
                                                _hd152874152904_)
                                               (gx#core-identifier=?
                                                _hd152874152904_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152851_
                                               (gx#core-expand-define-alias%
                                                _hd152844_))
                                              (_E152872152897_))
                                          (_E152872152897_))))
                                  (_E152872152897_))))
                           (_E152858152921_
                            (lambda ()
                              (if (gx#stx-pair? _e152852152881_)
                                  (let ((_e152869152913_
                                         (gx#syntax-e _e152852152881_)))
                                    (let ((_hd152870152916_
                                           (##car _e152869152913_))
                                          (_tl152871152918_
                                           (##cdr _e152869152913_)))
                                      (if (and (gx#identifier?
                                                _hd152870152916_)
                                               (gx#core-identifier=?
                                                _hd152870152916_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152851_
                                               (gx#core-expand-define-syntax%
                                                _hd152844_))
                                              (_E152868152909_))
                                          (_E152868152909_))))
                                  (_E152868152909_))))
                           (_E152854152953_
                            (lambda ()
                              (if (gx#stx-pair? _e152852152881_)
                                  (let ((_e152859152925_
                                         (gx#syntax-e _e152852152881_)))
                                    (let ((_hd152860152928_
                                           (##car _e152859152925_))
                                          (_tl152861152930_
                                           (##cdr _e152859152925_)))
                                      (if (and (gx#identifier?
                                                _hd152860152928_)
                                               (gx#core-identifier=?
                                                _hd152860152928_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152861152930_)
                                              (let ((_e152862152933_
                                                     (gx#syntax-e
                                                      _tl152861152930_)))
                                                (let ((_hd152863152936_
                                                       (##car _e152862152933_))
                                                      (_tl152864152938_
                                                       (##cdr _e152862152933_)))
                                                  (let ((_hd-bind152941_
                                                         _hd152863152936_))
                                                    (if (gx#stx-pair?
                                                         _tl152864152938_)
                                                        (let ((_e152865152943_
                                                               (gx#syntax-e
                                                                _tl152864152938_)))
                                                          (let ((_hd152866152946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152865152943_))
                        (_tl152867152948_ (##cdr _e152865152943_)))
                    (let ((_expr152951_ _hd152866152946_))
                      (if (gx#stx-null? _tl152867152948_)
                          (if (gx#core-bind-values? _hd-bind152941_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152941_)
                                (_K152851_ _hd152844_))
                              (_E152858152921_))
                          (_E152858152921_)))))
                (_E152858152921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152858152921_))
                                          (_E152858152921_))))
                                  (_E152858152921_))))
                           (_E152853152965_
                            (lambda ()
                              (if (gx#stx-pair? _e152852152881_)
                                  (let ((_e152855152957_
                                         (gx#syntax-e _e152852152881_)))
                                    (let ((_hd152856152960_
                                           (##car _e152855152957_))
                                          (_tl152857152962_
                                           (##cdr _e152855152957_)))
                                      (if (and (gx#identifier?
                                                _hd152856152960_)
                                               (gx#core-identifier=?
                                                _hd152856152960_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152851_
                                               (gx#core-expand-begin-syntax%
                                                _hd152844_))
                                              (_E152854152953_))
                                          (_E152854152953_))))
                                  (_E152854152953_)))))
                      (_E152853152965_))))
                 (_eval-body152725_
                  (lambda (_rbody152733_)
                    (let _lp152735_ ((_rest152737_ _rbody152733_)
                                     (_body152738_ '())
                                     (_ebody152739_ '()))
                      (let* ((_rest152740152748_ _rest152737_)
                             (_else152742152756_
                              (lambda ()
                                (values _body152738_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152739_)
                                          (gx#stx-source _stx152722_))))))
                             (_K152744152832_
                              (lambda (_rest152759_ _hd152760_)
                                (let* ((_e152761152778_ _hd152760_)
                                       (_E152773152782_
                                        (lambda ()
                                          (_lp152735_
                                           _rest152759_
                                           (cons _hd152760_ _body152738_)
                                           (cons _hd152760_ _ebody152739_))))
                                       (_E152763152794_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152761152778_)
                                              (let ((_e152774152786_
                                                     (gx#syntax-e
                                                      _e152761152778_)))
                                                (let ((_hd152775152789_
                                                       (##car _e152774152786_))
                                                      (_tl152776152791_
                                                       (##cdr _e152774152786_)))
                                                  (if (and (gx#identifier?
                                                            _hd152775152789_)
                                                           (gx#core-identifier=?
                                                            _hd152775152789_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152735_
                                                           _rest152759_
                                                           (cons _hd152760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152738_)
                   _ebody152739_)
                  (_E152773152782_))
              (_E152773152782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152773152782_))))
                                       (_E152762152828_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152761152778_)
                                              (let ((_e152764152798_
                                                     (gx#syntax-e
                                                      _e152761152778_)))
                                                (let ((_hd152765152801_
                                                       (##car _e152764152798_))
                                                      (_tl152766152803_
                                                       (##cdr _e152764152798_)))
                                                  (if (and (gx#identifier?
                                                            _hd152765152801_)
                                                           (gx#core-identifier=?
                                                            _hd152765152801_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152766152803_)
                                                          (let ((_e152767152806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152766152803_)))
                    (let ((_hd152768152809_ (##car _e152767152806_))
                          (_tl152769152811_ (##cdr _e152767152806_)))
                      (let ((_hd-bind152814_ _hd152768152809_))
                        (if (gx#stx-pair? _tl152769152811_)
                            (let ((_e152770152816_
                                   (gx#syntax-e _tl152769152811_)))
                              (let ((_hd152771152819_ (##car _e152770152816_))
                                    (_tl152772152821_ (##cdr _e152770152816_)))
                                (let ((_expr152824_ _hd152771152819_))
                                  (if (gx#stx-null? _tl152772152821_)
                                      (if '#t
                                          (let ((_ehd152826_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152814_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152824_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152760_))))
                                            (_lp152735_
                                             _rest152759_
                                             (cons _ehd152826_ _body152738_)
                                             (cons _ehd152826_ _ebody152739_)))
                                          (_E152763152794_))
                                      (_E152763152794_)))))
                            (_E152763152794_)))))
                  (_E152763152794_))
              (_E152763152794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152763152794_)))))
                                  (_E152762152828_)))))
                        (if (##pair? _rest152740152748_)
                            (let ((_hd152745152835_ (##car _rest152740152748_))
                                  (_tl152746152837_
                                   (##cdr _rest152740152748_)))
                              (let* ((_hd152840_ _hd152745152835_)
                                     (_rest152842_ _tl152746152837_))
                                (_K152744152832_ _rest152842_ _hd152840_)))
                            (_else152742152756_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152728_
                     (gx#core-expand-block__1
                      _stx152722_
                      _expand-special152724_
                      '#f))
                    (_g157059_ (_eval-body152725_ _rbody152728_)))
               (begin
                 (let ((_g157060_
                        (if (##values? _g157059_)
                            (##vector-length _g157059_)
                            1)))
                   (if (not (##fx= _g157060_ 2))
                       (error "Context expects 2 values" _g157060_)))
                 (let ((_expanded-body152730_ (##vector-ref _g157059_ 0))
                       (_value152731_ (##vector-ref _g157059_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152730_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152731_ '())))
                    (gx#stx-source _stx152722_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152692_)
        (let* ((_e152693152700_ _stx152692_)
               (_E152695152704_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152693152700_)))
               (_E152694152718_
                (lambda ()
                  (if (gx#stx-pair? _e152693152700_)
                      (let ((_e152696152708_ (gx#syntax-e _e152693152700_)))
                        (let ((_hd152697152711_ (##car _e152696152708_))
                              (_tl152698152713_ (##cdr _e152696152708_)))
                          (let ((_body152716_ _tl152698152713_))
                            (if (gx#stx-list? _body152716_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152716_)
                                 (gx#stx-source _stx152692_))
                                (_E152695152704_)))))
                      (_E152695152704_)))))
          (_E152694152718_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152690_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152690_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152636_)
        (let* ((_e152637152650_ _stx152636_)
               (_E152639152654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152637152650_)))
               (_E152638152686_
                (lambda ()
                  (if (gx#stx-pair? _e152637152650_)
                      (let ((_e152640152658_ (gx#syntax-e _e152637152650_)))
                        (let ((_hd152641152661_ (##car _e152640152658_))
                              (_tl152642152663_ (##cdr _e152640152658_)))
                          (if (gx#stx-pair? _tl152642152663_)
                              (let ((_e152643152666_
                                     (gx#syntax-e _tl152642152663_)))
                                (let ((_hd152644152669_
                                       (##car _e152643152666_))
                                      (_tl152645152671_
                                       (##cdr _e152643152666_)))
                                  (let ((_ann152674_ _hd152644152669_))
                                    (if (gx#stx-pair? _tl152645152671_)
                                        (let ((_e152646152676_
                                               (gx#syntax-e _tl152645152671_)))
                                          (let ((_hd152647152679_
                                                 (##car _e152646152676_))
                                                (_tl152648152681_
                                                 (##cdr _e152646152676_)))
                                            (let ((_expr152684_
                                                   _hd152647152679_))
                                              (if (gx#stx-null?
                                                   _tl152648152681_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152684_)
                                 '())))
               (gx#stx-source _stx152636_))
              (_E152639152654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152639152654_)))))
                                        (_E152639152654_)))))
                              (_E152639152654_))))
                      (_E152639152654_)))))
          (_E152638152686_))))
    (define gx#core-expand-local-block
      (lambda (_stx152360_ _body152361_)
        (letrec ((_expand-special152363_
                  (lambda (_hd152631_ _K152632_ _rest152633_ _r152634_)
                    (_K152632_
                     '()
                     (cons (_expand-internal152364_ _hd152631_ _rest152633_)
                           _r152634_))))
                 (_expand-internal152364_
                  (lambda (_hd152627_ _rest152628_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152366_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152627_ _rest152628_))
                          (gx#stx-source _stx152360_))
                         _expand-internal-special152365_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157053
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157053)
                       __obj157053))))
                 (_expand-internal-special152365_
                  (lambda (_hd152522_ _K152523_ _rest152524_ _r152525_)
                    (let* ((_e152526152551_ _hd152522_)
                           (_E152546152555_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152526152551_)))
                           (_E152542152567_
                            (lambda ()
                              (if (gx#stx-pair? _e152526152551_)
                                  (let ((_e152547152559_
                                         (gx#syntax-e _e152526152551_)))
                                    (let ((_hd152548152562_
                                           (##car _e152547152559_))
                                          (_tl152549152564_
                                           (##cdr _e152547152559_)))
                                      (if (and (gx#identifier?
                                                _hd152548152562_)
                                               (gx#core-identifier=?
                                                _hd152548152562_
                                                '%#declare))
                                          (if '#t
                                              (_K152523_
                                               _rest152524_
                                               (cons (gx#core-expand-declare%
                                                      _hd152522_)
                                                     _r152525_))
                                              (_E152546152555_))
                                          (_E152546152555_))))
                                  (_E152546152555_))))
                           (_E152538152579_
                            (lambda ()
                              (if (gx#stx-pair? _e152526152551_)
                                  (let ((_e152543152571_
                                         (gx#syntax-e _e152526152551_)))
                                    (let ((_hd152544152574_
                                           (##car _e152543152571_))
                                          (_tl152545152576_
                                           (##cdr _e152543152571_)))
                                      (if (and (gx#identifier?
                                                _hd152544152574_)
                                               (gx#core-identifier=?
                                                _hd152544152574_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152522_)
                                                (_K152523_
                                                 _rest152524_
                                                 _r152525_))
                                              (_E152542152567_))
                                          (_E152542152567_))))
                                  (_E152542152567_))))
                           (_E152528152591_
                            (lambda ()
                              (if (gx#stx-pair? _e152526152551_)
                                  (let ((_e152539152583_
                                         (gx#syntax-e _e152526152551_)))
                                    (let ((_hd152540152586_
                                           (##car _e152539152583_))
                                          (_tl152541152588_
                                           (##cdr _e152539152583_)))
                                      (if (and (gx#identifier?
                                                _hd152540152586_)
                                               (gx#core-identifier=?
                                                _hd152540152586_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152522_)
                                                (_K152523_
                                                 _rest152524_
                                                 _r152525_))
                                              (_E152538152579_))
                                          (_E152538152579_))))
                                  (_E152538152579_))))
                           (_E152527152623_
                            (lambda ()
                              (if (gx#stx-pair? _e152526152551_)
                                  (let ((_e152529152595_
                                         (gx#syntax-e _e152526152551_)))
                                    (let ((_hd152530152598_
                                           (##car _e152529152595_))
                                          (_tl152531152600_
                                           (##cdr _e152529152595_)))
                                      (if (and (gx#identifier?
                                                _hd152530152598_)
                                               (gx#core-identifier=?
                                                _hd152530152598_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152531152600_)
                                              (let ((_e152532152603_
                                                     (gx#syntax-e
                                                      _tl152531152600_)))
                                                (let ((_hd152533152606_
                                                       (##car _e152532152603_))
                                                      (_tl152534152608_
                                                       (##cdr _e152532152603_)))
                                                  (let ((_hd-bind152611_
                                                         _hd152533152606_))
                                                    (if (gx#stx-pair?
                                                         _tl152534152608_)
                                                        (let ((_e152535152613_
                                                               (gx#syntax-e
                                                                _tl152534152608_)))
                                                          (let ((_hd152536152616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152535152613_))
                        (_tl152537152618_ (##cdr _e152535152613_)))
                    (let ((_expr152621_ _hd152536152616_))
                      (if (gx#stx-null? _tl152537152618_)
                          (if (gx#core-bind-values? _hd-bind152611_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152611_)
                                (_K152523_
                                 _rest152524_
                                 (cons _hd152522_ _r152525_)))
                              (_E152528152591_))
                          (_E152528152591_)))))
                (_E152528152591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152528152591_))
                                          (_E152528152591_))))
                                  (_E152528152591_)))))
                      (_E152527152623_))))
                 (_wrap-internal152366_
                  (lambda (_rbody152368_)
                    (let _lp152370_ ((_rest152372_ _rbody152368_)
                                     (_decls152373_ '())
                                     (_bind152374_ '())
                                     (_body152375_ '()))
                      (let* ((_e152376152383_ _rest152372_)
                             (_E152378152432_
                              (lambda ()
                                (let* ((_body152427_
                                        (let* ((_body152386152396_
                                                _body152375_)
                                               (_else152389152404_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152375_)
                                                   (gx#stx-source
                                                    _stx152360_)))))
                                          (let ((_K152394152424_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152360_)))
                                                (_K152391152410_
                                                 (lambda (_expr152408_)
                                                   _expr152408_)))
                                            (let ((_try-match152388152420_
                                                   (lambda ()
                                                     (if (##pair? _body152386152396_)
                                                         (let ((_tl152393152415_
                                                                (##cdr _body152386152396_))
                                                               (_hd152392152413_
                                                                (##car _body152386152396_)))
                                                           (if (##null? _tl152393152415_)
                                                               (let ((_expr152418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152392152413_))
                         (_K152391152410_ _expr152418_))
                       (_else152389152404_)))
                 (_else152389152404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152386152396_)
                                                  (_K152394152424_)
                                                  (_try-match152388152420_))))))
                                       (_body152429_
                                        (if (null? _bind152374_)
                                            _body152427_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152374_
                                                         (cons _body152427_
                                                               '())))
                                             (gx#stx-source _stx152360_)))))
                                  (if (null? _decls152373_)
                                      _body152429_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152373_
                                                   (cons _body152429_ '())))
                                       (gx#stx-source _stx152360_))))))
                             (_E152377152518_
                              (lambda ()
                                (if (gx#stx-pair? _e152376152383_)
                                    (let ((_e152379152436_
                                           (gx#syntax-e _e152376152383_)))
                                      (let ((_hd152380152439_
                                             (##car _e152379152436_))
                                            (_tl152381152441_
                                             (##cdr _e152379152436_)))
                                        (let* ((_hd152444_ _hd152380152439_)
                                               (_rest152446_ _tl152381152441_))
                                          (if '#t
                                              (let* ((_e152447152464_
                                                      _hd152444_)
                                                     (_E152459152468_
                                                      (lambda ()
                                                        (if (null? _bind152374_)
                                                            (_lp152370_
                                                             _rest152446_
                                                             _decls152373_
                                                             _bind152374_
                                                             (cons _hd152444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152375_))
                    (_lp152370_
                     _rest152446_
                     _decls152373_
                     (cons (cons '#f (cons _hd152444_ '())) _bind152374_)
                     _body152375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152449152482_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152447152464_)
                                                            (let ((_e152460152472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152447152464_)))
                      (let ((_hd152461152475_ (##car _e152460152472_))
                            (_tl152462152477_ (##cdr _e152460152472_)))
                        (if (and (gx#identifier? _hd152461152475_)
                                 (gx#core-identifier=?
                                  _hd152461152475_
                                  '%#declare))
                            (let ((_xdecls152480_ _tl152462152477_))
                              (if '#t
                                  (_lp152370_
                                   _rest152446_
                                   (gx#stx-foldr
                                    cons
                                    _decls152373_
                                    _xdecls152480_)
                                   _bind152374_
                                   _body152375_)
                                  (_E152459152468_)))
                            (_E152459152468_))))
                    (_E152459152468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152448152514_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152447152464_)
                                                            (let ((_e152450152486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152447152464_)))
                      (let ((_hd152451152489_ (##car _e152450152486_))
                            (_tl152452152491_ (##cdr _e152450152486_)))
                        (if (and (gx#identifier? _hd152451152489_)
                                 (gx#core-identifier=?
                                  _hd152451152489_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152452152491_)
                                (let ((_e152453152494_
                                       (gx#syntax-e _tl152452152491_)))
                                  (let ((_hd152454152497_
                                         (##car _e152453152494_))
                                        (_tl152455152499_
                                         (##cdr _e152453152494_)))
                                    (let ((_hd-bind152502_ _hd152454152497_))
                                      (if (gx#stx-pair? _tl152455152499_)
                                          (let ((_e152456152504_
                                                 (gx#syntax-e
                                                  _tl152455152499_)))
                                            (let ((_hd152457152507_
                                                   (##car _e152456152504_))
                                                  (_tl152458152509_
                                                   (##cdr _e152456152504_)))
                                              (let ((_expr152512_
                                                     _hd152457152507_))
                                                (if (gx#stx-null?
                                                     _tl152458152509_)
                                                    (if '#t
                                                        (_lp152370_
                                                         _rest152446_
                                                         _decls152373_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152502_)
                             (cons (gx#core-expand-expression _expr152512_)
                                   '()))
                       _bind152374_)
                 _body152375_)
                (_E152449152482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152449152482_)))))
                                          (_E152449152482_)))))
                                (_E152449152482_))
                            (_E152449152482_))))
                    (_E152449152482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152448152514_))
                                              (_E152378152432_)))))
                                    (_E152378152432_)))))
                        (_E152377152518_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152361_)
            (gx#stx-source _stx152360_))
           _expand-special152363_))))
    (define gx#core-expand-declare%
      (lambda (_stx152298_)
        (let* ((_e152299152306_ _stx152298_)
               (_E152301152310_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152299152306_)))
               (_E152300152356_
                (lambda ()
                  (if (gx#stx-pair? _e152299152306_)
                      (let ((_e152302152314_ (gx#syntax-e _e152299152306_)))
                        (let ((_hd152303152317_ (##car _e152302152314_))
                              (_tl152304152319_ (##cdr _e152302152314_)))
                          (let ((_body152322_ _tl152304152319_))
                            (if (gx#stx-list? _body152322_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152324_)
                                     (let* ((_e152325152332_ _decl152324_)
                                            (_E152327152336_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152325152332_)))
                                            (_E152326152352_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152325152332_)
                                                   (let ((_e152328152340_
                                                          (gx#syntax-e
                                                           _e152325152332_)))
                                                     (let ((_hd152329152343_
                                                            (##car _e152328152340_))
                                                           (_tl152330152345_
                                                            (##cdr _e152328152340_)))
                                                       (let* ((_head152348_
                                                               _hd152329152343_)
                                                              (_args152350_
                                                               _tl152330152345_))
                                                         (if (gx#stx-list?
                                                              _args152350_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152324_)
                                                             (_E152327152336_)))))
                                                   (_E152327152336_)))))
                                       (_E152326152352_)))
                                   _body152322_))
                                 (gx#stx-source _stx152298_))
                                (_E152301152310_)))))
                      (_E152301152310_)))))
          (_E152300152356_))))
    (define gx#core-expand-extern%
      (lambda (_stx152202_)
        (let* ((_e152203152210_ _stx152202_)
               (_E152205152214_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152203152210_)))
               (_E152204152294_
                (lambda ()
                  (if (gx#stx-pair? _e152203152210_)
                      (let ((_e152206152218_ (gx#syntax-e _e152203152210_)))
                        (let ((_hd152207152221_ (##car _e152206152218_))
                              (_tl152208152223_ (##cdr _e152206152218_)))
                          (let ((_body152226_ _tl152208152223_))
                            (if '#t
                                (let _lp152228_ ((_rest152230_ _body152226_)
                                                 (_r152231_ '()))
                                  (let* ((_e152232152246_ _rest152230_)
                                         (_E152244152250_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152202_)))
                                         (_E152234152254_
                                          (lambda ()
                                            (if (gx#stx-null? _e152232152246_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152231_))
                                                     (gx#stx-source
                                                      _stx152202_))
                                                    (_E152244152250_))
                                                (_E152244152250_))))
                                         (_E152233152290_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152232152246_)
                                                (let ((_e152235152258_
                                                       (gx#syntax-e
                                                        _e152232152246_)))
                                                  (let ((_hd152236152261_
                                                         (##car _e152235152258_))
                                                        (_tl152237152263_
                                                         (##cdr _e152235152258_)))
                                                    (if (gx#stx-pair?
                                                         _hd152236152261_)
                                                        (let ((_e152238152266_
                                                               (gx#syntax-e
                                                                _hd152236152261_)))
                                                          (let ((_hd152239152269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152238152266_))
                        (_tl152240152271_ (##cdr _e152238152266_)))
                    (let ((_id152274_ _hd152239152269_))
                      (if (gx#stx-pair? _tl152240152271_)
                          (let ((_e152241152276_
                                 (gx#syntax-e _tl152240152271_)))
                            (let ((_hd152242152279_ (##car _e152241152276_))
                                  (_tl152243152281_ (##cdr _e152241152276_)))
                              (let ((_eid152284_ _hd152242152279_))
                                (if (gx#stx-null? _tl152243152281_)
                                    (let ((_rest152286_ _tl152237152263_))
                                      (if (and (gx#identifier? _id152274_)
                                               (gx#identifier? _eid152284_))
                                          (let ((_eid152288_
                                                 (gx#stx-e _eid152284_)))
                                            (gx#core-bind-extern!__0
                                             _id152274_
                                             _eid152288_)
                                            (_lp152228_
                                             _rest152286_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152274_)
                                                         (cons _eid152288_
                                                               '()))
                                                   _r152231_)))
                                          (_E152234152254_)))
                                    (_E152234152254_)))))
                          (_E152234152254_)))))
                (_E152234152254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152234152254_)))))
                                    (_E152233152290_)))
                                (_E152205152214_)))))
                      (_E152205152214_)))))
          (_E152204152294_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152148_)
        (let* ((_e152149152162_ _stx152148_)
               (_E152151152166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152149152162_)))
               (_E152150152198_
                (lambda ()
                  (if (gx#stx-pair? _e152149152162_)
                      (let ((_e152152152170_ (gx#syntax-e _e152149152162_)))
                        (let ((_hd152153152173_ (##car _e152152152170_))
                              (_tl152154152175_ (##cdr _e152152152170_)))
                          (if (gx#stx-pair? _tl152154152175_)
                              (let ((_e152155152178_
                                     (gx#syntax-e _tl152154152175_)))
                                (let ((_hd152156152181_
                                       (##car _e152155152178_))
                                      (_tl152157152183_
                                       (##cdr _e152155152178_)))
                                  (let ((_hd152186_ _hd152156152181_))
                                    (if (gx#stx-pair? _tl152157152183_)
                                        (let ((_e152158152188_
                                               (gx#syntax-e _tl152157152183_)))
                                          (let ((_hd152159152191_
                                                 (##car _e152158152188_))
                                                (_tl152160152193_
                                                 (##cdr _e152158152188_)))
                                            (let ((_expr152196_
                                                   _hd152159152191_))
                                              (if (gx#stx-null?
                                                   _tl152160152193_)
                                                  (if (gx#core-bind-values?
                                                       _hd152186_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152186_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152186_)
                             (cons (gx#core-expand-expression _expr152196_)
                                   '())))
                 (gx#stx-source _stx152148_)))
              (_E152151152166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152151152166_)))))
                                        (_E152151152166_)))))
                              (_E152151152166_))))
                      (_E152151152166_)))))
          (_E152150152198_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152092_)
        (let* ((_e152093152106_ _stx152092_)
               (_E152095152110_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152093152106_)))
               (_E152094152144_
                (lambda ()
                  (if (gx#stx-pair? _e152093152106_)
                      (let ((_e152096152114_ (gx#syntax-e _e152093152106_)))
                        (let ((_hd152097152117_ (##car _e152096152114_))
                              (_tl152098152119_ (##cdr _e152096152114_)))
                          (if (gx#stx-pair? _tl152098152119_)
                              (let ((_e152099152122_
                                     (gx#syntax-e _tl152098152119_)))
                                (let ((_hd152100152125_
                                       (##car _e152099152122_))
                                      (_tl152101152127_
                                       (##cdr _e152099152122_)))
                                  (let ((_id152130_ _hd152100152125_))
                                    (if (gx#stx-pair? _tl152101152127_)
                                        (let ((_e152102152132_
                                               (gx#syntax-e _tl152101152127_)))
                                          (let ((_hd152103152135_
                                                 (##car _e152102152132_))
                                                (_tl152104152137_
                                                 (##cdr _e152102152132_)))
                                            (let ((_binding-id152140_
                                                   _hd152103152135_))
                                              (if (gx#stx-null?
                                                   _tl152104152137_)
                                                  (if (and (gx#identifier?
                                                            _id152130_)
                                                           (gx#identifier?
                                                            _binding-id152140_))
                                                      (let ((_eid152142_
                                                             (gx#stx-e
                                                              _binding-id152140_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152130_
                                                         _eid152142_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152130_)
                             (cons _eid152142_ '())))))
              (_E152095152110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152095152110_)))))
                                        (_E152095152110_)))))
                              (_E152095152110_))))
                      (_E152095152110_)))))
          (_E152094152144_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152035_)
        (let* ((_e152036152049_ _stx152035_)
               (_E152038152053_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152036152049_)))
               (_E152037152088_
                (lambda ()
                  (if (gx#stx-pair? _e152036152049_)
                      (let ((_e152039152057_ (gx#syntax-e _e152036152049_)))
                        (let ((_hd152040152060_ (##car _e152039152057_))
                              (_tl152041152062_ (##cdr _e152039152057_)))
                          (if (gx#stx-pair? _tl152041152062_)
                              (let ((_e152042152065_
                                     (gx#syntax-e _tl152041152062_)))
                                (let ((_hd152043152068_
                                       (##car _e152042152065_))
                                      (_tl152044152070_
                                       (##cdr _e152042152065_)))
                                  (let ((_id152073_ _hd152043152068_))
                                    (if (gx#stx-pair? _tl152044152070_)
                                        (let ((_e152045152075_
                                               (gx#syntax-e _tl152044152070_)))
                                          (let ((_hd152046152078_
                                                 (##car _e152045152075_))
                                                (_tl152047152080_
                                                 (##cdr _e152045152075_)))
                                            (let ((_expr152083_
                                                   _hd152046152078_))
                                              (if (gx#stx-null?
                                                   _tl152047152080_)
                                                  (if (gx#identifier?
                                                       _id152073_)
                                                      (let ((_g157061_
                                                             (gx#core-expand-expression+1
                                                              _expr152083_)))
                                                        (begin
                                                          (let ((_g157062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157061_)
                             (##vector-length _g157061_)
                             1)))
                    (if (not (##fx= _g157062_ 2))
                        (error "Context expects 2 values" _g157062_)))
                  (let ((_e-stx152085_ (##vector-ref _g157061_ 0))
                        (_e152086_ (##vector-ref _g157061_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152073_ _e152086_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152073_)
                                   (cons _e-stx152085_ '())))
                       (gx#stx-source _stx152035_))))))
              (_E152038152053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152038152053_)))))
                                        (_E152038152053_)))))
                              (_E152038152053_))))
                      (_E152038152053_)))))
          (_E152037152088_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151979_)
        (let* ((_e151980151993_ _stx151979_)
               (_E151982151997_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151980151993_)))
               (_E151981152031_
                (lambda ()
                  (if (gx#stx-pair? _e151980151993_)
                      (let ((_e151983152001_ (gx#syntax-e _e151980151993_)))
                        (let ((_hd151984152004_ (##car _e151983152001_))
                              (_tl151985152006_ (##cdr _e151983152001_)))
                          (if (gx#stx-pair? _tl151985152006_)
                              (let ((_e151986152009_
                                     (gx#syntax-e _tl151985152006_)))
                                (let ((_hd151987152012_
                                       (##car _e151986152009_))
                                      (_tl151988152014_
                                       (##cdr _e151986152009_)))
                                  (let ((_id152017_ _hd151987152012_))
                                    (if (gx#stx-pair? _tl151988152014_)
                                        (let ((_e151989152019_
                                               (gx#syntax-e _tl151988152014_)))
                                          (let ((_hd151990152022_
                                                 (##car _e151989152019_))
                                                (_tl151991152024_
                                                 (##cdr _e151989152019_)))
                                            (let ((_alias-id152027_
                                                   _hd151990152022_))
                                              (if (gx#stx-null?
                                                   _tl151991152024_)
                                                  (if (and (gx#identifier?
                                                            _id152017_)
                                                           (gx#identifier?
                                                            _alias-id152027_))
                                                      (let ((_alias-id152029_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152027_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152017_
                                                         _alias-id152029_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152017_)
                             (cons _alias-id152029_ '())))))
              (_E151982151997_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151982151997_)))))
                                        (_E151982151997_)))))
                              (_E151982151997_))))
                      (_E151982151997_)))))
          (_E151981152031_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151922_ _wrap?151923_)
        (let* ((_e151924151934_ _stx151922_)
               (_E151926151938_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151924151934_)))
               (_E151925151965_
                (lambda ()
                  (if (gx#stx-pair? _e151924151934_)
                      (let ((_e151927151942_ (gx#syntax-e _e151924151934_)))
                        (let ((_hd151928151945_ (##car _e151927151942_))
                              (_tl151929151947_ (##cdr _e151927151942_)))
                          (if (gx#stx-pair? _tl151929151947_)
                              (let ((_e151930151950_
                                     (gx#syntax-e _tl151929151947_)))
                                (let ((_hd151931151953_
                                       (##car _e151930151950_))
                                      (_tl151932151955_
                                       (##cdr _e151930151950_)))
                                  (let* ((_hd151958_ _hd151931151953_)
                                         (_body151960_ _tl151932151955_))
                                    (if (gx#core-bind-values? _hd151958_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151958_)
                                           (let ((_body151963_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151958_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151922_
                                                               _body151960_)
                                                              '()))))
                                             (if _wrap?151923_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151963_)
                                                  (gx#stx-source _stx151922_))
                                                 _body151963_)))
                                         gx#current-expander-context
                                         (let ((__obj157054
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157054)
                                           __obj157054))
                                        (_E151926151938_)))))
                              (_E151926151938_))))
                      (_E151926151938_)))))
          (_E151925151965_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151972_)
        (let ((_wrap?151974_ '#t))
          (gx#core-expand-lambda%__% _stx151972_ _wrap?151974_))))
    (define gx#core-expand-lambda%
      (lambda _g157064_
        (let ((_g157063_ (##length _g157064_)))
          (cond ((##fx= _g157063_ 1)
                 (apply (lambda (_stx151972_)
                          (gx#core-expand-lambda%__0 _stx151972_))
                        _g157064_))
                ((##fx= _g157063_ 2)
                 (apply (lambda (_stx151976_ _wrap?151977_)
                          (gx#core-expand-lambda%__%
                           _stx151976_
                           _wrap?151977_))
                        _g157064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157064_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151886_)
        (let* ((_e151887151894_ _stx151886_)
               (_E151889151898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151887151894_)))
               (_E151888151917_
                (lambda ()
                  (if (gx#stx-pair? _e151887151894_)
                      (let ((_e151890151902_ (gx#syntax-e _e151887151894_)))
                        (let ((_hd151891151905_ (##car _e151890151902_))
                              (_tl151892151907_ (##cdr _e151890151902_)))
                          (let ((_clauses151910_ _tl151892151907_))
                            (if (gx#stx-list? _clauses151910_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151912_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151912_)
                                       (let ((_$e151914_
                                              (gx#stx-source _clause151912_)))
                                         (if _$e151914_
                                             _$e151914_
                                             (gx#stx-source _stx151886_))))
                                      '#f))
                                   _clauses151910_))
                                 (gx#stx-source _stx151886_))
                                (_E151889151898_)))))
                      (_E151889151898_)))))
          (_E151888151917_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151840_)
        (let* ((_e151841151851_ _stx151840_)
               (_E151843151855_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151841151851_)))
               (_E151842151882_
                (lambda ()
                  (if (gx#stx-pair? _e151841151851_)
                      (let ((_e151844151859_ (gx#syntax-e _e151841151851_)))
                        (let ((_hd151845151862_ (##car _e151844151859_))
                              (_tl151846151864_ (##cdr _e151844151859_)))
                          (if (gx#stx-pair? _tl151846151864_)
                              (let ((_e151847151867_
                                     (gx#syntax-e _tl151846151864_)))
                                (let ((_hd151848151870_
                                       (##car _e151847151867_))
                                      (_tl151849151872_
                                       (##cdr _e151847151867_)))
                                  (let* ((_hd151875_ _hd151848151870_)
                                         (_body151877_ _tl151849151872_))
                                    (if (gx#core-expand-let-bind? _hd151875_)
                                        (let ((_expressions151879_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151875_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151875_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151875_
                                                           _expressions151879_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151840_
                         _body151877_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151840_)))
                                           gx#current-expander-context
                                           (let ((__obj157055
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157055)
                                             __obj157055)))
                                        (_E151843151855_)))))
                              (_E151843151855_))))
                      (_E151843151855_)))))
          (_E151842151882_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151785_ _form151786_)
        (let* ((_e151787151797_ _stx151785_)
               (_E151789151801_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151787151797_)))
               (_E151788151826_
                (lambda ()
                  (if (gx#stx-pair? _e151787151797_)
                      (let ((_e151790151805_ (gx#syntax-e _e151787151797_)))
                        (let ((_hd151791151808_ (##car _e151790151805_))
                              (_tl151792151810_ (##cdr _e151790151805_)))
                          (if (gx#stx-pair? _tl151792151810_)
                              (let ((_e151793151813_
                                     (gx#syntax-e _tl151792151810_)))
                                (let ((_hd151794151816_
                                       (##car _e151793151813_))
                                      (_tl151795151818_
                                       (##cdr _e151793151813_)))
                                  (let* ((_hd151821_ _hd151794151816_)
                                         (_body151823_ _tl151795151818_))
                                    (if (gx#core-expand-let-bind? _hd151821_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151821_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151786_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151821_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151821_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151785_
                                                               _body151823_)
                                                              '())))
                                            (gx#stx-source _stx151785_)))
                                         gx#current-expander-context
                                         (let ((__obj157056
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157056)
                                           __obj157056))
                                        (_E151789151801_)))))
                              (_E151789151801_))))
                      (_E151789151801_)))))
          (_E151788151826_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151833_)
        (let ((_form151835_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151833_ _form151835_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157066_
        (let ((_g157065_ (##length _g157066_)))
          (cond ((##fx= _g157065_ 1)
                 (apply (lambda (_stx151833_)
                          (gx#core-expand-letrec-values%__0 _stx151833_))
                        _g157066_))
                ((##fx= _g157065_ 2)
                 (apply (lambda (_stx151837_ _form151838_)
                          (gx#core-expand-letrec-values%__%
                           _stx151837_
                           _form151838_))
                        _g157066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157066_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151782_)
        (gx#core-expand-letrec-values%__% _stx151782_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151739_)
        (if (gx#stx-list? _stx151739_)
            (gx#stx-andmap
             (lambda (_bind151741_)
               (let* ((_e151742151752_ _bind151741_)
                      (_E151744151756_ (lambda () '#f))
                      (_E151743151778_
                       (lambda ()
                         (if (gx#stx-pair? _e151742151752_)
                             (let ((_e151745151760_
                                    (gx#syntax-e _e151742151752_)))
                               (let ((_hd151746151763_ (##car _e151745151760_))
                                     (_tl151747151765_
                                      (##cdr _e151745151760_)))
                                 (let ((_hd151768_ _hd151746151763_))
                                   (if (gx#stx-pair? _tl151747151765_)
                                       (let ((_e151748151770_
                                              (gx#syntax-e _tl151747151765_)))
                                         (let ((_hd151749151773_
                                                (##car _e151748151770_))
                                               (_tl151750151775_
                                                (##cdr _e151748151770_)))
                                           (if (gx#stx-null? _tl151750151775_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151768_)
                                                   (_E151744151756_))
                                               (_E151744151756_))))
                                       (_E151744151756_)))))
                             (_E151744151756_)))))
                 (_E151743151778_)))
             _stx151739_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151698_)
        (let* ((_e151699151709_ _bind151698_)
               (_E151701151713_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151699151709_)))
               (_E151700151735_
                (lambda ()
                  (if (gx#stx-pair? _e151699151709_)
                      (let ((_e151702151717_ (gx#syntax-e _e151699151709_)))
                        (let ((_hd151703151720_ (##car _e151702151717_))
                              (_tl151704151722_ (##cdr _e151702151717_)))
                          (if (gx#stx-pair? _tl151704151722_)
                              (let ((_e151705151725_
                                     (gx#syntax-e _tl151704151722_)))
                                (let ((_hd151706151728_
                                       (##car _e151705151725_))
                                      (_tl151707151730_
                                       (##cdr _e151705151725_)))
                                  (let ((_expr151733_ _hd151706151728_))
                                    (if (gx#stx-null? _tl151707151730_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151733_)
                                            (_E151701151713_))
                                        (_E151701151713_)))))
                              (_E151701151713_))))
                      (_E151701151713_)))))
          (_E151700151735_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151657_)
        (let* ((_e151658151668_ _bind151657_)
               (_E151660151672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151658151668_)))
               (_E151659151694_
                (lambda ()
                  (if (gx#stx-pair? _e151658151668_)
                      (let ((_e151661151676_ (gx#syntax-e _e151658151668_)))
                        (let ((_hd151662151679_ (##car _e151661151676_))
                              (_tl151663151681_ (##cdr _e151661151676_)))
                          (let ((_hd151684_ _hd151662151679_))
                            (if (gx#stx-pair? _tl151663151681_)
                                (let ((_e151664151686_
                                       (gx#syntax-e _tl151663151681_)))
                                  (let ((_hd151665151689_
                                         (##car _e151664151686_))
                                        (_tl151666151691_
                                         (##cdr _e151664151686_)))
                                    (if (gx#stx-null? _tl151666151691_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151684_)
                                            (_E151660151672_))
                                        (_E151660151672_))))
                                (_E151660151672_)))))
                      (_E151660151672_)))))
          (_E151659151694_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151615_ _expr151616_)
        (let* ((_e151617151627_ _bind151615_)
               (_E151619151631_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151617151627_)))
               (_E151618151653_
                (lambda ()
                  (if (gx#stx-pair? _e151617151627_)
                      (let ((_e151620151635_ (gx#syntax-e _e151617151627_)))
                        (let ((_hd151621151638_ (##car _e151620151635_))
                              (_tl151622151640_ (##cdr _e151620151635_)))
                          (let ((_hd151643_ _hd151621151638_))
                            (if (gx#stx-pair? _tl151622151640_)
                                (let ((_e151623151645_
                                       (gx#syntax-e _tl151622151640_)))
                                  (let ((_hd151624151648_
                                         (##car _e151623151645_))
                                        (_tl151625151650_
                                         (##cdr _e151623151645_)))
                                    (if (gx#stx-null? _tl151625151650_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151643_)
                                                  (cons _expr151616_ '()))
                                            (_E151619151631_))
                                        (_E151619151631_))))
                                (_E151619151631_)))))
                      (_E151619151631_)))))
          (_E151618151653_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151569_)
        (let* ((_e151570151580_ _stx151569_)
               (_E151572151584_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151570151580_)))
               (_E151571151611_
                (lambda ()
                  (if (gx#stx-pair? _e151570151580_)
                      (let ((_e151573151588_ (gx#syntax-e _e151570151580_)))
                        (let ((_hd151574151591_ (##car _e151573151588_))
                              (_tl151575151593_ (##cdr _e151573151588_)))
                          (if (gx#stx-pair? _tl151575151593_)
                              (let ((_e151576151596_
                                     (gx#syntax-e _tl151575151593_)))
                                (let ((_hd151577151599_
                                       (##car _e151576151596_))
                                      (_tl151578151601_
                                       (##cdr _e151576151596_)))
                                  (let* ((_hd151604_ _hd151577151599_)
                                         (_body151606_ _tl151578151601_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151604_)
                                        (let ((_expanders151608_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151604_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151604_
                                              _expanders151608_)
                                             (gx#core-expand-local-block
                                              _stx151569_
                                              _body151606_))
                                           gx#current-expander-context
                                           (let ((__obj157057
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157057)
                                             __obj157057)))
                                        (_E151572151584_)))))
                              (_E151572151584_))))
                      (_E151572151584_)))))
          (_E151571151611_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151518_)
        (let* ((_e151519151529_ _stx151518_)
               (_E151521151533_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151519151529_)))
               (_E151520151565_
                (lambda ()
                  (if (gx#stx-pair? _e151519151529_)
                      (let ((_e151522151537_ (gx#syntax-e _e151519151529_)))
                        (let ((_hd151523151540_ (##car _e151522151537_))
                              (_tl151524151542_ (##cdr _e151522151537_)))
                          (if (gx#stx-pair? _tl151524151542_)
                              (let ((_e151525151545_
                                     (gx#syntax-e _tl151524151542_)))
                                (let ((_hd151526151548_
                                       (##car _e151525151545_))
                                      (_tl151527151550_
                                       (##cdr _e151525151545_)))
                                  (let* ((_hd151553_ _hd151526151548_)
                                         (_body151555_ _tl151527151550_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151553_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151553_
                                            (make-list
                                             (gx#stx-length _hd151553_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151557151560_
                                                     _g151558151562_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151557151560_
                                               _g151558151562_
                                               '#t))
                                            _hd151553_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151553_))
                                           (gx#core-expand-local-block
                                            _stx151518_
                                            _body151555_))
                                         gx#current-expander-context
                                         (let ((__obj157058
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157058)
                                           __obj157058))
                                        (_E151521151533_)))))
                              (_E151521151533_))))
                      (_E151521151533_)))))
          (_E151520151565_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151475_)
        (if (gx#stx-list? _stx151475_)
            (gx#stx-andmap
             (lambda (_bind151477_)
               (let* ((_e151478151488_ _bind151477_)
                      (_E151480151492_ (lambda () '#f))
                      (_E151479151514_
                       (lambda ()
                         (if (gx#stx-pair? _e151478151488_)
                             (let ((_e151481151496_
                                    (gx#syntax-e _e151478151488_)))
                               (let ((_hd151482151499_ (##car _e151481151496_))
                                     (_tl151483151501_
                                      (##cdr _e151481151496_)))
                                 (let ((_hd151504_ _hd151482151499_))
                                   (if (gx#stx-pair? _tl151483151501_)
                                       (let ((_e151484151506_
                                              (gx#syntax-e _tl151483151501_)))
                                         (let ((_hd151485151509_
                                                (##car _e151484151506_))
                                               (_tl151486151511_
                                                (##cdr _e151484151506_)))
                                           (if (gx#stx-null? _tl151486151511_)
                                               (if '#t
                                                   (gx#identifier? _hd151504_)
                                                   (_E151480151492_))
                                               (_E151480151492_))))
                                       (_E151480151492_)))))
                             (_E151480151492_)))))
                 (_E151479151514_)))
             _stx151475_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151432_)
        (let* ((_e151433151443_ _bind151432_)
               (_E151435151447_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151433151443_)))
               (_E151434151471_
                (lambda ()
                  (if (gx#stx-pair? _e151433151443_)
                      (let ((_e151436151451_ (gx#syntax-e _e151433151443_)))
                        (let ((_hd151437151454_ (##car _e151436151451_))
                              (_tl151438151456_ (##cdr _e151436151451_)))
                          (if (gx#stx-pair? _tl151438151456_)
                              (let ((_e151439151459_
                                     (gx#syntax-e _tl151438151456_)))
                                (let ((_hd151440151462_
                                       (##car _e151439151459_))
                                      (_tl151441151464_
                                       (##cdr _e151439151459_)))
                                  (let ((_expr151467_ _hd151440151462_))
                                    (if (gx#stx-null? _tl151441151464_)
                                        (if '#t
                                            (let ((_g157067_
                                                   (gx#core-expand-expression+1
                                                    _expr151467_)))
                                              (begin
                                                (let ((_g157068_
                                                       (if (##values?
                                                            _g157067_)
                                                           (##vector-length
                                                            _g157067_)
                                                           1)))
                                                  (if (not (##fx= _g157068_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157068_)))
                                                (let ((_e151469_
                                                       (##vector-ref
                                                        _g157067_
                                                        1)))
                                                  _e151469_)))
                                            (_E151435151447_))
                                        (_E151435151447_)))))
                              (_E151435151447_))))
                      (_E151435151447_)))))
          (_E151434151471_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151377_ _e151378_ _rebind?151379_)
        (let* ((_e151380151390_ _bind151377_)
               (_E151382151394_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151380151390_)))
               (_E151381151416_
                (lambda ()
                  (if (gx#stx-pair? _e151380151390_)
                      (let ((_e151383151398_ (gx#syntax-e _e151380151390_)))
                        (let ((_hd151384151401_ (##car _e151383151398_))
                              (_tl151385151403_ (##cdr _e151383151398_)))
                          (let ((_id151406_ _hd151384151401_))
                            (if (gx#stx-pair? _tl151385151403_)
                                (let ((_e151386151408_
                                       (gx#syntax-e _tl151385151403_)))
                                  (let ((_hd151387151411_
                                         (##car _e151386151408_))
                                        (_tl151388151413_
                                         (##cdr _e151386151408_)))
                                    (if (gx#stx-null? _tl151388151413_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151406_
                                             _e151378_
                                             _rebind?151379_)
                                            (_E151382151394_))
                                        (_E151382151394_))))
                                (_E151382151394_)))))
                      (_E151382151394_)))))
          (_E151381151416_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151423_ _e151424_)
        (let ((_rebind?151426_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151423_
           _e151424_
           _rebind?151426_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157070_
        (let ((_g157069_ (##length _g157070_)))
          (cond ((##fx= _g157069_ 2)
                 (apply (lambda (_bind151423_ _e151424_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151423_
                           _e151424_))
                        _g157070_))
                ((##fx= _g157069_ 3)
                 (apply (lambda (_bind151428_ _e151429_ _rebind?151430_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151428_
                           _e151429_
                           _rebind?151430_))
                        _g157070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157070_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151335_)
        (let* ((_e151336151346_ _stx151335_)
               (_E151338151350_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151336151346_)))
               (_E151337151372_
                (lambda ()
                  (if (gx#stx-pair? _e151336151346_)
                      (let ((_e151339151354_ (gx#syntax-e _e151336151346_)))
                        (let ((_hd151340151357_ (##car _e151339151354_))
                              (_tl151341151359_ (##cdr _e151339151354_)))
                          (if (gx#stx-pair? _tl151341151359_)
                              (let ((_e151342151362_
                                     (gx#syntax-e _tl151341151359_)))
                                (let ((_hd151343151365_
                                       (##car _e151342151362_))
                                      (_tl151344151367_
                                       (##cdr _e151342151362_)))
                                  (let ((_expr151370_ _hd151343151365_))
                                    (if (gx#stx-null? _tl151344151367_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151370_)
                                            (_E151338151350_))
                                        (_E151338151350_)))))
                              (_E151338151350_))))
                      (_E151338151350_)))))
          (_E151337151372_))))
    (define gx#core-expand-quote%
      (lambda (_stx151294_)
        (let* ((_e151295151305_ _stx151294_)
               (_E151297151309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151295151305_)))
               (_E151296151331_
                (lambda ()
                  (if (gx#stx-pair? _e151295151305_)
                      (let ((_e151298151313_ (gx#syntax-e _e151295151305_)))
                        (let ((_hd151299151316_ (##car _e151298151313_))
                              (_tl151300151318_ (##cdr _e151298151313_)))
                          (if (gx#stx-pair? _tl151300151318_)
                              (let ((_e151301151321_
                                     (gx#syntax-e _tl151300151318_)))
                                (let ((_hd151302151324_
                                       (##car _e151301151321_))
                                      (_tl151303151326_
                                       (##cdr _e151301151321_)))
                                  (let ((_e151329_ _hd151302151324_))
                                    (if (gx#stx-null? _tl151303151326_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151329_)
                                                         '()))
                                             (gx#stx-source _stx151294_))
                                            (_E151297151309_))
                                        (_E151297151309_)))))
                              (_E151297151309_))))
                      (_E151297151309_)))))
          (_E151296151331_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151253_)
        (let* ((_e151254151264_ _stx151253_)
               (_E151256151268_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151254151264_)))
               (_E151255151290_
                (lambda ()
                  (if (gx#stx-pair? _e151254151264_)
                      (let ((_e151257151272_ (gx#syntax-e _e151254151264_)))
                        (let ((_hd151258151275_ (##car _e151257151272_))
                              (_tl151259151277_ (##cdr _e151257151272_)))
                          (if (gx#stx-pair? _tl151259151277_)
                              (let ((_e151260151280_
                                     (gx#syntax-e _tl151259151277_)))
                                (let ((_hd151261151283_
                                       (##car _e151260151280_))
                                      (_tl151262151285_
                                       (##cdr _e151260151280_)))
                                  (let ((_e151288_ _hd151261151283_))
                                    (if (gx#stx-null? _tl151262151285_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151288_)
                                                         '()))
                                             (gx#stx-source _stx151253_))
                                            (_E151256151268_))
                                        (_E151256151268_)))))
                              (_E151256151268_))))
                      (_E151256151268_)))))
          (_E151255151290_))))
    (define gx#core-expand-call%
      (lambda (_stx151210_)
        (let* ((_e151211151221_ _stx151210_)
               (_E151213151225_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151211151221_)))
               (_E151212151249_
                (lambda ()
                  (if (gx#stx-pair? _e151211151221_)
                      (let ((_e151214151229_ (gx#syntax-e _e151211151221_)))
                        (let ((_hd151215151232_ (##car _e151214151229_))
                              (_tl151216151234_ (##cdr _e151214151229_)))
                          (if (gx#stx-pair? _tl151216151234_)
                              (let ((_e151217151237_
                                     (gx#syntax-e _tl151216151234_)))
                                (let ((_hd151218151240_
                                       (##car _e151217151237_))
                                      (_tl151219151242_
                                       (##cdr _e151217151237_)))
                                  (let* ((_rator151245_ _hd151218151240_)
                                         (_args151247_ _tl151219151242_))
                                    (if (gx#stx-list? _args151247_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151245_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151247_))
                                         (gx#stx-source _stx151210_))
                                        (_E151213151225_)))))
                              (_E151213151225_))))
                      (_E151213151225_)))))
          (_E151212151249_))))
    (define gx#core-expand-if%
      (lambda (_stx151143_)
        (let* ((_e151144151160_ _stx151143_)
               (_E151146151164_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151144151160_)))
               (_E151145151206_
                (lambda ()
                  (if (gx#stx-pair? _e151144151160_)
                      (let ((_e151147151168_ (gx#syntax-e _e151144151160_)))
                        (let ((_hd151148151171_ (##car _e151147151168_))
                              (_tl151149151173_ (##cdr _e151147151168_)))
                          (if (gx#stx-pair? _tl151149151173_)
                              (let ((_e151150151176_
                                     (gx#syntax-e _tl151149151173_)))
                                (let ((_hd151151151179_
                                       (##car _e151150151176_))
                                      (_tl151152151181_
                                       (##cdr _e151150151176_)))
                                  (let ((_test151184_ _hd151151151179_))
                                    (if (gx#stx-pair? _tl151152151181_)
                                        (let ((_e151153151186_
                                               (gx#syntax-e _tl151152151181_)))
                                          (let ((_hd151154151189_
                                                 (##car _e151153151186_))
                                                (_tl151155151191_
                                                 (##cdr _e151153151186_)))
                                            (let ((_K151194_ _hd151154151189_))
                                              (if (gx#stx-pair?
                                                   _tl151155151191_)
                                                  (let ((_e151156151196_
                                                         (gx#syntax-e
                                                          _tl151155151191_)))
                                                    (let ((_hd151157151199_
                                                           (##car _e151156151196_))
                                                          (_tl151158151201_
                                                           (##cdr _e151156151196_)))
                                                      (let ((_E151204_
                                                             _hd151157151199_))
                                                        (if (gx#stx-null?
                                                             _tl151158151201_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151184_)
                                     (cons (gx#core-expand-expression
                                            _K151194_)
                                           (cons (gx#core-expand-expression
                                                  _E151204_)
                                                 '()))))
                         (gx#stx-source _stx151143_))
                        (_E151146151164_))
                    (_E151146151164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151146151164_)))))
                                        (_E151146151164_)))))
                              (_E151146151164_))))
                      (_E151146151164_)))))
          (_E151145151206_))))
    (define gx#core-expand-ref%
      (lambda (_stx151102_)
        (let* ((_e151103151113_ _stx151102_)
               (_E151105151117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151103151113_)))
               (_E151104151139_
                (lambda ()
                  (if (gx#stx-pair? _e151103151113_)
                      (let ((_e151106151121_ (gx#syntax-e _e151103151113_)))
                        (let ((_hd151107151124_ (##car _e151106151121_))
                              (_tl151108151126_ (##cdr _e151106151121_)))
                          (if (gx#stx-pair? _tl151108151126_)
                              (let ((_e151109151129_
                                     (gx#syntax-e _tl151108151126_)))
                                (let ((_hd151110151132_
                                       (##car _e151109151129_))
                                      (_tl151111151134_
                                       (##cdr _e151109151129_)))
                                  (let ((_id151137_ _hd151110151132_))
                                    (if (gx#stx-null? _tl151111151134_)
                                        (if (gx#identifier? _id151137_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151137_
                                                          _stx151102_)
                                                         '()))
                                             (gx#stx-source _stx151102_))
                                            (_E151105151117_))
                                        (_E151105151117_)))))
                              (_E151105151117_))))
                      (_E151105151117_)))))
          (_E151104151139_))))
    (define gx#core-expand-setq%
      (lambda (_stx151048_)
        (let* ((_e151049151062_ _stx151048_)
               (_E151051151066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151049151062_)))
               (_E151050151098_
                (lambda ()
                  (if (gx#stx-pair? _e151049151062_)
                      (let ((_e151052151070_ (gx#syntax-e _e151049151062_)))
                        (let ((_hd151053151073_ (##car _e151052151070_))
                              (_tl151054151075_ (##cdr _e151052151070_)))
                          (if (gx#stx-pair? _tl151054151075_)
                              (let ((_e151055151078_
                                     (gx#syntax-e _tl151054151075_)))
                                (let ((_hd151056151081_
                                       (##car _e151055151078_))
                                      (_tl151057151083_
                                       (##cdr _e151055151078_)))
                                  (let ((_id151086_ _hd151056151081_))
                                    (if (gx#stx-pair? _tl151057151083_)
                                        (let ((_e151058151088_
                                               (gx#syntax-e _tl151057151083_)))
                                          (let ((_hd151059151091_
                                                 (##car _e151058151088_))
                                                (_tl151060151093_
                                                 (##cdr _e151058151088_)))
                                            (let ((_expr151096_
                                                   _hd151059151091_))
                                              (if (gx#stx-null?
                                                   _tl151060151093_)
                                                  (if (gx#identifier?
                                                       _id151086_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151086_
                            _stx151048_)
                           (cons (gx#core-expand-expression _expr151096_)
                                 '())))
               (gx#stx-source _stx151048_))
              (_E151051151066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151051151066_)))))
                                        (_E151051151066_)))))
                              (_E151051151066_))))
                      (_E151051151066_)))))
          (_E151050151098_))))
    (define gx#macro-expand-extern
      (lambda (_stx150896_)
        (letrec ((_generate150898_
                  (lambda (_body150928_)
                    (let _lp150930_ ((_rest150932_ _body150928_)
                                     (_ns150933_
                                      (gx#core-context-namespace__0))
                                     (_r150934_ '()))
                      (let* ((_e150935150950_ _rest150932_)
                             (_E150948150954_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150935150950_)))
                             (_E150944150958_
                              (lambda ()
                                (if (gx#stx-null? _e150935150950_)
                                    (if '#t
                                        (reverse _r150934_)
                                        (_E150948150954_))
                                    (_E150948150954_))))
                             (_E150937151015_
                              (lambda ()
                                (if (gx#stx-pair? _e150935150950_)
                                    (let ((_e150945150962_
                                           (gx#syntax-e _e150935150950_)))
                                      (let ((_hd150946150965_
                                             (##car _e150945150962_))
                                            (_tl150947150967_
                                             (##cdr _e150945150962_)))
                                        (let* ((_hd150970_ _hd150946150965_)
                                               (_rest150972_ _tl150947150967_))
                                          (if '#t
                                              (if (gx#identifier? _hd150970_)
                                                  (_lp150930_
                                                   _rest150972_
                                                   _ns150933_
                                                   (cons (cons _hd150970_
                                                               (cons (if _ns150933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150970_
                                  _ns150933_
                                  '"#"
                                  _hd150970_)
                                 _hd150970_)
                             '()))
                 _r150934_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150973150983_
                                                          _hd150970_)
                                                         (_E150975150987_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150973150983_)))
                                                         (_E150974151011_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150973150983_)
                        (let ((_e150976150991_ (gx#syntax-e _e150973150983_)))
                          (let ((_hd150977150994_ (##car _e150976150991_))
                                (_tl150978150996_ (##cdr _e150976150991_)))
                            (let ((_id150999_ _hd150977150994_))
                              (if (gx#stx-pair? _tl150978150996_)
                                  (let ((_e150979151001_
                                         (gx#syntax-e _tl150978150996_)))
                                    (let ((_hd150980151004_
                                           (##car _e150979151001_))
                                          (_tl150981151006_
                                           (##cdr _e150979151001_)))
                                      (let ((_eid151009_ _hd150980151004_))
                                        (if (gx#stx-null? _tl150981151006_)
                                            (if (and (gx#identifier?
                                                      _id150999_)
                                                     (gx#identifier?
                                                      _eid151009_))
                                                (_lp150930_
                                                 _rest150972_
                                                 _ns150933_
                                                 (cons (cons _id150999_
                                                             (cons _eid151009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150934_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150975150987_))
                                            (_E150975150987_)))))
                                  (_E150975150987_)))))
                        (_E150975150987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150974151011_)))
                                              (_E150944150958_)))))
                                    (_E150944150958_))))
                             (_E150936151044_
                              (lambda ()
                                (if (gx#stx-pair? _e150935150950_)
                                    (let ((_e150938151019_
                                           (gx#syntax-e _e150935150950_)))
                                      (let ((_hd150939151022_
                                             (##car _e150938151019_))
                                            (_tl150940151024_
                                             (##cdr _e150938151019_)))
                                        (if (eq? (gx#stx-e _hd150939151022_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150940151024_)
                                                (let ((_e150941151027_
                                                       (gx#syntax-e
                                                        _tl150940151024_)))
                                                  (let ((_hd150942151030_
                                                         (##car _e150941151027_))
                                                        (_tl150943151032_
                                                         (##cdr _e150941151027_)))
                                                    (let* ((_ns151035_
                                                            _hd150942151030_)
                                                           (_rest151037_
                                                            _tl150943151032_))
                                                      (if '#t
                                                          (let ((_ns151042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151035_)
                             (symbol->string (gx#stx-e _ns151035_))
                             (if (or (gx#stx-string? _ns151035_)
                                     (gx#stx-false? _ns151035_))
                                 (gx#stx-e _ns151035_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150896_
                                  _ns151035_)))))
                    (_lp150930_ _rest151037_ _ns151042_ _r150934_))
                  (_E150937151015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150937151015_))
                                            (_E150937151015_))))
                                    (_E150937151015_)))))
                        (_E150936151044_))))))
          (let* ((_e150899150906_ _stx150896_)
                 (_E150901150910_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150899150906_)))
                 (_E150900150924_
                  (lambda ()
                    (if (gx#stx-pair? _e150899150906_)
                        (let ((_e150902150914_ (gx#syntax-e _e150899150906_)))
                          (let ((_hd150903150917_ (##car _e150902150914_))
                                (_tl150904150919_ (##cdr _e150902150914_)))
                            (let ((_body150922_ _tl150904150919_))
                              (if (gx#stx-list? _body150922_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150898_ _body150922_))
                                  (_E150901150910_)))))
                        (_E150901150910_)))))
            (_E150900150924_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150842_)
        (let* ((_e150843150856_ _stx150842_)
               (_E150845150860_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150843150856_)))
               (_E150844150892_
                (lambda ()
                  (if (gx#stx-pair? _e150843150856_)
                      (let ((_e150846150864_ (gx#syntax-e _e150843150856_)))
                        (let ((_hd150847150867_ (##car _e150846150864_))
                              (_tl150848150869_ (##cdr _e150846150864_)))
                          (if (gx#stx-pair? _tl150848150869_)
                              (let ((_e150849150872_
                                     (gx#syntax-e _tl150848150869_)))
                                (let ((_hd150850150875_
                                       (##car _e150849150872_))
                                      (_tl150851150877_
                                       (##cdr _e150849150872_)))
                                  (let ((_hd150880_ _hd150850150875_))
                                    (if (gx#stx-pair? _tl150851150877_)
                                        (let ((_e150852150882_
                                               (gx#syntax-e _tl150851150877_)))
                                          (let ((_hd150853150885_
                                                 (##car _e150852150882_))
                                                (_tl150854150887_
                                                 (##cdr _e150852150882_)))
                                            (let ((_expr150890_
                                                   _hd150853150885_))
                                              (if (gx#stx-null?
                                                   _tl150854150887_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150880_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150880_)
                          (cons _expr150890_ '())))
              (_E150845150860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150845150860_)))))
                                        (_E150845150860_)))))
                              (_E150845150860_))))
                      (_E150845150860_)))))
          (_E150844150892_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150788_)
        (let* ((_e150789150802_ _stx150788_)
               (_E150791150806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150789150802_)))
               (_E150790150838_
                (lambda ()
                  (if (gx#stx-pair? _e150789150802_)
                      (let ((_e150792150810_ (gx#syntax-e _e150789150802_)))
                        (let ((_hd150793150813_ (##car _e150792150810_))
                              (_tl150794150815_ (##cdr _e150792150810_)))
                          (if (gx#stx-pair? _tl150794150815_)
                              (let ((_e150795150818_
                                     (gx#syntax-e _tl150794150815_)))
                                (let ((_hd150796150821_
                                       (##car _e150795150818_))
                                      (_tl150797150823_
                                       (##cdr _e150795150818_)))
                                  (let ((_hd150826_ _hd150796150821_))
                                    (if (gx#stx-pair? _tl150797150823_)
                                        (let ((_e150798150828_
                                               (gx#syntax-e _tl150797150823_)))
                                          (let ((_hd150799150831_
                                                 (##car _e150798150828_))
                                                (_tl150800150833_
                                                 (##cdr _e150798150828_)))
                                            (let ((_expr150836_
                                                   _hd150799150831_))
                                              (if (gx#stx-null?
                                                   _tl150800150833_)
                                                  (if (gx#identifier?
                                                       _hd150826_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150836_ '())))
              (_E150791150806_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150791150806_)))))
                                        (_E150791150806_)))))
                              (_E150791150806_))))
                      (_E150791150806_)))))
          (_E150790150838_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150734_)
        (let* ((_e150735150748_ _stx150734_)
               (_E150737150752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150735150748_)))
               (_E150736150784_
                (lambda ()
                  (if (gx#stx-pair? _e150735150748_)
                      (let ((_e150738150756_ (gx#syntax-e _e150735150748_)))
                        (let ((_hd150739150759_ (##car _e150738150756_))
                              (_tl150740150761_ (##cdr _e150738150756_)))
                          (if (gx#stx-pair? _tl150740150761_)
                              (let ((_e150741150764_
                                     (gx#syntax-e _tl150740150761_)))
                                (let ((_hd150742150767_
                                       (##car _e150741150764_))
                                      (_tl150743150769_
                                       (##cdr _e150741150764_)))
                                  (let ((_id150772_ _hd150742150767_))
                                    (if (gx#stx-pair? _tl150743150769_)
                                        (let ((_e150744150774_
                                               (gx#syntax-e _tl150743150769_)))
                                          (let ((_hd150745150777_
                                                 (##car _e150744150774_))
                                                (_tl150746150779_
                                                 (##cdr _e150744150774_)))
                                            (let ((_alias-id150782_
                                                   _hd150745150777_))
                                              (if (gx#stx-null?
                                                   _tl150746150779_)
                                                  (if (and (gx#identifier?
                                                            _id150772_)
                                                           (gx#identifier?
                                                            _alias-id150782_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150782_ '())))
              (_E150737150752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150737150752_)))))
                                        (_E150737150752_)))))
                              (_E150737150752_))))
                      (_E150737150752_)))))
          (_E150736150784_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150691_)
        (let* ((_e150692150702_ _stx150691_)
               (_E150694150706_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150692150702_)))
               (_E150693150730_
                (lambda ()
                  (if (gx#stx-pair? _e150692150702_)
                      (let ((_e150695150710_ (gx#syntax-e _e150692150702_)))
                        (let ((_hd150696150713_ (##car _e150695150710_))
                              (_tl150697150715_ (##cdr _e150695150710_)))
                          (if (gx#stx-pair? _tl150697150715_)
                              (let ((_e150698150718_
                                     (gx#syntax-e _tl150697150715_)))
                                (let ((_hd150699150721_
                                       (##car _e150698150718_))
                                      (_tl150700150723_
                                       (##cdr _e150698150718_)))
                                  (let* ((_hd150726_ _hd150699150721_)
                                         (_body150728_ _tl150700150723_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150726_)
                                             (gx#stx-list? _body150728_)
                                             (not (gx#stx-null? _body150728_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150726_)
                                         _body150728_)
                                        (_E150694150706_)))))
                              (_E150694150706_))))
                      (_E150694150706_)))))
          (_E150693150730_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150627_)
        (letrec ((_generate150629_
                  (lambda (_clause150659_)
                    (let* ((_e150660150667_ _clause150659_)
                           (_E150662150671_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150627_
                               _clause150659_)))
                           (_E150661150687_
                            (lambda ()
                              (if (gx#stx-pair? _e150660150667_)
                                  (let ((_e150663150675_
                                         (gx#syntax-e _e150660150667_)))
                                    (let ((_hd150664150678_
                                           (##car _e150663150675_))
                                          (_tl150665150680_
                                           (##cdr _e150663150675_)))
                                      (let* ((_hd150683_ _hd150664150678_)
                                             (_body150685_ _tl150665150680_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150683_)
                                                 (gx#stx-list? _body150685_)
                                                 (not (gx#stx-null?
                                                       _body150685_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150683_)
                                                   _body150685_)
                                             (gx#stx-source _clause150659_))
                                            (_E150662150671_)))))
                                  (_E150662150671_)))))
                      (_E150661150687_)))))
          (let* ((_e150630150637_ _stx150627_)
                 (_E150632150641_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150630150637_)))
                 (_E150631150655_
                  (lambda ()
                    (if (gx#stx-pair? _e150630150637_)
                        (let ((_e150633150645_ (gx#syntax-e _e150630150637_)))
                          (let ((_hd150634150648_ (##car _e150633150645_))
                                (_tl150635150650_ (##cdr _e150633150645_)))
                            (let ((_clauses150653_ _tl150635150650_))
                              (if (gx#stx-list? _clauses150653_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150629_
                                    _clauses150653_))
                                  (_E150632150641_)))))
                        (_E150632150641_)))))
            (_E150631150655_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150528_ _form150529_)
        (letrec ((_generate150531_
                  (lambda (_bind150574_)
                    (let* ((_e150575150585_ _bind150574_)
                           (_E150577150589_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150528_
                               _bind150574_)))
                           (_E150576150613_
                            (lambda ()
                              (if (gx#stx-pair? _e150575150585_)
                                  (let ((_e150578150593_
                                         (gx#syntax-e _e150575150585_)))
                                    (let ((_hd150579150596_
                                           (##car _e150578150593_))
                                          (_tl150580150598_
                                           (##cdr _e150578150593_)))
                                      (let ((_ids150601_ _hd150579150596_))
                                        (if (gx#stx-pair? _tl150580150598_)
                                            (let ((_e150581150603_
                                                   (gx#syntax-e
                                                    _tl150580150598_)))
                                              (let ((_hd150582150606_
                                                     (##car _e150581150603_))
                                                    (_tl150583150608_
                                                     (##cdr _e150581150603_)))
                                                (let ((_expr150611_
                                                       _hd150582150606_))
                                                  (if (gx#stx-null?
                                                       _tl150583150608_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150601_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150601_)
                        (cons _expr150611_ '()))
                  (_E150577150589_))
              (_E150577150589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150577150589_)))))
                                  (_E150577150589_)))))
                      (_E150576150613_)))))
          (let* ((_e150532150542_ _stx150528_)
                 (_E150534150546_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150532150542_)))
                 (_E150533150570_
                  (lambda ()
                    (if (gx#stx-pair? _e150532150542_)
                        (let ((_e150535150550_ (gx#syntax-e _e150532150542_)))
                          (let ((_hd150536150553_ (##car _e150535150550_))
                                (_tl150537150555_ (##cdr _e150535150550_)))
                            (if (gx#stx-pair? _tl150537150555_)
                                (let ((_e150538150558_
                                       (gx#syntax-e _tl150537150555_)))
                                  (let ((_hd150539150561_
                                         (##car _e150538150558_))
                                        (_tl150540150563_
                                         (##cdr _e150538150558_)))
                                    (let* ((_hd150566_ _hd150539150561_)
                                           (_body150568_ _tl150540150563_))
                                      (if (and (gx#stx-list? _hd150566_)
                                               (gx#stx-list? _body150568_)
                                               (not (gx#stx-null?
                                                     _body150568_)))
                                          (gx#core-cons*
                                           _form150529_
                                           (gx#stx-map1
                                            _generate150531_
                                            _hd150566_)
                                           _body150568_)
                                          (_E150534150546_)))))
                                (_E150534150546_))))
                        (_E150534150546_)))))
            (_E150533150570_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150620_)
        (let ((_form150622_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150620_ _form150622_))))
    (define gx#macro-expand-let-values
      (lambda _g157072_
        (let ((_g157071_ (##length _g157072_)))
          (cond ((##fx= _g157071_ 1)
                 (apply (lambda (_stx150620_)
                          (gx#macro-expand-let-values__0 _stx150620_))
                        _g157072_))
                ((##fx= _g157071_ 2)
                 (apply (lambda (_stx150624_ _form150625_)
                          (gx#macro-expand-let-values__%
                           _stx150624_
                           _form150625_))
                        _g157072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157072_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150525_)
        (gx#macro-expand-let-values__% _stx150525_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150523_)
        (gx#macro-expand-let-values__% _stx150523_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150414_)
        (let* ((_e150415150441_ _stx150414_)
               (_E150427150445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150415150441_)))
               (_E150417150487_
                (lambda ()
                  (if (gx#stx-pair? _e150415150441_)
                      (let ((_e150428150449_ (gx#syntax-e _e150415150441_)))
                        (let ((_hd150429150452_ (##car _e150428150449_))
                              (_tl150430150454_ (##cdr _e150428150449_)))
                          (if (gx#stx-pair? _tl150430150454_)
                              (let ((_e150431150457_
                                     (gx#syntax-e _tl150430150454_)))
                                (let ((_hd150432150460_
                                       (##car _e150431150457_))
                                      (_tl150433150462_
                                       (##cdr _e150431150457_)))
                                  (let ((_test150465_ _hd150432150460_))
                                    (if (gx#stx-pair? _tl150433150462_)
                                        (let ((_e150434150467_
                                               (gx#syntax-e _tl150433150462_)))
                                          (let ((_hd150435150470_
                                                 (##car _e150434150467_))
                                                (_tl150436150472_
                                                 (##cdr _e150434150467_)))
                                            (let ((_K150475_ _hd150435150470_))
                                              (if (gx#stx-pair?
                                                   _tl150436150472_)
                                                  (let ((_e150437150477_
                                                         (gx#syntax-e
                                                          _tl150436150472_)))
                                                    (let ((_hd150438150480_
                                                           (##car _e150437150477_))
                                                          (_tl150439150482_
                                                           (##cdr _e150437150477_)))
                                                      (let ((_E150485_
                                                             _hd150438150480_))
                                                        (if (gx#stx-null?
                                                             _tl150439150482_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150465_
                         _K150475_
                         _E150485_)
                        (_E150427150445_))
                    (_E150427150445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150427150445_)))))
                                        (_E150427150445_)))))
                              (_E150427150445_))))
                      (_E150427150445_))))
               (_E150416150519_
                (lambda ()
                  (if (gx#stx-pair? _e150415150441_)
                      (let ((_e150418150491_ (gx#syntax-e _e150415150441_)))
                        (let ((_hd150419150494_ (##car _e150418150491_))
                              (_tl150420150496_ (##cdr _e150418150491_)))
                          (if (gx#stx-pair? _tl150420150496_)
                              (let ((_e150421150499_
                                     (gx#syntax-e _tl150420150496_)))
                                (let ((_hd150422150502_
                                       (##car _e150421150499_))
                                      (_tl150423150504_
                                       (##cdr _e150421150499_)))
                                  (let ((_test150507_ _hd150422150502_))
                                    (if (gx#stx-pair? _tl150423150504_)
                                        (let ((_e150424150509_
                                               (gx#syntax-e _tl150423150504_)))
                                          (let ((_hd150425150512_
                                                 (##car _e150424150509_))
                                                (_tl150426150514_
                                                 (##cdr _e150424150509_)))
                                            (let ((_K150517_ _hd150425150512_))
                                              (if (gx#stx-null?
                                                   _tl150426150514_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150507_
                                                       _K150517_
                                                       '#!void)
                                                      (_E150417150487_))
                                                  (_E150417150487_)))))
                                        (_E150417150487_)))))
                              (_E150417150487_))))
                      (_E150417150487_)))))
          (_E150416150519_))))
    (define gx#free-identifier=?
      (lambda (_xid150402_ _yid150403_)
        (let ((_xe150405_ (gx#resolve-identifier__0 _xid150402_))
              (_ye150406_ (gx#resolve-identifier__0 _yid150403_)))
          (if (and _xe150405_ _ye150406_)
              (let ((_$e150408_ (eq? _xe150405_ _ye150406_)))
                (if _$e150408_
                    _$e150408_
                    (if (##structure-instance-of? _xe150405_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150406_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150405_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150406_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150405_ _ye150406_)
                  '#f
                  (gx#stx-eq? _xid150402_ _yid150403_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150386_ _yid150387_)
        (letrec ((_context150389_
                  (lambda (_e150400_)
                    (if (##structure-direct-instance-of?
                         _e150400_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150400_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150390_
                  (lambda (_e150398_)
                    (if (symbol? _e150398_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150398_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150398_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150398_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150391_
                  (lambda (_e150396_)
                    (if (symbol? _e150396_)
                        _e150396_
                        (gx#syntax-local-unwrap _e150396_)))))
          (let ((_x150393_ (_unwrap150391_ _xid150386_))
                (_y150394_ (_unwrap150391_ _yid150387_)))
            (if (gx#stx-eq? _x150393_ _y150394_)
                (if (eq? (_context150389_ _x150393_)
                         (_context150389_ _y150394_))
                    (equal? (_marks150390_ _x150393_)
                            (_marks150390_ _y150394_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150384_)
        (if (gx#identifier? _stx150384_)
            (gx#core-identifier=? _stx150384_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150382_)
        (if (gx#identifier? _stx150382_)
            (gx#core-identifier=? _stx150382_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150380_)
        (if (gx#identifier? _x150380_)
            (if (not (gx#underscore? _x150380_)) _x150380_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150326_ _where150327_)
        (let _lp150329_ ((_rest150331_ (gx#syntax->list _stx150326_)))
          (let* ((_rest150332150340_ _rest150331_)
                 (_else150334150348_ (lambda () '#t))
                 (_K150336150358_
                  (lambda (_rest150351_ _hd150352_)
                    (if (not (gx#identifier? _hd150352_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150327_
                         _hd150352_)
                        (if (find (lambda (_g150353150355_)
                                    (gx#bound-identifier=?
                                     _g150353150355_
                                     _hd150352_))
                                  _rest150351_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150327_
                             _hd150352_)
                            (_lp150329_ _rest150351_))))))
            (if (##pair? _rest150332150340_)
                (let ((_hd150337150361_ (##car _rest150332150340_))
                      (_tl150338150363_ (##cdr _rest150332150340_)))
                  (let* ((_hd150366_ _hd150337150361_)
                         (_rest150368_ _tl150338150363_))
                    (_K150336150358_ _rest150368_ _hd150366_)))
                (_else150334150348_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150373_)
        (let ((_where150375_ _stx150373_))
          (gx#check-duplicate-identifiers__% _stx150373_ _where150375_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157074_
        (let ((_g157073_ (##length _g157074_)))
          (cond ((##fx= _g157073_ 1)
                 (apply (lambda (_stx150373_)
                          (gx#check-duplicate-identifiers__0 _stx150373_))
                        _g157074_))
                ((##fx= _g157073_ 2)
                 (apply (lambda (_stx150377_ _where150378_)
                          (gx#check-duplicate-identifiers__%
                           _stx150377_
                           _where150378_))
                        _g157074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157074_))))))
    (define gx#core-bind-values?
      (lambda (_stx150318_)
        (gx#stx-andmap
         (lambda (_x150320_)
           (let ((_$e150322_ (gx#identifier? _x150320_)))
             (if _$e150322_ _$e150322_ (gx#stx-false? _x150320_))))
         _stx150318_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150282_ _rebind?150283_ _phi150284_ _ctx150285_)
        (gx#stx-for-each1
         (lambda (_id150287_)
           (if (gx#identifier? _id150287_)
               (gx#core-bind-runtime!__%
                _id150287_
                _rebind?150283_
                _phi150284_
                _ctx150285_)
               '#!void))
         _stx150282_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150292_)
        (let* ((_rebind?150294_ '#f)
               (_phi150296_ (gx#current-expander-phi))
               (_ctx150298_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150292_
           _rebind?150294_
           _phi150296_
           _ctx150298_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150300_ _rebind?150301_)
        (let* ((_phi150303_ (gx#current-expander-phi))
               (_ctx150305_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150300_
           _rebind?150301_
           _phi150303_
           _ctx150305_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150307_ _rebind?150308_ _phi150309_)
        (let ((_ctx150311_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150307_
           _rebind?150308_
           _phi150309_
           _ctx150311_))))
    (define gx#core-bind-values!
      (lambda _g157076_
        (let ((_g157075_ (##length _g157076_)))
          (cond ((##fx= _g157075_ 1)
                 (apply (lambda (_stx150292_)
                          (gx#core-bind-values!__0 _stx150292_))
                        _g157076_))
                ((##fx= _g157075_ 2)
                 (apply (lambda (_stx150300_ _rebind?150301_)
                          (gx#core-bind-values!__1
                           _stx150300_
                           _rebind?150301_))
                        _g157076_))
                ((##fx= _g157075_ 3)
                 (apply (lambda (_stx150307_ _rebind?150308_ _phi150309_)
                          (gx#core-bind-values!__2
                           _stx150307_
                           _rebind?150308_
                           _phi150309_))
                        _g157076_))
                ((##fx= _g157075_ 4)
                 (apply (lambda (_stx150313_
                                 _rebind?150314_
                                 _phi150315_
                                 _ctx150316_)
                          (gx#core-bind-values!__%
                           _stx150313_
                           _rebind?150314_
                           _phi150315_
                           _ctx150316_))
                        _g157076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157076_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150277_)
        (gx#stx-map1
         (lambda (_x150279_)
           (if (gx#identifier? _x150279_)
               (gx#core-quote-syntax__0 _x150279_)
               '#f))
         _stx150277_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150270_)
        (if (gx#identifier? _stx150270_)
            (let* ((_bind150272_ (gx#resolve-identifier__0 _stx150270_))
                   (_$e150274_ (not _bind150272_)))
              (if _$e150274_
                  _$e150274_
                  (##structure-instance-of?
                   _bind150272_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150262_ _form150263_)
        (let ((_bind150265_ (gx#resolve-identifier__0 _id150262_)))
          (if (##structure-instance-of? _bind150265_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150262_)
              (if (not _bind150265_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150262_)))
                      (gx#core-quote-syntax__0 _id150262_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150263_
                       _id150262_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150263_
                   _id150262_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150221_ _rebind?150222_ _phi150223_ _ctx150224_)
        (let* ((_key150226_ (gx#core-identifier-key _id150221_))
               (_eid150228_
                (gx#make-binding-id__%
                 _key150226_
                 '#f
                 _phi150223_
                 _ctx150224_))
               (_bind150230_
                (if (##structure-instance-of?
                     _ctx150224_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150228_
                     _key150226_
                     _phi150223_
                     _ctx150224_)
                    (if (##structure-instance-of?
                         _ctx150224_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150228_
                         _key150226_
                         _phi150223_)
                        (if (##structure-instance-of?
                             _ctx150224_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150228_
                             _key150226_
                             _phi150223_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150228_
                             _key150226_
                             _phi150223_))))))
          (gx#bind-identifier!__%
           _id150221_
           _bind150230_
           _rebind?150222_
           _phi150223_
           _ctx150224_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150236_)
        (let* ((_rebind?150238_ '#f)
               (_phi150240_ (gx#current-expander-phi))
               (_ctx150242_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150236_
           _rebind?150238_
           _phi150240_
           _ctx150242_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150244_ _rebind?150245_)
        (let* ((_phi150247_ (gx#current-expander-phi))
               (_ctx150249_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150244_
           _rebind?150245_
           _phi150247_
           _ctx150249_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150251_ _rebind?150252_ _phi150253_)
        (let ((_ctx150255_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150251_
           _rebind?150252_
           _phi150253_
           _ctx150255_))))
    (define gx#core-bind-runtime!
      (lambda _g157078_
        (let ((_g157077_ (##length _g157078_)))
          (cond ((##fx= _g157077_ 1)
                 (apply (lambda (_id150236_)
                          (gx#core-bind-runtime!__0 _id150236_))
                        _g157078_))
                ((##fx= _g157077_ 2)
                 (apply (lambda (_id150244_ _rebind?150245_)
                          (gx#core-bind-runtime!__1
                           _id150244_
                           _rebind?150245_))
                        _g157078_))
                ((##fx= _g157077_ 3)
                 (apply (lambda (_id150251_ _rebind?150252_ _phi150253_)
                          (gx#core-bind-runtime!__2
                           _id150251_
                           _rebind?150252_
                           _phi150253_))
                        _g157078_))
                ((##fx= _g157077_ 4)
                 (apply (lambda (_id150257_
                                 _rebind?150258_
                                 _phi150259_
                                 _ctx150260_)
                          (gx#core-bind-runtime!__%
                           _id150257_
                           _rebind?150258_
                           _phi150259_
                           _ctx150260_))
                        _g157078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157078_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150176_ _eid150177_ _rebind?150178_ _phi150179_ _ctx150180_)
        (let* ((_key150182_ (gx#core-identifier-key _id150176_))
               (_bind150184_
                (if (##structure-instance-of?
                     _ctx150180_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150177_
                     _key150182_
                     _phi150179_
                     _ctx150180_)
                    (if (##structure-instance-of?
                         _ctx150180_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150177_
                         _key150182_
                         _phi150179_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150177_
                         _key150182_
                         _phi150179_)))))
          (gx#bind-identifier!__%
           _id150176_
           _bind150184_
           _rebind?150178_
           _phi150179_
           _ctx150180_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150190_ _eid150191_)
        (let* ((_rebind?150193_ '#f)
               (_phi150195_ (gx#current-expander-phi))
               (_ctx150197_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150190_
           _eid150191_
           _rebind?150193_
           _phi150195_
           _ctx150197_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150199_ _eid150200_ _rebind?150201_)
        (let* ((_phi150203_ (gx#current-expander-phi))
               (_ctx150205_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150199_
           _eid150200_
           _rebind?150201_
           _phi150203_
           _ctx150205_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150207_ _eid150208_ _rebind?150209_ _phi150210_)
        (let ((_ctx150212_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150207_
           _eid150208_
           _rebind?150209_
           _phi150210_
           _ctx150212_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157080_
        (let ((_g157079_ (##length _g157080_)))
          (cond ((##fx= _g157079_ 2)
                 (apply (lambda (_id150190_ _eid150191_)
                          (gx#core-bind-runtime-reference!__0
                           _id150190_
                           _eid150191_))
                        _g157080_))
                ((##fx= _g157079_ 3)
                 (apply (lambda (_id150199_ _eid150200_ _rebind?150201_)
                          (gx#core-bind-runtime-reference!__1
                           _id150199_
                           _eid150200_
                           _rebind?150201_))
                        _g157080_))
                ((##fx= _g157079_ 4)
                 (apply (lambda (_id150207_
                                 _eid150208_
                                 _rebind?150209_
                                 _phi150210_)
                          (gx#core-bind-runtime-reference!__2
                           _id150207_
                           _eid150208_
                           _rebind?150209_
                           _phi150210_))
                        _g157080_))
                ((##fx= _g157079_ 5)
                 (apply (lambda (_id150214_
                                 _eid150215_
                                 _rebind?150216_
                                 _phi150217_
                                 _ctx150218_)
                          (gx#core-bind-runtime-reference!__%
                           _id150214_
                           _eid150215_
                           _rebind?150216_
                           _phi150217_
                           _ctx150218_))
                        _g157080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157080_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150136_ _eid150137_ _rebind?150138_ _phi150139_ _ctx150140_)
        (gx#bind-identifier!__%
         _id150136_
         (##structure
          gx#extern-binding::t
          _eid150137_
          (gx#core-identifier-key _id150136_)
          _phi150139_)
         _rebind?150138_
         _phi150139_
         _ctx150140_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150145_ _eid150146_)
        (let* ((_rebind?150148_ '#f)
               (_phi150150_ (gx#current-expander-phi))
               (_ctx150152_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150145_
           _eid150146_
           _rebind?150148_
           _phi150150_
           _ctx150152_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150154_ _eid150155_ _rebind?150156_)
        (let* ((_phi150158_ (gx#current-expander-phi))
               (_ctx150160_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150154_
           _eid150155_
           _rebind?150156_
           _phi150158_
           _ctx150160_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150162_ _eid150163_ _rebind?150164_ _phi150165_)
        (let ((_ctx150167_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150162_
           _eid150163_
           _rebind?150164_
           _phi150165_
           _ctx150167_))))
    (define gx#core-bind-extern!
      (lambda _g157082_
        (let ((_g157081_ (##length _g157082_)))
          (cond ((##fx= _g157081_ 2)
                 (apply (lambda (_id150145_ _eid150146_)
                          (gx#core-bind-extern!__0 _id150145_ _eid150146_))
                        _g157082_))
                ((##fx= _g157081_ 3)
                 (apply (lambda (_id150154_ _eid150155_ _rebind?150156_)
                          (gx#core-bind-extern!__1
                           _id150154_
                           _eid150155_
                           _rebind?150156_))
                        _g157082_))
                ((##fx= _g157081_ 4)
                 (apply (lambda (_id150162_
                                 _eid150163_
                                 _rebind?150164_
                                 _phi150165_)
                          (gx#core-bind-extern!__2
                           _id150162_
                           _eid150163_
                           _rebind?150164_
                           _phi150165_))
                        _g157082_))
                ((##fx= _g157081_ 5)
                 (apply (lambda (_id150169_
                                 _eid150170_
                                 _rebind?150171_
                                 _phi150172_
                                 _ctx150173_)
                          (gx#core-bind-extern!__%
                           _id150169_
                           _eid150170_
                           _rebind?150171_
                           _phi150172_
                           _ctx150173_))
                        _g157082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157082_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150090_ _e150091_ _rebind?150092_ _phi150093_ _ctx150094_)
        (gx#bind-identifier!__%
         _id150090_
         (let ((_key150099_ (gx#core-identifier-key _id150090_))
               (_e150100_
                (if (or (##structure-instance-of? _e150091_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150091_
                         'gx#expander-context::t))
                    _e150091_
                    (##structure
                     gx#user-expander::t
                     _e150091_
                     _ctx150094_
                     _phi150093_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150099_ '#t _phi150093_ _ctx150094_)
            _key150099_
            _phi150093_
            _e150100_))
         _rebind?150092_
         _phi150093_
         _ctx150094_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150105_ _e150106_)
        (let* ((_rebind?150108_ '#f)
               (_phi150110_ (gx#current-expander-phi))
               (_ctx150112_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150105_
           _e150106_
           _rebind?150108_
           _phi150110_
           _ctx150112_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150114_ _e150115_ _rebind?150116_)
        (let* ((_phi150118_ (gx#current-expander-phi))
               (_ctx150120_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150114_
           _e150115_
           _rebind?150116_
           _phi150118_
           _ctx150120_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150122_ _e150123_ _rebind?150124_ _phi150125_)
        (let ((_ctx150127_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150122_
           _e150123_
           _rebind?150124_
           _phi150125_
           _ctx150127_))))
    (define gx#core-bind-syntax!
      (lambda _g157084_
        (let ((_g157083_ (##length _g157084_)))
          (cond ((##fx= _g157083_ 2)
                 (apply (lambda (_id150105_ _e150106_)
                          (gx#core-bind-syntax!__0 _id150105_ _e150106_))
                        _g157084_))
                ((##fx= _g157083_ 3)
                 (apply (lambda (_id150114_ _e150115_ _rebind?150116_)
                          (gx#core-bind-syntax!__1
                           _id150114_
                           _e150115_
                           _rebind?150116_))
                        _g157084_))
                ((##fx= _g157083_ 4)
                 (apply (lambda (_id150122_
                                 _e150123_
                                 _rebind?150124_
                                 _phi150125_)
                          (gx#core-bind-syntax!__2
                           _id150122_
                           _e150123_
                           _rebind?150124_
                           _phi150125_))
                        _g157084_))
                ((##fx= _g157083_ 5)
                 (apply (lambda (_id150129_
                                 _e150130_
                                 _rebind?150131_
                                 _phi150132_
                                 _ctx150133_)
                          (gx#core-bind-syntax!__%
                           _id150129_
                           _e150130_
                           _rebind?150131_
                           _phi150132_
                           _ctx150133_))
                        _g157084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157084_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150073_ _e150074_ _rebind?150075_)
        (gx#core-bind-syntax!__%
         _id150073_
         _e150074_
         _rebind?150075_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150080_ _e150081_)
        (let ((_rebind?150083_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150080_
           _e150081_
           _rebind?150083_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157086_
        (let ((_g157085_ (##length _g157086_)))
          (cond ((##fx= _g157085_ 2)
                 (apply (lambda (_id150080_ _e150081_)
                          (gx#core-bind-root-syntax!__0 _id150080_ _e150081_))
                        _g157086_))
                ((##fx= _g157085_ 3)
                 (apply (lambda (_id150085_ _e150086_ _rebind?150087_)
                          (gx#core-bind-root-syntax!__%
                           _id150085_
                           _e150086_
                           _rebind?150087_))
                        _g157086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157086_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150031_
               _alias-id150032_
               _rebind?150033_
               _phi150034_
               _ctx150035_)
        (gx#bind-identifier!__%
         _id150031_
         (let ((_key150037_ (gx#core-identifier-key _id150031_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150037_ '#t _phi150034_ _ctx150035_)
            _key150037_
            _phi150034_
            _alias-id150032_))
         _rebind?150033_
         _phi150034_
         _ctx150035_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150042_ _alias-id150043_)
        (let* ((_rebind?150045_ '#f)
               (_phi150047_ (gx#current-expander-phi))
               (_ctx150049_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150042_
           _alias-id150043_
           _rebind?150045_
           _phi150047_
           _ctx150049_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150051_ _alias-id150052_ _rebind?150053_)
        (let* ((_phi150055_ (gx#current-expander-phi))
               (_ctx150057_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150051_
           _alias-id150052_
           _rebind?150053_
           _phi150055_
           _ctx150057_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150059_ _alias-id150060_ _rebind?150061_ _phi150062_)
        (let ((_ctx150064_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150059_
           _alias-id150060_
           _rebind?150061_
           _phi150062_
           _ctx150064_))))
    (define gx#core-bind-alias!
      (lambda _g157088_
        (let ((_g157087_ (##length _g157088_)))
          (cond ((##fx= _g157087_ 2)
                 (apply (lambda (_id150042_ _alias-id150043_)
                          (gx#core-bind-alias!__0 _id150042_ _alias-id150043_))
                        _g157088_))
                ((##fx= _g157087_ 3)
                 (apply (lambda (_id150051_ _alias-id150052_ _rebind?150053_)
                          (gx#core-bind-alias!__1
                           _id150051_
                           _alias-id150052_
                           _rebind?150053_))
                        _g157088_))
                ((##fx= _g157087_ 4)
                 (apply (lambda (_id150059_
                                 _alias-id150060_
                                 _rebind?150061_
                                 _phi150062_)
                          (gx#core-bind-alias!__2
                           _id150059_
                           _alias-id150060_
                           _rebind?150061_
                           _phi150062_))
                        _g157088_))
                ((##fx= _g157087_ 5)
                 (apply (lambda (_id150066_
                                 _alias-id150067_
                                 _rebind?150068_
                                 _phi150069_
                                 _ctx150070_)
                          (gx#core-bind-alias!__%
                           _id150066_
                           _alias-id150067_
                           _rebind?150068_
                           _phi150069_
                           _ctx150070_))
                        _g157088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157088_))))))
    (define gx#make-binding-id__%
      (lambda (_key149988_ _syntax?149989_ _phi149990_ _ctx149991_)
        (if (uninterned-symbol? _key149988_)
            (gensym 'L)
            (if (pair? _key149988_)
                (gensym (car _key149988_))
                (if (##structure-instance-of? _ctx149991_ 'gx#top-context::t)
                    (let ((_ns149993_
                           (gx#core-context-namespace__% _ctx149991_)))
                      (if (and (fxzero? _phi149990_) (not _syntax?149989_))
                          (if _ns149993_
                              (make-symbol__1 _ns149993_ '"#" _key149988_)
                              _key149988_)
                          (if _syntax?149989_
                              (make-symbol__1
                               (let ((_$e149995_ _ns149993_))
                                 (if _$e149995_ _$e149995_ '""))
                               '"[:"
                               (number->string _phi149990_)
                               '":]#"
                               _key149988_)
                              (make-symbol__1
                               (let ((_$e149998_ _ns149993_))
                                 (if _$e149998_ _$e149998_ '""))
                               '"["
                               (number->string _phi149990_)
                               '"]#"
                               _key149988_))))
                    (gensym _key149988_))))))
    (define gx#make-binding-id__0
      (lambda (_key150004_)
        (let* ((_syntax?150006_ '#f)
               (_phi150008_ (gx#current-expander-phi))
               (_ctx150010_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150004_
           _syntax?150006_
           _phi150008_
           _ctx150010_))))
    (define gx#make-binding-id__1
      (lambda (_key150012_ _syntax?150013_)
        (let* ((_phi150015_ (gx#current-expander-phi))
               (_ctx150017_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150012_
           _syntax?150013_
           _phi150015_
           _ctx150017_))))
    (define gx#make-binding-id__2
      (lambda (_key150019_ _syntax?150020_ _phi150021_)
        (let ((_ctx150023_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150019_
           _syntax?150020_
           _phi150021_
           _ctx150023_))))
    (define gx#make-binding-id
      (lambda _g157090_
        (let ((_g157089_ (##length _g157090_)))
          (cond ((##fx= _g157089_ 1)
                 (apply (lambda (_key150004_)
                          (gx#make-binding-id__0 _key150004_))
                        _g157090_))
                ((##fx= _g157089_ 2)
                 (apply (lambda (_key150012_ _syntax?150013_)
                          (gx#make-binding-id__1 _key150012_ _syntax?150013_))
                        _g157090_))
                ((##fx= _g157089_ 3)
                 (apply (lambda (_key150019_ _syntax?150020_ _phi150021_)
                          (gx#make-binding-id__2
                           _key150019_
                           _syntax?150020_
                           _phi150021_))
                        _g157090_))
                ((##fx= _g157089_ 4)
                 (apply (lambda (_key150025_
                                 _syntax?150026_
                                 _phi150027_
                                 _ctx150028_)
                          (gx#make-binding-id__%
                           _key150025_
                           _syntax?150026_
                           _phi150027_
                           _ctx150028_))
                        _g157090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157090_))))))))
