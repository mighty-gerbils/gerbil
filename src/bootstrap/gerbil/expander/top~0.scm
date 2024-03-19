(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710833424)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx91007_)
        (letrec ((_expand-special91009_
                  (lambda (_hd91011_ _K91012_ _rest91013_ _r91014_)
                    (_K91012_
                     _rest91013_
                     (cons (gx#core-expand-top _hd91011_) _r91014_)))))
          (gx#core-expand-block__0 _stx91007_ _expand-special91009_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90760_)
        (letrec ((_expand-special90762_
                  (lambda (_hd90882_ _K90883_ _rest90884_ _r90885_)
                    (let* ((_K90889_
                            (lambda (_e90887_)
                              (_K90883_ _rest90884_ (cons _e90887_ _r90885_))))
                           (_e9089090919_ _hd90882_)
                           (_E9091490923_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9089090919_)))
                           (_E9091090935_
                            (lambda ()
                              (if (gx#stx-pair? _e9089090919_)
                                  (let ((_e9091590927_
                                         (gx#syntax-e _e9089090919_)))
                                    (let ((_hd9091690930_
                                           (##car _e9091590927_))
                                          (_tl9091790932_
                                           (##cdr _e9091590927_)))
                                      (if (and (gx#identifier? _hd9091690930_)
                                               (gx#core-identifier=?
                                                _hd9091690930_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90889_
                                               (gx#core-expand-define-runtime%
                                                _hd90882_))
                                              (_E9091490923_))
                                          (_E9091490923_))))
                                  (_E9091490923_))))
                           (_E9090690947_
                            (lambda ()
                              (if (gx#stx-pair? _e9089090919_)
                                  (let ((_e9091190939_
                                         (gx#syntax-e _e9089090919_)))
                                    (let ((_hd9091290942_
                                           (##car _e9091190939_))
                                          (_tl9091390944_
                                           (##cdr _e9091190939_)))
                                      (if (and (gx#identifier? _hd9091290942_)
                                               (gx#core-identifier=?
                                                _hd9091290942_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90889_
                                               (gx#core-expand-define-alias%
                                                _hd90882_))
                                              (_E9091090935_))
                                          (_E9091090935_))))
                                  (_E9091090935_))))
                           (_E9089690959_
                            (lambda ()
                              (if (gx#stx-pair? _e9089090919_)
                                  (let ((_e9090790951_
                                         (gx#syntax-e _e9089090919_)))
                                    (let ((_hd9090890954_
                                           (##car _e9090790951_))
                                          (_tl9090990956_
                                           (##cdr _e9090790951_)))
                                      (if (and (gx#identifier? _hd9090890954_)
                                               (gx#core-identifier=?
                                                _hd9090890954_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90889_
                                               (gx#core-expand-define-syntax%
                                                _hd90882_))
                                              (_E9090690947_))
                                          (_E9090690947_))))
                                  (_E9090690947_))))
                           (_E9089290991_
                            (lambda ()
                              (if (gx#stx-pair? _e9089090919_)
                                  (let ((_e9089790963_
                                         (gx#syntax-e _e9089090919_)))
                                    (let ((_hd9089890966_
                                           (##car _e9089790963_))
                                          (_tl9089990968_
                                           (##cdr _e9089790963_)))
                                      (if (and (gx#identifier? _hd9089890966_)
                                               (gx#core-identifier=?
                                                _hd9089890966_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9089990968_)
                                              (let ((_e9090090971_
                                                     (gx#syntax-e
                                                      _tl9089990968_)))
                                                (let ((_hd9090190974_
                                                       (##car _e9090090971_))
                                                      (_tl9090290976_
                                                       (##cdr _e9090090971_)))
                                                  (let ((_hd-bind90979_
                                                         _hd9090190974_))
                                                    (if (gx#stx-pair?
                                                         _tl9090290976_)
                                                        (let ((_e9090390981_
                                                               (gx#syntax-e
                                                                _tl9090290976_)))
                                                          (let ((_hd9090490984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9090390981_))
                        (_tl9090590986_ (##cdr _e9090390981_)))
                    (let ((_expr90989_ _hd9090490984_))
                      (if (gx#stx-null? _tl9090590986_)
                          (if (gx#core-bind-values? _hd-bind90979_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90979_)
                                (_K90889_ _hd90882_))
                              (_E9089690959_))
                          (_E9089690959_)))))
                (_E9089690959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9089690959_))
                                          (_E9089690959_))))
                                  (_E9089690959_))))
                           (_E9089191003_
                            (lambda ()
                              (if (gx#stx-pair? _e9089090919_)
                                  (let ((_e9089390995_
                                         (gx#syntax-e _e9089090919_)))
                                    (let ((_hd9089490998_
                                           (##car _e9089390995_))
                                          (_tl9089591000_
                                           (##cdr _e9089390995_)))
                                      (if (and (gx#identifier? _hd9089490998_)
                                               (gx#core-identifier=?
                                                _hd9089490998_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90889_
                                               (gx#core-expand-begin-syntax%
                                                _hd90882_))
                                              (_E9089290991_))
                                          (_E9089290991_))))
                                  (_E9089290991_)))))
                      (_E9089191003_))))
                 (_eval-body90763_
                  (lambda (_rbody90771_)
                    (let _lp90773_ ((_rest90775_ _rbody90771_)
                                    (_body90776_ '())
                                    (_ebody90777_ '()))
                      (let* ((_rest9077890786_ _rest90775_)
                             (_else9078090794_
                              (lambda ()
                                (values _body90776_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90777_)
                                          (gx#stx-source _stx90760_))))))
                             (_K9078290870_
                              (lambda (_rest90797_ _hd90798_)
                                (let* ((_e9079990816_ _hd90798_)
                                       (_E9081190820_
                                        (lambda ()
                                          (_lp90773_
                                           _rest90797_
                                           (cons _hd90798_ _body90776_)
                                           (cons _hd90798_ _ebody90777_))))
                                       (_E9080190832_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079990816_)
                                              (let ((_e9081290824_
                                                     (gx#syntax-e
                                                      _e9079990816_)))
                                                (let ((_hd9081390827_
                                                       (##car _e9081290824_))
                                                      (_tl9081490829_
                                                       (##cdr _e9081290824_)))
                                                  (if (and (gx#identifier?
                                                            _hd9081390827_)
                                                           (gx#core-identifier=?
                                                            _hd9081390827_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90773_
                                                           _rest90797_
                                                           (cons _hd90798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90776_)
                   _ebody90777_)
                  (_E9081190820_))
              (_E9081190820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9081190820_))))
                                       (_E9080090866_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079990816_)
                                              (let ((_e9080290836_
                                                     (gx#syntax-e
                                                      _e9079990816_)))
                                                (let ((_hd9080390839_
                                                       (##car _e9080290836_))
                                                      (_tl9080490841_
                                                       (##cdr _e9080290836_)))
                                                  (if (and (gx#identifier?
                                                            _hd9080390839_)
                                                           (gx#core-identifier=?
                                                            _hd9080390839_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9080490841_)
                                                          (let ((_e9080590844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9080490841_)))
                    (let ((_hd9080690847_ (##car _e9080590844_))
                          (_tl9080790849_ (##cdr _e9080590844_)))
                      (let ((_hd-bind90852_ _hd9080690847_))
                        (if (gx#stx-pair? _tl9080790849_)
                            (let ((_e9080890854_ (gx#syntax-e _tl9080790849_)))
                              (let ((_hd9080990857_ (##car _e9080890854_))
                                    (_tl9081090859_ (##cdr _e9080890854_)))
                                (let ((_expr90862_ _hd9080990857_))
                                  (if (gx#stx-null? _tl9081090859_)
                                      (if '#t
                                          (let ((_ehd90864_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90852_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90862_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90798_))))
                                            (_lp90773_
                                             _rest90797_
                                             (cons _ehd90864_ _body90776_)
                                             (cons _ehd90864_ _ebody90777_)))
                                          (_E9080190832_))
                                      (_E9080190832_)))))
                            (_E9080190832_)))))
                  (_E9080190832_))
              (_E9080190832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9080190832_)))))
                                  (_E9080090866_)))))
                        (if (##pair? _rest9077890786_)
                            (let ((_hd9078390873_ (##car _rest9077890786_))
                                  (_tl9078490875_ (##cdr _rest9077890786_)))
                              (let* ((_hd90878_ _hd9078390873_)
                                     (_rest90880_ _tl9078490875_))
                                (_K9078290870_ _rest90880_ _hd90878_)))
                            (_else9078090794_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90766_
                     (gx#core-expand-block__1
                      _stx90760_
                      _expand-special90762_
                      '#f))
                    (_g91030_ (_eval-body90763_ _rbody90766_)))
               (begin
                 (let ((_g91031_
                        (if (##values? _g91030_)
                            (##vector-length _g91030_)
                            1)))
                   (if (not (##fx= _g91031_ 2))
                       (error "Context expects 2 values" _g91031_)))
                 (let ((_expanded-body90768_ (##vector-ref _g91030_ 0))
                       (_value90769_ (##vector-ref _g91030_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90768_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90769_ '())))
                    (gx#stx-source _stx90760_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90730_)
        (let* ((_e9073190738_ _stx90730_)
               (_E9073390742_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9073190738_)))
               (_E9073290756_
                (lambda ()
                  (if (gx#stx-pair? _e9073190738_)
                      (let ((_e9073490746_ (gx#syntax-e _e9073190738_)))
                        (let ((_hd9073590749_ (##car _e9073490746_))
                              (_tl9073690751_ (##cdr _e9073490746_)))
                          (let ((_body90754_ _tl9073690751_))
                            (if (gx#stx-list? _body90754_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90754_)
                                 (gx#stx-source _stx90730_))
                                (_E9073390742_)))))
                      (_E9073390742_)))))
          (_E9073290756_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90728_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90728_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90674_)
        (let* ((_e9067590688_ _stx90674_)
               (_E9067790692_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9067590688_)))
               (_E9067690724_
                (lambda ()
                  (if (gx#stx-pair? _e9067590688_)
                      (let ((_e9067890696_ (gx#syntax-e _e9067590688_)))
                        (let ((_hd9067990699_ (##car _e9067890696_))
                              (_tl9068090701_ (##cdr _e9067890696_)))
                          (if (gx#stx-pair? _tl9068090701_)
                              (let ((_e9068190704_
                                     (gx#syntax-e _tl9068090701_)))
                                (let ((_hd9068290707_ (##car _e9068190704_))
                                      (_tl9068390709_ (##cdr _e9068190704_)))
                                  (let ((_ann90712_ _hd9068290707_))
                                    (if (gx#stx-pair? _tl9068390709_)
                                        (let ((_e9068490714_
                                               (gx#syntax-e _tl9068390709_)))
                                          (let ((_hd9068590717_
                                                 (##car _e9068490714_))
                                                (_tl9068690719_
                                                 (##cdr _e9068490714_)))
                                            (let ((_expr90722_ _hd9068590717_))
                                              (if (gx#stx-null? _tl9068690719_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90722_) '())))
               (gx#stx-source _stx90674_))
              (_E9067790692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9067790692_)))))
                                        (_E9067790692_)))))
                              (_E9067790692_))))
                      (_E9067790692_)))))
          (_E9067690724_))))
    (define gx#core-expand-local-block
      (lambda (_stx90398_ _body90399_)
        (letrec ((_expand-special90401_
                  (lambda (_hd90669_ _K90670_ _rest90671_ _r90672_)
                    (_K90670_
                     '()
                     (cons (_expand-internal90402_ _hd90669_ _rest90671_)
                           _r90672_))))
                 (_expand-internal90402_
                  (lambda (_hd90665_ _rest90666_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90404_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90665_ _rest90666_))
                          (gx#stx-source _stx90398_))
                         _expand-internal-special90403_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj91024
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj91024)
                       __obj91024))))
                 (_expand-internal-special90403_
                  (lambda (_hd90560_ _K90561_ _rest90562_ _r90563_)
                    (let* ((_e9056490589_ _hd90560_)
                           (_E9058490593_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9056490589_)))
                           (_E9058090605_
                            (lambda ()
                              (if (gx#stx-pair? _e9056490589_)
                                  (let ((_e9058590597_
                                         (gx#syntax-e _e9056490589_)))
                                    (let ((_hd9058690600_
                                           (##car _e9058590597_))
                                          (_tl9058790602_
                                           (##cdr _e9058590597_)))
                                      (if (and (gx#identifier? _hd9058690600_)
                                               (gx#core-identifier=?
                                                _hd9058690600_
                                                '%#declare))
                                          (if '#t
                                              (_K90561_
                                               _rest90562_
                                               (cons (gx#core-expand-declare%
                                                      _hd90560_)
                                                     _r90563_))
                                              (_E9058490593_))
                                          (_E9058490593_))))
                                  (_E9058490593_))))
                           (_E9057690617_
                            (lambda ()
                              (if (gx#stx-pair? _e9056490589_)
                                  (let ((_e9058190609_
                                         (gx#syntax-e _e9056490589_)))
                                    (let ((_hd9058290612_
                                           (##car _e9058190609_))
                                          (_tl9058390614_
                                           (##cdr _e9058190609_)))
                                      (if (and (gx#identifier? _hd9058290612_)
                                               (gx#core-identifier=?
                                                _hd9058290612_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90560_)
                                                (_K90561_
                                                 _rest90562_
                                                 _r90563_))
                                              (_E9058090605_))
                                          (_E9058090605_))))
                                  (_E9058090605_))))
                           (_E9056690629_
                            (lambda ()
                              (if (gx#stx-pair? _e9056490589_)
                                  (let ((_e9057790621_
                                         (gx#syntax-e _e9056490589_)))
                                    (let ((_hd9057890624_
                                           (##car _e9057790621_))
                                          (_tl9057990626_
                                           (##cdr _e9057790621_)))
                                      (if (and (gx#identifier? _hd9057890624_)
                                               (gx#core-identifier=?
                                                _hd9057890624_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90560_)
                                                (_K90561_
                                                 _rest90562_
                                                 _r90563_))
                                              (_E9057690617_))
                                          (_E9057690617_))))
                                  (_E9057690617_))))
                           (_E9056590661_
                            (lambda ()
                              (if (gx#stx-pair? _e9056490589_)
                                  (let ((_e9056790633_
                                         (gx#syntax-e _e9056490589_)))
                                    (let ((_hd9056890636_
                                           (##car _e9056790633_))
                                          (_tl9056990638_
                                           (##cdr _e9056790633_)))
                                      (if (and (gx#identifier? _hd9056890636_)
                                               (gx#core-identifier=?
                                                _hd9056890636_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9056990638_)
                                              (let ((_e9057090641_
                                                     (gx#syntax-e
                                                      _tl9056990638_)))
                                                (let ((_hd9057190644_
                                                       (##car _e9057090641_))
                                                      (_tl9057290646_
                                                       (##cdr _e9057090641_)))
                                                  (let ((_hd-bind90649_
                                                         _hd9057190644_))
                                                    (if (gx#stx-pair?
                                                         _tl9057290646_)
                                                        (let ((_e9057390651_
                                                               (gx#syntax-e
                                                                _tl9057290646_)))
                                                          (let ((_hd9057490654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9057390651_))
                        (_tl9057590656_ (##cdr _e9057390651_)))
                    (let ((_expr90659_ _hd9057490654_))
                      (if (gx#stx-null? _tl9057590656_)
                          (if (gx#core-bind-values? _hd-bind90649_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90649_)
                                (_K90561_
                                 _rest90562_
                                 (cons _hd90560_ _r90563_)))
                              (_E9056690629_))
                          (_E9056690629_)))))
                (_E9056690629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9056690629_))
                                          (_E9056690629_))))
                                  (_E9056690629_)))))
                      (_E9056590661_))))
                 (_wrap-internal90404_
                  (lambda (_rbody90406_)
                    (let _lp90408_ ((_rest90410_ _rbody90406_)
                                    (_decls90411_ '())
                                    (_bind90412_ '())
                                    (_body90413_ '()))
                      (let* ((_e9041490421_ _rest90410_)
                             (_E9041690470_
                              (lambda ()
                                (let* ((_body90465_
                                        (let* ((_body9042490434_ _body90413_)
                                               (_else9042790442_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90413_)
                                                   (gx#stx-source
                                                    _stx90398_)))))
                                          (let ((_K9043290462_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90398_)))
                                                (_K9042990448_
                                                 (lambda (_expr90446_)
                                                   _expr90446_)))
                                            (let ((_try-match9042690458_
                                                   (lambda ()
                                                     (if (##pair? _body9042490434_)
                                                         (let ((_tl9043190453_
                                                                (##cdr _body9042490434_))
                                                               (_hd9043090451_
                                                                (##car _body9042490434_)))
                                                           (if (##null? _tl9043190453_)
                                                               (let ((_expr90456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9043090451_))
                         (_K9042990448_ _expr90456_))
                       (_else9042790442_)))
                 (_else9042790442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9042490434_)
                                                  (_K9043290462_)
                                                  (_try-match9042690458_))))))
                                       (_body90467_
                                        (if (null? _bind90412_)
                                            _body90465_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90412_
                                                         (cons _body90465_
                                                               '())))
                                             (gx#stx-source _stx90398_)))))
                                  (if (null? _decls90411_)
                                      _body90467_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90411_
                                                   (cons _body90467_ '())))
                                       (gx#stx-source _stx90398_))))))
                             (_E9041590556_
                              (lambda ()
                                (if (gx#stx-pair? _e9041490421_)
                                    (let ((_e9041790474_
                                           (gx#syntax-e _e9041490421_)))
                                      (let ((_hd9041890477_
                                             (##car _e9041790474_))
                                            (_tl9041990479_
                                             (##cdr _e9041790474_)))
                                        (let* ((_hd90482_ _hd9041890477_)
                                               (_rest90484_ _tl9041990479_))
                                          (if '#t
                                              (let* ((_e9048590502_ _hd90482_)
                                                     (_E9049790506_
                                                      (lambda ()
                                                        (if (null? _bind90412_)
                                                            (_lp90408_
                                                             _rest90484_
                                                             _decls90411_
                                                             _bind90412_
                                                             (cons _hd90482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90413_))
                    (_lp90408_
                     _rest90484_
                     _decls90411_
                     (cons (cons '#f (cons _hd90482_ '())) _bind90412_)
                     _body90413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048790520_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048590502_)
                                                            (let ((_e9049890510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048590502_)))
                      (let ((_hd9049990513_ (##car _e9049890510_))
                            (_tl9050090515_ (##cdr _e9049890510_)))
                        (if (and (gx#identifier? _hd9049990513_)
                                 (gx#core-identifier=?
                                  _hd9049990513_
                                  '%#declare))
                            (let ((_xdecls90518_ _tl9050090515_))
                              (if '#t
                                  (_lp90408_
                                   _rest90484_
                                   (gx#stx-foldr
                                    cons
                                    _decls90411_
                                    _xdecls90518_)
                                   _bind90412_
                                   _body90413_)
                                  (_E9049790506_)))
                            (_E9049790506_))))
                    (_E9049790506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048690552_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048590502_)
                                                            (let ((_e9048890524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048590502_)))
                      (let ((_hd9048990527_ (##car _e9048890524_))
                            (_tl9049090529_ (##cdr _e9048890524_)))
                        (if (and (gx#identifier? _hd9048990527_)
                                 (gx#core-identifier=?
                                  _hd9048990527_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9049090529_)
                                (let ((_e9049190532_
                                       (gx#syntax-e _tl9049090529_)))
                                  (let ((_hd9049290535_ (##car _e9049190532_))
                                        (_tl9049390537_ (##cdr _e9049190532_)))
                                    (let ((_hd-bind90540_ _hd9049290535_))
                                      (if (gx#stx-pair? _tl9049390537_)
                                          (let ((_e9049490542_
                                                 (gx#syntax-e _tl9049390537_)))
                                            (let ((_hd9049590545_
                                                   (##car _e9049490542_))
                                                  (_tl9049690547_
                                                   (##cdr _e9049490542_)))
                                              (let ((_expr90550_
                                                     _hd9049590545_))
                                                (if (gx#stx-null?
                                                     _tl9049690547_)
                                                    (if '#t
                                                        (_lp90408_
                                                         _rest90484_
                                                         _decls90411_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90540_)
                             (cons (gx#core-expand-expression _expr90550_)
                                   '()))
                       _bind90412_)
                 _body90413_)
                (_E9048790520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9048790520_)))))
                                          (_E9048790520_)))))
                                (_E9048790520_))
                            (_E9048790520_))))
                    (_E9048790520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9048690552_))
                                              (_E9041690470_)))))
                                    (_E9041690470_)))))
                        (_E9041590556_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90399_)
            (gx#stx-source _stx90398_))
           _expand-special90401_))))
    (define gx#core-expand-declare%
      (lambda (_stx90336_)
        (let* ((_e9033790344_ _stx90336_)
               (_E9033990348_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9033790344_)))
               (_E9033890394_
                (lambda ()
                  (if (gx#stx-pair? _e9033790344_)
                      (let ((_e9034090352_ (gx#syntax-e _e9033790344_)))
                        (let ((_hd9034190355_ (##car _e9034090352_))
                              (_tl9034290357_ (##cdr _e9034090352_)))
                          (let ((_body90360_ _tl9034290357_))
                            (if (gx#stx-list? _body90360_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90362_)
                                     (let* ((_e9036390370_ _decl90362_)
                                            (_E9036590374_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9036390370_)))
                                            (_E9036490390_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9036390370_)
                                                   (let ((_e9036690378_
                                                          (gx#syntax-e
                                                           _e9036390370_)))
                                                     (let ((_hd9036790381_
                                                            (##car _e9036690378_))
                                                           (_tl9036890383_
                                                            (##cdr _e9036690378_)))
                                                       (let* ((_head90386_
                                                               _hd9036790381_)
                                                              (_args90388_
                                                               _tl9036890383_))
                                                         (if (gx#stx-list?
                                                              _args90388_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90362_)
                                                             (_E9036590374_)))))
                                                   (_E9036590374_)))))
                                       (_E9036490390_)))
                                   _body90360_))
                                 (gx#stx-source _stx90336_))
                                (_E9033990348_)))))
                      (_E9033990348_)))))
          (_E9033890394_))))
    (define gx#core-expand-extern%
      (lambda (_stx90240_)
        (let* ((_e9024190248_ _stx90240_)
               (_E9024390252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9024190248_)))
               (_E9024290332_
                (lambda ()
                  (if (gx#stx-pair? _e9024190248_)
                      (let ((_e9024490256_ (gx#syntax-e _e9024190248_)))
                        (let ((_hd9024590259_ (##car _e9024490256_))
                              (_tl9024690261_ (##cdr _e9024490256_)))
                          (let ((_body90264_ _tl9024690261_))
                            (if '#t
                                (let _lp90266_ ((_rest90268_ _body90264_)
                                                (_r90269_ '()))
                                  (let* ((_e9027090284_ _rest90268_)
                                         (_E9028290288_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90240_)))
                                         (_E9027290292_
                                          (lambda ()
                                            (if (gx#stx-null? _e9027090284_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90269_))
                                                     (gx#stx-source
                                                      _stx90240_))
                                                    (_E9028290288_))
                                                (_E9028290288_))))
                                         (_E9027190328_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9027090284_)
                                                (let ((_e9027390296_
                                                       (gx#syntax-e
                                                        _e9027090284_)))
                                                  (let ((_hd9027490299_
                                                         (##car _e9027390296_))
                                                        (_tl9027590301_
                                                         (##cdr _e9027390296_)))
                                                    (if (gx#stx-pair?
                                                         _hd9027490299_)
                                                        (let ((_e9027690304_
                                                               (gx#syntax-e
                                                                _hd9027490299_)))
                                                          (let ((_hd9027790307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9027690304_))
                        (_tl9027890309_ (##cdr _e9027690304_)))
                    (let ((_id90312_ _hd9027790307_))
                      (if (gx#stx-pair? _tl9027890309_)
                          (let ((_e9027990314_ (gx#syntax-e _tl9027890309_)))
                            (let ((_hd9028090317_ (##car _e9027990314_))
                                  (_tl9028190319_ (##cdr _e9027990314_)))
                              (let ((_eid90322_ _hd9028090317_))
                                (if (gx#stx-null? _tl9028190319_)
                                    (let ((_rest90324_ _tl9027590301_))
                                      (if (and (gx#identifier? _id90312_)
                                               (gx#identifier? _eid90322_))
                                          (let ((_eid90326_
                                                 (gx#stx-e _eid90322_)))
                                            (gx#core-bind-extern!__0
                                             _id90312_
                                             _eid90326_)
                                            (_lp90266_
                                             _rest90324_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90312_)
                                                         (cons _eid90326_ '()))
                                                   _r90269_)))
                                          (_E9027290292_)))
                                    (_E9027290292_)))))
                          (_E9027290292_)))))
                (_E9027290292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9027290292_)))))
                                    (_E9027190328_)))
                                (_E9024390252_)))))
                      (_E9024390252_)))))
          (_E9024290332_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90186_)
        (let* ((_e9018790200_ _stx90186_)
               (_E9018990204_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9018790200_)))
               (_E9018890236_
                (lambda ()
                  (if (gx#stx-pair? _e9018790200_)
                      (let ((_e9019090208_ (gx#syntax-e _e9018790200_)))
                        (let ((_hd9019190211_ (##car _e9019090208_))
                              (_tl9019290213_ (##cdr _e9019090208_)))
                          (if (gx#stx-pair? _tl9019290213_)
                              (let ((_e9019390216_
                                     (gx#syntax-e _tl9019290213_)))
                                (let ((_hd9019490219_ (##car _e9019390216_))
                                      (_tl9019590221_ (##cdr _e9019390216_)))
                                  (let ((_hd90224_ _hd9019490219_))
                                    (if (gx#stx-pair? _tl9019590221_)
                                        (let ((_e9019690226_
                                               (gx#syntax-e _tl9019590221_)))
                                          (let ((_hd9019790229_
                                                 (##car _e9019690226_))
                                                (_tl9019890231_
                                                 (##cdr _e9019690226_)))
                                            (let ((_expr90234_ _hd9019790229_))
                                              (if (gx#stx-null? _tl9019890231_)
                                                  (if (gx#core-bind-values?
                                                       _hd90224_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90224_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90224_)
                             (cons (gx#core-expand-expression _expr90234_)
                                   '())))
                 (gx#stx-source _stx90186_)))
              (_E9018990204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9018990204_)))))
                                        (_E9018990204_)))))
                              (_E9018990204_))))
                      (_E9018990204_)))))
          (_E9018890236_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90130_)
        (let* ((_e9013190144_ _stx90130_)
               (_E9013390148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9013190144_)))
               (_E9013290182_
                (lambda ()
                  (if (gx#stx-pair? _e9013190144_)
                      (let ((_e9013490152_ (gx#syntax-e _e9013190144_)))
                        (let ((_hd9013590155_ (##car _e9013490152_))
                              (_tl9013690157_ (##cdr _e9013490152_)))
                          (if (gx#stx-pair? _tl9013690157_)
                              (let ((_e9013790160_
                                     (gx#syntax-e _tl9013690157_)))
                                (let ((_hd9013890163_ (##car _e9013790160_))
                                      (_tl9013990165_ (##cdr _e9013790160_)))
                                  (let ((_id90168_ _hd9013890163_))
                                    (if (gx#stx-pair? _tl9013990165_)
                                        (let ((_e9014090170_
                                               (gx#syntax-e _tl9013990165_)))
                                          (let ((_hd9014190173_
                                                 (##car _e9014090170_))
                                                (_tl9014290175_
                                                 (##cdr _e9014090170_)))
                                            (let ((_binding-id90178_
                                                   _hd9014190173_))
                                              (if (gx#stx-null? _tl9014290175_)
                                                  (if (and (gx#identifier?
                                                            _id90168_)
                                                           (gx#identifier?
                                                            _binding-id90178_))
                                                      (let ((_eid90180_
                                                             (gx#stx-e
                                                              _binding-id90178_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90168_
                                                         _eid90180_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90168_)
                             (cons _eid90180_ '())))))
              (_E9013390148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9013390148_)))))
                                        (_E9013390148_)))))
                              (_E9013390148_))))
                      (_E9013390148_)))))
          (_E9013290182_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90073_)
        (let* ((_e9007490087_ _stx90073_)
               (_E9007690091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9007490087_)))
               (_E9007590126_
                (lambda ()
                  (if (gx#stx-pair? _e9007490087_)
                      (let ((_e9007790095_ (gx#syntax-e _e9007490087_)))
                        (let ((_hd9007890098_ (##car _e9007790095_))
                              (_tl9007990100_ (##cdr _e9007790095_)))
                          (if (gx#stx-pair? _tl9007990100_)
                              (let ((_e9008090103_
                                     (gx#syntax-e _tl9007990100_)))
                                (let ((_hd9008190106_ (##car _e9008090103_))
                                      (_tl9008290108_ (##cdr _e9008090103_)))
                                  (let ((_id90111_ _hd9008190106_))
                                    (if (gx#stx-pair? _tl9008290108_)
                                        (let ((_e9008390113_
                                               (gx#syntax-e _tl9008290108_)))
                                          (let ((_hd9008490116_
                                                 (##car _e9008390113_))
                                                (_tl9008590118_
                                                 (##cdr _e9008390113_)))
                                            (let ((_expr90121_ _hd9008490116_))
                                              (if (gx#stx-null? _tl9008590118_)
                                                  (if (gx#identifier?
                                                       _id90111_)
                                                      (let ((_g91032_
                                                             (gx#core-expand-expression+1
                                                              _expr90121_)))
                                                        (begin
                                                          (let ((_g91033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g91032_)
                             (##vector-length _g91032_)
                             1)))
                    (if (not (##fx= _g91033_ 2))
                        (error "Context expects 2 values" _g91033_)))
                  (let ((_e-stx90123_ (##vector-ref _g91032_ 0))
                        (_e90124_ (##vector-ref _g91032_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90111_ _e90124_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90111_)
                                   (cons _e-stx90123_ '())))
                       (gx#stx-source _stx90073_))))))
              (_E9007690091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9007690091_)))))
                                        (_E9007690091_)))))
                              (_E9007690091_))))
                      (_E9007690091_)))))
          (_E9007590126_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx90017_)
        (let* ((_e9001890031_ _stx90017_)
               (_E9002090035_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9001890031_)))
               (_E9001990069_
                (lambda ()
                  (if (gx#stx-pair? _e9001890031_)
                      (let ((_e9002190039_ (gx#syntax-e _e9001890031_)))
                        (let ((_hd9002290042_ (##car _e9002190039_))
                              (_tl9002390044_ (##cdr _e9002190039_)))
                          (if (gx#stx-pair? _tl9002390044_)
                              (let ((_e9002490047_
                                     (gx#syntax-e _tl9002390044_)))
                                (let ((_hd9002590050_ (##car _e9002490047_))
                                      (_tl9002690052_ (##cdr _e9002490047_)))
                                  (let ((_id90055_ _hd9002590050_))
                                    (if (gx#stx-pair? _tl9002690052_)
                                        (let ((_e9002790057_
                                               (gx#syntax-e _tl9002690052_)))
                                          (let ((_hd9002890060_
                                                 (##car _e9002790057_))
                                                (_tl9002990062_
                                                 (##cdr _e9002790057_)))
                                            (let ((_alias-id90065_
                                                   _hd9002890060_))
                                              (if (gx#stx-null? _tl9002990062_)
                                                  (if (and (gx#identifier?
                                                            _id90055_)
                                                           (gx#identifier?
                                                            _alias-id90065_))
                                                      (let ((_alias-id90067_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90065_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90055_
                                                         _alias-id90067_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90055_)
                             (cons _alias-id90067_ '())))))
              (_E9002090035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9002090035_)))))
                                        (_E9002090035_)))))
                              (_E9002090035_))))
                      (_E9002090035_)))))
          (_E9001990069_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89960_ _wrap?89961_)
        (let* ((_e8996289972_ _stx89960_)
               (_E8996489976_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8996289972_)))
               (_E8996390003_
                (lambda ()
                  (if (gx#stx-pair? _e8996289972_)
                      (let ((_e8996589980_ (gx#syntax-e _e8996289972_)))
                        (let ((_hd8996689983_ (##car _e8996589980_))
                              (_tl8996789985_ (##cdr _e8996589980_)))
                          (if (gx#stx-pair? _tl8996789985_)
                              (let ((_e8996889988_
                                     (gx#syntax-e _tl8996789985_)))
                                (let ((_hd8996989991_ (##car _e8996889988_))
                                      (_tl8997089993_ (##cdr _e8996889988_)))
                                  (let* ((_hd89996_ _hd8996989991_)
                                         (_body89998_ _tl8997089993_))
                                    (if (gx#core-bind-values? _hd89996_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89996_)
                                           (let ((_body90001_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89996_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89960_
                                                               _body89998_)
                                                              '()))))
                                             (if _wrap?89961_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body90001_)
                                                  (gx#stx-source _stx89960_))
                                                 _body90001_)))
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
                                        (_E8996489976_)))))
                              (_E8996489976_))))
                      (_E8996489976_)))))
          (_E8996390003_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx90010_)
        (let ((_wrap?90012_ '#t))
          (gx#core-expand-lambda%__% _stx90010_ _wrap?90012_))))
    (define gx#core-expand-lambda%
      (lambda _g91035_
        (let ((_g91034_ (##length _g91035_)))
          (cond ((##fx= _g91034_ 1)
                 (apply (lambda (_stx90010_)
                          (gx#core-expand-lambda%__0 _stx90010_))
                        _g91035_))
                ((##fx= _g91034_ 2)
                 (apply (lambda (_stx90014_ _wrap?90015_)
                          (gx#core-expand-lambda%__% _stx90014_ _wrap?90015_))
                        _g91035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g91035_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89924_)
        (let* ((_e8992589932_ _stx89924_)
               (_E8992789936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8992589932_)))
               (_E8992689955_
                (lambda ()
                  (if (gx#stx-pair? _e8992589932_)
                      (let ((_e8992889940_ (gx#syntax-e _e8992589932_)))
                        (let ((_hd8992989943_ (##car _e8992889940_))
                              (_tl8993089945_ (##cdr _e8992889940_)))
                          (let ((_clauses89948_ _tl8993089945_))
                            (if (gx#stx-list? _clauses89948_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89950_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89950_)
                                       (let ((_$e89952_
                                              (gx#stx-source _clause89950_)))
                                         (if _$e89952_
                                             _$e89952_
                                             (gx#stx-source _stx89924_))))
                                      '#f))
                                   _clauses89948_))
                                 (gx#stx-source _stx89924_))
                                (_E8992789936_)))))
                      (_E8992789936_)))))
          (_E8992689955_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89878_)
        (let* ((_e8987989889_ _stx89878_)
               (_E8988189893_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8987989889_)))
               (_E8988089920_
                (lambda ()
                  (if (gx#stx-pair? _e8987989889_)
                      (let ((_e8988289897_ (gx#syntax-e _e8987989889_)))
                        (let ((_hd8988389900_ (##car _e8988289897_))
                              (_tl8988489902_ (##cdr _e8988289897_)))
                          (if (gx#stx-pair? _tl8988489902_)
                              (let ((_e8988589905_
                                     (gx#syntax-e _tl8988489902_)))
                                (let ((_hd8988689908_ (##car _e8988589905_))
                                      (_tl8988789910_ (##cdr _e8988589905_)))
                                  (let* ((_hd89913_ _hd8988689908_)
                                         (_body89915_ _tl8988789910_))
                                    (if (gx#core-expand-let-bind? _hd89913_)
                                        (let ((_expressions89917_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89913_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89913_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89913_
                                                           _expressions89917_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89878_
                         _body89915_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89878_)))
                                           gx#current-expander-context
                                           (let ((__obj91026
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91026)
                                             __obj91026)))
                                        (_E8988189893_)))))
                              (_E8988189893_))))
                      (_E8988189893_)))))
          (_E8988089920_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89823_ _form89824_)
        (let* ((_e8982589835_ _stx89823_)
               (_E8982789839_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8982589835_)))
               (_E8982689864_
                (lambda ()
                  (if (gx#stx-pair? _e8982589835_)
                      (let ((_e8982889843_ (gx#syntax-e _e8982589835_)))
                        (let ((_hd8982989846_ (##car _e8982889843_))
                              (_tl8983089848_ (##cdr _e8982889843_)))
                          (if (gx#stx-pair? _tl8983089848_)
                              (let ((_e8983189851_
                                     (gx#syntax-e _tl8983089848_)))
                                (let ((_hd8983289854_ (##car _e8983189851_))
                                      (_tl8983389856_ (##cdr _e8983189851_)))
                                  (let* ((_hd89859_ _hd8983289854_)
                                         (_body89861_ _tl8983389856_))
                                    (if (gx#core-expand-let-bind? _hd89859_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89859_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89824_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89859_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89859_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89823_
                                                               _body89861_)
                                                              '())))
                                            (gx#stx-source _stx89823_)))
                                         gx#current-expander-context
                                         (let ((__obj91027
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91027)
                                           __obj91027))
                                        (_E8982789839_)))))
                              (_E8982789839_))))
                      (_E8982789839_)))))
          (_E8982689864_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89871_)
        (let ((_form89873_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89871_ _form89873_))))
    (define gx#core-expand-letrec-values%
      (lambda _g91037_
        (let ((_g91036_ (##length _g91037_)))
          (cond ((##fx= _g91036_ 1)
                 (apply (lambda (_stx89871_)
                          (gx#core-expand-letrec-values%__0 _stx89871_))
                        _g91037_))
                ((##fx= _g91036_ 2)
                 (apply (lambda (_stx89875_ _form89876_)
                          (gx#core-expand-letrec-values%__%
                           _stx89875_
                           _form89876_))
                        _g91037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g91037_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89820_)
        (gx#core-expand-letrec-values%__% _stx89820_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89777_)
        (if (gx#stx-list? _stx89777_)
            (gx#stx-andmap
             (lambda (_bind89779_)
               (let* ((_e8978089790_ _bind89779_)
                      (_E8978289794_ (lambda () '#f))
                      (_E8978189816_
                       (lambda ()
                         (if (gx#stx-pair? _e8978089790_)
                             (let ((_e8978389798_ (gx#syntax-e _e8978089790_)))
                               (let ((_hd8978489801_ (##car _e8978389798_))
                                     (_tl8978589803_ (##cdr _e8978389798_)))
                                 (let ((_hd89806_ _hd8978489801_))
                                   (if (gx#stx-pair? _tl8978589803_)
                                       (let ((_e8978689808_
                                              (gx#syntax-e _tl8978589803_)))
                                         (let ((_hd8978789811_
                                                (##car _e8978689808_))
                                               (_tl8978889813_
                                                (##cdr _e8978689808_)))
                                           (if (gx#stx-null? _tl8978889813_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89806_)
                                                   (_E8978289794_))
                                               (_E8978289794_))))
                                       (_E8978289794_)))))
                             (_E8978289794_)))))
                 (_E8978189816_)))
             _stx89777_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89736_)
        (let* ((_e8973789747_ _bind89736_)
               (_E8973989751_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8973789747_)))
               (_E8973889773_
                (lambda ()
                  (if (gx#stx-pair? _e8973789747_)
                      (let ((_e8974089755_ (gx#syntax-e _e8973789747_)))
                        (let ((_hd8974189758_ (##car _e8974089755_))
                              (_tl8974289760_ (##cdr _e8974089755_)))
                          (if (gx#stx-pair? _tl8974289760_)
                              (let ((_e8974389763_
                                     (gx#syntax-e _tl8974289760_)))
                                (let ((_hd8974489766_ (##car _e8974389763_))
                                      (_tl8974589768_ (##cdr _e8974389763_)))
                                  (let ((_expr89771_ _hd8974489766_))
                                    (if (gx#stx-null? _tl8974589768_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89771_)
                                            (_E8973989751_))
                                        (_E8973989751_)))))
                              (_E8973989751_))))
                      (_E8973989751_)))))
          (_E8973889773_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89695_)
        (let* ((_e8969689706_ _bind89695_)
               (_E8969889710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8969689706_)))
               (_E8969789732_
                (lambda ()
                  (if (gx#stx-pair? _e8969689706_)
                      (let ((_e8969989714_ (gx#syntax-e _e8969689706_)))
                        (let ((_hd8970089717_ (##car _e8969989714_))
                              (_tl8970189719_ (##cdr _e8969989714_)))
                          (let ((_hd89722_ _hd8970089717_))
                            (if (gx#stx-pair? _tl8970189719_)
                                (let ((_e8970289724_
                                       (gx#syntax-e _tl8970189719_)))
                                  (let ((_hd8970389727_ (##car _e8970289724_))
                                        (_tl8970489729_ (##cdr _e8970289724_)))
                                    (if (gx#stx-null? _tl8970489729_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89722_)
                                            (_E8969889710_))
                                        (_E8969889710_))))
                                (_E8969889710_)))))
                      (_E8969889710_)))))
          (_E8969789732_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89653_ _expr89654_)
        (let* ((_e8965589665_ _bind89653_)
               (_E8965789669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8965589665_)))
               (_E8965689691_
                (lambda ()
                  (if (gx#stx-pair? _e8965589665_)
                      (let ((_e8965889673_ (gx#syntax-e _e8965589665_)))
                        (let ((_hd8965989676_ (##car _e8965889673_))
                              (_tl8966089678_ (##cdr _e8965889673_)))
                          (let ((_hd89681_ _hd8965989676_))
                            (if (gx#stx-pair? _tl8966089678_)
                                (let ((_e8966189683_
                                       (gx#syntax-e _tl8966089678_)))
                                  (let ((_hd8966289686_ (##car _e8966189683_))
                                        (_tl8966389688_ (##cdr _e8966189683_)))
                                    (if (gx#stx-null? _tl8966389688_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89681_)
                                                  (cons _expr89654_ '()))
                                            (_E8965789669_))
                                        (_E8965789669_))))
                                (_E8965789669_)))))
                      (_E8965789669_)))))
          (_E8965689691_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89607_)
        (let* ((_e8960889618_ _stx89607_)
               (_E8961089622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8960889618_)))
               (_E8960989649_
                (lambda ()
                  (if (gx#stx-pair? _e8960889618_)
                      (let ((_e8961189626_ (gx#syntax-e _e8960889618_)))
                        (let ((_hd8961289629_ (##car _e8961189626_))
                              (_tl8961389631_ (##cdr _e8961189626_)))
                          (if (gx#stx-pair? _tl8961389631_)
                              (let ((_e8961489634_
                                     (gx#syntax-e _tl8961389631_)))
                                (let ((_hd8961589637_ (##car _e8961489634_))
                                      (_tl8961689639_ (##cdr _e8961489634_)))
                                  (let* ((_hd89642_ _hd8961589637_)
                                         (_body89644_ _tl8961689639_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89642_)
                                        (let ((_expanders89646_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89642_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89642_
                                              _expanders89646_)
                                             (gx#core-expand-local-block
                                              _stx89607_
                                              _body89644_))
                                           gx#current-expander-context
                                           (let ((__obj91028
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91028)
                                             __obj91028)))
                                        (_E8961089622_)))))
                              (_E8961089622_))))
                      (_E8961089622_)))))
          (_E8960989649_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89556_)
        (let* ((_e8955789567_ _stx89556_)
               (_E8955989571_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8955789567_)))
               (_E8955889603_
                (lambda ()
                  (if (gx#stx-pair? _e8955789567_)
                      (let ((_e8956089575_ (gx#syntax-e _e8955789567_)))
                        (let ((_hd8956189578_ (##car _e8956089575_))
                              (_tl8956289580_ (##cdr _e8956089575_)))
                          (if (gx#stx-pair? _tl8956289580_)
                              (let ((_e8956389583_
                                     (gx#syntax-e _tl8956289580_)))
                                (let ((_hd8956489586_ (##car _e8956389583_))
                                      (_tl8956589588_ (##cdr _e8956389583_)))
                                  (let* ((_hd89591_ _hd8956489586_)
                                         (_body89593_ _tl8956589588_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89591_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89591_
                                            (make-list
                                             (gx#stx-length _hd89591_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8959589598_
                                                     _g8959689600_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8959589598_
                                               _g8959689600_
                                               '#t))
                                            _hd89591_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89591_))
                                           (gx#core-expand-local-block
                                            _stx89556_
                                            _body89593_))
                                         gx#current-expander-context
                                         (let ((__obj91029
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91029)
                                           __obj91029))
                                        (_E8955989571_)))))
                              (_E8955989571_))))
                      (_E8955989571_)))))
          (_E8955889603_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89513_)
        (if (gx#stx-list? _stx89513_)
            (gx#stx-andmap
             (lambda (_bind89515_)
               (let* ((_e8951689526_ _bind89515_)
                      (_E8951889530_ (lambda () '#f))
                      (_E8951789552_
                       (lambda ()
                         (if (gx#stx-pair? _e8951689526_)
                             (let ((_e8951989534_ (gx#syntax-e _e8951689526_)))
                               (let ((_hd8952089537_ (##car _e8951989534_))
                                     (_tl8952189539_ (##cdr _e8951989534_)))
                                 (let ((_hd89542_ _hd8952089537_))
                                   (if (gx#stx-pair? _tl8952189539_)
                                       (let ((_e8952289544_
                                              (gx#syntax-e _tl8952189539_)))
                                         (let ((_hd8952389547_
                                                (##car _e8952289544_))
                                               (_tl8952489549_
                                                (##cdr _e8952289544_)))
                                           (if (gx#stx-null? _tl8952489549_)
                                               (if '#t
                                                   (gx#identifier? _hd89542_)
                                                   (_E8951889530_))
                                               (_E8951889530_))))
                                       (_E8951889530_)))))
                             (_E8951889530_)))))
                 (_E8951789552_)))
             _stx89513_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89470_)
        (let* ((_e8947189481_ _bind89470_)
               (_E8947389485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8947189481_)))
               (_E8947289509_
                (lambda ()
                  (if (gx#stx-pair? _e8947189481_)
                      (let ((_e8947489489_ (gx#syntax-e _e8947189481_)))
                        (let ((_hd8947589492_ (##car _e8947489489_))
                              (_tl8947689494_ (##cdr _e8947489489_)))
                          (if (gx#stx-pair? _tl8947689494_)
                              (let ((_e8947789497_
                                     (gx#syntax-e _tl8947689494_)))
                                (let ((_hd8947889500_ (##car _e8947789497_))
                                      (_tl8947989502_ (##cdr _e8947789497_)))
                                  (let ((_expr89505_ _hd8947889500_))
                                    (if (gx#stx-null? _tl8947989502_)
                                        (if '#t
                                            (let ((_g91038_
                                                   (gx#core-expand-expression+1
                                                    _expr89505_)))
                                              (begin
                                                (let ((_g91039_
                                                       (if (##values? _g91038_)
                                                           (##vector-length
                                                            _g91038_)
                                                           1)))
                                                  (if (not (##fx= _g91039_ 2))
                                                      (error "Context expects 2 values"
                                                             _g91039_)))
                                                (let ((_e89507_
                                                       (##vector-ref
                                                        _g91038_
                                                        1)))
                                                  _e89507_)))
                                            (_E8947389485_))
                                        (_E8947389485_)))))
                              (_E8947389485_))))
                      (_E8947389485_)))))
          (_E8947289509_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89415_ _e89416_ _rebind?89417_)
        (let* ((_e8941889428_ _bind89415_)
               (_E8942089432_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8941889428_)))
               (_E8941989454_
                (lambda ()
                  (if (gx#stx-pair? _e8941889428_)
                      (let ((_e8942189436_ (gx#syntax-e _e8941889428_)))
                        (let ((_hd8942289439_ (##car _e8942189436_))
                              (_tl8942389441_ (##cdr _e8942189436_)))
                          (let ((_id89444_ _hd8942289439_))
                            (if (gx#stx-pair? _tl8942389441_)
                                (let ((_e8942489446_
                                       (gx#syntax-e _tl8942389441_)))
                                  (let ((_hd8942589449_ (##car _e8942489446_))
                                        (_tl8942689451_ (##cdr _e8942489446_)))
                                    (if (gx#stx-null? _tl8942689451_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89444_
                                             _e89416_
                                             _rebind?89417_)
                                            (_E8942089432_))
                                        (_E8942089432_))))
                                (_E8942089432_)))))
                      (_E8942089432_)))))
          (_E8941989454_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89461_ _e89462_)
        (let ((_rebind?89464_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89461_
           _e89462_
           _rebind?89464_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g91041_
        (let ((_g91040_ (##length _g91041_)))
          (cond ((##fx= _g91040_ 2)
                 (apply (lambda (_bind89461_ _e89462_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89461_
                           _e89462_))
                        _g91041_))
                ((##fx= _g91040_ 3)
                 (apply (lambda (_bind89466_ _e89467_ _rebind?89468_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89466_
                           _e89467_
                           _rebind?89468_))
                        _g91041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g91041_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89373_)
        (let* ((_e8937489384_ _stx89373_)
               (_E8937689388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937489384_)))
               (_E8937589410_
                (lambda ()
                  (if (gx#stx-pair? _e8937489384_)
                      (let ((_e8937789392_ (gx#syntax-e _e8937489384_)))
                        (let ((_hd8937889395_ (##car _e8937789392_))
                              (_tl8937989397_ (##cdr _e8937789392_)))
                          (if (gx#stx-pair? _tl8937989397_)
                              (let ((_e8938089400_
                                     (gx#syntax-e _tl8937989397_)))
                                (let ((_hd8938189403_ (##car _e8938089400_))
                                      (_tl8938289405_ (##cdr _e8938089400_)))
                                  (let ((_expr89408_ _hd8938189403_))
                                    (if (gx#stx-null? _tl8938289405_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89408_)
                                            (_E8937689388_))
                                        (_E8937689388_)))))
                              (_E8937689388_))))
                      (_E8937689388_)))))
          (_E8937589410_))))
    (define gx#core-expand-quote%
      (lambda (_stx89332_)
        (let* ((_e8933389343_ _stx89332_)
               (_E8933589347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8933389343_)))
               (_E8933489369_
                (lambda ()
                  (if (gx#stx-pair? _e8933389343_)
                      (let ((_e8933689351_ (gx#syntax-e _e8933389343_)))
                        (let ((_hd8933789354_ (##car _e8933689351_))
                              (_tl8933889356_ (##cdr _e8933689351_)))
                          (if (gx#stx-pair? _tl8933889356_)
                              (let ((_e8933989359_
                                     (gx#syntax-e _tl8933889356_)))
                                (let ((_hd8934089362_ (##car _e8933989359_))
                                      (_tl8934189364_ (##cdr _e8933989359_)))
                                  (let ((_e89367_ _hd8934089362_))
                                    (if (gx#stx-null? _tl8934189364_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89367_)
                                                         '()))
                                             (gx#stx-source _stx89332_))
                                            (_E8933589347_))
                                        (_E8933589347_)))))
                              (_E8933589347_))))
                      (_E8933589347_)))))
          (_E8933489369_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89291_)
        (let* ((_e8929289302_ _stx89291_)
               (_E8929489306_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8929289302_)))
               (_E8929389328_
                (lambda ()
                  (if (gx#stx-pair? _e8929289302_)
                      (let ((_e8929589310_ (gx#syntax-e _e8929289302_)))
                        (let ((_hd8929689313_ (##car _e8929589310_))
                              (_tl8929789315_ (##cdr _e8929589310_)))
                          (if (gx#stx-pair? _tl8929789315_)
                              (let ((_e8929889318_
                                     (gx#syntax-e _tl8929789315_)))
                                (let ((_hd8929989321_ (##car _e8929889318_))
                                      (_tl8930089323_ (##cdr _e8929889318_)))
                                  (let ((_e89326_ _hd8929989321_))
                                    (if (gx#stx-null? _tl8930089323_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89326_)
                                                         '()))
                                             (gx#stx-source _stx89291_))
                                            (_E8929489306_))
                                        (_E8929489306_)))))
                              (_E8929489306_))))
                      (_E8929489306_)))))
          (_E8929389328_))))
    (define gx#core-expand-call%
      (lambda (_stx89248_)
        (let* ((_e8924989259_ _stx89248_)
               (_E8925189263_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8924989259_)))
               (_E8925089287_
                (lambda ()
                  (if (gx#stx-pair? _e8924989259_)
                      (let ((_e8925289267_ (gx#syntax-e _e8924989259_)))
                        (let ((_hd8925389270_ (##car _e8925289267_))
                              (_tl8925489272_ (##cdr _e8925289267_)))
                          (if (gx#stx-pair? _tl8925489272_)
                              (let ((_e8925589275_
                                     (gx#syntax-e _tl8925489272_)))
                                (let ((_hd8925689278_ (##car _e8925589275_))
                                      (_tl8925789280_ (##cdr _e8925589275_)))
                                  (let* ((_rator89283_ _hd8925689278_)
                                         (_args89285_ _tl8925789280_))
                                    (if (gx#stx-list? _args89285_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89283_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89285_))
                                         (gx#stx-source _stx89248_))
                                        (_E8925189263_)))))
                              (_E8925189263_))))
                      (_E8925189263_)))))
          (_E8925089287_))))
    (define gx#core-expand-if%
      (lambda (_stx89181_)
        (let* ((_e8918289198_ _stx89181_)
               (_E8918489202_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8918289198_)))
               (_E8918389244_
                (lambda ()
                  (if (gx#stx-pair? _e8918289198_)
                      (let ((_e8918589206_ (gx#syntax-e _e8918289198_)))
                        (let ((_hd8918689209_ (##car _e8918589206_))
                              (_tl8918789211_ (##cdr _e8918589206_)))
                          (if (gx#stx-pair? _tl8918789211_)
                              (let ((_e8918889214_
                                     (gx#syntax-e _tl8918789211_)))
                                (let ((_hd8918989217_ (##car _e8918889214_))
                                      (_tl8919089219_ (##cdr _e8918889214_)))
                                  (let ((_test89222_ _hd8918989217_))
                                    (if (gx#stx-pair? _tl8919089219_)
                                        (let ((_e8919189224_
                                               (gx#syntax-e _tl8919089219_)))
                                          (let ((_hd8919289227_
                                                 (##car _e8919189224_))
                                                (_tl8919389229_
                                                 (##cdr _e8919189224_)))
                                            (let ((_K89232_ _hd8919289227_))
                                              (if (gx#stx-pair? _tl8919389229_)
                                                  (let ((_e8919489234_
                                                         (gx#syntax-e
                                                          _tl8919389229_)))
                                                    (let ((_hd8919589237_
                                                           (##car _e8919489234_))
                                                          (_tl8919689239_
                                                           (##cdr _e8919489234_)))
                                                      (let ((_E89242_
                                                             _hd8919589237_))
                                                        (if (gx#stx-null?
                                                             _tl8919689239_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89222_)
                                     (cons (gx#core-expand-expression _K89232_)
                                           (cons (gx#core-expand-expression
                                                  _E89242_)
                                                 '()))))
                         (gx#stx-source _stx89181_))
                        (_E8918489202_))
                    (_E8918489202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8918489202_)))))
                                        (_E8918489202_)))))
                              (_E8918489202_))))
                      (_E8918489202_)))))
          (_E8918389244_))))
    (define gx#core-expand-ref%
      (lambda (_stx89140_)
        (let* ((_e8914189151_ _stx89140_)
               (_E8914389155_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8914189151_)))
               (_E8914289177_
                (lambda ()
                  (if (gx#stx-pair? _e8914189151_)
                      (let ((_e8914489159_ (gx#syntax-e _e8914189151_)))
                        (let ((_hd8914589162_ (##car _e8914489159_))
                              (_tl8914689164_ (##cdr _e8914489159_)))
                          (if (gx#stx-pair? _tl8914689164_)
                              (let ((_e8914789167_
                                     (gx#syntax-e _tl8914689164_)))
                                (let ((_hd8914889170_ (##car _e8914789167_))
                                      (_tl8914989172_ (##cdr _e8914789167_)))
                                  (let ((_id89175_ _hd8914889170_))
                                    (if (gx#stx-null? _tl8914989172_)
                                        (if (gx#identifier? _id89175_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89175_
                                                          _stx89140_)
                                                         '()))
                                             (gx#stx-source _stx89140_))
                                            (_E8914389155_))
                                        (_E8914389155_)))))
                              (_E8914389155_))))
                      (_E8914389155_)))))
          (_E8914289177_))))
    (define gx#core-expand-setq%
      (lambda (_stx89086_)
        (let* ((_e8908789100_ _stx89086_)
               (_E8908989104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8908789100_)))
               (_E8908889136_
                (lambda ()
                  (if (gx#stx-pair? _e8908789100_)
                      (let ((_e8909089108_ (gx#syntax-e _e8908789100_)))
                        (let ((_hd8909189111_ (##car _e8909089108_))
                              (_tl8909289113_ (##cdr _e8909089108_)))
                          (if (gx#stx-pair? _tl8909289113_)
                              (let ((_e8909389116_
                                     (gx#syntax-e _tl8909289113_)))
                                (let ((_hd8909489119_ (##car _e8909389116_))
                                      (_tl8909589121_ (##cdr _e8909389116_)))
                                  (let ((_id89124_ _hd8909489119_))
                                    (if (gx#stx-pair? _tl8909589121_)
                                        (let ((_e8909689126_
                                               (gx#syntax-e _tl8909589121_)))
                                          (let ((_hd8909789129_
                                                 (##car _e8909689126_))
                                                (_tl8909889131_
                                                 (##cdr _e8909689126_)))
                                            (let ((_expr89134_ _hd8909789129_))
                                              (if (gx#stx-null? _tl8909889131_)
                                                  (if (gx#identifier?
                                                       _id89124_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89124_
                            _stx89086_)
                           (cons (gx#core-expand-expression _expr89134_) '())))
               (gx#stx-source _stx89086_))
              (_E8908989104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8908989104_)))))
                                        (_E8908989104_)))))
                              (_E8908989104_))))
                      (_E8908989104_)))))
          (_E8908889136_))))
    (define gx#macro-expand-extern
      (lambda (_stx88934_)
        (letrec ((_generate88936_
                  (lambda (_body88966_)
                    (let _lp88968_ ((_rest88970_ _body88966_)
                                    (_ns88971_ (gx#core-context-namespace__0))
                                    (_r88972_ '()))
                      (let* ((_e8897388988_ _rest88970_)
                             (_E8898688992_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8897388988_)))
                             (_E8898288996_
                              (lambda ()
                                (if (gx#stx-null? _e8897388988_)
                                    (if '#t (reverse _r88972_) (_E8898688992_))
                                    (_E8898688992_))))
                             (_E8897589053_
                              (lambda ()
                                (if (gx#stx-pair? _e8897388988_)
                                    (let ((_e8898389000_
                                           (gx#syntax-e _e8897388988_)))
                                      (let ((_hd8898489003_
                                             (##car _e8898389000_))
                                            (_tl8898589005_
                                             (##cdr _e8898389000_)))
                                        (let* ((_hd89008_ _hd8898489003_)
                                               (_rest89010_ _tl8898589005_))
                                          (if '#t
                                              (if (gx#identifier? _hd89008_)
                                                  (_lp88968_
                                                   _rest89010_
                                                   _ns88971_
                                                   (cons (cons _hd89008_
                                                               (cons (if _ns88971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd89008_
                                  _ns88971_
                                  '"#"
                                  _hd89008_)
                                 _hd89008_)
                             '()))
                 _r88972_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8901189021_
                                                          _hd89008_)
                                                         (_E8901389025_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8901189021_)))
                                                         (_E8901289049_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8901189021_)
                        (let ((_e8901489029_ (gx#syntax-e _e8901189021_)))
                          (let ((_hd8901589032_ (##car _e8901489029_))
                                (_tl8901689034_ (##cdr _e8901489029_)))
                            (let ((_id89037_ _hd8901589032_))
                              (if (gx#stx-pair? _tl8901689034_)
                                  (let ((_e8901789039_
                                         (gx#syntax-e _tl8901689034_)))
                                    (let ((_hd8901889042_
                                           (##car _e8901789039_))
                                          (_tl8901989044_
                                           (##cdr _e8901789039_)))
                                      (let ((_eid89047_ _hd8901889042_))
                                        (if (gx#stx-null? _tl8901989044_)
                                            (if (and (gx#identifier? _id89037_)
                                                     (gx#identifier?
                                                      _eid89047_))
                                                (_lp88968_
                                                 _rest89010_
                                                 _ns88971_
                                                 (cons (cons _id89037_
                                                             (cons _eid89047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88972_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8901389025_))
                                            (_E8901389025_)))))
                                  (_E8901389025_)))))
                        (_E8901389025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8901289049_)))
                                              (_E8898288996_)))))
                                    (_E8898288996_))))
                             (_E8897489082_
                              (lambda ()
                                (if (gx#stx-pair? _e8897388988_)
                                    (let ((_e8897689057_
                                           (gx#syntax-e _e8897388988_)))
                                      (let ((_hd8897789060_
                                             (##car _e8897689057_))
                                            (_tl8897889062_
                                             (##cdr _e8897689057_)))
                                        (if (eq? (gx#stx-e _hd8897789060_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8897889062_)
                                                (let ((_e8897989065_
                                                       (gx#syntax-e
                                                        _tl8897889062_)))
                                                  (let ((_hd8898089068_
                                                         (##car _e8897989065_))
                                                        (_tl8898189070_
                                                         (##cdr _e8897989065_)))
                                                    (let* ((_ns89073_
                                                            _hd8898089068_)
                                                           (_rest89075_
                                                            _tl8898189070_))
                                                      (if '#t
                                                          (let ((_ns89080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89073_)
                             (symbol->string (gx#stx-e _ns89073_))
                             (if (or (gx#stx-string? _ns89073_)
                                     (gx#stx-false? _ns89073_))
                                 (gx#stx-e _ns89073_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88934_
                                  _ns89073_)))))
                    (_lp88968_ _rest89075_ _ns89080_ _r88972_))
                  (_E8897589053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8897589053_))
                                            (_E8897589053_))))
                                    (_E8897589053_)))))
                        (_E8897489082_))))))
          (let* ((_e8893788944_ _stx88934_)
                 (_E8893988948_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8893788944_)))
                 (_E8893888962_
                  (lambda ()
                    (if (gx#stx-pair? _e8893788944_)
                        (let ((_e8894088952_ (gx#syntax-e _e8893788944_)))
                          (let ((_hd8894188955_ (##car _e8894088952_))
                                (_tl8894288957_ (##cdr _e8894088952_)))
                            (let ((_body88960_ _tl8894288957_))
                              (if (gx#stx-list? _body88960_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88936_ _body88960_))
                                  (_E8893988948_)))))
                        (_E8893988948_)))))
            (_E8893888962_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88880_)
        (let* ((_e8888188894_ _stx88880_)
               (_E8888388898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8888188894_)))
               (_E8888288930_
                (lambda ()
                  (if (gx#stx-pair? _e8888188894_)
                      (let ((_e8888488902_ (gx#syntax-e _e8888188894_)))
                        (let ((_hd8888588905_ (##car _e8888488902_))
                              (_tl8888688907_ (##cdr _e8888488902_)))
                          (if (gx#stx-pair? _tl8888688907_)
                              (let ((_e8888788910_
                                     (gx#syntax-e _tl8888688907_)))
                                (let ((_hd8888888913_ (##car _e8888788910_))
                                      (_tl8888988915_ (##cdr _e8888788910_)))
                                  (let ((_hd88918_ _hd8888888913_))
                                    (if (gx#stx-pair? _tl8888988915_)
                                        (let ((_e8889088920_
                                               (gx#syntax-e _tl8888988915_)))
                                          (let ((_hd8889188923_
                                                 (##car _e8889088920_))
                                                (_tl8889288925_
                                                 (##cdr _e8889088920_)))
                                            (let ((_expr88928_ _hd8889188923_))
                                              (if (gx#stx-null? _tl8889288925_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88918_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88918_)
                          (cons _expr88928_ '())))
              (_E8888388898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8888388898_)))))
                                        (_E8888388898_)))))
                              (_E8888388898_))))
                      (_E8888388898_)))))
          (_E8888288930_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88826_)
        (let* ((_e8882788840_ _stx88826_)
               (_E8882988844_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882788840_)))
               (_E8882888876_
                (lambda ()
                  (if (gx#stx-pair? _e8882788840_)
                      (let ((_e8883088848_ (gx#syntax-e _e8882788840_)))
                        (let ((_hd8883188851_ (##car _e8883088848_))
                              (_tl8883288853_ (##cdr _e8883088848_)))
                          (if (gx#stx-pair? _tl8883288853_)
                              (let ((_e8883388856_
                                     (gx#syntax-e _tl8883288853_)))
                                (let ((_hd8883488859_ (##car _e8883388856_))
                                      (_tl8883588861_ (##cdr _e8883388856_)))
                                  (let ((_hd88864_ _hd8883488859_))
                                    (if (gx#stx-pair? _tl8883588861_)
                                        (let ((_e8883688866_
                                               (gx#syntax-e _tl8883588861_)))
                                          (let ((_hd8883788869_
                                                 (##car _e8883688866_))
                                                (_tl8883888871_
                                                 (##cdr _e8883688866_)))
                                            (let ((_expr88874_ _hd8883788869_))
                                              (if (gx#stx-null? _tl8883888871_)
                                                  (if (gx#identifier?
                                                       _hd88864_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88874_ '())))
              (_E8882988844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882988844_)))))
                                        (_E8882988844_)))))
                              (_E8882988844_))))
                      (_E8882988844_)))))
          (_E8882888876_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88772_)
        (let* ((_e8877388786_ _stx88772_)
               (_E8877588790_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877388786_)))
               (_E8877488822_
                (lambda ()
                  (if (gx#stx-pair? _e8877388786_)
                      (let ((_e8877688794_ (gx#syntax-e _e8877388786_)))
                        (let ((_hd8877788797_ (##car _e8877688794_))
                              (_tl8877888799_ (##cdr _e8877688794_)))
                          (if (gx#stx-pair? _tl8877888799_)
                              (let ((_e8877988802_
                                     (gx#syntax-e _tl8877888799_)))
                                (let ((_hd8878088805_ (##car _e8877988802_))
                                      (_tl8878188807_ (##cdr _e8877988802_)))
                                  (let ((_id88810_ _hd8878088805_))
                                    (if (gx#stx-pair? _tl8878188807_)
                                        (let ((_e8878288812_
                                               (gx#syntax-e _tl8878188807_)))
                                          (let ((_hd8878388815_
                                                 (##car _e8878288812_))
                                                (_tl8878488817_
                                                 (##cdr _e8878288812_)))
                                            (let ((_alias-id88820_
                                                   _hd8878388815_))
                                              (if (gx#stx-null? _tl8878488817_)
                                                  (if (and (gx#identifier?
                                                            _id88810_)
                                                           (gx#identifier?
                                                            _alias-id88820_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88820_ '())))
              (_E8877588790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877588790_)))))
                                        (_E8877588790_)))))
                              (_E8877588790_))))
                      (_E8877588790_)))))
          (_E8877488822_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88729_)
        (let* ((_e8873088740_ _stx88729_)
               (_E8873288744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8873088740_)))
               (_E8873188768_
                (lambda ()
                  (if (gx#stx-pair? _e8873088740_)
                      (let ((_e8873388748_ (gx#syntax-e _e8873088740_)))
                        (let ((_hd8873488751_ (##car _e8873388748_))
                              (_tl8873588753_ (##cdr _e8873388748_)))
                          (if (gx#stx-pair? _tl8873588753_)
                              (let ((_e8873688756_
                                     (gx#syntax-e _tl8873588753_)))
                                (let ((_hd8873788759_ (##car _e8873688756_))
                                      (_tl8873888761_ (##cdr _e8873688756_)))
                                  (let* ((_hd88764_ _hd8873788759_)
                                         (_body88766_ _tl8873888761_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88764_)
                                             (gx#stx-list? _body88766_)
                                             (not (gx#stx-null? _body88766_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88764_)
                                         _body88766_)
                                        (_E8873288744_)))))
                              (_E8873288744_))))
                      (_E8873288744_)))))
          (_E8873188768_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88665_)
        (letrec ((_generate88667_
                  (lambda (_clause88697_)
                    (let* ((_e8869888705_ _clause88697_)
                           (_E8870088709_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88665_
                               _clause88697_)))
                           (_E8869988725_
                            (lambda ()
                              (if (gx#stx-pair? _e8869888705_)
                                  (let ((_e8870188713_
                                         (gx#syntax-e _e8869888705_)))
                                    (let ((_hd8870288716_
                                           (##car _e8870188713_))
                                          (_tl8870388718_
                                           (##cdr _e8870188713_)))
                                      (let* ((_hd88721_ _hd8870288716_)
                                             (_body88723_ _tl8870388718_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88721_)
                                                 (gx#stx-list? _body88723_)
                                                 (not (gx#stx-null?
                                                       _body88723_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88721_)
                                                   _body88723_)
                                             (gx#stx-source _clause88697_))
                                            (_E8870088709_)))))
                                  (_E8870088709_)))))
                      (_E8869988725_)))))
          (let* ((_e8866888675_ _stx88665_)
                 (_E8867088679_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8866888675_)))
                 (_E8866988693_
                  (lambda ()
                    (if (gx#stx-pair? _e8866888675_)
                        (let ((_e8867188683_ (gx#syntax-e _e8866888675_)))
                          (let ((_hd8867288686_ (##car _e8867188683_))
                                (_tl8867388688_ (##cdr _e8867188683_)))
                            (let ((_clauses88691_ _tl8867388688_))
                              (if (gx#stx-list? _clauses88691_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88667_
                                    _clauses88691_))
                                  (_E8867088679_)))))
                        (_E8867088679_)))))
            (_E8866988693_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88566_ _form88567_)
        (letrec ((_generate88569_
                  (lambda (_bind88612_)
                    (let* ((_e8861388623_ _bind88612_)
                           (_E8861588627_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88566_
                               _bind88612_)))
                           (_E8861488651_
                            (lambda ()
                              (if (gx#stx-pair? _e8861388623_)
                                  (let ((_e8861688631_
                                         (gx#syntax-e _e8861388623_)))
                                    (let ((_hd8861788634_
                                           (##car _e8861688631_))
                                          (_tl8861888636_
                                           (##cdr _e8861688631_)))
                                      (let ((_ids88639_ _hd8861788634_))
                                        (if (gx#stx-pair? _tl8861888636_)
                                            (let ((_e8861988641_
                                                   (gx#syntax-e
                                                    _tl8861888636_)))
                                              (let ((_hd8862088644_
                                                     (##car _e8861988641_))
                                                    (_tl8862188646_
                                                     (##cdr _e8861988641_)))
                                                (let ((_expr88649_
                                                       _hd8862088644_))
                                                  (if (gx#stx-null?
                                                       _tl8862188646_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88639_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88639_)
                        (cons _expr88649_ '()))
                  (_E8861588627_))
              (_E8861588627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8861588627_)))))
                                  (_E8861588627_)))))
                      (_E8861488651_)))))
          (let* ((_e8857088580_ _stx88566_)
                 (_E8857288584_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8857088580_)))
                 (_E8857188608_
                  (lambda ()
                    (if (gx#stx-pair? _e8857088580_)
                        (let ((_e8857388588_ (gx#syntax-e _e8857088580_)))
                          (let ((_hd8857488591_ (##car _e8857388588_))
                                (_tl8857588593_ (##cdr _e8857388588_)))
                            (if (gx#stx-pair? _tl8857588593_)
                                (let ((_e8857688596_
                                       (gx#syntax-e _tl8857588593_)))
                                  (let ((_hd8857788599_ (##car _e8857688596_))
                                        (_tl8857888601_ (##cdr _e8857688596_)))
                                    (let* ((_hd88604_ _hd8857788599_)
                                           (_body88606_ _tl8857888601_))
                                      (if (and (gx#stx-list? _hd88604_)
                                               (gx#stx-list? _body88606_)
                                               (not (gx#stx-null?
                                                     _body88606_)))
                                          (gx#core-cons*
                                           _form88567_
                                           (gx#stx-map1
                                            _generate88569_
                                            _hd88604_)
                                           _body88606_)
                                          (_E8857288584_)))))
                                (_E8857288584_))))
                        (_E8857288584_)))))
            (_E8857188608_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88658_)
        (let ((_form88660_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88658_ _form88660_))))
    (define gx#macro-expand-let-values
      (lambda _g91043_
        (let ((_g91042_ (##length _g91043_)))
          (cond ((##fx= _g91042_ 1)
                 (apply (lambda (_stx88658_)
                          (gx#macro-expand-let-values__0 _stx88658_))
                        _g91043_))
                ((##fx= _g91042_ 2)
                 (apply (lambda (_stx88662_ _form88663_)
                          (gx#macro-expand-let-values__%
                           _stx88662_
                           _form88663_))
                        _g91043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g91043_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88563_)
        (gx#macro-expand-let-values__% _stx88563_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88561_)
        (gx#macro-expand-let-values__% _stx88561_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88452_)
        (let* ((_e8845388479_ _stx88452_)
               (_E8846588483_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8845388479_)))
               (_E8845588525_
                (lambda ()
                  (if (gx#stx-pair? _e8845388479_)
                      (let ((_e8846688487_ (gx#syntax-e _e8845388479_)))
                        (let ((_hd8846788490_ (##car _e8846688487_))
                              (_tl8846888492_ (##cdr _e8846688487_)))
                          (if (gx#stx-pair? _tl8846888492_)
                              (let ((_e8846988495_
                                     (gx#syntax-e _tl8846888492_)))
                                (let ((_hd8847088498_ (##car _e8846988495_))
                                      (_tl8847188500_ (##cdr _e8846988495_)))
                                  (let ((_test88503_ _hd8847088498_))
                                    (if (gx#stx-pair? _tl8847188500_)
                                        (let ((_e8847288505_
                                               (gx#syntax-e _tl8847188500_)))
                                          (let ((_hd8847388508_
                                                 (##car _e8847288505_))
                                                (_tl8847488510_
                                                 (##cdr _e8847288505_)))
                                            (let ((_K88513_ _hd8847388508_))
                                              (if (gx#stx-pair? _tl8847488510_)
                                                  (let ((_e8847588515_
                                                         (gx#syntax-e
                                                          _tl8847488510_)))
                                                    (let ((_hd8847688518_
                                                           (##car _e8847588515_))
                                                          (_tl8847788520_
                                                           (##cdr _e8847588515_)))
                                                      (let ((_E88523_
                                                             _hd8847688518_))
                                                        (if (gx#stx-null?
                                                             _tl8847788520_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88503_
                         _K88513_
                         _E88523_)
                        (_E8846588483_))
                    (_E8846588483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8846588483_)))))
                                        (_E8846588483_)))))
                              (_E8846588483_))))
                      (_E8846588483_))))
               (_E8845488557_
                (lambda ()
                  (if (gx#stx-pair? _e8845388479_)
                      (let ((_e8845688529_ (gx#syntax-e _e8845388479_)))
                        (let ((_hd8845788532_ (##car _e8845688529_))
                              (_tl8845888534_ (##cdr _e8845688529_)))
                          (if (gx#stx-pair? _tl8845888534_)
                              (let ((_e8845988537_
                                     (gx#syntax-e _tl8845888534_)))
                                (let ((_hd8846088540_ (##car _e8845988537_))
                                      (_tl8846188542_ (##cdr _e8845988537_)))
                                  (let ((_test88545_ _hd8846088540_))
                                    (if (gx#stx-pair? _tl8846188542_)
                                        (let ((_e8846288547_
                                               (gx#syntax-e _tl8846188542_)))
                                          (let ((_hd8846388550_
                                                 (##car _e8846288547_))
                                                (_tl8846488552_
                                                 (##cdr _e8846288547_)))
                                            (let ((_K88555_ _hd8846388550_))
                                              (if (gx#stx-null? _tl8846488552_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88545_
                                                       _K88555_
                                                       '#!void)
                                                      (_E8845588525_))
                                                  (_E8845588525_)))))
                                        (_E8845588525_)))))
                              (_E8845588525_))))
                      (_E8845588525_)))))
          (_E8845488557_))))
    (define gx#free-identifier=?
      (lambda (_xid88440_ _yid88441_)
        (let ((_xe88443_ (gx#resolve-identifier__0 _xid88440_))
              (_ye88444_ (gx#resolve-identifier__0 _yid88441_)))
          (if (and _xe88443_ _ye88444_)
              (let ((_$e88446_ (eq? _xe88443_ _ye88444_)))
                (if _$e88446_
                    _$e88446_
                    (if (##structure-instance-of? _xe88443_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88444_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88443_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88444_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88443_ _ye88444_)
                  '#f
                  (gx#stx-eq? _xid88440_ _yid88441_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88424_ _yid88425_)
        (letrec ((_context88427_
                  (lambda (_e88438_)
                    (if (##structure-direct-instance-of?
                         _e88438_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88438_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88428_
                  (lambda (_e88436_)
                    (if (symbol? _e88436_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88436_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88436_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88436_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88429_
                  (lambda (_e88434_)
                    (if (symbol? _e88434_)
                        _e88434_
                        (gx#syntax-local-unwrap _e88434_)))))
          (let ((_x88431_ (_unwrap88429_ _xid88424_))
                (_y88432_ (_unwrap88429_ _yid88425_)))
            (if (gx#stx-eq? _x88431_ _y88432_)
                (if (eq? (_context88427_ _x88431_) (_context88427_ _y88432_))
                    (equal? (_marks88428_ _x88431_) (_marks88428_ _y88432_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88422_)
        (if (gx#identifier? _stx88422_)
            (gx#core-identifier=? _stx88422_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88420_)
        (if (gx#identifier? _stx88420_)
            (gx#core-identifier=? _stx88420_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88418_)
        (if (gx#identifier? _x88418_)
            (if (not (gx#underscore? _x88418_)) _x88418_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88364_ _where88365_)
        (let _lp88367_ ((_rest88369_ (gx#syntax->list _stx88364_)))
          (let* ((_rest8837088378_ _rest88369_)
                 (_else8837288386_ (lambda () '#t))
                 (_K8837488396_
                  (lambda (_rest88389_ _hd88390_)
                    (if (not (gx#identifier? _hd88390_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88365_
                         _hd88390_)
                        (if (find (lambda (_g8839188393_)
                                    (gx#bound-identifier=?
                                     _g8839188393_
                                     _hd88390_))
                                  _rest88389_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88365_
                             _hd88390_)
                            (_lp88367_ _rest88389_))))))
            (if (##pair? _rest8837088378_)
                (let ((_hd8837588399_ (##car _rest8837088378_))
                      (_tl8837688401_ (##cdr _rest8837088378_)))
                  (let* ((_hd88404_ _hd8837588399_)
                         (_rest88406_ _tl8837688401_))
                    (_K8837488396_ _rest88406_ _hd88404_)))
                (_else8837288386_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88411_)
        (let ((_where88413_ _stx88411_))
          (gx#check-duplicate-identifiers__% _stx88411_ _where88413_))))
    (define gx#check-duplicate-identifiers
      (lambda _g91045_
        (let ((_g91044_ (##length _g91045_)))
          (cond ((##fx= _g91044_ 1)
                 (apply (lambda (_stx88411_)
                          (gx#check-duplicate-identifiers__0 _stx88411_))
                        _g91045_))
                ((##fx= _g91044_ 2)
                 (apply (lambda (_stx88415_ _where88416_)
                          (gx#check-duplicate-identifiers__%
                           _stx88415_
                           _where88416_))
                        _g91045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g91045_))))))
    (define gx#core-bind-values?
      (lambda (_stx88356_)
        (gx#stx-andmap
         (lambda (_x88358_)
           (let ((_$e88360_ (gx#identifier? _x88358_)))
             (if _$e88360_ _$e88360_ (gx#stx-false? _x88358_))))
         _stx88356_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88320_ _rebind?88321_ _phi88322_ _ctx88323_)
        (gx#stx-for-each1
         (lambda (_id88325_)
           (if (gx#identifier? _id88325_)
               (gx#core-bind-runtime!__%
                _id88325_
                _rebind?88321_
                _phi88322_
                _ctx88323_)
               '#!void))
         _stx88320_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88330_)
        (let* ((_rebind?88332_ '#f)
               (_phi88334_ (gx#current-expander-phi))
               (_ctx88336_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88330_
           _rebind?88332_
           _phi88334_
           _ctx88336_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88338_ _rebind?88339_)
        (let* ((_phi88341_ (gx#current-expander-phi))
               (_ctx88343_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88338_
           _rebind?88339_
           _phi88341_
           _ctx88343_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88345_ _rebind?88346_ _phi88347_)
        (let ((_ctx88349_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88345_
           _rebind?88346_
           _phi88347_
           _ctx88349_))))
    (define gx#core-bind-values!
      (lambda _g91047_
        (let ((_g91046_ (##length _g91047_)))
          (cond ((##fx= _g91046_ 1)
                 (apply (lambda (_stx88330_)
                          (gx#core-bind-values!__0 _stx88330_))
                        _g91047_))
                ((##fx= _g91046_ 2)
                 (apply (lambda (_stx88338_ _rebind?88339_)
                          (gx#core-bind-values!__1 _stx88338_ _rebind?88339_))
                        _g91047_))
                ((##fx= _g91046_ 3)
                 (apply (lambda (_stx88345_ _rebind?88346_ _phi88347_)
                          (gx#core-bind-values!__2
                           _stx88345_
                           _rebind?88346_
                           _phi88347_))
                        _g91047_))
                ((##fx= _g91046_ 4)
                 (apply (lambda (_stx88351_
                                 _rebind?88352_
                                 _phi88353_
                                 _ctx88354_)
                          (gx#core-bind-values!__%
                           _stx88351_
                           _rebind?88352_
                           _phi88353_
                           _ctx88354_))
                        _g91047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g91047_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88315_)
        (gx#stx-map1
         (lambda (_x88317_)
           (if (gx#identifier? _x88317_)
               (gx#core-quote-syntax__0 _x88317_)
               '#f))
         _stx88315_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88308_)
        (if (gx#identifier? _stx88308_)
            (let* ((_bind88310_ (gx#resolve-identifier__0 _stx88308_))
                   (_$e88312_ (not _bind88310_)))
              (if _$e88312_
                  _$e88312_
                  (##structure-instance-of?
                   _bind88310_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88300_ _form88301_)
        (let ((_bind88303_ (gx#resolve-identifier__0 _id88300_)))
          (if (##structure-instance-of? _bind88303_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88300_)
              (if (not _bind88303_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88300_)))
                      (gx#core-quote-syntax__0 _id88300_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88301_
                       _id88300_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88301_
                   _id88300_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88259_ _rebind?88260_ _phi88261_ _ctx88262_)
        (let* ((_key88264_ (gx#core-identifier-key _id88259_))
               (_eid88266_
                (gx#make-binding-id__% _key88264_ '#f _phi88261_ _ctx88262_))
               (_bind88268_
                (if (##structure-instance-of? _ctx88262_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88266_
                     _key88264_
                     _phi88261_
                     _ctx88262_)
                    (if (##structure-instance-of?
                         _ctx88262_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88266_
                         _key88264_
                         _phi88261_)
                        (if (##structure-instance-of?
                             _ctx88262_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88266_
                             _key88264_
                             _phi88261_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88266_
                             _key88264_
                             _phi88261_))))))
          (gx#bind-identifier!__%
           _id88259_
           _bind88268_
           _rebind?88260_
           _phi88261_
           _ctx88262_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88274_)
        (let* ((_rebind?88276_ '#f)
               (_phi88278_ (gx#current-expander-phi))
               (_ctx88280_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88274_
           _rebind?88276_
           _phi88278_
           _ctx88280_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88282_ _rebind?88283_)
        (let* ((_phi88285_ (gx#current-expander-phi))
               (_ctx88287_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88282_
           _rebind?88283_
           _phi88285_
           _ctx88287_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88289_ _rebind?88290_ _phi88291_)
        (let ((_ctx88293_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88289_
           _rebind?88290_
           _phi88291_
           _ctx88293_))))
    (define gx#core-bind-runtime!
      (lambda _g91049_
        (let ((_g91048_ (##length _g91049_)))
          (cond ((##fx= _g91048_ 1)
                 (apply (lambda (_id88274_)
                          (gx#core-bind-runtime!__0 _id88274_))
                        _g91049_))
                ((##fx= _g91048_ 2)
                 (apply (lambda (_id88282_ _rebind?88283_)
                          (gx#core-bind-runtime!__1 _id88282_ _rebind?88283_))
                        _g91049_))
                ((##fx= _g91048_ 3)
                 (apply (lambda (_id88289_ _rebind?88290_ _phi88291_)
                          (gx#core-bind-runtime!__2
                           _id88289_
                           _rebind?88290_
                           _phi88291_))
                        _g91049_))
                ((##fx= _g91048_ 4)
                 (apply (lambda (_id88295_
                                 _rebind?88296_
                                 _phi88297_
                                 _ctx88298_)
                          (gx#core-bind-runtime!__%
                           _id88295_
                           _rebind?88296_
                           _phi88297_
                           _ctx88298_))
                        _g91049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g91049_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88214_ _eid88215_ _rebind?88216_ _phi88217_ _ctx88218_)
        (let* ((_key88220_ (gx#core-identifier-key _id88214_))
               (_bind88222_
                (if (##structure-instance-of? _ctx88218_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88215_
                     _key88220_
                     _phi88217_
                     _ctx88218_)
                    (if (##structure-instance-of?
                         _ctx88218_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88215_
                         _key88220_
                         _phi88217_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88215_
                         _key88220_
                         _phi88217_)))))
          (gx#bind-identifier!__%
           _id88214_
           _bind88222_
           _rebind?88216_
           _phi88217_
           _ctx88218_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88228_ _eid88229_)
        (let* ((_rebind?88231_ '#f)
               (_phi88233_ (gx#current-expander-phi))
               (_ctx88235_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88228_
           _eid88229_
           _rebind?88231_
           _phi88233_
           _ctx88235_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88237_ _eid88238_ _rebind?88239_)
        (let* ((_phi88241_ (gx#current-expander-phi))
               (_ctx88243_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88237_
           _eid88238_
           _rebind?88239_
           _phi88241_
           _ctx88243_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88245_ _eid88246_ _rebind?88247_ _phi88248_)
        (let ((_ctx88250_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88245_
           _eid88246_
           _rebind?88247_
           _phi88248_
           _ctx88250_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91051_
        (let ((_g91050_ (##length _g91051_)))
          (cond ((##fx= _g91050_ 2)
                 (apply (lambda (_id88228_ _eid88229_)
                          (gx#core-bind-runtime-reference!__0
                           _id88228_
                           _eid88229_))
                        _g91051_))
                ((##fx= _g91050_ 3)
                 (apply (lambda (_id88237_ _eid88238_ _rebind?88239_)
                          (gx#core-bind-runtime-reference!__1
                           _id88237_
                           _eid88238_
                           _rebind?88239_))
                        _g91051_))
                ((##fx= _g91050_ 4)
                 (apply (lambda (_id88245_
                                 _eid88246_
                                 _rebind?88247_
                                 _phi88248_)
                          (gx#core-bind-runtime-reference!__2
                           _id88245_
                           _eid88246_
                           _rebind?88247_
                           _phi88248_))
                        _g91051_))
                ((##fx= _g91050_ 5)
                 (apply (lambda (_id88252_
                                 _eid88253_
                                 _rebind?88254_
                                 _phi88255_
                                 _ctx88256_)
                          (gx#core-bind-runtime-reference!__%
                           _id88252_
                           _eid88253_
                           _rebind?88254_
                           _phi88255_
                           _ctx88256_))
                        _g91051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91051_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88174_ _eid88175_ _rebind?88176_ _phi88177_ _ctx88178_)
        (gx#bind-identifier!__%
         _id88174_
         (##structure
          gx#extern-binding::t
          _eid88175_
          (gx#core-identifier-key _id88174_)
          _phi88177_)
         _rebind?88176_
         _phi88177_
         _ctx88178_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88183_ _eid88184_)
        (let* ((_rebind?88186_ '#f)
               (_phi88188_ (gx#current-expander-phi))
               (_ctx88190_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88183_
           _eid88184_
           _rebind?88186_
           _phi88188_
           _ctx88190_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88192_ _eid88193_ _rebind?88194_)
        (let* ((_phi88196_ (gx#current-expander-phi))
               (_ctx88198_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88192_
           _eid88193_
           _rebind?88194_
           _phi88196_
           _ctx88198_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88200_ _eid88201_ _rebind?88202_ _phi88203_)
        (let ((_ctx88205_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88200_
           _eid88201_
           _rebind?88202_
           _phi88203_
           _ctx88205_))))
    (define gx#core-bind-extern!
      (lambda _g91053_
        (let ((_g91052_ (##length _g91053_)))
          (cond ((##fx= _g91052_ 2)
                 (apply (lambda (_id88183_ _eid88184_)
                          (gx#core-bind-extern!__0 _id88183_ _eid88184_))
                        _g91053_))
                ((##fx= _g91052_ 3)
                 (apply (lambda (_id88192_ _eid88193_ _rebind?88194_)
                          (gx#core-bind-extern!__1
                           _id88192_
                           _eid88193_
                           _rebind?88194_))
                        _g91053_))
                ((##fx= _g91052_ 4)
                 (apply (lambda (_id88200_
                                 _eid88201_
                                 _rebind?88202_
                                 _phi88203_)
                          (gx#core-bind-extern!__2
                           _id88200_
                           _eid88201_
                           _rebind?88202_
                           _phi88203_))
                        _g91053_))
                ((##fx= _g91052_ 5)
                 (apply (lambda (_id88207_
                                 _eid88208_
                                 _rebind?88209_
                                 _phi88210_
                                 _ctx88211_)
                          (gx#core-bind-extern!__%
                           _id88207_
                           _eid88208_
                           _rebind?88209_
                           _phi88210_
                           _ctx88211_))
                        _g91053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91053_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88128_ _e88129_ _rebind?88130_ _phi88131_ _ctx88132_)
        (gx#bind-identifier!__%
         _id88128_
         (let ((_key88137_ (gx#core-identifier-key _id88128_))
               (_e88138_
                (if (or (##structure-instance-of? _e88129_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88129_
                         'gx#expander-context::t))
                    _e88129_
                    (##structure
                     gx#user-expander::t
                     _e88129_
                     _ctx88132_
                     _phi88131_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88137_ '#t _phi88131_ _ctx88132_)
            _key88137_
            _phi88131_
            _e88138_))
         _rebind?88130_
         _phi88131_
         _ctx88132_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88143_ _e88144_)
        (let* ((_rebind?88146_ '#f)
               (_phi88148_ (gx#current-expander-phi))
               (_ctx88150_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88143_
           _e88144_
           _rebind?88146_
           _phi88148_
           _ctx88150_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88152_ _e88153_ _rebind?88154_)
        (let* ((_phi88156_ (gx#current-expander-phi))
               (_ctx88158_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88152_
           _e88153_
           _rebind?88154_
           _phi88156_
           _ctx88158_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88160_ _e88161_ _rebind?88162_ _phi88163_)
        (let ((_ctx88165_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88160_
           _e88161_
           _rebind?88162_
           _phi88163_
           _ctx88165_))))
    (define gx#core-bind-syntax!
      (lambda _g91055_
        (let ((_g91054_ (##length _g91055_)))
          (cond ((##fx= _g91054_ 2)
                 (apply (lambda (_id88143_ _e88144_)
                          (gx#core-bind-syntax!__0 _id88143_ _e88144_))
                        _g91055_))
                ((##fx= _g91054_ 3)
                 (apply (lambda (_id88152_ _e88153_ _rebind?88154_)
                          (gx#core-bind-syntax!__1
                           _id88152_
                           _e88153_
                           _rebind?88154_))
                        _g91055_))
                ((##fx= _g91054_ 4)
                 (apply (lambda (_id88160_ _e88161_ _rebind?88162_ _phi88163_)
                          (gx#core-bind-syntax!__2
                           _id88160_
                           _e88161_
                           _rebind?88162_
                           _phi88163_))
                        _g91055_))
                ((##fx= _g91054_ 5)
                 (apply (lambda (_id88167_
                                 _e88168_
                                 _rebind?88169_
                                 _phi88170_
                                 _ctx88171_)
                          (gx#core-bind-syntax!__%
                           _id88167_
                           _e88168_
                           _rebind?88169_
                           _phi88170_
                           _ctx88171_))
                        _g91055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91055_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88111_ _e88112_ _rebind?88113_)
        (gx#core-bind-syntax!__%
         _id88111_
         _e88112_
         _rebind?88113_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88118_ _e88119_)
        (let ((_rebind?88121_ '#f))
          (gx#core-bind-root-syntax!__% _id88118_ _e88119_ _rebind?88121_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91057_
        (let ((_g91056_ (##length _g91057_)))
          (cond ((##fx= _g91056_ 2)
                 (apply (lambda (_id88118_ _e88119_)
                          (gx#core-bind-root-syntax!__0 _id88118_ _e88119_))
                        _g91057_))
                ((##fx= _g91056_ 3)
                 (apply (lambda (_id88123_ _e88124_ _rebind?88125_)
                          (gx#core-bind-root-syntax!__%
                           _id88123_
                           _e88124_
                           _rebind?88125_))
                        _g91057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91057_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88069_ _alias-id88070_ _rebind?88071_ _phi88072_ _ctx88073_)
        (gx#bind-identifier!__%
         _id88069_
         (let ((_key88075_ (gx#core-identifier-key _id88069_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88075_ '#t _phi88072_ _ctx88073_)
            _key88075_
            _phi88072_
            _alias-id88070_))
         _rebind?88071_
         _phi88072_
         _ctx88073_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88080_ _alias-id88081_)
        (let* ((_rebind?88083_ '#f)
               (_phi88085_ (gx#current-expander-phi))
               (_ctx88087_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88080_
           _alias-id88081_
           _rebind?88083_
           _phi88085_
           _ctx88087_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88089_ _alias-id88090_ _rebind?88091_)
        (let* ((_phi88093_ (gx#current-expander-phi))
               (_ctx88095_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88089_
           _alias-id88090_
           _rebind?88091_
           _phi88093_
           _ctx88095_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88097_ _alias-id88098_ _rebind?88099_ _phi88100_)
        (let ((_ctx88102_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88097_
           _alias-id88098_
           _rebind?88099_
           _phi88100_
           _ctx88102_))))
    (define gx#core-bind-alias!
      (lambda _g91059_
        (let ((_g91058_ (##length _g91059_)))
          (cond ((##fx= _g91058_ 2)
                 (apply (lambda (_id88080_ _alias-id88081_)
                          (gx#core-bind-alias!__0 _id88080_ _alias-id88081_))
                        _g91059_))
                ((##fx= _g91058_ 3)
                 (apply (lambda (_id88089_ _alias-id88090_ _rebind?88091_)
                          (gx#core-bind-alias!__1
                           _id88089_
                           _alias-id88090_
                           _rebind?88091_))
                        _g91059_))
                ((##fx= _g91058_ 4)
                 (apply (lambda (_id88097_
                                 _alias-id88098_
                                 _rebind?88099_
                                 _phi88100_)
                          (gx#core-bind-alias!__2
                           _id88097_
                           _alias-id88098_
                           _rebind?88099_
                           _phi88100_))
                        _g91059_))
                ((##fx= _g91058_ 5)
                 (apply (lambda (_id88104_
                                 _alias-id88105_
                                 _rebind?88106_
                                 _phi88107_
                                 _ctx88108_)
                          (gx#core-bind-alias!__%
                           _id88104_
                           _alias-id88105_
                           _rebind?88106_
                           _phi88107_
                           _ctx88108_))
                        _g91059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91059_))))))
    (define gx#make-binding-id__%
      (lambda (_key88026_ _syntax?88027_ _phi88028_ _ctx88029_)
        (if (uninterned-symbol? _key88026_)
            (gensym 'L)
            (if (pair? _key88026_)
                (gensym (car _key88026_))
                (if (##structure-instance-of? _ctx88029_ 'gx#top-context::t)
                    (let ((_ns88031_
                           (gx#core-context-namespace__% _ctx88029_)))
                      (if (and (fxzero? _phi88028_) (not _syntax?88027_))
                          (if _ns88031_
                              (make-symbol__1 _ns88031_ '"#" _key88026_)
                              _key88026_)
                          (if _syntax?88027_
                              (make-symbol__1
                               (let ((_$e88033_ _ns88031_))
                                 (if _$e88033_ _$e88033_ '""))
                               '"[:"
                               (number->string _phi88028_)
                               '":]#"
                               _key88026_)
                              (make-symbol__1
                               (let ((_$e88036_ _ns88031_))
                                 (if _$e88036_ _$e88036_ '""))
                               '"["
                               (number->string _phi88028_)
                               '"]#"
                               _key88026_))))
                    (gensym _key88026_))))))
    (define gx#make-binding-id__0
      (lambda (_key88042_)
        (let* ((_syntax?88044_ '#f)
               (_phi88046_ (gx#current-expander-phi))
               (_ctx88048_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88042_
           _syntax?88044_
           _phi88046_
           _ctx88048_))))
    (define gx#make-binding-id__1
      (lambda (_key88050_ _syntax?88051_)
        (let* ((_phi88053_ (gx#current-expander-phi))
               (_ctx88055_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88050_
           _syntax?88051_
           _phi88053_
           _ctx88055_))))
    (define gx#make-binding-id__2
      (lambda (_key88057_ _syntax?88058_ _phi88059_)
        (let ((_ctx88061_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88057_
           _syntax?88058_
           _phi88059_
           _ctx88061_))))
    (define gx#make-binding-id
      (lambda _g91061_
        (let ((_g91060_ (##length _g91061_)))
          (cond ((##fx= _g91060_ 1)
                 (apply (lambda (_key88042_)
                          (gx#make-binding-id__0 _key88042_))
                        _g91061_))
                ((##fx= _g91060_ 2)
                 (apply (lambda (_key88050_ _syntax?88051_)
                          (gx#make-binding-id__1 _key88050_ _syntax?88051_))
                        _g91061_))
                ((##fx= _g91060_ 3)
                 (apply (lambda (_key88057_ _syntax?88058_ _phi88059_)
                          (gx#make-binding-id__2
                           _key88057_
                           _syntax?88058_
                           _phi88059_))
                        _g91061_))
                ((##fx= _g91060_ 4)
                 (apply (lambda (_key88063_
                                 _syntax?88064_
                                 _phi88065_
                                 _ctx88066_)
                          (gx#make-binding-id__%
                           _key88063_
                           _syntax?88064_
                           _phi88065_
                           _ctx88066_))
                        _g91061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91061_))))))))
