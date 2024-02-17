(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708202847)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152966_)
        (letrec ((_expand-special152968_
                  (lambda (_hd152970_ _K152971_ _rest152972_ _r152973_)
                    (_K152971_
                     _rest152972_
                     (cons (gx#core-expand-top _hd152970_) _r152973_)))))
          (gx#core-expand-block__0 _stx152966_ _expand-special152968_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152719_)
        (letrec ((_expand-special152721_
                  (lambda (_hd152841_ _K152842_ _rest152843_ _r152844_)
                    (let* ((_K152848_
                            (lambda (_e152846_)
                              (_K152842_
                               _rest152843_
                               (cons _e152846_ _r152844_))))
                           (_e152849152878_ _hd152841_)
                           (_E152873152882_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152849152878_)))
                           (_E152869152894_
                            (lambda ()
                              (if (gx#stx-pair? _e152849152878_)
                                  (let ((_e152874152886_
                                         (gx#syntax-e _e152849152878_)))
                                    (let ((_hd152875152889_
                                           (##car _e152874152886_))
                                          (_tl152876152891_
                                           (##cdr _e152874152886_)))
                                      (if (and (gx#identifier?
                                                _hd152875152889_)
                                               (gx#core-identifier=?
                                                _hd152875152889_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152848_
                                               (gx#core-expand-define-runtime%
                                                _hd152841_))
                                              (_E152873152882_))
                                          (_E152873152882_))))
                                  (_E152873152882_))))
                           (_E152865152906_
                            (lambda ()
                              (if (gx#stx-pair? _e152849152878_)
                                  (let ((_e152870152898_
                                         (gx#syntax-e _e152849152878_)))
                                    (let ((_hd152871152901_
                                           (##car _e152870152898_))
                                          (_tl152872152903_
                                           (##cdr _e152870152898_)))
                                      (if (and (gx#identifier?
                                                _hd152871152901_)
                                               (gx#core-identifier=?
                                                _hd152871152901_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152848_
                                               (gx#core-expand-define-alias%
                                                _hd152841_))
                                              (_E152869152894_))
                                          (_E152869152894_))))
                                  (_E152869152894_))))
                           (_E152855152918_
                            (lambda ()
                              (if (gx#stx-pair? _e152849152878_)
                                  (let ((_e152866152910_
                                         (gx#syntax-e _e152849152878_)))
                                    (let ((_hd152867152913_
                                           (##car _e152866152910_))
                                          (_tl152868152915_
                                           (##cdr _e152866152910_)))
                                      (if (and (gx#identifier?
                                                _hd152867152913_)
                                               (gx#core-identifier=?
                                                _hd152867152913_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152848_
                                               (gx#core-expand-define-syntax%
                                                _hd152841_))
                                              (_E152865152906_))
                                          (_E152865152906_))))
                                  (_E152865152906_))))
                           (_E152851152950_
                            (lambda ()
                              (if (gx#stx-pair? _e152849152878_)
                                  (let ((_e152856152922_
                                         (gx#syntax-e _e152849152878_)))
                                    (let ((_hd152857152925_
                                           (##car _e152856152922_))
                                          (_tl152858152927_
                                           (##cdr _e152856152922_)))
                                      (if (and (gx#identifier?
                                                _hd152857152925_)
                                               (gx#core-identifier=?
                                                _hd152857152925_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152858152927_)
                                              (let ((_e152859152930_
                                                     (gx#syntax-e
                                                      _tl152858152927_)))
                                                (let ((_hd152860152933_
                                                       (##car _e152859152930_))
                                                      (_tl152861152935_
                                                       (##cdr _e152859152930_)))
                                                  (let ((_hd-bind152938_
                                                         _hd152860152933_))
                                                    (if (gx#stx-pair?
                                                         _tl152861152935_)
                                                        (let ((_e152862152940_
                                                               (gx#syntax-e
                                                                _tl152861152935_)))
                                                          (let ((_hd152863152943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152862152940_))
                        (_tl152864152945_ (##cdr _e152862152940_)))
                    (let ((_expr152948_ _hd152863152943_))
                      (if (gx#stx-null? _tl152864152945_)
                          (if (gx#core-bind-values? _hd-bind152938_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152938_)
                                (_K152848_ _hd152841_))
                              (_E152855152918_))
                          (_E152855152918_)))))
                (_E152855152918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152855152918_))
                                          (_E152855152918_))))
                                  (_E152855152918_))))
                           (_E152850152962_
                            (lambda ()
                              (if (gx#stx-pair? _e152849152878_)
                                  (let ((_e152852152954_
                                         (gx#syntax-e _e152849152878_)))
                                    (let ((_hd152853152957_
                                           (##car _e152852152954_))
                                          (_tl152854152959_
                                           (##cdr _e152852152954_)))
                                      (if (and (gx#identifier?
                                                _hd152853152957_)
                                               (gx#core-identifier=?
                                                _hd152853152957_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152848_
                                               (gx#core-expand-begin-syntax%
                                                _hd152841_))
                                              (_E152851152950_))
                                          (_E152851152950_))))
                                  (_E152851152950_)))))
                      (_E152850152962_))))
                 (_eval-body152722_
                  (lambda (_rbody152730_)
                    (let _lp152732_ ((_rest152734_ _rbody152730_)
                                     (_body152735_ '())
                                     (_ebody152736_ '()))
                      (let* ((_rest152737152745_ _rest152734_)
                             (_else152739152753_
                              (lambda ()
                                (values _body152735_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152736_)
                                          (gx#stx-source _stx152719_))))))
                             (_K152741152829_
                              (lambda (_rest152756_ _hd152757_)
                                (let* ((_e152758152775_ _hd152757_)
                                       (_E152770152779_
                                        (lambda ()
                                          (_lp152732_
                                           _rest152756_
                                           (cons _hd152757_ _body152735_)
                                           (cons _hd152757_ _ebody152736_))))
                                       (_E152760152791_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152758152775_)
                                              (let ((_e152771152783_
                                                     (gx#syntax-e
                                                      _e152758152775_)))
                                                (let ((_hd152772152786_
                                                       (##car _e152771152783_))
                                                      (_tl152773152788_
                                                       (##cdr _e152771152783_)))
                                                  (if (and (gx#identifier?
                                                            _hd152772152786_)
                                                           (gx#core-identifier=?
                                                            _hd152772152786_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152732_
                                                           _rest152756_
                                                           (cons _hd152757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152735_)
                   _ebody152736_)
                  (_E152770152779_))
              (_E152770152779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152770152779_))))
                                       (_E152759152825_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152758152775_)
                                              (let ((_e152761152795_
                                                     (gx#syntax-e
                                                      _e152758152775_)))
                                                (let ((_hd152762152798_
                                                       (##car _e152761152795_))
                                                      (_tl152763152800_
                                                       (##cdr _e152761152795_)))
                                                  (if (and (gx#identifier?
                                                            _hd152762152798_)
                                                           (gx#core-identifier=?
                                                            _hd152762152798_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152763152800_)
                                                          (let ((_e152764152803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152763152800_)))
                    (let ((_hd152765152806_ (##car _e152764152803_))
                          (_tl152766152808_ (##cdr _e152764152803_)))
                      (let ((_hd-bind152811_ _hd152765152806_))
                        (if (gx#stx-pair? _tl152766152808_)
                            (let ((_e152767152813_
                                   (gx#syntax-e _tl152766152808_)))
                              (let ((_hd152768152816_ (##car _e152767152813_))
                                    (_tl152769152818_ (##cdr _e152767152813_)))
                                (let ((_expr152821_ _hd152768152816_))
                                  (if (gx#stx-null? _tl152769152818_)
                                      (if '#t
                                          (let ((_ehd152823_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152811_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152821_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152757_))))
                                            (_lp152732_
                                             _rest152756_
                                             (cons _ehd152823_ _body152735_)
                                             (cons _ehd152823_ _ebody152736_)))
                                          (_E152760152791_))
                                      (_E152760152791_)))))
                            (_E152760152791_)))))
                  (_E152760152791_))
              (_E152760152791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152760152791_)))))
                                  (_E152759152825_)))))
                        (if (##pair? _rest152737152745_)
                            (let ((_hd152742152832_ (##car _rest152737152745_))
                                  (_tl152743152834_
                                   (##cdr _rest152737152745_)))
                              (let* ((_hd152837_ _hd152742152832_)
                                     (_rest152839_ _tl152743152834_))
                                (_K152741152829_ _rest152839_ _hd152837_)))
                            (_else152739152753_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152725_
                     (gx#core-expand-block__1
                      _stx152719_
                      _expand-special152721_
                      '#f))
                    (_g157056_ (_eval-body152722_ _rbody152725_)))
               (begin
                 (let ((_g157057_
                        (if (##values? _g157056_)
                            (##vector-length _g157056_)
                            1)))
                   (if (not (##fx= _g157057_ 2))
                       (error "Context expects 2 values" _g157057_)))
                 (let ((_expanded-body152727_ (##vector-ref _g157056_ 0))
                       (_value152728_ (##vector-ref _g157056_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152727_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152728_ '())))
                    (gx#stx-source _stx152719_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152689_)
        (let* ((_e152690152697_ _stx152689_)
               (_E152692152701_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152690152697_)))
               (_E152691152715_
                (lambda ()
                  (if (gx#stx-pair? _e152690152697_)
                      (let ((_e152693152705_ (gx#syntax-e _e152690152697_)))
                        (let ((_hd152694152708_ (##car _e152693152705_))
                              (_tl152695152710_ (##cdr _e152693152705_)))
                          (let ((_body152713_ _tl152695152710_))
                            (if (gx#stx-list? _body152713_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152713_)
                                 (gx#stx-source _stx152689_))
                                (_E152692152701_)))))
                      (_E152692152701_)))))
          (_E152691152715_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152687_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152687_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152633_)
        (let* ((_e152634152647_ _stx152633_)
               (_E152636152651_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152634152647_)))
               (_E152635152683_
                (lambda ()
                  (if (gx#stx-pair? _e152634152647_)
                      (let ((_e152637152655_ (gx#syntax-e _e152634152647_)))
                        (let ((_hd152638152658_ (##car _e152637152655_))
                              (_tl152639152660_ (##cdr _e152637152655_)))
                          (if (gx#stx-pair? _tl152639152660_)
                              (let ((_e152640152663_
                                     (gx#syntax-e _tl152639152660_)))
                                (let ((_hd152641152666_
                                       (##car _e152640152663_))
                                      (_tl152642152668_
                                       (##cdr _e152640152663_)))
                                  (let ((_ann152671_ _hd152641152666_))
                                    (if (gx#stx-pair? _tl152642152668_)
                                        (let ((_e152643152673_
                                               (gx#syntax-e _tl152642152668_)))
                                          (let ((_hd152644152676_
                                                 (##car _e152643152673_))
                                                (_tl152645152678_
                                                 (##cdr _e152643152673_)))
                                            (let ((_expr152681_
                                                   _hd152644152676_))
                                              (if (gx#stx-null?
                                                   _tl152645152678_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152681_)
                                 '())))
               (gx#stx-source _stx152633_))
              (_E152636152651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152636152651_)))))
                                        (_E152636152651_)))))
                              (_E152636152651_))))
                      (_E152636152651_)))))
          (_E152635152683_))))
    (define gx#core-expand-local-block
      (lambda (_stx152357_ _body152358_)
        (letrec ((_expand-special152360_
                  (lambda (_hd152628_ _K152629_ _rest152630_ _r152631_)
                    (_K152629_
                     '()
                     (cons (_expand-internal152361_ _hd152628_ _rest152630_)
                           _r152631_))))
                 (_expand-internal152361_
                  (lambda (_hd152624_ _rest152625_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152363_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152624_ _rest152625_))
                          (gx#stx-source _stx152357_))
                         _expand-internal-special152362_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157050
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157050)
                       __obj157050))))
                 (_expand-internal-special152362_
                  (lambda (_hd152519_ _K152520_ _rest152521_ _r152522_)
                    (let* ((_e152523152548_ _hd152519_)
                           (_E152543152552_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152523152548_)))
                           (_E152539152564_
                            (lambda ()
                              (if (gx#stx-pair? _e152523152548_)
                                  (let ((_e152544152556_
                                         (gx#syntax-e _e152523152548_)))
                                    (let ((_hd152545152559_
                                           (##car _e152544152556_))
                                          (_tl152546152561_
                                           (##cdr _e152544152556_)))
                                      (if (and (gx#identifier?
                                                _hd152545152559_)
                                               (gx#core-identifier=?
                                                _hd152545152559_
                                                '%#declare))
                                          (if '#t
                                              (_K152520_
                                               _rest152521_
                                               (cons (gx#core-expand-declare%
                                                      _hd152519_)
                                                     _r152522_))
                                              (_E152543152552_))
                                          (_E152543152552_))))
                                  (_E152543152552_))))
                           (_E152535152576_
                            (lambda ()
                              (if (gx#stx-pair? _e152523152548_)
                                  (let ((_e152540152568_
                                         (gx#syntax-e _e152523152548_)))
                                    (let ((_hd152541152571_
                                           (##car _e152540152568_))
                                          (_tl152542152573_
                                           (##cdr _e152540152568_)))
                                      (if (and (gx#identifier?
                                                _hd152541152571_)
                                               (gx#core-identifier=?
                                                _hd152541152571_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152519_)
                                                (_K152520_
                                                 _rest152521_
                                                 _r152522_))
                                              (_E152539152564_))
                                          (_E152539152564_))))
                                  (_E152539152564_))))
                           (_E152525152588_
                            (lambda ()
                              (if (gx#stx-pair? _e152523152548_)
                                  (let ((_e152536152580_
                                         (gx#syntax-e _e152523152548_)))
                                    (let ((_hd152537152583_
                                           (##car _e152536152580_))
                                          (_tl152538152585_
                                           (##cdr _e152536152580_)))
                                      (if (and (gx#identifier?
                                                _hd152537152583_)
                                               (gx#core-identifier=?
                                                _hd152537152583_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152519_)
                                                (_K152520_
                                                 _rest152521_
                                                 _r152522_))
                                              (_E152535152576_))
                                          (_E152535152576_))))
                                  (_E152535152576_))))
                           (_E152524152620_
                            (lambda ()
                              (if (gx#stx-pair? _e152523152548_)
                                  (let ((_e152526152592_
                                         (gx#syntax-e _e152523152548_)))
                                    (let ((_hd152527152595_
                                           (##car _e152526152592_))
                                          (_tl152528152597_
                                           (##cdr _e152526152592_)))
                                      (if (and (gx#identifier?
                                                _hd152527152595_)
                                               (gx#core-identifier=?
                                                _hd152527152595_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152528152597_)
                                              (let ((_e152529152600_
                                                     (gx#syntax-e
                                                      _tl152528152597_)))
                                                (let ((_hd152530152603_
                                                       (##car _e152529152600_))
                                                      (_tl152531152605_
                                                       (##cdr _e152529152600_)))
                                                  (let ((_hd-bind152608_
                                                         _hd152530152603_))
                                                    (if (gx#stx-pair?
                                                         _tl152531152605_)
                                                        (let ((_e152532152610_
                                                               (gx#syntax-e
                                                                _tl152531152605_)))
                                                          (let ((_hd152533152613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152532152610_))
                        (_tl152534152615_ (##cdr _e152532152610_)))
                    (let ((_expr152618_ _hd152533152613_))
                      (if (gx#stx-null? _tl152534152615_)
                          (if (gx#core-bind-values? _hd-bind152608_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152608_)
                                (_K152520_
                                 _rest152521_
                                 (cons _hd152519_ _r152522_)))
                              (_E152525152588_))
                          (_E152525152588_)))))
                (_E152525152588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152525152588_))
                                          (_E152525152588_))))
                                  (_E152525152588_)))))
                      (_E152524152620_))))
                 (_wrap-internal152363_
                  (lambda (_rbody152365_)
                    (let _lp152367_ ((_rest152369_ _rbody152365_)
                                     (_decls152370_ '())
                                     (_bind152371_ '())
                                     (_body152372_ '()))
                      (let* ((_e152373152380_ _rest152369_)
                             (_E152375152429_
                              (lambda ()
                                (let* ((_body152424_
                                        (let* ((_body152383152393_
                                                _body152372_)
                                               (_else152386152401_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152372_)
                                                   (gx#stx-source
                                                    _stx152357_)))))
                                          (let ((_K152391152421_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152357_)))
                                                (_K152388152407_
                                                 (lambda (_expr152405_)
                                                   _expr152405_)))
                                            (let ((_try-match152385152417_
                                                   (lambda ()
                                                     (if (##pair? _body152383152393_)
                                                         (let ((_tl152390152412_
                                                                (##cdr _body152383152393_))
                                                               (_hd152389152410_
                                                                (##car _body152383152393_)))
                                                           (if (##null? _tl152390152412_)
                                                               (let ((_expr152415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152389152410_))
                         (_K152388152407_ _expr152415_))
                       (_else152386152401_)))
                 (_else152386152401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152383152393_)
                                                  (_K152391152421_)
                                                  (_try-match152385152417_))))))
                                       (_body152426_
                                        (if (null? _bind152371_)
                                            _body152424_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152371_
                                                         (cons _body152424_
                                                               '())))
                                             (gx#stx-source _stx152357_)))))
                                  (if (null? _decls152370_)
                                      _body152426_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152370_
                                                   (cons _body152426_ '())))
                                       (gx#stx-source _stx152357_))))))
                             (_E152374152515_
                              (lambda ()
                                (if (gx#stx-pair? _e152373152380_)
                                    (let ((_e152376152433_
                                           (gx#syntax-e _e152373152380_)))
                                      (let ((_hd152377152436_
                                             (##car _e152376152433_))
                                            (_tl152378152438_
                                             (##cdr _e152376152433_)))
                                        (let* ((_hd152441_ _hd152377152436_)
                                               (_rest152443_ _tl152378152438_))
                                          (if '#t
                                              (let* ((_e152444152461_
                                                      _hd152441_)
                                                     (_E152456152465_
                                                      (lambda ()
                                                        (if (null? _bind152371_)
                                                            (_lp152367_
                                                             _rest152443_
                                                             _decls152370_
                                                             _bind152371_
                                                             (cons _hd152441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152372_))
                    (_lp152367_
                     _rest152443_
                     _decls152370_
                     (cons (cons '#f (cons _hd152441_ '())) _bind152371_)
                     _body152372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152446152479_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152444152461_)
                                                            (let ((_e152457152469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152444152461_)))
                      (let ((_hd152458152472_ (##car _e152457152469_))
                            (_tl152459152474_ (##cdr _e152457152469_)))
                        (if (and (gx#identifier? _hd152458152472_)
                                 (gx#core-identifier=?
                                  _hd152458152472_
                                  '%#declare))
                            (let ((_xdecls152477_ _tl152459152474_))
                              (if '#t
                                  (_lp152367_
                                   _rest152443_
                                   (gx#stx-foldr
                                    cons
                                    _decls152370_
                                    _xdecls152477_)
                                   _bind152371_
                                   _body152372_)
                                  (_E152456152465_)))
                            (_E152456152465_))))
                    (_E152456152465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152445152511_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152444152461_)
                                                            (let ((_e152447152483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152444152461_)))
                      (let ((_hd152448152486_ (##car _e152447152483_))
                            (_tl152449152488_ (##cdr _e152447152483_)))
                        (if (and (gx#identifier? _hd152448152486_)
                                 (gx#core-identifier=?
                                  _hd152448152486_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152449152488_)
                                (let ((_e152450152491_
                                       (gx#syntax-e _tl152449152488_)))
                                  (let ((_hd152451152494_
                                         (##car _e152450152491_))
                                        (_tl152452152496_
                                         (##cdr _e152450152491_)))
                                    (let ((_hd-bind152499_ _hd152451152494_))
                                      (if (gx#stx-pair? _tl152452152496_)
                                          (let ((_e152453152501_
                                                 (gx#syntax-e
                                                  _tl152452152496_)))
                                            (let ((_hd152454152504_
                                                   (##car _e152453152501_))
                                                  (_tl152455152506_
                                                   (##cdr _e152453152501_)))
                                              (let ((_expr152509_
                                                     _hd152454152504_))
                                                (if (gx#stx-null?
                                                     _tl152455152506_)
                                                    (if '#t
                                                        (_lp152367_
                                                         _rest152443_
                                                         _decls152370_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152499_)
                             (cons (gx#core-expand-expression _expr152509_)
                                   '()))
                       _bind152371_)
                 _body152372_)
                (_E152446152479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152446152479_)))))
                                          (_E152446152479_)))))
                                (_E152446152479_))
                            (_E152446152479_))))
                    (_E152446152479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152445152511_))
                                              (_E152375152429_)))))
                                    (_E152375152429_)))))
                        (_E152374152515_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152358_)
            (gx#stx-source _stx152357_))
           _expand-special152360_))))
    (define gx#core-expand-declare%
      (lambda (_stx152295_)
        (let* ((_e152296152303_ _stx152295_)
               (_E152298152307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152296152303_)))
               (_E152297152353_
                (lambda ()
                  (if (gx#stx-pair? _e152296152303_)
                      (let ((_e152299152311_ (gx#syntax-e _e152296152303_)))
                        (let ((_hd152300152314_ (##car _e152299152311_))
                              (_tl152301152316_ (##cdr _e152299152311_)))
                          (let ((_body152319_ _tl152301152316_))
                            (if (gx#stx-list? _body152319_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152321_)
                                     (let* ((_e152322152329_ _decl152321_)
                                            (_E152324152333_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152322152329_)))
                                            (_E152323152349_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152322152329_)
                                                   (let ((_e152325152337_
                                                          (gx#syntax-e
                                                           _e152322152329_)))
                                                     (let ((_hd152326152340_
                                                            (##car _e152325152337_))
                                                           (_tl152327152342_
                                                            (##cdr _e152325152337_)))
                                                       (let* ((_head152345_
                                                               _hd152326152340_)
                                                              (_args152347_
                                                               _tl152327152342_))
                                                         (if (gx#stx-list?
                                                              _args152347_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152321_)
                                                             (_E152324152333_)))))
                                                   (_E152324152333_)))))
                                       (_E152323152349_)))
                                   _body152319_))
                                 (gx#stx-source _stx152295_))
                                (_E152298152307_)))))
                      (_E152298152307_)))))
          (_E152297152353_))))
    (define gx#core-expand-extern%
      (lambda (_stx152199_)
        (let* ((_e152200152207_ _stx152199_)
               (_E152202152211_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152200152207_)))
               (_E152201152291_
                (lambda ()
                  (if (gx#stx-pair? _e152200152207_)
                      (let ((_e152203152215_ (gx#syntax-e _e152200152207_)))
                        (let ((_hd152204152218_ (##car _e152203152215_))
                              (_tl152205152220_ (##cdr _e152203152215_)))
                          (let ((_body152223_ _tl152205152220_))
                            (if '#t
                                (let _lp152225_ ((_rest152227_ _body152223_)
                                                 (_r152228_ '()))
                                  (let* ((_e152229152243_ _rest152227_)
                                         (_E152241152247_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152199_)))
                                         (_E152231152251_
                                          (lambda ()
                                            (if (gx#stx-null? _e152229152243_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152228_))
                                                     (gx#stx-source
                                                      _stx152199_))
                                                    (_E152241152247_))
                                                (_E152241152247_))))
                                         (_E152230152287_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152229152243_)
                                                (let ((_e152232152255_
                                                       (gx#syntax-e
                                                        _e152229152243_)))
                                                  (let ((_hd152233152258_
                                                         (##car _e152232152255_))
                                                        (_tl152234152260_
                                                         (##cdr _e152232152255_)))
                                                    (if (gx#stx-pair?
                                                         _hd152233152258_)
                                                        (let ((_e152235152263_
                                                               (gx#syntax-e
                                                                _hd152233152258_)))
                                                          (let ((_hd152236152266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152235152263_))
                        (_tl152237152268_ (##cdr _e152235152263_)))
                    (let ((_id152271_ _hd152236152266_))
                      (if (gx#stx-pair? _tl152237152268_)
                          (let ((_e152238152273_
                                 (gx#syntax-e _tl152237152268_)))
                            (let ((_hd152239152276_ (##car _e152238152273_))
                                  (_tl152240152278_ (##cdr _e152238152273_)))
                              (let ((_eid152281_ _hd152239152276_))
                                (if (gx#stx-null? _tl152240152278_)
                                    (let ((_rest152283_ _tl152234152260_))
                                      (if (and (gx#identifier? _id152271_)
                                               (gx#identifier? _eid152281_))
                                          (let ((_eid152285_
                                                 (gx#stx-e _eid152281_)))
                                            (gx#core-bind-extern!__0
                                             _id152271_
                                             _eid152285_)
                                            (_lp152225_
                                             _rest152283_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152271_)
                                                         (cons _eid152285_
                                                               '()))
                                                   _r152228_)))
                                          (_E152231152251_)))
                                    (_E152231152251_)))))
                          (_E152231152251_)))))
                (_E152231152251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152231152251_)))))
                                    (_E152230152287_)))
                                (_E152202152211_)))))
                      (_E152202152211_)))))
          (_E152201152291_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152145_)
        (let* ((_e152146152159_ _stx152145_)
               (_E152148152163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152146152159_)))
               (_E152147152195_
                (lambda ()
                  (if (gx#stx-pair? _e152146152159_)
                      (let ((_e152149152167_ (gx#syntax-e _e152146152159_)))
                        (let ((_hd152150152170_ (##car _e152149152167_))
                              (_tl152151152172_ (##cdr _e152149152167_)))
                          (if (gx#stx-pair? _tl152151152172_)
                              (let ((_e152152152175_
                                     (gx#syntax-e _tl152151152172_)))
                                (let ((_hd152153152178_
                                       (##car _e152152152175_))
                                      (_tl152154152180_
                                       (##cdr _e152152152175_)))
                                  (let ((_hd152183_ _hd152153152178_))
                                    (if (gx#stx-pair? _tl152154152180_)
                                        (let ((_e152155152185_
                                               (gx#syntax-e _tl152154152180_)))
                                          (let ((_hd152156152188_
                                                 (##car _e152155152185_))
                                                (_tl152157152190_
                                                 (##cdr _e152155152185_)))
                                            (let ((_expr152193_
                                                   _hd152156152188_))
                                              (if (gx#stx-null?
                                                   _tl152157152190_)
                                                  (if (gx#core-bind-values?
                                                       _hd152183_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152183_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152183_)
                             (cons (gx#core-expand-expression _expr152193_)
                                   '())))
                 (gx#stx-source _stx152145_)))
              (_E152148152163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152148152163_)))))
                                        (_E152148152163_)))))
                              (_E152148152163_))))
                      (_E152148152163_)))))
          (_E152147152195_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152089_)
        (let* ((_e152090152103_ _stx152089_)
               (_E152092152107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152090152103_)))
               (_E152091152141_
                (lambda ()
                  (if (gx#stx-pair? _e152090152103_)
                      (let ((_e152093152111_ (gx#syntax-e _e152090152103_)))
                        (let ((_hd152094152114_ (##car _e152093152111_))
                              (_tl152095152116_ (##cdr _e152093152111_)))
                          (if (gx#stx-pair? _tl152095152116_)
                              (let ((_e152096152119_
                                     (gx#syntax-e _tl152095152116_)))
                                (let ((_hd152097152122_
                                       (##car _e152096152119_))
                                      (_tl152098152124_
                                       (##cdr _e152096152119_)))
                                  (let ((_id152127_ _hd152097152122_))
                                    (if (gx#stx-pair? _tl152098152124_)
                                        (let ((_e152099152129_
                                               (gx#syntax-e _tl152098152124_)))
                                          (let ((_hd152100152132_
                                                 (##car _e152099152129_))
                                                (_tl152101152134_
                                                 (##cdr _e152099152129_)))
                                            (let ((_binding-id152137_
                                                   _hd152100152132_))
                                              (if (gx#stx-null?
                                                   _tl152101152134_)
                                                  (if (and (gx#identifier?
                                                            _id152127_)
                                                           (gx#identifier?
                                                            _binding-id152137_))
                                                      (let ((_eid152139_
                                                             (gx#stx-e
                                                              _binding-id152137_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152127_
                                                         _eid152139_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152127_)
                             (cons _eid152139_ '())))))
              (_E152092152107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152092152107_)))))
                                        (_E152092152107_)))))
                              (_E152092152107_))))
                      (_E152092152107_)))))
          (_E152091152141_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152032_)
        (let* ((_e152033152046_ _stx152032_)
               (_E152035152050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152033152046_)))
               (_E152034152085_
                (lambda ()
                  (if (gx#stx-pair? _e152033152046_)
                      (let ((_e152036152054_ (gx#syntax-e _e152033152046_)))
                        (let ((_hd152037152057_ (##car _e152036152054_))
                              (_tl152038152059_ (##cdr _e152036152054_)))
                          (if (gx#stx-pair? _tl152038152059_)
                              (let ((_e152039152062_
                                     (gx#syntax-e _tl152038152059_)))
                                (let ((_hd152040152065_
                                       (##car _e152039152062_))
                                      (_tl152041152067_
                                       (##cdr _e152039152062_)))
                                  (let ((_id152070_ _hd152040152065_))
                                    (if (gx#stx-pair? _tl152041152067_)
                                        (let ((_e152042152072_
                                               (gx#syntax-e _tl152041152067_)))
                                          (let ((_hd152043152075_
                                                 (##car _e152042152072_))
                                                (_tl152044152077_
                                                 (##cdr _e152042152072_)))
                                            (let ((_expr152080_
                                                   _hd152043152075_))
                                              (if (gx#stx-null?
                                                   _tl152044152077_)
                                                  (if (gx#identifier?
                                                       _id152070_)
                                                      (let ((_g157058_
                                                             (gx#core-expand-expression+1
                                                              _expr152080_)))
                                                        (begin
                                                          (let ((_g157059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157058_)
                             (##vector-length _g157058_)
                             1)))
                    (if (not (##fx= _g157059_ 2))
                        (error "Context expects 2 values" _g157059_)))
                  (let ((_e-stx152082_ (##vector-ref _g157058_ 0))
                        (_e152083_ (##vector-ref _g157058_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152070_ _e152083_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152070_)
                                   (cons _e-stx152082_ '())))
                       (gx#stx-source _stx152032_))))))
              (_E152035152050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152035152050_)))))
                                        (_E152035152050_)))))
                              (_E152035152050_))))
                      (_E152035152050_)))))
          (_E152034152085_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151976_)
        (let* ((_e151977151990_ _stx151976_)
               (_E151979151994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151977151990_)))
               (_E151978152028_
                (lambda ()
                  (if (gx#stx-pair? _e151977151990_)
                      (let ((_e151980151998_ (gx#syntax-e _e151977151990_)))
                        (let ((_hd151981152001_ (##car _e151980151998_))
                              (_tl151982152003_ (##cdr _e151980151998_)))
                          (if (gx#stx-pair? _tl151982152003_)
                              (let ((_e151983152006_
                                     (gx#syntax-e _tl151982152003_)))
                                (let ((_hd151984152009_
                                       (##car _e151983152006_))
                                      (_tl151985152011_
                                       (##cdr _e151983152006_)))
                                  (let ((_id152014_ _hd151984152009_))
                                    (if (gx#stx-pair? _tl151985152011_)
                                        (let ((_e151986152016_
                                               (gx#syntax-e _tl151985152011_)))
                                          (let ((_hd151987152019_
                                                 (##car _e151986152016_))
                                                (_tl151988152021_
                                                 (##cdr _e151986152016_)))
                                            (let ((_alias-id152024_
                                                   _hd151987152019_))
                                              (if (gx#stx-null?
                                                   _tl151988152021_)
                                                  (if (and (gx#identifier?
                                                            _id152014_)
                                                           (gx#identifier?
                                                            _alias-id152024_))
                                                      (let ((_alias-id152026_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152024_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152014_
                                                         _alias-id152026_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152014_)
                             (cons _alias-id152026_ '())))))
              (_E151979151994_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151979151994_)))))
                                        (_E151979151994_)))))
                              (_E151979151994_))))
                      (_E151979151994_)))))
          (_E151978152028_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151919_ _wrap?151920_)
        (let* ((_e151921151931_ _stx151919_)
               (_E151923151935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151921151931_)))
               (_E151922151962_
                (lambda ()
                  (if (gx#stx-pair? _e151921151931_)
                      (let ((_e151924151939_ (gx#syntax-e _e151921151931_)))
                        (let ((_hd151925151942_ (##car _e151924151939_))
                              (_tl151926151944_ (##cdr _e151924151939_)))
                          (if (gx#stx-pair? _tl151926151944_)
                              (let ((_e151927151947_
                                     (gx#syntax-e _tl151926151944_)))
                                (let ((_hd151928151950_
                                       (##car _e151927151947_))
                                      (_tl151929151952_
                                       (##cdr _e151927151947_)))
                                  (let* ((_hd151955_ _hd151928151950_)
                                         (_body151957_ _tl151929151952_))
                                    (if (gx#core-bind-values? _hd151955_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151955_)
                                           (let ((_body151960_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151955_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151919_
                                                               _body151957_)
                                                              '()))))
                                             (if _wrap?151920_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151960_)
                                                  (gx#stx-source _stx151919_))
                                                 _body151960_)))
                                         gx#current-expander-context
                                         (let ((__obj157051
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157051)
                                           __obj157051))
                                        (_E151923151935_)))))
                              (_E151923151935_))))
                      (_E151923151935_)))))
          (_E151922151962_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151969_)
        (let ((_wrap?151971_ '#t))
          (gx#core-expand-lambda%__% _stx151969_ _wrap?151971_))))
    (define gx#core-expand-lambda%
      (lambda _g157061_
        (let ((_g157060_ (##length _g157061_)))
          (cond ((##fx= _g157060_ 1)
                 (apply (lambda (_stx151969_)
                          (gx#core-expand-lambda%__0 _stx151969_))
                        _g157061_))
                ((##fx= _g157060_ 2)
                 (apply (lambda (_stx151973_ _wrap?151974_)
                          (gx#core-expand-lambda%__%
                           _stx151973_
                           _wrap?151974_))
                        _g157061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157061_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151883_)
        (let* ((_e151884151891_ _stx151883_)
               (_E151886151895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151884151891_)))
               (_E151885151914_
                (lambda ()
                  (if (gx#stx-pair? _e151884151891_)
                      (let ((_e151887151899_ (gx#syntax-e _e151884151891_)))
                        (let ((_hd151888151902_ (##car _e151887151899_))
                              (_tl151889151904_ (##cdr _e151887151899_)))
                          (let ((_clauses151907_ _tl151889151904_))
                            (if (gx#stx-list? _clauses151907_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151909_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151909_)
                                       (let ((_$e151911_
                                              (gx#stx-source _clause151909_)))
                                         (if _$e151911_
                                             _$e151911_
                                             (gx#stx-source _stx151883_))))
                                      '#f))
                                   _clauses151907_))
                                 (gx#stx-source _stx151883_))
                                (_E151886151895_)))))
                      (_E151886151895_)))))
          (_E151885151914_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151837_)
        (let* ((_e151838151848_ _stx151837_)
               (_E151840151852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151838151848_)))
               (_E151839151879_
                (lambda ()
                  (if (gx#stx-pair? _e151838151848_)
                      (let ((_e151841151856_ (gx#syntax-e _e151838151848_)))
                        (let ((_hd151842151859_ (##car _e151841151856_))
                              (_tl151843151861_ (##cdr _e151841151856_)))
                          (if (gx#stx-pair? _tl151843151861_)
                              (let ((_e151844151864_
                                     (gx#syntax-e _tl151843151861_)))
                                (let ((_hd151845151867_
                                       (##car _e151844151864_))
                                      (_tl151846151869_
                                       (##cdr _e151844151864_)))
                                  (let* ((_hd151872_ _hd151845151867_)
                                         (_body151874_ _tl151846151869_))
                                    (if (gx#core-expand-let-bind? _hd151872_)
                                        (let ((_expressions151876_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151872_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151872_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151872_
                                                           _expressions151876_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151837_
                         _body151874_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151837_)))
                                           gx#current-expander-context
                                           (let ((__obj157052
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157052)
                                             __obj157052)))
                                        (_E151840151852_)))))
                              (_E151840151852_))))
                      (_E151840151852_)))))
          (_E151839151879_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151782_ _form151783_)
        (let* ((_e151784151794_ _stx151782_)
               (_E151786151798_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151784151794_)))
               (_E151785151823_
                (lambda ()
                  (if (gx#stx-pair? _e151784151794_)
                      (let ((_e151787151802_ (gx#syntax-e _e151784151794_)))
                        (let ((_hd151788151805_ (##car _e151787151802_))
                              (_tl151789151807_ (##cdr _e151787151802_)))
                          (if (gx#stx-pair? _tl151789151807_)
                              (let ((_e151790151810_
                                     (gx#syntax-e _tl151789151807_)))
                                (let ((_hd151791151813_
                                       (##car _e151790151810_))
                                      (_tl151792151815_
                                       (##cdr _e151790151810_)))
                                  (let* ((_hd151818_ _hd151791151813_)
                                         (_body151820_ _tl151792151815_))
                                    (if (gx#core-expand-let-bind? _hd151818_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151818_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151783_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151818_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151818_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151782_
                                                               _body151820_)
                                                              '())))
                                            (gx#stx-source _stx151782_)))
                                         gx#current-expander-context
                                         (let ((__obj157053
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157053)
                                           __obj157053))
                                        (_E151786151798_)))))
                              (_E151786151798_))))
                      (_E151786151798_)))))
          (_E151785151823_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151830_)
        (let ((_form151832_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151830_ _form151832_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157063_
        (let ((_g157062_ (##length _g157063_)))
          (cond ((##fx= _g157062_ 1)
                 (apply (lambda (_stx151830_)
                          (gx#core-expand-letrec-values%__0 _stx151830_))
                        _g157063_))
                ((##fx= _g157062_ 2)
                 (apply (lambda (_stx151834_ _form151835_)
                          (gx#core-expand-letrec-values%__%
                           _stx151834_
                           _form151835_))
                        _g157063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157063_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151779_)
        (gx#core-expand-letrec-values%__% _stx151779_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151736_)
        (if (gx#stx-list? _stx151736_)
            (gx#stx-andmap
             (lambda (_bind151738_)
               (let* ((_e151739151749_ _bind151738_)
                      (_E151741151753_ (lambda () '#f))
                      (_E151740151775_
                       (lambda ()
                         (if (gx#stx-pair? _e151739151749_)
                             (let ((_e151742151757_
                                    (gx#syntax-e _e151739151749_)))
                               (let ((_hd151743151760_ (##car _e151742151757_))
                                     (_tl151744151762_
                                      (##cdr _e151742151757_)))
                                 (let ((_hd151765_ _hd151743151760_))
                                   (if (gx#stx-pair? _tl151744151762_)
                                       (let ((_e151745151767_
                                              (gx#syntax-e _tl151744151762_)))
                                         (let ((_hd151746151770_
                                                (##car _e151745151767_))
                                               (_tl151747151772_
                                                (##cdr _e151745151767_)))
                                           (if (gx#stx-null? _tl151747151772_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151765_)
                                                   (_E151741151753_))
                                               (_E151741151753_))))
                                       (_E151741151753_)))))
                             (_E151741151753_)))))
                 (_E151740151775_)))
             _stx151736_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151695_)
        (let* ((_e151696151706_ _bind151695_)
               (_E151698151710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151696151706_)))
               (_E151697151732_
                (lambda ()
                  (if (gx#stx-pair? _e151696151706_)
                      (let ((_e151699151714_ (gx#syntax-e _e151696151706_)))
                        (let ((_hd151700151717_ (##car _e151699151714_))
                              (_tl151701151719_ (##cdr _e151699151714_)))
                          (if (gx#stx-pair? _tl151701151719_)
                              (let ((_e151702151722_
                                     (gx#syntax-e _tl151701151719_)))
                                (let ((_hd151703151725_
                                       (##car _e151702151722_))
                                      (_tl151704151727_
                                       (##cdr _e151702151722_)))
                                  (let ((_expr151730_ _hd151703151725_))
                                    (if (gx#stx-null? _tl151704151727_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151730_)
                                            (_E151698151710_))
                                        (_E151698151710_)))))
                              (_E151698151710_))))
                      (_E151698151710_)))))
          (_E151697151732_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151654_)
        (let* ((_e151655151665_ _bind151654_)
               (_E151657151669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151655151665_)))
               (_E151656151691_
                (lambda ()
                  (if (gx#stx-pair? _e151655151665_)
                      (let ((_e151658151673_ (gx#syntax-e _e151655151665_)))
                        (let ((_hd151659151676_ (##car _e151658151673_))
                              (_tl151660151678_ (##cdr _e151658151673_)))
                          (let ((_hd151681_ _hd151659151676_))
                            (if (gx#stx-pair? _tl151660151678_)
                                (let ((_e151661151683_
                                       (gx#syntax-e _tl151660151678_)))
                                  (let ((_hd151662151686_
                                         (##car _e151661151683_))
                                        (_tl151663151688_
                                         (##cdr _e151661151683_)))
                                    (if (gx#stx-null? _tl151663151688_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151681_)
                                            (_E151657151669_))
                                        (_E151657151669_))))
                                (_E151657151669_)))))
                      (_E151657151669_)))))
          (_E151656151691_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151612_ _expr151613_)
        (let* ((_e151614151624_ _bind151612_)
               (_E151616151628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151614151624_)))
               (_E151615151650_
                (lambda ()
                  (if (gx#stx-pair? _e151614151624_)
                      (let ((_e151617151632_ (gx#syntax-e _e151614151624_)))
                        (let ((_hd151618151635_ (##car _e151617151632_))
                              (_tl151619151637_ (##cdr _e151617151632_)))
                          (let ((_hd151640_ _hd151618151635_))
                            (if (gx#stx-pair? _tl151619151637_)
                                (let ((_e151620151642_
                                       (gx#syntax-e _tl151619151637_)))
                                  (let ((_hd151621151645_
                                         (##car _e151620151642_))
                                        (_tl151622151647_
                                         (##cdr _e151620151642_)))
                                    (if (gx#stx-null? _tl151622151647_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151640_)
                                                  (cons _expr151613_ '()))
                                            (_E151616151628_))
                                        (_E151616151628_))))
                                (_E151616151628_)))))
                      (_E151616151628_)))))
          (_E151615151650_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151566_)
        (let* ((_e151567151577_ _stx151566_)
               (_E151569151581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151567151577_)))
               (_E151568151608_
                (lambda ()
                  (if (gx#stx-pair? _e151567151577_)
                      (let ((_e151570151585_ (gx#syntax-e _e151567151577_)))
                        (let ((_hd151571151588_ (##car _e151570151585_))
                              (_tl151572151590_ (##cdr _e151570151585_)))
                          (if (gx#stx-pair? _tl151572151590_)
                              (let ((_e151573151593_
                                     (gx#syntax-e _tl151572151590_)))
                                (let ((_hd151574151596_
                                       (##car _e151573151593_))
                                      (_tl151575151598_
                                       (##cdr _e151573151593_)))
                                  (let* ((_hd151601_ _hd151574151596_)
                                         (_body151603_ _tl151575151598_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151601_)
                                        (let ((_expanders151605_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151601_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151601_
                                              _expanders151605_)
                                             (gx#core-expand-local-block
                                              _stx151566_
                                              _body151603_))
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
                                             __obj157054)))
                                        (_E151569151581_)))))
                              (_E151569151581_))))
                      (_E151569151581_)))))
          (_E151568151608_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151515_)
        (let* ((_e151516151526_ _stx151515_)
               (_E151518151530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151516151526_)))
               (_E151517151562_
                (lambda ()
                  (if (gx#stx-pair? _e151516151526_)
                      (let ((_e151519151534_ (gx#syntax-e _e151516151526_)))
                        (let ((_hd151520151537_ (##car _e151519151534_))
                              (_tl151521151539_ (##cdr _e151519151534_)))
                          (if (gx#stx-pair? _tl151521151539_)
                              (let ((_e151522151542_
                                     (gx#syntax-e _tl151521151539_)))
                                (let ((_hd151523151545_
                                       (##car _e151522151542_))
                                      (_tl151524151547_
                                       (##cdr _e151522151542_)))
                                  (let* ((_hd151550_ _hd151523151545_)
                                         (_body151552_ _tl151524151547_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151550_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151550_
                                            (make-list
                                             (gx#stx-length _hd151550_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151554151557_
                                                     _g151555151559_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151554151557_
                                               _g151555151559_
                                               '#t))
                                            _hd151550_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151550_))
                                           (gx#core-expand-local-block
                                            _stx151515_
                                            _body151552_))
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
                                           __obj157055))
                                        (_E151518151530_)))))
                              (_E151518151530_))))
                      (_E151518151530_)))))
          (_E151517151562_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151472_)
        (if (gx#stx-list? _stx151472_)
            (gx#stx-andmap
             (lambda (_bind151474_)
               (let* ((_e151475151485_ _bind151474_)
                      (_E151477151489_ (lambda () '#f))
                      (_E151476151511_
                       (lambda ()
                         (if (gx#stx-pair? _e151475151485_)
                             (let ((_e151478151493_
                                    (gx#syntax-e _e151475151485_)))
                               (let ((_hd151479151496_ (##car _e151478151493_))
                                     (_tl151480151498_
                                      (##cdr _e151478151493_)))
                                 (let ((_hd151501_ _hd151479151496_))
                                   (if (gx#stx-pair? _tl151480151498_)
                                       (let ((_e151481151503_
                                              (gx#syntax-e _tl151480151498_)))
                                         (let ((_hd151482151506_
                                                (##car _e151481151503_))
                                               (_tl151483151508_
                                                (##cdr _e151481151503_)))
                                           (if (gx#stx-null? _tl151483151508_)
                                               (if '#t
                                                   (gx#identifier? _hd151501_)
                                                   (_E151477151489_))
                                               (_E151477151489_))))
                                       (_E151477151489_)))))
                             (_E151477151489_)))))
                 (_E151476151511_)))
             _stx151472_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151429_)
        (let* ((_e151430151440_ _bind151429_)
               (_E151432151444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151430151440_)))
               (_E151431151468_
                (lambda ()
                  (if (gx#stx-pair? _e151430151440_)
                      (let ((_e151433151448_ (gx#syntax-e _e151430151440_)))
                        (let ((_hd151434151451_ (##car _e151433151448_))
                              (_tl151435151453_ (##cdr _e151433151448_)))
                          (if (gx#stx-pair? _tl151435151453_)
                              (let ((_e151436151456_
                                     (gx#syntax-e _tl151435151453_)))
                                (let ((_hd151437151459_
                                       (##car _e151436151456_))
                                      (_tl151438151461_
                                       (##cdr _e151436151456_)))
                                  (let ((_expr151464_ _hd151437151459_))
                                    (if (gx#stx-null? _tl151438151461_)
                                        (if '#t
                                            (let ((_g157064_
                                                   (gx#core-expand-expression+1
                                                    _expr151464_)))
                                              (begin
                                                (let ((_g157065_
                                                       (if (##values?
                                                            _g157064_)
                                                           (##vector-length
                                                            _g157064_)
                                                           1)))
                                                  (if (not (##fx= _g157065_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157065_)))
                                                (let ((_e151466_
                                                       (##vector-ref
                                                        _g157064_
                                                        1)))
                                                  _e151466_)))
                                            (_E151432151444_))
                                        (_E151432151444_)))))
                              (_E151432151444_))))
                      (_E151432151444_)))))
          (_E151431151468_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151374_ _e151375_ _rebind?151376_)
        (let* ((_e151377151387_ _bind151374_)
               (_E151379151391_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151377151387_)))
               (_E151378151413_
                (lambda ()
                  (if (gx#stx-pair? _e151377151387_)
                      (let ((_e151380151395_ (gx#syntax-e _e151377151387_)))
                        (let ((_hd151381151398_ (##car _e151380151395_))
                              (_tl151382151400_ (##cdr _e151380151395_)))
                          (let ((_id151403_ _hd151381151398_))
                            (if (gx#stx-pair? _tl151382151400_)
                                (let ((_e151383151405_
                                       (gx#syntax-e _tl151382151400_)))
                                  (let ((_hd151384151408_
                                         (##car _e151383151405_))
                                        (_tl151385151410_
                                         (##cdr _e151383151405_)))
                                    (if (gx#stx-null? _tl151385151410_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151403_
                                             _e151375_
                                             _rebind?151376_)
                                            (_E151379151391_))
                                        (_E151379151391_))))
                                (_E151379151391_)))))
                      (_E151379151391_)))))
          (_E151378151413_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151420_ _e151421_)
        (let ((_rebind?151423_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151420_
           _e151421_
           _rebind?151423_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157067_
        (let ((_g157066_ (##length _g157067_)))
          (cond ((##fx= _g157066_ 2)
                 (apply (lambda (_bind151420_ _e151421_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151420_
                           _e151421_))
                        _g157067_))
                ((##fx= _g157066_ 3)
                 (apply (lambda (_bind151425_ _e151426_ _rebind?151427_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151425_
                           _e151426_
                           _rebind?151427_))
                        _g157067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157067_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151332_)
        (let* ((_e151333151343_ _stx151332_)
               (_E151335151347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151333151343_)))
               (_E151334151369_
                (lambda ()
                  (if (gx#stx-pair? _e151333151343_)
                      (let ((_e151336151351_ (gx#syntax-e _e151333151343_)))
                        (let ((_hd151337151354_ (##car _e151336151351_))
                              (_tl151338151356_ (##cdr _e151336151351_)))
                          (if (gx#stx-pair? _tl151338151356_)
                              (let ((_e151339151359_
                                     (gx#syntax-e _tl151338151356_)))
                                (let ((_hd151340151362_
                                       (##car _e151339151359_))
                                      (_tl151341151364_
                                       (##cdr _e151339151359_)))
                                  (let ((_expr151367_ _hd151340151362_))
                                    (if (gx#stx-null? _tl151341151364_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151367_)
                                            (_E151335151347_))
                                        (_E151335151347_)))))
                              (_E151335151347_))))
                      (_E151335151347_)))))
          (_E151334151369_))))
    (define gx#core-expand-quote%
      (lambda (_stx151291_)
        (let* ((_e151292151302_ _stx151291_)
               (_E151294151306_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151292151302_)))
               (_E151293151328_
                (lambda ()
                  (if (gx#stx-pair? _e151292151302_)
                      (let ((_e151295151310_ (gx#syntax-e _e151292151302_)))
                        (let ((_hd151296151313_ (##car _e151295151310_))
                              (_tl151297151315_ (##cdr _e151295151310_)))
                          (if (gx#stx-pair? _tl151297151315_)
                              (let ((_e151298151318_
                                     (gx#syntax-e _tl151297151315_)))
                                (let ((_hd151299151321_
                                       (##car _e151298151318_))
                                      (_tl151300151323_
                                       (##cdr _e151298151318_)))
                                  (let ((_e151326_ _hd151299151321_))
                                    (if (gx#stx-null? _tl151300151323_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151326_)
                                                         '()))
                                             (gx#stx-source _stx151291_))
                                            (_E151294151306_))
                                        (_E151294151306_)))))
                              (_E151294151306_))))
                      (_E151294151306_)))))
          (_E151293151328_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151250_)
        (let* ((_e151251151261_ _stx151250_)
               (_E151253151265_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151251151261_)))
               (_E151252151287_
                (lambda ()
                  (if (gx#stx-pair? _e151251151261_)
                      (let ((_e151254151269_ (gx#syntax-e _e151251151261_)))
                        (let ((_hd151255151272_ (##car _e151254151269_))
                              (_tl151256151274_ (##cdr _e151254151269_)))
                          (if (gx#stx-pair? _tl151256151274_)
                              (let ((_e151257151277_
                                     (gx#syntax-e _tl151256151274_)))
                                (let ((_hd151258151280_
                                       (##car _e151257151277_))
                                      (_tl151259151282_
                                       (##cdr _e151257151277_)))
                                  (let ((_e151285_ _hd151258151280_))
                                    (if (gx#stx-null? _tl151259151282_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151285_)
                                                         '()))
                                             (gx#stx-source _stx151250_))
                                            (_E151253151265_))
                                        (_E151253151265_)))))
                              (_E151253151265_))))
                      (_E151253151265_)))))
          (_E151252151287_))))
    (define gx#core-expand-call%
      (lambda (_stx151207_)
        (let* ((_e151208151218_ _stx151207_)
               (_E151210151222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151208151218_)))
               (_E151209151246_
                (lambda ()
                  (if (gx#stx-pair? _e151208151218_)
                      (let ((_e151211151226_ (gx#syntax-e _e151208151218_)))
                        (let ((_hd151212151229_ (##car _e151211151226_))
                              (_tl151213151231_ (##cdr _e151211151226_)))
                          (if (gx#stx-pair? _tl151213151231_)
                              (let ((_e151214151234_
                                     (gx#syntax-e _tl151213151231_)))
                                (let ((_hd151215151237_
                                       (##car _e151214151234_))
                                      (_tl151216151239_
                                       (##cdr _e151214151234_)))
                                  (let* ((_rator151242_ _hd151215151237_)
                                         (_args151244_ _tl151216151239_))
                                    (if (gx#stx-list? _args151244_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151242_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151244_))
                                         (gx#stx-source _stx151207_))
                                        (_E151210151222_)))))
                              (_E151210151222_))))
                      (_E151210151222_)))))
          (_E151209151246_))))
    (define gx#core-expand-if%
      (lambda (_stx151140_)
        (let* ((_e151141151157_ _stx151140_)
               (_E151143151161_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151141151157_)))
               (_E151142151203_
                (lambda ()
                  (if (gx#stx-pair? _e151141151157_)
                      (let ((_e151144151165_ (gx#syntax-e _e151141151157_)))
                        (let ((_hd151145151168_ (##car _e151144151165_))
                              (_tl151146151170_ (##cdr _e151144151165_)))
                          (if (gx#stx-pair? _tl151146151170_)
                              (let ((_e151147151173_
                                     (gx#syntax-e _tl151146151170_)))
                                (let ((_hd151148151176_
                                       (##car _e151147151173_))
                                      (_tl151149151178_
                                       (##cdr _e151147151173_)))
                                  (let ((_test151181_ _hd151148151176_))
                                    (if (gx#stx-pair? _tl151149151178_)
                                        (let ((_e151150151183_
                                               (gx#syntax-e _tl151149151178_)))
                                          (let ((_hd151151151186_
                                                 (##car _e151150151183_))
                                                (_tl151152151188_
                                                 (##cdr _e151150151183_)))
                                            (let ((_K151191_ _hd151151151186_))
                                              (if (gx#stx-pair?
                                                   _tl151152151188_)
                                                  (let ((_e151153151193_
                                                         (gx#syntax-e
                                                          _tl151152151188_)))
                                                    (let ((_hd151154151196_
                                                           (##car _e151153151193_))
                                                          (_tl151155151198_
                                                           (##cdr _e151153151193_)))
                                                      (let ((_E151201_
                                                             _hd151154151196_))
                                                        (if (gx#stx-null?
                                                             _tl151155151198_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151181_)
                                     (cons (gx#core-expand-expression
                                            _K151191_)
                                           (cons (gx#core-expand-expression
                                                  _E151201_)
                                                 '()))))
                         (gx#stx-source _stx151140_))
                        (_E151143151161_))
                    (_E151143151161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151143151161_)))))
                                        (_E151143151161_)))))
                              (_E151143151161_))))
                      (_E151143151161_)))))
          (_E151142151203_))))
    (define gx#core-expand-ref%
      (lambda (_stx151099_)
        (let* ((_e151100151110_ _stx151099_)
               (_E151102151114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151100151110_)))
               (_E151101151136_
                (lambda ()
                  (if (gx#stx-pair? _e151100151110_)
                      (let ((_e151103151118_ (gx#syntax-e _e151100151110_)))
                        (let ((_hd151104151121_ (##car _e151103151118_))
                              (_tl151105151123_ (##cdr _e151103151118_)))
                          (if (gx#stx-pair? _tl151105151123_)
                              (let ((_e151106151126_
                                     (gx#syntax-e _tl151105151123_)))
                                (let ((_hd151107151129_
                                       (##car _e151106151126_))
                                      (_tl151108151131_
                                       (##cdr _e151106151126_)))
                                  (let ((_id151134_ _hd151107151129_))
                                    (if (gx#stx-null? _tl151108151131_)
                                        (if (gx#identifier? _id151134_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151134_
                                                          _stx151099_)
                                                         '()))
                                             (gx#stx-source _stx151099_))
                                            (_E151102151114_))
                                        (_E151102151114_)))))
                              (_E151102151114_))))
                      (_E151102151114_)))))
          (_E151101151136_))))
    (define gx#core-expand-setq%
      (lambda (_stx151045_)
        (let* ((_e151046151059_ _stx151045_)
               (_E151048151063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151046151059_)))
               (_E151047151095_
                (lambda ()
                  (if (gx#stx-pair? _e151046151059_)
                      (let ((_e151049151067_ (gx#syntax-e _e151046151059_)))
                        (let ((_hd151050151070_ (##car _e151049151067_))
                              (_tl151051151072_ (##cdr _e151049151067_)))
                          (if (gx#stx-pair? _tl151051151072_)
                              (let ((_e151052151075_
                                     (gx#syntax-e _tl151051151072_)))
                                (let ((_hd151053151078_
                                       (##car _e151052151075_))
                                      (_tl151054151080_
                                       (##cdr _e151052151075_)))
                                  (let ((_id151083_ _hd151053151078_))
                                    (if (gx#stx-pair? _tl151054151080_)
                                        (let ((_e151055151085_
                                               (gx#syntax-e _tl151054151080_)))
                                          (let ((_hd151056151088_
                                                 (##car _e151055151085_))
                                                (_tl151057151090_
                                                 (##cdr _e151055151085_)))
                                            (let ((_expr151093_
                                                   _hd151056151088_))
                                              (if (gx#stx-null?
                                                   _tl151057151090_)
                                                  (if (gx#identifier?
                                                       _id151083_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151083_
                            _stx151045_)
                           (cons (gx#core-expand-expression _expr151093_)
                                 '())))
               (gx#stx-source _stx151045_))
              (_E151048151063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151048151063_)))))
                                        (_E151048151063_)))))
                              (_E151048151063_))))
                      (_E151048151063_)))))
          (_E151047151095_))))
    (define gx#macro-expand-extern
      (lambda (_stx150893_)
        (letrec ((_generate150895_
                  (lambda (_body150925_)
                    (let _lp150927_ ((_rest150929_ _body150925_)
                                     (_ns150930_
                                      (gx#core-context-namespace__0))
                                     (_r150931_ '()))
                      (let* ((_e150932150947_ _rest150929_)
                             (_E150945150951_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150932150947_)))
                             (_E150941150955_
                              (lambda ()
                                (if (gx#stx-null? _e150932150947_)
                                    (if '#t
                                        (reverse _r150931_)
                                        (_E150945150951_))
                                    (_E150945150951_))))
                             (_E150934151012_
                              (lambda ()
                                (if (gx#stx-pair? _e150932150947_)
                                    (let ((_e150942150959_
                                           (gx#syntax-e _e150932150947_)))
                                      (let ((_hd150943150962_
                                             (##car _e150942150959_))
                                            (_tl150944150964_
                                             (##cdr _e150942150959_)))
                                        (let* ((_hd150967_ _hd150943150962_)
                                               (_rest150969_ _tl150944150964_))
                                          (if '#t
                                              (if (gx#identifier? _hd150967_)
                                                  (_lp150927_
                                                   _rest150969_
                                                   _ns150930_
                                                   (cons (cons _hd150967_
                                                               (cons (if _ns150930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150967_
                                  _ns150930_
                                  '"#"
                                  _hd150967_)
                                 _hd150967_)
                             '()))
                 _r150931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150970150980_
                                                          _hd150967_)
                                                         (_E150972150984_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150970150980_)))
                                                         (_E150971151008_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150970150980_)
                        (let ((_e150973150988_ (gx#syntax-e _e150970150980_)))
                          (let ((_hd150974150991_ (##car _e150973150988_))
                                (_tl150975150993_ (##cdr _e150973150988_)))
                            (let ((_id150996_ _hd150974150991_))
                              (if (gx#stx-pair? _tl150975150993_)
                                  (let ((_e150976150998_
                                         (gx#syntax-e _tl150975150993_)))
                                    (let ((_hd150977151001_
                                           (##car _e150976150998_))
                                          (_tl150978151003_
                                           (##cdr _e150976150998_)))
                                      (let ((_eid151006_ _hd150977151001_))
                                        (if (gx#stx-null? _tl150978151003_)
                                            (if (and (gx#identifier?
                                                      _id150996_)
                                                     (gx#identifier?
                                                      _eid151006_))
                                                (_lp150927_
                                                 _rest150969_
                                                 _ns150930_
                                                 (cons (cons _id150996_
                                                             (cons _eid151006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150972150984_))
                                            (_E150972150984_)))))
                                  (_E150972150984_)))))
                        (_E150972150984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150971151008_)))
                                              (_E150941150955_)))))
                                    (_E150941150955_))))
                             (_E150933151041_
                              (lambda ()
                                (if (gx#stx-pair? _e150932150947_)
                                    (let ((_e150935151016_
                                           (gx#syntax-e _e150932150947_)))
                                      (let ((_hd150936151019_
                                             (##car _e150935151016_))
                                            (_tl150937151021_
                                             (##cdr _e150935151016_)))
                                        (if (eq? (gx#stx-e _hd150936151019_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150937151021_)
                                                (let ((_e150938151024_
                                                       (gx#syntax-e
                                                        _tl150937151021_)))
                                                  (let ((_hd150939151027_
                                                         (##car _e150938151024_))
                                                        (_tl150940151029_
                                                         (##cdr _e150938151024_)))
                                                    (let* ((_ns151032_
                                                            _hd150939151027_)
                                                           (_rest151034_
                                                            _tl150940151029_))
                                                      (if '#t
                                                          (let ((_ns151039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151032_)
                             (symbol->string (gx#stx-e _ns151032_))
                             (if (or (gx#stx-string? _ns151032_)
                                     (gx#stx-false? _ns151032_))
                                 (gx#stx-e _ns151032_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150893_
                                  _ns151032_)))))
                    (_lp150927_ _rest151034_ _ns151039_ _r150931_))
                  (_E150934151012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150934151012_))
                                            (_E150934151012_))))
                                    (_E150934151012_)))))
                        (_E150933151041_))))))
          (let* ((_e150896150903_ _stx150893_)
                 (_E150898150907_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150896150903_)))
                 (_E150897150921_
                  (lambda ()
                    (if (gx#stx-pair? _e150896150903_)
                        (let ((_e150899150911_ (gx#syntax-e _e150896150903_)))
                          (let ((_hd150900150914_ (##car _e150899150911_))
                                (_tl150901150916_ (##cdr _e150899150911_)))
                            (let ((_body150919_ _tl150901150916_))
                              (if (gx#stx-list? _body150919_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150895_ _body150919_))
                                  (_E150898150907_)))))
                        (_E150898150907_)))))
            (_E150897150921_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150839_)
        (let* ((_e150840150853_ _stx150839_)
               (_E150842150857_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150840150853_)))
               (_E150841150889_
                (lambda ()
                  (if (gx#stx-pair? _e150840150853_)
                      (let ((_e150843150861_ (gx#syntax-e _e150840150853_)))
                        (let ((_hd150844150864_ (##car _e150843150861_))
                              (_tl150845150866_ (##cdr _e150843150861_)))
                          (if (gx#stx-pair? _tl150845150866_)
                              (let ((_e150846150869_
                                     (gx#syntax-e _tl150845150866_)))
                                (let ((_hd150847150872_
                                       (##car _e150846150869_))
                                      (_tl150848150874_
                                       (##cdr _e150846150869_)))
                                  (let ((_hd150877_ _hd150847150872_))
                                    (if (gx#stx-pair? _tl150848150874_)
                                        (let ((_e150849150879_
                                               (gx#syntax-e _tl150848150874_)))
                                          (let ((_hd150850150882_
                                                 (##car _e150849150879_))
                                                (_tl150851150884_
                                                 (##cdr _e150849150879_)))
                                            (let ((_expr150887_
                                                   _hd150850150882_))
                                              (if (gx#stx-null?
                                                   _tl150851150884_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150877_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150877_)
                          (cons _expr150887_ '())))
              (_E150842150857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150842150857_)))))
                                        (_E150842150857_)))))
                              (_E150842150857_))))
                      (_E150842150857_)))))
          (_E150841150889_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150785_)
        (let* ((_e150786150799_ _stx150785_)
               (_E150788150803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150786150799_)))
               (_E150787150835_
                (lambda ()
                  (if (gx#stx-pair? _e150786150799_)
                      (let ((_e150789150807_ (gx#syntax-e _e150786150799_)))
                        (let ((_hd150790150810_ (##car _e150789150807_))
                              (_tl150791150812_ (##cdr _e150789150807_)))
                          (if (gx#stx-pair? _tl150791150812_)
                              (let ((_e150792150815_
                                     (gx#syntax-e _tl150791150812_)))
                                (let ((_hd150793150818_
                                       (##car _e150792150815_))
                                      (_tl150794150820_
                                       (##cdr _e150792150815_)))
                                  (let ((_hd150823_ _hd150793150818_))
                                    (if (gx#stx-pair? _tl150794150820_)
                                        (let ((_e150795150825_
                                               (gx#syntax-e _tl150794150820_)))
                                          (let ((_hd150796150828_
                                                 (##car _e150795150825_))
                                                (_tl150797150830_
                                                 (##cdr _e150795150825_)))
                                            (let ((_expr150833_
                                                   _hd150796150828_))
                                              (if (gx#stx-null?
                                                   _tl150797150830_)
                                                  (if (gx#identifier?
                                                       _hd150823_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150833_ '())))
              (_E150788150803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150788150803_)))))
                                        (_E150788150803_)))))
                              (_E150788150803_))))
                      (_E150788150803_)))))
          (_E150787150835_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150731_)
        (let* ((_e150732150745_ _stx150731_)
               (_E150734150749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150732150745_)))
               (_E150733150781_
                (lambda ()
                  (if (gx#stx-pair? _e150732150745_)
                      (let ((_e150735150753_ (gx#syntax-e _e150732150745_)))
                        (let ((_hd150736150756_ (##car _e150735150753_))
                              (_tl150737150758_ (##cdr _e150735150753_)))
                          (if (gx#stx-pair? _tl150737150758_)
                              (let ((_e150738150761_
                                     (gx#syntax-e _tl150737150758_)))
                                (let ((_hd150739150764_
                                       (##car _e150738150761_))
                                      (_tl150740150766_
                                       (##cdr _e150738150761_)))
                                  (let ((_id150769_ _hd150739150764_))
                                    (if (gx#stx-pair? _tl150740150766_)
                                        (let ((_e150741150771_
                                               (gx#syntax-e _tl150740150766_)))
                                          (let ((_hd150742150774_
                                                 (##car _e150741150771_))
                                                (_tl150743150776_
                                                 (##cdr _e150741150771_)))
                                            (let ((_alias-id150779_
                                                   _hd150742150774_))
                                              (if (gx#stx-null?
                                                   _tl150743150776_)
                                                  (if (and (gx#identifier?
                                                            _id150769_)
                                                           (gx#identifier?
                                                            _alias-id150779_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150779_ '())))
              (_E150734150749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150734150749_)))))
                                        (_E150734150749_)))))
                              (_E150734150749_))))
                      (_E150734150749_)))))
          (_E150733150781_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150688_)
        (let* ((_e150689150699_ _stx150688_)
               (_E150691150703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150689150699_)))
               (_E150690150727_
                (lambda ()
                  (if (gx#stx-pair? _e150689150699_)
                      (let ((_e150692150707_ (gx#syntax-e _e150689150699_)))
                        (let ((_hd150693150710_ (##car _e150692150707_))
                              (_tl150694150712_ (##cdr _e150692150707_)))
                          (if (gx#stx-pair? _tl150694150712_)
                              (let ((_e150695150715_
                                     (gx#syntax-e _tl150694150712_)))
                                (let ((_hd150696150718_
                                       (##car _e150695150715_))
                                      (_tl150697150720_
                                       (##cdr _e150695150715_)))
                                  (let* ((_hd150723_ _hd150696150718_)
                                         (_body150725_ _tl150697150720_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150723_)
                                             (gx#stx-list? _body150725_)
                                             (not (gx#stx-null? _body150725_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150723_)
                                         _body150725_)
                                        (_E150691150703_)))))
                              (_E150691150703_))))
                      (_E150691150703_)))))
          (_E150690150727_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150624_)
        (letrec ((_generate150626_
                  (lambda (_clause150656_)
                    (let* ((_e150657150664_ _clause150656_)
                           (_E150659150668_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150624_
                               _clause150656_)))
                           (_E150658150684_
                            (lambda ()
                              (if (gx#stx-pair? _e150657150664_)
                                  (let ((_e150660150672_
                                         (gx#syntax-e _e150657150664_)))
                                    (let ((_hd150661150675_
                                           (##car _e150660150672_))
                                          (_tl150662150677_
                                           (##cdr _e150660150672_)))
                                      (let* ((_hd150680_ _hd150661150675_)
                                             (_body150682_ _tl150662150677_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150680_)
                                                 (gx#stx-list? _body150682_)
                                                 (not (gx#stx-null?
                                                       _body150682_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150680_)
                                                   _body150682_)
                                             (gx#stx-source _clause150656_))
                                            (_E150659150668_)))))
                                  (_E150659150668_)))))
                      (_E150658150684_)))))
          (let* ((_e150627150634_ _stx150624_)
                 (_E150629150638_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150627150634_)))
                 (_E150628150652_
                  (lambda ()
                    (if (gx#stx-pair? _e150627150634_)
                        (let ((_e150630150642_ (gx#syntax-e _e150627150634_)))
                          (let ((_hd150631150645_ (##car _e150630150642_))
                                (_tl150632150647_ (##cdr _e150630150642_)))
                            (let ((_clauses150650_ _tl150632150647_))
                              (if (gx#stx-list? _clauses150650_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150626_
                                    _clauses150650_))
                                  (_E150629150638_)))))
                        (_E150629150638_)))))
            (_E150628150652_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150525_ _form150526_)
        (letrec ((_generate150528_
                  (lambda (_bind150571_)
                    (let* ((_e150572150582_ _bind150571_)
                           (_E150574150586_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150525_
                               _bind150571_)))
                           (_E150573150610_
                            (lambda ()
                              (if (gx#stx-pair? _e150572150582_)
                                  (let ((_e150575150590_
                                         (gx#syntax-e _e150572150582_)))
                                    (let ((_hd150576150593_
                                           (##car _e150575150590_))
                                          (_tl150577150595_
                                           (##cdr _e150575150590_)))
                                      (let ((_ids150598_ _hd150576150593_))
                                        (if (gx#stx-pair? _tl150577150595_)
                                            (let ((_e150578150600_
                                                   (gx#syntax-e
                                                    _tl150577150595_)))
                                              (let ((_hd150579150603_
                                                     (##car _e150578150600_))
                                                    (_tl150580150605_
                                                     (##cdr _e150578150600_)))
                                                (let ((_expr150608_
                                                       _hd150579150603_))
                                                  (if (gx#stx-null?
                                                       _tl150580150605_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150598_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150598_)
                        (cons _expr150608_ '()))
                  (_E150574150586_))
              (_E150574150586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150574150586_)))))
                                  (_E150574150586_)))))
                      (_E150573150610_)))))
          (let* ((_e150529150539_ _stx150525_)
                 (_E150531150543_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150529150539_)))
                 (_E150530150567_
                  (lambda ()
                    (if (gx#stx-pair? _e150529150539_)
                        (let ((_e150532150547_ (gx#syntax-e _e150529150539_)))
                          (let ((_hd150533150550_ (##car _e150532150547_))
                                (_tl150534150552_ (##cdr _e150532150547_)))
                            (if (gx#stx-pair? _tl150534150552_)
                                (let ((_e150535150555_
                                       (gx#syntax-e _tl150534150552_)))
                                  (let ((_hd150536150558_
                                         (##car _e150535150555_))
                                        (_tl150537150560_
                                         (##cdr _e150535150555_)))
                                    (let* ((_hd150563_ _hd150536150558_)
                                           (_body150565_ _tl150537150560_))
                                      (if (and (gx#stx-list? _hd150563_)
                                               (gx#stx-list? _body150565_)
                                               (not (gx#stx-null?
                                                     _body150565_)))
                                          (gx#core-cons*
                                           _form150526_
                                           (gx#stx-map1
                                            _generate150528_
                                            _hd150563_)
                                           _body150565_)
                                          (_E150531150543_)))))
                                (_E150531150543_))))
                        (_E150531150543_)))))
            (_E150530150567_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150617_)
        (let ((_form150619_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150617_ _form150619_))))
    (define gx#macro-expand-let-values
      (lambda _g157069_
        (let ((_g157068_ (##length _g157069_)))
          (cond ((##fx= _g157068_ 1)
                 (apply (lambda (_stx150617_)
                          (gx#macro-expand-let-values__0 _stx150617_))
                        _g157069_))
                ((##fx= _g157068_ 2)
                 (apply (lambda (_stx150621_ _form150622_)
                          (gx#macro-expand-let-values__%
                           _stx150621_
                           _form150622_))
                        _g157069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157069_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150522_)
        (gx#macro-expand-let-values__% _stx150522_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150520_)
        (gx#macro-expand-let-values__% _stx150520_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150411_)
        (let* ((_e150412150438_ _stx150411_)
               (_E150424150442_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150412150438_)))
               (_E150414150484_
                (lambda ()
                  (if (gx#stx-pair? _e150412150438_)
                      (let ((_e150425150446_ (gx#syntax-e _e150412150438_)))
                        (let ((_hd150426150449_ (##car _e150425150446_))
                              (_tl150427150451_ (##cdr _e150425150446_)))
                          (if (gx#stx-pair? _tl150427150451_)
                              (let ((_e150428150454_
                                     (gx#syntax-e _tl150427150451_)))
                                (let ((_hd150429150457_
                                       (##car _e150428150454_))
                                      (_tl150430150459_
                                       (##cdr _e150428150454_)))
                                  (let ((_test150462_ _hd150429150457_))
                                    (if (gx#stx-pair? _tl150430150459_)
                                        (let ((_e150431150464_
                                               (gx#syntax-e _tl150430150459_)))
                                          (let ((_hd150432150467_
                                                 (##car _e150431150464_))
                                                (_tl150433150469_
                                                 (##cdr _e150431150464_)))
                                            (let ((_K150472_ _hd150432150467_))
                                              (if (gx#stx-pair?
                                                   _tl150433150469_)
                                                  (let ((_e150434150474_
                                                         (gx#syntax-e
                                                          _tl150433150469_)))
                                                    (let ((_hd150435150477_
                                                           (##car _e150434150474_))
                                                          (_tl150436150479_
                                                           (##cdr _e150434150474_)))
                                                      (let ((_E150482_
                                                             _hd150435150477_))
                                                        (if (gx#stx-null?
                                                             _tl150436150479_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150462_
                         _K150472_
                         _E150482_)
                        (_E150424150442_))
                    (_E150424150442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150424150442_)))))
                                        (_E150424150442_)))))
                              (_E150424150442_))))
                      (_E150424150442_))))
               (_E150413150516_
                (lambda ()
                  (if (gx#stx-pair? _e150412150438_)
                      (let ((_e150415150488_ (gx#syntax-e _e150412150438_)))
                        (let ((_hd150416150491_ (##car _e150415150488_))
                              (_tl150417150493_ (##cdr _e150415150488_)))
                          (if (gx#stx-pair? _tl150417150493_)
                              (let ((_e150418150496_
                                     (gx#syntax-e _tl150417150493_)))
                                (let ((_hd150419150499_
                                       (##car _e150418150496_))
                                      (_tl150420150501_
                                       (##cdr _e150418150496_)))
                                  (let ((_test150504_ _hd150419150499_))
                                    (if (gx#stx-pair? _tl150420150501_)
                                        (let ((_e150421150506_
                                               (gx#syntax-e _tl150420150501_)))
                                          (let ((_hd150422150509_
                                                 (##car _e150421150506_))
                                                (_tl150423150511_
                                                 (##cdr _e150421150506_)))
                                            (let ((_K150514_ _hd150422150509_))
                                              (if (gx#stx-null?
                                                   _tl150423150511_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150504_
                                                       _K150514_
                                                       '#!void)
                                                      (_E150414150484_))
                                                  (_E150414150484_)))))
                                        (_E150414150484_)))))
                              (_E150414150484_))))
                      (_E150414150484_)))))
          (_E150413150516_))))
    (define gx#free-identifier=?
      (lambda (_xid150399_ _yid150400_)
        (let ((_xe150402_ (gx#resolve-identifier__0 _xid150399_))
              (_ye150403_ (gx#resolve-identifier__0 _yid150400_)))
          (if (and _xe150402_ _ye150403_)
              (let ((_$e150405_ (eq? _xe150402_ _ye150403_)))
                (if _$e150405_
                    _$e150405_
                    (if (##structure-instance-of? _xe150402_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150403_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150402_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150403_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150402_ _ye150403_)
                  '#f
                  (gx#stx-eq? _xid150399_ _yid150400_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150383_ _yid150384_)
        (letrec ((_context150386_
                  (lambda (_e150397_)
                    (if (##structure-direct-instance-of?
                         _e150397_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150397_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150387_
                  (lambda (_e150395_)
                    (if (symbol? _e150395_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150395_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150395_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150395_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150388_
                  (lambda (_e150393_)
                    (if (symbol? _e150393_)
                        _e150393_
                        (gx#syntax-local-unwrap _e150393_)))))
          (let ((_x150390_ (_unwrap150388_ _xid150383_))
                (_y150391_ (_unwrap150388_ _yid150384_)))
            (if (gx#stx-eq? _x150390_ _y150391_)
                (if (eq? (_context150386_ _x150390_)
                         (_context150386_ _y150391_))
                    (equal? (_marks150387_ _x150390_)
                            (_marks150387_ _y150391_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150381_)
        (if (gx#identifier? _stx150381_)
            (gx#core-identifier=? _stx150381_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150379_)
        (if (gx#identifier? _stx150379_)
            (gx#core-identifier=? _stx150379_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150377_)
        (if (gx#identifier? _x150377_)
            (if (not (gx#underscore? _x150377_)) _x150377_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150323_ _where150324_)
        (let _lp150326_ ((_rest150328_ (gx#syntax->list _stx150323_)))
          (let* ((_rest150329150337_ _rest150328_)
                 (_else150331150345_ (lambda () '#t))
                 (_K150333150355_
                  (lambda (_rest150348_ _hd150349_)
                    (if (not (gx#identifier? _hd150349_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150324_
                         _hd150349_)
                        (if (find (lambda (_g150350150352_)
                                    (gx#bound-identifier=?
                                     _g150350150352_
                                     _hd150349_))
                                  _rest150348_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150324_
                             _hd150349_)
                            (_lp150326_ _rest150348_))))))
            (if (##pair? _rest150329150337_)
                (let ((_hd150334150358_ (##car _rest150329150337_))
                      (_tl150335150360_ (##cdr _rest150329150337_)))
                  (let* ((_hd150363_ _hd150334150358_)
                         (_rest150365_ _tl150335150360_))
                    (_K150333150355_ _rest150365_ _hd150363_)))
                (_else150331150345_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150370_)
        (let ((_where150372_ _stx150370_))
          (gx#check-duplicate-identifiers__% _stx150370_ _where150372_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157071_
        (let ((_g157070_ (##length _g157071_)))
          (cond ((##fx= _g157070_ 1)
                 (apply (lambda (_stx150370_)
                          (gx#check-duplicate-identifiers__0 _stx150370_))
                        _g157071_))
                ((##fx= _g157070_ 2)
                 (apply (lambda (_stx150374_ _where150375_)
                          (gx#check-duplicate-identifiers__%
                           _stx150374_
                           _where150375_))
                        _g157071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157071_))))))
    (define gx#core-bind-values?
      (lambda (_stx150315_)
        (gx#stx-andmap
         (lambda (_x150317_)
           (let ((_$e150319_ (gx#identifier? _x150317_)))
             (if _$e150319_ _$e150319_ (gx#stx-false? _x150317_))))
         _stx150315_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150279_ _rebind?150280_ _phi150281_ _ctx150282_)
        (gx#stx-for-each1
         (lambda (_id150284_)
           (if (gx#identifier? _id150284_)
               (gx#core-bind-runtime!__%
                _id150284_
                _rebind?150280_
                _phi150281_
                _ctx150282_)
               '#!void))
         _stx150279_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150289_)
        (let* ((_rebind?150291_ '#f)
               (_phi150293_ (gx#current-expander-phi))
               (_ctx150295_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150289_
           _rebind?150291_
           _phi150293_
           _ctx150295_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150297_ _rebind?150298_)
        (let* ((_phi150300_ (gx#current-expander-phi))
               (_ctx150302_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150297_
           _rebind?150298_
           _phi150300_
           _ctx150302_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150304_ _rebind?150305_ _phi150306_)
        (let ((_ctx150308_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150304_
           _rebind?150305_
           _phi150306_
           _ctx150308_))))
    (define gx#core-bind-values!
      (lambda _g157073_
        (let ((_g157072_ (##length _g157073_)))
          (cond ((##fx= _g157072_ 1)
                 (apply (lambda (_stx150289_)
                          (gx#core-bind-values!__0 _stx150289_))
                        _g157073_))
                ((##fx= _g157072_ 2)
                 (apply (lambda (_stx150297_ _rebind?150298_)
                          (gx#core-bind-values!__1
                           _stx150297_
                           _rebind?150298_))
                        _g157073_))
                ((##fx= _g157072_ 3)
                 (apply (lambda (_stx150304_ _rebind?150305_ _phi150306_)
                          (gx#core-bind-values!__2
                           _stx150304_
                           _rebind?150305_
                           _phi150306_))
                        _g157073_))
                ((##fx= _g157072_ 4)
                 (apply (lambda (_stx150310_
                                 _rebind?150311_
                                 _phi150312_
                                 _ctx150313_)
                          (gx#core-bind-values!__%
                           _stx150310_
                           _rebind?150311_
                           _phi150312_
                           _ctx150313_))
                        _g157073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157073_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150274_)
        (gx#stx-map1
         (lambda (_x150276_)
           (if (gx#identifier? _x150276_)
               (gx#core-quote-syntax__0 _x150276_)
               '#f))
         _stx150274_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150267_)
        (if (gx#identifier? _stx150267_)
            (let* ((_bind150269_ (gx#resolve-identifier__0 _stx150267_))
                   (_$e150271_ (not _bind150269_)))
              (if _$e150271_
                  _$e150271_
                  (##structure-instance-of?
                   _bind150269_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150259_ _form150260_)
        (let ((_bind150262_ (gx#resolve-identifier__0 _id150259_)))
          (if (##structure-instance-of? _bind150262_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150259_)
              (if (not _bind150262_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150259_)))
                      (gx#core-quote-syntax__0 _id150259_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150260_
                       _id150259_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150260_
                   _id150259_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150218_ _rebind?150219_ _phi150220_ _ctx150221_)
        (let* ((_key150223_ (gx#core-identifier-key _id150218_))
               (_eid150225_
                (gx#make-binding-id__%
                 _key150223_
                 '#f
                 _phi150220_
                 _ctx150221_))
               (_bind150227_
                (if (##structure-instance-of?
                     _ctx150221_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150225_
                     _key150223_
                     _phi150220_
                     _ctx150221_)
                    (if (##structure-instance-of?
                         _ctx150221_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150225_
                         _key150223_
                         _phi150220_)
                        (if (##structure-instance-of?
                             _ctx150221_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150225_
                             _key150223_
                             _phi150220_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150225_
                             _key150223_
                             _phi150220_))))))
          (gx#bind-identifier!__%
           _id150218_
           _bind150227_
           _rebind?150219_
           _phi150220_
           _ctx150221_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150233_)
        (let* ((_rebind?150235_ '#f)
               (_phi150237_ (gx#current-expander-phi))
               (_ctx150239_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150233_
           _rebind?150235_
           _phi150237_
           _ctx150239_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150241_ _rebind?150242_)
        (let* ((_phi150244_ (gx#current-expander-phi))
               (_ctx150246_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150241_
           _rebind?150242_
           _phi150244_
           _ctx150246_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150248_ _rebind?150249_ _phi150250_)
        (let ((_ctx150252_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150248_
           _rebind?150249_
           _phi150250_
           _ctx150252_))))
    (define gx#core-bind-runtime!
      (lambda _g157075_
        (let ((_g157074_ (##length _g157075_)))
          (cond ((##fx= _g157074_ 1)
                 (apply (lambda (_id150233_)
                          (gx#core-bind-runtime!__0 _id150233_))
                        _g157075_))
                ((##fx= _g157074_ 2)
                 (apply (lambda (_id150241_ _rebind?150242_)
                          (gx#core-bind-runtime!__1
                           _id150241_
                           _rebind?150242_))
                        _g157075_))
                ((##fx= _g157074_ 3)
                 (apply (lambda (_id150248_ _rebind?150249_ _phi150250_)
                          (gx#core-bind-runtime!__2
                           _id150248_
                           _rebind?150249_
                           _phi150250_))
                        _g157075_))
                ((##fx= _g157074_ 4)
                 (apply (lambda (_id150254_
                                 _rebind?150255_
                                 _phi150256_
                                 _ctx150257_)
                          (gx#core-bind-runtime!__%
                           _id150254_
                           _rebind?150255_
                           _phi150256_
                           _ctx150257_))
                        _g157075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157075_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150173_ _eid150174_ _rebind?150175_ _phi150176_ _ctx150177_)
        (let* ((_key150179_ (gx#core-identifier-key _id150173_))
               (_bind150181_
                (if (##structure-instance-of?
                     _ctx150177_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150174_
                     _key150179_
                     _phi150176_
                     _ctx150177_)
                    (if (##structure-instance-of?
                         _ctx150177_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150174_
                         _key150179_
                         _phi150176_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150174_
                         _key150179_
                         _phi150176_)))))
          (gx#bind-identifier!__%
           _id150173_
           _bind150181_
           _rebind?150175_
           _phi150176_
           _ctx150177_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150187_ _eid150188_)
        (let* ((_rebind?150190_ '#f)
               (_phi150192_ (gx#current-expander-phi))
               (_ctx150194_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150187_
           _eid150188_
           _rebind?150190_
           _phi150192_
           _ctx150194_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150196_ _eid150197_ _rebind?150198_)
        (let* ((_phi150200_ (gx#current-expander-phi))
               (_ctx150202_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150196_
           _eid150197_
           _rebind?150198_
           _phi150200_
           _ctx150202_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150204_ _eid150205_ _rebind?150206_ _phi150207_)
        (let ((_ctx150209_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150204_
           _eid150205_
           _rebind?150206_
           _phi150207_
           _ctx150209_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157077_
        (let ((_g157076_ (##length _g157077_)))
          (cond ((##fx= _g157076_ 2)
                 (apply (lambda (_id150187_ _eid150188_)
                          (gx#core-bind-runtime-reference!__0
                           _id150187_
                           _eid150188_))
                        _g157077_))
                ((##fx= _g157076_ 3)
                 (apply (lambda (_id150196_ _eid150197_ _rebind?150198_)
                          (gx#core-bind-runtime-reference!__1
                           _id150196_
                           _eid150197_
                           _rebind?150198_))
                        _g157077_))
                ((##fx= _g157076_ 4)
                 (apply (lambda (_id150204_
                                 _eid150205_
                                 _rebind?150206_
                                 _phi150207_)
                          (gx#core-bind-runtime-reference!__2
                           _id150204_
                           _eid150205_
                           _rebind?150206_
                           _phi150207_))
                        _g157077_))
                ((##fx= _g157076_ 5)
                 (apply (lambda (_id150211_
                                 _eid150212_
                                 _rebind?150213_
                                 _phi150214_
                                 _ctx150215_)
                          (gx#core-bind-runtime-reference!__%
                           _id150211_
                           _eid150212_
                           _rebind?150213_
                           _phi150214_
                           _ctx150215_))
                        _g157077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157077_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150133_ _eid150134_ _rebind?150135_ _phi150136_ _ctx150137_)
        (gx#bind-identifier!__%
         _id150133_
         (##structure
          gx#extern-binding::t
          _eid150134_
          (gx#core-identifier-key _id150133_)
          _phi150136_)
         _rebind?150135_
         _phi150136_
         _ctx150137_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150142_ _eid150143_)
        (let* ((_rebind?150145_ '#f)
               (_phi150147_ (gx#current-expander-phi))
               (_ctx150149_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150142_
           _eid150143_
           _rebind?150145_
           _phi150147_
           _ctx150149_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150151_ _eid150152_ _rebind?150153_)
        (let* ((_phi150155_ (gx#current-expander-phi))
               (_ctx150157_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150151_
           _eid150152_
           _rebind?150153_
           _phi150155_
           _ctx150157_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150159_ _eid150160_ _rebind?150161_ _phi150162_)
        (let ((_ctx150164_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150159_
           _eid150160_
           _rebind?150161_
           _phi150162_
           _ctx150164_))))
    (define gx#core-bind-extern!
      (lambda _g157079_
        (let ((_g157078_ (##length _g157079_)))
          (cond ((##fx= _g157078_ 2)
                 (apply (lambda (_id150142_ _eid150143_)
                          (gx#core-bind-extern!__0 _id150142_ _eid150143_))
                        _g157079_))
                ((##fx= _g157078_ 3)
                 (apply (lambda (_id150151_ _eid150152_ _rebind?150153_)
                          (gx#core-bind-extern!__1
                           _id150151_
                           _eid150152_
                           _rebind?150153_))
                        _g157079_))
                ((##fx= _g157078_ 4)
                 (apply (lambda (_id150159_
                                 _eid150160_
                                 _rebind?150161_
                                 _phi150162_)
                          (gx#core-bind-extern!__2
                           _id150159_
                           _eid150160_
                           _rebind?150161_
                           _phi150162_))
                        _g157079_))
                ((##fx= _g157078_ 5)
                 (apply (lambda (_id150166_
                                 _eid150167_
                                 _rebind?150168_
                                 _phi150169_
                                 _ctx150170_)
                          (gx#core-bind-extern!__%
                           _id150166_
                           _eid150167_
                           _rebind?150168_
                           _phi150169_
                           _ctx150170_))
                        _g157079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157079_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150087_ _e150088_ _rebind?150089_ _phi150090_ _ctx150091_)
        (gx#bind-identifier!__%
         _id150087_
         (let ((_key150096_ (gx#core-identifier-key _id150087_))
               (_e150097_
                (if (or (##structure-instance-of? _e150088_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150088_
                         'gx#expander-context::t))
                    _e150088_
                    (##structure
                     gx#user-expander::t
                     _e150088_
                     _ctx150091_
                     _phi150090_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150096_ '#t _phi150090_ _ctx150091_)
            _key150096_
            _phi150090_
            _e150097_))
         _rebind?150089_
         _phi150090_
         _ctx150091_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150102_ _e150103_)
        (let* ((_rebind?150105_ '#f)
               (_phi150107_ (gx#current-expander-phi))
               (_ctx150109_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150102_
           _e150103_
           _rebind?150105_
           _phi150107_
           _ctx150109_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150111_ _e150112_ _rebind?150113_)
        (let* ((_phi150115_ (gx#current-expander-phi))
               (_ctx150117_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150111_
           _e150112_
           _rebind?150113_
           _phi150115_
           _ctx150117_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150119_ _e150120_ _rebind?150121_ _phi150122_)
        (let ((_ctx150124_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150119_
           _e150120_
           _rebind?150121_
           _phi150122_
           _ctx150124_))))
    (define gx#core-bind-syntax!
      (lambda _g157081_
        (let ((_g157080_ (##length _g157081_)))
          (cond ((##fx= _g157080_ 2)
                 (apply (lambda (_id150102_ _e150103_)
                          (gx#core-bind-syntax!__0 _id150102_ _e150103_))
                        _g157081_))
                ((##fx= _g157080_ 3)
                 (apply (lambda (_id150111_ _e150112_ _rebind?150113_)
                          (gx#core-bind-syntax!__1
                           _id150111_
                           _e150112_
                           _rebind?150113_))
                        _g157081_))
                ((##fx= _g157080_ 4)
                 (apply (lambda (_id150119_
                                 _e150120_
                                 _rebind?150121_
                                 _phi150122_)
                          (gx#core-bind-syntax!__2
                           _id150119_
                           _e150120_
                           _rebind?150121_
                           _phi150122_))
                        _g157081_))
                ((##fx= _g157080_ 5)
                 (apply (lambda (_id150126_
                                 _e150127_
                                 _rebind?150128_
                                 _phi150129_
                                 _ctx150130_)
                          (gx#core-bind-syntax!__%
                           _id150126_
                           _e150127_
                           _rebind?150128_
                           _phi150129_
                           _ctx150130_))
                        _g157081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157081_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150070_ _e150071_ _rebind?150072_)
        (gx#core-bind-syntax!__%
         _id150070_
         _e150071_
         _rebind?150072_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150077_ _e150078_)
        (let ((_rebind?150080_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150077_
           _e150078_
           _rebind?150080_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157083_
        (let ((_g157082_ (##length _g157083_)))
          (cond ((##fx= _g157082_ 2)
                 (apply (lambda (_id150077_ _e150078_)
                          (gx#core-bind-root-syntax!__0 _id150077_ _e150078_))
                        _g157083_))
                ((##fx= _g157082_ 3)
                 (apply (lambda (_id150082_ _e150083_ _rebind?150084_)
                          (gx#core-bind-root-syntax!__%
                           _id150082_
                           _e150083_
                           _rebind?150084_))
                        _g157083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157083_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150028_
               _alias-id150029_
               _rebind?150030_
               _phi150031_
               _ctx150032_)
        (gx#bind-identifier!__%
         _id150028_
         (let ((_key150034_ (gx#core-identifier-key _id150028_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150034_ '#t _phi150031_ _ctx150032_)
            _key150034_
            _phi150031_
            _alias-id150029_))
         _rebind?150030_
         _phi150031_
         _ctx150032_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150039_ _alias-id150040_)
        (let* ((_rebind?150042_ '#f)
               (_phi150044_ (gx#current-expander-phi))
               (_ctx150046_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150039_
           _alias-id150040_
           _rebind?150042_
           _phi150044_
           _ctx150046_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150048_ _alias-id150049_ _rebind?150050_)
        (let* ((_phi150052_ (gx#current-expander-phi))
               (_ctx150054_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150048_
           _alias-id150049_
           _rebind?150050_
           _phi150052_
           _ctx150054_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150056_ _alias-id150057_ _rebind?150058_ _phi150059_)
        (let ((_ctx150061_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150056_
           _alias-id150057_
           _rebind?150058_
           _phi150059_
           _ctx150061_))))
    (define gx#core-bind-alias!
      (lambda _g157085_
        (let ((_g157084_ (##length _g157085_)))
          (cond ((##fx= _g157084_ 2)
                 (apply (lambda (_id150039_ _alias-id150040_)
                          (gx#core-bind-alias!__0 _id150039_ _alias-id150040_))
                        _g157085_))
                ((##fx= _g157084_ 3)
                 (apply (lambda (_id150048_ _alias-id150049_ _rebind?150050_)
                          (gx#core-bind-alias!__1
                           _id150048_
                           _alias-id150049_
                           _rebind?150050_))
                        _g157085_))
                ((##fx= _g157084_ 4)
                 (apply (lambda (_id150056_
                                 _alias-id150057_
                                 _rebind?150058_
                                 _phi150059_)
                          (gx#core-bind-alias!__2
                           _id150056_
                           _alias-id150057_
                           _rebind?150058_
                           _phi150059_))
                        _g157085_))
                ((##fx= _g157084_ 5)
                 (apply (lambda (_id150063_
                                 _alias-id150064_
                                 _rebind?150065_
                                 _phi150066_
                                 _ctx150067_)
                          (gx#core-bind-alias!__%
                           _id150063_
                           _alias-id150064_
                           _rebind?150065_
                           _phi150066_
                           _ctx150067_))
                        _g157085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157085_))))))
    (define gx#make-binding-id__%
      (lambda (_key149985_ _syntax?149986_ _phi149987_ _ctx149988_)
        (if (uninterned-symbol? _key149985_)
            (gensym 'L)
            (if (pair? _key149985_)
                (gensym (car _key149985_))
                (if (##structure-instance-of? _ctx149988_ 'gx#top-context::t)
                    (let ((_ns149990_
                           (gx#core-context-namespace__% _ctx149988_)))
                      (if (and (fxzero? _phi149987_) (not _syntax?149986_))
                          (if _ns149990_
                              (make-symbol__1 _ns149990_ '"#" _key149985_)
                              _key149985_)
                          (if _syntax?149986_
                              (make-symbol__1
                               (let ((_$e149992_ _ns149990_))
                                 (if _$e149992_ _$e149992_ '""))
                               '"[:"
                               (number->string _phi149987_)
                               '":]#"
                               _key149985_)
                              (make-symbol__1
                               (let ((_$e149995_ _ns149990_))
                                 (if _$e149995_ _$e149995_ '""))
                               '"["
                               (number->string _phi149987_)
                               '"]#"
                               _key149985_))))
                    (gensym _key149985_))))))
    (define gx#make-binding-id__0
      (lambda (_key150001_)
        (let* ((_syntax?150003_ '#f)
               (_phi150005_ (gx#current-expander-phi))
               (_ctx150007_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150001_
           _syntax?150003_
           _phi150005_
           _ctx150007_))))
    (define gx#make-binding-id__1
      (lambda (_key150009_ _syntax?150010_)
        (let* ((_phi150012_ (gx#current-expander-phi))
               (_ctx150014_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150009_
           _syntax?150010_
           _phi150012_
           _ctx150014_))))
    (define gx#make-binding-id__2
      (lambda (_key150016_ _syntax?150017_ _phi150018_)
        (let ((_ctx150020_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150016_
           _syntax?150017_
           _phi150018_
           _ctx150020_))))
    (define gx#make-binding-id
      (lambda _g157087_
        (let ((_g157086_ (##length _g157087_)))
          (cond ((##fx= _g157086_ 1)
                 (apply (lambda (_key150001_)
                          (gx#make-binding-id__0 _key150001_))
                        _g157087_))
                ((##fx= _g157086_ 2)
                 (apply (lambda (_key150009_ _syntax?150010_)
                          (gx#make-binding-id__1 _key150009_ _syntax?150010_))
                        _g157087_))
                ((##fx= _g157086_ 3)
                 (apply (lambda (_key150016_ _syntax?150017_ _phi150018_)
                          (gx#make-binding-id__2
                           _key150016_
                           _syntax?150017_
                           _phi150018_))
                        _g157087_))
                ((##fx= _g157086_ 4)
                 (apply (lambda (_key150022_
                                 _syntax?150023_
                                 _phi150024_
                                 _ctx150025_)
                          (gx#make-binding-id__%
                           _key150022_
                           _syntax?150023_
                           _phi150024_
                           _ctx150025_))
                        _g157087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157087_))))))))
