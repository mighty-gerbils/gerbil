(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710943025)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx91008_)
        (letrec ((_expand-special91010_
                  (lambda (_hd91012_ _K91013_ _rest91014_ _r91015_)
                    (_K91013_
                     _rest91014_
                     (cons (gx#core-expand-top _hd91012_) _r91015_)))))
          (gx#core-expand-block__0 _stx91008_ _expand-special91010_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90761_)
        (letrec ((_expand-special90763_
                  (lambda (_hd90883_ _K90884_ _rest90885_ _r90886_)
                    (let* ((_K90890_
                            (lambda (_e90888_)
                              (_K90884_ _rest90885_ (cons _e90888_ _r90886_))))
                           (_e9089190920_ _hd90883_)
                           (_E9091590924_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9089190920_)))
                           (_E9091190936_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190920_)
                                  (let ((_e9091690928_
                                         (gx#syntax-e _e9089190920_)))
                                    (let ((_hd9091790931_
                                           (##car _e9091690928_))
                                          (_tl9091890933_
                                           (##cdr _e9091690928_)))
                                      (if (and (gx#identifier? _hd9091790931_)
                                               (gx#core-identifier=?
                                                _hd9091790931_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90890_
                                               (gx#core-expand-define-runtime%
                                                _hd90883_))
                                              (_E9091590924_))
                                          (_E9091590924_))))
                                  (_E9091590924_))))
                           (_E9090790948_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190920_)
                                  (let ((_e9091290940_
                                         (gx#syntax-e _e9089190920_)))
                                    (let ((_hd9091390943_
                                           (##car _e9091290940_))
                                          (_tl9091490945_
                                           (##cdr _e9091290940_)))
                                      (if (and (gx#identifier? _hd9091390943_)
                                               (gx#core-identifier=?
                                                _hd9091390943_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90890_
                                               (gx#core-expand-define-alias%
                                                _hd90883_))
                                              (_E9091190936_))
                                          (_E9091190936_))))
                                  (_E9091190936_))))
                           (_E9089790960_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190920_)
                                  (let ((_e9090890952_
                                         (gx#syntax-e _e9089190920_)))
                                    (let ((_hd9090990955_
                                           (##car _e9090890952_))
                                          (_tl9091090957_
                                           (##cdr _e9090890952_)))
                                      (if (and (gx#identifier? _hd9090990955_)
                                               (gx#core-identifier=?
                                                _hd9090990955_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90890_
                                               (gx#core-expand-define-syntax%
                                                _hd90883_))
                                              (_E9090790948_))
                                          (_E9090790948_))))
                                  (_E9090790948_))))
                           (_E9089390992_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190920_)
                                  (let ((_e9089890964_
                                         (gx#syntax-e _e9089190920_)))
                                    (let ((_hd9089990967_
                                           (##car _e9089890964_))
                                          (_tl9090090969_
                                           (##cdr _e9089890964_)))
                                      (if (and (gx#identifier? _hd9089990967_)
                                               (gx#core-identifier=?
                                                _hd9089990967_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9090090969_)
                                              (let ((_e9090190972_
                                                     (gx#syntax-e
                                                      _tl9090090969_)))
                                                (let ((_hd9090290975_
                                                       (##car _e9090190972_))
                                                      (_tl9090390977_
                                                       (##cdr _e9090190972_)))
                                                  (let ((_hd-bind90980_
                                                         _hd9090290975_))
                                                    (if (gx#stx-pair?
                                                         _tl9090390977_)
                                                        (let ((_e9090490982_
                                                               (gx#syntax-e
                                                                _tl9090390977_)))
                                                          (let ((_hd9090590985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9090490982_))
                        (_tl9090690987_ (##cdr _e9090490982_)))
                    (let ((_expr90990_ _hd9090590985_))
                      (if (gx#stx-null? _tl9090690987_)
                          (if (gx#core-bind-values? _hd-bind90980_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90980_)
                                (_K90890_ _hd90883_))
                              (_E9089790960_))
                          (_E9089790960_)))))
                (_E9089790960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9089790960_))
                                          (_E9089790960_))))
                                  (_E9089790960_))))
                           (_E9089291004_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190920_)
                                  (let ((_e9089490996_
                                         (gx#syntax-e _e9089190920_)))
                                    (let ((_hd9089590999_
                                           (##car _e9089490996_))
                                          (_tl9089691001_
                                           (##cdr _e9089490996_)))
                                      (if (and (gx#identifier? _hd9089590999_)
                                               (gx#core-identifier=?
                                                _hd9089590999_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90890_
                                               (gx#core-expand-begin-syntax%
                                                _hd90883_))
                                              (_E9089390992_))
                                          (_E9089390992_))))
                                  (_E9089390992_)))))
                      (_E9089291004_))))
                 (_eval-body90764_
                  (lambda (_rbody90772_)
                    (let _lp90774_ ((_rest90776_ _rbody90772_)
                                    (_body90777_ '())
                                    (_ebody90778_ '()))
                      (let* ((_rest9077990787_ _rest90776_)
                             (_else9078190795_
                              (lambda ()
                                (values _body90777_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90778_)
                                          (gx#stx-source _stx90761_))))))
                             (_K9078390871_
                              (lambda (_rest90798_ _hd90799_)
                                (let* ((_e9080090817_ _hd90799_)
                                       (_E9081290821_
                                        (lambda ()
                                          (_lp90774_
                                           _rest90798_
                                           (cons _hd90799_ _body90777_)
                                           (cons _hd90799_ _ebody90778_))))
                                       (_E9080290833_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9080090817_)
                                              (let ((_e9081390825_
                                                     (gx#syntax-e
                                                      _e9080090817_)))
                                                (let ((_hd9081490828_
                                                       (##car _e9081390825_))
                                                      (_tl9081590830_
                                                       (##cdr _e9081390825_)))
                                                  (if (and (gx#identifier?
                                                            _hd9081490828_)
                                                           (gx#core-identifier=?
                                                            _hd9081490828_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90774_
                                                           _rest90798_
                                                           (cons _hd90799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90777_)
                   _ebody90778_)
                  (_E9081290821_))
              (_E9081290821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9081290821_))))
                                       (_E9080190867_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9080090817_)
                                              (let ((_e9080390837_
                                                     (gx#syntax-e
                                                      _e9080090817_)))
                                                (let ((_hd9080490840_
                                                       (##car _e9080390837_))
                                                      (_tl9080590842_
                                                       (##cdr _e9080390837_)))
                                                  (if (and (gx#identifier?
                                                            _hd9080490840_)
                                                           (gx#core-identifier=?
                                                            _hd9080490840_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9080590842_)
                                                          (let ((_e9080690845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9080590842_)))
                    (let ((_hd9080790848_ (##car _e9080690845_))
                          (_tl9080890850_ (##cdr _e9080690845_)))
                      (let ((_hd-bind90853_ _hd9080790848_))
                        (if (gx#stx-pair? _tl9080890850_)
                            (let ((_e9080990855_ (gx#syntax-e _tl9080890850_)))
                              (let ((_hd9081090858_ (##car _e9080990855_))
                                    (_tl9081190860_ (##cdr _e9080990855_)))
                                (let ((_expr90863_ _hd9081090858_))
                                  (if (gx#stx-null? _tl9081190860_)
                                      (if '#t
                                          (let ((_ehd90865_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90853_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90863_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90799_))))
                                            (_lp90774_
                                             _rest90798_
                                             (cons _ehd90865_ _body90777_)
                                             (cons _ehd90865_ _ebody90778_)))
                                          (_E9080290833_))
                                      (_E9080290833_)))))
                            (_E9080290833_)))))
                  (_E9080290833_))
              (_E9080290833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9080290833_)))))
                                  (_E9080190867_)))))
                        (if (##pair? _rest9077990787_)
                            (let ((_hd9078490874_ (##car _rest9077990787_))
                                  (_tl9078590876_ (##cdr _rest9077990787_)))
                              (let* ((_hd90879_ _hd9078490874_)
                                     (_rest90881_ _tl9078590876_))
                                (_K9078390871_ _rest90881_ _hd90879_)))
                            (_else9078190795_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90767_
                     (gx#core-expand-block__1
                      _stx90761_
                      _expand-special90763_
                      '#f))
                    (_g91031_ (_eval-body90764_ _rbody90767_)))
               (begin
                 (let ((_g91032_
                        (if (##values? _g91031_)
                            (##vector-length _g91031_)
                            1)))
                   (if (not (##fx= _g91032_ 2))
                       (error "Context expects 2 values" _g91032_)))
                 (let ((_expanded-body90769_ (##vector-ref _g91031_ 0))
                       (_value90770_ (##vector-ref _g91031_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90769_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90770_ '())))
                    (gx#stx-source _stx90761_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90731_)
        (let* ((_e9073290739_ _stx90731_)
               (_E9073490743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9073290739_)))
               (_E9073390757_
                (lambda ()
                  (if (gx#stx-pair? _e9073290739_)
                      (let ((_e9073590747_ (gx#syntax-e _e9073290739_)))
                        (let ((_hd9073690750_ (##car _e9073590747_))
                              (_tl9073790752_ (##cdr _e9073590747_)))
                          (let ((_body90755_ _tl9073790752_))
                            (if (gx#stx-list? _body90755_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90755_)
                                 (gx#stx-source _stx90731_))
                                (_E9073490743_)))))
                      (_E9073490743_)))))
          (_E9073390757_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90729_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90729_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90675_)
        (let* ((_e9067690689_ _stx90675_)
               (_E9067890693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9067690689_)))
               (_E9067790725_
                (lambda ()
                  (if (gx#stx-pair? _e9067690689_)
                      (let ((_e9067990697_ (gx#syntax-e _e9067690689_)))
                        (let ((_hd9068090700_ (##car _e9067990697_))
                              (_tl9068190702_ (##cdr _e9067990697_)))
                          (if (gx#stx-pair? _tl9068190702_)
                              (let ((_e9068290705_
                                     (gx#syntax-e _tl9068190702_)))
                                (let ((_hd9068390708_ (##car _e9068290705_))
                                      (_tl9068490710_ (##cdr _e9068290705_)))
                                  (let ((_ann90713_ _hd9068390708_))
                                    (if (gx#stx-pair? _tl9068490710_)
                                        (let ((_e9068590715_
                                               (gx#syntax-e _tl9068490710_)))
                                          (let ((_hd9068690718_
                                                 (##car _e9068590715_))
                                                (_tl9068790720_
                                                 (##cdr _e9068590715_)))
                                            (let ((_expr90723_ _hd9068690718_))
                                              (if (gx#stx-null? _tl9068790720_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90723_) '())))
               (gx#stx-source _stx90675_))
              (_E9067890693_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9067890693_)))))
                                        (_E9067890693_)))))
                              (_E9067890693_))))
                      (_E9067890693_)))))
          (_E9067790725_))))
    (define gx#core-expand-local-block
      (lambda (_stx90399_ _body90400_)
        (letrec ((_expand-special90402_
                  (lambda (_hd90670_ _K90671_ _rest90672_ _r90673_)
                    (_K90671_
                     '()
                     (cons (_expand-internal90403_ _hd90670_ _rest90672_)
                           _r90673_))))
                 (_expand-internal90403_
                  (lambda (_hd90666_ _rest90667_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90405_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90666_ _rest90667_))
                          (gx#stx-source _stx90399_))
                         _expand-internal-special90404_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj91025
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj91025)
                       __obj91025))))
                 (_expand-internal-special90404_
                  (lambda (_hd90561_ _K90562_ _rest90563_ _r90564_)
                    (let* ((_e9056590590_ _hd90561_)
                           (_E9058590594_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9056590590_)))
                           (_E9058190606_
                            (lambda ()
                              (if (gx#stx-pair? _e9056590590_)
                                  (let ((_e9058690598_
                                         (gx#syntax-e _e9056590590_)))
                                    (let ((_hd9058790601_
                                           (##car _e9058690598_))
                                          (_tl9058890603_
                                           (##cdr _e9058690598_)))
                                      (if (and (gx#identifier? _hd9058790601_)
                                               (gx#core-identifier=?
                                                _hd9058790601_
                                                '%#declare))
                                          (if '#t
                                              (_K90562_
                                               _rest90563_
                                               (cons (gx#core-expand-declare%
                                                      _hd90561_)
                                                     _r90564_))
                                              (_E9058590594_))
                                          (_E9058590594_))))
                                  (_E9058590594_))))
                           (_E9057790618_
                            (lambda ()
                              (if (gx#stx-pair? _e9056590590_)
                                  (let ((_e9058290610_
                                         (gx#syntax-e _e9056590590_)))
                                    (let ((_hd9058390613_
                                           (##car _e9058290610_))
                                          (_tl9058490615_
                                           (##cdr _e9058290610_)))
                                      (if (and (gx#identifier? _hd9058390613_)
                                               (gx#core-identifier=?
                                                _hd9058390613_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90561_)
                                                (_K90562_
                                                 _rest90563_
                                                 _r90564_))
                                              (_E9058190606_))
                                          (_E9058190606_))))
                                  (_E9058190606_))))
                           (_E9056790630_
                            (lambda ()
                              (if (gx#stx-pair? _e9056590590_)
                                  (let ((_e9057890622_
                                         (gx#syntax-e _e9056590590_)))
                                    (let ((_hd9057990625_
                                           (##car _e9057890622_))
                                          (_tl9058090627_
                                           (##cdr _e9057890622_)))
                                      (if (and (gx#identifier? _hd9057990625_)
                                               (gx#core-identifier=?
                                                _hd9057990625_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90561_)
                                                (_K90562_
                                                 _rest90563_
                                                 _r90564_))
                                              (_E9057790618_))
                                          (_E9057790618_))))
                                  (_E9057790618_))))
                           (_E9056690662_
                            (lambda ()
                              (if (gx#stx-pair? _e9056590590_)
                                  (let ((_e9056890634_
                                         (gx#syntax-e _e9056590590_)))
                                    (let ((_hd9056990637_
                                           (##car _e9056890634_))
                                          (_tl9057090639_
                                           (##cdr _e9056890634_)))
                                      (if (and (gx#identifier? _hd9056990637_)
                                               (gx#core-identifier=?
                                                _hd9056990637_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9057090639_)
                                              (let ((_e9057190642_
                                                     (gx#syntax-e
                                                      _tl9057090639_)))
                                                (let ((_hd9057290645_
                                                       (##car _e9057190642_))
                                                      (_tl9057390647_
                                                       (##cdr _e9057190642_)))
                                                  (let ((_hd-bind90650_
                                                         _hd9057290645_))
                                                    (if (gx#stx-pair?
                                                         _tl9057390647_)
                                                        (let ((_e9057490652_
                                                               (gx#syntax-e
                                                                _tl9057390647_)))
                                                          (let ((_hd9057590655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9057490652_))
                        (_tl9057690657_ (##cdr _e9057490652_)))
                    (let ((_expr90660_ _hd9057590655_))
                      (if (gx#stx-null? _tl9057690657_)
                          (if (gx#core-bind-values? _hd-bind90650_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90650_)
                                (_K90562_
                                 _rest90563_
                                 (cons _hd90561_ _r90564_)))
                              (_E9056790630_))
                          (_E9056790630_)))))
                (_E9056790630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9056790630_))
                                          (_E9056790630_))))
                                  (_E9056790630_)))))
                      (_E9056690662_))))
                 (_wrap-internal90405_
                  (lambda (_rbody90407_)
                    (let _lp90409_ ((_rest90411_ _rbody90407_)
                                    (_decls90412_ '())
                                    (_bind90413_ '())
                                    (_body90414_ '()))
                      (let* ((_e9041590422_ _rest90411_)
                             (_E9041790471_
                              (lambda ()
                                (let* ((_body90466_
                                        (let* ((_body9042590435_ _body90414_)
                                               (_else9042890443_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90414_)
                                                   (gx#stx-source
                                                    _stx90399_)))))
                                          (let ((_K9043390463_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90399_)))
                                                (_K9043090449_
                                                 (lambda (_expr90447_)
                                                   _expr90447_)))
                                            (let ((_try-match9042790459_
                                                   (lambda ()
                                                     (if (##pair? _body9042590435_)
                                                         (let ((_tl9043290454_
                                                                (##cdr _body9042590435_))
                                                               (_hd9043190452_
                                                                (##car _body9042590435_)))
                                                           (if (##null? _tl9043290454_)
                                                               (let ((_expr90457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9043190452_))
                         (_K9043090449_ _expr90457_))
                       (_else9042890443_)))
                 (_else9042890443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9042590435_)
                                                  (_K9043390463_)
                                                  (_try-match9042790459_))))))
                                       (_body90468_
                                        (if (null? _bind90413_)
                                            _body90466_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90413_
                                                         (cons _body90466_
                                                               '())))
                                             (gx#stx-source _stx90399_)))))
                                  (if (null? _decls90412_)
                                      _body90468_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90412_
                                                   (cons _body90468_ '())))
                                       (gx#stx-source _stx90399_))))))
                             (_E9041690557_
                              (lambda ()
                                (if (gx#stx-pair? _e9041590422_)
                                    (let ((_e9041890475_
                                           (gx#syntax-e _e9041590422_)))
                                      (let ((_hd9041990478_
                                             (##car _e9041890475_))
                                            (_tl9042090480_
                                             (##cdr _e9041890475_)))
                                        (let* ((_hd90483_ _hd9041990478_)
                                               (_rest90485_ _tl9042090480_))
                                          (if '#t
                                              (let* ((_e9048690503_ _hd90483_)
                                                     (_E9049890507_
                                                      (lambda ()
                                                        (if (null? _bind90413_)
                                                            (_lp90409_
                                                             _rest90485_
                                                             _decls90412_
                                                             _bind90413_
                                                             (cons _hd90483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90414_))
                    (_lp90409_
                     _rest90485_
                     _decls90412_
                     (cons (cons '#f (cons _hd90483_ '())) _bind90413_)
                     _body90414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048890521_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048690503_)
                                                            (let ((_e9049990511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048690503_)))
                      (let ((_hd9050090514_ (##car _e9049990511_))
                            (_tl9050190516_ (##cdr _e9049990511_)))
                        (if (and (gx#identifier? _hd9050090514_)
                                 (gx#core-identifier=?
                                  _hd9050090514_
                                  '%#declare))
                            (let ((_xdecls90519_ _tl9050190516_))
                              (if '#t
                                  (_lp90409_
                                   _rest90485_
                                   (gx#stx-foldr
                                    cons
                                    _decls90412_
                                    _xdecls90519_)
                                   _bind90413_
                                   _body90414_)
                                  (_E9049890507_)))
                            (_E9049890507_))))
                    (_E9049890507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9048790553_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9048690503_)
                                                            (let ((_e9048990525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9048690503_)))
                      (let ((_hd9049090528_ (##car _e9048990525_))
                            (_tl9049190530_ (##cdr _e9048990525_)))
                        (if (and (gx#identifier? _hd9049090528_)
                                 (gx#core-identifier=?
                                  _hd9049090528_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9049190530_)
                                (let ((_e9049290533_
                                       (gx#syntax-e _tl9049190530_)))
                                  (let ((_hd9049390536_ (##car _e9049290533_))
                                        (_tl9049490538_ (##cdr _e9049290533_)))
                                    (let ((_hd-bind90541_ _hd9049390536_))
                                      (if (gx#stx-pair? _tl9049490538_)
                                          (let ((_e9049590543_
                                                 (gx#syntax-e _tl9049490538_)))
                                            (let ((_hd9049690546_
                                                   (##car _e9049590543_))
                                                  (_tl9049790548_
                                                   (##cdr _e9049590543_)))
                                              (let ((_expr90551_
                                                     _hd9049690546_))
                                                (if (gx#stx-null?
                                                     _tl9049790548_)
                                                    (if '#t
                                                        (_lp90409_
                                                         _rest90485_
                                                         _decls90412_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90541_)
                             (cons (gx#core-expand-expression _expr90551_)
                                   '()))
                       _bind90413_)
                 _body90414_)
                (_E9048890521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9048890521_)))))
                                          (_E9048890521_)))))
                                (_E9048890521_))
                            (_E9048890521_))))
                    (_E9048890521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9048790553_))
                                              (_E9041790471_)))))
                                    (_E9041790471_)))))
                        (_E9041690557_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90400_)
            (gx#stx-source _stx90399_))
           _expand-special90402_))))
    (define gx#core-expand-declare%
      (lambda (_stx90337_)
        (let* ((_e9033890345_ _stx90337_)
               (_E9034090349_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9033890345_)))
               (_E9033990395_
                (lambda ()
                  (if (gx#stx-pair? _e9033890345_)
                      (let ((_e9034190353_ (gx#syntax-e _e9033890345_)))
                        (let ((_hd9034290356_ (##car _e9034190353_))
                              (_tl9034390358_ (##cdr _e9034190353_)))
                          (let ((_body90361_ _tl9034390358_))
                            (if (gx#stx-list? _body90361_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90363_)
                                     (let* ((_e9036490371_ _decl90363_)
                                            (_E9036690375_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9036490371_)))
                                            (_E9036590391_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9036490371_)
                                                   (let ((_e9036790379_
                                                          (gx#syntax-e
                                                           _e9036490371_)))
                                                     (let ((_hd9036890382_
                                                            (##car _e9036790379_))
                                                           (_tl9036990384_
                                                            (##cdr _e9036790379_)))
                                                       (let* ((_head90387_
                                                               _hd9036890382_)
                                                              (_args90389_
                                                               _tl9036990384_))
                                                         (if (gx#stx-list?
                                                              _args90389_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90363_)
                                                             (_E9036690375_)))))
                                                   (_E9036690375_)))))
                                       (_E9036590391_)))
                                   _body90361_))
                                 (gx#stx-source _stx90337_))
                                (_E9034090349_)))))
                      (_E9034090349_)))))
          (_E9033990395_))))
    (define gx#core-expand-extern%
      (lambda (_stx90241_)
        (let* ((_e9024290249_ _stx90241_)
               (_E9024490253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9024290249_)))
               (_E9024390333_
                (lambda ()
                  (if (gx#stx-pair? _e9024290249_)
                      (let ((_e9024590257_ (gx#syntax-e _e9024290249_)))
                        (let ((_hd9024690260_ (##car _e9024590257_))
                              (_tl9024790262_ (##cdr _e9024590257_)))
                          (let ((_body90265_ _tl9024790262_))
                            (if '#t
                                (let _lp90267_ ((_rest90269_ _body90265_)
                                                (_r90270_ '()))
                                  (let* ((_e9027190285_ _rest90269_)
                                         (_E9028390289_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90241_)))
                                         (_E9027390293_
                                          (lambda ()
                                            (if (gx#stx-null? _e9027190285_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90270_))
                                                     (gx#stx-source
                                                      _stx90241_))
                                                    (_E9028390289_))
                                                (_E9028390289_))))
                                         (_E9027290329_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9027190285_)
                                                (let ((_e9027490297_
                                                       (gx#syntax-e
                                                        _e9027190285_)))
                                                  (let ((_hd9027590300_
                                                         (##car _e9027490297_))
                                                        (_tl9027690302_
                                                         (##cdr _e9027490297_)))
                                                    (if (gx#stx-pair?
                                                         _hd9027590300_)
                                                        (let ((_e9027790305_
                                                               (gx#syntax-e
                                                                _hd9027590300_)))
                                                          (let ((_hd9027890308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9027790305_))
                        (_tl9027990310_ (##cdr _e9027790305_)))
                    (let ((_id90313_ _hd9027890308_))
                      (if (gx#stx-pair? _tl9027990310_)
                          (let ((_e9028090315_ (gx#syntax-e _tl9027990310_)))
                            (let ((_hd9028190318_ (##car _e9028090315_))
                                  (_tl9028290320_ (##cdr _e9028090315_)))
                              (let ((_eid90323_ _hd9028190318_))
                                (if (gx#stx-null? _tl9028290320_)
                                    (let ((_rest90325_ _tl9027690302_))
                                      (if (and (gx#identifier? _id90313_)
                                               (gx#identifier? _eid90323_))
                                          (let ((_eid90327_
                                                 (gx#stx-e _eid90323_)))
                                            (gx#core-bind-extern!__0
                                             _id90313_
                                             _eid90327_)
                                            (_lp90267_
                                             _rest90325_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90313_)
                                                         (cons _eid90327_ '()))
                                                   _r90270_)))
                                          (_E9027390293_)))
                                    (_E9027390293_)))))
                          (_E9027390293_)))))
                (_E9027390293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9027390293_)))))
                                    (_E9027290329_)))
                                (_E9024490253_)))))
                      (_E9024490253_)))))
          (_E9024390333_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90187_)
        (let* ((_e9018890201_ _stx90187_)
               (_E9019090205_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9018890201_)))
               (_E9018990237_
                (lambda ()
                  (if (gx#stx-pair? _e9018890201_)
                      (let ((_e9019190209_ (gx#syntax-e _e9018890201_)))
                        (let ((_hd9019290212_ (##car _e9019190209_))
                              (_tl9019390214_ (##cdr _e9019190209_)))
                          (if (gx#stx-pair? _tl9019390214_)
                              (let ((_e9019490217_
                                     (gx#syntax-e _tl9019390214_)))
                                (let ((_hd9019590220_ (##car _e9019490217_))
                                      (_tl9019690222_ (##cdr _e9019490217_)))
                                  (let ((_hd90225_ _hd9019590220_))
                                    (if (gx#stx-pair? _tl9019690222_)
                                        (let ((_e9019790227_
                                               (gx#syntax-e _tl9019690222_)))
                                          (let ((_hd9019890230_
                                                 (##car _e9019790227_))
                                                (_tl9019990232_
                                                 (##cdr _e9019790227_)))
                                            (let ((_expr90235_ _hd9019890230_))
                                              (if (gx#stx-null? _tl9019990232_)
                                                  (if (gx#core-bind-values?
                                                       _hd90225_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90225_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90225_)
                             (cons (gx#core-expand-expression _expr90235_)
                                   '())))
                 (gx#stx-source _stx90187_)))
              (_E9019090205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9019090205_)))))
                                        (_E9019090205_)))))
                              (_E9019090205_))))
                      (_E9019090205_)))))
          (_E9018990237_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90131_)
        (let* ((_e9013290145_ _stx90131_)
               (_E9013490149_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9013290145_)))
               (_E9013390183_
                (lambda ()
                  (if (gx#stx-pair? _e9013290145_)
                      (let ((_e9013590153_ (gx#syntax-e _e9013290145_)))
                        (let ((_hd9013690156_ (##car _e9013590153_))
                              (_tl9013790158_ (##cdr _e9013590153_)))
                          (if (gx#stx-pair? _tl9013790158_)
                              (let ((_e9013890161_
                                     (gx#syntax-e _tl9013790158_)))
                                (let ((_hd9013990164_ (##car _e9013890161_))
                                      (_tl9014090166_ (##cdr _e9013890161_)))
                                  (let ((_id90169_ _hd9013990164_))
                                    (if (gx#stx-pair? _tl9014090166_)
                                        (let ((_e9014190171_
                                               (gx#syntax-e _tl9014090166_)))
                                          (let ((_hd9014290174_
                                                 (##car _e9014190171_))
                                                (_tl9014390176_
                                                 (##cdr _e9014190171_)))
                                            (let ((_binding-id90179_
                                                   _hd9014290174_))
                                              (if (gx#stx-null? _tl9014390176_)
                                                  (if (and (gx#identifier?
                                                            _id90169_)
                                                           (gx#identifier?
                                                            _binding-id90179_))
                                                      (let ((_eid90181_
                                                             (gx#stx-e
                                                              _binding-id90179_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90169_
                                                         _eid90181_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90169_)
                             (cons _eid90181_ '())))))
              (_E9013490149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9013490149_)))))
                                        (_E9013490149_)))))
                              (_E9013490149_))))
                      (_E9013490149_)))))
          (_E9013390183_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90074_)
        (let* ((_e9007590088_ _stx90074_)
               (_E9007790092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9007590088_)))
               (_E9007690127_
                (lambda ()
                  (if (gx#stx-pair? _e9007590088_)
                      (let ((_e9007890096_ (gx#syntax-e _e9007590088_)))
                        (let ((_hd9007990099_ (##car _e9007890096_))
                              (_tl9008090101_ (##cdr _e9007890096_)))
                          (if (gx#stx-pair? _tl9008090101_)
                              (let ((_e9008190104_
                                     (gx#syntax-e _tl9008090101_)))
                                (let ((_hd9008290107_ (##car _e9008190104_))
                                      (_tl9008390109_ (##cdr _e9008190104_)))
                                  (let ((_id90112_ _hd9008290107_))
                                    (if (gx#stx-pair? _tl9008390109_)
                                        (let ((_e9008490114_
                                               (gx#syntax-e _tl9008390109_)))
                                          (let ((_hd9008590117_
                                                 (##car _e9008490114_))
                                                (_tl9008690119_
                                                 (##cdr _e9008490114_)))
                                            (let ((_expr90122_ _hd9008590117_))
                                              (if (gx#stx-null? _tl9008690119_)
                                                  (if (gx#identifier?
                                                       _id90112_)
                                                      (let ((_g91033_
                                                             (gx#core-expand-expression+1
                                                              _expr90122_)))
                                                        (begin
                                                          (let ((_g91034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g91033_)
                             (##vector-length _g91033_)
                             1)))
                    (if (not (##fx= _g91034_ 2))
                        (error "Context expects 2 values" _g91034_)))
                  (let ((_e-stx90124_ (##vector-ref _g91033_ 0))
                        (_e90125_ (##vector-ref _g91033_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90112_ _e90125_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90112_)
                                   (cons _e-stx90124_ '())))
                       (gx#stx-source _stx90074_))))))
              (_E9007790092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9007790092_)))))
                                        (_E9007790092_)))))
                              (_E9007790092_))))
                      (_E9007790092_)))))
          (_E9007690127_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx90018_)
        (let* ((_e9001990032_ _stx90018_)
               (_E9002190036_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9001990032_)))
               (_E9002090070_
                (lambda ()
                  (if (gx#stx-pair? _e9001990032_)
                      (let ((_e9002290040_ (gx#syntax-e _e9001990032_)))
                        (let ((_hd9002390043_ (##car _e9002290040_))
                              (_tl9002490045_ (##cdr _e9002290040_)))
                          (if (gx#stx-pair? _tl9002490045_)
                              (let ((_e9002590048_
                                     (gx#syntax-e _tl9002490045_)))
                                (let ((_hd9002690051_ (##car _e9002590048_))
                                      (_tl9002790053_ (##cdr _e9002590048_)))
                                  (let ((_id90056_ _hd9002690051_))
                                    (if (gx#stx-pair? _tl9002790053_)
                                        (let ((_e9002890058_
                                               (gx#syntax-e _tl9002790053_)))
                                          (let ((_hd9002990061_
                                                 (##car _e9002890058_))
                                                (_tl9003090063_
                                                 (##cdr _e9002890058_)))
                                            (let ((_alias-id90066_
                                                   _hd9002990061_))
                                              (if (gx#stx-null? _tl9003090063_)
                                                  (if (and (gx#identifier?
                                                            _id90056_)
                                                           (gx#identifier?
                                                            _alias-id90066_))
                                                      (let ((_alias-id90068_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90066_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90056_
                                                         _alias-id90068_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90056_)
                             (cons _alias-id90068_ '())))))
              (_E9002190036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9002190036_)))))
                                        (_E9002190036_)))))
                              (_E9002190036_))))
                      (_E9002190036_)))))
          (_E9002090070_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89961_ _wrap?89962_)
        (let* ((_e8996389973_ _stx89961_)
               (_E8996589977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8996389973_)))
               (_E8996490004_
                (lambda ()
                  (if (gx#stx-pair? _e8996389973_)
                      (let ((_e8996689981_ (gx#syntax-e _e8996389973_)))
                        (let ((_hd8996789984_ (##car _e8996689981_))
                              (_tl8996889986_ (##cdr _e8996689981_)))
                          (if (gx#stx-pair? _tl8996889986_)
                              (let ((_e8996989989_
                                     (gx#syntax-e _tl8996889986_)))
                                (let ((_hd8997089992_ (##car _e8996989989_))
                                      (_tl8997189994_ (##cdr _e8996989989_)))
                                  (let* ((_hd89997_ _hd8997089992_)
                                         (_body89999_ _tl8997189994_))
                                    (if (gx#core-bind-values? _hd89997_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89997_)
                                           (let ((_body90002_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89997_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89961_
                                                               _body89999_)
                                                              '()))))
                                             (if _wrap?89962_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body90002_)
                                                  (gx#stx-source _stx89961_))
                                                 _body90002_)))
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
                                           __obj91026))
                                        (_E8996589977_)))))
                              (_E8996589977_))))
                      (_E8996589977_)))))
          (_E8996490004_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx90011_)
        (let ((_wrap?90013_ '#t))
          (gx#core-expand-lambda%__% _stx90011_ _wrap?90013_))))
    (define gx#core-expand-lambda%
      (lambda _g91036_
        (let ((_g91035_ (##length _g91036_)))
          (cond ((##fx= _g91035_ 1)
                 (apply (lambda (_stx90011_)
                          (gx#core-expand-lambda%__0 _stx90011_))
                        _g91036_))
                ((##fx= _g91035_ 2)
                 (apply (lambda (_stx90015_ _wrap?90016_)
                          (gx#core-expand-lambda%__% _stx90015_ _wrap?90016_))
                        _g91036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g91036_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89925_)
        (let* ((_e8992689933_ _stx89925_)
               (_E8992889937_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8992689933_)))
               (_E8992789956_
                (lambda ()
                  (if (gx#stx-pair? _e8992689933_)
                      (let ((_e8992989941_ (gx#syntax-e _e8992689933_)))
                        (let ((_hd8993089944_ (##car _e8992989941_))
                              (_tl8993189946_ (##cdr _e8992989941_)))
                          (let ((_clauses89949_ _tl8993189946_))
                            (if (gx#stx-list? _clauses89949_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89951_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89951_)
                                       (let ((_$e89953_
                                              (gx#stx-source _clause89951_)))
                                         (if _$e89953_
                                             _$e89953_
                                             (gx#stx-source _stx89925_))))
                                      '#f))
                                   _clauses89949_))
                                 (gx#stx-source _stx89925_))
                                (_E8992889937_)))))
                      (_E8992889937_)))))
          (_E8992789956_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89879_)
        (let* ((_e8988089890_ _stx89879_)
               (_E8988289894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8988089890_)))
               (_E8988189921_
                (lambda ()
                  (if (gx#stx-pair? _e8988089890_)
                      (let ((_e8988389898_ (gx#syntax-e _e8988089890_)))
                        (let ((_hd8988489901_ (##car _e8988389898_))
                              (_tl8988589903_ (##cdr _e8988389898_)))
                          (if (gx#stx-pair? _tl8988589903_)
                              (let ((_e8988689906_
                                     (gx#syntax-e _tl8988589903_)))
                                (let ((_hd8988789909_ (##car _e8988689906_))
                                      (_tl8988889911_ (##cdr _e8988689906_)))
                                  (let* ((_hd89914_ _hd8988789909_)
                                         (_body89916_ _tl8988889911_))
                                    (if (gx#core-expand-let-bind? _hd89914_)
                                        (let ((_expressions89918_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89914_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89914_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89914_
                                                           _expressions89918_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89879_
                         _body89916_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89879_)))
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
                                             __obj91027)))
                                        (_E8988289894_)))))
                              (_E8988289894_))))
                      (_E8988289894_)))))
          (_E8988189921_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89824_ _form89825_)
        (let* ((_e8982689836_ _stx89824_)
               (_E8982889840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8982689836_)))
               (_E8982789865_
                (lambda ()
                  (if (gx#stx-pair? _e8982689836_)
                      (let ((_e8982989844_ (gx#syntax-e _e8982689836_)))
                        (let ((_hd8983089847_ (##car _e8982989844_))
                              (_tl8983189849_ (##cdr _e8982989844_)))
                          (if (gx#stx-pair? _tl8983189849_)
                              (let ((_e8983289852_
                                     (gx#syntax-e _tl8983189849_)))
                                (let ((_hd8983389855_ (##car _e8983289852_))
                                      (_tl8983489857_ (##cdr _e8983289852_)))
                                  (let* ((_hd89860_ _hd8983389855_)
                                         (_body89862_ _tl8983489857_))
                                    (if (gx#core-expand-let-bind? _hd89860_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89860_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89825_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89860_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89860_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89824_
                                                               _body89862_)
                                                              '())))
                                            (gx#stx-source _stx89824_)))
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
                                           __obj91028))
                                        (_E8982889840_)))))
                              (_E8982889840_))))
                      (_E8982889840_)))))
          (_E8982789865_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89872_)
        (let ((_form89874_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89872_ _form89874_))))
    (define gx#core-expand-letrec-values%
      (lambda _g91038_
        (let ((_g91037_ (##length _g91038_)))
          (cond ((##fx= _g91037_ 1)
                 (apply (lambda (_stx89872_)
                          (gx#core-expand-letrec-values%__0 _stx89872_))
                        _g91038_))
                ((##fx= _g91037_ 2)
                 (apply (lambda (_stx89876_ _form89877_)
                          (gx#core-expand-letrec-values%__%
                           _stx89876_
                           _form89877_))
                        _g91038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g91038_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89821_)
        (gx#core-expand-letrec-values%__% _stx89821_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89778_)
        (if (gx#stx-list? _stx89778_)
            (gx#stx-andmap
             (lambda (_bind89780_)
               (let* ((_e8978189791_ _bind89780_)
                      (_E8978389795_ (lambda () '#f))
                      (_E8978289817_
                       (lambda ()
                         (if (gx#stx-pair? _e8978189791_)
                             (let ((_e8978489799_ (gx#syntax-e _e8978189791_)))
                               (let ((_hd8978589802_ (##car _e8978489799_))
                                     (_tl8978689804_ (##cdr _e8978489799_)))
                                 (let ((_hd89807_ _hd8978589802_))
                                   (if (gx#stx-pair? _tl8978689804_)
                                       (let ((_e8978789809_
                                              (gx#syntax-e _tl8978689804_)))
                                         (let ((_hd8978889812_
                                                (##car _e8978789809_))
                                               (_tl8978989814_
                                                (##cdr _e8978789809_)))
                                           (if (gx#stx-null? _tl8978989814_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89807_)
                                                   (_E8978389795_))
                                               (_E8978389795_))))
                                       (_E8978389795_)))))
                             (_E8978389795_)))))
                 (_E8978289817_)))
             _stx89778_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89737_)
        (let* ((_e8973889748_ _bind89737_)
               (_E8974089752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8973889748_)))
               (_E8973989774_
                (lambda ()
                  (if (gx#stx-pair? _e8973889748_)
                      (let ((_e8974189756_ (gx#syntax-e _e8973889748_)))
                        (let ((_hd8974289759_ (##car _e8974189756_))
                              (_tl8974389761_ (##cdr _e8974189756_)))
                          (if (gx#stx-pair? _tl8974389761_)
                              (let ((_e8974489764_
                                     (gx#syntax-e _tl8974389761_)))
                                (let ((_hd8974589767_ (##car _e8974489764_))
                                      (_tl8974689769_ (##cdr _e8974489764_)))
                                  (let ((_expr89772_ _hd8974589767_))
                                    (if (gx#stx-null? _tl8974689769_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89772_)
                                            (_E8974089752_))
                                        (_E8974089752_)))))
                              (_E8974089752_))))
                      (_E8974089752_)))))
          (_E8973989774_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89696_)
        (let* ((_e8969789707_ _bind89696_)
               (_E8969989711_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8969789707_)))
               (_E8969889733_
                (lambda ()
                  (if (gx#stx-pair? _e8969789707_)
                      (let ((_e8970089715_ (gx#syntax-e _e8969789707_)))
                        (let ((_hd8970189718_ (##car _e8970089715_))
                              (_tl8970289720_ (##cdr _e8970089715_)))
                          (let ((_hd89723_ _hd8970189718_))
                            (if (gx#stx-pair? _tl8970289720_)
                                (let ((_e8970389725_
                                       (gx#syntax-e _tl8970289720_)))
                                  (let ((_hd8970489728_ (##car _e8970389725_))
                                        (_tl8970589730_ (##cdr _e8970389725_)))
                                    (if (gx#stx-null? _tl8970589730_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89723_)
                                            (_E8969989711_))
                                        (_E8969989711_))))
                                (_E8969989711_)))))
                      (_E8969989711_)))))
          (_E8969889733_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89654_ _expr89655_)
        (let* ((_e8965689666_ _bind89654_)
               (_E8965889670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8965689666_)))
               (_E8965789692_
                (lambda ()
                  (if (gx#stx-pair? _e8965689666_)
                      (let ((_e8965989674_ (gx#syntax-e _e8965689666_)))
                        (let ((_hd8966089677_ (##car _e8965989674_))
                              (_tl8966189679_ (##cdr _e8965989674_)))
                          (let ((_hd89682_ _hd8966089677_))
                            (if (gx#stx-pair? _tl8966189679_)
                                (let ((_e8966289684_
                                       (gx#syntax-e _tl8966189679_)))
                                  (let ((_hd8966389687_ (##car _e8966289684_))
                                        (_tl8966489689_ (##cdr _e8966289684_)))
                                    (if (gx#stx-null? _tl8966489689_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89682_)
                                                  (cons _expr89655_ '()))
                                            (_E8965889670_))
                                        (_E8965889670_))))
                                (_E8965889670_)))))
                      (_E8965889670_)))))
          (_E8965789692_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89608_)
        (let* ((_e8960989619_ _stx89608_)
               (_E8961189623_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8960989619_)))
               (_E8961089650_
                (lambda ()
                  (if (gx#stx-pair? _e8960989619_)
                      (let ((_e8961289627_ (gx#syntax-e _e8960989619_)))
                        (let ((_hd8961389630_ (##car _e8961289627_))
                              (_tl8961489632_ (##cdr _e8961289627_)))
                          (if (gx#stx-pair? _tl8961489632_)
                              (let ((_e8961589635_
                                     (gx#syntax-e _tl8961489632_)))
                                (let ((_hd8961689638_ (##car _e8961589635_))
                                      (_tl8961789640_ (##cdr _e8961589635_)))
                                  (let* ((_hd89643_ _hd8961689638_)
                                         (_body89645_ _tl8961789640_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89643_)
                                        (let ((_expanders89647_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89643_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89643_
                                              _expanders89647_)
                                             (gx#core-expand-local-block
                                              _stx89608_
                                              _body89645_))
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
                                             __obj91029)))
                                        (_E8961189623_)))))
                              (_E8961189623_))))
                      (_E8961189623_)))))
          (_E8961089650_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89557_)
        (let* ((_e8955889568_ _stx89557_)
               (_E8956089572_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8955889568_)))
               (_E8955989604_
                (lambda ()
                  (if (gx#stx-pair? _e8955889568_)
                      (let ((_e8956189576_ (gx#syntax-e _e8955889568_)))
                        (let ((_hd8956289579_ (##car _e8956189576_))
                              (_tl8956389581_ (##cdr _e8956189576_)))
                          (if (gx#stx-pair? _tl8956389581_)
                              (let ((_e8956489584_
                                     (gx#syntax-e _tl8956389581_)))
                                (let ((_hd8956589587_ (##car _e8956489584_))
                                      (_tl8956689589_ (##cdr _e8956489584_)))
                                  (let* ((_hd89592_ _hd8956589587_)
                                         (_body89594_ _tl8956689589_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89592_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89592_
                                            (make-list
                                             (gx#stx-length _hd89592_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8959689599_
                                                     _g8959789601_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8959689599_
                                               _g8959789601_
                                               '#t))
                                            _hd89592_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89592_))
                                           (gx#core-expand-local-block
                                            _stx89557_
                                            _body89594_))
                                         gx#current-expander-context
                                         (let ((__obj91030
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91030)
                                           __obj91030))
                                        (_E8956089572_)))))
                              (_E8956089572_))))
                      (_E8956089572_)))))
          (_E8955989604_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89514_)
        (if (gx#stx-list? _stx89514_)
            (gx#stx-andmap
             (lambda (_bind89516_)
               (let* ((_e8951789527_ _bind89516_)
                      (_E8951989531_ (lambda () '#f))
                      (_E8951889553_
                       (lambda ()
                         (if (gx#stx-pair? _e8951789527_)
                             (let ((_e8952089535_ (gx#syntax-e _e8951789527_)))
                               (let ((_hd8952189538_ (##car _e8952089535_))
                                     (_tl8952289540_ (##cdr _e8952089535_)))
                                 (let ((_hd89543_ _hd8952189538_))
                                   (if (gx#stx-pair? _tl8952289540_)
                                       (let ((_e8952389545_
                                              (gx#syntax-e _tl8952289540_)))
                                         (let ((_hd8952489548_
                                                (##car _e8952389545_))
                                               (_tl8952589550_
                                                (##cdr _e8952389545_)))
                                           (if (gx#stx-null? _tl8952589550_)
                                               (if '#t
                                                   (gx#identifier? _hd89543_)
                                                   (_E8951989531_))
                                               (_E8951989531_))))
                                       (_E8951989531_)))))
                             (_E8951989531_)))))
                 (_E8951889553_)))
             _stx89514_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89471_)
        (let* ((_e8947289482_ _bind89471_)
               (_E8947489486_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8947289482_)))
               (_E8947389510_
                (lambda ()
                  (if (gx#stx-pair? _e8947289482_)
                      (let ((_e8947589490_ (gx#syntax-e _e8947289482_)))
                        (let ((_hd8947689493_ (##car _e8947589490_))
                              (_tl8947789495_ (##cdr _e8947589490_)))
                          (if (gx#stx-pair? _tl8947789495_)
                              (let ((_e8947889498_
                                     (gx#syntax-e _tl8947789495_)))
                                (let ((_hd8947989501_ (##car _e8947889498_))
                                      (_tl8948089503_ (##cdr _e8947889498_)))
                                  (let ((_expr89506_ _hd8947989501_))
                                    (if (gx#stx-null? _tl8948089503_)
                                        (if '#t
                                            (let ((_g91039_
                                                   (gx#core-expand-expression+1
                                                    _expr89506_)))
                                              (begin
                                                (let ((_g91040_
                                                       (if (##values? _g91039_)
                                                           (##vector-length
                                                            _g91039_)
                                                           1)))
                                                  (if (not (##fx= _g91040_ 2))
                                                      (error "Context expects 2 values"
                                                             _g91040_)))
                                                (let ((_e89508_
                                                       (##vector-ref
                                                        _g91039_
                                                        1)))
                                                  _e89508_)))
                                            (_E8947489486_))
                                        (_E8947489486_)))))
                              (_E8947489486_))))
                      (_E8947489486_)))))
          (_E8947389510_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89416_ _e89417_ _rebind?89418_)
        (let* ((_e8941989429_ _bind89416_)
               (_E8942189433_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8941989429_)))
               (_E8942089455_
                (lambda ()
                  (if (gx#stx-pair? _e8941989429_)
                      (let ((_e8942289437_ (gx#syntax-e _e8941989429_)))
                        (let ((_hd8942389440_ (##car _e8942289437_))
                              (_tl8942489442_ (##cdr _e8942289437_)))
                          (let ((_id89445_ _hd8942389440_))
                            (if (gx#stx-pair? _tl8942489442_)
                                (let ((_e8942589447_
                                       (gx#syntax-e _tl8942489442_)))
                                  (let ((_hd8942689450_ (##car _e8942589447_))
                                        (_tl8942789452_ (##cdr _e8942589447_)))
                                    (if (gx#stx-null? _tl8942789452_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89445_
                                             _e89417_
                                             _rebind?89418_)
                                            (_E8942189433_))
                                        (_E8942189433_))))
                                (_E8942189433_)))))
                      (_E8942189433_)))))
          (_E8942089455_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89462_ _e89463_)
        (let ((_rebind?89465_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89462_
           _e89463_
           _rebind?89465_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g91042_
        (let ((_g91041_ (##length _g91042_)))
          (cond ((##fx= _g91041_ 2)
                 (apply (lambda (_bind89462_ _e89463_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89462_
                           _e89463_))
                        _g91042_))
                ((##fx= _g91041_ 3)
                 (apply (lambda (_bind89467_ _e89468_ _rebind?89469_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89467_
                           _e89468_
                           _rebind?89469_))
                        _g91042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g91042_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89374_)
        (let* ((_e8937589385_ _stx89374_)
               (_E8937789389_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937589385_)))
               (_E8937689411_
                (lambda ()
                  (if (gx#stx-pair? _e8937589385_)
                      (let ((_e8937889393_ (gx#syntax-e _e8937589385_)))
                        (let ((_hd8937989396_ (##car _e8937889393_))
                              (_tl8938089398_ (##cdr _e8937889393_)))
                          (if (gx#stx-pair? _tl8938089398_)
                              (let ((_e8938189401_
                                     (gx#syntax-e _tl8938089398_)))
                                (let ((_hd8938289404_ (##car _e8938189401_))
                                      (_tl8938389406_ (##cdr _e8938189401_)))
                                  (let ((_expr89409_ _hd8938289404_))
                                    (if (gx#stx-null? _tl8938389406_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89409_)
                                            (_E8937789389_))
                                        (_E8937789389_)))))
                              (_E8937789389_))))
                      (_E8937789389_)))))
          (_E8937689411_))))
    (define gx#core-expand-quote%
      (lambda (_stx89333_)
        (let* ((_e8933489344_ _stx89333_)
               (_E8933689348_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8933489344_)))
               (_E8933589370_
                (lambda ()
                  (if (gx#stx-pair? _e8933489344_)
                      (let ((_e8933789352_ (gx#syntax-e _e8933489344_)))
                        (let ((_hd8933889355_ (##car _e8933789352_))
                              (_tl8933989357_ (##cdr _e8933789352_)))
                          (if (gx#stx-pair? _tl8933989357_)
                              (let ((_e8934089360_
                                     (gx#syntax-e _tl8933989357_)))
                                (let ((_hd8934189363_ (##car _e8934089360_))
                                      (_tl8934289365_ (##cdr _e8934089360_)))
                                  (let ((_e89368_ _hd8934189363_))
                                    (if (gx#stx-null? _tl8934289365_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89368_)
                                                         '()))
                                             (gx#stx-source _stx89333_))
                                            (_E8933689348_))
                                        (_E8933689348_)))))
                              (_E8933689348_))))
                      (_E8933689348_)))))
          (_E8933589370_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89292_)
        (let* ((_e8929389303_ _stx89292_)
               (_E8929589307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8929389303_)))
               (_E8929489329_
                (lambda ()
                  (if (gx#stx-pair? _e8929389303_)
                      (let ((_e8929689311_ (gx#syntax-e _e8929389303_)))
                        (let ((_hd8929789314_ (##car _e8929689311_))
                              (_tl8929889316_ (##cdr _e8929689311_)))
                          (if (gx#stx-pair? _tl8929889316_)
                              (let ((_e8929989319_
                                     (gx#syntax-e _tl8929889316_)))
                                (let ((_hd8930089322_ (##car _e8929989319_))
                                      (_tl8930189324_ (##cdr _e8929989319_)))
                                  (let ((_e89327_ _hd8930089322_))
                                    (if (gx#stx-null? _tl8930189324_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89327_)
                                                         '()))
                                             (gx#stx-source _stx89292_))
                                            (_E8929589307_))
                                        (_E8929589307_)))))
                              (_E8929589307_))))
                      (_E8929589307_)))))
          (_E8929489329_))))
    (define gx#core-expand-call%
      (lambda (_stx89249_)
        (let* ((_e8925089260_ _stx89249_)
               (_E8925289264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8925089260_)))
               (_E8925189288_
                (lambda ()
                  (if (gx#stx-pair? _e8925089260_)
                      (let ((_e8925389268_ (gx#syntax-e _e8925089260_)))
                        (let ((_hd8925489271_ (##car _e8925389268_))
                              (_tl8925589273_ (##cdr _e8925389268_)))
                          (if (gx#stx-pair? _tl8925589273_)
                              (let ((_e8925689276_
                                     (gx#syntax-e _tl8925589273_)))
                                (let ((_hd8925789279_ (##car _e8925689276_))
                                      (_tl8925889281_ (##cdr _e8925689276_)))
                                  (let* ((_rator89284_ _hd8925789279_)
                                         (_args89286_ _tl8925889281_))
                                    (if (gx#stx-list? _args89286_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89284_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89286_))
                                         (gx#stx-source _stx89249_))
                                        (_E8925289264_)))))
                              (_E8925289264_))))
                      (_E8925289264_)))))
          (_E8925189288_))))
    (define gx#core-expand-if%
      (lambda (_stx89182_)
        (let* ((_e8918389199_ _stx89182_)
               (_E8918589203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8918389199_)))
               (_E8918489245_
                (lambda ()
                  (if (gx#stx-pair? _e8918389199_)
                      (let ((_e8918689207_ (gx#syntax-e _e8918389199_)))
                        (let ((_hd8918789210_ (##car _e8918689207_))
                              (_tl8918889212_ (##cdr _e8918689207_)))
                          (if (gx#stx-pair? _tl8918889212_)
                              (let ((_e8918989215_
                                     (gx#syntax-e _tl8918889212_)))
                                (let ((_hd8919089218_ (##car _e8918989215_))
                                      (_tl8919189220_ (##cdr _e8918989215_)))
                                  (let ((_test89223_ _hd8919089218_))
                                    (if (gx#stx-pair? _tl8919189220_)
                                        (let ((_e8919289225_
                                               (gx#syntax-e _tl8919189220_)))
                                          (let ((_hd8919389228_
                                                 (##car _e8919289225_))
                                                (_tl8919489230_
                                                 (##cdr _e8919289225_)))
                                            (let ((_K89233_ _hd8919389228_))
                                              (if (gx#stx-pair? _tl8919489230_)
                                                  (let ((_e8919589235_
                                                         (gx#syntax-e
                                                          _tl8919489230_)))
                                                    (let ((_hd8919689238_
                                                           (##car _e8919589235_))
                                                          (_tl8919789240_
                                                           (##cdr _e8919589235_)))
                                                      (let ((_E89243_
                                                             _hd8919689238_))
                                                        (if (gx#stx-null?
                                                             _tl8919789240_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89223_)
                                     (cons (gx#core-expand-expression _K89233_)
                                           (cons (gx#core-expand-expression
                                                  _E89243_)
                                                 '()))))
                         (gx#stx-source _stx89182_))
                        (_E8918589203_))
                    (_E8918589203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8918589203_)))))
                                        (_E8918589203_)))))
                              (_E8918589203_))))
                      (_E8918589203_)))))
          (_E8918489245_))))
    (define gx#core-expand-ref%
      (lambda (_stx89141_)
        (let* ((_e8914289152_ _stx89141_)
               (_E8914489156_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8914289152_)))
               (_E8914389178_
                (lambda ()
                  (if (gx#stx-pair? _e8914289152_)
                      (let ((_e8914589160_ (gx#syntax-e _e8914289152_)))
                        (let ((_hd8914689163_ (##car _e8914589160_))
                              (_tl8914789165_ (##cdr _e8914589160_)))
                          (if (gx#stx-pair? _tl8914789165_)
                              (let ((_e8914889168_
                                     (gx#syntax-e _tl8914789165_)))
                                (let ((_hd8914989171_ (##car _e8914889168_))
                                      (_tl8915089173_ (##cdr _e8914889168_)))
                                  (let ((_id89176_ _hd8914989171_))
                                    (if (gx#stx-null? _tl8915089173_)
                                        (if (gx#identifier? _id89176_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89176_
                                                          _stx89141_)
                                                         '()))
                                             (gx#stx-source _stx89141_))
                                            (_E8914489156_))
                                        (_E8914489156_)))))
                              (_E8914489156_))))
                      (_E8914489156_)))))
          (_E8914389178_))))
    (define gx#core-expand-setq%
      (lambda (_stx89087_)
        (let* ((_e8908889101_ _stx89087_)
               (_E8909089105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8908889101_)))
               (_E8908989137_
                (lambda ()
                  (if (gx#stx-pair? _e8908889101_)
                      (let ((_e8909189109_ (gx#syntax-e _e8908889101_)))
                        (let ((_hd8909289112_ (##car _e8909189109_))
                              (_tl8909389114_ (##cdr _e8909189109_)))
                          (if (gx#stx-pair? _tl8909389114_)
                              (let ((_e8909489117_
                                     (gx#syntax-e _tl8909389114_)))
                                (let ((_hd8909589120_ (##car _e8909489117_))
                                      (_tl8909689122_ (##cdr _e8909489117_)))
                                  (let ((_id89125_ _hd8909589120_))
                                    (if (gx#stx-pair? _tl8909689122_)
                                        (let ((_e8909789127_
                                               (gx#syntax-e _tl8909689122_)))
                                          (let ((_hd8909889130_
                                                 (##car _e8909789127_))
                                                (_tl8909989132_
                                                 (##cdr _e8909789127_)))
                                            (let ((_expr89135_ _hd8909889130_))
                                              (if (gx#stx-null? _tl8909989132_)
                                                  (if (gx#identifier?
                                                       _id89125_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89125_
                            _stx89087_)
                           (cons (gx#core-expand-expression _expr89135_) '())))
               (gx#stx-source _stx89087_))
              (_E8909089105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8909089105_)))))
                                        (_E8909089105_)))))
                              (_E8909089105_))))
                      (_E8909089105_)))))
          (_E8908989137_))))
    (define gx#macro-expand-extern
      (lambda (_stx88935_)
        (letrec ((_generate88937_
                  (lambda (_body88967_)
                    (let _lp88969_ ((_rest88971_ _body88967_)
                                    (_ns88972_ (gx#core-context-namespace__0))
                                    (_r88973_ '()))
                      (let* ((_e8897488989_ _rest88971_)
                             (_E8898788993_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8897488989_)))
                             (_E8898388997_
                              (lambda ()
                                (if (gx#stx-null? _e8897488989_)
                                    (if '#t (reverse _r88973_) (_E8898788993_))
                                    (_E8898788993_))))
                             (_E8897689054_
                              (lambda ()
                                (if (gx#stx-pair? _e8897488989_)
                                    (let ((_e8898489001_
                                           (gx#syntax-e _e8897488989_)))
                                      (let ((_hd8898589004_
                                             (##car _e8898489001_))
                                            (_tl8898689006_
                                             (##cdr _e8898489001_)))
                                        (let* ((_hd89009_ _hd8898589004_)
                                               (_rest89011_ _tl8898689006_))
                                          (if '#t
                                              (if (gx#identifier? _hd89009_)
                                                  (_lp88969_
                                                   _rest89011_
                                                   _ns88972_
                                                   (cons (cons _hd89009_
                                                               (cons (if _ns88972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd89009_
                                  _ns88972_
                                  '"#"
                                  _hd89009_)
                                 _hd89009_)
                             '()))
                 _r88973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8901289022_
                                                          _hd89009_)
                                                         (_E8901489026_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8901289022_)))
                                                         (_E8901389050_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8901289022_)
                        (let ((_e8901589030_ (gx#syntax-e _e8901289022_)))
                          (let ((_hd8901689033_ (##car _e8901589030_))
                                (_tl8901789035_ (##cdr _e8901589030_)))
                            (let ((_id89038_ _hd8901689033_))
                              (if (gx#stx-pair? _tl8901789035_)
                                  (let ((_e8901889040_
                                         (gx#syntax-e _tl8901789035_)))
                                    (let ((_hd8901989043_
                                           (##car _e8901889040_))
                                          (_tl8902089045_
                                           (##cdr _e8901889040_)))
                                      (let ((_eid89048_ _hd8901989043_))
                                        (if (gx#stx-null? _tl8902089045_)
                                            (if (and (gx#identifier? _id89038_)
                                                     (gx#identifier?
                                                      _eid89048_))
                                                (_lp88969_
                                                 _rest89011_
                                                 _ns88972_
                                                 (cons (cons _id89038_
                                                             (cons _eid89048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8901489026_))
                                            (_E8901489026_)))))
                                  (_E8901489026_)))))
                        (_E8901489026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8901389050_)))
                                              (_E8898388997_)))))
                                    (_E8898388997_))))
                             (_E8897589083_
                              (lambda ()
                                (if (gx#stx-pair? _e8897488989_)
                                    (let ((_e8897789058_
                                           (gx#syntax-e _e8897488989_)))
                                      (let ((_hd8897889061_
                                             (##car _e8897789058_))
                                            (_tl8897989063_
                                             (##cdr _e8897789058_)))
                                        (if (eq? (gx#stx-e _hd8897889061_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8897989063_)
                                                (let ((_e8898089066_
                                                       (gx#syntax-e
                                                        _tl8897989063_)))
                                                  (let ((_hd8898189069_
                                                         (##car _e8898089066_))
                                                        (_tl8898289071_
                                                         (##cdr _e8898089066_)))
                                                    (let* ((_ns89074_
                                                            _hd8898189069_)
                                                           (_rest89076_
                                                            _tl8898289071_))
                                                      (if '#t
                                                          (let ((_ns89081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89074_)
                             (symbol->string (gx#stx-e _ns89074_))
                             (if (or (gx#stx-string? _ns89074_)
                                     (gx#stx-false? _ns89074_))
                                 (gx#stx-e _ns89074_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88935_
                                  _ns89074_)))))
                    (_lp88969_ _rest89076_ _ns89081_ _r88973_))
                  (_E8897689054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8897689054_))
                                            (_E8897689054_))))
                                    (_E8897689054_)))))
                        (_E8897589083_))))))
          (let* ((_e8893888945_ _stx88935_)
                 (_E8894088949_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8893888945_)))
                 (_E8893988963_
                  (lambda ()
                    (if (gx#stx-pair? _e8893888945_)
                        (let ((_e8894188953_ (gx#syntax-e _e8893888945_)))
                          (let ((_hd8894288956_ (##car _e8894188953_))
                                (_tl8894388958_ (##cdr _e8894188953_)))
                            (let ((_body88961_ _tl8894388958_))
                              (if (gx#stx-list? _body88961_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88937_ _body88961_))
                                  (_E8894088949_)))))
                        (_E8894088949_)))))
            (_E8893988963_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88881_)
        (let* ((_e8888288895_ _stx88881_)
               (_E8888488899_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8888288895_)))
               (_E8888388931_
                (lambda ()
                  (if (gx#stx-pair? _e8888288895_)
                      (let ((_e8888588903_ (gx#syntax-e _e8888288895_)))
                        (let ((_hd8888688906_ (##car _e8888588903_))
                              (_tl8888788908_ (##cdr _e8888588903_)))
                          (if (gx#stx-pair? _tl8888788908_)
                              (let ((_e8888888911_
                                     (gx#syntax-e _tl8888788908_)))
                                (let ((_hd8888988914_ (##car _e8888888911_))
                                      (_tl8889088916_ (##cdr _e8888888911_)))
                                  (let ((_hd88919_ _hd8888988914_))
                                    (if (gx#stx-pair? _tl8889088916_)
                                        (let ((_e8889188921_
                                               (gx#syntax-e _tl8889088916_)))
                                          (let ((_hd8889288924_
                                                 (##car _e8889188921_))
                                                (_tl8889388926_
                                                 (##cdr _e8889188921_)))
                                            (let ((_expr88929_ _hd8889288924_))
                                              (if (gx#stx-null? _tl8889388926_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88919_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88919_)
                          (cons _expr88929_ '())))
              (_E8888488899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8888488899_)))))
                                        (_E8888488899_)))))
                              (_E8888488899_))))
                      (_E8888488899_)))))
          (_E8888388931_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88827_)
        (let* ((_e8882888841_ _stx88827_)
               (_E8883088845_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882888841_)))
               (_E8882988877_
                (lambda ()
                  (if (gx#stx-pair? _e8882888841_)
                      (let ((_e8883188849_ (gx#syntax-e _e8882888841_)))
                        (let ((_hd8883288852_ (##car _e8883188849_))
                              (_tl8883388854_ (##cdr _e8883188849_)))
                          (if (gx#stx-pair? _tl8883388854_)
                              (let ((_e8883488857_
                                     (gx#syntax-e _tl8883388854_)))
                                (let ((_hd8883588860_ (##car _e8883488857_))
                                      (_tl8883688862_ (##cdr _e8883488857_)))
                                  (let ((_hd88865_ _hd8883588860_))
                                    (if (gx#stx-pair? _tl8883688862_)
                                        (let ((_e8883788867_
                                               (gx#syntax-e _tl8883688862_)))
                                          (let ((_hd8883888870_
                                                 (##car _e8883788867_))
                                                (_tl8883988872_
                                                 (##cdr _e8883788867_)))
                                            (let ((_expr88875_ _hd8883888870_))
                                              (if (gx#stx-null? _tl8883988872_)
                                                  (if (gx#identifier?
                                                       _hd88865_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88875_ '())))
              (_E8883088845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8883088845_)))))
                                        (_E8883088845_)))))
                              (_E8883088845_))))
                      (_E8883088845_)))))
          (_E8882988877_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88773_)
        (let* ((_e8877488787_ _stx88773_)
               (_E8877688791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877488787_)))
               (_E8877588823_
                (lambda ()
                  (if (gx#stx-pair? _e8877488787_)
                      (let ((_e8877788795_ (gx#syntax-e _e8877488787_)))
                        (let ((_hd8877888798_ (##car _e8877788795_))
                              (_tl8877988800_ (##cdr _e8877788795_)))
                          (if (gx#stx-pair? _tl8877988800_)
                              (let ((_e8878088803_
                                     (gx#syntax-e _tl8877988800_)))
                                (let ((_hd8878188806_ (##car _e8878088803_))
                                      (_tl8878288808_ (##cdr _e8878088803_)))
                                  (let ((_id88811_ _hd8878188806_))
                                    (if (gx#stx-pair? _tl8878288808_)
                                        (let ((_e8878388813_
                                               (gx#syntax-e _tl8878288808_)))
                                          (let ((_hd8878488816_
                                                 (##car _e8878388813_))
                                                (_tl8878588818_
                                                 (##cdr _e8878388813_)))
                                            (let ((_alias-id88821_
                                                   _hd8878488816_))
                                              (if (gx#stx-null? _tl8878588818_)
                                                  (if (and (gx#identifier?
                                                            _id88811_)
                                                           (gx#identifier?
                                                            _alias-id88821_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88821_ '())))
              (_E8877688791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877688791_)))))
                                        (_E8877688791_)))))
                              (_E8877688791_))))
                      (_E8877688791_)))))
          (_E8877588823_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88730_)
        (let* ((_e8873188741_ _stx88730_)
               (_E8873388745_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8873188741_)))
               (_E8873288769_
                (lambda ()
                  (if (gx#stx-pair? _e8873188741_)
                      (let ((_e8873488749_ (gx#syntax-e _e8873188741_)))
                        (let ((_hd8873588752_ (##car _e8873488749_))
                              (_tl8873688754_ (##cdr _e8873488749_)))
                          (if (gx#stx-pair? _tl8873688754_)
                              (let ((_e8873788757_
                                     (gx#syntax-e _tl8873688754_)))
                                (let ((_hd8873888760_ (##car _e8873788757_))
                                      (_tl8873988762_ (##cdr _e8873788757_)))
                                  (let* ((_hd88765_ _hd8873888760_)
                                         (_body88767_ _tl8873988762_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88765_)
                                             (gx#stx-list? _body88767_)
                                             (not (gx#stx-null? _body88767_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88765_)
                                         _body88767_)
                                        (_E8873388745_)))))
                              (_E8873388745_))))
                      (_E8873388745_)))))
          (_E8873288769_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88666_)
        (letrec ((_generate88668_
                  (lambda (_clause88698_)
                    (let* ((_e8869988706_ _clause88698_)
                           (_E8870188710_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88666_
                               _clause88698_)))
                           (_E8870088726_
                            (lambda ()
                              (if (gx#stx-pair? _e8869988706_)
                                  (let ((_e8870288714_
                                         (gx#syntax-e _e8869988706_)))
                                    (let ((_hd8870388717_
                                           (##car _e8870288714_))
                                          (_tl8870488719_
                                           (##cdr _e8870288714_)))
                                      (let* ((_hd88722_ _hd8870388717_)
                                             (_body88724_ _tl8870488719_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88722_)
                                                 (gx#stx-list? _body88724_)
                                                 (not (gx#stx-null?
                                                       _body88724_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88722_)
                                                   _body88724_)
                                             (gx#stx-source _clause88698_))
                                            (_E8870188710_)))))
                                  (_E8870188710_)))))
                      (_E8870088726_)))))
          (let* ((_e8866988676_ _stx88666_)
                 (_E8867188680_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8866988676_)))
                 (_E8867088694_
                  (lambda ()
                    (if (gx#stx-pair? _e8866988676_)
                        (let ((_e8867288684_ (gx#syntax-e _e8866988676_)))
                          (let ((_hd8867388687_ (##car _e8867288684_))
                                (_tl8867488689_ (##cdr _e8867288684_)))
                            (let ((_clauses88692_ _tl8867488689_))
                              (if (gx#stx-list? _clauses88692_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88668_
                                    _clauses88692_))
                                  (_E8867188680_)))))
                        (_E8867188680_)))))
            (_E8867088694_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88567_ _form88568_)
        (letrec ((_generate88570_
                  (lambda (_bind88613_)
                    (let* ((_e8861488624_ _bind88613_)
                           (_E8861688628_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88567_
                               _bind88613_)))
                           (_E8861588652_
                            (lambda ()
                              (if (gx#stx-pair? _e8861488624_)
                                  (let ((_e8861788632_
                                         (gx#syntax-e _e8861488624_)))
                                    (let ((_hd8861888635_
                                           (##car _e8861788632_))
                                          (_tl8861988637_
                                           (##cdr _e8861788632_)))
                                      (let ((_ids88640_ _hd8861888635_))
                                        (if (gx#stx-pair? _tl8861988637_)
                                            (let ((_e8862088642_
                                                   (gx#syntax-e
                                                    _tl8861988637_)))
                                              (let ((_hd8862188645_
                                                     (##car _e8862088642_))
                                                    (_tl8862288647_
                                                     (##cdr _e8862088642_)))
                                                (let ((_expr88650_
                                                       _hd8862188645_))
                                                  (if (gx#stx-null?
                                                       _tl8862288647_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88640_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88640_)
                        (cons _expr88650_ '()))
                  (_E8861688628_))
              (_E8861688628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8861688628_)))))
                                  (_E8861688628_)))))
                      (_E8861588652_)))))
          (let* ((_e8857188581_ _stx88567_)
                 (_E8857388585_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8857188581_)))
                 (_E8857288609_
                  (lambda ()
                    (if (gx#stx-pair? _e8857188581_)
                        (let ((_e8857488589_ (gx#syntax-e _e8857188581_)))
                          (let ((_hd8857588592_ (##car _e8857488589_))
                                (_tl8857688594_ (##cdr _e8857488589_)))
                            (if (gx#stx-pair? _tl8857688594_)
                                (let ((_e8857788597_
                                       (gx#syntax-e _tl8857688594_)))
                                  (let ((_hd8857888600_ (##car _e8857788597_))
                                        (_tl8857988602_ (##cdr _e8857788597_)))
                                    (let* ((_hd88605_ _hd8857888600_)
                                           (_body88607_ _tl8857988602_))
                                      (if (and (gx#stx-list? _hd88605_)
                                               (gx#stx-list? _body88607_)
                                               (not (gx#stx-null?
                                                     _body88607_)))
                                          (gx#core-cons*
                                           _form88568_
                                           (gx#stx-map1
                                            _generate88570_
                                            _hd88605_)
                                           _body88607_)
                                          (_E8857388585_)))))
                                (_E8857388585_))))
                        (_E8857388585_)))))
            (_E8857288609_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88659_)
        (let ((_form88661_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88659_ _form88661_))))
    (define gx#macro-expand-let-values
      (lambda _g91044_
        (let ((_g91043_ (##length _g91044_)))
          (cond ((##fx= _g91043_ 1)
                 (apply (lambda (_stx88659_)
                          (gx#macro-expand-let-values__0 _stx88659_))
                        _g91044_))
                ((##fx= _g91043_ 2)
                 (apply (lambda (_stx88663_ _form88664_)
                          (gx#macro-expand-let-values__%
                           _stx88663_
                           _form88664_))
                        _g91044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g91044_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88564_)
        (gx#macro-expand-let-values__% _stx88564_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88562_)
        (gx#macro-expand-let-values__% _stx88562_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88453_)
        (let* ((_e8845488480_ _stx88453_)
               (_E8846688484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8845488480_)))
               (_E8845688526_
                (lambda ()
                  (if (gx#stx-pair? _e8845488480_)
                      (let ((_e8846788488_ (gx#syntax-e _e8845488480_)))
                        (let ((_hd8846888491_ (##car _e8846788488_))
                              (_tl8846988493_ (##cdr _e8846788488_)))
                          (if (gx#stx-pair? _tl8846988493_)
                              (let ((_e8847088496_
                                     (gx#syntax-e _tl8846988493_)))
                                (let ((_hd8847188499_ (##car _e8847088496_))
                                      (_tl8847288501_ (##cdr _e8847088496_)))
                                  (let ((_test88504_ _hd8847188499_))
                                    (if (gx#stx-pair? _tl8847288501_)
                                        (let ((_e8847388506_
                                               (gx#syntax-e _tl8847288501_)))
                                          (let ((_hd8847488509_
                                                 (##car _e8847388506_))
                                                (_tl8847588511_
                                                 (##cdr _e8847388506_)))
                                            (let ((_K88514_ _hd8847488509_))
                                              (if (gx#stx-pair? _tl8847588511_)
                                                  (let ((_e8847688516_
                                                         (gx#syntax-e
                                                          _tl8847588511_)))
                                                    (let ((_hd8847788519_
                                                           (##car _e8847688516_))
                                                          (_tl8847888521_
                                                           (##cdr _e8847688516_)))
                                                      (let ((_E88524_
                                                             _hd8847788519_))
                                                        (if (gx#stx-null?
                                                             _tl8847888521_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88504_
                         _K88514_
                         _E88524_)
                        (_E8846688484_))
                    (_E8846688484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8846688484_)))))
                                        (_E8846688484_)))))
                              (_E8846688484_))))
                      (_E8846688484_))))
               (_E8845588558_
                (lambda ()
                  (if (gx#stx-pair? _e8845488480_)
                      (let ((_e8845788530_ (gx#syntax-e _e8845488480_)))
                        (let ((_hd8845888533_ (##car _e8845788530_))
                              (_tl8845988535_ (##cdr _e8845788530_)))
                          (if (gx#stx-pair? _tl8845988535_)
                              (let ((_e8846088538_
                                     (gx#syntax-e _tl8845988535_)))
                                (let ((_hd8846188541_ (##car _e8846088538_))
                                      (_tl8846288543_ (##cdr _e8846088538_)))
                                  (let ((_test88546_ _hd8846188541_))
                                    (if (gx#stx-pair? _tl8846288543_)
                                        (let ((_e8846388548_
                                               (gx#syntax-e _tl8846288543_)))
                                          (let ((_hd8846488551_
                                                 (##car _e8846388548_))
                                                (_tl8846588553_
                                                 (##cdr _e8846388548_)))
                                            (let ((_K88556_ _hd8846488551_))
                                              (if (gx#stx-null? _tl8846588553_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88546_
                                                       _K88556_
                                                       '#!void)
                                                      (_E8845688526_))
                                                  (_E8845688526_)))))
                                        (_E8845688526_)))))
                              (_E8845688526_))))
                      (_E8845688526_)))))
          (_E8845588558_))))
    (define gx#free-identifier=?
      (lambda (_xid88441_ _yid88442_)
        (let ((_xe88444_ (gx#resolve-identifier__0 _xid88441_))
              (_ye88445_ (gx#resolve-identifier__0 _yid88442_)))
          (if (and _xe88444_ _ye88445_)
              (let ((_$e88447_ (eq? _xe88444_ _ye88445_)))
                (if _$e88447_
                    _$e88447_
                    (if (##structure-instance-of? _xe88444_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88445_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88444_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88445_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88444_ _ye88445_)
                  '#f
                  (gx#stx-eq? _xid88441_ _yid88442_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88425_ _yid88426_)
        (letrec ((_context88428_
                  (lambda (_e88439_)
                    (if (##structure-direct-instance-of?
                         _e88439_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88439_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88429_
                  (lambda (_e88437_)
                    (if (symbol? _e88437_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88437_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88437_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88437_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88430_
                  (lambda (_e88435_)
                    (if (symbol? _e88435_)
                        _e88435_
                        (gx#syntax-local-unwrap _e88435_)))))
          (let ((_x88432_ (_unwrap88430_ _xid88425_))
                (_y88433_ (_unwrap88430_ _yid88426_)))
            (if (gx#stx-eq? _x88432_ _y88433_)
                (if (eq? (_context88428_ _x88432_) (_context88428_ _y88433_))
                    (equal? (_marks88429_ _x88432_) (_marks88429_ _y88433_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88423_)
        (if (gx#identifier? _stx88423_)
            (gx#core-identifier=? _stx88423_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88421_)
        (if (gx#identifier? _stx88421_)
            (gx#core-identifier=? _stx88421_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88419_)
        (if (gx#identifier? _x88419_)
            (if (not (gx#underscore? _x88419_)) _x88419_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88365_ _where88366_)
        (let _lp88368_ ((_rest88370_ (gx#syntax->list _stx88365_)))
          (let* ((_rest8837188379_ _rest88370_)
                 (_else8837388387_ (lambda () '#t))
                 (_K8837588397_
                  (lambda (_rest88390_ _hd88391_)
                    (if (not (gx#identifier? _hd88391_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88366_
                         _hd88391_)
                        (if (find (lambda (_g8839288394_)
                                    (gx#bound-identifier=?
                                     _g8839288394_
                                     _hd88391_))
                                  _rest88390_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88366_
                             _hd88391_)
                            (_lp88368_ _rest88390_))))))
            (if (##pair? _rest8837188379_)
                (let ((_hd8837688400_ (##car _rest8837188379_))
                      (_tl8837788402_ (##cdr _rest8837188379_)))
                  (let* ((_hd88405_ _hd8837688400_)
                         (_rest88407_ _tl8837788402_))
                    (_K8837588397_ _rest88407_ _hd88405_)))
                (_else8837388387_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88412_)
        (let ((_where88414_ _stx88412_))
          (gx#check-duplicate-identifiers__% _stx88412_ _where88414_))))
    (define gx#check-duplicate-identifiers
      (lambda _g91046_
        (let ((_g91045_ (##length _g91046_)))
          (cond ((##fx= _g91045_ 1)
                 (apply (lambda (_stx88412_)
                          (gx#check-duplicate-identifiers__0 _stx88412_))
                        _g91046_))
                ((##fx= _g91045_ 2)
                 (apply (lambda (_stx88416_ _where88417_)
                          (gx#check-duplicate-identifiers__%
                           _stx88416_
                           _where88417_))
                        _g91046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g91046_))))))
    (define gx#core-bind-values?
      (lambda (_stx88357_)
        (gx#stx-andmap
         (lambda (_x88359_)
           (let ((_$e88361_ (gx#identifier? _x88359_)))
             (if _$e88361_ _$e88361_ (gx#stx-false? _x88359_))))
         _stx88357_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88321_ _rebind?88322_ _phi88323_ _ctx88324_)
        (gx#stx-for-each1
         (lambda (_id88326_)
           (if (gx#identifier? _id88326_)
               (gx#core-bind-runtime!__%
                _id88326_
                _rebind?88322_
                _phi88323_
                _ctx88324_)
               '#!void))
         _stx88321_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88331_)
        (let* ((_rebind?88333_ '#f)
               (_phi88335_ (gx#current-expander-phi))
               (_ctx88337_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88331_
           _rebind?88333_
           _phi88335_
           _ctx88337_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88339_ _rebind?88340_)
        (let* ((_phi88342_ (gx#current-expander-phi))
               (_ctx88344_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88339_
           _rebind?88340_
           _phi88342_
           _ctx88344_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88346_ _rebind?88347_ _phi88348_)
        (let ((_ctx88350_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88346_
           _rebind?88347_
           _phi88348_
           _ctx88350_))))
    (define gx#core-bind-values!
      (lambda _g91048_
        (let ((_g91047_ (##length _g91048_)))
          (cond ((##fx= _g91047_ 1)
                 (apply (lambda (_stx88331_)
                          (gx#core-bind-values!__0 _stx88331_))
                        _g91048_))
                ((##fx= _g91047_ 2)
                 (apply (lambda (_stx88339_ _rebind?88340_)
                          (gx#core-bind-values!__1 _stx88339_ _rebind?88340_))
                        _g91048_))
                ((##fx= _g91047_ 3)
                 (apply (lambda (_stx88346_ _rebind?88347_ _phi88348_)
                          (gx#core-bind-values!__2
                           _stx88346_
                           _rebind?88347_
                           _phi88348_))
                        _g91048_))
                ((##fx= _g91047_ 4)
                 (apply (lambda (_stx88352_
                                 _rebind?88353_
                                 _phi88354_
                                 _ctx88355_)
                          (gx#core-bind-values!__%
                           _stx88352_
                           _rebind?88353_
                           _phi88354_
                           _ctx88355_))
                        _g91048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g91048_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88316_)
        (gx#stx-map1
         (lambda (_x88318_)
           (if (gx#identifier? _x88318_)
               (gx#core-quote-syntax__0 _x88318_)
               '#f))
         _stx88316_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88309_)
        (if (gx#identifier? _stx88309_)
            (let* ((_bind88311_ (gx#resolve-identifier__0 _stx88309_))
                   (_$e88313_ (not _bind88311_)))
              (if _$e88313_
                  _$e88313_
                  (##structure-instance-of?
                   _bind88311_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88301_ _form88302_)
        (let ((_bind88304_ (gx#resolve-identifier__0 _id88301_)))
          (if (##structure-instance-of? _bind88304_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88301_)
              (if (not _bind88304_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88301_)))
                      (gx#core-quote-syntax__0 _id88301_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88302_
                       _id88301_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88302_
                   _id88301_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88260_ _rebind?88261_ _phi88262_ _ctx88263_)
        (let* ((_key88265_ (gx#core-identifier-key _id88260_))
               (_eid88267_
                (gx#make-binding-id__% _key88265_ '#f _phi88262_ _ctx88263_))
               (_bind88269_
                (if (##structure-instance-of? _ctx88263_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88267_
                     _key88265_
                     _phi88262_
                     _ctx88263_)
                    (if (##structure-instance-of?
                         _ctx88263_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88267_
                         _key88265_
                         _phi88262_)
                        (if (##structure-instance-of?
                             _ctx88263_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88267_
                             _key88265_
                             _phi88262_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88267_
                             _key88265_
                             _phi88262_))))))
          (gx#bind-identifier!__%
           _id88260_
           _bind88269_
           _rebind?88261_
           _phi88262_
           _ctx88263_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88275_)
        (let* ((_rebind?88277_ '#f)
               (_phi88279_ (gx#current-expander-phi))
               (_ctx88281_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88275_
           _rebind?88277_
           _phi88279_
           _ctx88281_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88283_ _rebind?88284_)
        (let* ((_phi88286_ (gx#current-expander-phi))
               (_ctx88288_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88283_
           _rebind?88284_
           _phi88286_
           _ctx88288_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88290_ _rebind?88291_ _phi88292_)
        (let ((_ctx88294_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88290_
           _rebind?88291_
           _phi88292_
           _ctx88294_))))
    (define gx#core-bind-runtime!
      (lambda _g91050_
        (let ((_g91049_ (##length _g91050_)))
          (cond ((##fx= _g91049_ 1)
                 (apply (lambda (_id88275_)
                          (gx#core-bind-runtime!__0 _id88275_))
                        _g91050_))
                ((##fx= _g91049_ 2)
                 (apply (lambda (_id88283_ _rebind?88284_)
                          (gx#core-bind-runtime!__1 _id88283_ _rebind?88284_))
                        _g91050_))
                ((##fx= _g91049_ 3)
                 (apply (lambda (_id88290_ _rebind?88291_ _phi88292_)
                          (gx#core-bind-runtime!__2
                           _id88290_
                           _rebind?88291_
                           _phi88292_))
                        _g91050_))
                ((##fx= _g91049_ 4)
                 (apply (lambda (_id88296_
                                 _rebind?88297_
                                 _phi88298_
                                 _ctx88299_)
                          (gx#core-bind-runtime!__%
                           _id88296_
                           _rebind?88297_
                           _phi88298_
                           _ctx88299_))
                        _g91050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g91050_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88215_ _eid88216_ _rebind?88217_ _phi88218_ _ctx88219_)
        (let* ((_key88221_ (gx#core-identifier-key _id88215_))
               (_bind88223_
                (if (##structure-instance-of? _ctx88219_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88216_
                     _key88221_
                     _phi88218_
                     _ctx88219_)
                    (if (##structure-instance-of?
                         _ctx88219_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88216_
                         _key88221_
                         _phi88218_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88216_
                         _key88221_
                         _phi88218_)))))
          (gx#bind-identifier!__%
           _id88215_
           _bind88223_
           _rebind?88217_
           _phi88218_
           _ctx88219_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88229_ _eid88230_)
        (let* ((_rebind?88232_ '#f)
               (_phi88234_ (gx#current-expander-phi))
               (_ctx88236_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88229_
           _eid88230_
           _rebind?88232_
           _phi88234_
           _ctx88236_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88238_ _eid88239_ _rebind?88240_)
        (let* ((_phi88242_ (gx#current-expander-phi))
               (_ctx88244_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88238_
           _eid88239_
           _rebind?88240_
           _phi88242_
           _ctx88244_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88246_ _eid88247_ _rebind?88248_ _phi88249_)
        (let ((_ctx88251_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88246_
           _eid88247_
           _rebind?88248_
           _phi88249_
           _ctx88251_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91052_
        (let ((_g91051_ (##length _g91052_)))
          (cond ((##fx= _g91051_ 2)
                 (apply (lambda (_id88229_ _eid88230_)
                          (gx#core-bind-runtime-reference!__0
                           _id88229_
                           _eid88230_))
                        _g91052_))
                ((##fx= _g91051_ 3)
                 (apply (lambda (_id88238_ _eid88239_ _rebind?88240_)
                          (gx#core-bind-runtime-reference!__1
                           _id88238_
                           _eid88239_
                           _rebind?88240_))
                        _g91052_))
                ((##fx= _g91051_ 4)
                 (apply (lambda (_id88246_
                                 _eid88247_
                                 _rebind?88248_
                                 _phi88249_)
                          (gx#core-bind-runtime-reference!__2
                           _id88246_
                           _eid88247_
                           _rebind?88248_
                           _phi88249_))
                        _g91052_))
                ((##fx= _g91051_ 5)
                 (apply (lambda (_id88253_
                                 _eid88254_
                                 _rebind?88255_
                                 _phi88256_
                                 _ctx88257_)
                          (gx#core-bind-runtime-reference!__%
                           _id88253_
                           _eid88254_
                           _rebind?88255_
                           _phi88256_
                           _ctx88257_))
                        _g91052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91052_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88175_ _eid88176_ _rebind?88177_ _phi88178_ _ctx88179_)
        (gx#bind-identifier!__%
         _id88175_
         (##structure
          gx#extern-binding::t
          _eid88176_
          (gx#core-identifier-key _id88175_)
          _phi88178_)
         _rebind?88177_
         _phi88178_
         _ctx88179_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88184_ _eid88185_)
        (let* ((_rebind?88187_ '#f)
               (_phi88189_ (gx#current-expander-phi))
               (_ctx88191_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88184_
           _eid88185_
           _rebind?88187_
           _phi88189_
           _ctx88191_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88193_ _eid88194_ _rebind?88195_)
        (let* ((_phi88197_ (gx#current-expander-phi))
               (_ctx88199_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88193_
           _eid88194_
           _rebind?88195_
           _phi88197_
           _ctx88199_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88201_ _eid88202_ _rebind?88203_ _phi88204_)
        (let ((_ctx88206_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88201_
           _eid88202_
           _rebind?88203_
           _phi88204_
           _ctx88206_))))
    (define gx#core-bind-extern!
      (lambda _g91054_
        (let ((_g91053_ (##length _g91054_)))
          (cond ((##fx= _g91053_ 2)
                 (apply (lambda (_id88184_ _eid88185_)
                          (gx#core-bind-extern!__0 _id88184_ _eid88185_))
                        _g91054_))
                ((##fx= _g91053_ 3)
                 (apply (lambda (_id88193_ _eid88194_ _rebind?88195_)
                          (gx#core-bind-extern!__1
                           _id88193_
                           _eid88194_
                           _rebind?88195_))
                        _g91054_))
                ((##fx= _g91053_ 4)
                 (apply (lambda (_id88201_
                                 _eid88202_
                                 _rebind?88203_
                                 _phi88204_)
                          (gx#core-bind-extern!__2
                           _id88201_
                           _eid88202_
                           _rebind?88203_
                           _phi88204_))
                        _g91054_))
                ((##fx= _g91053_ 5)
                 (apply (lambda (_id88208_
                                 _eid88209_
                                 _rebind?88210_
                                 _phi88211_
                                 _ctx88212_)
                          (gx#core-bind-extern!__%
                           _id88208_
                           _eid88209_
                           _rebind?88210_
                           _phi88211_
                           _ctx88212_))
                        _g91054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91054_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88129_ _e88130_ _rebind?88131_ _phi88132_ _ctx88133_)
        (gx#bind-identifier!__%
         _id88129_
         (let ((_key88138_ (gx#core-identifier-key _id88129_))
               (_e88139_
                (if (or (##structure-instance-of? _e88130_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88130_
                         'gx#expander-context::t))
                    _e88130_
                    (##structure
                     gx#user-expander::t
                     _e88130_
                     _ctx88133_
                     _phi88132_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88138_ '#t _phi88132_ _ctx88133_)
            _key88138_
            _phi88132_
            _e88139_))
         _rebind?88131_
         _phi88132_
         _ctx88133_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88144_ _e88145_)
        (let* ((_rebind?88147_ '#f)
               (_phi88149_ (gx#current-expander-phi))
               (_ctx88151_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88144_
           _e88145_
           _rebind?88147_
           _phi88149_
           _ctx88151_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88153_ _e88154_ _rebind?88155_)
        (let* ((_phi88157_ (gx#current-expander-phi))
               (_ctx88159_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88153_
           _e88154_
           _rebind?88155_
           _phi88157_
           _ctx88159_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88161_ _e88162_ _rebind?88163_ _phi88164_)
        (let ((_ctx88166_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88161_
           _e88162_
           _rebind?88163_
           _phi88164_
           _ctx88166_))))
    (define gx#core-bind-syntax!
      (lambda _g91056_
        (let ((_g91055_ (##length _g91056_)))
          (cond ((##fx= _g91055_ 2)
                 (apply (lambda (_id88144_ _e88145_)
                          (gx#core-bind-syntax!__0 _id88144_ _e88145_))
                        _g91056_))
                ((##fx= _g91055_ 3)
                 (apply (lambda (_id88153_ _e88154_ _rebind?88155_)
                          (gx#core-bind-syntax!__1
                           _id88153_
                           _e88154_
                           _rebind?88155_))
                        _g91056_))
                ((##fx= _g91055_ 4)
                 (apply (lambda (_id88161_ _e88162_ _rebind?88163_ _phi88164_)
                          (gx#core-bind-syntax!__2
                           _id88161_
                           _e88162_
                           _rebind?88163_
                           _phi88164_))
                        _g91056_))
                ((##fx= _g91055_ 5)
                 (apply (lambda (_id88168_
                                 _e88169_
                                 _rebind?88170_
                                 _phi88171_
                                 _ctx88172_)
                          (gx#core-bind-syntax!__%
                           _id88168_
                           _e88169_
                           _rebind?88170_
                           _phi88171_
                           _ctx88172_))
                        _g91056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91056_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88112_ _e88113_ _rebind?88114_)
        (gx#core-bind-syntax!__%
         _id88112_
         _e88113_
         _rebind?88114_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88119_ _e88120_)
        (let ((_rebind?88122_ '#f))
          (gx#core-bind-root-syntax!__% _id88119_ _e88120_ _rebind?88122_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91058_
        (let ((_g91057_ (##length _g91058_)))
          (cond ((##fx= _g91057_ 2)
                 (apply (lambda (_id88119_ _e88120_)
                          (gx#core-bind-root-syntax!__0 _id88119_ _e88120_))
                        _g91058_))
                ((##fx= _g91057_ 3)
                 (apply (lambda (_id88124_ _e88125_ _rebind?88126_)
                          (gx#core-bind-root-syntax!__%
                           _id88124_
                           _e88125_
                           _rebind?88126_))
                        _g91058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91058_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88070_ _alias-id88071_ _rebind?88072_ _phi88073_ _ctx88074_)
        (gx#bind-identifier!__%
         _id88070_
         (let ((_key88076_ (gx#core-identifier-key _id88070_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88076_ '#t _phi88073_ _ctx88074_)
            _key88076_
            _phi88073_
            _alias-id88071_))
         _rebind?88072_
         _phi88073_
         _ctx88074_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88081_ _alias-id88082_)
        (let* ((_rebind?88084_ '#f)
               (_phi88086_ (gx#current-expander-phi))
               (_ctx88088_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88081_
           _alias-id88082_
           _rebind?88084_
           _phi88086_
           _ctx88088_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88090_ _alias-id88091_ _rebind?88092_)
        (let* ((_phi88094_ (gx#current-expander-phi))
               (_ctx88096_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88090_
           _alias-id88091_
           _rebind?88092_
           _phi88094_
           _ctx88096_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88098_ _alias-id88099_ _rebind?88100_ _phi88101_)
        (let ((_ctx88103_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88098_
           _alias-id88099_
           _rebind?88100_
           _phi88101_
           _ctx88103_))))
    (define gx#core-bind-alias!
      (lambda _g91060_
        (let ((_g91059_ (##length _g91060_)))
          (cond ((##fx= _g91059_ 2)
                 (apply (lambda (_id88081_ _alias-id88082_)
                          (gx#core-bind-alias!__0 _id88081_ _alias-id88082_))
                        _g91060_))
                ((##fx= _g91059_ 3)
                 (apply (lambda (_id88090_ _alias-id88091_ _rebind?88092_)
                          (gx#core-bind-alias!__1
                           _id88090_
                           _alias-id88091_
                           _rebind?88092_))
                        _g91060_))
                ((##fx= _g91059_ 4)
                 (apply (lambda (_id88098_
                                 _alias-id88099_
                                 _rebind?88100_
                                 _phi88101_)
                          (gx#core-bind-alias!__2
                           _id88098_
                           _alias-id88099_
                           _rebind?88100_
                           _phi88101_))
                        _g91060_))
                ((##fx= _g91059_ 5)
                 (apply (lambda (_id88105_
                                 _alias-id88106_
                                 _rebind?88107_
                                 _phi88108_
                                 _ctx88109_)
                          (gx#core-bind-alias!__%
                           _id88105_
                           _alias-id88106_
                           _rebind?88107_
                           _phi88108_
                           _ctx88109_))
                        _g91060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91060_))))))
    (define gx#make-binding-id__%
      (lambda (_key88027_ _syntax?88028_ _phi88029_ _ctx88030_)
        (if (uninterned-symbol? _key88027_)
            (gensym 'L)
            (if (pair? _key88027_)
                (gensym (car _key88027_))
                (if (##structure-instance-of? _ctx88030_ 'gx#top-context::t)
                    (let ((_ns88032_
                           (gx#core-context-namespace__% _ctx88030_)))
                      (if (and (fxzero? _phi88029_) (not _syntax?88028_))
                          (if _ns88032_
                              (make-symbol__1 _ns88032_ '"#" _key88027_)
                              _key88027_)
                          (if _syntax?88028_
                              (make-symbol__1
                               (let ((_$e88034_ _ns88032_))
                                 (if _$e88034_ _$e88034_ '""))
                               '"[:"
                               (number->string _phi88029_)
                               '":]#"
                               _key88027_)
                              (make-symbol__1
                               (let ((_$e88037_ _ns88032_))
                                 (if _$e88037_ _$e88037_ '""))
                               '"["
                               (number->string _phi88029_)
                               '"]#"
                               _key88027_))))
                    (gensym _key88027_))))))
    (define gx#make-binding-id__0
      (lambda (_key88043_)
        (let* ((_syntax?88045_ '#f)
               (_phi88047_ (gx#current-expander-phi))
               (_ctx88049_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88043_
           _syntax?88045_
           _phi88047_
           _ctx88049_))))
    (define gx#make-binding-id__1
      (lambda (_key88051_ _syntax?88052_)
        (let* ((_phi88054_ (gx#current-expander-phi))
               (_ctx88056_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88051_
           _syntax?88052_
           _phi88054_
           _ctx88056_))))
    (define gx#make-binding-id__2
      (lambda (_key88058_ _syntax?88059_ _phi88060_)
        (let ((_ctx88062_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88058_
           _syntax?88059_
           _phi88060_
           _ctx88062_))))
    (define gx#make-binding-id
      (lambda _g91062_
        (let ((_g91061_ (##length _g91062_)))
          (cond ((##fx= _g91061_ 1)
                 (apply (lambda (_key88043_)
                          (gx#make-binding-id__0 _key88043_))
                        _g91062_))
                ((##fx= _g91061_ 2)
                 (apply (lambda (_key88051_ _syntax?88052_)
                          (gx#make-binding-id__1 _key88051_ _syntax?88052_))
                        _g91062_))
                ((##fx= _g91061_ 3)
                 (apply (lambda (_key88058_ _syntax?88059_ _phi88060_)
                          (gx#make-binding-id__2
                           _key88058_
                           _syntax?88059_
                           _phi88060_))
                        _g91062_))
                ((##fx= _g91061_ 4)
                 (apply (lambda (_key88064_
                                 _syntax?88065_
                                 _phi88066_
                                 _ctx88067_)
                          (gx#make-binding-id__%
                           _key88064_
                           _syntax?88065_
                           _phi88066_
                           _ctx88067_))
                        _g91062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91062_))))))))
