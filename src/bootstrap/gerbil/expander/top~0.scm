(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710781149)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx91003_)
        (letrec ((_expand-special91005_
                  (lambda (_hd91007_ _K91008_ _rest91009_ _r91010_)
                    (_K91008_
                     _rest91009_
                     (cons (gx#core-expand-top _hd91007_) _r91010_)))))
          (gx#core-expand-block__0 _stx91003_ _expand-special91005_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90756_)
        (letrec ((_expand-special90758_
                  (lambda (_hd90878_ _K90879_ _rest90880_ _r90881_)
                    (let* ((_K90885_
                            (lambda (_e90883_)
                              (_K90879_ _rest90880_ (cons _e90883_ _r90881_))))
                           (_e9088690915_ _hd90878_)
                           (_E9091090919_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9088690915_)))
                           (_E9090690931_
                            (lambda ()
                              (if (gx#stx-pair? _e9088690915_)
                                  (let ((_e9091190923_
                                         (gx#syntax-e _e9088690915_)))
                                    (let ((_hd9091290926_
                                           (##car _e9091190923_))
                                          (_tl9091390928_
                                           (##cdr _e9091190923_)))
                                      (if (and (gx#identifier? _hd9091290926_)
                                               (gx#core-identifier=?
                                                _hd9091290926_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90885_
                                               (gx#core-expand-define-runtime%
                                                _hd90878_))
                                              (_E9091090919_))
                                          (_E9091090919_))))
                                  (_E9091090919_))))
                           (_E9090290943_
                            (lambda ()
                              (if (gx#stx-pair? _e9088690915_)
                                  (let ((_e9090790935_
                                         (gx#syntax-e _e9088690915_)))
                                    (let ((_hd9090890938_
                                           (##car _e9090790935_))
                                          (_tl9090990940_
                                           (##cdr _e9090790935_)))
                                      (if (and (gx#identifier? _hd9090890938_)
                                               (gx#core-identifier=?
                                                _hd9090890938_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90885_
                                               (gx#core-expand-define-alias%
                                                _hd90878_))
                                              (_E9090690931_))
                                          (_E9090690931_))))
                                  (_E9090690931_))))
                           (_E9089290955_
                            (lambda ()
                              (if (gx#stx-pair? _e9088690915_)
                                  (let ((_e9090390947_
                                         (gx#syntax-e _e9088690915_)))
                                    (let ((_hd9090490950_
                                           (##car _e9090390947_))
                                          (_tl9090590952_
                                           (##cdr _e9090390947_)))
                                      (if (and (gx#identifier? _hd9090490950_)
                                               (gx#core-identifier=?
                                                _hd9090490950_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90885_
                                               (gx#core-expand-define-syntax%
                                                _hd90878_))
                                              (_E9090290943_))
                                          (_E9090290943_))))
                                  (_E9090290943_))))
                           (_E9088890987_
                            (lambda ()
                              (if (gx#stx-pair? _e9088690915_)
                                  (let ((_e9089390959_
                                         (gx#syntax-e _e9088690915_)))
                                    (let ((_hd9089490962_
                                           (##car _e9089390959_))
                                          (_tl9089590964_
                                           (##cdr _e9089390959_)))
                                      (if (and (gx#identifier? _hd9089490962_)
                                               (gx#core-identifier=?
                                                _hd9089490962_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9089590964_)
                                              (let ((_e9089690967_
                                                     (gx#syntax-e
                                                      _tl9089590964_)))
                                                (let ((_hd9089790970_
                                                       (##car _e9089690967_))
                                                      (_tl9089890972_
                                                       (##cdr _e9089690967_)))
                                                  (let ((_hd-bind90975_
                                                         _hd9089790970_))
                                                    (if (gx#stx-pair?
                                                         _tl9089890972_)
                                                        (let ((_e9089990977_
                                                               (gx#syntax-e
                                                                _tl9089890972_)))
                                                          (let ((_hd9090090980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9089990977_))
                        (_tl9090190982_ (##cdr _e9089990977_)))
                    (let ((_expr90985_ _hd9090090980_))
                      (if (gx#stx-null? _tl9090190982_)
                          (if (gx#core-bind-values? _hd-bind90975_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90975_)
                                (_K90885_ _hd90878_))
                              (_E9089290955_))
                          (_E9089290955_)))))
                (_E9089290955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9089290955_))
                                          (_E9089290955_))))
                                  (_E9089290955_))))
                           (_E9088790999_
                            (lambda ()
                              (if (gx#stx-pair? _e9088690915_)
                                  (let ((_e9088990991_
                                         (gx#syntax-e _e9088690915_)))
                                    (let ((_hd9089090994_
                                           (##car _e9088990991_))
                                          (_tl9089190996_
                                           (##cdr _e9088990991_)))
                                      (if (and (gx#identifier? _hd9089090994_)
                                               (gx#core-identifier=?
                                                _hd9089090994_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90885_
                                               (gx#core-expand-begin-syntax%
                                                _hd90878_))
                                              (_E9088890987_))
                                          (_E9088890987_))))
                                  (_E9088890987_)))))
                      (_E9088790999_))))
                 (_eval-body90759_
                  (lambda (_rbody90767_)
                    (let _lp90769_ ((_rest90771_ _rbody90767_)
                                    (_body90772_ '())
                                    (_ebody90773_ '()))
                      (let* ((_rest9077490782_ _rest90771_)
                             (_else9077690790_
                              (lambda ()
                                (values _body90772_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90773_)
                                          (gx#stx-source _stx90756_))))))
                             (_K9077890866_
                              (lambda (_rest90793_ _hd90794_)
                                (let* ((_e9079590812_ _hd90794_)
                                       (_E9080790816_
                                        (lambda ()
                                          (_lp90769_
                                           _rest90793_
                                           (cons _hd90794_ _body90772_)
                                           (cons _hd90794_ _ebody90773_))))
                                       (_E9079790828_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079590812_)
                                              (let ((_e9080890820_
                                                     (gx#syntax-e
                                                      _e9079590812_)))
                                                (let ((_hd9080990823_
                                                       (##car _e9080890820_))
                                                      (_tl9081090825_
                                                       (##cdr _e9080890820_)))
                                                  (if (and (gx#identifier?
                                                            _hd9080990823_)
                                                           (gx#core-identifier=?
                                                            _hd9080990823_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90769_
                                                           _rest90793_
                                                           (cons _hd90794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90772_)
                   _ebody90773_)
                  (_E9080790816_))
              (_E9080790816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9080790816_))))
                                       (_E9079690862_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079590812_)
                                              (let ((_e9079890832_
                                                     (gx#syntax-e
                                                      _e9079590812_)))
                                                (let ((_hd9079990835_
                                                       (##car _e9079890832_))
                                                      (_tl9080090837_
                                                       (##cdr _e9079890832_)))
                                                  (if (and (gx#identifier?
                                                            _hd9079990835_)
                                                           (gx#core-identifier=?
                                                            _hd9079990835_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9080090837_)
                                                          (let ((_e9080190840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9080090837_)))
                    (let ((_hd9080290843_ (##car _e9080190840_))
                          (_tl9080390845_ (##cdr _e9080190840_)))
                      (let ((_hd-bind90848_ _hd9080290843_))
                        (if (gx#stx-pair? _tl9080390845_)
                            (let ((_e9080490850_ (gx#syntax-e _tl9080390845_)))
                              (let ((_hd9080590853_ (##car _e9080490850_))
                                    (_tl9080690855_ (##cdr _e9080490850_)))
                                (let ((_expr90858_ _hd9080590853_))
                                  (if (gx#stx-null? _tl9080690855_)
                                      (if '#t
                                          (let ((_ehd90860_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90848_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90858_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90794_))))
                                            (_lp90769_
                                             _rest90793_
                                             (cons _ehd90860_ _body90772_)
                                             (cons _ehd90860_ _ebody90773_)))
                                          (_E9079790828_))
                                      (_E9079790828_)))))
                            (_E9079790828_)))))
                  (_E9079790828_))
              (_E9079790828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9079790828_)))))
                                  (_E9079690862_)))))
                        (if (##pair? _rest9077490782_)
                            (let ((_hd9077990869_ (##car _rest9077490782_))
                                  (_tl9078090871_ (##cdr _rest9077490782_)))
                              (let* ((_hd90874_ _hd9077990869_)
                                     (_rest90876_ _tl9078090871_))
                                (_K9077890866_ _rest90876_ _hd90874_)))
                            (_else9077690790_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90762_
                     (gx#core-expand-block__1
                      _stx90756_
                      _expand-special90758_
                      '#f))
                    (_g91026_ (_eval-body90759_ _rbody90762_)))
               (begin
                 (let ((_g91027_
                        (if (##values? _g91026_)
                            (##vector-length _g91026_)
                            1)))
                   (if (not (##fx= _g91027_ 2))
                       (error "Context expects 2 values" _g91027_)))
                 (let ((_expanded-body90764_ (##vector-ref _g91026_ 0))
                       (_value90765_ (##vector-ref _g91026_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90764_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90765_ '())))
                    (gx#stx-source _stx90756_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90726_)
        (let* ((_e9072790734_ _stx90726_)
               (_E9072990738_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9072790734_)))
               (_E9072890752_
                (lambda ()
                  (if (gx#stx-pair? _e9072790734_)
                      (let ((_e9073090742_ (gx#syntax-e _e9072790734_)))
                        (let ((_hd9073190745_ (##car _e9073090742_))
                              (_tl9073290747_ (##cdr _e9073090742_)))
                          (let ((_body90750_ _tl9073290747_))
                            (if (gx#stx-list? _body90750_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90750_)
                                 (gx#stx-source _stx90726_))
                                (_E9072990738_)))))
                      (_E9072990738_)))))
          (_E9072890752_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90724_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90724_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90670_)
        (let* ((_e9067190684_ _stx90670_)
               (_E9067390688_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9067190684_)))
               (_E9067290720_
                (lambda ()
                  (if (gx#stx-pair? _e9067190684_)
                      (let ((_e9067490692_ (gx#syntax-e _e9067190684_)))
                        (let ((_hd9067590695_ (##car _e9067490692_))
                              (_tl9067690697_ (##cdr _e9067490692_)))
                          (if (gx#stx-pair? _tl9067690697_)
                              (let ((_e9067790700_
                                     (gx#syntax-e _tl9067690697_)))
                                (let ((_hd9067890703_ (##car _e9067790700_))
                                      (_tl9067990705_ (##cdr _e9067790700_)))
                                  (let ((_ann90708_ _hd9067890703_))
                                    (if (gx#stx-pair? _tl9067990705_)
                                        (let ((_e9068090710_
                                               (gx#syntax-e _tl9067990705_)))
                                          (let ((_hd9068190713_
                                                 (##car _e9068090710_))
                                                (_tl9068290715_
                                                 (##cdr _e9068090710_)))
                                            (let ((_expr90718_ _hd9068190713_))
                                              (if (gx#stx-null? _tl9068290715_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90718_) '())))
               (gx#stx-source _stx90670_))
              (_E9067390688_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9067390688_)))))
                                        (_E9067390688_)))))
                              (_E9067390688_))))
                      (_E9067390688_)))))
          (_E9067290720_))))
    (define gx#core-expand-local-block
      (lambda (_stx90394_ _body90395_)
        (letrec ((_expand-special90397_
                  (lambda (_hd90665_ _K90666_ _rest90667_ _r90668_)
                    (_K90666_
                     '()
                     (cons (_expand-internal90398_ _hd90665_ _rest90667_)
                           _r90668_))))
                 (_expand-internal90398_
                  (lambda (_hd90661_ _rest90662_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90400_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90661_ _rest90662_))
                          (gx#stx-source _stx90394_))
                         _expand-internal-special90399_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj91020
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj91020)
                       __obj91020))))
                 (_expand-internal-special90399_
                  (lambda (_hd90556_ _K90557_ _rest90558_ _r90559_)
                    (let* ((_e9056090585_ _hd90556_)
                           (_E9058090589_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9056090585_)))
                           (_E9057690601_
                            (lambda ()
                              (if (gx#stx-pair? _e9056090585_)
                                  (let ((_e9058190593_
                                         (gx#syntax-e _e9056090585_)))
                                    (let ((_hd9058290596_
                                           (##car _e9058190593_))
                                          (_tl9058390598_
                                           (##cdr _e9058190593_)))
                                      (if (and (gx#identifier? _hd9058290596_)
                                               (gx#core-identifier=?
                                                _hd9058290596_
                                                '%#declare))
                                          (if '#t
                                              (_K90557_
                                               _rest90558_
                                               (cons (gx#core-expand-declare%
                                                      _hd90556_)
                                                     _r90559_))
                                              (_E9058090589_))
                                          (_E9058090589_))))
                                  (_E9058090589_))))
                           (_E9057290613_
                            (lambda ()
                              (if (gx#stx-pair? _e9056090585_)
                                  (let ((_e9057790605_
                                         (gx#syntax-e _e9056090585_)))
                                    (let ((_hd9057890608_
                                           (##car _e9057790605_))
                                          (_tl9057990610_
                                           (##cdr _e9057790605_)))
                                      (if (and (gx#identifier? _hd9057890608_)
                                               (gx#core-identifier=?
                                                _hd9057890608_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90556_)
                                                (_K90557_
                                                 _rest90558_
                                                 _r90559_))
                                              (_E9057690601_))
                                          (_E9057690601_))))
                                  (_E9057690601_))))
                           (_E9056290625_
                            (lambda ()
                              (if (gx#stx-pair? _e9056090585_)
                                  (let ((_e9057390617_
                                         (gx#syntax-e _e9056090585_)))
                                    (let ((_hd9057490620_
                                           (##car _e9057390617_))
                                          (_tl9057590622_
                                           (##cdr _e9057390617_)))
                                      (if (and (gx#identifier? _hd9057490620_)
                                               (gx#core-identifier=?
                                                _hd9057490620_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90556_)
                                                (_K90557_
                                                 _rest90558_
                                                 _r90559_))
                                              (_E9057290613_))
                                          (_E9057290613_))))
                                  (_E9057290613_))))
                           (_E9056190657_
                            (lambda ()
                              (if (gx#stx-pair? _e9056090585_)
                                  (let ((_e9056390629_
                                         (gx#syntax-e _e9056090585_)))
                                    (let ((_hd9056490632_
                                           (##car _e9056390629_))
                                          (_tl9056590634_
                                           (##cdr _e9056390629_)))
                                      (if (and (gx#identifier? _hd9056490632_)
                                               (gx#core-identifier=?
                                                _hd9056490632_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9056590634_)
                                              (let ((_e9056690637_
                                                     (gx#syntax-e
                                                      _tl9056590634_)))
                                                (let ((_hd9056790640_
                                                       (##car _e9056690637_))
                                                      (_tl9056890642_
                                                       (##cdr _e9056690637_)))
                                                  (let ((_hd-bind90645_
                                                         _hd9056790640_))
                                                    (if (gx#stx-pair?
                                                         _tl9056890642_)
                                                        (let ((_e9056990647_
                                                               (gx#syntax-e
                                                                _tl9056890642_)))
                                                          (let ((_hd9057090650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9056990647_))
                        (_tl9057190652_ (##cdr _e9056990647_)))
                    (let ((_expr90655_ _hd9057090650_))
                      (if (gx#stx-null? _tl9057190652_)
                          (if (gx#core-bind-values? _hd-bind90645_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90645_)
                                (_K90557_
                                 _rest90558_
                                 (cons _hd90556_ _r90559_)))
                              (_E9056290625_))
                          (_E9056290625_)))))
                (_E9056290625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9056290625_))
                                          (_E9056290625_))))
                                  (_E9056290625_)))))
                      (_E9056190657_))))
                 (_wrap-internal90400_
                  (lambda (_rbody90402_)
                    (let _lp90404_ ((_rest90406_ _rbody90402_)
                                    (_decls90407_ '())
                                    (_bind90408_ '())
                                    (_body90409_ '()))
                      (let* ((_e9041090417_ _rest90406_)
                             (_E9041290466_
                              (lambda ()
                                (let* ((_body90461_
                                        (let* ((_body9042090430_ _body90409_)
                                               (_else9042390438_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90409_)
                                                   (gx#stx-source
                                                    _stx90394_)))))
                                          (let ((_K9042890458_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90394_)))
                                                (_K9042590444_
                                                 (lambda (_expr90442_)
                                                   _expr90442_)))
                                            (let ((_try-match9042290454_
                                                   (lambda ()
                                                     (if (##pair? _body9042090430_)
                                                         (let ((_tl9042790449_
                                                                (##cdr _body9042090430_))
                                                               (_hd9042690447_
                                                                (##car _body9042090430_)))
                                                           (if (##null? _tl9042790449_)
                                                               (let ((_expr90452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9042690447_))
                         (_K9042590444_ _expr90452_))
                       (_else9042390438_)))
                 (_else9042390438_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9042090430_)
                                                  (_K9042890458_)
                                                  (_try-match9042290454_))))))
                                       (_body90463_
                                        (if (null? _bind90408_)
                                            _body90461_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90408_
                                                         (cons _body90461_
                                                               '())))
                                             (gx#stx-source _stx90394_)))))
                                  (if (null? _decls90407_)
                                      _body90463_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90407_
                                                   (cons _body90463_ '())))
                                       (gx#stx-source _stx90394_))))))
                             (_E9041190552_
                              (lambda ()
                                (if (gx#stx-pair? _e9041090417_)
                                    (let ((_e9041390470_
                                           (gx#syntax-e _e9041090417_)))
                                      (let ((_hd9041490473_
                                             (##car _e9041390470_))
                                            (_tl9041590475_
                                             (##cdr _e9041390470_)))
                                        (let* ((_hd90478_ _hd9041490473_)
                                               (_rest90480_ _tl9041590475_))
                                          (if '#t
                                              (let* ((_e9048190498_ _hd90478_)
                                                     (_E9049390502_
                                                      (lambda ()
                                                        (if (null? _bind90408_)
                                                            (_lp90404_
                                                             _rest90480_
                                                             _decls90407_
                                                             _bind90408_
                                                             (cons _hd90478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90409_))
                    (_lp90404_
                     _rest90480_
                     _decls90407_
                     (cons (cons '#f (cons _hd90478_ '())) _bind90408_)
                     _body90409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048390516_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048190498_)
                                                            (let ((_e9049490506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048190498_)))
                      (let ((_hd9049590509_ (##car _e9049490506_))
                            (_tl9049690511_ (##cdr _e9049490506_)))
                        (if (and (gx#identifier? _hd9049590509_)
                                 (gx#core-identifier=?
                                  _hd9049590509_
                                  '%#declare))
                            (let ((_xdecls90514_ _tl9049690511_))
                              (if '#t
                                  (_lp90404_
                                   _rest90480_
                                   (gx#stx-foldr
                                    cons
                                    _decls90407_
                                    _xdecls90514_)
                                   _bind90408_
                                   _body90409_)
                                  (_E9049390502_)))
                            (_E9049390502_))))
                    (_E9049390502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048290548_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048190498_)
                                                            (let ((_e9048490520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048190498_)))
                      (let ((_hd9048590523_ (##car _e9048490520_))
                            (_tl9048690525_ (##cdr _e9048490520_)))
                        (if (and (gx#identifier? _hd9048590523_)
                                 (gx#core-identifier=?
                                  _hd9048590523_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9048690525_)
                                (let ((_e9048790528_
                                       (gx#syntax-e _tl9048690525_)))
                                  (let ((_hd9048890531_ (##car _e9048790528_))
                                        (_tl9048990533_ (##cdr _e9048790528_)))
                                    (let ((_hd-bind90536_ _hd9048890531_))
                                      (if (gx#stx-pair? _tl9048990533_)
                                          (let ((_e9049090538_
                                                 (gx#syntax-e _tl9048990533_)))
                                            (let ((_hd9049190541_
                                                   (##car _e9049090538_))
                                                  (_tl9049290543_
                                                   (##cdr _e9049090538_)))
                                              (let ((_expr90546_
                                                     _hd9049190541_))
                                                (if (gx#stx-null?
                                                     _tl9049290543_)
                                                    (if '#t
                                                        (_lp90404_
                                                         _rest90480_
                                                         _decls90407_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90536_)
                             (cons (gx#core-expand-expression _expr90546_)
                                   '()))
                       _bind90408_)
                 _body90409_)
                (_E9048390516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9048390516_)))))
                                          (_E9048390516_)))))
                                (_E9048390516_))
                            (_E9048390516_))))
                    (_E9048390516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9048290548_))
                                              (_E9041290466_)))))
                                    (_E9041290466_)))))
                        (_E9041190552_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90395_)
            (gx#stx-source _stx90394_))
           _expand-special90397_))))
    (define gx#core-expand-declare%
      (lambda (_stx90332_)
        (let* ((_e9033390340_ _stx90332_)
               (_E9033590344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9033390340_)))
               (_E9033490390_
                (lambda ()
                  (if (gx#stx-pair? _e9033390340_)
                      (let ((_e9033690348_ (gx#syntax-e _e9033390340_)))
                        (let ((_hd9033790351_ (##car _e9033690348_))
                              (_tl9033890353_ (##cdr _e9033690348_)))
                          (let ((_body90356_ _tl9033890353_))
                            (if (gx#stx-list? _body90356_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90358_)
                                     (let* ((_e9035990366_ _decl90358_)
                                            (_E9036190370_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9035990366_)))
                                            (_E9036090386_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9035990366_)
                                                   (let ((_e9036290374_
                                                          (gx#syntax-e
                                                           _e9035990366_)))
                                                     (let ((_hd9036390377_
                                                            (##car _e9036290374_))
                                                           (_tl9036490379_
                                                            (##cdr _e9036290374_)))
                                                       (let* ((_head90382_
                                                               _hd9036390377_)
                                                              (_args90384_
                                                               _tl9036490379_))
                                                         (if (gx#stx-list?
                                                              _args90384_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90358_)
                                                             (_E9036190370_)))))
                                                   (_E9036190370_)))))
                                       (_E9036090386_)))
                                   _body90356_))
                                 (gx#stx-source _stx90332_))
                                (_E9033590344_)))))
                      (_E9033590344_)))))
          (_E9033490390_))))
    (define gx#core-expand-extern%
      (lambda (_stx90236_)
        (let* ((_e9023790244_ _stx90236_)
               (_E9023990248_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9023790244_)))
               (_E9023890328_
                (lambda ()
                  (if (gx#stx-pair? _e9023790244_)
                      (let ((_e9024090252_ (gx#syntax-e _e9023790244_)))
                        (let ((_hd9024190255_ (##car _e9024090252_))
                              (_tl9024290257_ (##cdr _e9024090252_)))
                          (let ((_body90260_ _tl9024290257_))
                            (if '#t
                                (let _lp90262_ ((_rest90264_ _body90260_)
                                                (_r90265_ '()))
                                  (let* ((_e9026690280_ _rest90264_)
                                         (_E9027890284_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90236_)))
                                         (_E9026890288_
                                          (lambda ()
                                            (if (gx#stx-null? _e9026690280_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90265_))
                                                     (gx#stx-source
                                                      _stx90236_))
                                                    (_E9027890284_))
                                                (_E9027890284_))))
                                         (_E9026790324_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9026690280_)
                                                (let ((_e9026990292_
                                                       (gx#syntax-e
                                                        _e9026690280_)))
                                                  (let ((_hd9027090295_
                                                         (##car _e9026990292_))
                                                        (_tl9027190297_
                                                         (##cdr _e9026990292_)))
                                                    (if (gx#stx-pair?
                                                         _hd9027090295_)
                                                        (let ((_e9027290300_
                                                               (gx#syntax-e
                                                                _hd9027090295_)))
                                                          (let ((_hd9027390303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9027290300_))
                        (_tl9027490305_ (##cdr _e9027290300_)))
                    (let ((_id90308_ _hd9027390303_))
                      (if (gx#stx-pair? _tl9027490305_)
                          (let ((_e9027590310_ (gx#syntax-e _tl9027490305_)))
                            (let ((_hd9027690313_ (##car _e9027590310_))
                                  (_tl9027790315_ (##cdr _e9027590310_)))
                              (let ((_eid90318_ _hd9027690313_))
                                (if (gx#stx-null? _tl9027790315_)
                                    (let ((_rest90320_ _tl9027190297_))
                                      (if (and (gx#identifier? _id90308_)
                                               (gx#identifier? _eid90318_))
                                          (let ((_eid90322_
                                                 (gx#stx-e _eid90318_)))
                                            (gx#core-bind-extern!__0
                                             _id90308_
                                             _eid90322_)
                                            (_lp90262_
                                             _rest90320_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90308_)
                                                         (cons _eid90322_ '()))
                                                   _r90265_)))
                                          (_E9026890288_)))
                                    (_E9026890288_)))))
                          (_E9026890288_)))))
                (_E9026890288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9026890288_)))))
                                    (_E9026790324_)))
                                (_E9023990248_)))))
                      (_E9023990248_)))))
          (_E9023890328_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90182_)
        (let* ((_e9018390196_ _stx90182_)
               (_E9018590200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9018390196_)))
               (_E9018490232_
                (lambda ()
                  (if (gx#stx-pair? _e9018390196_)
                      (let ((_e9018690204_ (gx#syntax-e _e9018390196_)))
                        (let ((_hd9018790207_ (##car _e9018690204_))
                              (_tl9018890209_ (##cdr _e9018690204_)))
                          (if (gx#stx-pair? _tl9018890209_)
                              (let ((_e9018990212_
                                     (gx#syntax-e _tl9018890209_)))
                                (let ((_hd9019090215_ (##car _e9018990212_))
                                      (_tl9019190217_ (##cdr _e9018990212_)))
                                  (let ((_hd90220_ _hd9019090215_))
                                    (if (gx#stx-pair? _tl9019190217_)
                                        (let ((_e9019290222_
                                               (gx#syntax-e _tl9019190217_)))
                                          (let ((_hd9019390225_
                                                 (##car _e9019290222_))
                                                (_tl9019490227_
                                                 (##cdr _e9019290222_)))
                                            (let ((_expr90230_ _hd9019390225_))
                                              (if (gx#stx-null? _tl9019490227_)
                                                  (if (gx#core-bind-values?
                                                       _hd90220_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90220_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90220_)
                             (cons (gx#core-expand-expression _expr90230_)
                                   '())))
                 (gx#stx-source _stx90182_)))
              (_E9018590200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9018590200_)))))
                                        (_E9018590200_)))))
                              (_E9018590200_))))
                      (_E9018590200_)))))
          (_E9018490232_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90126_)
        (let* ((_e9012790140_ _stx90126_)
               (_E9012990144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9012790140_)))
               (_E9012890178_
                (lambda ()
                  (if (gx#stx-pair? _e9012790140_)
                      (let ((_e9013090148_ (gx#syntax-e _e9012790140_)))
                        (let ((_hd9013190151_ (##car _e9013090148_))
                              (_tl9013290153_ (##cdr _e9013090148_)))
                          (if (gx#stx-pair? _tl9013290153_)
                              (let ((_e9013390156_
                                     (gx#syntax-e _tl9013290153_)))
                                (let ((_hd9013490159_ (##car _e9013390156_))
                                      (_tl9013590161_ (##cdr _e9013390156_)))
                                  (let ((_id90164_ _hd9013490159_))
                                    (if (gx#stx-pair? _tl9013590161_)
                                        (let ((_e9013690166_
                                               (gx#syntax-e _tl9013590161_)))
                                          (let ((_hd9013790169_
                                                 (##car _e9013690166_))
                                                (_tl9013890171_
                                                 (##cdr _e9013690166_)))
                                            (let ((_binding-id90174_
                                                   _hd9013790169_))
                                              (if (gx#stx-null? _tl9013890171_)
                                                  (if (and (gx#identifier?
                                                            _id90164_)
                                                           (gx#identifier?
                                                            _binding-id90174_))
                                                      (let ((_eid90176_
                                                             (gx#stx-e
                                                              _binding-id90174_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90164_
                                                         _eid90176_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90164_)
                             (cons _eid90176_ '())))))
              (_E9012990144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9012990144_)))))
                                        (_E9012990144_)))))
                              (_E9012990144_))))
                      (_E9012990144_)))))
          (_E9012890178_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90069_)
        (let* ((_e9007090083_ _stx90069_)
               (_E9007290087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9007090083_)))
               (_E9007190122_
                (lambda ()
                  (if (gx#stx-pair? _e9007090083_)
                      (let ((_e9007390091_ (gx#syntax-e _e9007090083_)))
                        (let ((_hd9007490094_ (##car _e9007390091_))
                              (_tl9007590096_ (##cdr _e9007390091_)))
                          (if (gx#stx-pair? _tl9007590096_)
                              (let ((_e9007690099_
                                     (gx#syntax-e _tl9007590096_)))
                                (let ((_hd9007790102_ (##car _e9007690099_))
                                      (_tl9007890104_ (##cdr _e9007690099_)))
                                  (let ((_id90107_ _hd9007790102_))
                                    (if (gx#stx-pair? _tl9007890104_)
                                        (let ((_e9007990109_
                                               (gx#syntax-e _tl9007890104_)))
                                          (let ((_hd9008090112_
                                                 (##car _e9007990109_))
                                                (_tl9008190114_
                                                 (##cdr _e9007990109_)))
                                            (let ((_expr90117_ _hd9008090112_))
                                              (if (gx#stx-null? _tl9008190114_)
                                                  (if (gx#identifier?
                                                       _id90107_)
                                                      (let ((_g91028_
                                                             (gx#core-expand-expression+1
                                                              _expr90117_)))
                                                        (begin
                                                          (let ((_g91029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g91028_)
                             (##vector-length _g91028_)
                             1)))
                    (if (not (##fx= _g91029_ 2))
                        (error "Context expects 2 values" _g91029_)))
                  (let ((_e-stx90119_ (##vector-ref _g91028_ 0))
                        (_e90120_ (##vector-ref _g91028_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90107_ _e90120_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90107_)
                                   (cons _e-stx90119_ '())))
                       (gx#stx-source _stx90069_))))))
              (_E9007290087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9007290087_)))))
                                        (_E9007290087_)))))
                              (_E9007290087_))))
                      (_E9007290087_)))))
          (_E9007190122_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx90013_)
        (let* ((_e9001490027_ _stx90013_)
               (_E9001690031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9001490027_)))
               (_E9001590065_
                (lambda ()
                  (if (gx#stx-pair? _e9001490027_)
                      (let ((_e9001790035_ (gx#syntax-e _e9001490027_)))
                        (let ((_hd9001890038_ (##car _e9001790035_))
                              (_tl9001990040_ (##cdr _e9001790035_)))
                          (if (gx#stx-pair? _tl9001990040_)
                              (let ((_e9002090043_
                                     (gx#syntax-e _tl9001990040_)))
                                (let ((_hd9002190046_ (##car _e9002090043_))
                                      (_tl9002290048_ (##cdr _e9002090043_)))
                                  (let ((_id90051_ _hd9002190046_))
                                    (if (gx#stx-pair? _tl9002290048_)
                                        (let ((_e9002390053_
                                               (gx#syntax-e _tl9002290048_)))
                                          (let ((_hd9002490056_
                                                 (##car _e9002390053_))
                                                (_tl9002590058_
                                                 (##cdr _e9002390053_)))
                                            (let ((_alias-id90061_
                                                   _hd9002490056_))
                                              (if (gx#stx-null? _tl9002590058_)
                                                  (if (and (gx#identifier?
                                                            _id90051_)
                                                           (gx#identifier?
                                                            _alias-id90061_))
                                                      (let ((_alias-id90063_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90061_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90051_
                                                         _alias-id90063_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90051_)
                             (cons _alias-id90063_ '())))))
              (_E9001690031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9001690031_)))))
                                        (_E9001690031_)))))
                              (_E9001690031_))))
                      (_E9001690031_)))))
          (_E9001590065_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89956_ _wrap?89957_)
        (let* ((_e8995889968_ _stx89956_)
               (_E8996089972_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8995889968_)))
               (_E8995989999_
                (lambda ()
                  (if (gx#stx-pair? _e8995889968_)
                      (let ((_e8996189976_ (gx#syntax-e _e8995889968_)))
                        (let ((_hd8996289979_ (##car _e8996189976_))
                              (_tl8996389981_ (##cdr _e8996189976_)))
                          (if (gx#stx-pair? _tl8996389981_)
                              (let ((_e8996489984_
                                     (gx#syntax-e _tl8996389981_)))
                                (let ((_hd8996589987_ (##car _e8996489984_))
                                      (_tl8996689989_ (##cdr _e8996489984_)))
                                  (let* ((_hd89992_ _hd8996589987_)
                                         (_body89994_ _tl8996689989_))
                                    (if (gx#core-bind-values? _hd89992_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89992_)
                                           (let ((_body89997_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89992_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89956_
                                                               _body89994_)
                                                              '()))))
                                             (if _wrap?89957_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89997_)
                                                  (gx#stx-source _stx89956_))
                                                 _body89997_)))
                                         gx#current-expander-context
                                         (let ((__obj91021
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91021)
                                           __obj91021))
                                        (_E8996089972_)))))
                              (_E8996089972_))))
                      (_E8996089972_)))))
          (_E8995989999_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx90006_)
        (let ((_wrap?90008_ '#t))
          (gx#core-expand-lambda%__% _stx90006_ _wrap?90008_))))
    (define gx#core-expand-lambda%
      (lambda _g91031_
        (let ((_g91030_ (##length _g91031_)))
          (cond ((##fx= _g91030_ 1)
                 (apply (lambda (_stx90006_)
                          (gx#core-expand-lambda%__0 _stx90006_))
                        _g91031_))
                ((##fx= _g91030_ 2)
                 (apply (lambda (_stx90010_ _wrap?90011_)
                          (gx#core-expand-lambda%__% _stx90010_ _wrap?90011_))
                        _g91031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g91031_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89920_)
        (let* ((_e8992189928_ _stx89920_)
               (_E8992389932_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8992189928_)))
               (_E8992289951_
                (lambda ()
                  (if (gx#stx-pair? _e8992189928_)
                      (let ((_e8992489936_ (gx#syntax-e _e8992189928_)))
                        (let ((_hd8992589939_ (##car _e8992489936_))
                              (_tl8992689941_ (##cdr _e8992489936_)))
                          (let ((_clauses89944_ _tl8992689941_))
                            (if (gx#stx-list? _clauses89944_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89946_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89946_)
                                       (let ((_$e89948_
                                              (gx#stx-source _clause89946_)))
                                         (if _$e89948_
                                             _$e89948_
                                             (gx#stx-source _stx89920_))))
                                      '#f))
                                   _clauses89944_))
                                 (gx#stx-source _stx89920_))
                                (_E8992389932_)))))
                      (_E8992389932_)))))
          (_E8992289951_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89874_)
        (let* ((_e8987589885_ _stx89874_)
               (_E8987789889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8987589885_)))
               (_E8987689916_
                (lambda ()
                  (if (gx#stx-pair? _e8987589885_)
                      (let ((_e8987889893_ (gx#syntax-e _e8987589885_)))
                        (let ((_hd8987989896_ (##car _e8987889893_))
                              (_tl8988089898_ (##cdr _e8987889893_)))
                          (if (gx#stx-pair? _tl8988089898_)
                              (let ((_e8988189901_
                                     (gx#syntax-e _tl8988089898_)))
                                (let ((_hd8988289904_ (##car _e8988189901_))
                                      (_tl8988389906_ (##cdr _e8988189901_)))
                                  (let* ((_hd89909_ _hd8988289904_)
                                         (_body89911_ _tl8988389906_))
                                    (if (gx#core-expand-let-bind? _hd89909_)
                                        (let ((_expressions89913_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89909_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89909_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89909_
                                                           _expressions89913_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89874_
                         _body89911_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89874_)))
                                           gx#current-expander-context
                                           (let ((__obj91022
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91022)
                                             __obj91022)))
                                        (_E8987789889_)))))
                              (_E8987789889_))))
                      (_E8987789889_)))))
          (_E8987689916_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89819_ _form89820_)
        (let* ((_e8982189831_ _stx89819_)
               (_E8982389835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8982189831_)))
               (_E8982289860_
                (lambda ()
                  (if (gx#stx-pair? _e8982189831_)
                      (let ((_e8982489839_ (gx#syntax-e _e8982189831_)))
                        (let ((_hd8982589842_ (##car _e8982489839_))
                              (_tl8982689844_ (##cdr _e8982489839_)))
                          (if (gx#stx-pair? _tl8982689844_)
                              (let ((_e8982789847_
                                     (gx#syntax-e _tl8982689844_)))
                                (let ((_hd8982889850_ (##car _e8982789847_))
                                      (_tl8982989852_ (##cdr _e8982789847_)))
                                  (let* ((_hd89855_ _hd8982889850_)
                                         (_body89857_ _tl8982989852_))
                                    (if (gx#core-expand-let-bind? _hd89855_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89855_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89820_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89855_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89855_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89819_
                                                               _body89857_)
                                                              '())))
                                            (gx#stx-source _stx89819_)))
                                         gx#current-expander-context
                                         (let ((__obj91023
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91023)
                                           __obj91023))
                                        (_E8982389835_)))))
                              (_E8982389835_))))
                      (_E8982389835_)))))
          (_E8982289860_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89867_)
        (let ((_form89869_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89867_ _form89869_))))
    (define gx#core-expand-letrec-values%
      (lambda _g91033_
        (let ((_g91032_ (##length _g91033_)))
          (cond ((##fx= _g91032_ 1)
                 (apply (lambda (_stx89867_)
                          (gx#core-expand-letrec-values%__0 _stx89867_))
                        _g91033_))
                ((##fx= _g91032_ 2)
                 (apply (lambda (_stx89871_ _form89872_)
                          (gx#core-expand-letrec-values%__%
                           _stx89871_
                           _form89872_))
                        _g91033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g91033_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89816_)
        (gx#core-expand-letrec-values%__% _stx89816_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89773_)
        (if (gx#stx-list? _stx89773_)
            (gx#stx-andmap
             (lambda (_bind89775_)
               (let* ((_e8977689786_ _bind89775_)
                      (_E8977889790_ (lambda () '#f))
                      (_E8977789812_
                       (lambda ()
                         (if (gx#stx-pair? _e8977689786_)
                             (let ((_e8977989794_ (gx#syntax-e _e8977689786_)))
                               (let ((_hd8978089797_ (##car _e8977989794_))
                                     (_tl8978189799_ (##cdr _e8977989794_)))
                                 (let ((_hd89802_ _hd8978089797_))
                                   (if (gx#stx-pair? _tl8978189799_)
                                       (let ((_e8978289804_
                                              (gx#syntax-e _tl8978189799_)))
                                         (let ((_hd8978389807_
                                                (##car _e8978289804_))
                                               (_tl8978489809_
                                                (##cdr _e8978289804_)))
                                           (if (gx#stx-null? _tl8978489809_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89802_)
                                                   (_E8977889790_))
                                               (_E8977889790_))))
                                       (_E8977889790_)))))
                             (_E8977889790_)))))
                 (_E8977789812_)))
             _stx89773_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89732_)
        (let* ((_e8973389743_ _bind89732_)
               (_E8973589747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8973389743_)))
               (_E8973489769_
                (lambda ()
                  (if (gx#stx-pair? _e8973389743_)
                      (let ((_e8973689751_ (gx#syntax-e _e8973389743_)))
                        (let ((_hd8973789754_ (##car _e8973689751_))
                              (_tl8973889756_ (##cdr _e8973689751_)))
                          (if (gx#stx-pair? _tl8973889756_)
                              (let ((_e8973989759_
                                     (gx#syntax-e _tl8973889756_)))
                                (let ((_hd8974089762_ (##car _e8973989759_))
                                      (_tl8974189764_ (##cdr _e8973989759_)))
                                  (let ((_expr89767_ _hd8974089762_))
                                    (if (gx#stx-null? _tl8974189764_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89767_)
                                            (_E8973589747_))
                                        (_E8973589747_)))))
                              (_E8973589747_))))
                      (_E8973589747_)))))
          (_E8973489769_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89691_)
        (let* ((_e8969289702_ _bind89691_)
               (_E8969489706_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8969289702_)))
               (_E8969389728_
                (lambda ()
                  (if (gx#stx-pair? _e8969289702_)
                      (let ((_e8969589710_ (gx#syntax-e _e8969289702_)))
                        (let ((_hd8969689713_ (##car _e8969589710_))
                              (_tl8969789715_ (##cdr _e8969589710_)))
                          (let ((_hd89718_ _hd8969689713_))
                            (if (gx#stx-pair? _tl8969789715_)
                                (let ((_e8969889720_
                                       (gx#syntax-e _tl8969789715_)))
                                  (let ((_hd8969989723_ (##car _e8969889720_))
                                        (_tl8970089725_ (##cdr _e8969889720_)))
                                    (if (gx#stx-null? _tl8970089725_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89718_)
                                            (_E8969489706_))
                                        (_E8969489706_))))
                                (_E8969489706_)))))
                      (_E8969489706_)))))
          (_E8969389728_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89649_ _expr89650_)
        (let* ((_e8965189661_ _bind89649_)
               (_E8965389665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8965189661_)))
               (_E8965289687_
                (lambda ()
                  (if (gx#stx-pair? _e8965189661_)
                      (let ((_e8965489669_ (gx#syntax-e _e8965189661_)))
                        (let ((_hd8965589672_ (##car _e8965489669_))
                              (_tl8965689674_ (##cdr _e8965489669_)))
                          (let ((_hd89677_ _hd8965589672_))
                            (if (gx#stx-pair? _tl8965689674_)
                                (let ((_e8965789679_
                                       (gx#syntax-e _tl8965689674_)))
                                  (let ((_hd8965889682_ (##car _e8965789679_))
                                        (_tl8965989684_ (##cdr _e8965789679_)))
                                    (if (gx#stx-null? _tl8965989684_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89677_)
                                                  (cons _expr89650_ '()))
                                            (_E8965389665_))
                                        (_E8965389665_))))
                                (_E8965389665_)))))
                      (_E8965389665_)))))
          (_E8965289687_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89603_)
        (let* ((_e8960489614_ _stx89603_)
               (_E8960689618_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8960489614_)))
               (_E8960589645_
                (lambda ()
                  (if (gx#stx-pair? _e8960489614_)
                      (let ((_e8960789622_ (gx#syntax-e _e8960489614_)))
                        (let ((_hd8960889625_ (##car _e8960789622_))
                              (_tl8960989627_ (##cdr _e8960789622_)))
                          (if (gx#stx-pair? _tl8960989627_)
                              (let ((_e8961089630_
                                     (gx#syntax-e _tl8960989627_)))
                                (let ((_hd8961189633_ (##car _e8961089630_))
                                      (_tl8961289635_ (##cdr _e8961089630_)))
                                  (let* ((_hd89638_ _hd8961189633_)
                                         (_body89640_ _tl8961289635_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89638_)
                                        (let ((_expanders89642_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89638_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89638_
                                              _expanders89642_)
                                             (gx#core-expand-local-block
                                              _stx89603_
                                              _body89640_))
                                           gx#current-expander-context
                                           (let ((__obj91024
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91024)
                                             __obj91024)))
                                        (_E8960689618_)))))
                              (_E8960689618_))))
                      (_E8960689618_)))))
          (_E8960589645_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89552_)
        (let* ((_e8955389563_ _stx89552_)
               (_E8955589567_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8955389563_)))
               (_E8955489599_
                (lambda ()
                  (if (gx#stx-pair? _e8955389563_)
                      (let ((_e8955689571_ (gx#syntax-e _e8955389563_)))
                        (let ((_hd8955789574_ (##car _e8955689571_))
                              (_tl8955889576_ (##cdr _e8955689571_)))
                          (if (gx#stx-pair? _tl8955889576_)
                              (let ((_e8955989579_
                                     (gx#syntax-e _tl8955889576_)))
                                (let ((_hd8956089582_ (##car _e8955989579_))
                                      (_tl8956189584_ (##cdr _e8955989579_)))
                                  (let* ((_hd89587_ _hd8956089582_)
                                         (_body89589_ _tl8956189584_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89587_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89587_
                                            (make-list
                                             (gx#stx-length _hd89587_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8959189594_
                                                     _g8959289596_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8959189594_
                                               _g8959289596_
                                               '#t))
                                            _hd89587_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89587_))
                                           (gx#core-expand-local-block
                                            _stx89552_
                                            _body89589_))
                                         gx#current-expander-context
                                         (let ((__obj91025
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91025)
                                           __obj91025))
                                        (_E8955589567_)))))
                              (_E8955589567_))))
                      (_E8955589567_)))))
          (_E8955489599_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89509_)
        (if (gx#stx-list? _stx89509_)
            (gx#stx-andmap
             (lambda (_bind89511_)
               (let* ((_e8951289522_ _bind89511_)
                      (_E8951489526_ (lambda () '#f))
                      (_E8951389548_
                       (lambda ()
                         (if (gx#stx-pair? _e8951289522_)
                             (let ((_e8951589530_ (gx#syntax-e _e8951289522_)))
                               (let ((_hd8951689533_ (##car _e8951589530_))
                                     (_tl8951789535_ (##cdr _e8951589530_)))
                                 (let ((_hd89538_ _hd8951689533_))
                                   (if (gx#stx-pair? _tl8951789535_)
                                       (let ((_e8951889540_
                                              (gx#syntax-e _tl8951789535_)))
                                         (let ((_hd8951989543_
                                                (##car _e8951889540_))
                                               (_tl8952089545_
                                                (##cdr _e8951889540_)))
                                           (if (gx#stx-null? _tl8952089545_)
                                               (if '#t
                                                   (gx#identifier? _hd89538_)
                                                   (_E8951489526_))
                                               (_E8951489526_))))
                                       (_E8951489526_)))))
                             (_E8951489526_)))))
                 (_E8951389548_)))
             _stx89509_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89466_)
        (let* ((_e8946789477_ _bind89466_)
               (_E8946989481_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8946789477_)))
               (_E8946889505_
                (lambda ()
                  (if (gx#stx-pair? _e8946789477_)
                      (let ((_e8947089485_ (gx#syntax-e _e8946789477_)))
                        (let ((_hd8947189488_ (##car _e8947089485_))
                              (_tl8947289490_ (##cdr _e8947089485_)))
                          (if (gx#stx-pair? _tl8947289490_)
                              (let ((_e8947389493_
                                     (gx#syntax-e _tl8947289490_)))
                                (let ((_hd8947489496_ (##car _e8947389493_))
                                      (_tl8947589498_ (##cdr _e8947389493_)))
                                  (let ((_expr89501_ _hd8947489496_))
                                    (if (gx#stx-null? _tl8947589498_)
                                        (if '#t
                                            (let ((_g91034_
                                                   (gx#core-expand-expression+1
                                                    _expr89501_)))
                                              (begin
                                                (let ((_g91035_
                                                       (if (##values? _g91034_)
                                                           (##vector-length
                                                            _g91034_)
                                                           1)))
                                                  (if (not (##fx= _g91035_ 2))
                                                      (error "Context expects 2 values"
                                                             _g91035_)))
                                                (let ((_e89503_
                                                       (##vector-ref
                                                        _g91034_
                                                        1)))
                                                  _e89503_)))
                                            (_E8946989481_))
                                        (_E8946989481_)))))
                              (_E8946989481_))))
                      (_E8946989481_)))))
          (_E8946889505_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89411_ _e89412_ _rebind?89413_)
        (let* ((_e8941489424_ _bind89411_)
               (_E8941689428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8941489424_)))
               (_E8941589450_
                (lambda ()
                  (if (gx#stx-pair? _e8941489424_)
                      (let ((_e8941789432_ (gx#syntax-e _e8941489424_)))
                        (let ((_hd8941889435_ (##car _e8941789432_))
                              (_tl8941989437_ (##cdr _e8941789432_)))
                          (let ((_id89440_ _hd8941889435_))
                            (if (gx#stx-pair? _tl8941989437_)
                                (let ((_e8942089442_
                                       (gx#syntax-e _tl8941989437_)))
                                  (let ((_hd8942189445_ (##car _e8942089442_))
                                        (_tl8942289447_ (##cdr _e8942089442_)))
                                    (if (gx#stx-null? _tl8942289447_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89440_
                                             _e89412_
                                             _rebind?89413_)
                                            (_E8941689428_))
                                        (_E8941689428_))))
                                (_E8941689428_)))))
                      (_E8941689428_)))))
          (_E8941589450_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89457_ _e89458_)
        (let ((_rebind?89460_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89457_
           _e89458_
           _rebind?89460_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g91037_
        (let ((_g91036_ (##length _g91037_)))
          (cond ((##fx= _g91036_ 2)
                 (apply (lambda (_bind89457_ _e89458_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89457_
                           _e89458_))
                        _g91037_))
                ((##fx= _g91036_ 3)
                 (apply (lambda (_bind89462_ _e89463_ _rebind?89464_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89462_
                           _e89463_
                           _rebind?89464_))
                        _g91037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g91037_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89369_)
        (let* ((_e8937089380_ _stx89369_)
               (_E8937289384_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937089380_)))
               (_E8937189406_
                (lambda ()
                  (if (gx#stx-pair? _e8937089380_)
                      (let ((_e8937389388_ (gx#syntax-e _e8937089380_)))
                        (let ((_hd8937489391_ (##car _e8937389388_))
                              (_tl8937589393_ (##cdr _e8937389388_)))
                          (if (gx#stx-pair? _tl8937589393_)
                              (let ((_e8937689396_
                                     (gx#syntax-e _tl8937589393_)))
                                (let ((_hd8937789399_ (##car _e8937689396_))
                                      (_tl8937889401_ (##cdr _e8937689396_)))
                                  (let ((_expr89404_ _hd8937789399_))
                                    (if (gx#stx-null? _tl8937889401_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89404_)
                                            (_E8937289384_))
                                        (_E8937289384_)))))
                              (_E8937289384_))))
                      (_E8937289384_)))))
          (_E8937189406_))))
    (define gx#core-expand-quote%
      (lambda (_stx89328_)
        (let* ((_e8932989339_ _stx89328_)
               (_E8933189343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932989339_)))
               (_E8933089365_
                (lambda ()
                  (if (gx#stx-pair? _e8932989339_)
                      (let ((_e8933289347_ (gx#syntax-e _e8932989339_)))
                        (let ((_hd8933389350_ (##car _e8933289347_))
                              (_tl8933489352_ (##cdr _e8933289347_)))
                          (if (gx#stx-pair? _tl8933489352_)
                              (let ((_e8933589355_
                                     (gx#syntax-e _tl8933489352_)))
                                (let ((_hd8933689358_ (##car _e8933589355_))
                                      (_tl8933789360_ (##cdr _e8933589355_)))
                                  (let ((_e89363_ _hd8933689358_))
                                    (if (gx#stx-null? _tl8933789360_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89363_)
                                                         '()))
                                             (gx#stx-source _stx89328_))
                                            (_E8933189343_))
                                        (_E8933189343_)))))
                              (_E8933189343_))))
                      (_E8933189343_)))))
          (_E8933089365_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89287_)
        (let* ((_e8928889298_ _stx89287_)
               (_E8929089302_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8928889298_)))
               (_E8928989324_
                (lambda ()
                  (if (gx#stx-pair? _e8928889298_)
                      (let ((_e8929189306_ (gx#syntax-e _e8928889298_)))
                        (let ((_hd8929289309_ (##car _e8929189306_))
                              (_tl8929389311_ (##cdr _e8929189306_)))
                          (if (gx#stx-pair? _tl8929389311_)
                              (let ((_e8929489314_
                                     (gx#syntax-e _tl8929389311_)))
                                (let ((_hd8929589317_ (##car _e8929489314_))
                                      (_tl8929689319_ (##cdr _e8929489314_)))
                                  (let ((_e89322_ _hd8929589317_))
                                    (if (gx#stx-null? _tl8929689319_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89322_)
                                                         '()))
                                             (gx#stx-source _stx89287_))
                                            (_E8929089302_))
                                        (_E8929089302_)))))
                              (_E8929089302_))))
                      (_E8929089302_)))))
          (_E8928989324_))))
    (define gx#core-expand-call%
      (lambda (_stx89244_)
        (let* ((_e8924589255_ _stx89244_)
               (_E8924789259_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8924589255_)))
               (_E8924689283_
                (lambda ()
                  (if (gx#stx-pair? _e8924589255_)
                      (let ((_e8924889263_ (gx#syntax-e _e8924589255_)))
                        (let ((_hd8924989266_ (##car _e8924889263_))
                              (_tl8925089268_ (##cdr _e8924889263_)))
                          (if (gx#stx-pair? _tl8925089268_)
                              (let ((_e8925189271_
                                     (gx#syntax-e _tl8925089268_)))
                                (let ((_hd8925289274_ (##car _e8925189271_))
                                      (_tl8925389276_ (##cdr _e8925189271_)))
                                  (let* ((_rator89279_ _hd8925289274_)
                                         (_args89281_ _tl8925389276_))
                                    (if (gx#stx-list? _args89281_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89279_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89281_))
                                         (gx#stx-source _stx89244_))
                                        (_E8924789259_)))))
                              (_E8924789259_))))
                      (_E8924789259_)))))
          (_E8924689283_))))
    (define gx#core-expand-if%
      (lambda (_stx89177_)
        (let* ((_e8917889194_ _stx89177_)
               (_E8918089198_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8917889194_)))
               (_E8917989240_
                (lambda ()
                  (if (gx#stx-pair? _e8917889194_)
                      (let ((_e8918189202_ (gx#syntax-e _e8917889194_)))
                        (let ((_hd8918289205_ (##car _e8918189202_))
                              (_tl8918389207_ (##cdr _e8918189202_)))
                          (if (gx#stx-pair? _tl8918389207_)
                              (let ((_e8918489210_
                                     (gx#syntax-e _tl8918389207_)))
                                (let ((_hd8918589213_ (##car _e8918489210_))
                                      (_tl8918689215_ (##cdr _e8918489210_)))
                                  (let ((_test89218_ _hd8918589213_))
                                    (if (gx#stx-pair? _tl8918689215_)
                                        (let ((_e8918789220_
                                               (gx#syntax-e _tl8918689215_)))
                                          (let ((_hd8918889223_
                                                 (##car _e8918789220_))
                                                (_tl8918989225_
                                                 (##cdr _e8918789220_)))
                                            (let ((_K89228_ _hd8918889223_))
                                              (if (gx#stx-pair? _tl8918989225_)
                                                  (let ((_e8919089230_
                                                         (gx#syntax-e
                                                          _tl8918989225_)))
                                                    (let ((_hd8919189233_
                                                           (##car _e8919089230_))
                                                          (_tl8919289235_
                                                           (##cdr _e8919089230_)))
                                                      (let ((_E89238_
                                                             _hd8919189233_))
                                                        (if (gx#stx-null?
                                                             _tl8919289235_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89218_)
                                     (cons (gx#core-expand-expression _K89228_)
                                           (cons (gx#core-expand-expression
                                                  _E89238_)
                                                 '()))))
                         (gx#stx-source _stx89177_))
                        (_E8918089198_))
                    (_E8918089198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8918089198_)))))
                                        (_E8918089198_)))))
                              (_E8918089198_))))
                      (_E8918089198_)))))
          (_E8917989240_))))
    (define gx#core-expand-ref%
      (lambda (_stx89136_)
        (let* ((_e8913789147_ _stx89136_)
               (_E8913989151_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913789147_)))
               (_E8913889173_
                (lambda ()
                  (if (gx#stx-pair? _e8913789147_)
                      (let ((_e8914089155_ (gx#syntax-e _e8913789147_)))
                        (let ((_hd8914189158_ (##car _e8914089155_))
                              (_tl8914289160_ (##cdr _e8914089155_)))
                          (if (gx#stx-pair? _tl8914289160_)
                              (let ((_e8914389163_
                                     (gx#syntax-e _tl8914289160_)))
                                (let ((_hd8914489166_ (##car _e8914389163_))
                                      (_tl8914589168_ (##cdr _e8914389163_)))
                                  (let ((_id89171_ _hd8914489166_))
                                    (if (gx#stx-null? _tl8914589168_)
                                        (if (gx#identifier? _id89171_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89171_
                                                          _stx89136_)
                                                         '()))
                                             (gx#stx-source _stx89136_))
                                            (_E8913989151_))
                                        (_E8913989151_)))))
                              (_E8913989151_))))
                      (_E8913989151_)))))
          (_E8913889173_))))
    (define gx#core-expand-setq%
      (lambda (_stx89082_)
        (let* ((_e8908389096_ _stx89082_)
               (_E8908589100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8908389096_)))
               (_E8908489132_
                (lambda ()
                  (if (gx#stx-pair? _e8908389096_)
                      (let ((_e8908689104_ (gx#syntax-e _e8908389096_)))
                        (let ((_hd8908789107_ (##car _e8908689104_))
                              (_tl8908889109_ (##cdr _e8908689104_)))
                          (if (gx#stx-pair? _tl8908889109_)
                              (let ((_e8908989112_
                                     (gx#syntax-e _tl8908889109_)))
                                (let ((_hd8909089115_ (##car _e8908989112_))
                                      (_tl8909189117_ (##cdr _e8908989112_)))
                                  (let ((_id89120_ _hd8909089115_))
                                    (if (gx#stx-pair? _tl8909189117_)
                                        (let ((_e8909289122_
                                               (gx#syntax-e _tl8909189117_)))
                                          (let ((_hd8909389125_
                                                 (##car _e8909289122_))
                                                (_tl8909489127_
                                                 (##cdr _e8909289122_)))
                                            (let ((_expr89130_ _hd8909389125_))
                                              (if (gx#stx-null? _tl8909489127_)
                                                  (if (gx#identifier?
                                                       _id89120_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89120_
                            _stx89082_)
                           (cons (gx#core-expand-expression _expr89130_) '())))
               (gx#stx-source _stx89082_))
              (_E8908589100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8908589100_)))))
                                        (_E8908589100_)))))
                              (_E8908589100_))))
                      (_E8908589100_)))))
          (_E8908489132_))))
    (define gx#macro-expand-extern
      (lambda (_stx88930_)
        (letrec ((_generate88932_
                  (lambda (_body88962_)
                    (let _lp88964_ ((_rest88966_ _body88962_)
                                    (_ns88967_ (gx#core-context-namespace__0))
                                    (_r88968_ '()))
                      (let* ((_e8896988984_ _rest88966_)
                             (_E8898288988_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8896988984_)))
                             (_E8897888992_
                              (lambda ()
                                (if (gx#stx-null? _e8896988984_)
                                    (if '#t (reverse _r88968_) (_E8898288988_))
                                    (_E8898288988_))))
                             (_E8897189049_
                              (lambda ()
                                (if (gx#stx-pair? _e8896988984_)
                                    (let ((_e8897988996_
                                           (gx#syntax-e _e8896988984_)))
                                      (let ((_hd8898088999_
                                             (##car _e8897988996_))
                                            (_tl8898189001_
                                             (##cdr _e8897988996_)))
                                        (let* ((_hd89004_ _hd8898088999_)
                                               (_rest89006_ _tl8898189001_))
                                          (if '#t
                                              (if (gx#identifier? _hd89004_)
                                                  (_lp88964_
                                                   _rest89006_
                                                   _ns88967_
                                                   (cons (cons _hd89004_
                                                               (cons (if _ns88967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd89004_
                                  _ns88967_
                                  '"#"
                                  _hd89004_)
                                 _hd89004_)
                             '()))
                 _r88968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8900789017_
                                                          _hd89004_)
                                                         (_E8900989021_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8900789017_)))
                                                         (_E8900889045_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8900789017_)
                        (let ((_e8901089025_ (gx#syntax-e _e8900789017_)))
                          (let ((_hd8901189028_ (##car _e8901089025_))
                                (_tl8901289030_ (##cdr _e8901089025_)))
                            (let ((_id89033_ _hd8901189028_))
                              (if (gx#stx-pair? _tl8901289030_)
                                  (let ((_e8901389035_
                                         (gx#syntax-e _tl8901289030_)))
                                    (let ((_hd8901489038_
                                           (##car _e8901389035_))
                                          (_tl8901589040_
                                           (##cdr _e8901389035_)))
                                      (let ((_eid89043_ _hd8901489038_))
                                        (if (gx#stx-null? _tl8901589040_)
                                            (if (and (gx#identifier? _id89033_)
                                                     (gx#identifier?
                                                      _eid89043_))
                                                (_lp88964_
                                                 _rest89006_
                                                 _ns88967_
                                                 (cons (cons _id89033_
                                                             (cons _eid89043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8900989021_))
                                            (_E8900989021_)))))
                                  (_E8900989021_)))))
                        (_E8900989021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8900889045_)))
                                              (_E8897888992_)))))
                                    (_E8897888992_))))
                             (_E8897089078_
                              (lambda ()
                                (if (gx#stx-pair? _e8896988984_)
                                    (let ((_e8897289053_
                                           (gx#syntax-e _e8896988984_)))
                                      (let ((_hd8897389056_
                                             (##car _e8897289053_))
                                            (_tl8897489058_
                                             (##cdr _e8897289053_)))
                                        (if (eq? (gx#stx-e _hd8897389056_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8897489058_)
                                                (let ((_e8897589061_
                                                       (gx#syntax-e
                                                        _tl8897489058_)))
                                                  (let ((_hd8897689064_
                                                         (##car _e8897589061_))
                                                        (_tl8897789066_
                                                         (##cdr _e8897589061_)))
                                                    (let* ((_ns89069_
                                                            _hd8897689064_)
                                                           (_rest89071_
                                                            _tl8897789066_))
                                                      (if '#t
                                                          (let ((_ns89076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89069_)
                             (symbol->string (gx#stx-e _ns89069_))
                             (if (or (gx#stx-string? _ns89069_)
                                     (gx#stx-false? _ns89069_))
                                 (gx#stx-e _ns89069_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88930_
                                  _ns89069_)))))
                    (_lp88964_ _rest89071_ _ns89076_ _r88968_))
                  (_E8897189049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8897189049_))
                                            (_E8897189049_))))
                                    (_E8897189049_)))))
                        (_E8897089078_))))))
          (let* ((_e8893388940_ _stx88930_)
                 (_E8893588944_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8893388940_)))
                 (_E8893488958_
                  (lambda ()
                    (if (gx#stx-pair? _e8893388940_)
                        (let ((_e8893688948_ (gx#syntax-e _e8893388940_)))
                          (let ((_hd8893788951_ (##car _e8893688948_))
                                (_tl8893888953_ (##cdr _e8893688948_)))
                            (let ((_body88956_ _tl8893888953_))
                              (if (gx#stx-list? _body88956_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88932_ _body88956_))
                                  (_E8893588944_)))))
                        (_E8893588944_)))))
            (_E8893488958_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88876_)
        (let* ((_e8887788890_ _stx88876_)
               (_E8887988894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887788890_)))
               (_E8887888926_
                (lambda ()
                  (if (gx#stx-pair? _e8887788890_)
                      (let ((_e8888088898_ (gx#syntax-e _e8887788890_)))
                        (let ((_hd8888188901_ (##car _e8888088898_))
                              (_tl8888288903_ (##cdr _e8888088898_)))
                          (if (gx#stx-pair? _tl8888288903_)
                              (let ((_e8888388906_
                                     (gx#syntax-e _tl8888288903_)))
                                (let ((_hd8888488909_ (##car _e8888388906_))
                                      (_tl8888588911_ (##cdr _e8888388906_)))
                                  (let ((_hd88914_ _hd8888488909_))
                                    (if (gx#stx-pair? _tl8888588911_)
                                        (let ((_e8888688916_
                                               (gx#syntax-e _tl8888588911_)))
                                          (let ((_hd8888788919_
                                                 (##car _e8888688916_))
                                                (_tl8888888921_
                                                 (##cdr _e8888688916_)))
                                            (let ((_expr88924_ _hd8888788919_))
                                              (if (gx#stx-null? _tl8888888921_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88914_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88914_)
                          (cons _expr88924_ '())))
              (_E8887988894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8887988894_)))))
                                        (_E8887988894_)))))
                              (_E8887988894_))))
                      (_E8887988894_)))))
          (_E8887888926_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88822_)
        (let* ((_e8882388836_ _stx88822_)
               (_E8882588840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882388836_)))
               (_E8882488872_
                (lambda ()
                  (if (gx#stx-pair? _e8882388836_)
                      (let ((_e8882688844_ (gx#syntax-e _e8882388836_)))
                        (let ((_hd8882788847_ (##car _e8882688844_))
                              (_tl8882888849_ (##cdr _e8882688844_)))
                          (if (gx#stx-pair? _tl8882888849_)
                              (let ((_e8882988852_
                                     (gx#syntax-e _tl8882888849_)))
                                (let ((_hd8883088855_ (##car _e8882988852_))
                                      (_tl8883188857_ (##cdr _e8882988852_)))
                                  (let ((_hd88860_ _hd8883088855_))
                                    (if (gx#stx-pair? _tl8883188857_)
                                        (let ((_e8883288862_
                                               (gx#syntax-e _tl8883188857_)))
                                          (let ((_hd8883388865_
                                                 (##car _e8883288862_))
                                                (_tl8883488867_
                                                 (##cdr _e8883288862_)))
                                            (let ((_expr88870_ _hd8883388865_))
                                              (if (gx#stx-null? _tl8883488867_)
                                                  (if (gx#identifier?
                                                       _hd88860_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88870_ '())))
              (_E8882588840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882588840_)))))
                                        (_E8882588840_)))))
                              (_E8882588840_))))
                      (_E8882588840_)))))
          (_E8882488872_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88768_)
        (let* ((_e8876988782_ _stx88768_)
               (_E8877188786_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876988782_)))
               (_E8877088818_
                (lambda ()
                  (if (gx#stx-pair? _e8876988782_)
                      (let ((_e8877288790_ (gx#syntax-e _e8876988782_)))
                        (let ((_hd8877388793_ (##car _e8877288790_))
                              (_tl8877488795_ (##cdr _e8877288790_)))
                          (if (gx#stx-pair? _tl8877488795_)
                              (let ((_e8877588798_
                                     (gx#syntax-e _tl8877488795_)))
                                (let ((_hd8877688801_ (##car _e8877588798_))
                                      (_tl8877788803_ (##cdr _e8877588798_)))
                                  (let ((_id88806_ _hd8877688801_))
                                    (if (gx#stx-pair? _tl8877788803_)
                                        (let ((_e8877888808_
                                               (gx#syntax-e _tl8877788803_)))
                                          (let ((_hd8877988811_
                                                 (##car _e8877888808_))
                                                (_tl8878088813_
                                                 (##cdr _e8877888808_)))
                                            (let ((_alias-id88816_
                                                   _hd8877988811_))
                                              (if (gx#stx-null? _tl8878088813_)
                                                  (if (and (gx#identifier?
                                                            _id88806_)
                                                           (gx#identifier?
                                                            _alias-id88816_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88816_ '())))
              (_E8877188786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877188786_)))))
                                        (_E8877188786_)))))
                              (_E8877188786_))))
                      (_E8877188786_)))))
          (_E8877088818_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88725_)
        (let* ((_e8872688736_ _stx88725_)
               (_E8872888740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872688736_)))
               (_E8872788764_
                (lambda ()
                  (if (gx#stx-pair? _e8872688736_)
                      (let ((_e8872988744_ (gx#syntax-e _e8872688736_)))
                        (let ((_hd8873088747_ (##car _e8872988744_))
                              (_tl8873188749_ (##cdr _e8872988744_)))
                          (if (gx#stx-pair? _tl8873188749_)
                              (let ((_e8873288752_
                                     (gx#syntax-e _tl8873188749_)))
                                (let ((_hd8873388755_ (##car _e8873288752_))
                                      (_tl8873488757_ (##cdr _e8873288752_)))
                                  (let* ((_hd88760_ _hd8873388755_)
                                         (_body88762_ _tl8873488757_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88760_)
                                             (gx#stx-list? _body88762_)
                                             (not (gx#stx-null? _body88762_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88760_)
                                         _body88762_)
                                        (_E8872888740_)))))
                              (_E8872888740_))))
                      (_E8872888740_)))))
          (_E8872788764_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88661_)
        (letrec ((_generate88663_
                  (lambda (_clause88693_)
                    (let* ((_e8869488701_ _clause88693_)
                           (_E8869688705_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88661_
                               _clause88693_)))
                           (_E8869588721_
                            (lambda ()
                              (if (gx#stx-pair? _e8869488701_)
                                  (let ((_e8869788709_
                                         (gx#syntax-e _e8869488701_)))
                                    (let ((_hd8869888712_
                                           (##car _e8869788709_))
                                          (_tl8869988714_
                                           (##cdr _e8869788709_)))
                                      (let* ((_hd88717_ _hd8869888712_)
                                             (_body88719_ _tl8869988714_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88717_)
                                                 (gx#stx-list? _body88719_)
                                                 (not (gx#stx-null?
                                                       _body88719_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88717_)
                                                   _body88719_)
                                             (gx#stx-source _clause88693_))
                                            (_E8869688705_)))))
                                  (_E8869688705_)))))
                      (_E8869588721_)))))
          (let* ((_e8866488671_ _stx88661_)
                 (_E8866688675_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8866488671_)))
                 (_E8866588689_
                  (lambda ()
                    (if (gx#stx-pair? _e8866488671_)
                        (let ((_e8866788679_ (gx#syntax-e _e8866488671_)))
                          (let ((_hd8866888682_ (##car _e8866788679_))
                                (_tl8866988684_ (##cdr _e8866788679_)))
                            (let ((_clauses88687_ _tl8866988684_))
                              (if (gx#stx-list? _clauses88687_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88663_
                                    _clauses88687_))
                                  (_E8866688675_)))))
                        (_E8866688675_)))))
            (_E8866588689_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88562_ _form88563_)
        (letrec ((_generate88565_
                  (lambda (_bind88608_)
                    (let* ((_e8860988619_ _bind88608_)
                           (_E8861188623_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88562_
                               _bind88608_)))
                           (_E8861088647_
                            (lambda ()
                              (if (gx#stx-pair? _e8860988619_)
                                  (let ((_e8861288627_
                                         (gx#syntax-e _e8860988619_)))
                                    (let ((_hd8861388630_
                                           (##car _e8861288627_))
                                          (_tl8861488632_
                                           (##cdr _e8861288627_)))
                                      (let ((_ids88635_ _hd8861388630_))
                                        (if (gx#stx-pair? _tl8861488632_)
                                            (let ((_e8861588637_
                                                   (gx#syntax-e
                                                    _tl8861488632_)))
                                              (let ((_hd8861688640_
                                                     (##car _e8861588637_))
                                                    (_tl8861788642_
                                                     (##cdr _e8861588637_)))
                                                (let ((_expr88645_
                                                       _hd8861688640_))
                                                  (if (gx#stx-null?
                                                       _tl8861788642_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88635_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88635_)
                        (cons _expr88645_ '()))
                  (_E8861188623_))
              (_E8861188623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8861188623_)))))
                                  (_E8861188623_)))))
                      (_E8861088647_)))))
          (let* ((_e8856688576_ _stx88562_)
                 (_E8856888580_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8856688576_)))
                 (_E8856788604_
                  (lambda ()
                    (if (gx#stx-pair? _e8856688576_)
                        (let ((_e8856988584_ (gx#syntax-e _e8856688576_)))
                          (let ((_hd8857088587_ (##car _e8856988584_))
                                (_tl8857188589_ (##cdr _e8856988584_)))
                            (if (gx#stx-pair? _tl8857188589_)
                                (let ((_e8857288592_
                                       (gx#syntax-e _tl8857188589_)))
                                  (let ((_hd8857388595_ (##car _e8857288592_))
                                        (_tl8857488597_ (##cdr _e8857288592_)))
                                    (let* ((_hd88600_ _hd8857388595_)
                                           (_body88602_ _tl8857488597_))
                                      (if (and (gx#stx-list? _hd88600_)
                                               (gx#stx-list? _body88602_)
                                               (not (gx#stx-null?
                                                     _body88602_)))
                                          (gx#core-cons*
                                           _form88563_
                                           (gx#stx-map1
                                            _generate88565_
                                            _hd88600_)
                                           _body88602_)
                                          (_E8856888580_)))))
                                (_E8856888580_))))
                        (_E8856888580_)))))
            (_E8856788604_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88654_)
        (let ((_form88656_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88654_ _form88656_))))
    (define gx#macro-expand-let-values
      (lambda _g91039_
        (let ((_g91038_ (##length _g91039_)))
          (cond ((##fx= _g91038_ 1)
                 (apply (lambda (_stx88654_)
                          (gx#macro-expand-let-values__0 _stx88654_))
                        _g91039_))
                ((##fx= _g91038_ 2)
                 (apply (lambda (_stx88658_ _form88659_)
                          (gx#macro-expand-let-values__%
                           _stx88658_
                           _form88659_))
                        _g91039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g91039_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88559_)
        (gx#macro-expand-let-values__% _stx88559_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88557_)
        (gx#macro-expand-let-values__% _stx88557_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88448_)
        (let* ((_e8844988475_ _stx88448_)
               (_E8846188479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8844988475_)))
               (_E8845188521_
                (lambda ()
                  (if (gx#stx-pair? _e8844988475_)
                      (let ((_e8846288483_ (gx#syntax-e _e8844988475_)))
                        (let ((_hd8846388486_ (##car _e8846288483_))
                              (_tl8846488488_ (##cdr _e8846288483_)))
                          (if (gx#stx-pair? _tl8846488488_)
                              (let ((_e8846588491_
                                     (gx#syntax-e _tl8846488488_)))
                                (let ((_hd8846688494_ (##car _e8846588491_))
                                      (_tl8846788496_ (##cdr _e8846588491_)))
                                  (let ((_test88499_ _hd8846688494_))
                                    (if (gx#stx-pair? _tl8846788496_)
                                        (let ((_e8846888501_
                                               (gx#syntax-e _tl8846788496_)))
                                          (let ((_hd8846988504_
                                                 (##car _e8846888501_))
                                                (_tl8847088506_
                                                 (##cdr _e8846888501_)))
                                            (let ((_K88509_ _hd8846988504_))
                                              (if (gx#stx-pair? _tl8847088506_)
                                                  (let ((_e8847188511_
                                                         (gx#syntax-e
                                                          _tl8847088506_)))
                                                    (let ((_hd8847288514_
                                                           (##car _e8847188511_))
                                                          (_tl8847388516_
                                                           (##cdr _e8847188511_)))
                                                      (let ((_E88519_
                                                             _hd8847288514_))
                                                        (if (gx#stx-null?
                                                             _tl8847388516_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88499_
                         _K88509_
                         _E88519_)
                        (_E8846188479_))
                    (_E8846188479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8846188479_)))))
                                        (_E8846188479_)))))
                              (_E8846188479_))))
                      (_E8846188479_))))
               (_E8845088553_
                (lambda ()
                  (if (gx#stx-pair? _e8844988475_)
                      (let ((_e8845288525_ (gx#syntax-e _e8844988475_)))
                        (let ((_hd8845388528_ (##car _e8845288525_))
                              (_tl8845488530_ (##cdr _e8845288525_)))
                          (if (gx#stx-pair? _tl8845488530_)
                              (let ((_e8845588533_
                                     (gx#syntax-e _tl8845488530_)))
                                (let ((_hd8845688536_ (##car _e8845588533_))
                                      (_tl8845788538_ (##cdr _e8845588533_)))
                                  (let ((_test88541_ _hd8845688536_))
                                    (if (gx#stx-pair? _tl8845788538_)
                                        (let ((_e8845888543_
                                               (gx#syntax-e _tl8845788538_)))
                                          (let ((_hd8845988546_
                                                 (##car _e8845888543_))
                                                (_tl8846088548_
                                                 (##cdr _e8845888543_)))
                                            (let ((_K88551_ _hd8845988546_))
                                              (if (gx#stx-null? _tl8846088548_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88541_
                                                       _K88551_
                                                       '#!void)
                                                      (_E8845188521_))
                                                  (_E8845188521_)))))
                                        (_E8845188521_)))))
                              (_E8845188521_))))
                      (_E8845188521_)))))
          (_E8845088553_))))
    (define gx#free-identifier=?
      (lambda (_xid88436_ _yid88437_)
        (let ((_xe88439_ (gx#resolve-identifier__0 _xid88436_))
              (_ye88440_ (gx#resolve-identifier__0 _yid88437_)))
          (if (and _xe88439_ _ye88440_)
              (let ((_$e88442_ (eq? _xe88439_ _ye88440_)))
                (if _$e88442_
                    _$e88442_
                    (if (##structure-instance-of? _xe88439_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88440_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88439_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88440_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88439_ _ye88440_)
                  '#f
                  (gx#stx-eq? _xid88436_ _yid88437_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88420_ _yid88421_)
        (letrec ((_context88423_
                  (lambda (_e88434_)
                    (if (##structure-direct-instance-of?
                         _e88434_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88434_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88424_
                  (lambda (_e88432_)
                    (if (symbol? _e88432_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88432_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88432_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88432_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88425_
                  (lambda (_e88430_)
                    (if (symbol? _e88430_)
                        _e88430_
                        (gx#syntax-local-unwrap _e88430_)))))
          (let ((_x88427_ (_unwrap88425_ _xid88420_))
                (_y88428_ (_unwrap88425_ _yid88421_)))
            (if (gx#stx-eq? _x88427_ _y88428_)
                (if (eq? (_context88423_ _x88427_) (_context88423_ _y88428_))
                    (equal? (_marks88424_ _x88427_) (_marks88424_ _y88428_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88418_)
        (if (gx#identifier? _stx88418_)
            (gx#core-identifier=? _stx88418_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88416_)
        (if (gx#identifier? _stx88416_)
            (gx#core-identifier=? _stx88416_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88414_)
        (if (gx#identifier? _x88414_)
            (if (not (gx#underscore? _x88414_)) _x88414_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88360_ _where88361_)
        (let _lp88363_ ((_rest88365_ (gx#syntax->list _stx88360_)))
          (let* ((_rest8836688374_ _rest88365_)
                 (_else8836888382_ (lambda () '#t))
                 (_K8837088392_
                  (lambda (_rest88385_ _hd88386_)
                    (if (not (gx#identifier? _hd88386_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88361_
                         _hd88386_)
                        (if (find (lambda (_g8838788389_)
                                    (gx#bound-identifier=?
                                     _g8838788389_
                                     _hd88386_))
                                  _rest88385_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88361_
                             _hd88386_)
                            (_lp88363_ _rest88385_))))))
            (if (##pair? _rest8836688374_)
                (let ((_hd8837188395_ (##car _rest8836688374_))
                      (_tl8837288397_ (##cdr _rest8836688374_)))
                  (let* ((_hd88400_ _hd8837188395_)
                         (_rest88402_ _tl8837288397_))
                    (_K8837088392_ _rest88402_ _hd88400_)))
                (_else8836888382_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88407_)
        (let ((_where88409_ _stx88407_))
          (gx#check-duplicate-identifiers__% _stx88407_ _where88409_))))
    (define gx#check-duplicate-identifiers
      (lambda _g91041_
        (let ((_g91040_ (##length _g91041_)))
          (cond ((##fx= _g91040_ 1)
                 (apply (lambda (_stx88407_)
                          (gx#check-duplicate-identifiers__0 _stx88407_))
                        _g91041_))
                ((##fx= _g91040_ 2)
                 (apply (lambda (_stx88411_ _where88412_)
                          (gx#check-duplicate-identifiers__%
                           _stx88411_
                           _where88412_))
                        _g91041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g91041_))))))
    (define gx#core-bind-values?
      (lambda (_stx88352_)
        (gx#stx-andmap
         (lambda (_x88354_)
           (let ((_$e88356_ (gx#identifier? _x88354_)))
             (if _$e88356_ _$e88356_ (gx#stx-false? _x88354_))))
         _stx88352_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88316_ _rebind?88317_ _phi88318_ _ctx88319_)
        (gx#stx-for-each1
         (lambda (_id88321_)
           (if (gx#identifier? _id88321_)
               (gx#core-bind-runtime!__%
                _id88321_
                _rebind?88317_
                _phi88318_
                _ctx88319_)
               '#!void))
         _stx88316_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88326_)
        (let* ((_rebind?88328_ '#f)
               (_phi88330_ (gx#current-expander-phi))
               (_ctx88332_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88326_
           _rebind?88328_
           _phi88330_
           _ctx88332_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88334_ _rebind?88335_)
        (let* ((_phi88337_ (gx#current-expander-phi))
               (_ctx88339_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88334_
           _rebind?88335_
           _phi88337_
           _ctx88339_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88341_ _rebind?88342_ _phi88343_)
        (let ((_ctx88345_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88341_
           _rebind?88342_
           _phi88343_
           _ctx88345_))))
    (define gx#core-bind-values!
      (lambda _g91043_
        (let ((_g91042_ (##length _g91043_)))
          (cond ((##fx= _g91042_ 1)
                 (apply (lambda (_stx88326_)
                          (gx#core-bind-values!__0 _stx88326_))
                        _g91043_))
                ((##fx= _g91042_ 2)
                 (apply (lambda (_stx88334_ _rebind?88335_)
                          (gx#core-bind-values!__1 _stx88334_ _rebind?88335_))
                        _g91043_))
                ((##fx= _g91042_ 3)
                 (apply (lambda (_stx88341_ _rebind?88342_ _phi88343_)
                          (gx#core-bind-values!__2
                           _stx88341_
                           _rebind?88342_
                           _phi88343_))
                        _g91043_))
                ((##fx= _g91042_ 4)
                 (apply (lambda (_stx88347_
                                 _rebind?88348_
                                 _phi88349_
                                 _ctx88350_)
                          (gx#core-bind-values!__%
                           _stx88347_
                           _rebind?88348_
                           _phi88349_
                           _ctx88350_))
                        _g91043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g91043_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88311_)
        (gx#stx-map1
         (lambda (_x88313_)
           (if (gx#identifier? _x88313_)
               (gx#core-quote-syntax__0 _x88313_)
               '#f))
         _stx88311_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88304_)
        (if (gx#identifier? _stx88304_)
            (let* ((_bind88306_ (gx#resolve-identifier__0 _stx88304_))
                   (_$e88308_ (not _bind88306_)))
              (if _$e88308_
                  _$e88308_
                  (##structure-instance-of?
                   _bind88306_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88296_ _form88297_)
        (let ((_bind88299_ (gx#resolve-identifier__0 _id88296_)))
          (if (##structure-instance-of? _bind88299_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88296_)
              (if (not _bind88299_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88296_)))
                      (gx#core-quote-syntax__0 _id88296_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88297_
                       _id88296_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88297_
                   _id88296_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88255_ _rebind?88256_ _phi88257_ _ctx88258_)
        (let* ((_key88260_ (gx#core-identifier-key _id88255_))
               (_eid88262_
                (gx#make-binding-id__% _key88260_ '#f _phi88257_ _ctx88258_))
               (_bind88264_
                (if (##structure-instance-of? _ctx88258_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88262_
                     _key88260_
                     _phi88257_
                     _ctx88258_)
                    (if (##structure-instance-of?
                         _ctx88258_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88262_
                         _key88260_
                         _phi88257_)
                        (if (##structure-instance-of?
                             _ctx88258_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88262_
                             _key88260_
                             _phi88257_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88262_
                             _key88260_
                             _phi88257_))))))
          (gx#bind-identifier!__%
           _id88255_
           _bind88264_
           _rebind?88256_
           _phi88257_
           _ctx88258_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88270_)
        (let* ((_rebind?88272_ '#f)
               (_phi88274_ (gx#current-expander-phi))
               (_ctx88276_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88270_
           _rebind?88272_
           _phi88274_
           _ctx88276_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88278_ _rebind?88279_)
        (let* ((_phi88281_ (gx#current-expander-phi))
               (_ctx88283_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88278_
           _rebind?88279_
           _phi88281_
           _ctx88283_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88285_ _rebind?88286_ _phi88287_)
        (let ((_ctx88289_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88285_
           _rebind?88286_
           _phi88287_
           _ctx88289_))))
    (define gx#core-bind-runtime!
      (lambda _g91045_
        (let ((_g91044_ (##length _g91045_)))
          (cond ((##fx= _g91044_ 1)
                 (apply (lambda (_id88270_)
                          (gx#core-bind-runtime!__0 _id88270_))
                        _g91045_))
                ((##fx= _g91044_ 2)
                 (apply (lambda (_id88278_ _rebind?88279_)
                          (gx#core-bind-runtime!__1 _id88278_ _rebind?88279_))
                        _g91045_))
                ((##fx= _g91044_ 3)
                 (apply (lambda (_id88285_ _rebind?88286_ _phi88287_)
                          (gx#core-bind-runtime!__2
                           _id88285_
                           _rebind?88286_
                           _phi88287_))
                        _g91045_))
                ((##fx= _g91044_ 4)
                 (apply (lambda (_id88291_
                                 _rebind?88292_
                                 _phi88293_
                                 _ctx88294_)
                          (gx#core-bind-runtime!__%
                           _id88291_
                           _rebind?88292_
                           _phi88293_
                           _ctx88294_))
                        _g91045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g91045_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88210_ _eid88211_ _rebind?88212_ _phi88213_ _ctx88214_)
        (let* ((_key88216_ (gx#core-identifier-key _id88210_))
               (_bind88218_
                (if (##structure-instance-of? _ctx88214_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88211_
                     _key88216_
                     _phi88213_
                     _ctx88214_)
                    (if (##structure-instance-of?
                         _ctx88214_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88211_
                         _key88216_
                         _phi88213_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88211_
                         _key88216_
                         _phi88213_)))))
          (gx#bind-identifier!__%
           _id88210_
           _bind88218_
           _rebind?88212_
           _phi88213_
           _ctx88214_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88224_ _eid88225_)
        (let* ((_rebind?88227_ '#f)
               (_phi88229_ (gx#current-expander-phi))
               (_ctx88231_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88224_
           _eid88225_
           _rebind?88227_
           _phi88229_
           _ctx88231_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88233_ _eid88234_ _rebind?88235_)
        (let* ((_phi88237_ (gx#current-expander-phi))
               (_ctx88239_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88233_
           _eid88234_
           _rebind?88235_
           _phi88237_
           _ctx88239_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88241_ _eid88242_ _rebind?88243_ _phi88244_)
        (let ((_ctx88246_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88241_
           _eid88242_
           _rebind?88243_
           _phi88244_
           _ctx88246_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91047_
        (let ((_g91046_ (##length _g91047_)))
          (cond ((##fx= _g91046_ 2)
                 (apply (lambda (_id88224_ _eid88225_)
                          (gx#core-bind-runtime-reference!__0
                           _id88224_
                           _eid88225_))
                        _g91047_))
                ((##fx= _g91046_ 3)
                 (apply (lambda (_id88233_ _eid88234_ _rebind?88235_)
                          (gx#core-bind-runtime-reference!__1
                           _id88233_
                           _eid88234_
                           _rebind?88235_))
                        _g91047_))
                ((##fx= _g91046_ 4)
                 (apply (lambda (_id88241_
                                 _eid88242_
                                 _rebind?88243_
                                 _phi88244_)
                          (gx#core-bind-runtime-reference!__2
                           _id88241_
                           _eid88242_
                           _rebind?88243_
                           _phi88244_))
                        _g91047_))
                ((##fx= _g91046_ 5)
                 (apply (lambda (_id88248_
                                 _eid88249_
                                 _rebind?88250_
                                 _phi88251_
                                 _ctx88252_)
                          (gx#core-bind-runtime-reference!__%
                           _id88248_
                           _eid88249_
                           _rebind?88250_
                           _phi88251_
                           _ctx88252_))
                        _g91047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91047_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88170_ _eid88171_ _rebind?88172_ _phi88173_ _ctx88174_)
        (gx#bind-identifier!__%
         _id88170_
         (##structure
          gx#extern-binding::t
          _eid88171_
          (gx#core-identifier-key _id88170_)
          _phi88173_)
         _rebind?88172_
         _phi88173_
         _ctx88174_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88179_ _eid88180_)
        (let* ((_rebind?88182_ '#f)
               (_phi88184_ (gx#current-expander-phi))
               (_ctx88186_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88179_
           _eid88180_
           _rebind?88182_
           _phi88184_
           _ctx88186_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88188_ _eid88189_ _rebind?88190_)
        (let* ((_phi88192_ (gx#current-expander-phi))
               (_ctx88194_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88188_
           _eid88189_
           _rebind?88190_
           _phi88192_
           _ctx88194_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88196_ _eid88197_ _rebind?88198_ _phi88199_)
        (let ((_ctx88201_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88196_
           _eid88197_
           _rebind?88198_
           _phi88199_
           _ctx88201_))))
    (define gx#core-bind-extern!
      (lambda _g91049_
        (let ((_g91048_ (##length _g91049_)))
          (cond ((##fx= _g91048_ 2)
                 (apply (lambda (_id88179_ _eid88180_)
                          (gx#core-bind-extern!__0 _id88179_ _eid88180_))
                        _g91049_))
                ((##fx= _g91048_ 3)
                 (apply (lambda (_id88188_ _eid88189_ _rebind?88190_)
                          (gx#core-bind-extern!__1
                           _id88188_
                           _eid88189_
                           _rebind?88190_))
                        _g91049_))
                ((##fx= _g91048_ 4)
                 (apply (lambda (_id88196_
                                 _eid88197_
                                 _rebind?88198_
                                 _phi88199_)
                          (gx#core-bind-extern!__2
                           _id88196_
                           _eid88197_
                           _rebind?88198_
                           _phi88199_))
                        _g91049_))
                ((##fx= _g91048_ 5)
                 (apply (lambda (_id88203_
                                 _eid88204_
                                 _rebind?88205_
                                 _phi88206_
                                 _ctx88207_)
                          (gx#core-bind-extern!__%
                           _id88203_
                           _eid88204_
                           _rebind?88205_
                           _phi88206_
                           _ctx88207_))
                        _g91049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91049_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88124_ _e88125_ _rebind?88126_ _phi88127_ _ctx88128_)
        (gx#bind-identifier!__%
         _id88124_
         (let ((_key88133_ (gx#core-identifier-key _id88124_))
               (_e88134_
                (if (or (##structure-instance-of? _e88125_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88125_
                         'gx#expander-context::t))
                    _e88125_
                    (##structure
                     gx#user-expander::t
                     _e88125_
                     _ctx88128_
                     _phi88127_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88133_ '#t _phi88127_ _ctx88128_)
            _key88133_
            _phi88127_
            _e88134_))
         _rebind?88126_
         _phi88127_
         _ctx88128_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88139_ _e88140_)
        (let* ((_rebind?88142_ '#f)
               (_phi88144_ (gx#current-expander-phi))
               (_ctx88146_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88139_
           _e88140_
           _rebind?88142_
           _phi88144_
           _ctx88146_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88148_ _e88149_ _rebind?88150_)
        (let* ((_phi88152_ (gx#current-expander-phi))
               (_ctx88154_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88148_
           _e88149_
           _rebind?88150_
           _phi88152_
           _ctx88154_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88156_ _e88157_ _rebind?88158_ _phi88159_)
        (let ((_ctx88161_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88156_
           _e88157_
           _rebind?88158_
           _phi88159_
           _ctx88161_))))
    (define gx#core-bind-syntax!
      (lambda _g91051_
        (let ((_g91050_ (##length _g91051_)))
          (cond ((##fx= _g91050_ 2)
                 (apply (lambda (_id88139_ _e88140_)
                          (gx#core-bind-syntax!__0 _id88139_ _e88140_))
                        _g91051_))
                ((##fx= _g91050_ 3)
                 (apply (lambda (_id88148_ _e88149_ _rebind?88150_)
                          (gx#core-bind-syntax!__1
                           _id88148_
                           _e88149_
                           _rebind?88150_))
                        _g91051_))
                ((##fx= _g91050_ 4)
                 (apply (lambda (_id88156_ _e88157_ _rebind?88158_ _phi88159_)
                          (gx#core-bind-syntax!__2
                           _id88156_
                           _e88157_
                           _rebind?88158_
                           _phi88159_))
                        _g91051_))
                ((##fx= _g91050_ 5)
                 (apply (lambda (_id88163_
                                 _e88164_
                                 _rebind?88165_
                                 _phi88166_
                                 _ctx88167_)
                          (gx#core-bind-syntax!__%
                           _id88163_
                           _e88164_
                           _rebind?88165_
                           _phi88166_
                           _ctx88167_))
                        _g91051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91051_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88107_ _e88108_ _rebind?88109_)
        (gx#core-bind-syntax!__%
         _id88107_
         _e88108_
         _rebind?88109_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88114_ _e88115_)
        (let ((_rebind?88117_ '#f))
          (gx#core-bind-root-syntax!__% _id88114_ _e88115_ _rebind?88117_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91053_
        (let ((_g91052_ (##length _g91053_)))
          (cond ((##fx= _g91052_ 2)
                 (apply (lambda (_id88114_ _e88115_)
                          (gx#core-bind-root-syntax!__0 _id88114_ _e88115_))
                        _g91053_))
                ((##fx= _g91052_ 3)
                 (apply (lambda (_id88119_ _e88120_ _rebind?88121_)
                          (gx#core-bind-root-syntax!__%
                           _id88119_
                           _e88120_
                           _rebind?88121_))
                        _g91053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91053_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88065_ _alias-id88066_ _rebind?88067_ _phi88068_ _ctx88069_)
        (gx#bind-identifier!__%
         _id88065_
         (let ((_key88071_ (gx#core-identifier-key _id88065_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88071_ '#t _phi88068_ _ctx88069_)
            _key88071_
            _phi88068_
            _alias-id88066_))
         _rebind?88067_
         _phi88068_
         _ctx88069_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88076_ _alias-id88077_)
        (let* ((_rebind?88079_ '#f)
               (_phi88081_ (gx#current-expander-phi))
               (_ctx88083_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88076_
           _alias-id88077_
           _rebind?88079_
           _phi88081_
           _ctx88083_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88085_ _alias-id88086_ _rebind?88087_)
        (let* ((_phi88089_ (gx#current-expander-phi))
               (_ctx88091_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88085_
           _alias-id88086_
           _rebind?88087_
           _phi88089_
           _ctx88091_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88093_ _alias-id88094_ _rebind?88095_ _phi88096_)
        (let ((_ctx88098_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88093_
           _alias-id88094_
           _rebind?88095_
           _phi88096_
           _ctx88098_))))
    (define gx#core-bind-alias!
      (lambda _g91055_
        (let ((_g91054_ (##length _g91055_)))
          (cond ((##fx= _g91054_ 2)
                 (apply (lambda (_id88076_ _alias-id88077_)
                          (gx#core-bind-alias!__0 _id88076_ _alias-id88077_))
                        _g91055_))
                ((##fx= _g91054_ 3)
                 (apply (lambda (_id88085_ _alias-id88086_ _rebind?88087_)
                          (gx#core-bind-alias!__1
                           _id88085_
                           _alias-id88086_
                           _rebind?88087_))
                        _g91055_))
                ((##fx= _g91054_ 4)
                 (apply (lambda (_id88093_
                                 _alias-id88094_
                                 _rebind?88095_
                                 _phi88096_)
                          (gx#core-bind-alias!__2
                           _id88093_
                           _alias-id88094_
                           _rebind?88095_
                           _phi88096_))
                        _g91055_))
                ((##fx= _g91054_ 5)
                 (apply (lambda (_id88100_
                                 _alias-id88101_
                                 _rebind?88102_
                                 _phi88103_
                                 _ctx88104_)
                          (gx#core-bind-alias!__%
                           _id88100_
                           _alias-id88101_
                           _rebind?88102_
                           _phi88103_
                           _ctx88104_))
                        _g91055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91055_))))))
    (define gx#make-binding-id__%
      (lambda (_key88022_ _syntax?88023_ _phi88024_ _ctx88025_)
        (if (uninterned-symbol? _key88022_)
            (gensym 'L)
            (if (pair? _key88022_)
                (gensym (car _key88022_))
                (if (##structure-instance-of? _ctx88025_ 'gx#top-context::t)
                    (let ((_ns88027_
                           (gx#core-context-namespace__% _ctx88025_)))
                      (if (and (fxzero? _phi88024_) (not _syntax?88023_))
                          (if _ns88027_
                              (make-symbol__1 _ns88027_ '"#" _key88022_)
                              _key88022_)
                          (if _syntax?88023_
                              (make-symbol__1
                               (let ((_$e88029_ _ns88027_))
                                 (if _$e88029_ _$e88029_ '""))
                               '"[:"
                               (number->string _phi88024_)
                               '":]#"
                               _key88022_)
                              (make-symbol__1
                               (let ((_$e88032_ _ns88027_))
                                 (if _$e88032_ _$e88032_ '""))
                               '"["
                               (number->string _phi88024_)
                               '"]#"
                               _key88022_))))
                    (gensym _key88022_))))))
    (define gx#make-binding-id__0
      (lambda (_key88038_)
        (let* ((_syntax?88040_ '#f)
               (_phi88042_ (gx#current-expander-phi))
               (_ctx88044_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88038_
           _syntax?88040_
           _phi88042_
           _ctx88044_))))
    (define gx#make-binding-id__1
      (lambda (_key88046_ _syntax?88047_)
        (let* ((_phi88049_ (gx#current-expander-phi))
               (_ctx88051_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88046_
           _syntax?88047_
           _phi88049_
           _ctx88051_))))
    (define gx#make-binding-id__2
      (lambda (_key88053_ _syntax?88054_ _phi88055_)
        (let ((_ctx88057_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88053_
           _syntax?88054_
           _phi88055_
           _ctx88057_))))
    (define gx#make-binding-id
      (lambda _g91057_
        (let ((_g91056_ (##length _g91057_)))
          (cond ((##fx= _g91056_ 1)
                 (apply (lambda (_key88038_)
                          (gx#make-binding-id__0 _key88038_))
                        _g91057_))
                ((##fx= _g91056_ 2)
                 (apply (lambda (_key88046_ _syntax?88047_)
                          (gx#make-binding-id__1 _key88046_ _syntax?88047_))
                        _g91057_))
                ((##fx= _g91056_ 3)
                 (apply (lambda (_key88053_ _syntax?88054_ _phi88055_)
                          (gx#make-binding-id__2
                           _key88053_
                           _syntax?88054_
                           _phi88055_))
                        _g91057_))
                ((##fx= _g91056_ 4)
                 (apply (lambda (_key88059_
                                 _syntax?88060_
                                 _phi88061_
                                 _ctx88062_)
                          (gx#make-binding-id__%
                           _key88059_
                           _syntax?88060_
                           _phi88061_
                           _ctx88062_))
                        _g91057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91057_))))))))
