(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx8914_)
      (let ((_expand-special8916_
             (lambda (_hd8918_ _K8919_ _rest8920_ _r8921_)
               (_K8919_ _rest8920_
                        (cons (gx#core-expand-top _hd8918_) _r8921_)))))
        (gx#core-expand-block__0 _stx8914_ _expand-special8916_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8667_)
      (let ((_expand-special8669_
             (lambda (_hd8789_ _K8790_ _rest8791_ _r8792_)
               (let ((_K8796_ (lambda (_e8794_)
                                (_K8790_ _rest8791_ (cons _e8794_ _r8792_)))))
                 (let ((_e87978826_ _hd8789_))
                   (let ((_E88218830_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87978826_))))
                     (let ((_E88178842_
                            (lambda ()
                              (if (gx#stx-pair? _e87978826_)
                                  (let ((_e88228834_
                                         (gx#syntax-e _e87978826_)))
                                    (let ((_hd88238837_ (##car _e88228834_))
                                          (_tl88248839_ (##cdr _e88228834_)))
                                      (if (if (gx#identifier? _hd88238837_)
                                              (gx#core-identifier=?
                                               _hd88238837_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8796_ (gx#core-expand-define-runtime%
                                                        _hd8789_))
                                              (_E88218830_))
                                          (_E88218830_))))
                                  (_E88218830_)))))
                       (let ((_E88138854_
                              (lambda ()
                                (if (gx#stx-pair? _e87978826_)
                                    (let ((_e88188846_
                                           (gx#syntax-e _e87978826_)))
                                      (let ((_hd88198849_ (##car _e88188846_))
                                            (_tl88208851_ (##cdr _e88188846_)))
                                        (if (if (gx#identifier? _hd88198849_)
                                                (gx#core-identifier=?
                                                 _hd88198849_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8796_ (gx#core-expand-define-alias%
                                                          _hd8789_))
                                                (_E88178842_))
                                            (_E88178842_))))
                                    (_E88178842_)))))
                         (let ((_E88038866_
                                (lambda ()
                                  (if (gx#stx-pair? _e87978826_)
                                      (let ((_e88148858_
                                             (gx#syntax-e _e87978826_)))
                                        (let ((_hd88158861_
                                               (##car _e88148858_))
                                              (_tl88168863_
                                               (##cdr _e88148858_)))
                                          (if (if (gx#identifier? _hd88158861_)
                                                  (gx#core-identifier=?
                                                   _hd88158861_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8796_ (gx#core-expand-define-syntax%
                                                            _hd8789_))
                                                  (_E88138854_))
                                              (_E88138854_))))
                                      (_E88138854_)))))
                           (let ((_E87998898_
                                  (lambda ()
                                    (if (gx#stx-pair? _e87978826_)
                                        (let ((_e88048870_
                                               (gx#syntax-e _e87978826_)))
                                          (let ((_hd88058873_
                                                 (##car _e88048870_))
                                                (_tl88068875_
                                                 (##cdr _e88048870_)))
                                            (if (if (gx#identifier?
                                                     _hd88058873_)
                                                    (gx#core-identifier=?
                                                     _hd88058873_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl88068875_)
                                                    (let ((_e88078878_
                                                           (gx#syntax-e
                                                            _tl88068875_)))
                                                      (let ((_hd88088881_
                                                             (##car _e88078878_))
                                                            (_tl88098883_
                                                             (##cdr _e88078878_)))
                                                        (let ((_hd-bind8886_
                                                               _hd88088881_))
                                                          (if (gx#stx-pair?
                                                               _tl88098883_)
                                                              (let ((_e88108888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl88098883_)))
                        (let ((_hd88118891_ (##car _e88108888_))
                              (_tl88128893_ (##cdr _e88108888_)))
                          (let ((_expr8896_ _hd88118891_))
                            (if (gx#stx-null? _tl88128893_)
                                (if (gx#core-bind-values? _hd-bind8886_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind8886_)
                                      (_K8796_ _hd8789_))
                                    (_E88038866_))
                                (_E88038866_)))))
                      (_E88038866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88038866_))
                                                (_E88038866_))))
                                        (_E88038866_)))))
                             (let ((_E87988910_
                                    (lambda ()
                                      (if (gx#stx-pair? _e87978826_)
                                          (let ((_e88008902_
                                                 (gx#syntax-e _e87978826_)))
                                            (let ((_hd88018905_
                                                   (##car _e88008902_))
                                                  (_tl88028907_
                                                   (##cdr _e88008902_)))
                                              (if (if (gx#identifier?
                                                       _hd88018905_)
                                                      (gx#core-identifier=?
                                                       _hd88018905_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8796_ (gx#core-expand-begin-syntax%
                                                                _hd8789_))
                                                      (_E87998898_))
                                                  (_E87998898_))))
                                          (_E87998898_)))))
                               (let () (_E87988910_)))))))))))))
        (let ((_eval-body8670_
               (lambda (_rbody8678_)
                 ((letrec ((_lp8680_
                            (lambda (_rest8682_ _body8683_ _ebody8684_)
                              (let ((_rest86858693_ _rest8682_))
                                (let ((_E86888697_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest86858693_))))
                                  (let ((_else86878701_
                                         (lambda ()
                                           (values _body8683_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8684_)
                                                     (gx#stx-source
                                                      _stx8667_)))))))
                                    (let ((_K86898777_
                                           (lambda (_rest8704_ _hd8705_)
                                             (let ((_e87068723_ _hd8705_))
                                               (let ((_E87188727_
                                                      (lambda ()
                                                        (_lp8680_
                                                         _rest8704_
                                                         (cons _hd8705_
                                                               _body8683_)
                                                         (cons _hd8705_
                                                               _ebody8684_)))))
                                                 (let ((_E87088739_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e87068723_)
                                                              (let ((_e87198731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e87068723_)))
                        (let ((_hd87208734_ (##car _e87198731_))
                              (_tl87218736_ (##cdr _e87198731_)))
                          (if (if (gx#identifier? _hd87208734_)
                                  (gx#core-identifier=?
                                   _hd87208734_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8680_
                                   _rest8704_
                                   (cons _hd8705_ _body8683_)
                                   _ebody8684_)
                                  (_E87188727_))
                              (_E87188727_))))
                      (_E87188727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E87078773_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e87068723_)
                        (let ((_e87098743_ (gx#syntax-e _e87068723_)))
                          (let ((_hd87108746_ (##car _e87098743_))
                                (_tl87118748_ (##cdr _e87098743_)))
                            (if (if (gx#identifier? _hd87108746_)
                                    (gx#core-identifier=?
                                     _hd87108746_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl87118748_)
                                    (let ((_e87128751_
                                           (gx#syntax-e _tl87118748_)))
                                      (let ((_hd87138754_ (##car _e87128751_))
                                            (_tl87148756_ (##cdr _e87128751_)))
                                        (let ((_hd-bind8759_ _hd87138754_))
                                          (if (gx#stx-pair? _tl87148756_)
                                              (let ((_e87158761_
                                                     (gx#syntax-e
                                                      _tl87148756_)))
                                                (let ((_hd87168764_
                                                       (##car _e87158761_))
                                                      (_tl87178766_
                                                       (##cdr _e87158761_)))
                                                  (let ((_expr8769_
                                                         _hd87168764_))
                                                    (if (gx#stx-null?
                                                         _tl87178766_)
                                                        (if '#t
                                                            (let ((_ehd8771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8759_)
                                        (cons (gx#core-expand-expression
                                               _expr8769_)
                                              '())))
                            (gx#stx-source _hd8705_))))
                      (_lp8680_
                       _rest8704_
                       (cons _ehd8771_ _body8683_)
                       (cons _ehd8771_ _ebody8684_)))
                    (_E87088739_))
                (_E87088739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E87088739_)))))
                                    (_E87088739_))
                                (_E87088739_))))
                        (_E87088739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E87078773_)))))))))
                                      (if (##pair? _rest86858693_)
                                          (let ((_hd86908780_
                                                 (##car _rest86858693_))
                                                (_tl86918782_
                                                 (##cdr _rest86858693_)))
                                            (let ((_hd8785_ _hd86908780_))
                                              (let ((_rest8787_ _tl86918782_))
                                                (_K86898777_
                                                 _rest8787_
                                                 _hd8785_))))
                                          (_else86878701_)))))))))
                    _lp8680_)
                  _rbody8678_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8673_
                    (gx#core-expand-block__1
                     _stx8667_
                     _expand-special8669_
                     '#f)))
               (let ((_g8928_ (_eval-body8670_ _rbody8673_)))
                 (begin
                   (let ((_g8929_ (values-count _g8928_)))
                     (if (not (fx= _g8929_ 2))
                         (error "Context expects 2 values" _g8929_)))
                   (let ((_expanded-body8675_ (values-ref _g8928_ 0))
                         (_value8676_ (values-ref _g8928_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8675_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8676_ '())))
                      (gx#stx-source _stx8667_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8637_)
      (let ((_e86388645_ _stx8637_))
        (let ((_E86408649_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e86388645_))))
          (let ((_E86398663_
                 (lambda ()
                   (if (gx#stx-pair? _e86388645_)
                       (let ((_e86418653_ (gx#syntax-e _e86388645_)))
                         (let ((_hd86428656_ (##car _e86418653_))
                               (_tl86438658_ (##cdr _e86418653_)))
                           (let ((_body8661_ _tl86438658_))
                             (if (gx#stx-list? _body8661_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8661_)
                                  (gx#stx-source _stx8637_))
                                 (_E86408649_)))))
                       (_E86408649_)))))
            (let () (_E86398663_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8625_)
      (let ((_e86268629_ _stx8625_))
        (let ((_E86278633_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e86268629_))))
          (let () (_E86278633_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8349_ _body8350_)
      (let ((_expand-internal-special8354_
             (lambda (_hd8511_ _K8512_ _rest8513_ _r8514_)
               (let ((_e85158540_ _hd8511_))
                 (let ((_E85358544_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e85158540_))))
                   (let ((_E85318556_
                          (lambda ()
                            (if (gx#stx-pair? _e85158540_)
                                (let ((_e85368548_ (gx#syntax-e _e85158540_)))
                                  (let ((_hd85378551_ (##car _e85368548_))
                                        (_tl85388553_ (##cdr _e85368548_)))
                                    (if (if (gx#identifier? _hd85378551_)
                                            (gx#core-identifier=?
                                             _hd85378551_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8512_ _rest8513_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8511_)
                                                           _r8514_))
                                            (_E85358544_))
                                        (_E85358544_))))
                                (_E85358544_)))))
                     (let ((_E85278568_
                            (lambda ()
                              (if (gx#stx-pair? _e85158540_)
                                  (let ((_e85328560_
                                         (gx#syntax-e _e85158540_)))
                                    (let ((_hd85338563_ (##car _e85328560_))
                                          (_tl85348565_ (##cdr _e85328560_)))
                                      (if (if (gx#identifier? _hd85338563_)
                                              (gx#core-identifier=?
                                               _hd85338563_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8511_)
                                                (_K8512_ _rest8513_ _r8514_))
                                              (_E85318556_))
                                          (_E85318556_))))
                                  (_E85318556_)))))
                       (let ((_E85178580_
                              (lambda ()
                                (if (gx#stx-pair? _e85158540_)
                                    (let ((_e85288572_
                                           (gx#syntax-e _e85158540_)))
                                      (let ((_hd85298575_ (##car _e85288572_))
                                            (_tl85308577_ (##cdr _e85288572_)))
                                        (if (if (gx#identifier? _hd85298575_)
                                                (gx#core-identifier=?
                                                 _hd85298575_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8511_)
                                                  (_K8512_ _rest8513_ _r8514_))
                                                (_E85278568_))
                                            (_E85278568_))))
                                    (_E85278568_)))))
                         (let ((_E85168612_
                                (lambda ()
                                  (if (gx#stx-pair? _e85158540_)
                                      (let ((_e85188584_
                                             (gx#syntax-e _e85158540_)))
                                        (let ((_hd85198587_
                                               (##car _e85188584_))
                                              (_tl85208589_
                                               (##cdr _e85188584_)))
                                          (if (if (gx#identifier? _hd85198587_)
                                                  (gx#core-identifier=?
                                                   _hd85198587_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl85208589_)
                                                  (let ((_e85218592_
                                                         (gx#syntax-e
                                                          _tl85208589_)))
                                                    (let ((_hd85228595_
                                                           (##car _e85218592_))
                                                          (_tl85238597_
                                                           (##cdr _e85218592_)))
                                                      (let ((_hd-bind8600_
                                                             _hd85228595_))
                                                        (if (gx#stx-pair?
                                                             _tl85238597_)
                                                            (let ((_e85248602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl85238597_)))
                      (let ((_hd85258605_ (##car _e85248602_))
                            (_tl85268607_ (##cdr _e85248602_)))
                        (let ((_expr8610_ _hd85258605_))
                          (if (gx#stx-null? _tl85268607_)
                              (if (gx#core-bind-values? _hd-bind8600_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8600_)
                                    (_K8512_ _rest8513_
                                             (cons _hd8511_ _r8514_)))
                                  (_E85178580_))
                              (_E85178580_)))))
                    (_E85178580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E85178580_))
                                              (_E85178580_))))
                                      (_E85178580_)))))
                           (let () (_E85168612_)))))))))))
        (let ((_wrap-internal8355_
               (lambda (_rbody8357_)
                 ((letrec ((_lp8359_
                            (lambda (_rest8361_
                                     _decls8362_
                                     _bind8363_
                                     _body8364_)
                              (let ((_e83658372_ _rest8361_))
                                (let ((_E83678421_
                                       (lambda ()
                                         (let ((_body8416_
                                                (let ((_body83758385_
                                                       _body8364_))
                                                  (let ((_E83798389_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body83758385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else83788393_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8364_)
                                                              (gx#stx-source
                                                               _stx8349_)))))
                                                      (let ((_try-match83778409_
                                                             (lambda ()
                                                               (let ((_K83808399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8397_) _expr8397_)))
                         (if (##pair? _body83758385_)
                             (let ((_hd83818402_ (##car _body83758385_))
                                   (_tl83828404_ (##cdr _body83758385_)))
                               (let ((_expr8407_ _hd83818402_))
                                 (if (##null? _tl83828404_)
                                     (_K83808399_ _expr8407_)
                                     (_else83788393_))))
                             (_else83788393_))))))
                (let ((_K83838413_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8349_))))
                  (if (##null? _body83758385_)
                      (_K83838413_)
                      (_try-match83778409_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8418_
                                                  (if (null? _bind8363_)
                                                      _body8416_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8416_ '())))
               (gx#stx-source _stx8349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8362_)
                                                   _body8418_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8362_
                                                                (cons _body8418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8349_)))))))))
                                  (let ((_E83668507_
                                         (lambda ()
                                           (if (gx#stx-pair? _e83658372_)
                                               (let ((_e83688425_
                                                      (gx#syntax-e
                                                       _e83658372_)))
                                                 (let ((_hd83698428_
                                                        (##car _e83688425_))
                                                       (_tl83708430_
                                                        (##cdr _e83688425_)))
                                                   (let ((_hd8433_
                                                          _hd83698428_))
                                                     (let ((_rest8435_
                                                            _tl83708430_))
                                                       (if '#t
                                                           (let ((_e84368453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8433_))
                     (let ((_E84488457_
                            (lambda ()
                              (if (null? _bind8363_)
                                  (_lp8359_
                                   _rest8435_
                                   _decls8362_
                                   _bind8363_
                                   (cons _hd8433_ _body8364_))
                                  (_lp8359_
                                   _rest8435_
                                   _decls8362_
                                   (cons (cons '#f (cons _hd8433_ '()))
                                         _bind8363_)
                                   _body8364_)))))
                       (let ((_E84388471_
                              (lambda ()
                                (if (gx#stx-pair? _e84368453_)
                                    (let ((_e84498461_
                                           (gx#syntax-e _e84368453_)))
                                      (let ((_hd84508464_ (##car _e84498461_))
                                            (_tl84518466_ (##cdr _e84498461_)))
                                        (if (if (gx#identifier? _hd84508464_)
                                                (gx#core-identifier=?
                                                 _hd84508464_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8469_ _tl84518466_))
                                              (if '#t
                                                  (_lp8359_
                                                   _rest8435_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8362_
                                                    _xdecls8469_)
                                                   _bind8363_
                                                   _body8364_)
                                                  (_E84488457_)))
                                            (_E84488457_))))
                                    (_E84488457_)))))
                         (let ((_E84378503_
                                (lambda ()
                                  (if (gx#stx-pair? _e84368453_)
                                      (let ((_e84398475_
                                             (gx#syntax-e _e84368453_)))
                                        (let ((_hd84408478_
                                               (##car _e84398475_))
                                              (_tl84418480_
                                               (##cdr _e84398475_)))
                                          (if (if (gx#identifier? _hd84408478_)
                                                  (gx#core-identifier=?
                                                   _hd84408478_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl84418480_)
                                                  (let ((_e84428483_
                                                         (gx#syntax-e
                                                          _tl84418480_)))
                                                    (let ((_hd84438486_
                                                           (##car _e84428483_))
                                                          (_tl84448488_
                                                           (##cdr _e84428483_)))
                                                      (let ((_hd-bind8491_
                                                             _hd84438486_))
                                                        (if (gx#stx-pair?
                                                             _tl84448488_)
                                                            (let ((_e84458493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl84448488_)))
                      (let ((_hd84468496_ (##car _e84458493_))
                            (_tl84478498_ (##cdr _e84458493_)))
                        (let ((_expr8501_ _hd84468496_))
                          (if (gx#stx-null? _tl84478498_)
                              (if '#t
                                  (_lp8359_
                                   _rest8435_
                                   _decls8362_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8491_)
                                               (cons (gx#core-expand-expression
                                                      _expr8501_)
                                                     '()))
                                         _bind8363_)
                                   _body8364_)
                                  (_E84388471_))
                              (_E84388471_)))))
                    (_E84388471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E84388471_))
                                              (_E84388471_))))
                                      (_E84388471_)))))
                           (let () (_E84378503_))))))
                   (_E83678421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E83678421_)))))
                                    (let () (_E83668507_))))))))
                    _lp8359_)
                  _rbody8357_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8353_
                 (lambda (_hd8616_ _rest8617_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8355_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8616_ _rest8617_)
                         (gx#stx-source _stx8349_))
                        _expand-internal-special8354_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj8922 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj8922)
                        __obj8922))))))
            (let ((_expand-special8352_
                   (lambda (_hd8620_ _K8621_ _rest8622_ _r8623_)
                     (_K8621_ '()
                              (cons (_expand-internal8353_ _hd8620_ _rest8622_)
                                    _r8623_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8350_)
                (gx#stx-source _stx8349_))
               _expand-special8352_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8287_)
      (let ((_e82888295_ _stx8287_))
        (let ((_E82908299_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82888295_))))
          (let ((_E82898345_
                 (lambda ()
                   (if (gx#stx-pair? _e82888295_)
                       (let ((_e82918303_ (gx#syntax-e _e82888295_)))
                         (let ((_hd82928306_ (##car _e82918303_))
                               (_tl82938308_ (##cdr _e82918303_)))
                           (let ((_body8311_ _tl82938308_))
                             (if (gx#stx-list? _body8311_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8313_)
                                      (let ((_e83148321_ _decl8313_))
                                        (let ((_E83168325_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83148321_))))
                                          (let ((_E83158341_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83148321_)
                                                       (let ((_e83178329_
                                                              (gx#syntax-e
                                                               _e83148321_)))
                                                         (let ((_hd83188332_
                                                                (##car _e83178329_))
                                                               (_tl83198334_
                                                                (##cdr _e83178329_)))
                                                           (let ((_head8337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83188332_))
                     (let ((_args8339_ _tl83198334_))
                       (if (gx#stx-list? _args8339_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8313_)
                           (_E83168325_))))))
               (_E83168325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83158341_))))))
                                    _body8311_))
                                  (gx#stx-source _stx8287_))
                                 (_E82908299_)))))
                       (_E82908299_)))))
            (let () (_E82898345_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8171_)
      (let ((_e81728179_ _stx8171_))
        (let ((_E81748183_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81728179_))))
          (let ((_E81738283_
                 (lambda ()
                   (if (gx#stx-pair? _e81728179_)
                       (let ((_e81758187_ (gx#syntax-e _e81728179_)))
                         (let ((_hd81768190_ (##car _e81758187_))
                               (_tl81778192_ (##cdr _e81758187_)))
                           (let ((_body8195_ _tl81778192_))
                             (if (gx#stx-list? _body8195_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8197_)
                                      (let ((_e81988208_ _bind8197_))
                                        (let ((_E82008212_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e81988208_))))
                                          (let ((_E81998236_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e81988208_)
                                                       (let ((_e82018216_
                                                              (gx#syntax-e
                                                               _e81988208_)))
                                                         (let ((_hd82028219_
                                                                (##car _e82018216_))
                                                               (_tl82038221_
                                                                (##cdr _e82018216_)))
                                                           (let ((_id8224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd82028219_))
                     (if (gx#stx-pair? _tl82038221_)
                         (let ((_e82048226_ (gx#syntax-e _tl82038221_)))
                           (let ((_hd82058229_ (##car _e82048226_))
                                 (_tl82068231_ (##cdr _e82048226_)))
                             (let ((_eid8234_ _hd82058229_))
                               (if (gx#stx-null? _tl82068231_)
                                   (if (if (gx#identifier? _id8224_)
                                           (gx#identifier? _eid8234_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8224_
                                        (gx#stx-e _eid8234_))
                                       (_E82008212_))
                                   (_E82008212_)))))
                         (_E82008212_)))))
               (_E82008212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81998236_))))))
                                    _body8195_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8240_)
                                        (let ((_e82418251_ _bind8240_))
                                          (let ((_E82438255_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e82418251_))))
                                            (let ((_E82428279_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e82418251_)
                                                         (let ((_e82448259_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e82418251_)))
                   (let ((_hd82458262_ (##car _e82448259_))
                         (_tl82468264_ (##cdr _e82448259_)))
                     (let ((_id8267_ _hd82458262_))
                       (if (gx#stx-pair? _tl82468264_)
                           (let ((_e82478269_ (gx#syntax-e _tl82468264_)))
                             (let ((_hd82488272_ (##car _e82478269_))
                                   (_tl82498274_ (##cdr _e82478269_)))
                               (let ((_eid8277_ _hd82488272_))
                                 (if (gx#stx-null? _tl82498274_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8267_)
                                               (cons (gx#stx-e _eid8277_) '()))
                                         (_E82438255_))
                                     (_E82438255_)))))
                           (_E82438255_)))))
                 (_E82438255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E82428279_))))))
                                      _body8195_))
                                    (gx#stx-source _stx8171_)))
                                 (_E81748183_)))))
                       (_E81748183_)))))
            (let () (_E81738283_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8117_)
      (let ((_e81188131_ _stx8117_))
        (let ((_E81208135_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81188131_))))
          (let ((_E81198167_
                 (lambda ()
                   (if (gx#stx-pair? _e81188131_)
                       (let ((_e81218139_ (gx#syntax-e _e81188131_)))
                         (let ((_hd81228142_ (##car _e81218139_))
                               (_tl81238144_ (##cdr _e81218139_)))
                           (if (gx#stx-pair? _tl81238144_)
                               (let ((_e81248147_ (gx#syntax-e _tl81238144_)))
                                 (let ((_hd81258150_ (##car _e81248147_))
                                       (_tl81268152_ (##cdr _e81248147_)))
                                   (let ((_hd8155_ _hd81258150_))
                                     (if (gx#stx-pair? _tl81268152_)
                                         (let ((_e81278157_
                                                (gx#syntax-e _tl81268152_)))
                                           (let ((_hd81288160_
                                                  (##car _e81278157_))
                                                 (_tl81298162_
                                                  (##cdr _e81278157_)))
                                             (let ((_expr8165_ _hd81288160_))
                                               (if (gx#stx-null? _tl81298162_)
                                                   (if (gx#core-bind-values?
                                                        _hd8155_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8155_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8155_)
                              (cons (gx#core-expand-expression _expr8165_)
                                    '())))
                  (gx#stx-source _stx8117_)))
               (_E81208135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81208135_)))))
                                         (_E81208135_)))))
                               (_E81208135_))))
                       (_E81208135_)))))
            (let () (_E81198167_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8063_)
      (let ((_e80648077_ _stx8063_))
        (let ((_E80668081_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80648077_))))
          (let ((_E80658113_
                 (lambda ()
                   (if (gx#stx-pair? _e80648077_)
                       (let ((_e80678085_ (gx#syntax-e _e80648077_)))
                         (let ((_hd80688088_ (##car _e80678085_))
                               (_tl80698090_ (##cdr _e80678085_)))
                           (if (gx#stx-pair? _tl80698090_)
                               (let ((_e80708093_ (gx#syntax-e _tl80698090_)))
                                 (let ((_hd80718096_ (##car _e80708093_))
                                       (_tl80728098_ (##cdr _e80708093_)))
                                   (let ((_id8101_ _hd80718096_))
                                     (if (gx#stx-pair? _tl80728098_)
                                         (let ((_e80738103_
                                                (gx#syntax-e _tl80728098_)))
                                           (let ((_hd80748106_
                                                  (##car _e80738103_))
                                                 (_tl80758108_
                                                  (##cdr _e80738103_)))
                                             (let ((_binding-id8111_
                                                    _hd80748106_))
                                               (if (gx#stx-null? _tl80758108_)
                                                   (if (if (gx#identifier?
                                                            _id8101_)
                                                           (gx#identifier?
                                                            _binding-id8111_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8101_
                                                          (gx#stx-e
                                                           _binding-id8111_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8101_)
                              (cons (gx#core-quote-syntax__0 _binding-id8111_)
                                    '())))))
               (_E80668081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80668081_)))))
                                         (_E80668081_)))))
                               (_E80668081_))))
                       (_E80668081_)))))
            (let () (_E80658113_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8006_)
      (let ((_e80078020_ _stx8006_))
        (let ((_E80098024_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80078020_))))
          (let ((_E80088059_
                 (lambda ()
                   (if (gx#stx-pair? _e80078020_)
                       (let ((_e80108028_ (gx#syntax-e _e80078020_)))
                         (let ((_hd80118031_ (##car _e80108028_))
                               (_tl80128033_ (##cdr _e80108028_)))
                           (if (gx#stx-pair? _tl80128033_)
                               (let ((_e80138036_ (gx#syntax-e _tl80128033_)))
                                 (let ((_hd80148039_ (##car _e80138036_))
                                       (_tl80158041_ (##cdr _e80138036_)))
                                   (let ((_id8044_ _hd80148039_))
                                     (if (gx#stx-pair? _tl80158041_)
                                         (let ((_e80168046_
                                                (gx#syntax-e _tl80158041_)))
                                           (let ((_hd80178049_
                                                  (##car _e80168046_))
                                                 (_tl80188051_
                                                  (##cdr _e80168046_)))
                                             (let ((_expr8054_ _hd80178049_))
                                               (if (gx#stx-null? _tl80188051_)
                                                   (if (gx#identifier?
                                                        _id8044_)
                                                       (let ((_g8930_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8054_)))
                 (begin
                   (let ((_g8931_ (values-count _g8930_)))
                     (if (not (fx= _g8931_ 2))
                         (error "Context expects 2 values" _g8931_)))
                   (let ((_e-stx8056_ (values-ref _g8930_ 0))
                         (_e8057_ (values-ref _g8930_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8044_ _e8057_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8044_)
                                    (cons _e-stx8056_ '())))
                        (gx#stx-source _stx8006_))))))
               (_E80098024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80098024_)))))
                                         (_E80098024_)))))
                               (_E80098024_))))
                       (_E80098024_)))))
            (let () (_E80088059_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx7950_)
      (let ((_e79517964_ _stx7950_))
        (let ((_E79537968_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79517964_))))
          (let ((_E79528002_
                 (lambda ()
                   (if (gx#stx-pair? _e79517964_)
                       (let ((_e79547972_ (gx#syntax-e _e79517964_)))
                         (let ((_hd79557975_ (##car _e79547972_))
                               (_tl79567977_ (##cdr _e79547972_)))
                           (if (gx#stx-pair? _tl79567977_)
                               (let ((_e79577980_ (gx#syntax-e _tl79567977_)))
                                 (let ((_hd79587983_ (##car _e79577980_))
                                       (_tl79597985_ (##cdr _e79577980_)))
                                   (let ((_id7988_ _hd79587983_))
                                     (if (gx#stx-pair? _tl79597985_)
                                         (let ((_e79607990_
                                                (gx#syntax-e _tl79597985_)))
                                           (let ((_hd79617993_
                                                  (##car _e79607990_))
                                                 (_tl79627995_
                                                  (##cdr _e79607990_)))
                                             (let ((_alias-id7998_
                                                    _hd79617993_))
                                               (if (gx#stx-null? _tl79627995_)
                                                   (if (if (gx#identifier?
                                                            _id7988_)
                                                           (gx#identifier?
                                                            _alias-id7998_)
                                                           '#f)
                                                       (let ((_alias-id8000_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id7998_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id7988_
                                                            _alias-id8000_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id7988_)
                                (cons _alias-id8000_ '()))))))
               (_E79537968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79537968_)))))
                                         (_E79537968_)))))
                               (_E79537968_))))
                       (_E79537968_)))))
            (let () (_E79528002_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda7891
      (lambda (_stx7893_ _wrap?7894_)
        (let ((_e78957905_ _stx7893_))
          (let ((_E78977909_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e78957905_))))
            (let ((_E78967936_
                   (lambda ()
                     (if (gx#stx-pair? _e78957905_)
                         (let ((_e78987913_ (gx#syntax-e _e78957905_)))
                           (let ((_hd78997916_ (##car _e78987913_))
                                 (_tl79007918_ (##cdr _e78987913_)))
                             (if (gx#stx-pair? _tl79007918_)
                                 (let ((_e79017921_
                                        (gx#syntax-e _tl79007918_)))
                                   (let ((_hd79027924_ (##car _e79017921_))
                                         (_tl79037926_ (##cdr _e79017921_)))
                                     (let ((_hd7929_ _hd79027924_))
                                       (let ((_body7931_ _tl79037926_))
                                         (if (gx#core-bind-values? _hd7929_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd7929_)
                                                  (let ((_body7934_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd7929_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7893_
                              _body7931_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?7894_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body7934_)
                                                         (gx#stx-source
                                                          _stx7893_))
                                                        _body7934_))))
                                              gx#current-expander-context
                                              (let ((__obj8923
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8923)
                                                  __obj8923)))
                                             (_E78977909_))))))
                                 (_E78977909_))))
                         (_E78977909_)))))
              (let () (_E78967936_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx7943_)
          (let ((_wrap?7945_ '#t))
            (gx#core-expand-lambda%__opt-lambda7891 _stx7943_ _wrap?7945_))))
      (define gx#core-expand-lambda%
        (lambda _g8933_
          (let ((_g8932_ (length _g8933_)))
            (cond ((fx= _g8932_ 1) (apply gx#core-expand-lambda%__0 _g8933_))
                  ((fx= _g8932_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda7891 _g8933_))
                  (else (error "No clause matching arguments" _g8933_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx7857_)
      (let ((_e78587865_ _stx7857_))
        (let ((_E78607869_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78587865_))))
          (let ((_E78597888_
                 (lambda ()
                   (if (gx#stx-pair? _e78587865_)
                       (let ((_e78617873_ (gx#syntax-e _e78587865_)))
                         (let ((_hd78627876_ (##car _e78617873_))
                               (_tl78637878_ (##cdr _e78617873_)))
                           (let ((_clauses7881_ _tl78637878_))
                             (if (gx#stx-list? _clauses7881_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause7883_)
                                      (gx#core-expand-lambda%__opt-lambda7891
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause7883_)
                                        (let ((_$e7885_
                                               (gx#stx-source _clause7883_)))
                                          (if _$e7885_
                                              _$e7885_
                                              (gx#stx-source _stx7857_))))
                                       '#f))
                                    _clauses7881_))
                                  (gx#stx-source _stx7857_))
                                 (_E78607869_)))))
                       (_E78607869_)))))
            (let () (_E78597888_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7811_)
      (let ((_e78127822_ _stx7811_))
        (let ((_E78147826_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78127822_))))
          (let ((_E78137853_
                 (lambda ()
                   (if (gx#stx-pair? _e78127822_)
                       (let ((_e78157830_ (gx#syntax-e _e78127822_)))
                         (let ((_hd78167833_ (##car _e78157830_))
                               (_tl78177835_ (##cdr _e78157830_)))
                           (if (gx#stx-pair? _tl78177835_)
                               (let ((_e78187838_ (gx#syntax-e _tl78177835_)))
                                 (let ((_hd78197841_ (##car _e78187838_))
                                       (_tl78207843_ (##cdr _e78187838_)))
                                   (let ((_hd7846_ _hd78197841_))
                                     (let ((_body7848_ _tl78207843_))
                                       (if (gx#core-expand-let-bind? _hd7846_)
                                           (let ((_expressions7850_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd7846_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7846_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7846_
                                                                _expressions7850_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7811_
                              _body7848_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7811_))))
                                              gx#current-expander-context
                                              (let ((__obj8924
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8924)
                                                  __obj8924))))
                                           (_E78147826_))))))
                               (_E78147826_))))
                       (_E78147826_)))))
            (let () (_E78137853_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7754
      (lambda (_stx7756_ _form7757_)
        (let ((_e77587768_ _stx7756_))
          (let ((_E77607772_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e77587768_))))
            (let ((_E77597797_
                   (lambda ()
                     (if (gx#stx-pair? _e77587768_)
                         (let ((_e77617776_ (gx#syntax-e _e77587768_)))
                           (let ((_hd77627779_ (##car _e77617776_))
                                 (_tl77637781_ (##cdr _e77617776_)))
                             (if (gx#stx-pair? _tl77637781_)
                                 (let ((_e77647784_
                                        (gx#syntax-e _tl77637781_)))
                                   (let ((_hd77657787_ (##car _e77647784_))
                                         (_tl77667789_ (##cdr _e77647784_)))
                                     (let ((_hd7792_ _hd77657787_))
                                       (let ((_body7794_ _tl77667789_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7792_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7792_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7757_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7792_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7792_))
                       (cons (gx#core-expand-local-block _stx7756_ _body7794_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7756_))))
                                              gx#current-expander-context
                                              (let ((__obj8925
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8925)
                                                  __obj8925)))
                                             (_E77607772_))))))
                                 (_E77607772_))))
                         (_E77607772_)))))
              (let () (_E77597797_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7804_)
          (let ((_form7806_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7754
             _stx7804_
             _form7806_))))
      (define gx#core-expand-letrec-values%
        (lambda _g8935_
          (let ((_g8934_ (length _g8935_)))
            (cond ((fx= _g8934_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g8935_))
                  ((fx= _g8934_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7754
                          _g8935_))
                  (else (error "No clause matching arguments" _g8935_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7753_)
      (gx#core-expand-letrec-values%__opt-lambda7754
       _stx7753_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7710_)
      (if (gx#stx-list? _stx7710_)
          (gx#stx-andmap
           (lambda (_bind7712_)
             (let ((_e77137723_ _bind7712_))
               (let ((_E77157727_ (lambda () '#f)))
                 (let ((_E77147749_
                        (lambda ()
                          (if (gx#stx-pair? _e77137723_)
                              (let ((_e77167731_ (gx#syntax-e _e77137723_)))
                                (let ((_hd77177734_ (##car _e77167731_))
                                      (_tl77187736_ (##cdr _e77167731_)))
                                  (let ((_hd7739_ _hd77177734_))
                                    (if (gx#stx-pair? _tl77187736_)
                                        (let ((_e77197741_
                                               (gx#syntax-e _tl77187736_)))
                                          (let ((_hd77207744_
                                                 (##car _e77197741_))
                                                (_tl77217746_
                                                 (##cdr _e77197741_)))
                                            (if (gx#stx-null? _tl77217746_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7739_)
                                                    (_E77157727_))
                                                (_E77157727_))))
                                        (_E77157727_)))))
                              (_E77157727_)))))
                   (let () (_E77147749_))))))
           _stx7710_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7669_)
      (let ((_e76707680_ _bind7669_))
        (let ((_E76727684_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76707680_))))
          (let ((_E76717706_
                 (lambda ()
                   (if (gx#stx-pair? _e76707680_)
                       (let ((_e76737688_ (gx#syntax-e _e76707680_)))
                         (let ((_hd76747691_ (##car _e76737688_))
                               (_tl76757693_ (##cdr _e76737688_)))
                           (if (gx#stx-pair? _tl76757693_)
                               (let ((_e76767696_ (gx#syntax-e _tl76757693_)))
                                 (let ((_hd76777699_ (##car _e76767696_))
                                       (_tl76787701_ (##cdr _e76767696_)))
                                   (let ((_expr7704_ _hd76777699_))
                                     (if (gx#stx-null? _tl76787701_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7704_)
                                             (_E76727684_))
                                         (_E76727684_)))))
                               (_E76727684_))))
                       (_E76727684_)))))
            (let () (_E76717706_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7628_)
      (let ((_e76297639_ _bind7628_))
        (let ((_E76317643_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76297639_))))
          (let ((_E76307665_
                 (lambda ()
                   (if (gx#stx-pair? _e76297639_)
                       (let ((_e76327647_ (gx#syntax-e _e76297639_)))
                         (let ((_hd76337650_ (##car _e76327647_))
                               (_tl76347652_ (##cdr _e76327647_)))
                           (let ((_hd7655_ _hd76337650_))
                             (if (gx#stx-pair? _tl76347652_)
                                 (let ((_e76357657_
                                        (gx#syntax-e _tl76347652_)))
                                   (let ((_hd76367660_ (##car _e76357657_))
                                         (_tl76377662_ (##cdr _e76357657_)))
                                     (if (gx#stx-null? _tl76377662_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7655_)
                                             (_E76317643_))
                                         (_E76317643_))))
                                 (_E76317643_)))))
                       (_E76317643_)))))
            (let () (_E76307665_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7586_ _expr7587_)
      (let ((_e75887598_ _bind7586_))
        (let ((_E75907602_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75887598_))))
          (let ((_E75897624_
                 (lambda ()
                   (if (gx#stx-pair? _e75887598_)
                       (let ((_e75917606_ (gx#syntax-e _e75887598_)))
                         (let ((_hd75927609_ (##car _e75917606_))
                               (_tl75937611_ (##cdr _e75917606_)))
                           (let ((_hd7614_ _hd75927609_))
                             (if (gx#stx-pair? _tl75937611_)
                                 (let ((_e75947616_
                                        (gx#syntax-e _tl75937611_)))
                                   (let ((_hd75957619_ (##car _e75947616_))
                                         (_tl75967621_ (##cdr _e75947616_)))
                                     (if (gx#stx-null? _tl75967621_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7614_)
                                                   (cons _expr7587_ '()))
                                             (_E75907602_))
                                         (_E75907602_))))
                                 (_E75907602_)))))
                       (_E75907602_)))))
            (let () (_E75897624_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7540_)
      (let ((_e75417551_ _stx7540_))
        (let ((_E75437555_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75417551_))))
          (let ((_E75427582_
                 (lambda ()
                   (if (gx#stx-pair? _e75417551_)
                       (let ((_e75447559_ (gx#syntax-e _e75417551_)))
                         (let ((_hd75457562_ (##car _e75447559_))
                               (_tl75467564_ (##cdr _e75447559_)))
                           (if (gx#stx-pair? _tl75467564_)
                               (let ((_e75477567_ (gx#syntax-e _tl75467564_)))
                                 (let ((_hd75487570_ (##car _e75477567_))
                                       (_tl75497572_ (##cdr _e75477567_)))
                                   (let ((_hd7575_ _hd75487570_))
                                     (let ((_body7577_ _tl75497572_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7575_)
                                           (let ((_expanders7579_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7575_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7575_
                                                   _expanders7579_)
                                                  (gx#core-expand-local-block
                                                   _stx7540_
                                                   _body7577_)))
                                              gx#current-expander-context
                                              (let ((__obj8926
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8926)
                                                  __obj8926))))
                                           (_E75437555_))))))
                               (_E75437555_))))
                       (_E75437555_)))))
            (let () (_E75427582_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7489_)
      (let ((_e74907500_ _stx7489_))
        (let ((_E74927504_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74907500_))))
          (let ((_E74917536_
                 (lambda ()
                   (if (gx#stx-pair? _e74907500_)
                       (let ((_e74937508_ (gx#syntax-e _e74907500_)))
                         (let ((_hd74947511_ (##car _e74937508_))
                               (_tl74957513_ (##cdr _e74937508_)))
                           (if (gx#stx-pair? _tl74957513_)
                               (let ((_e74967516_ (gx#syntax-e _tl74957513_)))
                                 (let ((_hd74977519_ (##car _e74967516_))
                                       (_tl74987521_ (##cdr _e74967516_)))
                                   (let ((_hd7524_ _hd74977519_))
                                     (let ((_body7526_ _tl74987521_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7524_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7524_
                                                 (make-list
                                                  (gx#stx-length _hd7524_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g75287531_
                                                          _g75297533_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7346
                                                    _g75287531_
                                                    _g75297533_
                                                    '#t))
                                                 _hd7524_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7524_))
                                                (gx#core-expand-local-block
                                                 _stx7489_
                                                 _body7526_)))
                                            gx#current-expander-context
                                            (let ((__obj8927
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj8927)
                                                __obj8927)))
                                           (_E74927504_))))))
                               (_E74927504_))))
                       (_E74927504_)))))
            (let () (_E74917536_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7446_)
      (if (gx#stx-list? _stx7446_)
          (gx#stx-andmap
           (lambda (_bind7448_)
             (let ((_e74497459_ _bind7448_))
               (let ((_E74517463_ (lambda () '#f)))
                 (let ((_E74507485_
                        (lambda ()
                          (if (gx#stx-pair? _e74497459_)
                              (let ((_e74527467_ (gx#syntax-e _e74497459_)))
                                (let ((_hd74537470_ (##car _e74527467_))
                                      (_tl74547472_ (##cdr _e74527467_)))
                                  (let ((_hd7475_ _hd74537470_))
                                    (if (gx#stx-pair? _tl74547472_)
                                        (let ((_e74557477_
                                               (gx#syntax-e _tl74547472_)))
                                          (let ((_hd74567480_
                                                 (##car _e74557477_))
                                                (_tl74577482_
                                                 (##cdr _e74557477_)))
                                            (if (gx#stx-null? _tl74577482_)
                                                (if '#t
                                                    (gx#identifier? _hd7475_)
                                                    (_E74517463_))
                                                (_E74517463_))))
                                        (_E74517463_)))))
                              (_E74517463_)))))
                   (let () (_E74507485_))))))
           _stx7446_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7403_)
      (let ((_e74047414_ _bind7403_))
        (let ((_E74067418_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74047414_))))
          (let ((_E74057442_
                 (lambda ()
                   (if (gx#stx-pair? _e74047414_)
                       (let ((_e74077422_ (gx#syntax-e _e74047414_)))
                         (let ((_hd74087425_ (##car _e74077422_))
                               (_tl74097427_ (##cdr _e74077422_)))
                           (if (gx#stx-pair? _tl74097427_)
                               (let ((_e74107430_ (gx#syntax-e _tl74097427_)))
                                 (let ((_hd74117433_ (##car _e74107430_))
                                       (_tl74127435_ (##cdr _e74107430_)))
                                   (let ((_expr7438_ _hd74117433_))
                                     (if (gx#stx-null? _tl74127435_)
                                         (if '#t
                                             (let ((_g8936_ (gx#core-expand-expression+1
                                                             _expr7438_)))
                                               (begin
                                                 (let ((_g8937_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g8937_ 2))
                                                       (error "Context expects 2 values"
                                                              _g8937_)))
                                                 (let ((_e7440_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8936_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7440_)))
                                             (_E74067418_))
                                         (_E74067418_)))))
                               (_E74067418_))))
                       (_E74067418_)))))
            (let () (_E74057442_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7346
      (lambda (_bind7348_ _e7349_ _rebind?7350_)
        (let ((_e73517361_ _bind7348_))
          (let ((_E73537365_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e73517361_))))
            (let ((_E73527387_
                   (lambda ()
                     (if (gx#stx-pair? _e73517361_)
                         (let ((_e73547369_ (gx#syntax-e _e73517361_)))
                           (let ((_hd73557372_ (##car _e73547369_))
                                 (_tl73567374_ (##cdr _e73547369_)))
                             (let ((_id7377_ _hd73557372_))
                               (if (gx#stx-pair? _tl73567374_)
                                   (let ((_e73577379_
                                          (gx#syntax-e _tl73567374_)))
                                     (let ((_hd73587382_ (##car _e73577379_))
                                           (_tl73597384_ (##cdr _e73577379_)))
                                       (if (gx#stx-null? _tl73597384_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7377_
                                                _e7349_
                                                _rebind?7350_)
                                               (_E73537365_))
                                           (_E73537365_))))
                                   (_E73537365_)))))
                         (_E73537365_)))))
              (let () (_E73527387_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7394_ _e7395_)
          (let ((_rebind?7397_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7346
             _bind7394_
             _e7395_
             _rebind?7397_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g8939_
          (let ((_g8938_ (length _g8939_)))
            (cond ((fx= _g8938_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g8939_))
                  ((fx= _g8938_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7346
                          _g8939_))
                  (else (error "No clause matching arguments" _g8939_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7306_)
      (let ((_e73077317_ _stx7306_))
        (let ((_E73097321_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73077317_))))
          (let ((_E73087343_
                 (lambda ()
                   (if (gx#stx-pair? _e73077317_)
                       (let ((_e73107325_ (gx#syntax-e _e73077317_)))
                         (let ((_hd73117328_ (##car _e73107325_))
                               (_tl73127330_ (##cdr _e73107325_)))
                           (if (gx#stx-pair? _tl73127330_)
                               (let ((_e73137333_ (gx#syntax-e _tl73127330_)))
                                 (let ((_hd73147336_ (##car _e73137333_))
                                       (_tl73157338_ (##cdr _e73137333_)))
                                   (let ((_expr7341_ _hd73147336_))
                                     (if (gx#stx-null? _tl73157338_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7341_)
                                             (_E73097321_))
                                         (_E73097321_)))))
                               (_E73097321_))))
                       (_E73097321_)))))
            (let () (_E73087343_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7265_)
      (let ((_e72667276_ _stx7265_))
        (let ((_E72687280_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72667276_))))
          (let ((_E72677302_
                 (lambda ()
                   (if (gx#stx-pair? _e72667276_)
                       (let ((_e72697284_ (gx#syntax-e _e72667276_)))
                         (let ((_hd72707287_ (##car _e72697284_))
                               (_tl72717289_ (##cdr _e72697284_)))
                           (if (gx#stx-pair? _tl72717289_)
                               (let ((_e72727292_ (gx#syntax-e _tl72717289_)))
                                 (let ((_hd72737295_ (##car _e72727292_))
                                       (_tl72747297_ (##cdr _e72727292_)))
                                   (let ((_e7300_ _hd72737295_))
                                     (if (gx#stx-null? _tl72747297_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7300_)
                                                          '()))
                                              (gx#stx-source _stx7265_))
                                             (_E72687280_))
                                         (_E72687280_)))))
                               (_E72687280_))))
                       (_E72687280_)))))
            (let () (_E72677302_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7224_)
      (let ((_e72257235_ _stx7224_))
        (let ((_E72277239_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72257235_))))
          (let ((_E72267261_
                 (lambda ()
                   (if (gx#stx-pair? _e72257235_)
                       (let ((_e72287243_ (gx#syntax-e _e72257235_)))
                         (let ((_hd72297246_ (##car _e72287243_))
                               (_tl72307248_ (##cdr _e72287243_)))
                           (if (gx#stx-pair? _tl72307248_)
                               (let ((_e72317251_ (gx#syntax-e _tl72307248_)))
                                 (let ((_hd72327254_ (##car _e72317251_))
                                       (_tl72337256_ (##cdr _e72317251_)))
                                   (let ((_e7259_ _hd72327254_))
                                     (if (gx#stx-null? _tl72337256_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7259_)
                                                          '()))
                                              (gx#stx-source _stx7224_))
                                             (_E72277239_))
                                         (_E72277239_)))))
                               (_E72277239_))))
                       (_E72277239_)))))
            (let () (_E72267261_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7181_)
      (let ((_e71827192_ _stx7181_))
        (let ((_E71847196_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71827192_))))
          (let ((_E71837220_
                 (lambda ()
                   (if (gx#stx-pair? _e71827192_)
                       (let ((_e71857200_ (gx#syntax-e _e71827192_)))
                         (let ((_hd71867203_ (##car _e71857200_))
                               (_tl71877205_ (##cdr _e71857200_)))
                           (if (gx#stx-pair? _tl71877205_)
                               (let ((_e71887208_ (gx#syntax-e _tl71877205_)))
                                 (let ((_hd71897211_ (##car _e71887208_))
                                       (_tl71907213_ (##cdr _e71887208_)))
                                   (let ((_rator7216_ _hd71897211_))
                                     (let ((_args7218_ _tl71907213_))
                                       (if (gx#stx-list? _args7218_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7216_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7218_))
                                            (gx#stx-source _stx7181_))
                                           (_E71847196_))))))
                               (_E71847196_))))
                       (_E71847196_)))))
            (let () (_E71837220_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7114_)
      (let ((_e71157131_ _stx7114_))
        (let ((_E71177135_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71157131_))))
          (let ((_E71167177_
                 (lambda ()
                   (if (gx#stx-pair? _e71157131_)
                       (let ((_e71187139_ (gx#syntax-e _e71157131_)))
                         (let ((_hd71197142_ (##car _e71187139_))
                               (_tl71207144_ (##cdr _e71187139_)))
                           (if (gx#stx-pair? _tl71207144_)
                               (let ((_e71217147_ (gx#syntax-e _tl71207144_)))
                                 (let ((_hd71227150_ (##car _e71217147_))
                                       (_tl71237152_ (##cdr _e71217147_)))
                                   (let ((_test7155_ _hd71227150_))
                                     (if (gx#stx-pair? _tl71237152_)
                                         (let ((_e71247157_
                                                (gx#syntax-e _tl71237152_)))
                                           (let ((_hd71257160_
                                                  (##car _e71247157_))
                                                 (_tl71267162_
                                                  (##cdr _e71247157_)))
                                             (let ((_K7165_ _hd71257160_))
                                               (if (gx#stx-pair? _tl71267162_)
                                                   (let ((_e71277167_
                                                          (gx#syntax-e
                                                           _tl71267162_)))
                                                     (let ((_hd71287170_
                                                            (##car _e71277167_))
                                                           (_tl71297172_
                                                            (##cdr _e71277167_)))
                                                       (let ((_E7175_ _hd71287170_))
                                                         (if (gx#stx-null?
                                                              _tl71297172_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7155_)
                                      (cons (gx#core-expand-expression _K7165_)
                                            (cons (gx#core-expand-expression
                                                   _E7175_)
                                                  '()))))
                          (gx#stx-source _stx7114_))
                         (_E71177135_))
                     (_E71177135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71177135_)))))
                                         (_E71177135_)))))
                               (_E71177135_))))
                       (_E71177135_)))))
            (let () (_E71167177_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7073_)
      (let ((_e70747084_ _stx7073_))
        (let ((_E70767088_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70747084_))))
          (let ((_E70757110_
                 (lambda ()
                   (if (gx#stx-pair? _e70747084_)
                       (let ((_e70777092_ (gx#syntax-e _e70747084_)))
                         (let ((_hd70787095_ (##car _e70777092_))
                               (_tl70797097_ (##cdr _e70777092_)))
                           (if (gx#stx-pair? _tl70797097_)
                               (let ((_e70807100_ (gx#syntax-e _tl70797097_)))
                                 (let ((_hd70817103_ (##car _e70807100_))
                                       (_tl70827105_ (##cdr _e70807100_)))
                                   (let ((_id7108_ _hd70817103_))
                                     (if (gx#stx-null? _tl70827105_)
                                         (if (gx#core-runtime-ref? _id7108_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7108_
                                                           _stx7073_)
                                                          '()))
                                              (gx#stx-source _stx7073_))
                                             (_E70767088_))
                                         (_E70767088_)))))
                               (_E70767088_))))
                       (_E70767088_)))))
            (let () (_E70757110_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7019_)
      (let ((_e70207033_ _stx7019_))
        (let ((_E70227037_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70207033_))))
          (let ((_E70217069_
                 (lambda ()
                   (if (gx#stx-pair? _e70207033_)
                       (let ((_e70237041_ (gx#syntax-e _e70207033_)))
                         (let ((_hd70247044_ (##car _e70237041_))
                               (_tl70257046_ (##cdr _e70237041_)))
                           (if (gx#stx-pair? _tl70257046_)
                               (let ((_e70267049_ (gx#syntax-e _tl70257046_)))
                                 (let ((_hd70277052_ (##car _e70267049_))
                                       (_tl70287054_ (##cdr _e70267049_)))
                                   (let ((_id7057_ _hd70277052_))
                                     (if (gx#stx-pair? _tl70287054_)
                                         (let ((_e70297059_
                                                (gx#syntax-e _tl70287054_)))
                                           (let ((_hd70307062_
                                                  (##car _e70297059_))
                                                 (_tl70317064_
                                                  (##cdr _e70297059_)))
                                             (let ((_expr7067_ _hd70307062_))
                                               (if (gx#stx-null? _tl70317064_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7057_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7057_
                             _stx7019_)
                            (cons (gx#core-expand-expression _expr7067_) '())))
                (gx#stx-source _stx7019_))
               (_E70227037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E70227037_)))))
                                         (_E70227037_)))))
                               (_E70227037_))))
                       (_E70227037_)))))
            (let () (_E70217069_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx6867_)
      (let ((_generate6869_
             (lambda (_body6899_)
               ((letrec ((_lp6901_
                          (lambda (_rest6903_ _ns6904_ _r6905_)
                            (let ((_e69066921_ _rest6903_))
                              (let ((_E69196925_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e69066921_))))
                                (let ((_E69156929_
                                       (lambda ()
                                         (if (gx#stx-null? _e69066921_)
                                             (if '#t
                                                 (reverse _r6905_)
                                                 (_E69196925_))
                                             (_E69196925_)))))
                                  (let ((_E69086986_
                                         (lambda ()
                                           (if (gx#stx-pair? _e69066921_)
                                               (let ((_e69166933_
                                                      (gx#syntax-e
                                                       _e69066921_)))
                                                 (let ((_hd69176936_
                                                        (##car _e69166933_))
                                                       (_tl69186938_
                                                        (##cdr _e69166933_)))
                                                   (let ((_hd6941_
                                                          _hd69176936_))
                                                     (let ((_rest6943_
                                                            _tl69186938_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd6941_)
                                                               (_lp6901_
                                                                _rest6943_
                                                                _ns6904_
                                                                (cons (cons _hd6941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns6904_
                                              (gx#stx-identifier
                                               _hd6941_
                                               _ns6904_
                                               '"#"
                                               _hd6941_)
                                              _hd6941_)
                                          '()))
                              _r6905_))
                       (let ((_e69446954_ _hd6941_))
                         (let ((_E69466958_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e69446954_))))
                           (let ((_E69456982_
                                  (lambda ()
                                    (if (gx#stx-pair? _e69446954_)
                                        (let ((_e69476962_
                                               (gx#syntax-e _e69446954_)))
                                          (let ((_hd69486965_
                                                 (##car _e69476962_))
                                                (_tl69496967_
                                                 (##cdr _e69476962_)))
                                            (let ((_id6970_ _hd69486965_))
                                              (if (gx#stx-pair? _tl69496967_)
                                                  (let ((_e69506972_
                                                         (gx#syntax-e
                                                          _tl69496967_)))
                                                    (let ((_hd69516975_
                                                           (##car _e69506972_))
                                                          (_tl69526977_
                                                           (##cdr _e69506972_)))
                                                      (let ((_eid6980_
                                                             _hd69516975_))
                                                        (if (gx#stx-null?
                                                             _tl69526977_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6970_)
                            (gx#identifier? _eid6980_)
                            '#f)
                        (_lp6901_
                         _rest6943_
                         _ns6904_
                         (cons (cons _id6970_ (cons _eid6980_ '())) _r6905_))
                        (_E69466958_))
                    (_E69466958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E69466958_)))))
                                        (_E69466958_)))))
                             (let () (_E69456982_))))))
                   (_E69156929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E69156929_)))))
                                    (let ((_E69077015_
                                           (lambda ()
                                             (if (gx#stx-pair? _e69066921_)
                                                 (let ((_e69096990_
                                                        (gx#syntax-e
                                                         _e69066921_)))
                                                   (let ((_hd69106993_
                                                          (##car _e69096990_))
                                                         (_tl69116995_
                                                          (##cdr _e69096990_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd69106993_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl69116995_)
                                                             (let ((_e69126998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl69116995_)))
                       (let ((_hd69137001_ (##car _e69126998_))
                             (_tl69147003_ (##cdr _e69126998_)))
                         (let ((_ns7006_ _hd69137001_))
                           (let ((_rest7008_ _tl69147003_))
                             (if '#t
                                 (let ((_ns7013_
                                        (if (gx#identifier? _ns7006_)
                                            (symbol->string
                                             (gx#stx-e _ns7006_))
                                            (if (let ((_$e7010_
                                                       (gx#stx-string?
                                                        _ns7006_)))
                                                  (if _$e7010_
                                                      _$e7010_
                                                      (gx#stx-false?
                                                       _ns7006_)))
                                                (gx#stx-e _ns7006_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx6867_
                                                 _ns7006_)))))
                                   (_lp6901_ _rest7008_ _ns7013_ _r6905_))
                                 (_E69086986_))))))
                     (_E69086986_))
                 (_E69086986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E69086986_)))))
                                      (let () (_E69077015_))))))))))
                  _lp6901_)
                _body6899_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e68706877_ _stx6867_))
          (let ((_E68726881_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e68706877_))))
            (let ((_E68716895_
                   (lambda ()
                     (if (gx#stx-pair? _e68706877_)
                         (let ((_e68736885_ (gx#syntax-e _e68706877_)))
                           (let ((_hd68746888_ (##car _e68736885_))
                                 (_tl68756890_ (##cdr _e68736885_)))
                             (let ((_body6893_ _tl68756890_))
                               (if (gx#stx-list? _body6893_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate6869_ _body6893_))
                                   (_E68726881_)))))
                         (_E68726881_)))))
              (let () (_E68716895_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6813_)
      (let ((_e68146827_ _stx6813_))
        (let ((_E68166831_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68146827_))))
          (let ((_E68156863_
                 (lambda ()
                   (if (gx#stx-pair? _e68146827_)
                       (let ((_e68176835_ (gx#syntax-e _e68146827_)))
                         (let ((_hd68186838_ (##car _e68176835_))
                               (_tl68196840_ (##cdr _e68176835_)))
                           (if (gx#stx-pair? _tl68196840_)
                               (let ((_e68206843_ (gx#syntax-e _tl68196840_)))
                                 (let ((_hd68216846_ (##car _e68206843_))
                                       (_tl68226848_ (##cdr _e68206843_)))
                                   (let ((_hd6851_ _hd68216846_))
                                     (if (gx#stx-pair? _tl68226848_)
                                         (let ((_e68236853_
                                                (gx#syntax-e _tl68226848_)))
                                           (let ((_hd68246856_
                                                  (##car _e68236853_))
                                                 (_tl68256858_
                                                  (##cdr _e68236853_)))
                                             (let ((_expr6861_ _hd68246856_))
                                               (if (gx#stx-null? _tl68256858_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd6851_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd6851_)
                           (cons _expr6861_ '())))
               (_E68166831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68166831_)))))
                                         (_E68166831_)))))
                               (_E68166831_))))
                       (_E68166831_)))))
            (let () (_E68156863_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6759_)
      (let ((_e67606773_ _stx6759_))
        (let ((_E67626777_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67606773_))))
          (let ((_E67616809_
                 (lambda ()
                   (if (gx#stx-pair? _e67606773_)
                       (let ((_e67636781_ (gx#syntax-e _e67606773_)))
                         (let ((_hd67646784_ (##car _e67636781_))
                               (_tl67656786_ (##cdr _e67636781_)))
                           (if (gx#stx-pair? _tl67656786_)
                               (let ((_e67666789_ (gx#syntax-e _tl67656786_)))
                                 (let ((_hd67676792_ (##car _e67666789_))
                                       (_tl67686794_ (##cdr _e67666789_)))
                                   (let ((_hd6797_ _hd67676792_))
                                     (if (gx#stx-pair? _tl67686794_)
                                         (let ((_e67696799_
                                                (gx#syntax-e _tl67686794_)))
                                           (let ((_hd67706802_
                                                  (##car _e67696799_))
                                                 (_tl67716804_
                                                  (##cdr _e67696799_)))
                                             (let ((_expr6807_ _hd67706802_))
                                               (if (gx#stx-null? _tl67716804_)
                                                   (if (gx#identifier?
                                                        _hd6797_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6807_ '())))
               (_E67626777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67626777_)))))
                                         (_E67626777_)))))
                               (_E67626777_))))
                       (_E67626777_)))))
            (let () (_E67616809_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6705_)
      (let ((_e67066719_ _stx6705_))
        (let ((_E67086723_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67066719_))))
          (let ((_E67076755_
                 (lambda ()
                   (if (gx#stx-pair? _e67066719_)
                       (let ((_e67096727_ (gx#syntax-e _e67066719_)))
                         (let ((_hd67106730_ (##car _e67096727_))
                               (_tl67116732_ (##cdr _e67096727_)))
                           (if (gx#stx-pair? _tl67116732_)
                               (let ((_e67126735_ (gx#syntax-e _tl67116732_)))
                                 (let ((_hd67136738_ (##car _e67126735_))
                                       (_tl67146740_ (##cdr _e67126735_)))
                                   (let ((_id6743_ _hd67136738_))
                                     (if (gx#stx-pair? _tl67146740_)
                                         (let ((_e67156745_
                                                (gx#syntax-e _tl67146740_)))
                                           (let ((_hd67166748_
                                                  (##car _e67156745_))
                                                 (_tl67176750_
                                                  (##cdr _e67156745_)))
                                             (let ((_alias-id6753_
                                                    _hd67166748_))
                                               (if (gx#stx-null? _tl67176750_)
                                                   (if (if (gx#identifier?
                                                            _id6743_)
                                                           (gx#identifier?
                                                            _alias-id6753_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6753_ '())))
               (_E67086723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67086723_)))))
                                         (_E67086723_)))))
                               (_E67086723_))))
                       (_E67086723_)))))
            (let () (_E67076755_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6662_)
      (let ((_e66636673_ _stx6662_))
        (let ((_E66656677_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66636673_))))
          (let ((_E66646701_
                 (lambda ()
                   (if (gx#stx-pair? _e66636673_)
                       (let ((_e66666681_ (gx#syntax-e _e66636673_)))
                         (let ((_hd66676684_ (##car _e66666681_))
                               (_tl66686686_ (##cdr _e66666681_)))
                           (if (gx#stx-pair? _tl66686686_)
                               (let ((_e66696689_ (gx#syntax-e _tl66686686_)))
                                 (let ((_hd66706692_ (##car _e66696689_))
                                       (_tl66716694_ (##cdr _e66696689_)))
                                   (let ((_hd6697_ _hd66706692_))
                                     (let ((_body6699_ _tl66716694_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6697_)
                                               (if (gx#stx-list? _body6699_)
                                                   (not (gx#stx-null?
                                                         _body6699_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6697_)
                                            _body6699_)
                                           (_E66656677_))))))
                               (_E66656677_))))
                       (_E66656677_)))))
            (let () (_E66646701_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6598_)
      (let ((_generate6600_
             (lambda (_clause6630_)
               (let ((_e66316638_ _clause6630_))
                 (let ((_E66336642_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6598_
                           _clause6630_))))
                   (let ((_E66326658_
                          (lambda ()
                            (if (gx#stx-pair? _e66316638_)
                                (let ((_e66346646_ (gx#syntax-e _e66316638_)))
                                  (let ((_hd66356649_ (##car _e66346646_))
                                        (_tl66366651_ (##cdr _e66346646_)))
                                    (let ((_hd6654_ _hd66356649_))
                                      (let ((_body6656_ _tl66366651_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6654_)
                                                (if (gx#stx-list? _body6656_)
                                                    (not (gx#stx-null?
                                                          _body6656_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6654_)
                                                   _body6656_)
                                             (gx#stx-source _clause6630_))
                                            (_E66336642_))))))
                                (_E66336642_)))))
                     (let () (_E66326658_))))))))
        (let ((_e66016608_ _stx6598_))
          (let ((_E66036612_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e66016608_))))
            (let ((_E66026626_
                   (lambda ()
                     (if (gx#stx-pair? _e66016608_)
                         (let ((_e66046616_ (gx#syntax-e _e66016608_)))
                           (let ((_hd66056619_ (##car _e66046616_))
                                 (_tl66066621_ (##cdr _e66046616_)))
                             (let ((_clauses6624_ _tl66066621_))
                               (if (gx#stx-list? _clauses6624_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6600_ _clauses6624_))
                                   (_E66036612_)))))
                         (_E66036612_)))))
              (let () (_E66026626_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6497
      (lambda (_stx6499_ _form6500_)
        (let ((_generate6502_
               (lambda (_bind6545_)
                 (let ((_e65466556_ _bind6545_))
                   (let ((_E65486560_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6499_
                             _bind6545_))))
                     (let ((_E65476584_
                            (lambda ()
                              (if (gx#stx-pair? _e65466556_)
                                  (let ((_e65496564_
                                         (gx#syntax-e _e65466556_)))
                                    (let ((_hd65506567_ (##car _e65496564_))
                                          (_tl65516569_ (##cdr _e65496564_)))
                                      (let ((_ids6572_ _hd65506567_))
                                        (if (gx#stx-pair? _tl65516569_)
                                            (let ((_e65526574_
                                                   (gx#syntax-e _tl65516569_)))
                                              (let ((_hd65536577_
                                                     (##car _e65526574_))
                                                    (_tl65546579_
                                                     (##cdr _e65526574_)))
                                                (let ((_expr6582_
                                                       _hd65536577_))
                                                  (if (gx#stx-null?
                                                       _tl65546579_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6572_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6572_)
                        (cons _expr6582_ '()))
                  (_E65486560_))
              (_E65486560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E65486560_)))))
                                  (_E65486560_)))))
                       (let () (_E65476584_))))))))
          (let ((_e65036513_ _stx6499_))
            (let ((_E65056517_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e65036513_))))
              (let ((_E65046541_
                     (lambda ()
                       (if (gx#stx-pair? _e65036513_)
                           (let ((_e65066521_ (gx#syntax-e _e65036513_)))
                             (let ((_hd65076524_ (##car _e65066521_))
                                   (_tl65086526_ (##cdr _e65066521_)))
                               (if (gx#stx-pair? _tl65086526_)
                                   (let ((_e65096529_
                                          (gx#syntax-e _tl65086526_)))
                                     (let ((_hd65106532_ (##car _e65096529_))
                                           (_tl65116534_ (##cdr _e65096529_)))
                                       (let ((_hd6537_ _hd65106532_))
                                         (let ((_body6539_ _tl65116534_))
                                           (if (if (gx#stx-list? _hd6537_)
                                                   (if (gx#stx-list?
                                                        _body6539_)
                                                       (not (gx#stx-null?
                                                             _body6539_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6500_
                                                (gx#stx-map1
                                                 _generate6502_
                                                 _hd6537_)
                                                _body6539_)
                                               (_E65056517_))))))
                                   (_E65056517_))))
                           (_E65056517_)))))
                (let () (_E65046541_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6591_)
          (let ((_form6593_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6497
             _stx6591_
             _form6593_))))
      (define gx#macro-expand-let-values
        (lambda _g8941_
          (let ((_g8940_ (length _g8941_)))
            (cond ((fx= _g8940_ 1)
                   (apply gx#macro-expand-let-values__0 _g8941_))
                  ((fx= _g8940_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6497 _g8941_))
                  (else (error "No clause matching arguments" _g8941_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6496_)
      (gx#macro-expand-let-values__opt-lambda6497 _stx6496_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6494_)
      (gx#macro-expand-let-values__opt-lambda6497
       _stx6494_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6385_)
      (let ((_e63866412_ _stx6385_))
        (let ((_E63986416_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63866412_))))
          (let ((_E63886458_
                 (lambda ()
                   (if (gx#stx-pair? _e63866412_)
                       (let ((_e63996420_ (gx#syntax-e _e63866412_)))
                         (let ((_hd64006423_ (##car _e63996420_))
                               (_tl64016425_ (##cdr _e63996420_)))
                           (if (gx#stx-pair? _tl64016425_)
                               (let ((_e64026428_ (gx#syntax-e _tl64016425_)))
                                 (let ((_hd64036431_ (##car _e64026428_))
                                       (_tl64046433_ (##cdr _e64026428_)))
                                   (let ((_test6436_ _hd64036431_))
                                     (if (gx#stx-pair? _tl64046433_)
                                         (let ((_e64056438_
                                                (gx#syntax-e _tl64046433_)))
                                           (let ((_hd64066441_
                                                  (##car _e64056438_))
                                                 (_tl64076443_
                                                  (##cdr _e64056438_)))
                                             (let ((_K6446_ _hd64066441_))
                                               (if (gx#stx-pair? _tl64076443_)
                                                   (let ((_e64086448_
                                                          (gx#syntax-e
                                                           _tl64076443_)))
                                                     (let ((_hd64096451_
                                                            (##car _e64086448_))
                                                           (_tl64106453_
                                                            (##cdr _e64086448_)))
                                                       (let ((_E6456_ _hd64096451_))
                                                         (if (gx#stx-null?
                                                              _tl64106453_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6436_ _K6446_ _E6456_)
                         (_E63986416_))
                     (_E63986416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63986416_)))))
                                         (_E63986416_)))))
                               (_E63986416_))))
                       (_E63986416_)))))
            (let ((_E63876490_
                   (lambda ()
                     (if (gx#stx-pair? _e63866412_)
                         (let ((_e63896462_ (gx#syntax-e _e63866412_)))
                           (let ((_hd63906465_ (##car _e63896462_))
                                 (_tl63916467_ (##cdr _e63896462_)))
                             (if (gx#stx-pair? _tl63916467_)
                                 (let ((_e63926470_
                                        (gx#syntax-e _tl63916467_)))
                                   (let ((_hd63936473_ (##car _e63926470_))
                                         (_tl63946475_ (##cdr _e63926470_)))
                                     (let ((_test6478_ _hd63936473_))
                                       (if (gx#stx-pair? _tl63946475_)
                                           (let ((_e63956480_
                                                  (gx#syntax-e _tl63946475_)))
                                             (let ((_hd63966483_
                                                    (##car _e63956480_))
                                                   (_tl63976485_
                                                    (##cdr _e63956480_)))
                                               (let ((_K6488_ _hd63966483_))
                                                 (if (gx#stx-null?
                                                      _tl63976485_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6478_
                                                          _K6488_
                                                          '#!void)
                                                         (_E63886458_))
                                                     (_E63886458_)))))
                                           (_E63886458_)))))
                                 (_E63886458_))))
                         (_E63886458_)))))
              (let () (_E63876490_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6373_ _yid6374_)
      (let ((_xe6376_ (gx#resolve-identifier__0 _xid6373_))
            (_ye6377_ (gx#resolve-identifier__0 _yid6374_)))
        (if (if _xe6376_ _ye6377_ '#f)
            (let ((_$e6379_ (eq? _xe6376_ _ye6377_)))
              (if _$e6379_
                  _$e6379_
                  (if (##structure-instance-of? _xe6376_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6377_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6376_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6377_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6382_ _xe6376_)) (if _$e6382_ _$e6382_ _ye6377_))
                '#f
                (gx#stx-eq? _xid6373_ _yid6374_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6357_ _yid6358_)
      (let ((_context6360_
             (lambda (_e6371_)
               (if (##structure-direct-instance-of?
                    _e6371_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6371_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6361_
               (lambda (_e6369_)
                 (if (symbol? _e6369_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6369_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6369_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6369_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6362_
                 (lambda (_e6367_)
                   (if (symbol? _e6367_)
                       _e6367_
                       (gx#syntax-local-unwrap _e6367_)))))
            (let ((_x6364_ (_unwrap6362_ _xid6357_))
                  (_y6365_ (_unwrap6362_ _yid6358_)))
              (if (gx#stx-eq? _x6364_ _y6365_)
                  (if (eq? (_context6360_ _x6364_) (_context6360_ _y6365_))
                      (andmap eq? (_marks6361_ _x6364_) (_marks6361_ _y6365_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6355_)
      (if (gx#identifier? _stx6355_) (gx#core-identifier=? _stx6355_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6353_)
      (if (gx#identifier? _stx6353_)
          (gx#core-identifier=? _stx6353_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6351_)
      (if (gx#identifier? _x6351_)
          (if (not (gx#underscore? _x6351_)) _x6351_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6295
      (lambda (_stx6297_ _where6298_)
        ((letrec ((_lp6300_
                   (lambda (_rest6302_)
                     (let ((_rest63036311_ _rest6302_))
                       (let ((_E63066315_
                              (lambda ()
                                (error '"No clause matching" _rest63036311_))))
                         (let ((_else63056319_ (lambda () '#t)))
                           (let ((_K63076329_
                                  (lambda (_rest6322_ _hd6323_)
                                    (if (not (gx#identifier? _hd6323_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6298_
                                         _hd6323_)
                                        (if (find (lambda (_g63246326_)
                                                    (gx#bound-identifier=?
                                                     _g63246326_
                                                     _hd6323_))
                                                  _rest6322_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6298_
                                             _hd6323_)
                                            (_lp6300_ _rest6322_))))))
                             (if (##pair? _rest63036311_)
                                 (let ((_hd63086332_ (##car _rest63036311_))
                                       (_tl63096334_ (##cdr _rest63036311_)))
                                   (let ((_hd6337_ _hd63086332_))
                                     (let ((_rest6339_ _tl63096334_))
                                       (_K63076329_ _rest6339_ _hd6337_))))
                                 (_else63056319_)))))))))
           _lp6300_)
         (gx#syntax->list _stx6297_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6344_)
          (let ((_where6346_ _stx6344_))
            (gx#check-duplicate-identifiers__opt-lambda6295
             _stx6344_
             _where6346_))))
      (define gx#check-duplicate-identifiers
        (lambda _g8943_
          (let ((_g8942_ (length _g8943_)))
            (cond ((fx= _g8942_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g8943_))
                  ((fx= _g8942_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6295
                          _g8943_))
                  (else (error "No clause matching arguments" _g8943_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6289_)
      (gx#stx-andmap
       (lambda (_x6291_)
         (let ((_$e6293_ (gx#identifier? _x6291_)))
           (if _$e6293_ _$e6293_ (gx#stx-false? _x6291_))))
       _stx6289_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6251
      (lambda (_stx6253_ _rebind?6254_ _phi6255_ _ctx6256_)
        (gx#stx-for-each1
         (lambda (_id6258_)
           (if (gx#identifier? _id6258_)
               (gx#core-bind-runtime!__opt-lambda6187
                _id6258_
                _rebind?6254_
                _phi6255_
                _ctx6256_)
               '#!void))
         _stx6253_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6263_)
          (let ((_rebind?6265_ '#f))
            (let ((_phi6267_ (gx#current-expander-phi)))
              (let ((_ctx6269_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6251
                 _stx6263_
                 _rebind?6265_
                 _phi6267_
                 _ctx6269_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6271_ _rebind?6272_)
          (let ((_phi6274_ (gx#current-expander-phi)))
            (let ((_ctx6276_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6251
               _stx6271_
               _rebind?6272_
               _phi6274_
               _ctx6276_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6278_ _rebind?6279_ _phi6280_)
          (let ((_ctx6282_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6251
             _stx6278_
             _rebind?6279_
             _phi6280_
             _ctx6282_))))
      (define gx#core-bind-values!
        (lambda _g8945_
          (let ((_g8944_ (length _g8945_)))
            (cond ((fx= _g8944_ 1) (apply gx#core-bind-values!__0 _g8945_))
                  ((fx= _g8944_ 2) (apply gx#core-bind-values!__1 _g8945_))
                  ((fx= _g8944_ 3) (apply gx#core-bind-values!__2 _g8945_))
                  ((fx= _g8944_ 4)
                   (apply gx#core-bind-values!__opt-lambda6251 _g8945_))
                  (else (error "No clause matching arguments" _g8945_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6248_)
      (gx#stx-map1
       (lambda (_x6250_)
         (if (gx#identifier? _x6250_) (gx#core-quote-syntax__0 _x6250_) '#f))
       _stx6248_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6241_)
      (if (gx#identifier? _stx6241_)
          (let ((_bind6243_ (gx#resolve-identifier__0 _stx6241_)))
            (let ((_$e6245_ (not _bind6243_)))
              (if _$e6245_
                  _$e6245_
                  (##structure-instance-of?
                   _bind6243_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6230_ _form6231_)
      (let ((_bind6233_ (gx#resolve-identifier__0 _id6230_)))
        (if (##structure-instance-of? _bind6233_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6230_)
            (if (not _bind6233_)
                (if (let ((_$e6235_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6235_
                          _$e6235_
                          (let ((_$e6238_
                                 (gx#core-context-rebind?__opt-lambda4099
                                  (gx#core-context-top__0))))
                            (if _$e6238_
                                _$e6238_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6230_))))))
                    (gx#core-quote-syntax__0 _id6230_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6231_
                     _id6230_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6231_
                 _id6230_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6187
      (lambda (_id6189_ _rebind?6190_ _phi6191_ _ctx6192_)
        (let ((_key6194_ (gx#core-identifier-key _id6189_)))
          (let ((_eid6196_
                 (gx#make-binding-id__opt-lambda5954
                  _key6194_
                  '#f
                  _phi6191_
                  _ctx6192_)))
            (let ((_bind6198_
                   (if (##structure-instance-of?
                        _ctx6192_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6196_
                        _key6194_
                        _phi6191_
                        _ctx6192_)
                       (if (##structure-instance-of?
                            _ctx6192_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6196_
                            _key6194_
                            _phi6191_)
                           (if (##structure-instance-of?
                                _ctx6192_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6196_
                                _key6194_
                                _phi6191_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6196_
                                _key6194_
                                _phi6191_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4545
                 _id6189_
                 _bind6198_
                 _rebind?6190_
                 _phi6191_
                 _ctx6192_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6204_)
          (let ((_rebind?6206_ '#f))
            (let ((_phi6208_ (gx#current-expander-phi)))
              (let ((_ctx6210_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6187
                 _id6204_
                 _rebind?6206_
                 _phi6208_
                 _ctx6210_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6212_ _rebind?6213_)
          (let ((_phi6215_ (gx#current-expander-phi)))
            (let ((_ctx6217_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6187
               _id6212_
               _rebind?6213_
               _phi6215_
               _ctx6217_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6219_ _rebind?6220_ _phi6221_)
          (let ((_ctx6223_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6187
             _id6219_
             _rebind?6220_
             _phi6221_
             _ctx6223_))))
      (define gx#core-bind-runtime!
        (lambda _g8947_
          (let ((_g8946_ (length _g8947_)))
            (cond ((fx= _g8946_ 1) (apply gx#core-bind-runtime!__0 _g8947_))
                  ((fx= _g8946_ 2) (apply gx#core-bind-runtime!__1 _g8947_))
                  ((fx= _g8946_ 3) (apply gx#core-bind-runtime!__2 _g8947_))
                  ((fx= _g8946_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6187 _g8947_))
                  (else (error "No clause matching arguments" _g8947_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6142
      (lambda (_id6144_ _eid6145_ _rebind?6146_ _phi6147_ _ctx6148_)
        (let ((_key6150_ (gx#core-identifier-key _id6144_)))
          (let ((_bind6152_
                 (if (##structure-instance-of? _ctx6148_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6145_
                      _key6150_
                      _phi6147_
                      _ctx6148_)
                     (if (##structure-instance-of?
                          _ctx6148_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6145_
                          _key6150_
                          _phi6147_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6145_
                          _key6150_
                          _phi6147_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4545
               _id6144_
               _bind6152_
               _rebind?6146_
               _phi6147_
               _ctx6148_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6158_ _eid6159_)
          (let ((_rebind?6161_ '#f))
            (let ((_phi6163_ (gx#current-expander-phi)))
              (let ((_ctx6165_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6142
                 _id6158_
                 _eid6159_
                 _rebind?6161_
                 _phi6163_
                 _ctx6165_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6167_ _eid6168_ _rebind?6169_)
          (let ((_phi6171_ (gx#current-expander-phi)))
            (let ((_ctx6173_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6142
               _id6167_
               _eid6168_
               _rebind?6169_
               _phi6171_
               _ctx6173_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6175_ _eid6176_ _rebind?6177_ _phi6178_)
          (let ((_ctx6180_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6142
             _id6175_
             _eid6176_
             _rebind?6177_
             _phi6178_
             _ctx6180_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g8949_
          (let ((_g8948_ (length _g8949_)))
            (cond ((fx= _g8948_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g8949_))
                  ((fx= _g8948_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g8949_))
                  ((fx= _g8948_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g8949_))
                  ((fx= _g8948_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6142
                          _g8949_))
                  (else (error "No clause matching arguments" _g8949_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6102
      (lambda (_id6104_ _eid6105_ _rebind?6106_ _phi6107_ _ctx6108_)
        (gx#bind-identifier!__opt-lambda4545
         _id6104_
         (##structure
          gx#extern-binding::t
          _eid6105_
          (gx#core-identifier-key _id6104_)
          _phi6107_)
         _rebind?6106_
         _phi6107_
         _ctx6108_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6113_ _eid6114_)
          (let ((_rebind?6116_ '#f))
            (let ((_phi6118_ (gx#current-expander-phi)))
              (let ((_ctx6120_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6102
                 _id6113_
                 _eid6114_
                 _rebind?6116_
                 _phi6118_
                 _ctx6120_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6122_ _eid6123_ _rebind?6124_)
          (let ((_phi6126_ (gx#current-expander-phi)))
            (let ((_ctx6128_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6102
               _id6122_
               _eid6123_
               _rebind?6124_
               _phi6126_
               _ctx6128_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6130_ _eid6131_ _rebind?6132_ _phi6133_)
          (let ((_ctx6135_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6102
             _id6130_
             _eid6131_
             _rebind?6132_
             _phi6133_
             _ctx6135_))))
      (define gx#core-bind-extern!
        (lambda _g8951_
          (let ((_g8950_ (length _g8951_)))
            (cond ((fx= _g8950_ 2) (apply gx#core-bind-extern!__0 _g8951_))
                  ((fx= _g8950_ 3) (apply gx#core-bind-extern!__1 _g8951_))
                  ((fx= _g8950_ 4) (apply gx#core-bind-extern!__2 _g8951_))
                  ((fx= _g8950_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6102 _g8951_))
                  (else (error "No clause matching arguments" _g8951_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6056
      (lambda (_id6058_ _e6059_ _rebind?6060_ _phi6061_ _ctx6062_)
        (gx#bind-identifier!__opt-lambda4545
         _id6058_
         (let ((_key6067_ (gx#core-identifier-key _id6058_))
               (_e6068_ (if (let ((_$e6064_
                                   (##structure-instance-of?
                                    _e6059_
                                    'gx#expander::t)))
                              (if _$e6064_
                                  _$e6064_
                                  (##structure-instance-of?
                                   _e6059_
                                   'gx#expander-context::t)))
                            _e6059_
                            (##structure
                             gx#user-expander::t
                             _e6059_
                             _ctx6062_
                             _phi6061_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda5954
             _key6067_
             '#t
             _phi6061_
             _ctx6062_)
            _key6067_
            _phi6061_
            _e6068_))
         _rebind?6060_
         _phi6061_
         _ctx6062_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6073_ _e6074_)
          (let ((_rebind?6076_ '#f))
            (let ((_phi6078_ (gx#current-expander-phi)))
              (let ((_ctx6080_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6056
                 _id6073_
                 _e6074_
                 _rebind?6076_
                 _phi6078_
                 _ctx6080_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6082_ _e6083_ _rebind?6084_)
          (let ((_phi6086_ (gx#current-expander-phi)))
            (let ((_ctx6088_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6056
               _id6082_
               _e6083_
               _rebind?6084_
               _phi6086_
               _ctx6088_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6090_ _e6091_ _rebind?6092_ _phi6093_)
          (let ((_ctx6095_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6056
             _id6090_
             _e6091_
             _rebind?6092_
             _phi6093_
             _ctx6095_))))
      (define gx#core-bind-syntax!
        (lambda _g8953_
          (let ((_g8952_ (length _g8953_)))
            (cond ((fx= _g8952_ 2) (apply gx#core-bind-syntax!__0 _g8953_))
                  ((fx= _g8952_ 3) (apply gx#core-bind-syntax!__1 _g8953_))
                  ((fx= _g8952_ 4) (apply gx#core-bind-syntax!__2 _g8953_))
                  ((fx= _g8952_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6056 _g8953_))
                  (else (error "No clause matching arguments" _g8953_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6039
      (lambda (_id6041_ _e6042_ _rebind?6043_)
        (gx#core-bind-syntax!__opt-lambda6056
         _id6041_
         _e6042_
         _rebind?6043_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6048_ _e6049_)
          (let ((_rebind?6051_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6039
             _id6048_
             _e6049_
             _rebind?6051_))))
      (define gx#core-bind-root-syntax!
        (lambda _g8955_
          (let ((_g8954_ (length _g8955_)))
            (cond ((fx= _g8954_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g8955_))
                  ((fx= _g8954_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6039 _g8955_))
                  (else (error "No clause matching arguments" _g8955_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda5997
      (lambda (_id5999_ _alias-id6000_ _rebind?6001_ _phi6002_ _ctx6003_)
        (gx#bind-identifier!__opt-lambda4545
         _id5999_
         (let ((_key6005_ (gx#core-identifier-key _id5999_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda5954
             _key6005_
             '#t
             _phi6002_
             _ctx6003_)
            _key6005_
            _phi6002_
            _alias-id6000_))
         _rebind?6001_
         _phi6002_
         _ctx6003_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6010_ _alias-id6011_)
          (let ((_rebind?6013_ '#f))
            (let ((_phi6015_ (gx#current-expander-phi)))
              (let ((_ctx6017_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda5997
                 _id6010_
                 _alias-id6011_
                 _rebind?6013_
                 _phi6015_
                 _ctx6017_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6019_ _alias-id6020_ _rebind?6021_)
          (let ((_phi6023_ (gx#current-expander-phi)))
            (let ((_ctx6025_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda5997
               _id6019_
               _alias-id6020_
               _rebind?6021_
               _phi6023_
               _ctx6025_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6027_ _alias-id6028_ _rebind?6029_ _phi6030_)
          (let ((_ctx6032_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda5997
             _id6027_
             _alias-id6028_
             _rebind?6029_
             _phi6030_
             _ctx6032_))))
      (define gx#core-bind-alias!
        (lambda _g8957_
          (let ((_g8956_ (length _g8957_)))
            (cond ((fx= _g8956_ 2) (apply gx#core-bind-alias!__0 _g8957_))
                  ((fx= _g8956_ 3) (apply gx#core-bind-alias!__1 _g8957_))
                  ((fx= _g8956_ 4) (apply gx#core-bind-alias!__2 _g8957_))
                  ((fx= _g8956_ 5)
                   (apply gx#core-bind-alias!__opt-lambda5997 _g8957_))
                  (else (error "No clause matching arguments" _g8957_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda5954
      (lambda (_key5956_ _syntax?5957_ _phi5958_ _ctx5959_)
        (if (uninterned-symbol? _key5956_)
            (gensym 'L)
            (if (pair? _key5956_)
                (gensym (car _key5956_))
                (if (##structure-instance-of? _ctx5959_ 'gx#top-context::t)
                    (let ((_ns5961_
                           (gx#core-context-namespace__opt-lambda4082
                            _ctx5959_)))
                      (if (if (fxzero? _phi5958_) (not _syntax?5957_) '#f)
                          (if _ns5961_
                              (make-symbol _ns5961_ '"#" _key5956_)
                              _key5956_)
                          (if _syntax?5957_
                              (make-symbol
                               (let ((_$e5963_ _ns5961_))
                                 (if _$e5963_ _$e5963_ '""))
                               '"[:"
                               (number->string _phi5958_)
                               '":]#"
                               _key5956_)
                              (make-symbol
                               (let ((_$e5966_ _ns5961_))
                                 (if _$e5966_ _$e5966_ '""))
                               '"["
                               (number->string _phi5958_)
                               '"]#"
                               _key5956_))))
                    (gensym _key5956_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key5972_)
          (let ((_syntax?5974_ '#f))
            (let ((_phi5976_ (gx#current-expander-phi)))
              (let ((_ctx5978_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda5954
                 _key5972_
                 _syntax?5974_
                 _phi5976_
                 _ctx5978_))))))
      (define gx#make-binding-id__1
        (lambda (_key5980_ _syntax?5981_)
          (let ((_phi5983_ (gx#current-expander-phi)))
            (let ((_ctx5985_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda5954
               _key5980_
               _syntax?5981_
               _phi5983_
               _ctx5985_)))))
      (define gx#make-binding-id__2
        (lambda (_key5987_ _syntax?5988_ _phi5989_)
          (let ((_ctx5991_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda5954
             _key5987_
             _syntax?5988_
             _phi5989_
             _ctx5991_))))
      (define gx#make-binding-id
        (lambda _g8959_
          (let ((_g8958_ (length _g8959_)))
            (cond ((fx= _g8958_ 1) (apply gx#make-binding-id__0 _g8959_))
                  ((fx= _g8958_ 2) (apply gx#make-binding-id__1 _g8959_))
                  ((fx= _g8958_ 3) (apply gx#make-binding-id__2 _g8959_))
                  ((fx= _g8958_ 4)
                   (apply gx#make-binding-id__opt-lambda5954 _g8959_))
                  (else (error "No clause matching arguments" _g8959_)))))))))
