(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710617602)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx88037_)
        (letrec ((_expand-special88039_
                  (lambda (_hd88041_ _K88042_ _rest88043_ _r88044_)
                    (_K88042_
                     _rest88043_
                     (cons (gx#core-expand-top _hd88041_) _r88044_)))))
          (gx#core-expand-block__0 _stx88037_ _expand-special88039_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx87790_)
        (letrec ((_expand-special87792_
                  (lambda (_hd87912_ _K87913_ _rest87914_ _r87915_)
                    (let* ((_K87919_
                            (lambda (_e87917_)
                              (_K87913_ _rest87914_ (cons _e87917_ _r87915_))))
                           (_e8792087949_ _hd87912_)
                           (_E8794487953_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8792087949_)))
                           (_E8794087965_
                            (lambda ()
                              (if (gx#stx-pair? _e8792087949_)
                                  (let ((_e8794587957_
                                         (gx#syntax-e _e8792087949_)))
                                    (let ((_hd8794687960_
                                           (##car _e8794587957_))
                                          (_tl8794787962_
                                           (##cdr _e8794587957_)))
                                      (if (and (gx#identifier? _hd8794687960_)
                                               (gx#core-identifier=?
                                                _hd8794687960_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K87919_
                                               (gx#core-expand-define-runtime%
                                                _hd87912_))
                                              (_E8794487953_))
                                          (_E8794487953_))))
                                  (_E8794487953_))))
                           (_E8793687977_
                            (lambda ()
                              (if (gx#stx-pair? _e8792087949_)
                                  (let ((_e8794187969_
                                         (gx#syntax-e _e8792087949_)))
                                    (let ((_hd8794287972_
                                           (##car _e8794187969_))
                                          (_tl8794387974_
                                           (##cdr _e8794187969_)))
                                      (if (and (gx#identifier? _hd8794287972_)
                                               (gx#core-identifier=?
                                                _hd8794287972_
                                                '%#define-alias))
                                          (if '#t
                                              (_K87919_
                                               (gx#core-expand-define-alias%
                                                _hd87912_))
                                              (_E8794087965_))
                                          (_E8794087965_))))
                                  (_E8794087965_))))
                           (_E8792687989_
                            (lambda ()
                              (if (gx#stx-pair? _e8792087949_)
                                  (let ((_e8793787981_
                                         (gx#syntax-e _e8792087949_)))
                                    (let ((_hd8793887984_
                                           (##car _e8793787981_))
                                          (_tl8793987986_
                                           (##cdr _e8793787981_)))
                                      (if (and (gx#identifier? _hd8793887984_)
                                               (gx#core-identifier=?
                                                _hd8793887984_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K87919_
                                               (gx#core-expand-define-syntax%
                                                _hd87912_))
                                              (_E8793687977_))
                                          (_E8793687977_))))
                                  (_E8793687977_))))
                           (_E8792288021_
                            (lambda ()
                              (if (gx#stx-pair? _e8792087949_)
                                  (let ((_e8792787993_
                                         (gx#syntax-e _e8792087949_)))
                                    (let ((_hd8792887996_
                                           (##car _e8792787993_))
                                          (_tl8792987998_
                                           (##cdr _e8792787993_)))
                                      (if (and (gx#identifier? _hd8792887996_)
                                               (gx#core-identifier=?
                                                _hd8792887996_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8792987998_)
                                              (let ((_e8793088001_
                                                     (gx#syntax-e
                                                      _tl8792987998_)))
                                                (let ((_hd8793188004_
                                                       (##car _e8793088001_))
                                                      (_tl8793288006_
                                                       (##cdr _e8793088001_)))
                                                  (let ((_hd-bind88009_
                                                         _hd8793188004_))
                                                    (if (gx#stx-pair?
                                                         _tl8793288006_)
                                                        (let ((_e8793388011_
                                                               (gx#syntax-e
                                                                _tl8793288006_)))
                                                          (let ((_hd8793488014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8793388011_))
                        (_tl8793588016_ (##cdr _e8793388011_)))
                    (let ((_expr88019_ _hd8793488014_))
                      (if (gx#stx-null? _tl8793588016_)
                          (if (gx#core-bind-values? _hd-bind88009_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88009_)
                                (_K87919_ _hd87912_))
                              (_E8792687989_))
                          (_E8792687989_)))))
                (_E8792687989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8792687989_))
                                          (_E8792687989_))))
                                  (_E8792687989_))))
                           (_E8792188033_
                            (lambda ()
                              (if (gx#stx-pair? _e8792087949_)
                                  (let ((_e8792388025_
                                         (gx#syntax-e _e8792087949_)))
                                    (let ((_hd8792488028_
                                           (##car _e8792388025_))
                                          (_tl8792588030_
                                           (##cdr _e8792388025_)))
                                      (if (and (gx#identifier? _hd8792488028_)
                                               (gx#core-identifier=?
                                                _hd8792488028_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K87919_
                                               (gx#core-expand-begin-syntax%
                                                _hd87912_))
                                              (_E8792288021_))
                                          (_E8792288021_))))
                                  (_E8792288021_)))))
                      (_E8792188033_))))
                 (_eval-body87793_
                  (lambda (_rbody87801_)
                    (let _lp87803_ ((_rest87805_ _rbody87801_)
                                    (_body87806_ '())
                                    (_ebody87807_ '()))
                      (let* ((_rest8780887816_ _rest87805_)
                             (_else8781087824_
                              (lambda ()
                                (values _body87806_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody87807_)
                                          (gx#stx-source _stx87790_))))))
                             (_K8781287900_
                              (lambda (_rest87827_ _hd87828_)
                                (let* ((_e8782987846_ _hd87828_)
                                       (_E8784187850_
                                        (lambda ()
                                          (_lp87803_
                                           _rest87827_
                                           (cons _hd87828_ _body87806_)
                                           (cons _hd87828_ _ebody87807_))))
                                       (_E8783187862_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8782987846_)
                                              (let ((_e8784287854_
                                                     (gx#syntax-e
                                                      _e8782987846_)))
                                                (let ((_hd8784387857_
                                                       (##car _e8784287854_))
                                                      (_tl8784487859_
                                                       (##cdr _e8784287854_)))
                                                  (if (and (gx#identifier?
                                                            _hd8784387857_)
                                                           (gx#core-identifier=?
                                                            _hd8784387857_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp87803_
                                                           _rest87827_
                                                           (cons _hd87828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body87806_)
                   _ebody87807_)
                  (_E8784187850_))
              (_E8784187850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8784187850_))))
                                       (_E8783087896_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8782987846_)
                                              (let ((_e8783287866_
                                                     (gx#syntax-e
                                                      _e8782987846_)))
                                                (let ((_hd8783387869_
                                                       (##car _e8783287866_))
                                                      (_tl8783487871_
                                                       (##cdr _e8783287866_)))
                                                  (if (and (gx#identifier?
                                                            _hd8783387869_)
                                                           (gx#core-identifier=?
                                                            _hd8783387869_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8783487871_)
                                                          (let ((_e8783587874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8783487871_)))
                    (let ((_hd8783687877_ (##car _e8783587874_))
                          (_tl8783787879_ (##cdr _e8783587874_)))
                      (let ((_hd-bind87882_ _hd8783687877_))
                        (if (gx#stx-pair? _tl8783787879_)
                            (let ((_e8783887884_ (gx#syntax-e _tl8783787879_)))
                              (let ((_hd8783987887_ (##car _e8783887884_))
                                    (_tl8784087889_ (##cdr _e8783887884_)))
                                (let ((_expr87892_ _hd8783987887_))
                                  (if (gx#stx-null? _tl8784087889_)
                                      (if '#t
                                          (let ((_ehd87894_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind87882_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr87892_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd87828_))))
                                            (_lp87803_
                                             _rest87827_
                                             (cons _ehd87894_ _body87806_)
                                             (cons _ehd87894_ _ebody87807_)))
                                          (_E8783187862_))
                                      (_E8783187862_)))))
                            (_E8783187862_)))))
                  (_E8783187862_))
              (_E8783187862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8783187862_)))))
                                  (_E8783087896_)))))
                        (if (##pair? _rest8780887816_)
                            (let ((_hd8781387903_ (##car _rest8780887816_))
                                  (_tl8781487905_ (##cdr _rest8780887816_)))
                              (let* ((_hd87908_ _hd8781387903_)
                                     (_rest87910_ _tl8781487905_))
                                (_K8781287900_ _rest87910_ _hd87908_)))
                            (_else8781087824_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody87796_
                     (gx#core-expand-block__1
                      _stx87790_
                      _expand-special87792_
                      '#f))
                    (_g88060_ (_eval-body87793_ _rbody87796_)))
               (begin
                 (let ((_g88061_
                        (if (##values? _g88060_)
                            (##vector-length _g88060_)
                            1)))
                   (if (not (##fx= _g88061_ 2))
                       (error "Context expects 2 values" _g88061_)))
                 (let ((_expanded-body87798_ (##vector-ref _g88060_ 0))
                       (_value87799_ (##vector-ref _g88060_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body87798_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value87799_ '())))
                    (gx#stx-source _stx87790_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx87760_)
        (let* ((_e8776187768_ _stx87760_)
               (_E8776387772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8776187768_)))
               (_E8776287786_
                (lambda ()
                  (if (gx#stx-pair? _e8776187768_)
                      (let ((_e8776487776_ (gx#syntax-e _e8776187768_)))
                        (let ((_hd8776587779_ (##car _e8776487776_))
                              (_tl8776687781_ (##cdr _e8776487776_)))
                          (let ((_body87784_ _tl8776687781_))
                            (if (gx#stx-list? _body87784_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body87784_)
                                 (gx#stx-source _stx87760_))
                                (_E8776387772_)))))
                      (_E8776387772_)))))
          (_E8776287786_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx87758_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx87758_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx87704_)
        (let* ((_e8770587718_ _stx87704_)
               (_E8770787722_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8770587718_)))
               (_E8770687754_
                (lambda ()
                  (if (gx#stx-pair? _e8770587718_)
                      (let ((_e8770887726_ (gx#syntax-e _e8770587718_)))
                        (let ((_hd8770987729_ (##car _e8770887726_))
                              (_tl8771087731_ (##cdr _e8770887726_)))
                          (if (gx#stx-pair? _tl8771087731_)
                              (let ((_e8771187734_
                                     (gx#syntax-e _tl8771087731_)))
                                (let ((_hd8771287737_ (##car _e8771187734_))
                                      (_tl8771387739_ (##cdr _e8771187734_)))
                                  (let ((_ann87742_ _hd8771287737_))
                                    (if (gx#stx-pair? _tl8771387739_)
                                        (let ((_e8771487744_
                                               (gx#syntax-e _tl8771387739_)))
                                          (let ((_hd8771587747_
                                                 (##car _e8771487744_))
                                                (_tl8771687749_
                                                 (##cdr _e8771487744_)))
                                            (let ((_expr87752_ _hd8771587747_))
                                              (if (gx#stx-null? _tl8771687749_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann87742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr87752_) '())))
               (gx#stx-source _stx87704_))
              (_E8770787722_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8770787722_)))))
                                        (_E8770787722_)))))
                              (_E8770787722_))))
                      (_E8770787722_)))))
          (_E8770687754_))))
    (define gx#core-expand-local-block
      (lambda (_stx87428_ _body87429_)
        (letrec ((_expand-special87431_
                  (lambda (_hd87699_ _K87700_ _rest87701_ _r87702_)
                    (_K87700_
                     '()
                     (cons (_expand-internal87432_ _hd87699_ _rest87701_)
                           _r87702_))))
                 (_expand-internal87432_
                  (lambda (_hd87695_ _rest87696_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal87434_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd87695_ _rest87696_))
                          (gx#stx-source _stx87428_))
                         _expand-internal-special87433_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88054
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88054)
                       __obj88054))))
                 (_expand-internal-special87433_
                  (lambda (_hd87590_ _K87591_ _rest87592_ _r87593_)
                    (let* ((_e8759487619_ _hd87590_)
                           (_E8761487623_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8759487619_)))
                           (_E8761087635_
                            (lambda ()
                              (if (gx#stx-pair? _e8759487619_)
                                  (let ((_e8761587627_
                                         (gx#syntax-e _e8759487619_)))
                                    (let ((_hd8761687630_
                                           (##car _e8761587627_))
                                          (_tl8761787632_
                                           (##cdr _e8761587627_)))
                                      (if (and (gx#identifier? _hd8761687630_)
                                               (gx#core-identifier=?
                                                _hd8761687630_
                                                '%#declare))
                                          (if '#t
                                              (_K87591_
                                               _rest87592_
                                               (cons (gx#core-expand-declare%
                                                      _hd87590_)
                                                     _r87593_))
                                              (_E8761487623_))
                                          (_E8761487623_))))
                                  (_E8761487623_))))
                           (_E8760687647_
                            (lambda ()
                              (if (gx#stx-pair? _e8759487619_)
                                  (let ((_e8761187639_
                                         (gx#syntax-e _e8759487619_)))
                                    (let ((_hd8761287642_
                                           (##car _e8761187639_))
                                          (_tl8761387644_
                                           (##cdr _e8761187639_)))
                                      (if (and (gx#identifier? _hd8761287642_)
                                               (gx#core-identifier=?
                                                _hd8761287642_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd87590_)
                                                (_K87591_
                                                 _rest87592_
                                                 _r87593_))
                                              (_E8761087635_))
                                          (_E8761087635_))))
                                  (_E8761087635_))))
                           (_E8759687659_
                            (lambda ()
                              (if (gx#stx-pair? _e8759487619_)
                                  (let ((_e8760787651_
                                         (gx#syntax-e _e8759487619_)))
                                    (let ((_hd8760887654_
                                           (##car _e8760787651_))
                                          (_tl8760987656_
                                           (##cdr _e8760787651_)))
                                      (if (and (gx#identifier? _hd8760887654_)
                                               (gx#core-identifier=?
                                                _hd8760887654_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd87590_)
                                                (_K87591_
                                                 _rest87592_
                                                 _r87593_))
                                              (_E8760687647_))
                                          (_E8760687647_))))
                                  (_E8760687647_))))
                           (_E8759587691_
                            (lambda ()
                              (if (gx#stx-pair? _e8759487619_)
                                  (let ((_e8759787663_
                                         (gx#syntax-e _e8759487619_)))
                                    (let ((_hd8759887666_
                                           (##car _e8759787663_))
                                          (_tl8759987668_
                                           (##cdr _e8759787663_)))
                                      (if (and (gx#identifier? _hd8759887666_)
                                               (gx#core-identifier=?
                                                _hd8759887666_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8759987668_)
                                              (let ((_e8760087671_
                                                     (gx#syntax-e
                                                      _tl8759987668_)))
                                                (let ((_hd8760187674_
                                                       (##car _e8760087671_))
                                                      (_tl8760287676_
                                                       (##cdr _e8760087671_)))
                                                  (let ((_hd-bind87679_
                                                         _hd8760187674_))
                                                    (if (gx#stx-pair?
                                                         _tl8760287676_)
                                                        (let ((_e8760387681_
                                                               (gx#syntax-e
                                                                _tl8760287676_)))
                                                          (let ((_hd8760487684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8760387681_))
                        (_tl8760587686_ (##cdr _e8760387681_)))
                    (let ((_expr87689_ _hd8760487684_))
                      (if (gx#stx-null? _tl8760587686_)
                          (if (gx#core-bind-values? _hd-bind87679_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87679_)
                                (_K87591_
                                 _rest87592_
                                 (cons _hd87590_ _r87593_)))
                              (_E8759687659_))
                          (_E8759687659_)))))
                (_E8759687659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8759687659_))
                                          (_E8759687659_))))
                                  (_E8759687659_)))))
                      (_E8759587691_))))
                 (_wrap-internal87434_
                  (lambda (_rbody87436_)
                    (let _lp87438_ ((_rest87440_ _rbody87436_)
                                    (_decls87441_ '())
                                    (_bind87442_ '())
                                    (_body87443_ '()))
                      (let* ((_e8744487451_ _rest87440_)
                             (_E8744687500_
                              (lambda ()
                                (let* ((_body87495_
                                        (let* ((_body8745487464_ _body87443_)
                                               (_else8745787472_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body87443_)
                                                   (gx#stx-source
                                                    _stx87428_)))))
                                          (let ((_K8746287492_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx87428_)))
                                                (_K8745987478_
                                                 (lambda (_expr87476_)
                                                   _expr87476_)))
                                            (let ((_try-match8745687488_
                                                   (lambda ()
                                                     (if (##pair? _body8745487464_)
                                                         (let ((_tl8746187483_
                                                                (##cdr _body8745487464_))
                                                               (_hd8746087481_
                                                                (##car _body8745487464_)))
                                                           (if (##null? _tl8746187483_)
                                                               (let ((_expr87486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8746087481_))
                         (_K8745987478_ _expr87486_))
                       (_else8745787472_)))
                 (_else8745787472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8745487464_)
                                                  (_K8746287492_)
                                                  (_try-match8745687488_))))))
                                       (_body87497_
                                        (if (null? _bind87442_)
                                            _body87495_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind87442_
                                                         (cons _body87495_
                                                               '())))
                                             (gx#stx-source _stx87428_)))))
                                  (if (null? _decls87441_)
                                      _body87497_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls87441_
                                                   (cons _body87497_ '())))
                                       (gx#stx-source _stx87428_))))))
                             (_E8744587586_
                              (lambda ()
                                (if (gx#stx-pair? _e8744487451_)
                                    (let ((_e8744787504_
                                           (gx#syntax-e _e8744487451_)))
                                      (let ((_hd8744887507_
                                             (##car _e8744787504_))
                                            (_tl8744987509_
                                             (##cdr _e8744787504_)))
                                        (let* ((_hd87512_ _hd8744887507_)
                                               (_rest87514_ _tl8744987509_))
                                          (if '#t
                                              (let* ((_e8751587532_ _hd87512_)
                                                     (_E8752787536_
                                                      (lambda ()
                                                        (if (null? _bind87442_)
                                                            (_lp87438_
                                                             _rest87514_
                                                             _decls87441_
                                                             _bind87442_
                                                             (cons _hd87512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body87443_))
                    (_lp87438_
                     _rest87514_
                     _decls87441_
                     (cons (cons '#f (cons _hd87512_ '())) _bind87442_)
                     _body87443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8751787550_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8751587532_)
                                                            (let ((_e8752887540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8751587532_)))
                      (let ((_hd8752987543_ (##car _e8752887540_))
                            (_tl8753087545_ (##cdr _e8752887540_)))
                        (if (and (gx#identifier? _hd8752987543_)
                                 (gx#core-identifier=?
                                  _hd8752987543_
                                  '%#declare))
                            (let ((_xdecls87548_ _tl8753087545_))
                              (if '#t
                                  (_lp87438_
                                   _rest87514_
                                   (gx#stx-foldr
                                    cons
                                    _decls87441_
                                    _xdecls87548_)
                                   _bind87442_
                                   _body87443_)
                                  (_E8752787536_)))
                            (_E8752787536_))))
                    (_E8752787536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8751687582_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8751587532_)
                                                            (let ((_e8751887554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8751587532_)))
                      (let ((_hd8751987557_ (##car _e8751887554_))
                            (_tl8752087559_ (##cdr _e8751887554_)))
                        (if (and (gx#identifier? _hd8751987557_)
                                 (gx#core-identifier=?
                                  _hd8751987557_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8752087559_)
                                (let ((_e8752187562_
                                       (gx#syntax-e _tl8752087559_)))
                                  (let ((_hd8752287565_ (##car _e8752187562_))
                                        (_tl8752387567_ (##cdr _e8752187562_)))
                                    (let ((_hd-bind87570_ _hd8752287565_))
                                      (if (gx#stx-pair? _tl8752387567_)
                                          (let ((_e8752487572_
                                                 (gx#syntax-e _tl8752387567_)))
                                            (let ((_hd8752587575_
                                                   (##car _e8752487572_))
                                                  (_tl8752687577_
                                                   (##cdr _e8752487572_)))
                                              (let ((_expr87580_
                                                     _hd8752587575_))
                                                (if (gx#stx-null?
                                                     _tl8752687577_)
                                                    (if '#t
                                                        (_lp87438_
                                                         _rest87514_
                                                         _decls87441_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind87570_)
                             (cons (gx#core-expand-expression _expr87580_)
                                   '()))
                       _bind87442_)
                 _body87443_)
                (_E8751787550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8751787550_)))))
                                          (_E8751787550_)))))
                                (_E8751787550_))
                            (_E8751787550_))))
                    (_E8751787550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8751687582_))
                                              (_E8744687500_)))))
                                    (_E8744687500_)))))
                        (_E8744587586_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body87429_)
            (gx#stx-source _stx87428_))
           _expand-special87431_))))
    (define gx#core-expand-declare%
      (lambda (_stx87366_)
        (let* ((_e8736787374_ _stx87366_)
               (_E8736987378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736787374_)))
               (_E8736887424_
                (lambda ()
                  (if (gx#stx-pair? _e8736787374_)
                      (let ((_e8737087382_ (gx#syntax-e _e8736787374_)))
                        (let ((_hd8737187385_ (##car _e8737087382_))
                              (_tl8737287387_ (##cdr _e8737087382_)))
                          (let ((_body87390_ _tl8737287387_))
                            (if (gx#stx-list? _body87390_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87392_)
                                     (let* ((_e8739387400_ _decl87392_)
                                            (_E8739587404_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8739387400_)))
                                            (_E8739487420_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8739387400_)
                                                   (let ((_e8739687408_
                                                          (gx#syntax-e
                                                           _e8739387400_)))
                                                     (let ((_hd8739787411_
                                                            (##car _e8739687408_))
                                                           (_tl8739887413_
                                                            (##cdr _e8739687408_)))
                                                       (let* ((_head87416_
                                                               _hd8739787411_)
                                                              (_args87418_
                                                               _tl8739887413_))
                                                         (if (gx#stx-list?
                                                              _args87418_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87392_)
                                                             (_E8739587404_)))))
                                                   (_E8739587404_)))))
                                       (_E8739487420_)))
                                   _body87390_))
                                 (gx#stx-source _stx87366_))
                                (_E8736987378_)))))
                      (_E8736987378_)))))
          (_E8736887424_))))
    (define gx#core-expand-extern%
      (lambda (_stx87270_)
        (let* ((_e8727187278_ _stx87270_)
               (_E8727387282_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8727187278_)))
               (_E8727287362_
                (lambda ()
                  (if (gx#stx-pair? _e8727187278_)
                      (let ((_e8727487286_ (gx#syntax-e _e8727187278_)))
                        (let ((_hd8727587289_ (##car _e8727487286_))
                              (_tl8727687291_ (##cdr _e8727487286_)))
                          (let ((_body87294_ _tl8727687291_))
                            (if '#t
                                (let _lp87296_ ((_rest87298_ _body87294_)
                                                (_r87299_ '()))
                                  (let* ((_e8730087314_ _rest87298_)
                                         (_E8731287318_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87270_)))
                                         (_E8730287322_
                                          (lambda ()
                                            (if (gx#stx-null? _e8730087314_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87299_))
                                                     (gx#stx-source
                                                      _stx87270_))
                                                    (_E8731287318_))
                                                (_E8731287318_))))
                                         (_E8730187358_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8730087314_)
                                                (let ((_e8730387326_
                                                       (gx#syntax-e
                                                        _e8730087314_)))
                                                  (let ((_hd8730487329_
                                                         (##car _e8730387326_))
                                                        (_tl8730587331_
                                                         (##cdr _e8730387326_)))
                                                    (if (gx#stx-pair?
                                                         _hd8730487329_)
                                                        (let ((_e8730687334_
                                                               (gx#syntax-e
                                                                _hd8730487329_)))
                                                          (let ((_hd8730787337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8730687334_))
                        (_tl8730887339_ (##cdr _e8730687334_)))
                    (let ((_id87342_ _hd8730787337_))
                      (if (gx#stx-pair? _tl8730887339_)
                          (let ((_e8730987344_ (gx#syntax-e _tl8730887339_)))
                            (let ((_hd8731087347_ (##car _e8730987344_))
                                  (_tl8731187349_ (##cdr _e8730987344_)))
                              (let ((_eid87352_ _hd8731087347_))
                                (if (gx#stx-null? _tl8731187349_)
                                    (let ((_rest87354_ _tl8730587331_))
                                      (if (and (gx#identifier? _id87342_)
                                               (gx#identifier? _eid87352_))
                                          (let ((_eid87356_
                                                 (gx#stx-e _eid87352_)))
                                            (gx#core-bind-extern!__0
                                             _id87342_
                                             _eid87356_)
                                            (_lp87296_
                                             _rest87354_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87342_)
                                                         (cons _eid87356_ '()))
                                                   _r87299_)))
                                          (_E8730287322_)))
                                    (_E8730287322_)))))
                          (_E8730287322_)))))
                (_E8730287322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8730287322_)))))
                                    (_E8730187358_)))
                                (_E8727387282_)))))
                      (_E8727387282_)))))
          (_E8727287362_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87216_)
        (let* ((_e8721787230_ _stx87216_)
               (_E8721987234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8721787230_)))
               (_E8721887266_
                (lambda ()
                  (if (gx#stx-pair? _e8721787230_)
                      (let ((_e8722087238_ (gx#syntax-e _e8721787230_)))
                        (let ((_hd8722187241_ (##car _e8722087238_))
                              (_tl8722287243_ (##cdr _e8722087238_)))
                          (if (gx#stx-pair? _tl8722287243_)
                              (let ((_e8722387246_
                                     (gx#syntax-e _tl8722287243_)))
                                (let ((_hd8722487249_ (##car _e8722387246_))
                                      (_tl8722587251_ (##cdr _e8722387246_)))
                                  (let ((_hd87254_ _hd8722487249_))
                                    (if (gx#stx-pair? _tl8722587251_)
                                        (let ((_e8722687256_
                                               (gx#syntax-e _tl8722587251_)))
                                          (let ((_hd8722787259_
                                                 (##car _e8722687256_))
                                                (_tl8722887261_
                                                 (##cdr _e8722687256_)))
                                            (let ((_expr87264_ _hd8722787259_))
                                              (if (gx#stx-null? _tl8722887261_)
                                                  (if (gx#core-bind-values?
                                                       _hd87254_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87254_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87254_)
                             (cons (gx#core-expand-expression _expr87264_)
                                   '())))
                 (gx#stx-source _stx87216_)))
              (_E8721987234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8721987234_)))))
                                        (_E8721987234_)))))
                              (_E8721987234_))))
                      (_E8721987234_)))))
          (_E8721887266_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87160_)
        (let* ((_e8716187174_ _stx87160_)
               (_E8716387178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8716187174_)))
               (_E8716287212_
                (lambda ()
                  (if (gx#stx-pair? _e8716187174_)
                      (let ((_e8716487182_ (gx#syntax-e _e8716187174_)))
                        (let ((_hd8716587185_ (##car _e8716487182_))
                              (_tl8716687187_ (##cdr _e8716487182_)))
                          (if (gx#stx-pair? _tl8716687187_)
                              (let ((_e8716787190_
                                     (gx#syntax-e _tl8716687187_)))
                                (let ((_hd8716887193_ (##car _e8716787190_))
                                      (_tl8716987195_ (##cdr _e8716787190_)))
                                  (let ((_id87198_ _hd8716887193_))
                                    (if (gx#stx-pair? _tl8716987195_)
                                        (let ((_e8717087200_
                                               (gx#syntax-e _tl8716987195_)))
                                          (let ((_hd8717187203_
                                                 (##car _e8717087200_))
                                                (_tl8717287205_
                                                 (##cdr _e8717087200_)))
                                            (let ((_binding-id87208_
                                                   _hd8717187203_))
                                              (if (gx#stx-null? _tl8717287205_)
                                                  (if (and (gx#identifier?
                                                            _id87198_)
                                                           (gx#identifier?
                                                            _binding-id87208_))
                                                      (let ((_eid87210_
                                                             (gx#stx-e
                                                              _binding-id87208_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87198_
                                                         _eid87210_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87198_)
                             (cons _eid87210_ '())))))
              (_E8716387178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8716387178_)))))
                                        (_E8716387178_)))))
                              (_E8716387178_))))
                      (_E8716387178_)))))
          (_E8716287212_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87103_)
        (let* ((_e8710487117_ _stx87103_)
               (_E8710687121_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8710487117_)))
               (_E8710587156_
                (lambda ()
                  (if (gx#stx-pair? _e8710487117_)
                      (let ((_e8710787125_ (gx#syntax-e _e8710487117_)))
                        (let ((_hd8710887128_ (##car _e8710787125_))
                              (_tl8710987130_ (##cdr _e8710787125_)))
                          (if (gx#stx-pair? _tl8710987130_)
                              (let ((_e8711087133_
                                     (gx#syntax-e _tl8710987130_)))
                                (let ((_hd8711187136_ (##car _e8711087133_))
                                      (_tl8711287138_ (##cdr _e8711087133_)))
                                  (let ((_id87141_ _hd8711187136_))
                                    (if (gx#stx-pair? _tl8711287138_)
                                        (let ((_e8711387143_
                                               (gx#syntax-e _tl8711287138_)))
                                          (let ((_hd8711487146_
                                                 (##car _e8711387143_))
                                                (_tl8711587148_
                                                 (##cdr _e8711387143_)))
                                            (let ((_expr87151_ _hd8711487146_))
                                              (if (gx#stx-null? _tl8711587148_)
                                                  (if (gx#identifier?
                                                       _id87141_)
                                                      (let ((_g88062_
                                                             (gx#core-expand-expression+1
                                                              _expr87151_)))
                                                        (begin
                                                          (let ((_g88063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88062_)
                             (##vector-length _g88062_)
                             1)))
                    (if (not (##fx= _g88063_ 2))
                        (error "Context expects 2 values" _g88063_)))
                  (let ((_e-stx87153_ (##vector-ref _g88062_ 0))
                        (_e87154_ (##vector-ref _g88062_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87141_ _e87154_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87141_)
                                   (cons _e-stx87153_ '())))
                       (gx#stx-source _stx87103_))))))
              (_E8710687121_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8710687121_)))))
                                        (_E8710687121_)))))
                              (_E8710687121_))))
                      (_E8710687121_)))))
          (_E8710587156_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87047_)
        (let* ((_e8704887061_ _stx87047_)
               (_E8705087065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704887061_)))
               (_E8704987099_
                (lambda ()
                  (if (gx#stx-pair? _e8704887061_)
                      (let ((_e8705187069_ (gx#syntax-e _e8704887061_)))
                        (let ((_hd8705287072_ (##car _e8705187069_))
                              (_tl8705387074_ (##cdr _e8705187069_)))
                          (if (gx#stx-pair? _tl8705387074_)
                              (let ((_e8705487077_
                                     (gx#syntax-e _tl8705387074_)))
                                (let ((_hd8705587080_ (##car _e8705487077_))
                                      (_tl8705687082_ (##cdr _e8705487077_)))
                                  (let ((_id87085_ _hd8705587080_))
                                    (if (gx#stx-pair? _tl8705687082_)
                                        (let ((_e8705787087_
                                               (gx#syntax-e _tl8705687082_)))
                                          (let ((_hd8705887090_
                                                 (##car _e8705787087_))
                                                (_tl8705987092_
                                                 (##cdr _e8705787087_)))
                                            (let ((_alias-id87095_
                                                   _hd8705887090_))
                                              (if (gx#stx-null? _tl8705987092_)
                                                  (if (and (gx#identifier?
                                                            _id87085_)
                                                           (gx#identifier?
                                                            _alias-id87095_))
                                                      (let ((_alias-id87097_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87095_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87085_
                                                         _alias-id87097_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87085_)
                             (cons _alias-id87097_ '())))))
              (_E8705087065_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8705087065_)))))
                                        (_E8705087065_)))))
                              (_E8705087065_))))
                      (_E8705087065_)))))
          (_E8704987099_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx86990_ _wrap?86991_)
        (let* ((_e8699287002_ _stx86990_)
               (_E8699487006_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699287002_)))
               (_E8699387033_
                (lambda ()
                  (if (gx#stx-pair? _e8699287002_)
                      (let ((_e8699587010_ (gx#syntax-e _e8699287002_)))
                        (let ((_hd8699687013_ (##car _e8699587010_))
                              (_tl8699787015_ (##cdr _e8699587010_)))
                          (if (gx#stx-pair? _tl8699787015_)
                              (let ((_e8699887018_
                                     (gx#syntax-e _tl8699787015_)))
                                (let ((_hd8699987021_ (##car _e8699887018_))
                                      (_tl8700087023_ (##cdr _e8699887018_)))
                                  (let* ((_hd87026_ _hd8699987021_)
                                         (_body87028_ _tl8700087023_))
                                    (if (gx#core-bind-values? _hd87026_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd87026_)
                                           (let ((_body87031_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd87026_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx86990_
                                                               _body87028_)
                                                              '()))))
                                             (if _wrap?86991_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body87031_)
                                                  (gx#stx-source _stx86990_))
                                                 _body87031_)))
                                         gx#current-expander-context
                                         (let ((__obj88055
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88055)
                                           __obj88055))
                                        (_E8699487006_)))))
                              (_E8699487006_))))
                      (_E8699487006_)))))
          (_E8699387033_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx87040_)
        (let ((_wrap?87042_ '#t))
          (gx#core-expand-lambda%__% _stx87040_ _wrap?87042_))))
    (define gx#core-expand-lambda%
      (lambda _g88065_
        (let ((_g88064_ (##length _g88065_)))
          (cond ((##fx= _g88064_ 1)
                 (apply (lambda (_stx87040_)
                          (gx#core-expand-lambda%__0 _stx87040_))
                        _g88065_))
                ((##fx= _g88064_ 2)
                 (apply (lambda (_stx87044_ _wrap?87045_)
                          (gx#core-expand-lambda%__% _stx87044_ _wrap?87045_))
                        _g88065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88065_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx86954_)
        (let* ((_e8695586962_ _stx86954_)
               (_E8695786966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695586962_)))
               (_E8695686985_
                (lambda ()
                  (if (gx#stx-pair? _e8695586962_)
                      (let ((_e8695886970_ (gx#syntax-e _e8695586962_)))
                        (let ((_hd8695986973_ (##car _e8695886970_))
                              (_tl8696086975_ (##cdr _e8695886970_)))
                          (let ((_clauses86978_ _tl8696086975_))
                            (if (gx#stx-list? _clauses86978_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause86980_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause86980_)
                                       (let ((_$e86982_
                                              (gx#stx-source _clause86980_)))
                                         (if _$e86982_
                                             _$e86982_
                                             (gx#stx-source _stx86954_))))
                                      '#f))
                                   _clauses86978_))
                                 (gx#stx-source _stx86954_))
                                (_E8695786966_)))))
                      (_E8695786966_)))))
          (_E8695686985_))))
    (define gx#core-expand-let-values%
      (lambda (_stx86908_)
        (let* ((_e8690986919_ _stx86908_)
               (_E8691186923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8690986919_)))
               (_E8691086950_
                (lambda ()
                  (if (gx#stx-pair? _e8690986919_)
                      (let ((_e8691286927_ (gx#syntax-e _e8690986919_)))
                        (let ((_hd8691386930_ (##car _e8691286927_))
                              (_tl8691486932_ (##cdr _e8691286927_)))
                          (if (gx#stx-pair? _tl8691486932_)
                              (let ((_e8691586935_
                                     (gx#syntax-e _tl8691486932_)))
                                (let ((_hd8691686938_ (##car _e8691586935_))
                                      (_tl8691786940_ (##cdr _e8691586935_)))
                                  (let* ((_hd86943_ _hd8691686938_)
                                         (_body86945_ _tl8691786940_))
                                    (if (gx#core-expand-let-bind? _hd86943_)
                                        (let ((_expressions86947_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd86943_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd86943_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd86943_
                                                           _expressions86947_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx86908_
                         _body86945_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx86908_)))
                                           gx#current-expander-context
                                           (let ((__obj88056
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88056)
                                             __obj88056)))
                                        (_E8691186923_)))))
                              (_E8691186923_))))
                      (_E8691186923_)))))
          (_E8691086950_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx86853_ _form86854_)
        (let* ((_e8685586865_ _stx86853_)
               (_E8685786869_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8685586865_)))
               (_E8685686894_
                (lambda ()
                  (if (gx#stx-pair? _e8685586865_)
                      (let ((_e8685886873_ (gx#syntax-e _e8685586865_)))
                        (let ((_hd8685986876_ (##car _e8685886873_))
                              (_tl8686086878_ (##cdr _e8685886873_)))
                          (if (gx#stx-pair? _tl8686086878_)
                              (let ((_e8686186881_
                                     (gx#syntax-e _tl8686086878_)))
                                (let ((_hd8686286884_ (##car _e8686186881_))
                                      (_tl8686386886_ (##cdr _e8686186881_)))
                                  (let* ((_hd86889_ _hd8686286884_)
                                         (_body86891_ _tl8686386886_))
                                    (if (gx#core-expand-let-bind? _hd86889_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd86889_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form86854_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd86889_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd86889_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx86853_
                                                               _body86891_)
                                                              '())))
                                            (gx#stx-source _stx86853_)))
                                         gx#current-expander-context
                                         (let ((__obj88057
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88057)
                                           __obj88057))
                                        (_E8685786869_)))))
                              (_E8685786869_))))
                      (_E8685786869_)))))
          (_E8685686894_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx86901_)
        (let ((_form86903_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx86901_ _form86903_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88067_
        (let ((_g88066_ (##length _g88067_)))
          (cond ((##fx= _g88066_ 1)
                 (apply (lambda (_stx86901_)
                          (gx#core-expand-letrec-values%__0 _stx86901_))
                        _g88067_))
                ((##fx= _g88066_ 2)
                 (apply (lambda (_stx86905_ _form86906_)
                          (gx#core-expand-letrec-values%__%
                           _stx86905_
                           _form86906_))
                        _g88067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88067_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx86850_)
        (gx#core-expand-letrec-values%__% _stx86850_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx86807_)
        (if (gx#stx-list? _stx86807_)
            (gx#stx-andmap
             (lambda (_bind86809_)
               (let* ((_e8681086820_ _bind86809_)
                      (_E8681286824_ (lambda () '#f))
                      (_E8681186846_
                       (lambda ()
                         (if (gx#stx-pair? _e8681086820_)
                             (let ((_e8681386828_ (gx#syntax-e _e8681086820_)))
                               (let ((_hd8681486831_ (##car _e8681386828_))
                                     (_tl8681586833_ (##cdr _e8681386828_)))
                                 (let ((_hd86836_ _hd8681486831_))
                                   (if (gx#stx-pair? _tl8681586833_)
                                       (let ((_e8681686838_
                                              (gx#syntax-e _tl8681586833_)))
                                         (let ((_hd8681786841_
                                                (##car _e8681686838_))
                                               (_tl8681886843_
                                                (##cdr _e8681686838_)))
                                           (if (gx#stx-null? _tl8681886843_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd86836_)
                                                   (_E8681286824_))
                                               (_E8681286824_))))
                                       (_E8681286824_)))))
                             (_E8681286824_)))))
                 (_E8681186846_)))
             _stx86807_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind86766_)
        (let* ((_e8676786777_ _bind86766_)
               (_E8676986781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8676786777_)))
               (_E8676886803_
                (lambda ()
                  (if (gx#stx-pair? _e8676786777_)
                      (let ((_e8677086785_ (gx#syntax-e _e8676786777_)))
                        (let ((_hd8677186788_ (##car _e8677086785_))
                              (_tl8677286790_ (##cdr _e8677086785_)))
                          (if (gx#stx-pair? _tl8677286790_)
                              (let ((_e8677386793_
                                     (gx#syntax-e _tl8677286790_)))
                                (let ((_hd8677486796_ (##car _e8677386793_))
                                      (_tl8677586798_ (##cdr _e8677386793_)))
                                  (let ((_expr86801_ _hd8677486796_))
                                    (if (gx#stx-null? _tl8677586798_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86801_)
                                            (_E8676986781_))
                                        (_E8676986781_)))))
                              (_E8676986781_))))
                      (_E8676986781_)))))
          (_E8676886803_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind86725_)
        (let* ((_e8672686736_ _bind86725_)
               (_E8672886740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8672686736_)))
               (_E8672786762_
                (lambda ()
                  (if (gx#stx-pair? _e8672686736_)
                      (let ((_e8672986744_ (gx#syntax-e _e8672686736_)))
                        (let ((_hd8673086747_ (##car _e8672986744_))
                              (_tl8673186749_ (##cdr _e8672986744_)))
                          (let ((_hd86752_ _hd8673086747_))
                            (if (gx#stx-pair? _tl8673186749_)
                                (let ((_e8673286754_
                                       (gx#syntax-e _tl8673186749_)))
                                  (let ((_hd8673386757_ (##car _e8673286754_))
                                        (_tl8673486759_ (##cdr _e8673286754_)))
                                    (if (gx#stx-null? _tl8673486759_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd86752_)
                                            (_E8672886740_))
                                        (_E8672886740_))))
                                (_E8672886740_)))))
                      (_E8672886740_)))))
          (_E8672786762_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind86683_ _expr86684_)
        (let* ((_e8668586695_ _bind86683_)
               (_E8668786699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8668586695_)))
               (_E8668686721_
                (lambda ()
                  (if (gx#stx-pair? _e8668586695_)
                      (let ((_e8668886703_ (gx#syntax-e _e8668586695_)))
                        (let ((_hd8668986706_ (##car _e8668886703_))
                              (_tl8669086708_ (##cdr _e8668886703_)))
                          (let ((_hd86711_ _hd8668986706_))
                            (if (gx#stx-pair? _tl8669086708_)
                                (let ((_e8669186713_
                                       (gx#syntax-e _tl8669086708_)))
                                  (let ((_hd8669286716_ (##car _e8669186713_))
                                        (_tl8669386718_ (##cdr _e8669186713_)))
                                    (if (gx#stx-null? _tl8669386718_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd86711_)
                                                  (cons _expr86684_ '()))
                                            (_E8668786699_))
                                        (_E8668786699_))))
                                (_E8668786699_)))))
                      (_E8668786699_)))))
          (_E8668686721_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx86637_)
        (let* ((_e8663886648_ _stx86637_)
               (_E8664086652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8663886648_)))
               (_E8663986679_
                (lambda ()
                  (if (gx#stx-pair? _e8663886648_)
                      (let ((_e8664186656_ (gx#syntax-e _e8663886648_)))
                        (let ((_hd8664286659_ (##car _e8664186656_))
                              (_tl8664386661_ (##cdr _e8664186656_)))
                          (if (gx#stx-pair? _tl8664386661_)
                              (let ((_e8664486664_
                                     (gx#syntax-e _tl8664386661_)))
                                (let ((_hd8664586667_ (##car _e8664486664_))
                                      (_tl8664686669_ (##cdr _e8664486664_)))
                                  (let* ((_hd86672_ _hd8664586667_)
                                         (_body86674_ _tl8664686669_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86672_)
                                        (let ((_expanders86676_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd86672_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd86672_
                                              _expanders86676_)
                                             (gx#core-expand-local-block
                                              _stx86637_
                                              _body86674_))
                                           gx#current-expander-context
                                           (let ((__obj88058
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88058)
                                             __obj88058)))
                                        (_E8664086652_)))))
                              (_E8664086652_))))
                      (_E8664086652_)))))
          (_E8663986679_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx86586_)
        (let* ((_e8658786597_ _stx86586_)
               (_E8658986601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8658786597_)))
               (_E8658886633_
                (lambda ()
                  (if (gx#stx-pair? _e8658786597_)
                      (let ((_e8659086605_ (gx#syntax-e _e8658786597_)))
                        (let ((_hd8659186608_ (##car _e8659086605_))
                              (_tl8659286610_ (##cdr _e8659086605_)))
                          (if (gx#stx-pair? _tl8659286610_)
                              (let ((_e8659386613_
                                     (gx#syntax-e _tl8659286610_)))
                                (let ((_hd8659486616_ (##car _e8659386613_))
                                      (_tl8659586618_ (##cdr _e8659386613_)))
                                  (let* ((_hd86621_ _hd8659486616_)
                                         (_body86623_ _tl8659586618_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86621_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd86621_
                                            (make-list
                                             (gx#stx-length _hd86621_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8662586628_
                                                     _g8662686630_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8662586628_
                                               _g8662686630_
                                               '#t))
                                            _hd86621_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd86621_))
                                           (gx#core-expand-local-block
                                            _stx86586_
                                            _body86623_))
                                         gx#current-expander-context
                                         (let ((__obj88059
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88059)
                                           __obj88059))
                                        (_E8658986601_)))))
                              (_E8658986601_))))
                      (_E8658986601_)))))
          (_E8658886633_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx86543_)
        (if (gx#stx-list? _stx86543_)
            (gx#stx-andmap
             (lambda (_bind86545_)
               (let* ((_e8654686556_ _bind86545_)
                      (_E8654886560_ (lambda () '#f))
                      (_E8654786582_
                       (lambda ()
                         (if (gx#stx-pair? _e8654686556_)
                             (let ((_e8654986564_ (gx#syntax-e _e8654686556_)))
                               (let ((_hd8655086567_ (##car _e8654986564_))
                                     (_tl8655186569_ (##cdr _e8654986564_)))
                                 (let ((_hd86572_ _hd8655086567_))
                                   (if (gx#stx-pair? _tl8655186569_)
                                       (let ((_e8655286574_
                                              (gx#syntax-e _tl8655186569_)))
                                         (let ((_hd8655386577_
                                                (##car _e8655286574_))
                                               (_tl8655486579_
                                                (##cdr _e8655286574_)))
                                           (if (gx#stx-null? _tl8655486579_)
                                               (if '#t
                                                   (gx#identifier? _hd86572_)
                                                   (_E8654886560_))
                                               (_E8654886560_))))
                                       (_E8654886560_)))))
                             (_E8654886560_)))))
                 (_E8654786582_)))
             _stx86543_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind86500_)
        (let* ((_e8650186511_ _bind86500_)
               (_E8650386515_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8650186511_)))
               (_E8650286539_
                (lambda ()
                  (if (gx#stx-pair? _e8650186511_)
                      (let ((_e8650486519_ (gx#syntax-e _e8650186511_)))
                        (let ((_hd8650586522_ (##car _e8650486519_))
                              (_tl8650686524_ (##cdr _e8650486519_)))
                          (if (gx#stx-pair? _tl8650686524_)
                              (let ((_e8650786527_
                                     (gx#syntax-e _tl8650686524_)))
                                (let ((_hd8650886530_ (##car _e8650786527_))
                                      (_tl8650986532_ (##cdr _e8650786527_)))
                                  (let ((_expr86535_ _hd8650886530_))
                                    (if (gx#stx-null? _tl8650986532_)
                                        (if '#t
                                            (let ((_g88068_
                                                   (gx#core-expand-expression+1
                                                    _expr86535_)))
                                              (begin
                                                (let ((_g88069_
                                                       (if (##values? _g88068_)
                                                           (##vector-length
                                                            _g88068_)
                                                           1)))
                                                  (if (not (##fx= _g88069_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88069_)))
                                                (let ((_e86537_
                                                       (##vector-ref
                                                        _g88068_
                                                        1)))
                                                  _e86537_)))
                                            (_E8650386515_))
                                        (_E8650386515_)))))
                              (_E8650386515_))))
                      (_E8650386515_)))))
          (_E8650286539_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind86445_ _e86446_ _rebind?86447_)
        (let* ((_e8644886458_ _bind86445_)
               (_E8645086462_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8644886458_)))
               (_E8644986484_
                (lambda ()
                  (if (gx#stx-pair? _e8644886458_)
                      (let ((_e8645186466_ (gx#syntax-e _e8644886458_)))
                        (let ((_hd8645286469_ (##car _e8645186466_))
                              (_tl8645386471_ (##cdr _e8645186466_)))
                          (let ((_id86474_ _hd8645286469_))
                            (if (gx#stx-pair? _tl8645386471_)
                                (let ((_e8645486476_
                                       (gx#syntax-e _tl8645386471_)))
                                  (let ((_hd8645586479_ (##car _e8645486476_))
                                        (_tl8645686481_ (##cdr _e8645486476_)))
                                    (if (gx#stx-null? _tl8645686481_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id86474_
                                             _e86446_
                                             _rebind?86447_)
                                            (_E8645086462_))
                                        (_E8645086462_))))
                                (_E8645086462_)))))
                      (_E8645086462_)))))
          (_E8644986484_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind86491_ _e86492_)
        (let ((_rebind?86494_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind86491_
           _e86492_
           _rebind?86494_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88071_
        (let ((_g88070_ (##length _g88071_)))
          (cond ((##fx= _g88070_ 2)
                 (apply (lambda (_bind86491_ _e86492_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind86491_
                           _e86492_))
                        _g88071_))
                ((##fx= _g88070_ 3)
                 (apply (lambda (_bind86496_ _e86497_ _rebind?86498_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind86496_
                           _e86497_
                           _rebind?86498_))
                        _g88071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88071_))))))
    (define gx#core-expand-expression%
      (lambda (_stx86403_)
        (let* ((_e8640486414_ _stx86403_)
               (_E8640686418_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8640486414_)))
               (_E8640586440_
                (lambda ()
                  (if (gx#stx-pair? _e8640486414_)
                      (let ((_e8640786422_ (gx#syntax-e _e8640486414_)))
                        (let ((_hd8640886425_ (##car _e8640786422_))
                              (_tl8640986427_ (##cdr _e8640786422_)))
                          (if (gx#stx-pair? _tl8640986427_)
                              (let ((_e8641086430_
                                     (gx#syntax-e _tl8640986427_)))
                                (let ((_hd8641186433_ (##car _e8641086430_))
                                      (_tl8641286435_ (##cdr _e8641086430_)))
                                  (let ((_expr86438_ _hd8641186433_))
                                    (if (gx#stx-null? _tl8641286435_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86438_)
                                            (_E8640686418_))
                                        (_E8640686418_)))))
                              (_E8640686418_))))
                      (_E8640686418_)))))
          (_E8640586440_))))
    (define gx#core-expand-quote%
      (lambda (_stx86362_)
        (let* ((_e8636386373_ _stx86362_)
               (_E8636586377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8636386373_)))
               (_E8636486399_
                (lambda ()
                  (if (gx#stx-pair? _e8636386373_)
                      (let ((_e8636686381_ (gx#syntax-e _e8636386373_)))
                        (let ((_hd8636786384_ (##car _e8636686381_))
                              (_tl8636886386_ (##cdr _e8636686381_)))
                          (if (gx#stx-pair? _tl8636886386_)
                              (let ((_e8636986389_
                                     (gx#syntax-e _tl8636886386_)))
                                (let ((_hd8637086392_ (##car _e8636986389_))
                                      (_tl8637186394_ (##cdr _e8636986389_)))
                                  (let ((_e86397_ _hd8637086392_))
                                    (if (gx#stx-null? _tl8637186394_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e86397_)
                                                         '()))
                                             (gx#stx-source _stx86362_))
                                            (_E8636586377_))
                                        (_E8636586377_)))))
                              (_E8636586377_))))
                      (_E8636586377_)))))
          (_E8636486399_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86321_)
        (let* ((_e8632286332_ _stx86321_)
               (_E8632486336_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8632286332_)))
               (_E8632386358_
                (lambda ()
                  (if (gx#stx-pair? _e8632286332_)
                      (let ((_e8632586340_ (gx#syntax-e _e8632286332_)))
                        (let ((_hd8632686343_ (##car _e8632586340_))
                              (_tl8632786345_ (##cdr _e8632586340_)))
                          (if (gx#stx-pair? _tl8632786345_)
                              (let ((_e8632886348_
                                     (gx#syntax-e _tl8632786345_)))
                                (let ((_hd8632986351_ (##car _e8632886348_))
                                      (_tl8633086353_ (##cdr _e8632886348_)))
                                  (let ((_e86356_ _hd8632986351_))
                                    (if (gx#stx-null? _tl8633086353_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86356_)
                                                         '()))
                                             (gx#stx-source _stx86321_))
                                            (_E8632486336_))
                                        (_E8632486336_)))))
                              (_E8632486336_))))
                      (_E8632486336_)))))
          (_E8632386358_))))
    (define gx#core-expand-call%
      (lambda (_stx86278_)
        (let* ((_e8627986289_ _stx86278_)
               (_E8628186293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8627986289_)))
               (_E8628086317_
                (lambda ()
                  (if (gx#stx-pair? _e8627986289_)
                      (let ((_e8628286297_ (gx#syntax-e _e8627986289_)))
                        (let ((_hd8628386300_ (##car _e8628286297_))
                              (_tl8628486302_ (##cdr _e8628286297_)))
                          (if (gx#stx-pair? _tl8628486302_)
                              (let ((_e8628586305_
                                     (gx#syntax-e _tl8628486302_)))
                                (let ((_hd8628686308_ (##car _e8628586305_))
                                      (_tl8628786310_ (##cdr _e8628586305_)))
                                  (let* ((_rator86313_ _hd8628686308_)
                                         (_args86315_ _tl8628786310_))
                                    (if (gx#stx-list? _args86315_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86313_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86315_))
                                         (gx#stx-source _stx86278_))
                                        (_E8628186293_)))))
                              (_E8628186293_))))
                      (_E8628186293_)))))
          (_E8628086317_))))
    (define gx#core-expand-if%
      (lambda (_stx86211_)
        (let* ((_e8621286228_ _stx86211_)
               (_E8621486232_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8621286228_)))
               (_E8621386274_
                (lambda ()
                  (if (gx#stx-pair? _e8621286228_)
                      (let ((_e8621586236_ (gx#syntax-e _e8621286228_)))
                        (let ((_hd8621686239_ (##car _e8621586236_))
                              (_tl8621786241_ (##cdr _e8621586236_)))
                          (if (gx#stx-pair? _tl8621786241_)
                              (let ((_e8621886244_
                                     (gx#syntax-e _tl8621786241_)))
                                (let ((_hd8621986247_ (##car _e8621886244_))
                                      (_tl8622086249_ (##cdr _e8621886244_)))
                                  (let ((_test86252_ _hd8621986247_))
                                    (if (gx#stx-pair? _tl8622086249_)
                                        (let ((_e8622186254_
                                               (gx#syntax-e _tl8622086249_)))
                                          (let ((_hd8622286257_
                                                 (##car _e8622186254_))
                                                (_tl8622386259_
                                                 (##cdr _e8622186254_)))
                                            (let ((_K86262_ _hd8622286257_))
                                              (if (gx#stx-pair? _tl8622386259_)
                                                  (let ((_e8622486264_
                                                         (gx#syntax-e
                                                          _tl8622386259_)))
                                                    (let ((_hd8622586267_
                                                           (##car _e8622486264_))
                                                          (_tl8622686269_
                                                           (##cdr _e8622486264_)))
                                                      (let ((_E86272_
                                                             _hd8622586267_))
                                                        (if (gx#stx-null?
                                                             _tl8622686269_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86252_)
                                     (cons (gx#core-expand-expression _K86262_)
                                           (cons (gx#core-expand-expression
                                                  _E86272_)
                                                 '()))))
                         (gx#stx-source _stx86211_))
                        (_E8621486232_))
                    (_E8621486232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8621486232_)))))
                                        (_E8621486232_)))))
                              (_E8621486232_))))
                      (_E8621486232_)))))
          (_E8621386274_))))
    (define gx#core-expand-ref%
      (lambda (_stx86170_)
        (let* ((_e8617186181_ _stx86170_)
               (_E8617386185_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8617186181_)))
               (_E8617286207_
                (lambda ()
                  (if (gx#stx-pair? _e8617186181_)
                      (let ((_e8617486189_ (gx#syntax-e _e8617186181_)))
                        (let ((_hd8617586192_ (##car _e8617486189_))
                              (_tl8617686194_ (##cdr _e8617486189_)))
                          (if (gx#stx-pair? _tl8617686194_)
                              (let ((_e8617786197_
                                     (gx#syntax-e _tl8617686194_)))
                                (let ((_hd8617886200_ (##car _e8617786197_))
                                      (_tl8617986202_ (##cdr _e8617786197_)))
                                  (let ((_id86205_ _hd8617886200_))
                                    (if (gx#stx-null? _tl8617986202_)
                                        (if (gx#identifier? _id86205_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86205_
                                                          _stx86170_)
                                                         '()))
                                             (gx#stx-source _stx86170_))
                                            (_E8617386185_))
                                        (_E8617386185_)))))
                              (_E8617386185_))))
                      (_E8617386185_)))))
          (_E8617286207_))))
    (define gx#core-expand-setq%
      (lambda (_stx86116_)
        (let* ((_e8611786130_ _stx86116_)
               (_E8611986134_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8611786130_)))
               (_E8611886166_
                (lambda ()
                  (if (gx#stx-pair? _e8611786130_)
                      (let ((_e8612086138_ (gx#syntax-e _e8611786130_)))
                        (let ((_hd8612186141_ (##car _e8612086138_))
                              (_tl8612286143_ (##cdr _e8612086138_)))
                          (if (gx#stx-pair? _tl8612286143_)
                              (let ((_e8612386146_
                                     (gx#syntax-e _tl8612286143_)))
                                (let ((_hd8612486149_ (##car _e8612386146_))
                                      (_tl8612586151_ (##cdr _e8612386146_)))
                                  (let ((_id86154_ _hd8612486149_))
                                    (if (gx#stx-pair? _tl8612586151_)
                                        (let ((_e8612686156_
                                               (gx#syntax-e _tl8612586151_)))
                                          (let ((_hd8612786159_
                                                 (##car _e8612686156_))
                                                (_tl8612886161_
                                                 (##cdr _e8612686156_)))
                                            (let ((_expr86164_ _hd8612786159_))
                                              (if (gx#stx-null? _tl8612886161_)
                                                  (if (gx#identifier?
                                                       _id86154_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86154_
                            _stx86116_)
                           (cons (gx#core-expand-expression _expr86164_) '())))
               (gx#stx-source _stx86116_))
              (_E8611986134_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8611986134_)))))
                                        (_E8611986134_)))))
                              (_E8611986134_))))
                      (_E8611986134_)))))
          (_E8611886166_))))
    (define gx#macro-expand-extern
      (lambda (_stx85964_)
        (letrec ((_generate85966_
                  (lambda (_body85996_)
                    (let _lp85998_ ((_rest86000_ _body85996_)
                                    (_ns86001_ (gx#core-context-namespace__0))
                                    (_r86002_ '()))
                      (let* ((_e8600386018_ _rest86000_)
                             (_E8601686022_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8600386018_)))
                             (_E8601286026_
                              (lambda ()
                                (if (gx#stx-null? _e8600386018_)
                                    (if '#t (reverse _r86002_) (_E8601686022_))
                                    (_E8601686022_))))
                             (_E8600586083_
                              (lambda ()
                                (if (gx#stx-pair? _e8600386018_)
                                    (let ((_e8601386030_
                                           (gx#syntax-e _e8600386018_)))
                                      (let ((_hd8601486033_
                                             (##car _e8601386030_))
                                            (_tl8601586035_
                                             (##cdr _e8601386030_)))
                                        (let* ((_hd86038_ _hd8601486033_)
                                               (_rest86040_ _tl8601586035_))
                                          (if '#t
                                              (if (gx#identifier? _hd86038_)
                                                  (_lp85998_
                                                   _rest86040_
                                                   _ns86001_
                                                   (cons (cons _hd86038_
                                                               (cons (if _ns86001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd86038_
                                  _ns86001_
                                  '"#"
                                  _hd86038_)
                                 _hd86038_)
                             '()))
                 _r86002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8604186051_
                                                          _hd86038_)
                                                         (_E8604386055_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8604186051_)))
                                                         (_E8604286079_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8604186051_)
                        (let ((_e8604486059_ (gx#syntax-e _e8604186051_)))
                          (let ((_hd8604586062_ (##car _e8604486059_))
                                (_tl8604686064_ (##cdr _e8604486059_)))
                            (let ((_id86067_ _hd8604586062_))
                              (if (gx#stx-pair? _tl8604686064_)
                                  (let ((_e8604786069_
                                         (gx#syntax-e _tl8604686064_)))
                                    (let ((_hd8604886072_
                                           (##car _e8604786069_))
                                          (_tl8604986074_
                                           (##cdr _e8604786069_)))
                                      (let ((_eid86077_ _hd8604886072_))
                                        (if (gx#stx-null? _tl8604986074_)
                                            (if (and (gx#identifier? _id86067_)
                                                     (gx#identifier?
                                                      _eid86077_))
                                                (_lp85998_
                                                 _rest86040_
                                                 _ns86001_
                                                 (cons (cons _id86067_
                                                             (cons _eid86077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r86002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8604386055_))
                                            (_E8604386055_)))))
                                  (_E8604386055_)))))
                        (_E8604386055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8604286079_)))
                                              (_E8601286026_)))))
                                    (_E8601286026_))))
                             (_E8600486112_
                              (lambda ()
                                (if (gx#stx-pair? _e8600386018_)
                                    (let ((_e8600686087_
                                           (gx#syntax-e _e8600386018_)))
                                      (let ((_hd8600786090_
                                             (##car _e8600686087_))
                                            (_tl8600886092_
                                             (##cdr _e8600686087_)))
                                        (if (eq? (gx#stx-e _hd8600786090_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8600886092_)
                                                (let ((_e8600986095_
                                                       (gx#syntax-e
                                                        _tl8600886092_)))
                                                  (let ((_hd8601086098_
                                                         (##car _e8600986095_))
                                                        (_tl8601186100_
                                                         (##cdr _e8600986095_)))
                                                    (let* ((_ns86103_
                                                            _hd8601086098_)
                                                           (_rest86105_
                                                            _tl8601186100_))
                                                      (if '#t
                                                          (let ((_ns86110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86103_)
                             (symbol->string (gx#stx-e _ns86103_))
                             (if (or (gx#stx-string? _ns86103_)
                                     (gx#stx-false? _ns86103_))
                                 (gx#stx-e _ns86103_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx85964_
                                  _ns86103_)))))
                    (_lp85998_ _rest86105_ _ns86110_ _r86002_))
                  (_E8600586083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8600586083_))
                                            (_E8600586083_))))
                                    (_E8600586083_)))))
                        (_E8600486112_))))))
          (let* ((_e8596785974_ _stx85964_)
                 (_E8596985978_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8596785974_)))
                 (_E8596885992_
                  (lambda ()
                    (if (gx#stx-pair? _e8596785974_)
                        (let ((_e8597085982_ (gx#syntax-e _e8596785974_)))
                          (let ((_hd8597185985_ (##car _e8597085982_))
                                (_tl8597285987_ (##cdr _e8597085982_)))
                            (let ((_body85990_ _tl8597285987_))
                              (if (gx#stx-list? _body85990_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate85966_ _body85990_))
                                  (_E8596985978_)))))
                        (_E8596985978_)))))
            (_E8596885992_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx85910_)
        (let* ((_e8591185924_ _stx85910_)
               (_E8591385928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8591185924_)))
               (_E8591285960_
                (lambda ()
                  (if (gx#stx-pair? _e8591185924_)
                      (let ((_e8591485932_ (gx#syntax-e _e8591185924_)))
                        (let ((_hd8591585935_ (##car _e8591485932_))
                              (_tl8591685937_ (##cdr _e8591485932_)))
                          (if (gx#stx-pair? _tl8591685937_)
                              (let ((_e8591785940_
                                     (gx#syntax-e _tl8591685937_)))
                                (let ((_hd8591885943_ (##car _e8591785940_))
                                      (_tl8591985945_ (##cdr _e8591785940_)))
                                  (let ((_hd85948_ _hd8591885943_))
                                    (if (gx#stx-pair? _tl8591985945_)
                                        (let ((_e8592085950_
                                               (gx#syntax-e _tl8591985945_)))
                                          (let ((_hd8592185953_
                                                 (##car _e8592085950_))
                                                (_tl8592285955_
                                                 (##cdr _e8592085950_)))
                                            (let ((_expr85958_ _hd8592185953_))
                                              (if (gx#stx-null? _tl8592285955_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd85948_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd85948_)
                          (cons _expr85958_ '())))
              (_E8591385928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8591385928_)))))
                                        (_E8591385928_)))))
                              (_E8591385928_))))
                      (_E8591385928_)))))
          (_E8591285960_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx85856_)
        (let* ((_e8585785870_ _stx85856_)
               (_E8585985874_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8585785870_)))
               (_E8585885906_
                (lambda ()
                  (if (gx#stx-pair? _e8585785870_)
                      (let ((_e8586085878_ (gx#syntax-e _e8585785870_)))
                        (let ((_hd8586185881_ (##car _e8586085878_))
                              (_tl8586285883_ (##cdr _e8586085878_)))
                          (if (gx#stx-pair? _tl8586285883_)
                              (let ((_e8586385886_
                                     (gx#syntax-e _tl8586285883_)))
                                (let ((_hd8586485889_ (##car _e8586385886_))
                                      (_tl8586585891_ (##cdr _e8586385886_)))
                                  (let ((_hd85894_ _hd8586485889_))
                                    (if (gx#stx-pair? _tl8586585891_)
                                        (let ((_e8586685896_
                                               (gx#syntax-e _tl8586585891_)))
                                          (let ((_hd8586785899_
                                                 (##car _e8586685896_))
                                                (_tl8586885901_
                                                 (##cdr _e8586685896_)))
                                            (let ((_expr85904_ _hd8586785899_))
                                              (if (gx#stx-null? _tl8586885901_)
                                                  (if (gx#identifier?
                                                       _hd85894_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd85894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr85904_ '())))
              (_E8585985874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8585985874_)))))
                                        (_E8585985874_)))))
                              (_E8585985874_))))
                      (_E8585985874_)))))
          (_E8585885906_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx85802_)
        (let* ((_e8580385816_ _stx85802_)
               (_E8580585820_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8580385816_)))
               (_E8580485852_
                (lambda ()
                  (if (gx#stx-pair? _e8580385816_)
                      (let ((_e8580685824_ (gx#syntax-e _e8580385816_)))
                        (let ((_hd8580785827_ (##car _e8580685824_))
                              (_tl8580885829_ (##cdr _e8580685824_)))
                          (if (gx#stx-pair? _tl8580885829_)
                              (let ((_e8580985832_
                                     (gx#syntax-e _tl8580885829_)))
                                (let ((_hd8581085835_ (##car _e8580985832_))
                                      (_tl8581185837_ (##cdr _e8580985832_)))
                                  (let ((_id85840_ _hd8581085835_))
                                    (if (gx#stx-pair? _tl8581185837_)
                                        (let ((_e8581285842_
                                               (gx#syntax-e _tl8581185837_)))
                                          (let ((_hd8581385845_
                                                 (##car _e8581285842_))
                                                (_tl8581485847_
                                                 (##cdr _e8581285842_)))
                                            (let ((_alias-id85850_
                                                   _hd8581385845_))
                                              (if (gx#stx-null? _tl8581485847_)
                                                  (if (and (gx#identifier?
                                                            _id85840_)
                                                           (gx#identifier?
                                                            _alias-id85850_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id85840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id85850_ '())))
              (_E8580585820_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8580585820_)))))
                                        (_E8580585820_)))))
                              (_E8580585820_))))
                      (_E8580585820_)))))
          (_E8580485852_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx85759_)
        (let* ((_e8576085770_ _stx85759_)
               (_E8576285774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8576085770_)))
               (_E8576185798_
                (lambda ()
                  (if (gx#stx-pair? _e8576085770_)
                      (let ((_e8576385778_ (gx#syntax-e _e8576085770_)))
                        (let ((_hd8576485781_ (##car _e8576385778_))
                              (_tl8576585783_ (##cdr _e8576385778_)))
                          (if (gx#stx-pair? _tl8576585783_)
                              (let ((_e8576685786_
                                     (gx#syntax-e _tl8576585783_)))
                                (let ((_hd8576785789_ (##car _e8576685786_))
                                      (_tl8576885791_ (##cdr _e8576685786_)))
                                  (let* ((_hd85794_ _hd8576785789_)
                                         (_body85796_ _tl8576885791_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd85794_)
                                             (gx#stx-list? _body85796_)
                                             (not (gx#stx-null? _body85796_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd85794_)
                                         _body85796_)
                                        (_E8576285774_)))))
                              (_E8576285774_))))
                      (_E8576285774_)))))
          (_E8576185798_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx85695_)
        (letrec ((_generate85697_
                  (lambda (_clause85727_)
                    (let* ((_e8572885735_ _clause85727_)
                           (_E8573085739_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx85695_
                               _clause85727_)))
                           (_E8572985755_
                            (lambda ()
                              (if (gx#stx-pair? _e8572885735_)
                                  (let ((_e8573185743_
                                         (gx#syntax-e _e8572885735_)))
                                    (let ((_hd8573285746_
                                           (##car _e8573185743_))
                                          (_tl8573385748_
                                           (##cdr _e8573185743_)))
                                      (let* ((_hd85751_ _hd8573285746_)
                                             (_body85753_ _tl8573385748_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd85751_)
                                                 (gx#stx-list? _body85753_)
                                                 (not (gx#stx-null?
                                                       _body85753_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd85751_)
                                                   _body85753_)
                                             (gx#stx-source _clause85727_))
                                            (_E8573085739_)))))
                                  (_E8573085739_)))))
                      (_E8572985755_)))))
          (let* ((_e8569885705_ _stx85695_)
                 (_E8570085709_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8569885705_)))
                 (_E8569985723_
                  (lambda ()
                    (if (gx#stx-pair? _e8569885705_)
                        (let ((_e8570185713_ (gx#syntax-e _e8569885705_)))
                          (let ((_hd8570285716_ (##car _e8570185713_))
                                (_tl8570385718_ (##cdr _e8570185713_)))
                            (let ((_clauses85721_ _tl8570385718_))
                              (if (gx#stx-list? _clauses85721_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate85697_
                                    _clauses85721_))
                                  (_E8570085709_)))))
                        (_E8570085709_)))))
            (_E8569985723_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx85596_ _form85597_)
        (letrec ((_generate85599_
                  (lambda (_bind85642_)
                    (let* ((_e8564385653_ _bind85642_)
                           (_E8564585657_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx85596_
                               _bind85642_)))
                           (_E8564485681_
                            (lambda ()
                              (if (gx#stx-pair? _e8564385653_)
                                  (let ((_e8564685661_
                                         (gx#syntax-e _e8564385653_)))
                                    (let ((_hd8564785664_
                                           (##car _e8564685661_))
                                          (_tl8564885666_
                                           (##cdr _e8564685661_)))
                                      (let ((_ids85669_ _hd8564785664_))
                                        (if (gx#stx-pair? _tl8564885666_)
                                            (let ((_e8564985671_
                                                   (gx#syntax-e
                                                    _tl8564885666_)))
                                              (let ((_hd8565085674_
                                                     (##car _e8564985671_))
                                                    (_tl8565185676_
                                                     (##cdr _e8564985671_)))
                                                (let ((_expr85679_
                                                       _hd8565085674_))
                                                  (if (gx#stx-null?
                                                       _tl8565185676_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids85669_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids85669_)
                        (cons _expr85679_ '()))
                  (_E8564585657_))
              (_E8564585657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8564585657_)))))
                                  (_E8564585657_)))))
                      (_E8564485681_)))))
          (let* ((_e8560085610_ _stx85596_)
                 (_E8560285614_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8560085610_)))
                 (_E8560185638_
                  (lambda ()
                    (if (gx#stx-pair? _e8560085610_)
                        (let ((_e8560385618_ (gx#syntax-e _e8560085610_)))
                          (let ((_hd8560485621_ (##car _e8560385618_))
                                (_tl8560585623_ (##cdr _e8560385618_)))
                            (if (gx#stx-pair? _tl8560585623_)
                                (let ((_e8560685626_
                                       (gx#syntax-e _tl8560585623_)))
                                  (let ((_hd8560785629_ (##car _e8560685626_))
                                        (_tl8560885631_ (##cdr _e8560685626_)))
                                    (let* ((_hd85634_ _hd8560785629_)
                                           (_body85636_ _tl8560885631_))
                                      (if (and (gx#stx-list? _hd85634_)
                                               (gx#stx-list? _body85636_)
                                               (not (gx#stx-null?
                                                     _body85636_)))
                                          (gx#core-cons*
                                           _form85597_
                                           (gx#stx-map1
                                            _generate85599_
                                            _hd85634_)
                                           _body85636_)
                                          (_E8560285614_)))))
                                (_E8560285614_))))
                        (_E8560285614_)))))
            (_E8560185638_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx85688_)
        (let ((_form85690_ '%#let-values))
          (gx#macro-expand-let-values__% _stx85688_ _form85690_))))
    (define gx#macro-expand-let-values
      (lambda _g88073_
        (let ((_g88072_ (##length _g88073_)))
          (cond ((##fx= _g88072_ 1)
                 (apply (lambda (_stx85688_)
                          (gx#macro-expand-let-values__0 _stx85688_))
                        _g88073_))
                ((##fx= _g88072_ 2)
                 (apply (lambda (_stx85692_ _form85693_)
                          (gx#macro-expand-let-values__%
                           _stx85692_
                           _form85693_))
                        _g88073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88073_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx85593_)
        (gx#macro-expand-let-values__% _stx85593_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx85591_)
        (gx#macro-expand-let-values__% _stx85591_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx85482_)
        (let* ((_e8548385509_ _stx85482_)
               (_E8549585513_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8548385509_)))
               (_E8548585555_
                (lambda ()
                  (if (gx#stx-pair? _e8548385509_)
                      (let ((_e8549685517_ (gx#syntax-e _e8548385509_)))
                        (let ((_hd8549785520_ (##car _e8549685517_))
                              (_tl8549885522_ (##cdr _e8549685517_)))
                          (if (gx#stx-pair? _tl8549885522_)
                              (let ((_e8549985525_
                                     (gx#syntax-e _tl8549885522_)))
                                (let ((_hd8550085528_ (##car _e8549985525_))
                                      (_tl8550185530_ (##cdr _e8549985525_)))
                                  (let ((_test85533_ _hd8550085528_))
                                    (if (gx#stx-pair? _tl8550185530_)
                                        (let ((_e8550285535_
                                               (gx#syntax-e _tl8550185530_)))
                                          (let ((_hd8550385538_
                                                 (##car _e8550285535_))
                                                (_tl8550485540_
                                                 (##cdr _e8550285535_)))
                                            (let ((_K85543_ _hd8550385538_))
                                              (if (gx#stx-pair? _tl8550485540_)
                                                  (let ((_e8550585545_
                                                         (gx#syntax-e
                                                          _tl8550485540_)))
                                                    (let ((_hd8550685548_
                                                           (##car _e8550585545_))
                                                          (_tl8550785550_
                                                           (##cdr _e8550585545_)))
                                                      (let ((_E85553_
                                                             _hd8550685548_))
                                                        (if (gx#stx-null?
                                                             _tl8550785550_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test85533_
                         _K85543_
                         _E85553_)
                        (_E8549585513_))
                    (_E8549585513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8549585513_)))))
                                        (_E8549585513_)))))
                              (_E8549585513_))))
                      (_E8549585513_))))
               (_E8548485587_
                (lambda ()
                  (if (gx#stx-pair? _e8548385509_)
                      (let ((_e8548685559_ (gx#syntax-e _e8548385509_)))
                        (let ((_hd8548785562_ (##car _e8548685559_))
                              (_tl8548885564_ (##cdr _e8548685559_)))
                          (if (gx#stx-pair? _tl8548885564_)
                              (let ((_e8548985567_
                                     (gx#syntax-e _tl8548885564_)))
                                (let ((_hd8549085570_ (##car _e8548985567_))
                                      (_tl8549185572_ (##cdr _e8548985567_)))
                                  (let ((_test85575_ _hd8549085570_))
                                    (if (gx#stx-pair? _tl8549185572_)
                                        (let ((_e8549285577_
                                               (gx#syntax-e _tl8549185572_)))
                                          (let ((_hd8549385580_
                                                 (##car _e8549285577_))
                                                (_tl8549485582_
                                                 (##cdr _e8549285577_)))
                                            (let ((_K85585_ _hd8549385580_))
                                              (if (gx#stx-null? _tl8549485582_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test85575_
                                                       _K85585_
                                                       '#!void)
                                                      (_E8548585555_))
                                                  (_E8548585555_)))))
                                        (_E8548585555_)))))
                              (_E8548585555_))))
                      (_E8548585555_)))))
          (_E8548485587_))))
    (define gx#free-identifier=?
      (lambda (_xid85470_ _yid85471_)
        (let ((_xe85473_ (gx#resolve-identifier__0 _xid85470_))
              (_ye85474_ (gx#resolve-identifier__0 _yid85471_)))
          (if (and _xe85473_ _ye85474_)
              (let ((_$e85476_ (eq? _xe85473_ _ye85474_)))
                (if _$e85476_
                    _$e85476_
                    (if (##structure-instance-of? _xe85473_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye85474_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe85473_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye85474_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe85473_ _ye85474_)
                  '#f
                  (gx#stx-eq? _xid85470_ _yid85471_))))))
    (define gx#bound-identifier=?
      (lambda (_xid85454_ _yid85455_)
        (letrec ((_context85457_
                  (lambda (_e85468_)
                    (if (##structure-direct-instance-of?
                         _e85468_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e85468_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks85458_
                  (lambda (_e85466_)
                    (if (symbol? _e85466_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e85466_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e85466_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e85466_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap85459_
                  (lambda (_e85464_)
                    (if (symbol? _e85464_)
                        _e85464_
                        (gx#syntax-local-unwrap _e85464_)))))
          (let ((_x85461_ (_unwrap85459_ _xid85454_))
                (_y85462_ (_unwrap85459_ _yid85455_)))
            (if (gx#stx-eq? _x85461_ _y85462_)
                (if (eq? (_context85457_ _x85461_) (_context85457_ _y85462_))
                    (equal? (_marks85458_ _x85461_) (_marks85458_ _y85462_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx85452_)
        (if (gx#identifier? _stx85452_)
            (gx#core-identifier=? _stx85452_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx85450_)
        (if (gx#identifier? _stx85450_)
            (gx#core-identifier=? _stx85450_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x85448_)
        (if (gx#identifier? _x85448_)
            (if (not (gx#underscore? _x85448_)) _x85448_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx85394_ _where85395_)
        (let _lp85397_ ((_rest85399_ (gx#syntax->list _stx85394_)))
          (let* ((_rest8540085408_ _rest85399_)
                 (_else8540285416_ (lambda () '#t))
                 (_K8540485426_
                  (lambda (_rest85419_ _hd85420_)
                    (if (not (gx#identifier? _hd85420_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where85395_
                         _hd85420_)
                        (if (find (lambda (_g8542185423_)
                                    (gx#bound-identifier=?
                                     _g8542185423_
                                     _hd85420_))
                                  _rest85419_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where85395_
                             _hd85420_)
                            (_lp85397_ _rest85419_))))))
            (if (##pair? _rest8540085408_)
                (let ((_hd8540585429_ (##car _rest8540085408_))
                      (_tl8540685431_ (##cdr _rest8540085408_)))
                  (let* ((_hd85434_ _hd8540585429_)
                         (_rest85436_ _tl8540685431_))
                    (_K8540485426_ _rest85436_ _hd85434_)))
                (_else8540285416_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx85441_)
        (let ((_where85443_ _stx85441_))
          (gx#check-duplicate-identifiers__% _stx85441_ _where85443_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88075_
        (let ((_g88074_ (##length _g88075_)))
          (cond ((##fx= _g88074_ 1)
                 (apply (lambda (_stx85441_)
                          (gx#check-duplicate-identifiers__0 _stx85441_))
                        _g88075_))
                ((##fx= _g88074_ 2)
                 (apply (lambda (_stx85445_ _where85446_)
                          (gx#check-duplicate-identifiers__%
                           _stx85445_
                           _where85446_))
                        _g88075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88075_))))))
    (define gx#core-bind-values?
      (lambda (_stx85386_)
        (gx#stx-andmap
         (lambda (_x85388_)
           (let ((_$e85390_ (gx#identifier? _x85388_)))
             (if _$e85390_ _$e85390_ (gx#stx-false? _x85388_))))
         _stx85386_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85350_ _rebind?85351_ _phi85352_ _ctx85353_)
        (gx#stx-for-each1
         (lambda (_id85355_)
           (if (gx#identifier? _id85355_)
               (gx#core-bind-runtime!__%
                _id85355_
                _rebind?85351_
                _phi85352_
                _ctx85353_)
               '#!void))
         _stx85350_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85360_)
        (let* ((_rebind?85362_ '#f)
               (_phi85364_ (gx#current-expander-phi))
               (_ctx85366_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85360_
           _rebind?85362_
           _phi85364_
           _ctx85366_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85368_ _rebind?85369_)
        (let* ((_phi85371_ (gx#current-expander-phi))
               (_ctx85373_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85368_
           _rebind?85369_
           _phi85371_
           _ctx85373_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85375_ _rebind?85376_ _phi85377_)
        (let ((_ctx85379_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85375_
           _rebind?85376_
           _phi85377_
           _ctx85379_))))
    (define gx#core-bind-values!
      (lambda _g88077_
        (let ((_g88076_ (##length _g88077_)))
          (cond ((##fx= _g88076_ 1)
                 (apply (lambda (_stx85360_)
                          (gx#core-bind-values!__0 _stx85360_))
                        _g88077_))
                ((##fx= _g88076_ 2)
                 (apply (lambda (_stx85368_ _rebind?85369_)
                          (gx#core-bind-values!__1 _stx85368_ _rebind?85369_))
                        _g88077_))
                ((##fx= _g88076_ 3)
                 (apply (lambda (_stx85375_ _rebind?85376_ _phi85377_)
                          (gx#core-bind-values!__2
                           _stx85375_
                           _rebind?85376_
                           _phi85377_))
                        _g88077_))
                ((##fx= _g88076_ 4)
                 (apply (lambda (_stx85381_
                                 _rebind?85382_
                                 _phi85383_
                                 _ctx85384_)
                          (gx#core-bind-values!__%
                           _stx85381_
                           _rebind?85382_
                           _phi85383_
                           _ctx85384_))
                        _g88077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88077_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85345_)
        (gx#stx-map1
         (lambda (_x85347_)
           (if (gx#identifier? _x85347_)
               (gx#core-quote-syntax__0 _x85347_)
               '#f))
         _stx85345_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85338_)
        (if (gx#identifier? _stx85338_)
            (let* ((_bind85340_ (gx#resolve-identifier__0 _stx85338_))
                   (_$e85342_ (not _bind85340_)))
              (if _$e85342_
                  _$e85342_
                  (##structure-instance-of?
                   _bind85340_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85330_ _form85331_)
        (let ((_bind85333_ (gx#resolve-identifier__0 _id85330_)))
          (if (##structure-instance-of? _bind85333_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85330_)
              (if (not _bind85333_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85330_)))
                      (gx#core-quote-syntax__0 _id85330_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85331_
                       _id85330_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85331_
                   _id85330_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85289_ _rebind?85290_ _phi85291_ _ctx85292_)
        (let* ((_key85294_ (gx#core-identifier-key _id85289_))
               (_eid85296_
                (gx#make-binding-id__% _key85294_ '#f _phi85291_ _ctx85292_))
               (_bind85298_
                (if (##structure-instance-of? _ctx85292_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85296_
                     _key85294_
                     _phi85291_
                     _ctx85292_)
                    (if (##structure-instance-of?
                         _ctx85292_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85296_
                         _key85294_
                         _phi85291_)
                        (if (##structure-instance-of?
                             _ctx85292_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85296_
                             _key85294_
                             _phi85291_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85296_
                             _key85294_
                             _phi85291_))))))
          (gx#bind-identifier!__%
           _id85289_
           _bind85298_
           _rebind?85290_
           _phi85291_
           _ctx85292_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85304_)
        (let* ((_rebind?85306_ '#f)
               (_phi85308_ (gx#current-expander-phi))
               (_ctx85310_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85304_
           _rebind?85306_
           _phi85308_
           _ctx85310_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85312_ _rebind?85313_)
        (let* ((_phi85315_ (gx#current-expander-phi))
               (_ctx85317_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85312_
           _rebind?85313_
           _phi85315_
           _ctx85317_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85319_ _rebind?85320_ _phi85321_)
        (let ((_ctx85323_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85319_
           _rebind?85320_
           _phi85321_
           _ctx85323_))))
    (define gx#core-bind-runtime!
      (lambda _g88079_
        (let ((_g88078_ (##length _g88079_)))
          (cond ((##fx= _g88078_ 1)
                 (apply (lambda (_id85304_)
                          (gx#core-bind-runtime!__0 _id85304_))
                        _g88079_))
                ((##fx= _g88078_ 2)
                 (apply (lambda (_id85312_ _rebind?85313_)
                          (gx#core-bind-runtime!__1 _id85312_ _rebind?85313_))
                        _g88079_))
                ((##fx= _g88078_ 3)
                 (apply (lambda (_id85319_ _rebind?85320_ _phi85321_)
                          (gx#core-bind-runtime!__2
                           _id85319_
                           _rebind?85320_
                           _phi85321_))
                        _g88079_))
                ((##fx= _g88078_ 4)
                 (apply (lambda (_id85325_
                                 _rebind?85326_
                                 _phi85327_
                                 _ctx85328_)
                          (gx#core-bind-runtime!__%
                           _id85325_
                           _rebind?85326_
                           _phi85327_
                           _ctx85328_))
                        _g88079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88079_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85244_ _eid85245_ _rebind?85246_ _phi85247_ _ctx85248_)
        (let* ((_key85250_ (gx#core-identifier-key _id85244_))
               (_bind85252_
                (if (##structure-instance-of? _ctx85248_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85245_
                     _key85250_
                     _phi85247_
                     _ctx85248_)
                    (if (##structure-instance-of?
                         _ctx85248_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85245_
                         _key85250_
                         _phi85247_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85245_
                         _key85250_
                         _phi85247_)))))
          (gx#bind-identifier!__%
           _id85244_
           _bind85252_
           _rebind?85246_
           _phi85247_
           _ctx85248_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85258_ _eid85259_)
        (let* ((_rebind?85261_ '#f)
               (_phi85263_ (gx#current-expander-phi))
               (_ctx85265_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85258_
           _eid85259_
           _rebind?85261_
           _phi85263_
           _ctx85265_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85267_ _eid85268_ _rebind?85269_)
        (let* ((_phi85271_ (gx#current-expander-phi))
               (_ctx85273_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85267_
           _eid85268_
           _rebind?85269_
           _phi85271_
           _ctx85273_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85275_ _eid85276_ _rebind?85277_ _phi85278_)
        (let ((_ctx85280_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85275_
           _eid85276_
           _rebind?85277_
           _phi85278_
           _ctx85280_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88081_
        (let ((_g88080_ (##length _g88081_)))
          (cond ((##fx= _g88080_ 2)
                 (apply (lambda (_id85258_ _eid85259_)
                          (gx#core-bind-runtime-reference!__0
                           _id85258_
                           _eid85259_))
                        _g88081_))
                ((##fx= _g88080_ 3)
                 (apply (lambda (_id85267_ _eid85268_ _rebind?85269_)
                          (gx#core-bind-runtime-reference!__1
                           _id85267_
                           _eid85268_
                           _rebind?85269_))
                        _g88081_))
                ((##fx= _g88080_ 4)
                 (apply (lambda (_id85275_
                                 _eid85276_
                                 _rebind?85277_
                                 _phi85278_)
                          (gx#core-bind-runtime-reference!__2
                           _id85275_
                           _eid85276_
                           _rebind?85277_
                           _phi85278_))
                        _g88081_))
                ((##fx= _g88080_ 5)
                 (apply (lambda (_id85282_
                                 _eid85283_
                                 _rebind?85284_
                                 _phi85285_
                                 _ctx85286_)
                          (gx#core-bind-runtime-reference!__%
                           _id85282_
                           _eid85283_
                           _rebind?85284_
                           _phi85285_
                           _ctx85286_))
                        _g88081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88081_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85204_ _eid85205_ _rebind?85206_ _phi85207_ _ctx85208_)
        (gx#bind-identifier!__%
         _id85204_
         (##structure
          gx#extern-binding::t
          _eid85205_
          (gx#core-identifier-key _id85204_)
          _phi85207_)
         _rebind?85206_
         _phi85207_
         _ctx85208_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85213_ _eid85214_)
        (let* ((_rebind?85216_ '#f)
               (_phi85218_ (gx#current-expander-phi))
               (_ctx85220_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85213_
           _eid85214_
           _rebind?85216_
           _phi85218_
           _ctx85220_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85222_ _eid85223_ _rebind?85224_)
        (let* ((_phi85226_ (gx#current-expander-phi))
               (_ctx85228_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85222_
           _eid85223_
           _rebind?85224_
           _phi85226_
           _ctx85228_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85230_ _eid85231_ _rebind?85232_ _phi85233_)
        (let ((_ctx85235_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85230_
           _eid85231_
           _rebind?85232_
           _phi85233_
           _ctx85235_))))
    (define gx#core-bind-extern!
      (lambda _g88083_
        (let ((_g88082_ (##length _g88083_)))
          (cond ((##fx= _g88082_ 2)
                 (apply (lambda (_id85213_ _eid85214_)
                          (gx#core-bind-extern!__0 _id85213_ _eid85214_))
                        _g88083_))
                ((##fx= _g88082_ 3)
                 (apply (lambda (_id85222_ _eid85223_ _rebind?85224_)
                          (gx#core-bind-extern!__1
                           _id85222_
                           _eid85223_
                           _rebind?85224_))
                        _g88083_))
                ((##fx= _g88082_ 4)
                 (apply (lambda (_id85230_
                                 _eid85231_
                                 _rebind?85232_
                                 _phi85233_)
                          (gx#core-bind-extern!__2
                           _id85230_
                           _eid85231_
                           _rebind?85232_
                           _phi85233_))
                        _g88083_))
                ((##fx= _g88082_ 5)
                 (apply (lambda (_id85237_
                                 _eid85238_
                                 _rebind?85239_
                                 _phi85240_
                                 _ctx85241_)
                          (gx#core-bind-extern!__%
                           _id85237_
                           _eid85238_
                           _rebind?85239_
                           _phi85240_
                           _ctx85241_))
                        _g88083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88083_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85158_ _e85159_ _rebind?85160_ _phi85161_ _ctx85162_)
        (gx#bind-identifier!__%
         _id85158_
         (let ((_key85167_ (gx#core-identifier-key _id85158_))
               (_e85168_
                (if (or (##structure-instance-of? _e85159_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85159_
                         'gx#expander-context::t))
                    _e85159_
                    (##structure
                     gx#user-expander::t
                     _e85159_
                     _ctx85162_
                     _phi85161_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85167_ '#t _phi85161_ _ctx85162_)
            _key85167_
            _phi85161_
            _e85168_))
         _rebind?85160_
         _phi85161_
         _ctx85162_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85173_ _e85174_)
        (let* ((_rebind?85176_ '#f)
               (_phi85178_ (gx#current-expander-phi))
               (_ctx85180_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85173_
           _e85174_
           _rebind?85176_
           _phi85178_
           _ctx85180_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85182_ _e85183_ _rebind?85184_)
        (let* ((_phi85186_ (gx#current-expander-phi))
               (_ctx85188_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85182_
           _e85183_
           _rebind?85184_
           _phi85186_
           _ctx85188_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85190_ _e85191_ _rebind?85192_ _phi85193_)
        (let ((_ctx85195_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85190_
           _e85191_
           _rebind?85192_
           _phi85193_
           _ctx85195_))))
    (define gx#core-bind-syntax!
      (lambda _g88085_
        (let ((_g88084_ (##length _g88085_)))
          (cond ((##fx= _g88084_ 2)
                 (apply (lambda (_id85173_ _e85174_)
                          (gx#core-bind-syntax!__0 _id85173_ _e85174_))
                        _g88085_))
                ((##fx= _g88084_ 3)
                 (apply (lambda (_id85182_ _e85183_ _rebind?85184_)
                          (gx#core-bind-syntax!__1
                           _id85182_
                           _e85183_
                           _rebind?85184_))
                        _g88085_))
                ((##fx= _g88084_ 4)
                 (apply (lambda (_id85190_ _e85191_ _rebind?85192_ _phi85193_)
                          (gx#core-bind-syntax!__2
                           _id85190_
                           _e85191_
                           _rebind?85192_
                           _phi85193_))
                        _g88085_))
                ((##fx= _g88084_ 5)
                 (apply (lambda (_id85197_
                                 _e85198_
                                 _rebind?85199_
                                 _phi85200_
                                 _ctx85201_)
                          (gx#core-bind-syntax!__%
                           _id85197_
                           _e85198_
                           _rebind?85199_
                           _phi85200_
                           _ctx85201_))
                        _g88085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88085_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85141_ _e85142_ _rebind?85143_)
        (gx#core-bind-syntax!__%
         _id85141_
         _e85142_
         _rebind?85143_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85148_ _e85149_)
        (let ((_rebind?85151_ '#f))
          (gx#core-bind-root-syntax!__% _id85148_ _e85149_ _rebind?85151_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88087_
        (let ((_g88086_ (##length _g88087_)))
          (cond ((##fx= _g88086_ 2)
                 (apply (lambda (_id85148_ _e85149_)
                          (gx#core-bind-root-syntax!__0 _id85148_ _e85149_))
                        _g88087_))
                ((##fx= _g88086_ 3)
                 (apply (lambda (_id85153_ _e85154_ _rebind?85155_)
                          (gx#core-bind-root-syntax!__%
                           _id85153_
                           _e85154_
                           _rebind?85155_))
                        _g88087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88087_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85099_ _alias-id85100_ _rebind?85101_ _phi85102_ _ctx85103_)
        (gx#bind-identifier!__%
         _id85099_
         (let ((_key85105_ (gx#core-identifier-key _id85099_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85105_ '#t _phi85102_ _ctx85103_)
            _key85105_
            _phi85102_
            _alias-id85100_))
         _rebind?85101_
         _phi85102_
         _ctx85103_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85110_ _alias-id85111_)
        (let* ((_rebind?85113_ '#f)
               (_phi85115_ (gx#current-expander-phi))
               (_ctx85117_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85110_
           _alias-id85111_
           _rebind?85113_
           _phi85115_
           _ctx85117_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85119_ _alias-id85120_ _rebind?85121_)
        (let* ((_phi85123_ (gx#current-expander-phi))
               (_ctx85125_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85119_
           _alias-id85120_
           _rebind?85121_
           _phi85123_
           _ctx85125_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85127_ _alias-id85128_ _rebind?85129_ _phi85130_)
        (let ((_ctx85132_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85127_
           _alias-id85128_
           _rebind?85129_
           _phi85130_
           _ctx85132_))))
    (define gx#core-bind-alias!
      (lambda _g88089_
        (let ((_g88088_ (##length _g88089_)))
          (cond ((##fx= _g88088_ 2)
                 (apply (lambda (_id85110_ _alias-id85111_)
                          (gx#core-bind-alias!__0 _id85110_ _alias-id85111_))
                        _g88089_))
                ((##fx= _g88088_ 3)
                 (apply (lambda (_id85119_ _alias-id85120_ _rebind?85121_)
                          (gx#core-bind-alias!__1
                           _id85119_
                           _alias-id85120_
                           _rebind?85121_))
                        _g88089_))
                ((##fx= _g88088_ 4)
                 (apply (lambda (_id85127_
                                 _alias-id85128_
                                 _rebind?85129_
                                 _phi85130_)
                          (gx#core-bind-alias!__2
                           _id85127_
                           _alias-id85128_
                           _rebind?85129_
                           _phi85130_))
                        _g88089_))
                ((##fx= _g88088_ 5)
                 (apply (lambda (_id85134_
                                 _alias-id85135_
                                 _rebind?85136_
                                 _phi85137_
                                 _ctx85138_)
                          (gx#core-bind-alias!__%
                           _id85134_
                           _alias-id85135_
                           _rebind?85136_
                           _phi85137_
                           _ctx85138_))
                        _g88089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88089_))))))
    (define gx#make-binding-id__%
      (lambda (_key85056_ _syntax?85057_ _phi85058_ _ctx85059_)
        (if (uninterned-symbol? _key85056_)
            (gensym 'L)
            (if (pair? _key85056_)
                (gensym (car _key85056_))
                (if (##structure-instance-of? _ctx85059_ 'gx#top-context::t)
                    (let ((_ns85061_
                           (gx#core-context-namespace__% _ctx85059_)))
                      (if (and (fxzero? _phi85058_) (not _syntax?85057_))
                          (if _ns85061_
                              (make-symbol__1 _ns85061_ '"#" _key85056_)
                              _key85056_)
                          (if _syntax?85057_
                              (make-symbol__1
                               (let ((_$e85063_ _ns85061_))
                                 (if _$e85063_ _$e85063_ '""))
                               '"[:"
                               (number->string _phi85058_)
                               '":]#"
                               _key85056_)
                              (make-symbol__1
                               (let ((_$e85066_ _ns85061_))
                                 (if _$e85066_ _$e85066_ '""))
                               '"["
                               (number->string _phi85058_)
                               '"]#"
                               _key85056_))))
                    (gensym _key85056_))))))
    (define gx#make-binding-id__0
      (lambda (_key85072_)
        (let* ((_syntax?85074_ '#f)
               (_phi85076_ (gx#current-expander-phi))
               (_ctx85078_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85072_
           _syntax?85074_
           _phi85076_
           _ctx85078_))))
    (define gx#make-binding-id__1
      (lambda (_key85080_ _syntax?85081_)
        (let* ((_phi85083_ (gx#current-expander-phi))
               (_ctx85085_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85080_
           _syntax?85081_
           _phi85083_
           _ctx85085_))))
    (define gx#make-binding-id__2
      (lambda (_key85087_ _syntax?85088_ _phi85089_)
        (let ((_ctx85091_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85087_
           _syntax?85088_
           _phi85089_
           _ctx85091_))))
    (define gx#make-binding-id
      (lambda _g88091_
        (let ((_g88090_ (##length _g88091_)))
          (cond ((##fx= _g88090_ 1)
                 (apply (lambda (_key85072_)
                          (gx#make-binding-id__0 _key85072_))
                        _g88091_))
                ((##fx= _g88090_ 2)
                 (apply (lambda (_key85080_ _syntax?85081_)
                          (gx#make-binding-id__1 _key85080_ _syntax?85081_))
                        _g88091_))
                ((##fx= _g88090_ 3)
                 (apply (lambda (_key85087_ _syntax?85088_ _phi85089_)
                          (gx#make-binding-id__2
                           _key85087_
                           _syntax?85088_
                           _phi85089_))
                        _g88091_))
                ((##fx= _g88090_ 4)
                 (apply (lambda (_key85093_
                                 _syntax?85094_
                                 _phi85095_
                                 _ctx85096_)
                          (gx#make-binding-id__%
                           _key85093_
                           _syntax?85094_
                           _phi85095_
                           _ctx85096_))
                        _g88091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88091_))))))))
