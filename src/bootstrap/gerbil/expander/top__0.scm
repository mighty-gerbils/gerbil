(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708165430)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx161966_)
        (letrec ((_expand-special161968_
                  (lambda (_hd161970_ _K161971_ _rest161972_ _r161973_)
                    (_K161971_
                     _rest161972_
                     (cons (gx#core-expand-top _hd161970_) _r161973_)))))
          (gx#core-expand-block__0 _stx161966_ _expand-special161968_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx161719_)
        (letrec ((_expand-special161721_
                  (lambda (_hd161841_ _K161842_ _rest161843_ _r161844_)
                    (let* ((_K161848_
                            (lambda (_e161846_)
                              (_K161842_
                               _rest161843_
                               (cons _e161846_ _r161844_))))
                           (_e161849161878_ _hd161841_)
                           (_E161873161882_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161849161878_)))
                           (_E161869161894_
                            (lambda ()
                              (if (gx#stx-pair? _e161849161878_)
                                  (let ((_e161874161886_
                                         (gx#syntax-e _e161849161878_)))
                                    (let ((_hd161875161889_
                                           (##car _e161874161886_))
                                          (_tl161876161891_
                                           (##cdr _e161874161886_)))
                                      (if (and (gx#identifier?
                                                _hd161875161889_)
                                               (gx#core-identifier=?
                                                _hd161875161889_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K161848_
                                               (gx#core-expand-define-runtime%
                                                _hd161841_))
                                              (_E161873161882_))
                                          (_E161873161882_))))
                                  (_E161873161882_))))
                           (_E161865161906_
                            (lambda ()
                              (if (gx#stx-pair? _e161849161878_)
                                  (let ((_e161870161898_
                                         (gx#syntax-e _e161849161878_)))
                                    (let ((_hd161871161901_
                                           (##car _e161870161898_))
                                          (_tl161872161903_
                                           (##cdr _e161870161898_)))
                                      (if (and (gx#identifier?
                                                _hd161871161901_)
                                               (gx#core-identifier=?
                                                _hd161871161901_
                                                '%#define-alias))
                                          (if '#t
                                              (_K161848_
                                               (gx#core-expand-define-alias%
                                                _hd161841_))
                                              (_E161869161894_))
                                          (_E161869161894_))))
                                  (_E161869161894_))))
                           (_E161855161918_
                            (lambda ()
                              (if (gx#stx-pair? _e161849161878_)
                                  (let ((_e161866161910_
                                         (gx#syntax-e _e161849161878_)))
                                    (let ((_hd161867161913_
                                           (##car _e161866161910_))
                                          (_tl161868161915_
                                           (##cdr _e161866161910_)))
                                      (if (and (gx#identifier?
                                                _hd161867161913_)
                                               (gx#core-identifier=?
                                                _hd161867161913_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K161848_
                                               (gx#core-expand-define-syntax%
                                                _hd161841_))
                                              (_E161865161906_))
                                          (_E161865161906_))))
                                  (_E161865161906_))))
                           (_E161851161950_
                            (lambda ()
                              (if (gx#stx-pair? _e161849161878_)
                                  (let ((_e161856161922_
                                         (gx#syntax-e _e161849161878_)))
                                    (let ((_hd161857161925_
                                           (##car _e161856161922_))
                                          (_tl161858161927_
                                           (##cdr _e161856161922_)))
                                      (if (and (gx#identifier?
                                                _hd161857161925_)
                                               (gx#core-identifier=?
                                                _hd161857161925_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161858161927_)
                                              (let ((_e161859161930_
                                                     (gx#syntax-e
                                                      _tl161858161927_)))
                                                (let ((_hd161860161933_
                                                       (##car _e161859161930_))
                                                      (_tl161861161935_
                                                       (##cdr _e161859161930_)))
                                                  (let ((_hd-bind161938_
                                                         _hd161860161933_))
                                                    (if (gx#stx-pair?
                                                         _tl161861161935_)
                                                        (let ((_e161862161940_
                                                               (gx#syntax-e
                                                                _tl161861161935_)))
                                                          (let ((_hd161863161943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161862161940_))
                        (_tl161864161945_ (##cdr _e161862161940_)))
                    (let ((_expr161948_ _hd161863161943_))
                      (if (gx#stx-null? _tl161864161945_)
                          (if (gx#core-bind-values? _hd-bind161938_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161938_)
                                (_K161848_ _hd161841_))
                              (_E161855161918_))
                          (_E161855161918_)))))
                (_E161855161918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161855161918_))
                                          (_E161855161918_))))
                                  (_E161855161918_))))
                           (_E161850161962_
                            (lambda ()
                              (if (gx#stx-pair? _e161849161878_)
                                  (let ((_e161852161954_
                                         (gx#syntax-e _e161849161878_)))
                                    (let ((_hd161853161957_
                                           (##car _e161852161954_))
                                          (_tl161854161959_
                                           (##cdr _e161852161954_)))
                                      (if (and (gx#identifier?
                                                _hd161853161957_)
                                               (gx#core-identifier=?
                                                _hd161853161957_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K161848_
                                               (gx#core-expand-begin-syntax%
                                                _hd161841_))
                                              (_E161851161950_))
                                          (_E161851161950_))))
                                  (_E161851161950_)))))
                      (_E161850161962_))))
                 (_eval-body161722_
                  (lambda (_rbody161730_)
                    (let _lp161732_ ((_rest161734_ _rbody161730_)
                                     (_body161735_ '())
                                     (_ebody161736_ '()))
                      (let* ((_rest161737161745_ _rest161734_)
                             (_else161739161753_
                              (lambda ()
                                (values _body161735_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody161736_)
                                          (gx#stx-source _stx161719_))))))
                             (_K161741161829_
                              (lambda (_rest161756_ _hd161757_)
                                (let* ((_e161758161775_ _hd161757_)
                                       (_E161770161779_
                                        (lambda ()
                                          (_lp161732_
                                           _rest161756_
                                           (cons _hd161757_ _body161735_)
                                           (cons _hd161757_ _ebody161736_))))
                                       (_E161760161791_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161758161775_)
                                              (let ((_e161771161783_
                                                     (gx#syntax-e
                                                      _e161758161775_)))
                                                (let ((_hd161772161786_
                                                       (##car _e161771161783_))
                                                      (_tl161773161788_
                                                       (##cdr _e161771161783_)))
                                                  (if (and (gx#identifier?
                                                            _hd161772161786_)
                                                           (gx#core-identifier=?
                                                            _hd161772161786_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp161732_
                                                           _rest161756_
                                                           (cons _hd161757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body161735_)
                   _ebody161736_)
                  (_E161770161779_))
              (_E161770161779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161770161779_))))
                                       (_E161759161825_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161758161775_)
                                              (let ((_e161761161795_
                                                     (gx#syntax-e
                                                      _e161758161775_)))
                                                (let ((_hd161762161798_
                                                       (##car _e161761161795_))
                                                      (_tl161763161800_
                                                       (##cdr _e161761161795_)))
                                                  (if (and (gx#identifier?
                                                            _hd161762161798_)
                                                           (gx#core-identifier=?
                                                            _hd161762161798_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl161763161800_)
                                                          (let ((_e161764161803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl161763161800_)))
                    (let ((_hd161765161806_ (##car _e161764161803_))
                          (_tl161766161808_ (##cdr _e161764161803_)))
                      (let ((_hd-bind161811_ _hd161765161806_))
                        (if (gx#stx-pair? _tl161766161808_)
                            (let ((_e161767161813_
                                   (gx#syntax-e _tl161766161808_)))
                              (let ((_hd161768161816_ (##car _e161767161813_))
                                    (_tl161769161818_ (##cdr _e161767161813_)))
                                (let ((_expr161821_ _hd161768161816_))
                                  (if (gx#stx-null? _tl161769161818_)
                                      (if '#t
                                          (let ((_ehd161823_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind161811_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr161821_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd161757_))))
                                            (_lp161732_
                                             _rest161756_
                                             (cons _ehd161823_ _body161735_)
                                             (cons _ehd161823_ _ebody161736_)))
                                          (_E161760161791_))
                                      (_E161760161791_)))))
                            (_E161760161791_)))))
                  (_E161760161791_))
              (_E161760161791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161760161791_)))))
                                  (_E161759161825_)))))
                        (if (##pair? _rest161737161745_)
                            (let ((_hd161742161832_ (##car _rest161737161745_))
                                  (_tl161743161834_
                                   (##cdr _rest161737161745_)))
                              (let* ((_hd161837_ _hd161742161832_)
                                     (_rest161839_ _tl161743161834_))
                                (_K161741161829_ _rest161839_ _hd161837_)))
                            (_else161739161753_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody161725_
                     (gx#core-expand-block__1
                      _stx161719_
                      _expand-special161721_
                      '#f))
                    (_g166557_ (_eval-body161722_ _rbody161725_)))
               (begin
                 (let ((_g166558_
                        (if (##values? _g166557_)
                            (##vector-length _g166557_)
                            1)))
                   (if (not (##fx= _g166558_ 2))
                       (error "Context expects 2 values" _g166558_)))
                 (let ((_expanded-body161727_ (##vector-ref _g166557_ 0))
                       (_value161728_ (##vector-ref _g166557_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body161727_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value161728_ '())))
                    (gx#stx-source _stx161719_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx161689_)
        (let* ((_e161690161697_ _stx161689_)
               (_E161692161701_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161690161697_)))
               (_E161691161715_
                (lambda ()
                  (if (gx#stx-pair? _e161690161697_)
                      (let ((_e161693161705_ (gx#syntax-e _e161690161697_)))
                        (let ((_hd161694161708_ (##car _e161693161705_))
                              (_tl161695161710_ (##cdr _e161693161705_)))
                          (let ((_body161713_ _tl161695161710_))
                            (if (gx#stx-list? _body161713_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body161713_)
                                 (gx#stx-source _stx161689_))
                                (_E161692161701_)))))
                      (_E161692161701_)))))
          (_E161691161715_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx161687_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx161687_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx161633_)
        (let* ((_e161634161647_ _stx161633_)
               (_E161636161651_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161634161647_)))
               (_E161635161683_
                (lambda ()
                  (if (gx#stx-pair? _e161634161647_)
                      (let ((_e161637161655_ (gx#syntax-e _e161634161647_)))
                        (let ((_hd161638161658_ (##car _e161637161655_))
                              (_tl161639161660_ (##cdr _e161637161655_)))
                          (if (gx#stx-pair? _tl161639161660_)
                              (let ((_e161640161663_
                                     (gx#syntax-e _tl161639161660_)))
                                (let ((_hd161641161666_
                                       (##car _e161640161663_))
                                      (_tl161642161668_
                                       (##cdr _e161640161663_)))
                                  (let ((_ann161671_ _hd161641161666_))
                                    (if (gx#stx-pair? _tl161642161668_)
                                        (let ((_e161643161673_
                                               (gx#syntax-e _tl161642161668_)))
                                          (let ((_hd161644161676_
                                                 (##car _e161643161673_))
                                                (_tl161645161678_
                                                 (##cdr _e161643161673_)))
                                            (let ((_expr161681_
                                                   _hd161644161676_))
                                              (if (gx#stx-null?
                                                   _tl161645161678_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann161671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr161681_)
                                 '())))
               (gx#stx-source _stx161633_))
              (_E161636161651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161636161651_)))))
                                        (_E161636161651_)))))
                              (_E161636161651_))))
                      (_E161636161651_)))))
          (_E161635161683_))))
    (define gx#core-expand-local-block
      (lambda (_stx161357_ _body161358_)
        (letrec ((_expand-special161360_
                  (lambda (_hd161628_ _K161629_ _rest161630_ _r161631_)
                    (_K161629_
                     '()
                     (cons (_expand-internal161361_ _hd161628_ _rest161630_)
                           _r161631_))))
                 (_expand-internal161361_
                  (lambda (_hd161624_ _rest161625_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal161363_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd161624_ _rest161625_))
                          (gx#stx-source _stx161357_))
                         _expand-internal-special161362_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj166551
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj166551)
                       __obj166551))))
                 (_expand-internal-special161362_
                  (lambda (_hd161519_ _K161520_ _rest161521_ _r161522_)
                    (let* ((_e161523161548_ _hd161519_)
                           (_E161543161552_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161523161548_)))
                           (_E161539161564_
                            (lambda ()
                              (if (gx#stx-pair? _e161523161548_)
                                  (let ((_e161544161556_
                                         (gx#syntax-e _e161523161548_)))
                                    (let ((_hd161545161559_
                                           (##car _e161544161556_))
                                          (_tl161546161561_
                                           (##cdr _e161544161556_)))
                                      (if (and (gx#identifier?
                                                _hd161545161559_)
                                               (gx#core-identifier=?
                                                _hd161545161559_
                                                '%#declare))
                                          (if '#t
                                              (_K161520_
                                               _rest161521_
                                               (cons (gx#core-expand-declare%
                                                      _hd161519_)
                                                     _r161522_))
                                              (_E161543161552_))
                                          (_E161543161552_))))
                                  (_E161543161552_))))
                           (_E161535161576_
                            (lambda ()
                              (if (gx#stx-pair? _e161523161548_)
                                  (let ((_e161540161568_
                                         (gx#syntax-e _e161523161548_)))
                                    (let ((_hd161541161571_
                                           (##car _e161540161568_))
                                          (_tl161542161573_
                                           (##cdr _e161540161568_)))
                                      (if (and (gx#identifier?
                                                _hd161541161571_)
                                               (gx#core-identifier=?
                                                _hd161541161571_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd161519_)
                                                (_K161520_
                                                 _rest161521_
                                                 _r161522_))
                                              (_E161539161564_))
                                          (_E161539161564_))))
                                  (_E161539161564_))))
                           (_E161525161588_
                            (lambda ()
                              (if (gx#stx-pair? _e161523161548_)
                                  (let ((_e161536161580_
                                         (gx#syntax-e _e161523161548_)))
                                    (let ((_hd161537161583_
                                           (##car _e161536161580_))
                                          (_tl161538161585_
                                           (##cdr _e161536161580_)))
                                      (if (and (gx#identifier?
                                                _hd161537161583_)
                                               (gx#core-identifier=?
                                                _hd161537161583_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd161519_)
                                                (_K161520_
                                                 _rest161521_
                                                 _r161522_))
                                              (_E161535161576_))
                                          (_E161535161576_))))
                                  (_E161535161576_))))
                           (_E161524161620_
                            (lambda ()
                              (if (gx#stx-pair? _e161523161548_)
                                  (let ((_e161526161592_
                                         (gx#syntax-e _e161523161548_)))
                                    (let ((_hd161527161595_
                                           (##car _e161526161592_))
                                          (_tl161528161597_
                                           (##cdr _e161526161592_)))
                                      (if (and (gx#identifier?
                                                _hd161527161595_)
                                               (gx#core-identifier=?
                                                _hd161527161595_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161528161597_)
                                              (let ((_e161529161600_
                                                     (gx#syntax-e
                                                      _tl161528161597_)))
                                                (let ((_hd161530161603_
                                                       (##car _e161529161600_))
                                                      (_tl161531161605_
                                                       (##cdr _e161529161600_)))
                                                  (let ((_hd-bind161608_
                                                         _hd161530161603_))
                                                    (if (gx#stx-pair?
                                                         _tl161531161605_)
                                                        (let ((_e161532161610_
                                                               (gx#syntax-e
                                                                _tl161531161605_)))
                                                          (let ((_hd161533161613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161532161610_))
                        (_tl161534161615_ (##cdr _e161532161610_)))
                    (let ((_expr161618_ _hd161533161613_))
                      (if (gx#stx-null? _tl161534161615_)
                          (if (gx#core-bind-values? _hd-bind161608_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161608_)
                                (_K161520_
                                 _rest161521_
                                 (cons _hd161519_ _r161522_)))
                              (_E161525161588_))
                          (_E161525161588_)))))
                (_E161525161588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161525161588_))
                                          (_E161525161588_))))
                                  (_E161525161588_)))))
                      (_E161524161620_))))
                 (_wrap-internal161363_
                  (lambda (_rbody161365_)
                    (let _lp161367_ ((_rest161369_ _rbody161365_)
                                     (_decls161370_ '())
                                     (_bind161371_ '())
                                     (_body161372_ '()))
                      (let* ((_e161373161380_ _rest161369_)
                             (_E161375161429_
                              (lambda ()
                                (let* ((_body161424_
                                        (let* ((_body161383161393_
                                                _body161372_)
                                               (_else161386161401_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161372_)
                                                   (gx#stx-source
                                                    _stx161357_)))))
                                          (let ((_K161391161421_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx161357_)))
                                                (_K161388161407_
                                                 (lambda (_expr161405_)
                                                   _expr161405_)))
                                            (let ((_try-match161385161417_
                                                   (lambda ()
                                                     (if (##pair? _body161383161393_)
                                                         (let ((_tl161390161412_
                                                                (##cdr _body161383161393_))
                                                               (_hd161389161410_
                                                                (##car _body161383161393_)))
                                                           (if (##null? _tl161390161412_)
                                                               (let ((_expr161415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd161389161410_))
                         (_K161388161407_ _expr161415_))
                       (_else161386161401_)))
                 (_else161386161401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body161383161393_)
                                                  (_K161391161421_)
                                                  (_try-match161385161417_))))))
                                       (_body161426_
                                        (if (null? _bind161371_)
                                            _body161424_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind161371_
                                                         (cons _body161424_
                                                               '())))
                                             (gx#stx-source _stx161357_)))))
                                  (if (null? _decls161370_)
                                      _body161426_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls161370_
                                                   (cons _body161426_ '())))
                                       (gx#stx-source _stx161357_))))))
                             (_E161374161515_
                              (lambda ()
                                (if (gx#stx-pair? _e161373161380_)
                                    (let ((_e161376161433_
                                           (gx#syntax-e _e161373161380_)))
                                      (let ((_hd161377161436_
                                             (##car _e161376161433_))
                                            (_tl161378161438_
                                             (##cdr _e161376161433_)))
                                        (let* ((_hd161441_ _hd161377161436_)
                                               (_rest161443_ _tl161378161438_))
                                          (if '#t
                                              (let* ((_e161444161461_
                                                      _hd161441_)
                                                     (_E161456161465_
                                                      (lambda ()
                                                        (if (null? _bind161371_)
                                                            (_lp161367_
                                                             _rest161443_
                                                             _decls161370_
                                                             _bind161371_
                                                             (cons _hd161441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body161372_))
                    (_lp161367_
                     _rest161443_
                     _decls161370_
                     (cons (cons '#f (cons _hd161441_ '())) _bind161371_)
                     _body161372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E161446161479_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e161444161461_)
                                                            (let ((_e161457161469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e161444161461_)))
                      (let ((_hd161458161472_ (##car _e161457161469_))
                            (_tl161459161474_ (##cdr _e161457161469_)))
                        (if (and (gx#identifier? _hd161458161472_)
                                 (gx#core-identifier=?
                                  _hd161458161472_
                                  '%#declare))
                            (let ((_xdecls161477_ _tl161459161474_))
                              (if '#t
                                  (_lp161367_
                                   _rest161443_
                                   (gx#stx-foldr
                                    cons
                                    _decls161370_
                                    _xdecls161477_)
                                   _bind161371_
                                   _body161372_)
                                  (_E161456161465_)))
                            (_E161456161465_))))
                    (_E161456161465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E161445161511_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e161444161461_)
                                                            (let ((_e161447161483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e161444161461_)))
                      (let ((_hd161448161486_ (##car _e161447161483_))
                            (_tl161449161488_ (##cdr _e161447161483_)))
                        (if (and (gx#identifier? _hd161448161486_)
                                 (gx#core-identifier=?
                                  _hd161448161486_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl161449161488_)
                                (let ((_e161450161491_
                                       (gx#syntax-e _tl161449161488_)))
                                  (let ((_hd161451161494_
                                         (##car _e161450161491_))
                                        (_tl161452161496_
                                         (##cdr _e161450161491_)))
                                    (let ((_hd-bind161499_ _hd161451161494_))
                                      (if (gx#stx-pair? _tl161452161496_)
                                          (let ((_e161453161501_
                                                 (gx#syntax-e
                                                  _tl161452161496_)))
                                            (let ((_hd161454161504_
                                                   (##car _e161453161501_))
                                                  (_tl161455161506_
                                                   (##cdr _e161453161501_)))
                                              (let ((_expr161509_
                                                     _hd161454161504_))
                                                (if (gx#stx-null?
                                                     _tl161455161506_)
                                                    (if '#t
                                                        (_lp161367_
                                                         _rest161443_
                                                         _decls161370_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind161499_)
                             (cons (gx#core-expand-expression _expr161509_)
                                   '()))
                       _bind161371_)
                 _body161372_)
                (_E161446161479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161446161479_)))))
                                          (_E161446161479_)))))
                                (_E161446161479_))
                            (_E161446161479_))))
                    (_E161446161479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E161445161511_))
                                              (_E161375161429_)))))
                                    (_E161375161429_)))))
                        (_E161374161515_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body161358_)
            (gx#stx-source _stx161357_))
           _expand-special161360_))))
    (define gx#core-expand-declare%
      (lambda (_stx161295_)
        (let* ((_e161296161303_ _stx161295_)
               (_E161298161307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161296161303_)))
               (_E161297161353_
                (lambda ()
                  (if (gx#stx-pair? _e161296161303_)
                      (let ((_e161299161311_ (gx#syntax-e _e161296161303_)))
                        (let ((_hd161300161314_ (##car _e161299161311_))
                              (_tl161301161316_ (##cdr _e161299161311_)))
                          (let ((_body161319_ _tl161301161316_))
                            (if (gx#stx-list? _body161319_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl161321_)
                                     (let* ((_e161322161329_ _decl161321_)
                                            (_E161324161333_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e161322161329_)))
                                            (_E161323161349_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e161322161329_)
                                                   (let ((_e161325161337_
                                                          (gx#syntax-e
                                                           _e161322161329_)))
                                                     (let ((_hd161326161340_
                                                            (##car _e161325161337_))
                                                           (_tl161327161342_
                                                            (##cdr _e161325161337_)))
                                                       (let* ((_head161345_
                                                               _hd161326161340_)
                                                              (_args161347_
                                                               _tl161327161342_))
                                                         (if (gx#stx-list?
                                                              _args161347_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl161321_)
                                                             (_E161324161333_)))))
                                                   (_E161324161333_)))))
                                       (_E161323161349_)))
                                   _body161319_))
                                 (gx#stx-source _stx161295_))
                                (_E161298161307_)))))
                      (_E161298161307_)))))
          (_E161297161353_))))
    (define gx#core-expand-extern%
      (lambda (_stx161199_)
        (let* ((_e161200161207_ _stx161199_)
               (_E161202161211_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161200161207_)))
               (_E161201161291_
                (lambda ()
                  (if (gx#stx-pair? _e161200161207_)
                      (let ((_e161203161215_ (gx#syntax-e _e161200161207_)))
                        (let ((_hd161204161218_ (##car _e161203161215_))
                              (_tl161205161220_ (##cdr _e161203161215_)))
                          (let ((_body161223_ _tl161205161220_))
                            (if '#t
                                (let _lp161225_ ((_rest161227_ _body161223_)
                                                 (_r161228_ '()))
                                  (let* ((_e161229161243_ _rest161227_)
                                         (_E161241161247_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx161199_)))
                                         (_E161231161251_
                                          (lambda ()
                                            (if (gx#stx-null? _e161229161243_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r161228_))
                                                     (gx#stx-source
                                                      _stx161199_))
                                                    (_E161241161247_))
                                                (_E161241161247_))))
                                         (_E161230161287_
                                          (lambda ()
                                            (if (gx#stx-pair? _e161229161243_)
                                                (let ((_e161232161255_
                                                       (gx#syntax-e
                                                        _e161229161243_)))
                                                  (let ((_hd161233161258_
                                                         (##car _e161232161255_))
                                                        (_tl161234161260_
                                                         (##cdr _e161232161255_)))
                                                    (if (gx#stx-pair?
                                                         _hd161233161258_)
                                                        (let ((_e161235161263_
                                                               (gx#syntax-e
                                                                _hd161233161258_)))
                                                          (let ((_hd161236161266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161235161263_))
                        (_tl161237161268_ (##cdr _e161235161263_)))
                    (let ((_id161271_ _hd161236161266_))
                      (if (gx#stx-pair? _tl161237161268_)
                          (let ((_e161238161273_
                                 (gx#syntax-e _tl161237161268_)))
                            (let ((_hd161239161276_ (##car _e161238161273_))
                                  (_tl161240161278_ (##cdr _e161238161273_)))
                              (let ((_eid161281_ _hd161239161276_))
                                (if (gx#stx-null? _tl161240161278_)
                                    (let ((_rest161283_ _tl161234161260_))
                                      (if (and (gx#identifier? _id161271_)
                                               (gx#identifier? _eid161281_))
                                          (let ((_eid161285_
                                                 (gx#stx-e _eid161281_)))
                                            (gx#core-bind-extern!__0
                                             _id161271_
                                             _eid161285_)
                                            (_lp161225_
                                             _rest161283_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id161271_)
                                                         (cons _eid161285_
                                                               '()))
                                                   _r161228_)))
                                          (_E161231161251_)))
                                    (_E161231161251_)))))
                          (_E161231161251_)))))
                (_E161231161251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E161231161251_)))))
                                    (_E161230161287_)))
                                (_E161202161211_)))))
                      (_E161202161211_)))))
          (_E161201161291_))))
    (define gx#core-expand-define-values%
      (lambda (_stx161145_)
        (let* ((_e161146161159_ _stx161145_)
               (_E161148161163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161146161159_)))
               (_E161147161195_
                (lambda ()
                  (if (gx#stx-pair? _e161146161159_)
                      (let ((_e161149161167_ (gx#syntax-e _e161146161159_)))
                        (let ((_hd161150161170_ (##car _e161149161167_))
                              (_tl161151161172_ (##cdr _e161149161167_)))
                          (if (gx#stx-pair? _tl161151161172_)
                              (let ((_e161152161175_
                                     (gx#syntax-e _tl161151161172_)))
                                (let ((_hd161153161178_
                                       (##car _e161152161175_))
                                      (_tl161154161180_
                                       (##cdr _e161152161175_)))
                                  (let ((_hd161183_ _hd161153161178_))
                                    (if (gx#stx-pair? _tl161154161180_)
                                        (let ((_e161155161185_
                                               (gx#syntax-e _tl161154161180_)))
                                          (let ((_hd161156161188_
                                                 (##car _e161155161185_))
                                                (_tl161157161190_
                                                 (##cdr _e161155161185_)))
                                            (let ((_expr161193_
                                                   _hd161156161188_))
                                              (if (gx#stx-null?
                                                   _tl161157161190_)
                                                  (if (gx#core-bind-values?
                                                       _hd161183_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd161183_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd161183_)
                             (cons (gx#core-expand-expression _expr161193_)
                                   '())))
                 (gx#stx-source _stx161145_)))
              (_E161148161163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161148161163_)))))
                                        (_E161148161163_)))))
                              (_E161148161163_))))
                      (_E161148161163_)))))
          (_E161147161195_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx161089_)
        (let* ((_e161090161103_ _stx161089_)
               (_E161092161107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161090161103_)))
               (_E161091161141_
                (lambda ()
                  (if (gx#stx-pair? _e161090161103_)
                      (let ((_e161093161111_ (gx#syntax-e _e161090161103_)))
                        (let ((_hd161094161114_ (##car _e161093161111_))
                              (_tl161095161116_ (##cdr _e161093161111_)))
                          (if (gx#stx-pair? _tl161095161116_)
                              (let ((_e161096161119_
                                     (gx#syntax-e _tl161095161116_)))
                                (let ((_hd161097161122_
                                       (##car _e161096161119_))
                                      (_tl161098161124_
                                       (##cdr _e161096161119_)))
                                  (let ((_id161127_ _hd161097161122_))
                                    (if (gx#stx-pair? _tl161098161124_)
                                        (let ((_e161099161129_
                                               (gx#syntax-e _tl161098161124_)))
                                          (let ((_hd161100161132_
                                                 (##car _e161099161129_))
                                                (_tl161101161134_
                                                 (##cdr _e161099161129_)))
                                            (let ((_binding-id161137_
                                                   _hd161100161132_))
                                              (if (gx#stx-null?
                                                   _tl161101161134_)
                                                  (if (and (gx#identifier?
                                                            _id161127_)
                                                           (gx#identifier?
                                                            _binding-id161137_))
                                                      (let ((_eid161139_
                                                             (gx#stx-e
                                                              _binding-id161137_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id161127_
                                                         _eid161139_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id161127_)
                             (cons _eid161139_ '())))))
              (_E161092161107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161092161107_)))))
                                        (_E161092161107_)))))
                              (_E161092161107_))))
                      (_E161092161107_)))))
          (_E161091161141_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx161032_)
        (let* ((_e161033161046_ _stx161032_)
               (_E161035161050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e161033161046_)))
               (_E161034161085_
                (lambda ()
                  (if (gx#stx-pair? _e161033161046_)
                      (let ((_e161036161054_ (gx#syntax-e _e161033161046_)))
                        (let ((_hd161037161057_ (##car _e161036161054_))
                              (_tl161038161059_ (##cdr _e161036161054_)))
                          (if (gx#stx-pair? _tl161038161059_)
                              (let ((_e161039161062_
                                     (gx#syntax-e _tl161038161059_)))
                                (let ((_hd161040161065_
                                       (##car _e161039161062_))
                                      (_tl161041161067_
                                       (##cdr _e161039161062_)))
                                  (let ((_id161070_ _hd161040161065_))
                                    (if (gx#stx-pair? _tl161041161067_)
                                        (let ((_e161042161072_
                                               (gx#syntax-e _tl161041161067_)))
                                          (let ((_hd161043161075_
                                                 (##car _e161042161072_))
                                                (_tl161044161077_
                                                 (##cdr _e161042161072_)))
                                            (let ((_expr161080_
                                                   _hd161043161075_))
                                              (if (gx#stx-null?
                                                   _tl161044161077_)
                                                  (if (gx#identifier?
                                                       _id161070_)
                                                      (let ((_g166559_
                                                             (gx#core-expand-expression+1
                                                              _expr161080_)))
                                                        (begin
                                                          (let ((_g166560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g166559_)
                             (##vector-length _g166559_)
                             1)))
                    (if (not (##fx= _g166560_ 2))
                        (error "Context expects 2 values" _g166560_)))
                  (let ((_e-stx161082_ (##vector-ref _g166559_ 0))
                        (_e161083_ (##vector-ref _g166559_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id161070_ _e161083_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id161070_)
                                   (cons _e-stx161082_ '())))
                       (gx#stx-source _stx161032_))))))
              (_E161035161050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E161035161050_)))))
                                        (_E161035161050_)))))
                              (_E161035161050_))))
                      (_E161035161050_)))))
          (_E161034161085_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx160976_)
        (let* ((_e160977160990_ _stx160976_)
               (_E160979160994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160977160990_)))
               (_E160978161028_
                (lambda ()
                  (if (gx#stx-pair? _e160977160990_)
                      (let ((_e160980160998_ (gx#syntax-e _e160977160990_)))
                        (let ((_hd160981161001_ (##car _e160980160998_))
                              (_tl160982161003_ (##cdr _e160980160998_)))
                          (if (gx#stx-pair? _tl160982161003_)
                              (let ((_e160983161006_
                                     (gx#syntax-e _tl160982161003_)))
                                (let ((_hd160984161009_
                                       (##car _e160983161006_))
                                      (_tl160985161011_
                                       (##cdr _e160983161006_)))
                                  (let ((_id161014_ _hd160984161009_))
                                    (if (gx#stx-pair? _tl160985161011_)
                                        (let ((_e160986161016_
                                               (gx#syntax-e _tl160985161011_)))
                                          (let ((_hd160987161019_
                                                 (##car _e160986161016_))
                                                (_tl160988161021_
                                                 (##cdr _e160986161016_)))
                                            (let ((_alias-id161024_
                                                   _hd160987161019_))
                                              (if (gx#stx-null?
                                                   _tl160988161021_)
                                                  (if (and (gx#identifier?
                                                            _id161014_)
                                                           (gx#identifier?
                                                            _alias-id161024_))
                                                      (let ((_alias-id161026_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id161024_)))
                                                        (gx#core-bind-alias!__0
                                                         _id161014_
                                                         _alias-id161026_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id161014_)
                             (cons _alias-id161026_ '())))))
              (_E160979160994_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160979160994_)))))
                                        (_E160979160994_)))))
                              (_E160979160994_))))
                      (_E160979160994_)))))
          (_E160978161028_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx160919_ _wrap?160920_)
        (let* ((_e160921160931_ _stx160919_)
               (_E160923160935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160921160931_)))
               (_E160922160962_
                (lambda ()
                  (if (gx#stx-pair? _e160921160931_)
                      (let ((_e160924160939_ (gx#syntax-e _e160921160931_)))
                        (let ((_hd160925160942_ (##car _e160924160939_))
                              (_tl160926160944_ (##cdr _e160924160939_)))
                          (if (gx#stx-pair? _tl160926160944_)
                              (let ((_e160927160947_
                                     (gx#syntax-e _tl160926160944_)))
                                (let ((_hd160928160950_
                                       (##car _e160927160947_))
                                      (_tl160929160952_
                                       (##cdr _e160927160947_)))
                                  (let* ((_hd160955_ _hd160928160950_)
                                         (_body160957_ _tl160929160952_))
                                    (if (gx#core-bind-values? _hd160955_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd160955_)
                                           (let ((_body160960_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd160955_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx160919_
                                                               _body160957_)
                                                              '()))))
                                             (if _wrap?160920_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body160960_)
                                                  (gx#stx-source _stx160919_))
                                                 _body160960_)))
                                         gx#current-expander-context
                                         (let ((__obj166552
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166552)
                                           __obj166552))
                                        (_E160923160935_)))))
                              (_E160923160935_))))
                      (_E160923160935_)))))
          (_E160922160962_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx160969_)
        (let ((_wrap?160971_ '#t))
          (gx#core-expand-lambda%__% _stx160969_ _wrap?160971_))))
    (define gx#core-expand-lambda%
      (lambda _g166562_
        (let ((_g166561_ (##length _g166562_)))
          (cond ((##fx= _g166561_ 1)
                 (apply (lambda (_stx160969_)
                          (gx#core-expand-lambda%__0 _stx160969_))
                        _g166562_))
                ((##fx= _g166561_ 2)
                 (apply (lambda (_stx160973_ _wrap?160974_)
                          (gx#core-expand-lambda%__%
                           _stx160973_
                           _wrap?160974_))
                        _g166562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g166562_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx160883_)
        (let* ((_e160884160891_ _stx160883_)
               (_E160886160895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160884160891_)))
               (_E160885160914_
                (lambda ()
                  (if (gx#stx-pair? _e160884160891_)
                      (let ((_e160887160899_ (gx#syntax-e _e160884160891_)))
                        (let ((_hd160888160902_ (##car _e160887160899_))
                              (_tl160889160904_ (##cdr _e160887160899_)))
                          (let ((_clauses160907_ _tl160889160904_))
                            (if (gx#stx-list? _clauses160907_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause160909_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause160909_)
                                       (let ((_$e160911_
                                              (gx#stx-source _clause160909_)))
                                         (if _$e160911_
                                             _$e160911_
                                             (gx#stx-source _stx160883_))))
                                      '#f))
                                   _clauses160907_))
                                 (gx#stx-source _stx160883_))
                                (_E160886160895_)))))
                      (_E160886160895_)))))
          (_E160885160914_))))
    (define gx#core-expand-let-values%
      (lambda (_stx160837_)
        (let* ((_e160838160848_ _stx160837_)
               (_E160840160852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160838160848_)))
               (_E160839160879_
                (lambda ()
                  (if (gx#stx-pair? _e160838160848_)
                      (let ((_e160841160856_ (gx#syntax-e _e160838160848_)))
                        (let ((_hd160842160859_ (##car _e160841160856_))
                              (_tl160843160861_ (##cdr _e160841160856_)))
                          (if (gx#stx-pair? _tl160843160861_)
                              (let ((_e160844160864_
                                     (gx#syntax-e _tl160843160861_)))
                                (let ((_hd160845160867_
                                       (##car _e160844160864_))
                                      (_tl160846160869_
                                       (##cdr _e160844160864_)))
                                  (let* ((_hd160872_ _hd160845160867_)
                                         (_body160874_ _tl160846160869_))
                                    (if (gx#core-expand-let-bind? _hd160872_)
                                        (let ((_expressions160876_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd160872_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd160872_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd160872_
                                                           _expressions160876_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx160837_
                         _body160874_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx160837_)))
                                           gx#current-expander-context
                                           (let ((__obj166553
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj166553)
                                             __obj166553)))
                                        (_E160840160852_)))))
                              (_E160840160852_))))
                      (_E160840160852_)))))
          (_E160839160879_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx160782_ _form160783_)
        (let* ((_e160784160794_ _stx160782_)
               (_E160786160798_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160784160794_)))
               (_E160785160823_
                (lambda ()
                  (if (gx#stx-pair? _e160784160794_)
                      (let ((_e160787160802_ (gx#syntax-e _e160784160794_)))
                        (let ((_hd160788160805_ (##car _e160787160802_))
                              (_tl160789160807_ (##cdr _e160787160802_)))
                          (if (gx#stx-pair? _tl160789160807_)
                              (let ((_e160790160810_
                                     (gx#syntax-e _tl160789160807_)))
                                (let ((_hd160791160813_
                                       (##car _e160790160810_))
                                      (_tl160792160815_
                                       (##cdr _e160790160810_)))
                                  (let* ((_hd160818_ _hd160791160813_)
                                         (_body160820_ _tl160792160815_))
                                    (if (gx#core-expand-let-bind? _hd160818_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd160818_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form160783_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd160818_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd160818_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx160782_
                                                               _body160820_)
                                                              '())))
                                            (gx#stx-source _stx160782_)))
                                         gx#current-expander-context
                                         (let ((__obj166554
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166554)
                                           __obj166554))
                                        (_E160786160798_)))))
                              (_E160786160798_))))
                      (_E160786160798_)))))
          (_E160785160823_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx160830_)
        (let ((_form160832_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx160830_ _form160832_))))
    (define gx#core-expand-letrec-values%
      (lambda _g166564_
        (let ((_g166563_ (##length _g166564_)))
          (cond ((##fx= _g166563_ 1)
                 (apply (lambda (_stx160830_)
                          (gx#core-expand-letrec-values%__0 _stx160830_))
                        _g166564_))
                ((##fx= _g166563_ 2)
                 (apply (lambda (_stx160834_ _form160835_)
                          (gx#core-expand-letrec-values%__%
                           _stx160834_
                           _form160835_))
                        _g166564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g166564_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx160779_)
        (gx#core-expand-letrec-values%__% _stx160779_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx160736_)
        (if (gx#stx-list? _stx160736_)
            (gx#stx-andmap
             (lambda (_bind160738_)
               (let* ((_e160739160749_ _bind160738_)
                      (_E160741160753_ (lambda () '#f))
                      (_E160740160775_
                       (lambda ()
                         (if (gx#stx-pair? _e160739160749_)
                             (let ((_e160742160757_
                                    (gx#syntax-e _e160739160749_)))
                               (let ((_hd160743160760_ (##car _e160742160757_))
                                     (_tl160744160762_
                                      (##cdr _e160742160757_)))
                                 (let ((_hd160765_ _hd160743160760_))
                                   (if (gx#stx-pair? _tl160744160762_)
                                       (let ((_e160745160767_
                                              (gx#syntax-e _tl160744160762_)))
                                         (let ((_hd160746160770_
                                                (##car _e160745160767_))
                                               (_tl160747160772_
                                                (##cdr _e160745160767_)))
                                           (if (gx#stx-null? _tl160747160772_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd160765_)
                                                   (_E160741160753_))
                                               (_E160741160753_))))
                                       (_E160741160753_)))))
                             (_E160741160753_)))))
                 (_E160740160775_)))
             _stx160736_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind160695_)
        (let* ((_e160696160706_ _bind160695_)
               (_E160698160710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160696160706_)))
               (_E160697160732_
                (lambda ()
                  (if (gx#stx-pair? _e160696160706_)
                      (let ((_e160699160714_ (gx#syntax-e _e160696160706_)))
                        (let ((_hd160700160717_ (##car _e160699160714_))
                              (_tl160701160719_ (##cdr _e160699160714_)))
                          (if (gx#stx-pair? _tl160701160719_)
                              (let ((_e160702160722_
                                     (gx#syntax-e _tl160701160719_)))
                                (let ((_hd160703160725_
                                       (##car _e160702160722_))
                                      (_tl160704160727_
                                       (##cdr _e160702160722_)))
                                  (let ((_expr160730_ _hd160703160725_))
                                    (if (gx#stx-null? _tl160704160727_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr160730_)
                                            (_E160698160710_))
                                        (_E160698160710_)))))
                              (_E160698160710_))))
                      (_E160698160710_)))))
          (_E160697160732_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind160654_)
        (let* ((_e160655160665_ _bind160654_)
               (_E160657160669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160655160665_)))
               (_E160656160691_
                (lambda ()
                  (if (gx#stx-pair? _e160655160665_)
                      (let ((_e160658160673_ (gx#syntax-e _e160655160665_)))
                        (let ((_hd160659160676_ (##car _e160658160673_))
                              (_tl160660160678_ (##cdr _e160658160673_)))
                          (let ((_hd160681_ _hd160659160676_))
                            (if (gx#stx-pair? _tl160660160678_)
                                (let ((_e160661160683_
                                       (gx#syntax-e _tl160660160678_)))
                                  (let ((_hd160662160686_
                                         (##car _e160661160683_))
                                        (_tl160663160688_
                                         (##cdr _e160661160683_)))
                                    (if (gx#stx-null? _tl160663160688_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd160681_)
                                            (_E160657160669_))
                                        (_E160657160669_))))
                                (_E160657160669_)))))
                      (_E160657160669_)))))
          (_E160656160691_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind160612_ _expr160613_)
        (let* ((_e160614160624_ _bind160612_)
               (_E160616160628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160614160624_)))
               (_E160615160650_
                (lambda ()
                  (if (gx#stx-pair? _e160614160624_)
                      (let ((_e160617160632_ (gx#syntax-e _e160614160624_)))
                        (let ((_hd160618160635_ (##car _e160617160632_))
                              (_tl160619160637_ (##cdr _e160617160632_)))
                          (let ((_hd160640_ _hd160618160635_))
                            (if (gx#stx-pair? _tl160619160637_)
                                (let ((_e160620160642_
                                       (gx#syntax-e _tl160619160637_)))
                                  (let ((_hd160621160645_
                                         (##car _e160620160642_))
                                        (_tl160622160647_
                                         (##cdr _e160620160642_)))
                                    (if (gx#stx-null? _tl160622160647_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd160640_)
                                                  (cons _expr160613_ '()))
                                            (_E160616160628_))
                                        (_E160616160628_))))
                                (_E160616160628_)))))
                      (_E160616160628_)))))
          (_E160615160650_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx160566_)
        (let* ((_e160567160577_ _stx160566_)
               (_E160569160581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160567160577_)))
               (_E160568160608_
                (lambda ()
                  (if (gx#stx-pair? _e160567160577_)
                      (let ((_e160570160585_ (gx#syntax-e _e160567160577_)))
                        (let ((_hd160571160588_ (##car _e160570160585_))
                              (_tl160572160590_ (##cdr _e160570160585_)))
                          (if (gx#stx-pair? _tl160572160590_)
                              (let ((_e160573160593_
                                     (gx#syntax-e _tl160572160590_)))
                                (let ((_hd160574160596_
                                       (##car _e160573160593_))
                                      (_tl160575160598_
                                       (##cdr _e160573160593_)))
                                  (let* ((_hd160601_ _hd160574160596_)
                                         (_body160603_ _tl160575160598_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd160601_)
                                        (let ((_expanders160605_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd160601_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd160601_
                                              _expanders160605_)
                                             (gx#core-expand-local-block
                                              _stx160566_
                                              _body160603_))
                                           gx#current-expander-context
                                           (let ((__obj166555
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj166555)
                                             __obj166555)))
                                        (_E160569160581_)))))
                              (_E160569160581_))))
                      (_E160569160581_)))))
          (_E160568160608_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx160515_)
        (let* ((_e160516160526_ _stx160515_)
               (_E160518160530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160516160526_)))
               (_E160517160562_
                (lambda ()
                  (if (gx#stx-pair? _e160516160526_)
                      (let ((_e160519160534_ (gx#syntax-e _e160516160526_)))
                        (let ((_hd160520160537_ (##car _e160519160534_))
                              (_tl160521160539_ (##cdr _e160519160534_)))
                          (if (gx#stx-pair? _tl160521160539_)
                              (let ((_e160522160542_
                                     (gx#syntax-e _tl160521160539_)))
                                (let ((_hd160523160545_
                                       (##car _e160522160542_))
                                      (_tl160524160547_
                                       (##cdr _e160522160542_)))
                                  (let* ((_hd160550_ _hd160523160545_)
                                         (_body160552_ _tl160524160547_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd160550_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd160550_
                                            (make-list
                                             (gx#stx-length _hd160550_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g160554160557_
                                                     _g160555160559_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g160554160557_
                                               _g160555160559_
                                               '#t))
                                            _hd160550_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd160550_))
                                           (gx#core-expand-local-block
                                            _stx160515_
                                            _body160552_))
                                         gx#current-expander-context
                                         (let ((__obj166556
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj166556)
                                           __obj166556))
                                        (_E160518160530_)))))
                              (_E160518160530_))))
                      (_E160518160530_)))))
          (_E160517160562_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx160472_)
        (if (gx#stx-list? _stx160472_)
            (gx#stx-andmap
             (lambda (_bind160474_)
               (let* ((_e160475160485_ _bind160474_)
                      (_E160477160489_ (lambda () '#f))
                      (_E160476160511_
                       (lambda ()
                         (if (gx#stx-pair? _e160475160485_)
                             (let ((_e160478160493_
                                    (gx#syntax-e _e160475160485_)))
                               (let ((_hd160479160496_ (##car _e160478160493_))
                                     (_tl160480160498_
                                      (##cdr _e160478160493_)))
                                 (let ((_hd160501_ _hd160479160496_))
                                   (if (gx#stx-pair? _tl160480160498_)
                                       (let ((_e160481160503_
                                              (gx#syntax-e _tl160480160498_)))
                                         (let ((_hd160482160506_
                                                (##car _e160481160503_))
                                               (_tl160483160508_
                                                (##cdr _e160481160503_)))
                                           (if (gx#stx-null? _tl160483160508_)
                                               (if '#t
                                                   (gx#identifier? _hd160501_)
                                                   (_E160477160489_))
                                               (_E160477160489_))))
                                       (_E160477160489_)))))
                             (_E160477160489_)))))
                 (_E160476160511_)))
             _stx160472_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind160429_)
        (let* ((_e160430160440_ _bind160429_)
               (_E160432160444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160430160440_)))
               (_E160431160468_
                (lambda ()
                  (if (gx#stx-pair? _e160430160440_)
                      (let ((_e160433160448_ (gx#syntax-e _e160430160440_)))
                        (let ((_hd160434160451_ (##car _e160433160448_))
                              (_tl160435160453_ (##cdr _e160433160448_)))
                          (if (gx#stx-pair? _tl160435160453_)
                              (let ((_e160436160456_
                                     (gx#syntax-e _tl160435160453_)))
                                (let ((_hd160437160459_
                                       (##car _e160436160456_))
                                      (_tl160438160461_
                                       (##cdr _e160436160456_)))
                                  (let ((_expr160464_ _hd160437160459_))
                                    (if (gx#stx-null? _tl160438160461_)
                                        (if '#t
                                            (let ((_g166565_
                                                   (gx#core-expand-expression+1
                                                    _expr160464_)))
                                              (begin
                                                (let ((_g166566_
                                                       (if (##values?
                                                            _g166565_)
                                                           (##vector-length
                                                            _g166565_)
                                                           1)))
                                                  (if (not (##fx= _g166566_ 2))
                                                      (error "Context expects 2 values"
                                                             _g166566_)))
                                                (let ((_e160466_
                                                       (##vector-ref
                                                        _g166565_
                                                        1)))
                                                  _e160466_)))
                                            (_E160432160444_))
                                        (_E160432160444_)))))
                              (_E160432160444_))))
                      (_E160432160444_)))))
          (_E160431160468_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind160374_ _e160375_ _rebind?160376_)
        (let* ((_e160377160387_ _bind160374_)
               (_E160379160391_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160377160387_)))
               (_E160378160413_
                (lambda ()
                  (if (gx#stx-pair? _e160377160387_)
                      (let ((_e160380160395_ (gx#syntax-e _e160377160387_)))
                        (let ((_hd160381160398_ (##car _e160380160395_))
                              (_tl160382160400_ (##cdr _e160380160395_)))
                          (let ((_id160403_ _hd160381160398_))
                            (if (gx#stx-pair? _tl160382160400_)
                                (let ((_e160383160405_
                                       (gx#syntax-e _tl160382160400_)))
                                  (let ((_hd160384160408_
                                         (##car _e160383160405_))
                                        (_tl160385160410_
                                         (##cdr _e160383160405_)))
                                    (if (gx#stx-null? _tl160385160410_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id160403_
                                             _e160375_
                                             _rebind?160376_)
                                            (_E160379160391_))
                                        (_E160379160391_))))
                                (_E160379160391_)))))
                      (_E160379160391_)))))
          (_E160378160413_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind160420_ _e160421_)
        (let ((_rebind?160423_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind160420_
           _e160421_
           _rebind?160423_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g166568_
        (let ((_g166567_ (##length _g166568_)))
          (cond ((##fx= _g166567_ 2)
                 (apply (lambda (_bind160420_ _e160421_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind160420_
                           _e160421_))
                        _g166568_))
                ((##fx= _g166567_ 3)
                 (apply (lambda (_bind160425_ _e160426_ _rebind?160427_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind160425_
                           _e160426_
                           _rebind?160427_))
                        _g166568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g166568_))))))
    (define gx#core-expand-expression%
      (lambda (_stx160332_)
        (let* ((_e160333160343_ _stx160332_)
               (_E160335160347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160333160343_)))
               (_E160334160369_
                (lambda ()
                  (if (gx#stx-pair? _e160333160343_)
                      (let ((_e160336160351_ (gx#syntax-e _e160333160343_)))
                        (let ((_hd160337160354_ (##car _e160336160351_))
                              (_tl160338160356_ (##cdr _e160336160351_)))
                          (if (gx#stx-pair? _tl160338160356_)
                              (let ((_e160339160359_
                                     (gx#syntax-e _tl160338160356_)))
                                (let ((_hd160340160362_
                                       (##car _e160339160359_))
                                      (_tl160341160364_
                                       (##cdr _e160339160359_)))
                                  (let ((_expr160367_ _hd160340160362_))
                                    (if (gx#stx-null? _tl160341160364_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr160367_)
                                            (_E160335160347_))
                                        (_E160335160347_)))))
                              (_E160335160347_))))
                      (_E160335160347_)))))
          (_E160334160369_))))
    (define gx#core-expand-quote%
      (lambda (_stx160291_)
        (let* ((_e160292160302_ _stx160291_)
               (_E160294160306_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160292160302_)))
               (_E160293160328_
                (lambda ()
                  (if (gx#stx-pair? _e160292160302_)
                      (let ((_e160295160310_ (gx#syntax-e _e160292160302_)))
                        (let ((_hd160296160313_ (##car _e160295160310_))
                              (_tl160297160315_ (##cdr _e160295160310_)))
                          (if (gx#stx-pair? _tl160297160315_)
                              (let ((_e160298160318_
                                     (gx#syntax-e _tl160297160315_)))
                                (let ((_hd160299160321_
                                       (##car _e160298160318_))
                                      (_tl160300160323_
                                       (##cdr _e160298160318_)))
                                  (let ((_e160326_ _hd160299160321_))
                                    (if (gx#stx-null? _tl160300160323_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e160326_)
                                                         '()))
                                             (gx#stx-source _stx160291_))
                                            (_E160294160306_))
                                        (_E160294160306_)))))
                              (_E160294160306_))))
                      (_E160294160306_)))))
          (_E160293160328_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx160250_)
        (let* ((_e160251160261_ _stx160250_)
               (_E160253160265_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160251160261_)))
               (_E160252160287_
                (lambda ()
                  (if (gx#stx-pair? _e160251160261_)
                      (let ((_e160254160269_ (gx#syntax-e _e160251160261_)))
                        (let ((_hd160255160272_ (##car _e160254160269_))
                              (_tl160256160274_ (##cdr _e160254160269_)))
                          (if (gx#stx-pair? _tl160256160274_)
                              (let ((_e160257160277_
                                     (gx#syntax-e _tl160256160274_)))
                                (let ((_hd160258160280_
                                       (##car _e160257160277_))
                                      (_tl160259160282_
                                       (##cdr _e160257160277_)))
                                  (let ((_e160285_ _hd160258160280_))
                                    (if (gx#stx-null? _tl160259160282_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e160285_)
                                                         '()))
                                             (gx#stx-source _stx160250_))
                                            (_E160253160265_))
                                        (_E160253160265_)))))
                              (_E160253160265_))))
                      (_E160253160265_)))))
          (_E160252160287_))))
    (define gx#core-expand-call%
      (lambda (_stx160207_)
        (let* ((_e160208160218_ _stx160207_)
               (_E160210160222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160208160218_)))
               (_E160209160246_
                (lambda ()
                  (if (gx#stx-pair? _e160208160218_)
                      (let ((_e160211160226_ (gx#syntax-e _e160208160218_)))
                        (let ((_hd160212160229_ (##car _e160211160226_))
                              (_tl160213160231_ (##cdr _e160211160226_)))
                          (if (gx#stx-pair? _tl160213160231_)
                              (let ((_e160214160234_
                                     (gx#syntax-e _tl160213160231_)))
                                (let ((_hd160215160237_
                                       (##car _e160214160234_))
                                      (_tl160216160239_
                                       (##cdr _e160214160234_)))
                                  (let* ((_rator160242_ _hd160215160237_)
                                         (_args160244_ _tl160216160239_))
                                    (if (gx#stx-list? _args160244_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator160242_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args160244_))
                                         (gx#stx-source _stx160207_))
                                        (_E160210160222_)))))
                              (_E160210160222_))))
                      (_E160210160222_)))))
          (_E160209160246_))))
    (define gx#core-expand-if%
      (lambda (_stx160140_)
        (let* ((_e160141160157_ _stx160140_)
               (_E160143160161_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160141160157_)))
               (_E160142160203_
                (lambda ()
                  (if (gx#stx-pair? _e160141160157_)
                      (let ((_e160144160165_ (gx#syntax-e _e160141160157_)))
                        (let ((_hd160145160168_ (##car _e160144160165_))
                              (_tl160146160170_ (##cdr _e160144160165_)))
                          (if (gx#stx-pair? _tl160146160170_)
                              (let ((_e160147160173_
                                     (gx#syntax-e _tl160146160170_)))
                                (let ((_hd160148160176_
                                       (##car _e160147160173_))
                                      (_tl160149160178_
                                       (##cdr _e160147160173_)))
                                  (let ((_test160181_ _hd160148160176_))
                                    (if (gx#stx-pair? _tl160149160178_)
                                        (let ((_e160150160183_
                                               (gx#syntax-e _tl160149160178_)))
                                          (let ((_hd160151160186_
                                                 (##car _e160150160183_))
                                                (_tl160152160188_
                                                 (##cdr _e160150160183_)))
                                            (let ((_K160191_ _hd160151160186_))
                                              (if (gx#stx-pair?
                                                   _tl160152160188_)
                                                  (let ((_e160153160193_
                                                         (gx#syntax-e
                                                          _tl160152160188_)))
                                                    (let ((_hd160154160196_
                                                           (##car _e160153160193_))
                                                          (_tl160155160198_
                                                           (##cdr _e160153160193_)))
                                                      (let ((_E160201_
                                                             _hd160154160196_))
                                                        (if (gx#stx-null?
                                                             _tl160155160198_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test160181_)
                                     (cons (gx#core-expand-expression
                                            _K160191_)
                                           (cons (gx#core-expand-expression
                                                  _E160201_)
                                                 '()))))
                         (gx#stx-source _stx160140_))
                        (_E160143160161_))
                    (_E160143160161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160143160161_)))))
                                        (_E160143160161_)))))
                              (_E160143160161_))))
                      (_E160143160161_)))))
          (_E160142160203_))))
    (define gx#core-expand-ref%
      (lambda (_stx160099_)
        (let* ((_e160100160110_ _stx160099_)
               (_E160102160114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160100160110_)))
               (_E160101160136_
                (lambda ()
                  (if (gx#stx-pair? _e160100160110_)
                      (let ((_e160103160118_ (gx#syntax-e _e160100160110_)))
                        (let ((_hd160104160121_ (##car _e160103160118_))
                              (_tl160105160123_ (##cdr _e160103160118_)))
                          (if (gx#stx-pair? _tl160105160123_)
                              (let ((_e160106160126_
                                     (gx#syntax-e _tl160105160123_)))
                                (let ((_hd160107160129_
                                       (##car _e160106160126_))
                                      (_tl160108160131_
                                       (##cdr _e160106160126_)))
                                  (let ((_id160134_ _hd160107160129_))
                                    (if (gx#stx-null? _tl160108160131_)
                                        (if (gx#identifier? _id160134_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id160134_
                                                          _stx160099_)
                                                         '()))
                                             (gx#stx-source _stx160099_))
                                            (_E160102160114_))
                                        (_E160102160114_)))))
                              (_E160102160114_))))
                      (_E160102160114_)))))
          (_E160101160136_))))
    (define gx#core-expand-setq%
      (lambda (_stx160045_)
        (let* ((_e160046160059_ _stx160045_)
               (_E160048160063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160046160059_)))
               (_E160047160095_
                (lambda ()
                  (if (gx#stx-pair? _e160046160059_)
                      (let ((_e160049160067_ (gx#syntax-e _e160046160059_)))
                        (let ((_hd160050160070_ (##car _e160049160067_))
                              (_tl160051160072_ (##cdr _e160049160067_)))
                          (if (gx#stx-pair? _tl160051160072_)
                              (let ((_e160052160075_
                                     (gx#syntax-e _tl160051160072_)))
                                (let ((_hd160053160078_
                                       (##car _e160052160075_))
                                      (_tl160054160080_
                                       (##cdr _e160052160075_)))
                                  (let ((_id160083_ _hd160053160078_))
                                    (if (gx#stx-pair? _tl160054160080_)
                                        (let ((_e160055160085_
                                               (gx#syntax-e _tl160054160080_)))
                                          (let ((_hd160056160088_
                                                 (##car _e160055160085_))
                                                (_tl160057160090_
                                                 (##cdr _e160055160085_)))
                                            (let ((_expr160093_
                                                   _hd160056160088_))
                                              (if (gx#stx-null?
                                                   _tl160057160090_)
                                                  (if (gx#identifier?
                                                       _id160083_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id160083_
                            _stx160045_)
                           (cons (gx#core-expand-expression _expr160093_)
                                 '())))
               (gx#stx-source _stx160045_))
              (_E160048160063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160048160063_)))))
                                        (_E160048160063_)))))
                              (_E160048160063_))))
                      (_E160048160063_)))))
          (_E160047160095_))))
    (define gx#macro-expand-extern
      (lambda (_stx159893_)
        (letrec ((_generate159895_
                  (lambda (_body159925_)
                    (let _lp159927_ ((_rest159929_ _body159925_)
                                     (_ns159930_
                                      (gx#core-context-namespace__0))
                                     (_r159931_ '()))
                      (let* ((_e159932159947_ _rest159929_)
                             (_E159945159951_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e159932159947_)))
                             (_E159941159955_
                              (lambda ()
                                (if (gx#stx-null? _e159932159947_)
                                    (if '#t
                                        (reverse _r159931_)
                                        (_E159945159951_))
                                    (_E159945159951_))))
                             (_E159934160012_
                              (lambda ()
                                (if (gx#stx-pair? _e159932159947_)
                                    (let ((_e159942159959_
                                           (gx#syntax-e _e159932159947_)))
                                      (let ((_hd159943159962_
                                             (##car _e159942159959_))
                                            (_tl159944159964_
                                             (##cdr _e159942159959_)))
                                        (let* ((_hd159967_ _hd159943159962_)
                                               (_rest159969_ _tl159944159964_))
                                          (if '#t
                                              (if (gx#identifier? _hd159967_)
                                                  (_lp159927_
                                                   _rest159969_
                                                   _ns159930_
                                                   (cons (cons _hd159967_
                                                               (cons (if _ns159930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd159967_
                                  _ns159930_
                                  '"#"
                                  _hd159967_)
                                 _hd159967_)
                             '()))
                 _r159931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e159970159980_
                                                          _hd159967_)
                                                         (_E159972159984_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e159970159980_)))
                                                         (_E159971160008_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e159970159980_)
                        (let ((_e159973159988_ (gx#syntax-e _e159970159980_)))
                          (let ((_hd159974159991_ (##car _e159973159988_))
                                (_tl159975159993_ (##cdr _e159973159988_)))
                            (let ((_id159996_ _hd159974159991_))
                              (if (gx#stx-pair? _tl159975159993_)
                                  (let ((_e159976159998_
                                         (gx#syntax-e _tl159975159993_)))
                                    (let ((_hd159977160001_
                                           (##car _e159976159998_))
                                          (_tl159978160003_
                                           (##cdr _e159976159998_)))
                                      (let ((_eid160006_ _hd159977160001_))
                                        (if (gx#stx-null? _tl159978160003_)
                                            (if (and (gx#identifier?
                                                      _id159996_)
                                                     (gx#identifier?
                                                      _eid160006_))
                                                (_lp159927_
                                                 _rest159969_
                                                 _ns159930_
                                                 (cons (cons _id159996_
                                                             (cons _eid160006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r159931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E159972159984_))
                                            (_E159972159984_)))))
                                  (_E159972159984_)))))
                        (_E159972159984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E159971160008_)))
                                              (_E159941159955_)))))
                                    (_E159941159955_))))
                             (_E159933160041_
                              (lambda ()
                                (if (gx#stx-pair? _e159932159947_)
                                    (let ((_e159935160016_
                                           (gx#syntax-e _e159932159947_)))
                                      (let ((_hd159936160019_
                                             (##car _e159935160016_))
                                            (_tl159937160021_
                                             (##cdr _e159935160016_)))
                                        (if (eq? (gx#stx-e _hd159936160019_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl159937160021_)
                                                (let ((_e159938160024_
                                                       (gx#syntax-e
                                                        _tl159937160021_)))
                                                  (let ((_hd159939160027_
                                                         (##car _e159938160024_))
                                                        (_tl159940160029_
                                                         (##cdr _e159938160024_)))
                                                    (let* ((_ns160032_
                                                            _hd159939160027_)
                                                           (_rest160034_
                                                            _tl159940160029_))
                                                      (if '#t
                                                          (let ((_ns160039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns160032_)
                             (symbol->string (gx#stx-e _ns160032_))
                             (if (or (gx#stx-string? _ns160032_)
                                     (gx#stx-false? _ns160032_))
                                 (gx#stx-e _ns160032_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx159893_
                                  _ns160032_)))))
                    (_lp159927_ _rest160034_ _ns160039_ _r159931_))
                  (_E159934160012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E159934160012_))
                                            (_E159934160012_))))
                                    (_E159934160012_)))))
                        (_E159933160041_))))))
          (let* ((_e159896159903_ _stx159893_)
                 (_E159898159907_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159896159903_)))
                 (_E159897159921_
                  (lambda ()
                    (if (gx#stx-pair? _e159896159903_)
                        (let ((_e159899159911_ (gx#syntax-e _e159896159903_)))
                          (let ((_hd159900159914_ (##car _e159899159911_))
                                (_tl159901159916_ (##cdr _e159899159911_)))
                            (let ((_body159919_ _tl159901159916_))
                              (if (gx#stx-list? _body159919_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate159895_ _body159919_))
                                  (_E159898159907_)))))
                        (_E159898159907_)))))
            (_E159897159921_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx159839_)
        (let* ((_e159840159853_ _stx159839_)
               (_E159842159857_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159840159853_)))
               (_E159841159889_
                (lambda ()
                  (if (gx#stx-pair? _e159840159853_)
                      (let ((_e159843159861_ (gx#syntax-e _e159840159853_)))
                        (let ((_hd159844159864_ (##car _e159843159861_))
                              (_tl159845159866_ (##cdr _e159843159861_)))
                          (if (gx#stx-pair? _tl159845159866_)
                              (let ((_e159846159869_
                                     (gx#syntax-e _tl159845159866_)))
                                (let ((_hd159847159872_
                                       (##car _e159846159869_))
                                      (_tl159848159874_
                                       (##cdr _e159846159869_)))
                                  (let ((_hd159877_ _hd159847159872_))
                                    (if (gx#stx-pair? _tl159848159874_)
                                        (let ((_e159849159879_
                                               (gx#syntax-e _tl159848159874_)))
                                          (let ((_hd159850159882_
                                                 (##car _e159849159879_))
                                                (_tl159851159884_
                                                 (##cdr _e159849159879_)))
                                            (let ((_expr159887_
                                                   _hd159850159882_))
                                              (if (gx#stx-null?
                                                   _tl159851159884_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd159877_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd159877_)
                          (cons _expr159887_ '())))
              (_E159842159857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159842159857_)))))
                                        (_E159842159857_)))))
                              (_E159842159857_))))
                      (_E159842159857_)))))
          (_E159841159889_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx159785_)
        (let* ((_e159786159799_ _stx159785_)
               (_E159788159803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159786159799_)))
               (_E159787159835_
                (lambda ()
                  (if (gx#stx-pair? _e159786159799_)
                      (let ((_e159789159807_ (gx#syntax-e _e159786159799_)))
                        (let ((_hd159790159810_ (##car _e159789159807_))
                              (_tl159791159812_ (##cdr _e159789159807_)))
                          (if (gx#stx-pair? _tl159791159812_)
                              (let ((_e159792159815_
                                     (gx#syntax-e _tl159791159812_)))
                                (let ((_hd159793159818_
                                       (##car _e159792159815_))
                                      (_tl159794159820_
                                       (##cdr _e159792159815_)))
                                  (let ((_hd159823_ _hd159793159818_))
                                    (if (gx#stx-pair? _tl159794159820_)
                                        (let ((_e159795159825_
                                               (gx#syntax-e _tl159794159820_)))
                                          (let ((_hd159796159828_
                                                 (##car _e159795159825_))
                                                (_tl159797159830_
                                                 (##cdr _e159795159825_)))
                                            (let ((_expr159833_
                                                   _hd159796159828_))
                                              (if (gx#stx-null?
                                                   _tl159797159830_)
                                                  (if (gx#identifier?
                                                       _hd159823_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd159823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr159833_ '())))
              (_E159788159803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159788159803_)))))
                                        (_E159788159803_)))))
                              (_E159788159803_))))
                      (_E159788159803_)))))
          (_E159787159835_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx159731_)
        (let* ((_e159732159745_ _stx159731_)
               (_E159734159749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159732159745_)))
               (_E159733159781_
                (lambda ()
                  (if (gx#stx-pair? _e159732159745_)
                      (let ((_e159735159753_ (gx#syntax-e _e159732159745_)))
                        (let ((_hd159736159756_ (##car _e159735159753_))
                              (_tl159737159758_ (##cdr _e159735159753_)))
                          (if (gx#stx-pair? _tl159737159758_)
                              (let ((_e159738159761_
                                     (gx#syntax-e _tl159737159758_)))
                                (let ((_hd159739159764_
                                       (##car _e159738159761_))
                                      (_tl159740159766_
                                       (##cdr _e159738159761_)))
                                  (let ((_id159769_ _hd159739159764_))
                                    (if (gx#stx-pair? _tl159740159766_)
                                        (let ((_e159741159771_
                                               (gx#syntax-e _tl159740159766_)))
                                          (let ((_hd159742159774_
                                                 (##car _e159741159771_))
                                                (_tl159743159776_
                                                 (##cdr _e159741159771_)))
                                            (let ((_alias-id159779_
                                                   _hd159742159774_))
                                              (if (gx#stx-null?
                                                   _tl159743159776_)
                                                  (if (and (gx#identifier?
                                                            _id159769_)
                                                           (gx#identifier?
                                                            _alias-id159779_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id159769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id159779_ '())))
              (_E159734159749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159734159749_)))))
                                        (_E159734159749_)))))
                              (_E159734159749_))))
                      (_E159734159749_)))))
          (_E159733159781_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx159688_)
        (let* ((_e159689159699_ _stx159688_)
               (_E159691159703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159689159699_)))
               (_E159690159727_
                (lambda ()
                  (if (gx#stx-pair? _e159689159699_)
                      (let ((_e159692159707_ (gx#syntax-e _e159689159699_)))
                        (let ((_hd159693159710_ (##car _e159692159707_))
                              (_tl159694159712_ (##cdr _e159692159707_)))
                          (if (gx#stx-pair? _tl159694159712_)
                              (let ((_e159695159715_
                                     (gx#syntax-e _tl159694159712_)))
                                (let ((_hd159696159718_
                                       (##car _e159695159715_))
                                      (_tl159697159720_
                                       (##cdr _e159695159715_)))
                                  (let* ((_hd159723_ _hd159696159718_)
                                         (_body159725_ _tl159697159720_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd159723_)
                                             (gx#stx-list? _body159725_)
                                             (not (gx#stx-null? _body159725_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd159723_)
                                         _body159725_)
                                        (_E159691159703_)))))
                              (_E159691159703_))))
                      (_E159691159703_)))))
          (_E159690159727_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx159624_)
        (letrec ((_generate159626_
                  (lambda (_clause159656_)
                    (let* ((_e159657159664_ _clause159656_)
                           (_E159659159668_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx159624_
                               _clause159656_)))
                           (_E159658159684_
                            (lambda ()
                              (if (gx#stx-pair? _e159657159664_)
                                  (let ((_e159660159672_
                                         (gx#syntax-e _e159657159664_)))
                                    (let ((_hd159661159675_
                                           (##car _e159660159672_))
                                          (_tl159662159677_
                                           (##cdr _e159660159672_)))
                                      (let* ((_hd159680_ _hd159661159675_)
                                             (_body159682_ _tl159662159677_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd159680_)
                                                 (gx#stx-list? _body159682_)
                                                 (not (gx#stx-null?
                                                       _body159682_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd159680_)
                                                   _body159682_)
                                             (gx#stx-source _clause159656_))
                                            (_E159659159668_)))))
                                  (_E159659159668_)))))
                      (_E159658159684_)))))
          (let* ((_e159627159634_ _stx159624_)
                 (_E159629159638_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159627159634_)))
                 (_E159628159652_
                  (lambda ()
                    (if (gx#stx-pair? _e159627159634_)
                        (let ((_e159630159642_ (gx#syntax-e _e159627159634_)))
                          (let ((_hd159631159645_ (##car _e159630159642_))
                                (_tl159632159647_ (##cdr _e159630159642_)))
                            (let ((_clauses159650_ _tl159632159647_))
                              (if (gx#stx-list? _clauses159650_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate159626_
                                    _clauses159650_))
                                  (_E159629159638_)))))
                        (_E159629159638_)))))
            (_E159628159652_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx159525_ _form159526_)
        (letrec ((_generate159528_
                  (lambda (_bind159571_)
                    (let* ((_e159572159582_ _bind159571_)
                           (_E159574159586_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx159525_
                               _bind159571_)))
                           (_E159573159610_
                            (lambda ()
                              (if (gx#stx-pair? _e159572159582_)
                                  (let ((_e159575159590_
                                         (gx#syntax-e _e159572159582_)))
                                    (let ((_hd159576159593_
                                           (##car _e159575159590_))
                                          (_tl159577159595_
                                           (##cdr _e159575159590_)))
                                      (let ((_ids159598_ _hd159576159593_))
                                        (if (gx#stx-pair? _tl159577159595_)
                                            (let ((_e159578159600_
                                                   (gx#syntax-e
                                                    _tl159577159595_)))
                                              (let ((_hd159579159603_
                                                     (##car _e159578159600_))
                                                    (_tl159580159605_
                                                     (##cdr _e159578159600_)))
                                                (let ((_expr159608_
                                                       _hd159579159603_))
                                                  (if (gx#stx-null?
                                                       _tl159580159605_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids159598_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids159598_)
                        (cons _expr159608_ '()))
                  (_E159574159586_))
              (_E159574159586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E159574159586_)))))
                                  (_E159574159586_)))))
                      (_E159573159610_)))))
          (let* ((_e159529159539_ _stx159525_)
                 (_E159531159543_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e159529159539_)))
                 (_E159530159567_
                  (lambda ()
                    (if (gx#stx-pair? _e159529159539_)
                        (let ((_e159532159547_ (gx#syntax-e _e159529159539_)))
                          (let ((_hd159533159550_ (##car _e159532159547_))
                                (_tl159534159552_ (##cdr _e159532159547_)))
                            (if (gx#stx-pair? _tl159534159552_)
                                (let ((_e159535159555_
                                       (gx#syntax-e _tl159534159552_)))
                                  (let ((_hd159536159558_
                                         (##car _e159535159555_))
                                        (_tl159537159560_
                                         (##cdr _e159535159555_)))
                                    (let* ((_hd159563_ _hd159536159558_)
                                           (_body159565_ _tl159537159560_))
                                      (if (and (gx#stx-list? _hd159563_)
                                               (gx#stx-list? _body159565_)
                                               (not (gx#stx-null?
                                                     _body159565_)))
                                          (gx#core-cons*
                                           _form159526_
                                           (gx#stx-map1
                                            _generate159528_
                                            _hd159563_)
                                           _body159565_)
                                          (_E159531159543_)))))
                                (_E159531159543_))))
                        (_E159531159543_)))))
            (_E159530159567_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx159617_)
        (let ((_form159619_ '%#let-values))
          (gx#macro-expand-let-values__% _stx159617_ _form159619_))))
    (define gx#macro-expand-let-values
      (lambda _g166570_
        (let ((_g166569_ (##length _g166570_)))
          (cond ((##fx= _g166569_ 1)
                 (apply (lambda (_stx159617_)
                          (gx#macro-expand-let-values__0 _stx159617_))
                        _g166570_))
                ((##fx= _g166569_ 2)
                 (apply (lambda (_stx159621_ _form159622_)
                          (gx#macro-expand-let-values__%
                           _stx159621_
                           _form159622_))
                        _g166570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g166570_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx159522_)
        (gx#macro-expand-let-values__% _stx159522_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx159520_)
        (gx#macro-expand-let-values__% _stx159520_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx159411_)
        (let* ((_e159412159438_ _stx159411_)
               (_E159424159442_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e159412159438_)))
               (_E159414159484_
                (lambda ()
                  (if (gx#stx-pair? _e159412159438_)
                      (let ((_e159425159446_ (gx#syntax-e _e159412159438_)))
                        (let ((_hd159426159449_ (##car _e159425159446_))
                              (_tl159427159451_ (##cdr _e159425159446_)))
                          (if (gx#stx-pair? _tl159427159451_)
                              (let ((_e159428159454_
                                     (gx#syntax-e _tl159427159451_)))
                                (let ((_hd159429159457_
                                       (##car _e159428159454_))
                                      (_tl159430159459_
                                       (##cdr _e159428159454_)))
                                  (let ((_test159462_ _hd159429159457_))
                                    (if (gx#stx-pair? _tl159430159459_)
                                        (let ((_e159431159464_
                                               (gx#syntax-e _tl159430159459_)))
                                          (let ((_hd159432159467_
                                                 (##car _e159431159464_))
                                                (_tl159433159469_
                                                 (##cdr _e159431159464_)))
                                            (let ((_K159472_ _hd159432159467_))
                                              (if (gx#stx-pair?
                                                   _tl159433159469_)
                                                  (let ((_e159434159474_
                                                         (gx#syntax-e
                                                          _tl159433159469_)))
                                                    (let ((_hd159435159477_
                                                           (##car _e159434159474_))
                                                          (_tl159436159479_
                                                           (##cdr _e159434159474_)))
                                                      (let ((_E159482_
                                                             _hd159435159477_))
                                                        (if (gx#stx-null?
                                                             _tl159436159479_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test159462_
                         _K159472_
                         _E159482_)
                        (_E159424159442_))
                    (_E159424159442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E159424159442_)))))
                                        (_E159424159442_)))))
                              (_E159424159442_))))
                      (_E159424159442_))))
               (_E159413159516_
                (lambda ()
                  (if (gx#stx-pair? _e159412159438_)
                      (let ((_e159415159488_ (gx#syntax-e _e159412159438_)))
                        (let ((_hd159416159491_ (##car _e159415159488_))
                              (_tl159417159493_ (##cdr _e159415159488_)))
                          (if (gx#stx-pair? _tl159417159493_)
                              (let ((_e159418159496_
                                     (gx#syntax-e _tl159417159493_)))
                                (let ((_hd159419159499_
                                       (##car _e159418159496_))
                                      (_tl159420159501_
                                       (##cdr _e159418159496_)))
                                  (let ((_test159504_ _hd159419159499_))
                                    (if (gx#stx-pair? _tl159420159501_)
                                        (let ((_e159421159506_
                                               (gx#syntax-e _tl159420159501_)))
                                          (let ((_hd159422159509_
                                                 (##car _e159421159506_))
                                                (_tl159423159511_
                                                 (##cdr _e159421159506_)))
                                            (let ((_K159514_ _hd159422159509_))
                                              (if (gx#stx-null?
                                                   _tl159423159511_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test159504_
                                                       _K159514_
                                                       '#!void)
                                                      (_E159414159484_))
                                                  (_E159414159484_)))))
                                        (_E159414159484_)))))
                              (_E159414159484_))))
                      (_E159414159484_)))))
          (_E159413159516_))))
    (define gx#free-identifier=?
      (lambda (_xid159399_ _yid159400_)
        (let ((_xe159402_ (gx#resolve-identifier__0 _xid159399_))
              (_ye159403_ (gx#resolve-identifier__0 _yid159400_)))
          (if (and _xe159402_ _ye159403_)
              (let ((_$e159405_ (eq? _xe159402_ _ye159403_)))
                (if _$e159405_
                    _$e159405_
                    (if (##structure-instance-of? _xe159402_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye159403_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe159402_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye159403_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe159402_ _ye159403_)
                  '#f
                  (gx#stx-eq? _xid159399_ _yid159400_))))))
    (define gx#bound-identifier=?
      (lambda (_xid159383_ _yid159384_)
        (letrec ((_context159386_
                  (lambda (_e159397_)
                    (if (##structure-direct-instance-of?
                         _e159397_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e159397_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks159387_
                  (lambda (_e159395_)
                    (if (symbol? _e159395_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e159395_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e159395_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e159395_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap159388_
                  (lambda (_e159393_)
                    (if (symbol? _e159393_)
                        _e159393_
                        (gx#syntax-local-unwrap _e159393_)))))
          (let ((_x159390_ (_unwrap159388_ _xid159383_))
                (_y159391_ (_unwrap159388_ _yid159384_)))
            (if (gx#stx-eq? _x159390_ _y159391_)
                (if (eq? (_context159386_ _x159390_)
                         (_context159386_ _y159391_))
                    (equal? (_marks159387_ _x159390_)
                            (_marks159387_ _y159391_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx159381_)
        (if (gx#identifier? _stx159381_)
            (gx#core-identifier=? _stx159381_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx159379_)
        (if (gx#identifier? _stx159379_)
            (gx#core-identifier=? _stx159379_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x159377_)
        (if (gx#identifier? _x159377_)
            (if (not (gx#underscore? _x159377_)) _x159377_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx159323_ _where159324_)
        (let _lp159326_ ((_rest159328_ (gx#syntax->list _stx159323_)))
          (let* ((_rest159329159337_ _rest159328_)
                 (_else159331159345_ (lambda () '#t))
                 (_K159333159355_
                  (lambda (_rest159348_ _hd159349_)
                    (if (not (gx#identifier? _hd159349_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where159324_
                         _hd159349_)
                        (if (find (lambda (_g159350159352_)
                                    (gx#bound-identifier=?
                                     _g159350159352_
                                     _hd159349_))
                                  _rest159348_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where159324_
                             _hd159349_)
                            (_lp159326_ _rest159348_))))))
            (if (##pair? _rest159329159337_)
                (let ((_hd159334159358_ (##car _rest159329159337_))
                      (_tl159335159360_ (##cdr _rest159329159337_)))
                  (let* ((_hd159363_ _hd159334159358_)
                         (_rest159365_ _tl159335159360_))
                    (_K159333159355_ _rest159365_ _hd159363_)))
                (_else159331159345_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx159370_)
        (let ((_where159372_ _stx159370_))
          (gx#check-duplicate-identifiers__% _stx159370_ _where159372_))))
    (define gx#check-duplicate-identifiers
      (lambda _g166572_
        (let ((_g166571_ (##length _g166572_)))
          (cond ((##fx= _g166571_ 1)
                 (apply (lambda (_stx159370_)
                          (gx#check-duplicate-identifiers__0 _stx159370_))
                        _g166572_))
                ((##fx= _g166571_ 2)
                 (apply (lambda (_stx159374_ _where159375_)
                          (gx#check-duplicate-identifiers__%
                           _stx159374_
                           _where159375_))
                        _g166572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g166572_))))))
    (define gx#core-bind-values?
      (lambda (_stx159315_)
        (gx#stx-andmap
         (lambda (_x159317_)
           (let ((_$e159319_ (gx#identifier? _x159317_)))
             (if _$e159319_ _$e159319_ (gx#stx-false? _x159317_))))
         _stx159315_)))
    (define gx#core-bind-values!__%
      (lambda (_stx159279_ _rebind?159280_ _phi159281_ _ctx159282_)
        (gx#stx-for-each1
         (lambda (_id159284_)
           (if (gx#identifier? _id159284_)
               (gx#core-bind-runtime!__%
                _id159284_
                _rebind?159280_
                _phi159281_
                _ctx159282_)
               '#!void))
         _stx159279_)))
    (define gx#core-bind-values!__0
      (lambda (_stx159289_)
        (let* ((_rebind?159291_ '#f)
               (_phi159293_ (gx#current-expander-phi))
               (_ctx159295_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159289_
           _rebind?159291_
           _phi159293_
           _ctx159295_))))
    (define gx#core-bind-values!__1
      (lambda (_stx159297_ _rebind?159298_)
        (let* ((_phi159300_ (gx#current-expander-phi))
               (_ctx159302_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159297_
           _rebind?159298_
           _phi159300_
           _ctx159302_))))
    (define gx#core-bind-values!__2
      (lambda (_stx159304_ _rebind?159305_ _phi159306_)
        (let ((_ctx159308_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx159304_
           _rebind?159305_
           _phi159306_
           _ctx159308_))))
    (define gx#core-bind-values!
      (lambda _g166574_
        (let ((_g166573_ (##length _g166574_)))
          (cond ((##fx= _g166573_ 1)
                 (apply (lambda (_stx159289_)
                          (gx#core-bind-values!__0 _stx159289_))
                        _g166574_))
                ((##fx= _g166573_ 2)
                 (apply (lambda (_stx159297_ _rebind?159298_)
                          (gx#core-bind-values!__1
                           _stx159297_
                           _rebind?159298_))
                        _g166574_))
                ((##fx= _g166573_ 3)
                 (apply (lambda (_stx159304_ _rebind?159305_ _phi159306_)
                          (gx#core-bind-values!__2
                           _stx159304_
                           _rebind?159305_
                           _phi159306_))
                        _g166574_))
                ((##fx= _g166573_ 4)
                 (apply (lambda (_stx159310_
                                 _rebind?159311_
                                 _phi159312_
                                 _ctx159313_)
                          (gx#core-bind-values!__%
                           _stx159310_
                           _rebind?159311_
                           _phi159312_
                           _ctx159313_))
                        _g166574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g166574_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx159274_)
        (gx#stx-map1
         (lambda (_x159276_)
           (if (gx#identifier? _x159276_)
               (gx#core-quote-syntax__0 _x159276_)
               '#f))
         _stx159274_)))
    (define gx#core-runtime-ref?
      (lambda (_stx159267_)
        (if (gx#identifier? _stx159267_)
            (let* ((_bind159269_ (gx#resolve-identifier__0 _stx159267_))
                   (_$e159271_ (not _bind159269_)))
              (if _$e159271_
                  _$e159271_
                  (##structure-instance-of?
                   _bind159269_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id159259_ _form159260_)
        (let ((_bind159262_ (gx#resolve-identifier__0 _id159259_)))
          (if (##structure-instance-of? _bind159262_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id159259_)
              (if (not _bind159262_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id159259_)))
                      (gx#core-quote-syntax__0 _id159259_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form159260_
                       _id159259_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form159260_
                   _id159259_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id159218_ _rebind?159219_ _phi159220_ _ctx159221_)
        (let* ((_key159223_ (gx#core-identifier-key _id159218_))
               (_eid159225_
                (gx#make-binding-id__%
                 _key159223_
                 '#f
                 _phi159220_
                 _ctx159221_))
               (_bind159227_
                (if (##structure-instance-of?
                     _ctx159221_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid159225_
                     _key159223_
                     _phi159220_
                     _ctx159221_)
                    (if (##structure-instance-of?
                         _ctx159221_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid159225_
                         _key159223_
                         _phi159220_)
                        (if (##structure-instance-of?
                             _ctx159221_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid159225_
                             _key159223_
                             _phi159220_)
                            (##structure
                             gx#runtime-binding::t
                             _eid159225_
                             _key159223_
                             _phi159220_))))))
          (gx#bind-identifier!__%
           _id159218_
           _bind159227_
           _rebind?159219_
           _phi159220_
           _ctx159221_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id159233_)
        (let* ((_rebind?159235_ '#f)
               (_phi159237_ (gx#current-expander-phi))
               (_ctx159239_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159233_
           _rebind?159235_
           _phi159237_
           _ctx159239_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id159241_ _rebind?159242_)
        (let* ((_phi159244_ (gx#current-expander-phi))
               (_ctx159246_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159241_
           _rebind?159242_
           _phi159244_
           _ctx159246_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id159248_ _rebind?159249_ _phi159250_)
        (let ((_ctx159252_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id159248_
           _rebind?159249_
           _phi159250_
           _ctx159252_))))
    (define gx#core-bind-runtime!
      (lambda _g166576_
        (let ((_g166575_ (##length _g166576_)))
          (cond ((##fx= _g166575_ 1)
                 (apply (lambda (_id159233_)
                          (gx#core-bind-runtime!__0 _id159233_))
                        _g166576_))
                ((##fx= _g166575_ 2)
                 (apply (lambda (_id159241_ _rebind?159242_)
                          (gx#core-bind-runtime!__1
                           _id159241_
                           _rebind?159242_))
                        _g166576_))
                ((##fx= _g166575_ 3)
                 (apply (lambda (_id159248_ _rebind?159249_ _phi159250_)
                          (gx#core-bind-runtime!__2
                           _id159248_
                           _rebind?159249_
                           _phi159250_))
                        _g166576_))
                ((##fx= _g166575_ 4)
                 (apply (lambda (_id159254_
                                 _rebind?159255_
                                 _phi159256_
                                 _ctx159257_)
                          (gx#core-bind-runtime!__%
                           _id159254_
                           _rebind?159255_
                           _phi159256_
                           _ctx159257_))
                        _g166576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g166576_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id159173_ _eid159174_ _rebind?159175_ _phi159176_ _ctx159177_)
        (let* ((_key159179_ (gx#core-identifier-key _id159173_))
               (_bind159181_
                (if (##structure-instance-of?
                     _ctx159177_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid159174_
                     _key159179_
                     _phi159176_
                     _ctx159177_)
                    (if (##structure-instance-of?
                         _ctx159177_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid159174_
                         _key159179_
                         _phi159176_)
                        (##structure
                         gx#runtime-binding::t
                         _eid159174_
                         _key159179_
                         _phi159176_)))))
          (gx#bind-identifier!__%
           _id159173_
           _bind159181_
           _rebind?159175_
           _phi159176_
           _ctx159177_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id159187_ _eid159188_)
        (let* ((_rebind?159190_ '#f)
               (_phi159192_ (gx#current-expander-phi))
               (_ctx159194_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159187_
           _eid159188_
           _rebind?159190_
           _phi159192_
           _ctx159194_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id159196_ _eid159197_ _rebind?159198_)
        (let* ((_phi159200_ (gx#current-expander-phi))
               (_ctx159202_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159196_
           _eid159197_
           _rebind?159198_
           _phi159200_
           _ctx159202_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id159204_ _eid159205_ _rebind?159206_ _phi159207_)
        (let ((_ctx159209_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id159204_
           _eid159205_
           _rebind?159206_
           _phi159207_
           _ctx159209_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g166578_
        (let ((_g166577_ (##length _g166578_)))
          (cond ((##fx= _g166577_ 2)
                 (apply (lambda (_id159187_ _eid159188_)
                          (gx#core-bind-runtime-reference!__0
                           _id159187_
                           _eid159188_))
                        _g166578_))
                ((##fx= _g166577_ 3)
                 (apply (lambda (_id159196_ _eid159197_ _rebind?159198_)
                          (gx#core-bind-runtime-reference!__1
                           _id159196_
                           _eid159197_
                           _rebind?159198_))
                        _g166578_))
                ((##fx= _g166577_ 4)
                 (apply (lambda (_id159204_
                                 _eid159205_
                                 _rebind?159206_
                                 _phi159207_)
                          (gx#core-bind-runtime-reference!__2
                           _id159204_
                           _eid159205_
                           _rebind?159206_
                           _phi159207_))
                        _g166578_))
                ((##fx= _g166577_ 5)
                 (apply (lambda (_id159211_
                                 _eid159212_
                                 _rebind?159213_
                                 _phi159214_
                                 _ctx159215_)
                          (gx#core-bind-runtime-reference!__%
                           _id159211_
                           _eid159212_
                           _rebind?159213_
                           _phi159214_
                           _ctx159215_))
                        _g166578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g166578_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id159133_ _eid159134_ _rebind?159135_ _phi159136_ _ctx159137_)
        (gx#bind-identifier!__%
         _id159133_
         (##structure
          gx#extern-binding::t
          _eid159134_
          (gx#core-identifier-key _id159133_)
          _phi159136_)
         _rebind?159135_
         _phi159136_
         _ctx159137_)))
    (define gx#core-bind-extern!__0
      (lambda (_id159142_ _eid159143_)
        (let* ((_rebind?159145_ '#f)
               (_phi159147_ (gx#current-expander-phi))
               (_ctx159149_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159142_
           _eid159143_
           _rebind?159145_
           _phi159147_
           _ctx159149_))))
    (define gx#core-bind-extern!__1
      (lambda (_id159151_ _eid159152_ _rebind?159153_)
        (let* ((_phi159155_ (gx#current-expander-phi))
               (_ctx159157_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159151_
           _eid159152_
           _rebind?159153_
           _phi159155_
           _ctx159157_))))
    (define gx#core-bind-extern!__2
      (lambda (_id159159_ _eid159160_ _rebind?159161_ _phi159162_)
        (let ((_ctx159164_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id159159_
           _eid159160_
           _rebind?159161_
           _phi159162_
           _ctx159164_))))
    (define gx#core-bind-extern!
      (lambda _g166580_
        (let ((_g166579_ (##length _g166580_)))
          (cond ((##fx= _g166579_ 2)
                 (apply (lambda (_id159142_ _eid159143_)
                          (gx#core-bind-extern!__0 _id159142_ _eid159143_))
                        _g166580_))
                ((##fx= _g166579_ 3)
                 (apply (lambda (_id159151_ _eid159152_ _rebind?159153_)
                          (gx#core-bind-extern!__1
                           _id159151_
                           _eid159152_
                           _rebind?159153_))
                        _g166580_))
                ((##fx= _g166579_ 4)
                 (apply (lambda (_id159159_
                                 _eid159160_
                                 _rebind?159161_
                                 _phi159162_)
                          (gx#core-bind-extern!__2
                           _id159159_
                           _eid159160_
                           _rebind?159161_
                           _phi159162_))
                        _g166580_))
                ((##fx= _g166579_ 5)
                 (apply (lambda (_id159166_
                                 _eid159167_
                                 _rebind?159168_
                                 _phi159169_
                                 _ctx159170_)
                          (gx#core-bind-extern!__%
                           _id159166_
                           _eid159167_
                           _rebind?159168_
                           _phi159169_
                           _ctx159170_))
                        _g166580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g166580_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id159087_ _e159088_ _rebind?159089_ _phi159090_ _ctx159091_)
        (gx#bind-identifier!__%
         _id159087_
         (let ((_key159096_ (gx#core-identifier-key _id159087_))
               (_e159097_
                (if (or (##structure-instance-of? _e159088_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e159088_
                         'gx#expander-context::t))
                    _e159088_
                    (##structure
                     gx#user-expander::t
                     _e159088_
                     _ctx159091_
                     _phi159090_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key159096_ '#t _phi159090_ _ctx159091_)
            _key159096_
            _phi159090_
            _e159097_))
         _rebind?159089_
         _phi159090_
         _ctx159091_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id159102_ _e159103_)
        (let* ((_rebind?159105_ '#f)
               (_phi159107_ (gx#current-expander-phi))
               (_ctx159109_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159102_
           _e159103_
           _rebind?159105_
           _phi159107_
           _ctx159109_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id159111_ _e159112_ _rebind?159113_)
        (let* ((_phi159115_ (gx#current-expander-phi))
               (_ctx159117_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159111_
           _e159112_
           _rebind?159113_
           _phi159115_
           _ctx159117_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id159119_ _e159120_ _rebind?159121_ _phi159122_)
        (let ((_ctx159124_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id159119_
           _e159120_
           _rebind?159121_
           _phi159122_
           _ctx159124_))))
    (define gx#core-bind-syntax!
      (lambda _g166582_
        (let ((_g166581_ (##length _g166582_)))
          (cond ((##fx= _g166581_ 2)
                 (apply (lambda (_id159102_ _e159103_)
                          (gx#core-bind-syntax!__0 _id159102_ _e159103_))
                        _g166582_))
                ((##fx= _g166581_ 3)
                 (apply (lambda (_id159111_ _e159112_ _rebind?159113_)
                          (gx#core-bind-syntax!__1
                           _id159111_
                           _e159112_
                           _rebind?159113_))
                        _g166582_))
                ((##fx= _g166581_ 4)
                 (apply (lambda (_id159119_
                                 _e159120_
                                 _rebind?159121_
                                 _phi159122_)
                          (gx#core-bind-syntax!__2
                           _id159119_
                           _e159120_
                           _rebind?159121_
                           _phi159122_))
                        _g166582_))
                ((##fx= _g166581_ 5)
                 (apply (lambda (_id159126_
                                 _e159127_
                                 _rebind?159128_
                                 _phi159129_
                                 _ctx159130_)
                          (gx#core-bind-syntax!__%
                           _id159126_
                           _e159127_
                           _rebind?159128_
                           _phi159129_
                           _ctx159130_))
                        _g166582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g166582_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id159070_ _e159071_ _rebind?159072_)
        (gx#core-bind-syntax!__%
         _id159070_
         _e159071_
         _rebind?159072_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id159077_ _e159078_)
        (let ((_rebind?159080_ '#f))
          (gx#core-bind-root-syntax!__%
           _id159077_
           _e159078_
           _rebind?159080_))))
    (define gx#core-bind-root-syntax!
      (lambda _g166584_
        (let ((_g166583_ (##length _g166584_)))
          (cond ((##fx= _g166583_ 2)
                 (apply (lambda (_id159077_ _e159078_)
                          (gx#core-bind-root-syntax!__0 _id159077_ _e159078_))
                        _g166584_))
                ((##fx= _g166583_ 3)
                 (apply (lambda (_id159082_ _e159083_ _rebind?159084_)
                          (gx#core-bind-root-syntax!__%
                           _id159082_
                           _e159083_
                           _rebind?159084_))
                        _g166584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g166584_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id159028_
               _alias-id159029_
               _rebind?159030_
               _phi159031_
               _ctx159032_)
        (gx#bind-identifier!__%
         _id159028_
         (let ((_key159034_ (gx#core-identifier-key _id159028_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key159034_ '#t _phi159031_ _ctx159032_)
            _key159034_
            _phi159031_
            _alias-id159029_))
         _rebind?159030_
         _phi159031_
         _ctx159032_)))
    (define gx#core-bind-alias!__0
      (lambda (_id159039_ _alias-id159040_)
        (let* ((_rebind?159042_ '#f)
               (_phi159044_ (gx#current-expander-phi))
               (_ctx159046_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159039_
           _alias-id159040_
           _rebind?159042_
           _phi159044_
           _ctx159046_))))
    (define gx#core-bind-alias!__1
      (lambda (_id159048_ _alias-id159049_ _rebind?159050_)
        (let* ((_phi159052_ (gx#current-expander-phi))
               (_ctx159054_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159048_
           _alias-id159049_
           _rebind?159050_
           _phi159052_
           _ctx159054_))))
    (define gx#core-bind-alias!__2
      (lambda (_id159056_ _alias-id159057_ _rebind?159058_ _phi159059_)
        (let ((_ctx159061_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id159056_
           _alias-id159057_
           _rebind?159058_
           _phi159059_
           _ctx159061_))))
    (define gx#core-bind-alias!
      (lambda _g166586_
        (let ((_g166585_ (##length _g166586_)))
          (cond ((##fx= _g166585_ 2)
                 (apply (lambda (_id159039_ _alias-id159040_)
                          (gx#core-bind-alias!__0 _id159039_ _alias-id159040_))
                        _g166586_))
                ((##fx= _g166585_ 3)
                 (apply (lambda (_id159048_ _alias-id159049_ _rebind?159050_)
                          (gx#core-bind-alias!__1
                           _id159048_
                           _alias-id159049_
                           _rebind?159050_))
                        _g166586_))
                ((##fx= _g166585_ 4)
                 (apply (lambda (_id159056_
                                 _alias-id159057_
                                 _rebind?159058_
                                 _phi159059_)
                          (gx#core-bind-alias!__2
                           _id159056_
                           _alias-id159057_
                           _rebind?159058_
                           _phi159059_))
                        _g166586_))
                ((##fx= _g166585_ 5)
                 (apply (lambda (_id159063_
                                 _alias-id159064_
                                 _rebind?159065_
                                 _phi159066_
                                 _ctx159067_)
                          (gx#core-bind-alias!__%
                           _id159063_
                           _alias-id159064_
                           _rebind?159065_
                           _phi159066_
                           _ctx159067_))
                        _g166586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g166586_))))))
    (define gx#make-binding-id__%
      (lambda (_key158985_ _syntax?158986_ _phi158987_ _ctx158988_)
        (if (uninterned-symbol? _key158985_)
            (gensym 'L)
            (if (pair? _key158985_)
                (gensym (car _key158985_))
                (if (##structure-instance-of? _ctx158988_ 'gx#top-context::t)
                    (let ((_ns158990_
                           (gx#core-context-namespace__% _ctx158988_)))
                      (if (and (fxzero? _phi158987_) (not _syntax?158986_))
                          (if _ns158990_
                              (make-symbol__1 _ns158990_ '"#" _key158985_)
                              _key158985_)
                          (if _syntax?158986_
                              (make-symbol__1
                               (let ((_$e158992_ _ns158990_))
                                 (if _$e158992_ _$e158992_ '""))
                               '"[:"
                               (number->string _phi158987_)
                               '":]#"
                               _key158985_)
                              (make-symbol__1
                               (let ((_$e158995_ _ns158990_))
                                 (if _$e158995_ _$e158995_ '""))
                               '"["
                               (number->string _phi158987_)
                               '"]#"
                               _key158985_))))
                    (gensym _key158985_))))))
    (define gx#make-binding-id__0
      (lambda (_key159001_)
        (let* ((_syntax?159003_ '#f)
               (_phi159005_ (gx#current-expander-phi))
               (_ctx159007_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159001_
           _syntax?159003_
           _phi159005_
           _ctx159007_))))
    (define gx#make-binding-id__1
      (lambda (_key159009_ _syntax?159010_)
        (let* ((_phi159012_ (gx#current-expander-phi))
               (_ctx159014_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159009_
           _syntax?159010_
           _phi159012_
           _ctx159014_))))
    (define gx#make-binding-id__2
      (lambda (_key159016_ _syntax?159017_ _phi159018_)
        (let ((_ctx159020_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key159016_
           _syntax?159017_
           _phi159018_
           _ctx159020_))))
    (define gx#make-binding-id
      (lambda _g166588_
        (let ((_g166587_ (##length _g166588_)))
          (cond ((##fx= _g166587_ 1)
                 (apply (lambda (_key159001_)
                          (gx#make-binding-id__0 _key159001_))
                        _g166588_))
                ((##fx= _g166587_ 2)
                 (apply (lambda (_key159009_ _syntax?159010_)
                          (gx#make-binding-id__1 _key159009_ _syntax?159010_))
                        _g166588_))
                ((##fx= _g166587_ 3)
                 (apply (lambda (_key159016_ _syntax?159017_ _phi159018_)
                          (gx#make-binding-id__2
                           _key159016_
                           _syntax?159017_
                           _phi159018_))
                        _g166588_))
                ((##fx= _g166587_ 4)
                 (apply (lambda (_key159022_
                                 _syntax?159023_
                                 _phi159024_
                                 _ctx159025_)
                          (gx#make-binding-id__%
                           _key159022_
                           _syntax?159023_
                           _phi159024_
                           _ctx159025_))
                        _g166588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g166588_))))))))
