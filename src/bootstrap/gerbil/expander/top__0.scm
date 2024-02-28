(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709111636)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89283_)
        (letrec ((_expand-special89285_
                  (lambda (_hd89287_ _K89288_ _rest89289_ _r89290_)
                    (_K89288_
                     _rest89289_
                     (cons (gx#core-expand-top _hd89287_) _r89290_)))))
          (gx#core-expand-block__0 _stx89283_ _expand-special89285_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89036_)
        (letrec ((_expand-special89038_
                  (lambda (_hd89158_ _K89159_ _rest89160_ _r89161_)
                    (let* ((_K89165_
                            (lambda (_e89163_)
                              (_K89159_ _rest89160_ (cons _e89163_ _r89161_))))
                           (_e8916689195_ _hd89158_)
                           (_E8919089199_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8916689195_)))
                           (_E8918689211_
                            (lambda ()
                              (if (gx#stx-pair? _e8916689195_)
                                  (let ((_e8919189203_
                                         (gx#syntax-e _e8916689195_)))
                                    (let ((_hd8919289206_
                                           (##car _e8919189203_))
                                          (_tl8919389208_
                                           (##cdr _e8919189203_)))
                                      (if (and (gx#identifier? _hd8919289206_)
                                               (gx#core-identifier=?
                                                _hd8919289206_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89165_
                                               (gx#core-expand-define-runtime%
                                                _hd89158_))
                                              (_E8919089199_))
                                          (_E8919089199_))))
                                  (_E8919089199_))))
                           (_E8918289223_
                            (lambda ()
                              (if (gx#stx-pair? _e8916689195_)
                                  (let ((_e8918789215_
                                         (gx#syntax-e _e8916689195_)))
                                    (let ((_hd8918889218_
                                           (##car _e8918789215_))
                                          (_tl8918989220_
                                           (##cdr _e8918789215_)))
                                      (if (and (gx#identifier? _hd8918889218_)
                                               (gx#core-identifier=?
                                                _hd8918889218_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89165_
                                               (gx#core-expand-define-alias%
                                                _hd89158_))
                                              (_E8918689211_))
                                          (_E8918689211_))))
                                  (_E8918689211_))))
                           (_E8917289235_
                            (lambda ()
                              (if (gx#stx-pair? _e8916689195_)
                                  (let ((_e8918389227_
                                         (gx#syntax-e _e8916689195_)))
                                    (let ((_hd8918489230_
                                           (##car _e8918389227_))
                                          (_tl8918589232_
                                           (##cdr _e8918389227_)))
                                      (if (and (gx#identifier? _hd8918489230_)
                                               (gx#core-identifier=?
                                                _hd8918489230_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89165_
                                               (gx#core-expand-define-syntax%
                                                _hd89158_))
                                              (_E8918289223_))
                                          (_E8918289223_))))
                                  (_E8918289223_))))
                           (_E8916889267_
                            (lambda ()
                              (if (gx#stx-pair? _e8916689195_)
                                  (let ((_e8917389239_
                                         (gx#syntax-e _e8916689195_)))
                                    (let ((_hd8917489242_
                                           (##car _e8917389239_))
                                          (_tl8917589244_
                                           (##cdr _e8917389239_)))
                                      (if (and (gx#identifier? _hd8917489242_)
                                               (gx#core-identifier=?
                                                _hd8917489242_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8917589244_)
                                              (let ((_e8917689247_
                                                     (gx#syntax-e
                                                      _tl8917589244_)))
                                                (let ((_hd8917789250_
                                                       (##car _e8917689247_))
                                                      (_tl8917889252_
                                                       (##cdr _e8917689247_)))
                                                  (let ((_hd-bind89255_
                                                         _hd8917789250_))
                                                    (if (gx#stx-pair?
                                                         _tl8917889252_)
                                                        (let ((_e8917989257_
                                                               (gx#syntax-e
                                                                _tl8917889252_)))
                                                          (let ((_hd8918089260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8917989257_))
                        (_tl8918189262_ (##cdr _e8917989257_)))
                    (let ((_expr89265_ _hd8918089260_))
                      (if (gx#stx-null? _tl8918189262_)
                          (if (gx#core-bind-values? _hd-bind89255_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89255_)
                                (_K89165_ _hd89158_))
                              (_E8917289235_))
                          (_E8917289235_)))))
                (_E8917289235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8917289235_))
                                          (_E8917289235_))))
                                  (_E8917289235_))))
                           (_E8916789279_
                            (lambda ()
                              (if (gx#stx-pair? _e8916689195_)
                                  (let ((_e8916989271_
                                         (gx#syntax-e _e8916689195_)))
                                    (let ((_hd8917089274_
                                           (##car _e8916989271_))
                                          (_tl8917189276_
                                           (##cdr _e8916989271_)))
                                      (if (and (gx#identifier? _hd8917089274_)
                                               (gx#core-identifier=?
                                                _hd8917089274_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89165_
                                               (gx#core-expand-begin-syntax%
                                                _hd89158_))
                                              (_E8916889267_))
                                          (_E8916889267_))))
                                  (_E8916889267_)))))
                      (_E8916789279_))))
                 (_eval-body89039_
                  (lambda (_rbody89047_)
                    (let _lp89049_ ((_rest89051_ _rbody89047_)
                                    (_body89052_ '())
                                    (_ebody89053_ '()))
                      (let* ((_rest8905489062_ _rest89051_)
                             (_else8905689070_
                              (lambda ()
                                (values _body89052_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89053_)
                                          (gx#stx-source _stx89036_))))))
                             (_K8905889146_
                              (lambda (_rest89073_ _hd89074_)
                                (let* ((_e8907589092_ _hd89074_)
                                       (_E8908789096_
                                        (lambda ()
                                          (_lp89049_
                                           _rest89073_
                                           (cons _hd89074_ _body89052_)
                                           (cons _hd89074_ _ebody89053_))))
                                       (_E8907789108_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8907589092_)
                                              (let ((_e8908889100_
                                                     (gx#syntax-e
                                                      _e8907589092_)))
                                                (let ((_hd8908989103_
                                                       (##car _e8908889100_))
                                                      (_tl8909089105_
                                                       (##cdr _e8908889100_)))
                                                  (if (and (gx#identifier?
                                                            _hd8908989103_)
                                                           (gx#core-identifier=?
                                                            _hd8908989103_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89049_
                                                           _rest89073_
                                                           (cons _hd89074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89052_)
                   _ebody89053_)
                  (_E8908789096_))
              (_E8908789096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8908789096_))))
                                       (_E8907689142_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8907589092_)
                                              (let ((_e8907889112_
                                                     (gx#syntax-e
                                                      _e8907589092_)))
                                                (let ((_hd8907989115_
                                                       (##car _e8907889112_))
                                                      (_tl8908089117_
                                                       (##cdr _e8907889112_)))
                                                  (if (and (gx#identifier?
                                                            _hd8907989115_)
                                                           (gx#core-identifier=?
                                                            _hd8907989115_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8908089117_)
                                                          (let ((_e8908189120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8908089117_)))
                    (let ((_hd8908289123_ (##car _e8908189120_))
                          (_tl8908389125_ (##cdr _e8908189120_)))
                      (let ((_hd-bind89128_ _hd8908289123_))
                        (if (gx#stx-pair? _tl8908389125_)
                            (let ((_e8908489130_ (gx#syntax-e _tl8908389125_)))
                              (let ((_hd8908589133_ (##car _e8908489130_))
                                    (_tl8908689135_ (##cdr _e8908489130_)))
                                (let ((_expr89138_ _hd8908589133_))
                                  (if (gx#stx-null? _tl8908689135_)
                                      (if '#t
                                          (let ((_ehd89140_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89128_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89138_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89074_))))
                                            (_lp89049_
                                             _rest89073_
                                             (cons _ehd89140_ _body89052_)
                                             (cons _ehd89140_ _ebody89053_)))
                                          (_E8907789108_))
                                      (_E8907789108_)))))
                            (_E8907789108_)))))
                  (_E8907789108_))
              (_E8907789108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8907789108_)))))
                                  (_E8907689142_)))))
                        (if (##pair? _rest8905489062_)
                            (let ((_hd8905989149_ (##car _rest8905489062_))
                                  (_tl8906089151_ (##cdr _rest8905489062_)))
                              (let* ((_hd89154_ _hd8905989149_)
                                     (_rest89156_ _tl8906089151_))
                                (_K8905889146_ _rest89156_ _hd89154_)))
                            (_else8905689070_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89042_
                     (gx#core-expand-block__1
                      _stx89036_
                      _expand-special89038_
                      '#f))
                    (_g89306_ (_eval-body89039_ _rbody89042_)))
               (begin
                 (let ((_g89307_
                        (if (##values? _g89306_)
                            (##vector-length _g89306_)
                            1)))
                   (if (not (##fx= _g89307_ 2))
                       (error "Context expects 2 values" _g89307_)))
                 (let ((_expanded-body89044_ (##vector-ref _g89306_ 0))
                       (_value89045_ (##vector-ref _g89306_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89044_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89045_ '())))
                    (gx#stx-source _stx89036_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89006_)
        (let* ((_e8900789014_ _stx89006_)
               (_E8900989018_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8900789014_)))
               (_E8900889032_
                (lambda ()
                  (if (gx#stx-pair? _e8900789014_)
                      (let ((_e8901089022_ (gx#syntax-e _e8900789014_)))
                        (let ((_hd8901189025_ (##car _e8901089022_))
                              (_tl8901289027_ (##cdr _e8901089022_)))
                          (let ((_body89030_ _tl8901289027_))
                            (if (gx#stx-list? _body89030_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89030_)
                                 (gx#stx-source _stx89006_))
                                (_E8900989018_)))))
                      (_E8900989018_)))))
          (_E8900889032_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89004_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89004_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88950_)
        (let* ((_e8895188964_ _stx88950_)
               (_E8895388968_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8895188964_)))
               (_E8895289000_
                (lambda ()
                  (if (gx#stx-pair? _e8895188964_)
                      (let ((_e8895488972_ (gx#syntax-e _e8895188964_)))
                        (let ((_hd8895588975_ (##car _e8895488972_))
                              (_tl8895688977_ (##cdr _e8895488972_)))
                          (if (gx#stx-pair? _tl8895688977_)
                              (let ((_e8895788980_
                                     (gx#syntax-e _tl8895688977_)))
                                (let ((_hd8895888983_ (##car _e8895788980_))
                                      (_tl8895988985_ (##cdr _e8895788980_)))
                                  (let ((_ann88988_ _hd8895888983_))
                                    (if (gx#stx-pair? _tl8895988985_)
                                        (let ((_e8896088990_
                                               (gx#syntax-e _tl8895988985_)))
                                          (let ((_hd8896188993_
                                                 (##car _e8896088990_))
                                                (_tl8896288995_
                                                 (##cdr _e8896088990_)))
                                            (let ((_expr88998_ _hd8896188993_))
                                              (if (gx#stx-null? _tl8896288995_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88998_) '())))
               (gx#stx-source _stx88950_))
              (_E8895388968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8895388968_)))))
                                        (_E8895388968_)))))
                              (_E8895388968_))))
                      (_E8895388968_)))))
          (_E8895289000_))))
    (define gx#core-expand-local-block
      (lambda (_stx88674_ _body88675_)
        (letrec ((_expand-special88677_
                  (lambda (_hd88945_ _K88946_ _rest88947_ _r88948_)
                    (_K88946_
                     '()
                     (cons (_expand-internal88678_ _hd88945_ _rest88947_)
                           _r88948_))))
                 (_expand-internal88678_
                  (lambda (_hd88941_ _rest88942_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88680_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88941_ _rest88942_))
                          (gx#stx-source _stx88674_))
                         _expand-internal-special88679_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89300
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89300)
                       __obj89300))))
                 (_expand-internal-special88679_
                  (lambda (_hd88836_ _K88837_ _rest88838_ _r88839_)
                    (let* ((_e8884088865_ _hd88836_)
                           (_E8886088869_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8884088865_)))
                           (_E8885688881_
                            (lambda ()
                              (if (gx#stx-pair? _e8884088865_)
                                  (let ((_e8886188873_
                                         (gx#syntax-e _e8884088865_)))
                                    (let ((_hd8886288876_
                                           (##car _e8886188873_))
                                          (_tl8886388878_
                                           (##cdr _e8886188873_)))
                                      (if (and (gx#identifier? _hd8886288876_)
                                               (gx#core-identifier=?
                                                _hd8886288876_
                                                '%#declare))
                                          (if '#t
                                              (_K88837_
                                               _rest88838_
                                               (cons (gx#core-expand-declare%
                                                      _hd88836_)
                                                     _r88839_))
                                              (_E8886088869_))
                                          (_E8886088869_))))
                                  (_E8886088869_))))
                           (_E8885288893_
                            (lambda ()
                              (if (gx#stx-pair? _e8884088865_)
                                  (let ((_e8885788885_
                                         (gx#syntax-e _e8884088865_)))
                                    (let ((_hd8885888888_
                                           (##car _e8885788885_))
                                          (_tl8885988890_
                                           (##cdr _e8885788885_)))
                                      (if (and (gx#identifier? _hd8885888888_)
                                               (gx#core-identifier=?
                                                _hd8885888888_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88836_)
                                                (_K88837_
                                                 _rest88838_
                                                 _r88839_))
                                              (_E8885688881_))
                                          (_E8885688881_))))
                                  (_E8885688881_))))
                           (_E8884288905_
                            (lambda ()
                              (if (gx#stx-pair? _e8884088865_)
                                  (let ((_e8885388897_
                                         (gx#syntax-e _e8884088865_)))
                                    (let ((_hd8885488900_
                                           (##car _e8885388897_))
                                          (_tl8885588902_
                                           (##cdr _e8885388897_)))
                                      (if (and (gx#identifier? _hd8885488900_)
                                               (gx#core-identifier=?
                                                _hd8885488900_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88836_)
                                                (_K88837_
                                                 _rest88838_
                                                 _r88839_))
                                              (_E8885288893_))
                                          (_E8885288893_))))
                                  (_E8885288893_))))
                           (_E8884188937_
                            (lambda ()
                              (if (gx#stx-pair? _e8884088865_)
                                  (let ((_e8884388909_
                                         (gx#syntax-e _e8884088865_)))
                                    (let ((_hd8884488912_
                                           (##car _e8884388909_))
                                          (_tl8884588914_
                                           (##cdr _e8884388909_)))
                                      (if (and (gx#identifier? _hd8884488912_)
                                               (gx#core-identifier=?
                                                _hd8884488912_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8884588914_)
                                              (let ((_e8884688917_
                                                     (gx#syntax-e
                                                      _tl8884588914_)))
                                                (let ((_hd8884788920_
                                                       (##car _e8884688917_))
                                                      (_tl8884888922_
                                                       (##cdr _e8884688917_)))
                                                  (let ((_hd-bind88925_
                                                         _hd8884788920_))
                                                    (if (gx#stx-pair?
                                                         _tl8884888922_)
                                                        (let ((_e8884988927_
                                                               (gx#syntax-e
                                                                _tl8884888922_)))
                                                          (let ((_hd8885088930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8884988927_))
                        (_tl8885188932_ (##cdr _e8884988927_)))
                    (let ((_expr88935_ _hd8885088930_))
                      (if (gx#stx-null? _tl8885188932_)
                          (if (gx#core-bind-values? _hd-bind88925_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88925_)
                                (_K88837_
                                 _rest88838_
                                 (cons _hd88836_ _r88839_)))
                              (_E8884288905_))
                          (_E8884288905_)))))
                (_E8884288905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8884288905_))
                                          (_E8884288905_))))
                                  (_E8884288905_)))))
                      (_E8884188937_))))
                 (_wrap-internal88680_
                  (lambda (_rbody88682_)
                    (let _lp88684_ ((_rest88686_ _rbody88682_)
                                    (_decls88687_ '())
                                    (_bind88688_ '())
                                    (_body88689_ '()))
                      (let* ((_e8869088697_ _rest88686_)
                             (_E8869288746_
                              (lambda ()
                                (let* ((_body88741_
                                        (let* ((_body8870088710_ _body88689_)
                                               (_else8870388718_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88689_)
                                                   (gx#stx-source
                                                    _stx88674_)))))
                                          (let ((_K8870888738_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88674_)))
                                                (_K8870588724_
                                                 (lambda (_expr88722_)
                                                   _expr88722_)))
                                            (let ((_try-match8870288734_
                                                   (lambda ()
                                                     (if (##pair? _body8870088710_)
                                                         (let ((_tl8870788729_
                                                                (##cdr _body8870088710_))
                                                               (_hd8870688727_
                                                                (##car _body8870088710_)))
                                                           (if (##null? _tl8870788729_)
                                                               (let ((_expr88732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8870688727_))
                         (_K8870588724_ _expr88732_))
                       (_else8870388718_)))
                 (_else8870388718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8870088710_)
                                                  (_K8870888738_)
                                                  (_try-match8870288734_))))))
                                       (_body88743_
                                        (if (null? _bind88688_)
                                            _body88741_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88688_
                                                         (cons _body88741_
                                                               '())))
                                             (gx#stx-source _stx88674_)))))
                                  (if (null? _decls88687_)
                                      _body88743_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88687_
                                                   (cons _body88743_ '())))
                                       (gx#stx-source _stx88674_))))))
                             (_E8869188832_
                              (lambda ()
                                (if (gx#stx-pair? _e8869088697_)
                                    (let ((_e8869388750_
                                           (gx#syntax-e _e8869088697_)))
                                      (let ((_hd8869488753_
                                             (##car _e8869388750_))
                                            (_tl8869588755_
                                             (##cdr _e8869388750_)))
                                        (let* ((_hd88758_ _hd8869488753_)
                                               (_rest88760_ _tl8869588755_))
                                          (if '#t
                                              (let* ((_e8876188778_ _hd88758_)
                                                     (_E8877388782_
                                                      (lambda ()
                                                        (if (null? _bind88688_)
                                                            (_lp88684_
                                                             _rest88760_
                                                             _decls88687_
                                                             _bind88688_
                                                             (cons _hd88758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88689_))
                    (_lp88684_
                     _rest88760_
                     _decls88687_
                     (cons (cons '#f (cons _hd88758_ '())) _bind88688_)
                     _body88689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8876388796_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8876188778_)
                                                            (let ((_e8877488786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8876188778_)))
                      (let ((_hd8877588789_ (##car _e8877488786_))
                            (_tl8877688791_ (##cdr _e8877488786_)))
                        (if (and (gx#identifier? _hd8877588789_)
                                 (gx#core-identifier=?
                                  _hd8877588789_
                                  '%#declare))
                            (let ((_xdecls88794_ _tl8877688791_))
                              (if '#t
                                  (_lp88684_
                                   _rest88760_
                                   (gx#stx-foldr
                                    cons
                                    _decls88687_
                                    _xdecls88794_)
                                   _bind88688_
                                   _body88689_)
                                  (_E8877388782_)))
                            (_E8877388782_))))
                    (_E8877388782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8876288828_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8876188778_)
                                                            (let ((_e8876488800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8876188778_)))
                      (let ((_hd8876588803_ (##car _e8876488800_))
                            (_tl8876688805_ (##cdr _e8876488800_)))
                        (if (and (gx#identifier? _hd8876588803_)
                                 (gx#core-identifier=?
                                  _hd8876588803_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8876688805_)
                                (let ((_e8876788808_
                                       (gx#syntax-e _tl8876688805_)))
                                  (let ((_hd8876888811_ (##car _e8876788808_))
                                        (_tl8876988813_ (##cdr _e8876788808_)))
                                    (let ((_hd-bind88816_ _hd8876888811_))
                                      (if (gx#stx-pair? _tl8876988813_)
                                          (let ((_e8877088818_
                                                 (gx#syntax-e _tl8876988813_)))
                                            (let ((_hd8877188821_
                                                   (##car _e8877088818_))
                                                  (_tl8877288823_
                                                   (##cdr _e8877088818_)))
                                              (let ((_expr88826_
                                                     _hd8877188821_))
                                                (if (gx#stx-null?
                                                     _tl8877288823_)
                                                    (if '#t
                                                        (_lp88684_
                                                         _rest88760_
                                                         _decls88687_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88816_)
                             (cons (gx#core-expand-expression _expr88826_)
                                   '()))
                       _bind88688_)
                 _body88689_)
                (_E8876388796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8876388796_)))))
                                          (_E8876388796_)))))
                                (_E8876388796_))
                            (_E8876388796_))))
                    (_E8876388796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8876288828_))
                                              (_E8869288746_)))))
                                    (_E8869288746_)))))
                        (_E8869188832_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88675_)
            (gx#stx-source _stx88674_))
           _expand-special88677_))))
    (define gx#core-expand-declare%
      (lambda (_stx88612_)
        (let* ((_e8861388620_ _stx88612_)
               (_E8861588624_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8861388620_)))
               (_E8861488670_
                (lambda ()
                  (if (gx#stx-pair? _e8861388620_)
                      (let ((_e8861688628_ (gx#syntax-e _e8861388620_)))
                        (let ((_hd8861788631_ (##car _e8861688628_))
                              (_tl8861888633_ (##cdr _e8861688628_)))
                          (let ((_body88636_ _tl8861888633_))
                            (if (gx#stx-list? _body88636_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl88638_)
                                     (let* ((_e8863988646_ _decl88638_)
                                            (_E8864188650_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8863988646_)))
                                            (_E8864088666_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8863988646_)
                                                   (let ((_e8864288654_
                                                          (gx#syntax-e
                                                           _e8863988646_)))
                                                     (let ((_hd8864388657_
                                                            (##car _e8864288654_))
                                                           (_tl8864488659_
                                                            (##cdr _e8864288654_)))
                                                       (let* ((_head88662_
                                                               _hd8864388657_)
                                                              (_args88664_
                                                               _tl8864488659_))
                                                         (if (gx#stx-list?
                                                              _args88664_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl88638_)
                                                             (_E8864188650_)))))
                                                   (_E8864188650_)))))
                                       (_E8864088666_)))
                                   _body88636_))
                                 (gx#stx-source _stx88612_))
                                (_E8861588624_)))))
                      (_E8861588624_)))))
          (_E8861488670_))))
    (define gx#core-expand-extern%
      (lambda (_stx88516_)
        (let* ((_e8851788524_ _stx88516_)
               (_E8851988528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8851788524_)))
               (_E8851888608_
                (lambda ()
                  (if (gx#stx-pair? _e8851788524_)
                      (let ((_e8852088532_ (gx#syntax-e _e8851788524_)))
                        (let ((_hd8852188535_ (##car _e8852088532_))
                              (_tl8852288537_ (##cdr _e8852088532_)))
                          (let ((_body88540_ _tl8852288537_))
                            (if '#t
                                (let _lp88542_ ((_rest88544_ _body88540_)
                                                (_r88545_ '()))
                                  (let* ((_e8854688560_ _rest88544_)
                                         (_E8855888564_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88516_)))
                                         (_E8854888568_
                                          (lambda ()
                                            (if (gx#stx-null? _e8854688560_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88545_))
                                                     (gx#stx-source
                                                      _stx88516_))
                                                    (_E8855888564_))
                                                (_E8855888564_))))
                                         (_E8854788604_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8854688560_)
                                                (let ((_e8854988572_
                                                       (gx#syntax-e
                                                        _e8854688560_)))
                                                  (let ((_hd8855088575_
                                                         (##car _e8854988572_))
                                                        (_tl8855188577_
                                                         (##cdr _e8854988572_)))
                                                    (if (gx#stx-pair?
                                                         _hd8855088575_)
                                                        (let ((_e8855288580_
                                                               (gx#syntax-e
                                                                _hd8855088575_)))
                                                          (let ((_hd8855388583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8855288580_))
                        (_tl8855488585_ (##cdr _e8855288580_)))
                    (let ((_id88588_ _hd8855388583_))
                      (if (gx#stx-pair? _tl8855488585_)
                          (let ((_e8855588590_ (gx#syntax-e _tl8855488585_)))
                            (let ((_hd8855688593_ (##car _e8855588590_))
                                  (_tl8855788595_ (##cdr _e8855588590_)))
                              (let ((_eid88598_ _hd8855688593_))
                                (if (gx#stx-null? _tl8855788595_)
                                    (let ((_rest88600_ _tl8855188577_))
                                      (if (and (gx#identifier? _id88588_)
                                               (gx#identifier? _eid88598_))
                                          (let ((_eid88602_
                                                 (gx#stx-e _eid88598_)))
                                            (gx#core-bind-extern!__0
                                             _id88588_
                                             _eid88602_)
                                            (_lp88542_
                                             _rest88600_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88588_)
                                                         (cons _eid88602_ '()))
                                                   _r88545_)))
                                          (_E8854888568_)))
                                    (_E8854888568_)))))
                          (_E8854888568_)))))
                (_E8854888568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8854888568_)))))
                                    (_E8854788604_)))
                                (_E8851988528_)))))
                      (_E8851988528_)))))
          (_E8851888608_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88462_)
        (let* ((_e8846388476_ _stx88462_)
               (_E8846588480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8846388476_)))
               (_E8846488512_
                (lambda ()
                  (if (gx#stx-pair? _e8846388476_)
                      (let ((_e8846688484_ (gx#syntax-e _e8846388476_)))
                        (let ((_hd8846788487_ (##car _e8846688484_))
                              (_tl8846888489_ (##cdr _e8846688484_)))
                          (if (gx#stx-pair? _tl8846888489_)
                              (let ((_e8846988492_
                                     (gx#syntax-e _tl8846888489_)))
                                (let ((_hd8847088495_ (##car _e8846988492_))
                                      (_tl8847188497_ (##cdr _e8846988492_)))
                                  (let ((_hd88500_ _hd8847088495_))
                                    (if (gx#stx-pair? _tl8847188497_)
                                        (let ((_e8847288502_
                                               (gx#syntax-e _tl8847188497_)))
                                          (let ((_hd8847388505_
                                                 (##car _e8847288502_))
                                                (_tl8847488507_
                                                 (##cdr _e8847288502_)))
                                            (let ((_expr88510_ _hd8847388505_))
                                              (if (gx#stx-null? _tl8847488507_)
                                                  (if (gx#core-bind-values?
                                                       _hd88500_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88500_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88500_)
                             (cons (gx#core-expand-expression _expr88510_)
                                   '())))
                 (gx#stx-source _stx88462_)))
              (_E8846588480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8846588480_)))))
                                        (_E8846588480_)))))
                              (_E8846588480_))))
                      (_E8846588480_)))))
          (_E8846488512_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88406_)
        (let* ((_e8840788420_ _stx88406_)
               (_E8840988424_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8840788420_)))
               (_E8840888458_
                (lambda ()
                  (if (gx#stx-pair? _e8840788420_)
                      (let ((_e8841088428_ (gx#syntax-e _e8840788420_)))
                        (let ((_hd8841188431_ (##car _e8841088428_))
                              (_tl8841288433_ (##cdr _e8841088428_)))
                          (if (gx#stx-pair? _tl8841288433_)
                              (let ((_e8841388436_
                                     (gx#syntax-e _tl8841288433_)))
                                (let ((_hd8841488439_ (##car _e8841388436_))
                                      (_tl8841588441_ (##cdr _e8841388436_)))
                                  (let ((_id88444_ _hd8841488439_))
                                    (if (gx#stx-pair? _tl8841588441_)
                                        (let ((_e8841688446_
                                               (gx#syntax-e _tl8841588441_)))
                                          (let ((_hd8841788449_
                                                 (##car _e8841688446_))
                                                (_tl8841888451_
                                                 (##cdr _e8841688446_)))
                                            (let ((_binding-id88454_
                                                   _hd8841788449_))
                                              (if (gx#stx-null? _tl8841888451_)
                                                  (if (and (gx#identifier?
                                                            _id88444_)
                                                           (gx#identifier?
                                                            _binding-id88454_))
                                                      (let ((_eid88456_
                                                             (gx#stx-e
                                                              _binding-id88454_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88444_
                                                         _eid88456_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88444_)
                             (cons _eid88456_ '())))))
              (_E8840988424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8840988424_)))))
                                        (_E8840988424_)))))
                              (_E8840988424_))))
                      (_E8840988424_)))))
          (_E8840888458_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88349_)
        (let* ((_e8835088363_ _stx88349_)
               (_E8835288367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835088363_)))
               (_E8835188402_
                (lambda ()
                  (if (gx#stx-pair? _e8835088363_)
                      (let ((_e8835388371_ (gx#syntax-e _e8835088363_)))
                        (let ((_hd8835488374_ (##car _e8835388371_))
                              (_tl8835588376_ (##cdr _e8835388371_)))
                          (if (gx#stx-pair? _tl8835588376_)
                              (let ((_e8835688379_
                                     (gx#syntax-e _tl8835588376_)))
                                (let ((_hd8835788382_ (##car _e8835688379_))
                                      (_tl8835888384_ (##cdr _e8835688379_)))
                                  (let ((_id88387_ _hd8835788382_))
                                    (if (gx#stx-pair? _tl8835888384_)
                                        (let ((_e8835988389_
                                               (gx#syntax-e _tl8835888384_)))
                                          (let ((_hd8836088392_
                                                 (##car _e8835988389_))
                                                (_tl8836188394_
                                                 (##cdr _e8835988389_)))
                                            (let ((_expr88397_ _hd8836088392_))
                                              (if (gx#stx-null? _tl8836188394_)
                                                  (if (gx#identifier?
                                                       _id88387_)
                                                      (let ((_g89308_
                                                             (gx#core-expand-expression+1
                                                              _expr88397_)))
                                                        (begin
                                                          (let ((_g89309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89308_)
                             (##vector-length _g89308_)
                             1)))
                    (if (not (##fx= _g89309_ 2))
                        (error "Context expects 2 values" _g89309_)))
                  (let ((_e-stx88399_ (##vector-ref _g89308_ 0))
                        (_e88400_ (##vector-ref _g89308_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88387_ _e88400_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88387_)
                                   (cons _e-stx88399_ '())))
                       (gx#stx-source _stx88349_))))))
              (_E8835288367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8835288367_)))))
                                        (_E8835288367_)))))
                              (_E8835288367_))))
                      (_E8835288367_)))))
          (_E8835188402_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88293_)
        (let* ((_e8829488307_ _stx88293_)
               (_E8829688311_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8829488307_)))
               (_E8829588345_
                (lambda ()
                  (if (gx#stx-pair? _e8829488307_)
                      (let ((_e8829788315_ (gx#syntax-e _e8829488307_)))
                        (let ((_hd8829888318_ (##car _e8829788315_))
                              (_tl8829988320_ (##cdr _e8829788315_)))
                          (if (gx#stx-pair? _tl8829988320_)
                              (let ((_e8830088323_
                                     (gx#syntax-e _tl8829988320_)))
                                (let ((_hd8830188326_ (##car _e8830088323_))
                                      (_tl8830288328_ (##cdr _e8830088323_)))
                                  (let ((_id88331_ _hd8830188326_))
                                    (if (gx#stx-pair? _tl8830288328_)
                                        (let ((_e8830388333_
                                               (gx#syntax-e _tl8830288328_)))
                                          (let ((_hd8830488336_
                                                 (##car _e8830388333_))
                                                (_tl8830588338_
                                                 (##cdr _e8830388333_)))
                                            (let ((_alias-id88341_
                                                   _hd8830488336_))
                                              (if (gx#stx-null? _tl8830588338_)
                                                  (if (and (gx#identifier?
                                                            _id88331_)
                                                           (gx#identifier?
                                                            _alias-id88341_))
                                                      (let ((_alias-id88343_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88341_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88331_
                                                         _alias-id88343_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88331_)
                             (cons _alias-id88343_ '())))))
              (_E8829688311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8829688311_)))))
                                        (_E8829688311_)))))
                              (_E8829688311_))))
                      (_E8829688311_)))))
          (_E8829588345_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88236_ _wrap?88237_)
        (let* ((_e8823888248_ _stx88236_)
               (_E8824088252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8823888248_)))
               (_E8823988279_
                (lambda ()
                  (if (gx#stx-pair? _e8823888248_)
                      (let ((_e8824188256_ (gx#syntax-e _e8823888248_)))
                        (let ((_hd8824288259_ (##car _e8824188256_))
                              (_tl8824388261_ (##cdr _e8824188256_)))
                          (if (gx#stx-pair? _tl8824388261_)
                              (let ((_e8824488264_
                                     (gx#syntax-e _tl8824388261_)))
                                (let ((_hd8824588267_ (##car _e8824488264_))
                                      (_tl8824688269_ (##cdr _e8824488264_)))
                                  (let* ((_hd88272_ _hd8824588267_)
                                         (_body88274_ _tl8824688269_))
                                    (if (gx#core-bind-values? _hd88272_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88272_)
                                           (let ((_body88277_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88272_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88236_
                                                               _body88274_)
                                                              '()))))
                                             (if _wrap?88237_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88277_)
                                                  (gx#stx-source _stx88236_))
                                                 _body88277_)))
                                         gx#current-expander-context
                                         (let ((__obj89301
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89301)
                                           __obj89301))
                                        (_E8824088252_)))))
                              (_E8824088252_))))
                      (_E8824088252_)))))
          (_E8823988279_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88286_)
        (let ((_wrap?88288_ '#t))
          (gx#core-expand-lambda%__% _stx88286_ _wrap?88288_))))
    (define gx#core-expand-lambda%
      (lambda _g89311_
        (let ((_g89310_ (##length _g89311_)))
          (cond ((##fx= _g89310_ 1)
                 (apply (lambda (_stx88286_)
                          (gx#core-expand-lambda%__0 _stx88286_))
                        _g89311_))
                ((##fx= _g89310_ 2)
                 (apply (lambda (_stx88290_ _wrap?88291_)
                          (gx#core-expand-lambda%__% _stx88290_ _wrap?88291_))
                        _g89311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89311_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88200_)
        (let* ((_e8820188208_ _stx88200_)
               (_E8820388212_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8820188208_)))
               (_E8820288231_
                (lambda ()
                  (if (gx#stx-pair? _e8820188208_)
                      (let ((_e8820488216_ (gx#syntax-e _e8820188208_)))
                        (let ((_hd8820588219_ (##car _e8820488216_))
                              (_tl8820688221_ (##cdr _e8820488216_)))
                          (let ((_clauses88224_ _tl8820688221_))
                            (if (gx#stx-list? _clauses88224_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88226_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88226_)
                                       (let ((_$e88228_
                                              (gx#stx-source _clause88226_)))
                                         (if _$e88228_
                                             _$e88228_
                                             (gx#stx-source _stx88200_))))
                                      '#f))
                                   _clauses88224_))
                                 (gx#stx-source _stx88200_))
                                (_E8820388212_)))))
                      (_E8820388212_)))))
          (_E8820288231_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88154_)
        (let* ((_e8815588165_ _stx88154_)
               (_E8815788169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8815588165_)))
               (_E8815688196_
                (lambda ()
                  (if (gx#stx-pair? _e8815588165_)
                      (let ((_e8815888173_ (gx#syntax-e _e8815588165_)))
                        (let ((_hd8815988176_ (##car _e8815888173_))
                              (_tl8816088178_ (##cdr _e8815888173_)))
                          (if (gx#stx-pair? _tl8816088178_)
                              (let ((_e8816188181_
                                     (gx#syntax-e _tl8816088178_)))
                                (let ((_hd8816288184_ (##car _e8816188181_))
                                      (_tl8816388186_ (##cdr _e8816188181_)))
                                  (let* ((_hd88189_ _hd8816288184_)
                                         (_body88191_ _tl8816388186_))
                                    (if (gx#core-expand-let-bind? _hd88189_)
                                        (let ((_expressions88193_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88189_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88189_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88189_
                                                           _expressions88193_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88154_
                         _body88191_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88154_)))
                                           gx#current-expander-context
                                           (let ((__obj89302
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89302)
                                             __obj89302)))
                                        (_E8815788169_)))))
                              (_E8815788169_))))
                      (_E8815788169_)))))
          (_E8815688196_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88099_ _form88100_)
        (let* ((_e8810188111_ _stx88099_)
               (_E8810388115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8810188111_)))
               (_E8810288140_
                (lambda ()
                  (if (gx#stx-pair? _e8810188111_)
                      (let ((_e8810488119_ (gx#syntax-e _e8810188111_)))
                        (let ((_hd8810588122_ (##car _e8810488119_))
                              (_tl8810688124_ (##cdr _e8810488119_)))
                          (if (gx#stx-pair? _tl8810688124_)
                              (let ((_e8810788127_
                                     (gx#syntax-e _tl8810688124_)))
                                (let ((_hd8810888130_ (##car _e8810788127_))
                                      (_tl8810988132_ (##cdr _e8810788127_)))
                                  (let* ((_hd88135_ _hd8810888130_)
                                         (_body88137_ _tl8810988132_))
                                    (if (gx#core-expand-let-bind? _hd88135_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88135_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88100_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88135_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88135_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88099_
                                                               _body88137_)
                                                              '())))
                                            (gx#stx-source _stx88099_)))
                                         gx#current-expander-context
                                         (let ((__obj89303
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89303)
                                           __obj89303))
                                        (_E8810388115_)))))
                              (_E8810388115_))))
                      (_E8810388115_)))))
          (_E8810288140_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88147_)
        (let ((_form88149_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88147_ _form88149_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89313_
        (let ((_g89312_ (##length _g89313_)))
          (cond ((##fx= _g89312_ 1)
                 (apply (lambda (_stx88147_)
                          (gx#core-expand-letrec-values%__0 _stx88147_))
                        _g89313_))
                ((##fx= _g89312_ 2)
                 (apply (lambda (_stx88151_ _form88152_)
                          (gx#core-expand-letrec-values%__%
                           _stx88151_
                           _form88152_))
                        _g89313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89313_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88096_)
        (gx#core-expand-letrec-values%__% _stx88096_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88053_)
        (if (gx#stx-list? _stx88053_)
            (gx#stx-andmap
             (lambda (_bind88055_)
               (let* ((_e8805688066_ _bind88055_)
                      (_E8805888070_ (lambda () '#f))
                      (_E8805788092_
                       (lambda ()
                         (if (gx#stx-pair? _e8805688066_)
                             (let ((_e8805988074_ (gx#syntax-e _e8805688066_)))
                               (let ((_hd8806088077_ (##car _e8805988074_))
                                     (_tl8806188079_ (##cdr _e8805988074_)))
                                 (let ((_hd88082_ _hd8806088077_))
                                   (if (gx#stx-pair? _tl8806188079_)
                                       (let ((_e8806288084_
                                              (gx#syntax-e _tl8806188079_)))
                                         (let ((_hd8806388087_
                                                (##car _e8806288084_))
                                               (_tl8806488089_
                                                (##cdr _e8806288084_)))
                                           (if (gx#stx-null? _tl8806488089_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88082_)
                                                   (_E8805888070_))
                                               (_E8805888070_))))
                                       (_E8805888070_)))))
                             (_E8805888070_)))))
                 (_E8805788092_)))
             _stx88053_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88012_)
        (let* ((_e8801388023_ _bind88012_)
               (_E8801588027_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8801388023_)))
               (_E8801488049_
                (lambda ()
                  (if (gx#stx-pair? _e8801388023_)
                      (let ((_e8801688031_ (gx#syntax-e _e8801388023_)))
                        (let ((_hd8801788034_ (##car _e8801688031_))
                              (_tl8801888036_ (##cdr _e8801688031_)))
                          (if (gx#stx-pair? _tl8801888036_)
                              (let ((_e8801988039_
                                     (gx#syntax-e _tl8801888036_)))
                                (let ((_hd8802088042_ (##car _e8801988039_))
                                      (_tl8802188044_ (##cdr _e8801988039_)))
                                  (let ((_expr88047_ _hd8802088042_))
                                    (if (gx#stx-null? _tl8802188044_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88047_)
                                            (_E8801588027_))
                                        (_E8801588027_)))))
                              (_E8801588027_))))
                      (_E8801588027_)))))
          (_E8801488049_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87971_)
        (let* ((_e8797287982_ _bind87971_)
               (_E8797487986_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8797287982_)))
               (_E8797388008_
                (lambda ()
                  (if (gx#stx-pair? _e8797287982_)
                      (let ((_e8797587990_ (gx#syntax-e _e8797287982_)))
                        (let ((_hd8797687993_ (##car _e8797587990_))
                              (_tl8797787995_ (##cdr _e8797587990_)))
                          (let ((_hd87998_ _hd8797687993_))
                            (if (gx#stx-pair? _tl8797787995_)
                                (let ((_e8797888000_
                                       (gx#syntax-e _tl8797787995_)))
                                  (let ((_hd8797988003_ (##car _e8797888000_))
                                        (_tl8798088005_ (##cdr _e8797888000_)))
                                    (if (gx#stx-null? _tl8798088005_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87998_)
                                            (_E8797487986_))
                                        (_E8797487986_))))
                                (_E8797487986_)))))
                      (_E8797487986_)))))
          (_E8797388008_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87929_ _expr87930_)
        (let* ((_e8793187941_ _bind87929_)
               (_E8793387945_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8793187941_)))
               (_E8793287967_
                (lambda ()
                  (if (gx#stx-pair? _e8793187941_)
                      (let ((_e8793487949_ (gx#syntax-e _e8793187941_)))
                        (let ((_hd8793587952_ (##car _e8793487949_))
                              (_tl8793687954_ (##cdr _e8793487949_)))
                          (let ((_hd87957_ _hd8793587952_))
                            (if (gx#stx-pair? _tl8793687954_)
                                (let ((_e8793787959_
                                       (gx#syntax-e _tl8793687954_)))
                                  (let ((_hd8793887962_ (##car _e8793787959_))
                                        (_tl8793987964_ (##cdr _e8793787959_)))
                                    (if (gx#stx-null? _tl8793987964_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87957_)
                                                  (cons _expr87930_ '()))
                                            (_E8793387945_))
                                        (_E8793387945_))))
                                (_E8793387945_)))))
                      (_E8793387945_)))))
          (_E8793287967_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87883_)
        (let* ((_e8788487894_ _stx87883_)
               (_E8788687898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8788487894_)))
               (_E8788587925_
                (lambda ()
                  (if (gx#stx-pair? _e8788487894_)
                      (let ((_e8788787902_ (gx#syntax-e _e8788487894_)))
                        (let ((_hd8788887905_ (##car _e8788787902_))
                              (_tl8788987907_ (##cdr _e8788787902_)))
                          (if (gx#stx-pair? _tl8788987907_)
                              (let ((_e8789087910_
                                     (gx#syntax-e _tl8788987907_)))
                                (let ((_hd8789187913_ (##car _e8789087910_))
                                      (_tl8789287915_ (##cdr _e8789087910_)))
                                  (let* ((_hd87918_ _hd8789187913_)
                                         (_body87920_ _tl8789287915_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87918_)
                                        (let ((_expanders87922_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87918_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87918_
                                              _expanders87922_)
                                             (gx#core-expand-local-block
                                              _stx87883_
                                              _body87920_))
                                           gx#current-expander-context
                                           (let ((__obj89304
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89304)
                                             __obj89304)))
                                        (_E8788687898_)))))
                              (_E8788687898_))))
                      (_E8788687898_)))))
          (_E8788587925_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87832_)
        (let* ((_e8783387843_ _stx87832_)
               (_E8783587847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783387843_)))
               (_E8783487879_
                (lambda ()
                  (if (gx#stx-pair? _e8783387843_)
                      (let ((_e8783687851_ (gx#syntax-e _e8783387843_)))
                        (let ((_hd8783787854_ (##car _e8783687851_))
                              (_tl8783887856_ (##cdr _e8783687851_)))
                          (if (gx#stx-pair? _tl8783887856_)
                              (let ((_e8783987859_
                                     (gx#syntax-e _tl8783887856_)))
                                (let ((_hd8784087862_ (##car _e8783987859_))
                                      (_tl8784187864_ (##cdr _e8783987859_)))
                                  (let* ((_hd87867_ _hd8784087862_)
                                         (_body87869_ _tl8784187864_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87867_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87867_
                                            (make-list__%
                                             (gx#stx-length _hd87867_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8787187874_
                                                     _g8787287876_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8787187874_
                                               _g8787287876_
                                               '#t))
                                            _hd87867_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87867_))
                                           (gx#core-expand-local-block
                                            _stx87832_
                                            _body87869_))
                                         gx#current-expander-context
                                         (let ((__obj89305
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89305)
                                           __obj89305))
                                        (_E8783587847_)))))
                              (_E8783587847_))))
                      (_E8783587847_)))))
          (_E8783487879_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87789_)
        (if (gx#stx-list? _stx87789_)
            (gx#stx-andmap
             (lambda (_bind87791_)
               (let* ((_e8779287802_ _bind87791_)
                      (_E8779487806_ (lambda () '#f))
                      (_E8779387828_
                       (lambda ()
                         (if (gx#stx-pair? _e8779287802_)
                             (let ((_e8779587810_ (gx#syntax-e _e8779287802_)))
                               (let ((_hd8779687813_ (##car _e8779587810_))
                                     (_tl8779787815_ (##cdr _e8779587810_)))
                                 (let ((_hd87818_ _hd8779687813_))
                                   (if (gx#stx-pair? _tl8779787815_)
                                       (let ((_e8779887820_
                                              (gx#syntax-e _tl8779787815_)))
                                         (let ((_hd8779987823_
                                                (##car _e8779887820_))
                                               (_tl8780087825_
                                                (##cdr _e8779887820_)))
                                           (if (gx#stx-null? _tl8780087825_)
                                               (if '#t
                                                   (gx#identifier? _hd87818_)
                                                   (_E8779487806_))
                                               (_E8779487806_))))
                                       (_E8779487806_)))))
                             (_E8779487806_)))))
                 (_E8779387828_)))
             _stx87789_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87746_)
        (let* ((_e8774787757_ _bind87746_)
               (_E8774987761_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8774787757_)))
               (_E8774887785_
                (lambda ()
                  (if (gx#stx-pair? _e8774787757_)
                      (let ((_e8775087765_ (gx#syntax-e _e8774787757_)))
                        (let ((_hd8775187768_ (##car _e8775087765_))
                              (_tl8775287770_ (##cdr _e8775087765_)))
                          (if (gx#stx-pair? _tl8775287770_)
                              (let ((_e8775387773_
                                     (gx#syntax-e _tl8775287770_)))
                                (let ((_hd8775487776_ (##car _e8775387773_))
                                      (_tl8775587778_ (##cdr _e8775387773_)))
                                  (let ((_expr87781_ _hd8775487776_))
                                    (if (gx#stx-null? _tl8775587778_)
                                        (if '#t
                                            (let ((_g89314_
                                                   (gx#core-expand-expression+1
                                                    _expr87781_)))
                                              (begin
                                                (let ((_g89315_
                                                       (if (##values? _g89314_)
                                                           (##vector-length
                                                            _g89314_)
                                                           1)))
                                                  (if (not (##fx= _g89315_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89315_)))
                                                (let ((_e87783_
                                                       (##vector-ref
                                                        _g89314_
                                                        1)))
                                                  _e87783_)))
                                            (_E8774987761_))
                                        (_E8774987761_)))))
                              (_E8774987761_))))
                      (_E8774987761_)))))
          (_E8774887785_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87691_ _e87692_ _rebind?87693_)
        (let* ((_e8769487704_ _bind87691_)
               (_E8769687708_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8769487704_)))
               (_E8769587730_
                (lambda ()
                  (if (gx#stx-pair? _e8769487704_)
                      (let ((_e8769787712_ (gx#syntax-e _e8769487704_)))
                        (let ((_hd8769887715_ (##car _e8769787712_))
                              (_tl8769987717_ (##cdr _e8769787712_)))
                          (let ((_id87720_ _hd8769887715_))
                            (if (gx#stx-pair? _tl8769987717_)
                                (let ((_e8770087722_
                                       (gx#syntax-e _tl8769987717_)))
                                  (let ((_hd8770187725_ (##car _e8770087722_))
                                        (_tl8770287727_ (##cdr _e8770087722_)))
                                    (if (gx#stx-null? _tl8770287727_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87720_
                                             _e87692_
                                             _rebind?87693_)
                                            (_E8769687708_))
                                        (_E8769687708_))))
                                (_E8769687708_)))))
                      (_E8769687708_)))))
          (_E8769587730_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87737_ _e87738_)
        (let ((_rebind?87740_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87737_
           _e87738_
           _rebind?87740_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89317_
        (let ((_g89316_ (##length _g89317_)))
          (cond ((##fx= _g89316_ 2)
                 (apply (lambda (_bind87737_ _e87738_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87737_
                           _e87738_))
                        _g89317_))
                ((##fx= _g89316_ 3)
                 (apply (lambda (_bind87742_ _e87743_ _rebind?87744_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87742_
                           _e87743_
                           _rebind?87744_))
                        _g89317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89317_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87649_)
        (let* ((_e8765087660_ _stx87649_)
               (_E8765287664_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8765087660_)))
               (_E8765187686_
                (lambda ()
                  (if (gx#stx-pair? _e8765087660_)
                      (let ((_e8765387668_ (gx#syntax-e _e8765087660_)))
                        (let ((_hd8765487671_ (##car _e8765387668_))
                              (_tl8765587673_ (##cdr _e8765387668_)))
                          (if (gx#stx-pair? _tl8765587673_)
                              (let ((_e8765687676_
                                     (gx#syntax-e _tl8765587673_)))
                                (let ((_hd8765787679_ (##car _e8765687676_))
                                      (_tl8765887681_ (##cdr _e8765687676_)))
                                  (let ((_expr87684_ _hd8765787679_))
                                    (if (gx#stx-null? _tl8765887681_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87684_)
                                            (_E8765287664_))
                                        (_E8765287664_)))))
                              (_E8765287664_))))
                      (_E8765287664_)))))
          (_E8765187686_))))
    (define gx#core-expand-quote%
      (lambda (_stx87608_)
        (let* ((_e8760987619_ _stx87608_)
               (_E8761187623_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8760987619_)))
               (_E8761087645_
                (lambda ()
                  (if (gx#stx-pair? _e8760987619_)
                      (let ((_e8761287627_ (gx#syntax-e _e8760987619_)))
                        (let ((_hd8761387630_ (##car _e8761287627_))
                              (_tl8761487632_ (##cdr _e8761287627_)))
                          (if (gx#stx-pair? _tl8761487632_)
                              (let ((_e8761587635_
                                     (gx#syntax-e _tl8761487632_)))
                                (let ((_hd8761687638_ (##car _e8761587635_))
                                      (_tl8761787640_ (##cdr _e8761587635_)))
                                  (let ((_e87643_ _hd8761687638_))
                                    (if (gx#stx-null? _tl8761787640_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87643_)
                                                         '()))
                                             (gx#stx-source _stx87608_))
                                            (_E8761187623_))
                                        (_E8761187623_)))))
                              (_E8761187623_))))
                      (_E8761187623_)))))
          (_E8761087645_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87567_)
        (let* ((_e8756887578_ _stx87567_)
               (_E8757087582_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8756887578_)))
               (_E8756987604_
                (lambda ()
                  (if (gx#stx-pair? _e8756887578_)
                      (let ((_e8757187586_ (gx#syntax-e _e8756887578_)))
                        (let ((_hd8757287589_ (##car _e8757187586_))
                              (_tl8757387591_ (##cdr _e8757187586_)))
                          (if (gx#stx-pair? _tl8757387591_)
                              (let ((_e8757487594_
                                     (gx#syntax-e _tl8757387591_)))
                                (let ((_hd8757587597_ (##car _e8757487594_))
                                      (_tl8757687599_ (##cdr _e8757487594_)))
                                  (let ((_e87602_ _hd8757587597_))
                                    (if (gx#stx-null? _tl8757687599_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e87602_)
                                                         '()))
                                             (gx#stx-source _stx87567_))
                                            (_E8757087582_))
                                        (_E8757087582_)))))
                              (_E8757087582_))))
                      (_E8757087582_)))))
          (_E8756987604_))))
    (define gx#core-expand-call%
      (lambda (_stx87524_)
        (let* ((_e8752587535_ _stx87524_)
               (_E8752787539_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8752587535_)))
               (_E8752687563_
                (lambda ()
                  (if (gx#stx-pair? _e8752587535_)
                      (let ((_e8752887543_ (gx#syntax-e _e8752587535_)))
                        (let ((_hd8752987546_ (##car _e8752887543_))
                              (_tl8753087548_ (##cdr _e8752887543_)))
                          (if (gx#stx-pair? _tl8753087548_)
                              (let ((_e8753187551_
                                     (gx#syntax-e _tl8753087548_)))
                                (let ((_hd8753287554_ (##car _e8753187551_))
                                      (_tl8753387556_ (##cdr _e8753187551_)))
                                  (let* ((_rator87559_ _hd8753287554_)
                                         (_args87561_ _tl8753387556_))
                                    (if (gx#stx-list? _args87561_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87559_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87561_))
                                         (gx#stx-source _stx87524_))
                                        (_E8752787539_)))))
                              (_E8752787539_))))
                      (_E8752787539_)))))
          (_E8752687563_))))
    (define gx#core-expand-if%
      (lambda (_stx87457_)
        (let* ((_e8745887474_ _stx87457_)
               (_E8746087478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8745887474_)))
               (_E8745987520_
                (lambda ()
                  (if (gx#stx-pair? _e8745887474_)
                      (let ((_e8746187482_ (gx#syntax-e _e8745887474_)))
                        (let ((_hd8746287485_ (##car _e8746187482_))
                              (_tl8746387487_ (##cdr _e8746187482_)))
                          (if (gx#stx-pair? _tl8746387487_)
                              (let ((_e8746487490_
                                     (gx#syntax-e _tl8746387487_)))
                                (let ((_hd8746587493_ (##car _e8746487490_))
                                      (_tl8746687495_ (##cdr _e8746487490_)))
                                  (let ((_test87498_ _hd8746587493_))
                                    (if (gx#stx-pair? _tl8746687495_)
                                        (let ((_e8746787500_
                                               (gx#syntax-e _tl8746687495_)))
                                          (let ((_hd8746887503_
                                                 (##car _e8746787500_))
                                                (_tl8746987505_
                                                 (##cdr _e8746787500_)))
                                            (let ((_K87508_ _hd8746887503_))
                                              (if (gx#stx-pair? _tl8746987505_)
                                                  (let ((_e8747087510_
                                                         (gx#syntax-e
                                                          _tl8746987505_)))
                                                    (let ((_hd8747187513_
                                                           (##car _e8747087510_))
                                                          (_tl8747287515_
                                                           (##cdr _e8747087510_)))
                                                      (let ((_E87518_
                                                             _hd8747187513_))
                                                        (if (gx#stx-null?
                                                             _tl8747287515_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87498_)
                                     (cons (gx#core-expand-expression _K87508_)
                                           (cons (gx#core-expand-expression
                                                  _E87518_)
                                                 '()))))
                         (gx#stx-source _stx87457_))
                        (_E8746087478_))
                    (_E8746087478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8746087478_)))))
                                        (_E8746087478_)))))
                              (_E8746087478_))))
                      (_E8746087478_)))))
          (_E8745987520_))))
    (define gx#core-expand-ref%
      (lambda (_stx87416_)
        (let* ((_e8741787427_ _stx87416_)
               (_E8741987431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8741787427_)))
               (_E8741887453_
                (lambda ()
                  (if (gx#stx-pair? _e8741787427_)
                      (let ((_e8742087435_ (gx#syntax-e _e8741787427_)))
                        (let ((_hd8742187438_ (##car _e8742087435_))
                              (_tl8742287440_ (##cdr _e8742087435_)))
                          (if (gx#stx-pair? _tl8742287440_)
                              (let ((_e8742387443_
                                     (gx#syntax-e _tl8742287440_)))
                                (let ((_hd8742487446_ (##car _e8742387443_))
                                      (_tl8742587448_ (##cdr _e8742387443_)))
                                  (let ((_id87451_ _hd8742487446_))
                                    (if (gx#stx-null? _tl8742587448_)
                                        (if (gx#identifier? _id87451_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87451_
                                                          _stx87416_)
                                                         '()))
                                             (gx#stx-source _stx87416_))
                                            (_E8741987431_))
                                        (_E8741987431_)))))
                              (_E8741987431_))))
                      (_E8741987431_)))))
          (_E8741887453_))))
    (define gx#core-expand-setq%
      (lambda (_stx87362_)
        (let* ((_e8736387376_ _stx87362_)
               (_E8736587380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736387376_)))
               (_E8736487412_
                (lambda ()
                  (if (gx#stx-pair? _e8736387376_)
                      (let ((_e8736687384_ (gx#syntax-e _e8736387376_)))
                        (let ((_hd8736787387_ (##car _e8736687384_))
                              (_tl8736887389_ (##cdr _e8736687384_)))
                          (if (gx#stx-pair? _tl8736887389_)
                              (let ((_e8736987392_
                                     (gx#syntax-e _tl8736887389_)))
                                (let ((_hd8737087395_ (##car _e8736987392_))
                                      (_tl8737187397_ (##cdr _e8736987392_)))
                                  (let ((_id87400_ _hd8737087395_))
                                    (if (gx#stx-pair? _tl8737187397_)
                                        (let ((_e8737287402_
                                               (gx#syntax-e _tl8737187397_)))
                                          (let ((_hd8737387405_
                                                 (##car _e8737287402_))
                                                (_tl8737487407_
                                                 (##cdr _e8737287402_)))
                                            (let ((_expr87410_ _hd8737387405_))
                                              (if (gx#stx-null? _tl8737487407_)
                                                  (if (gx#identifier?
                                                       _id87400_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87400_
                            _stx87362_)
                           (cons (gx#core-expand-expression _expr87410_) '())))
               (gx#stx-source _stx87362_))
              (_E8736587380_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8736587380_)))))
                                        (_E8736587380_)))))
                              (_E8736587380_))))
                      (_E8736587380_)))))
          (_E8736487412_))))
    (define gx#macro-expand-extern
      (lambda (_stx87210_)
        (letrec ((_generate87212_
                  (lambda (_body87242_)
                    (let _lp87244_ ((_rest87246_ _body87242_)
                                    (_ns87247_ (gx#core-context-namespace__0))
                                    (_r87248_ '()))
                      (let* ((_e8724987264_ _rest87246_)
                             (_E8726287268_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8724987264_)))
                             (_E8725887272_
                              (lambda ()
                                (if (gx#stx-null? _e8724987264_)
                                    (if '#t (reverse _r87248_) (_E8726287268_))
                                    (_E8726287268_))))
                             (_E8725187329_
                              (lambda ()
                                (if (gx#stx-pair? _e8724987264_)
                                    (let ((_e8725987276_
                                           (gx#syntax-e _e8724987264_)))
                                      (let ((_hd8726087279_
                                             (##car _e8725987276_))
                                            (_tl8726187281_
                                             (##cdr _e8725987276_)))
                                        (let* ((_hd87284_ _hd8726087279_)
                                               (_rest87286_ _tl8726187281_))
                                          (if '#t
                                              (if (gx#identifier? _hd87284_)
                                                  (_lp87244_
                                                   _rest87286_
                                                   _ns87247_
                                                   (cons (cons _hd87284_
                                                               (cons (if _ns87247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87284_
                                  _ns87247_
                                  '"#"
                                  _hd87284_)
                                 _hd87284_)
                             '()))
                 _r87248_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8728787297_
                                                          _hd87284_)
                                                         (_E8728987301_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8728787297_)))
                                                         (_E8728887325_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8728787297_)
                        (let ((_e8729087305_ (gx#syntax-e _e8728787297_)))
                          (let ((_hd8729187308_ (##car _e8729087305_))
                                (_tl8729287310_ (##cdr _e8729087305_)))
                            (let ((_id87313_ _hd8729187308_))
                              (if (gx#stx-pair? _tl8729287310_)
                                  (let ((_e8729387315_
                                         (gx#syntax-e _tl8729287310_)))
                                    (let ((_hd8729487318_
                                           (##car _e8729387315_))
                                          (_tl8729587320_
                                           (##cdr _e8729387315_)))
                                      (let ((_eid87323_ _hd8729487318_))
                                        (if (gx#stx-null? _tl8729587320_)
                                            (if (and (gx#identifier? _id87313_)
                                                     (gx#identifier?
                                                      _eid87323_))
                                                (_lp87244_
                                                 _rest87286_
                                                 _ns87247_
                                                 (cons (cons _id87313_
                                                             (cons _eid87323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87248_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8728987301_))
                                            (_E8728987301_)))))
                                  (_E8728987301_)))))
                        (_E8728987301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8728887325_)))
                                              (_E8725887272_)))))
                                    (_E8725887272_))))
                             (_E8725087358_
                              (lambda ()
                                (if (gx#stx-pair? _e8724987264_)
                                    (let ((_e8725287333_
                                           (gx#syntax-e _e8724987264_)))
                                      (let ((_hd8725387336_
                                             (##car _e8725287333_))
                                            (_tl8725487338_
                                             (##cdr _e8725287333_)))
                                        (if (eq? (gx#stx-e _hd8725387336_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8725487338_)
                                                (let ((_e8725587341_
                                                       (gx#syntax-e
                                                        _tl8725487338_)))
                                                  (let ((_hd8725687344_
                                                         (##car _e8725587341_))
                                                        (_tl8725787346_
                                                         (##cdr _e8725587341_)))
                                                    (let* ((_ns87349_
                                                            _hd8725687344_)
                                                           (_rest87351_
                                                            _tl8725787346_))
                                                      (if '#t
                                                          (let ((_ns87356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87349_)
                             (symbol->string (gx#stx-e _ns87349_))
                             (if (or (gx#stx-string? _ns87349_)
                                     (gx#stx-false? _ns87349_))
                                 (gx#stx-e _ns87349_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87210_
                                  _ns87349_)))))
                    (_lp87244_ _rest87351_ _ns87356_ _r87248_))
                  (_E8725187329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8725187329_))
                                            (_E8725187329_))))
                                    (_E8725187329_)))))
                        (_E8725087358_))))))
          (let* ((_e8721387220_ _stx87210_)
                 (_E8721587224_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8721387220_)))
                 (_E8721487238_
                  (lambda ()
                    (if (gx#stx-pair? _e8721387220_)
                        (let ((_e8721687228_ (gx#syntax-e _e8721387220_)))
                          (let ((_hd8721787231_ (##car _e8721687228_))
                                (_tl8721887233_ (##cdr _e8721687228_)))
                            (let ((_body87236_ _tl8721887233_))
                              (if (gx#stx-list? _body87236_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87212_ _body87236_))
                                  (_E8721587224_)))))
                        (_E8721587224_)))))
            (_E8721487238_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87156_)
        (let* ((_e8715787170_ _stx87156_)
               (_E8715987174_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8715787170_)))
               (_E8715887206_
                (lambda ()
                  (if (gx#stx-pair? _e8715787170_)
                      (let ((_e8716087178_ (gx#syntax-e _e8715787170_)))
                        (let ((_hd8716187181_ (##car _e8716087178_))
                              (_tl8716287183_ (##cdr _e8716087178_)))
                          (if (gx#stx-pair? _tl8716287183_)
                              (let ((_e8716387186_
                                     (gx#syntax-e _tl8716287183_)))
                                (let ((_hd8716487189_ (##car _e8716387186_))
                                      (_tl8716587191_ (##cdr _e8716387186_)))
                                  (let ((_hd87194_ _hd8716487189_))
                                    (if (gx#stx-pair? _tl8716587191_)
                                        (let ((_e8716687196_
                                               (gx#syntax-e _tl8716587191_)))
                                          (let ((_hd8716787199_
                                                 (##car _e8716687196_))
                                                (_tl8716887201_
                                                 (##cdr _e8716687196_)))
                                            (let ((_expr87204_ _hd8716787199_))
                                              (if (gx#stx-null? _tl8716887201_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87194_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87194_)
                          (cons _expr87204_ '())))
              (_E8715987174_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8715987174_)))))
                                        (_E8715987174_)))))
                              (_E8715987174_))))
                      (_E8715987174_)))))
          (_E8715887206_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87102_)
        (let* ((_e8710387116_ _stx87102_)
               (_E8710587120_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8710387116_)))
               (_E8710487152_
                (lambda ()
                  (if (gx#stx-pair? _e8710387116_)
                      (let ((_e8710687124_ (gx#syntax-e _e8710387116_)))
                        (let ((_hd8710787127_ (##car _e8710687124_))
                              (_tl8710887129_ (##cdr _e8710687124_)))
                          (if (gx#stx-pair? _tl8710887129_)
                              (let ((_e8710987132_
                                     (gx#syntax-e _tl8710887129_)))
                                (let ((_hd8711087135_ (##car _e8710987132_))
                                      (_tl8711187137_ (##cdr _e8710987132_)))
                                  (let ((_hd87140_ _hd8711087135_))
                                    (if (gx#stx-pair? _tl8711187137_)
                                        (let ((_e8711287142_
                                               (gx#syntax-e _tl8711187137_)))
                                          (let ((_hd8711387145_
                                                 (##car _e8711287142_))
                                                (_tl8711487147_
                                                 (##cdr _e8711287142_)))
                                            (let ((_expr87150_ _hd8711387145_))
                                              (if (gx#stx-null? _tl8711487147_)
                                                  (if (gx#identifier?
                                                       _hd87140_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87150_ '())))
              (_E8710587120_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8710587120_)))))
                                        (_E8710587120_)))))
                              (_E8710587120_))))
                      (_E8710587120_)))))
          (_E8710487152_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87048_)
        (let* ((_e8704987062_ _stx87048_)
               (_E8705187066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704987062_)))
               (_E8705087098_
                (lambda ()
                  (if (gx#stx-pair? _e8704987062_)
                      (let ((_e8705287070_ (gx#syntax-e _e8704987062_)))
                        (let ((_hd8705387073_ (##car _e8705287070_))
                              (_tl8705487075_ (##cdr _e8705287070_)))
                          (if (gx#stx-pair? _tl8705487075_)
                              (let ((_e8705587078_
                                     (gx#syntax-e _tl8705487075_)))
                                (let ((_hd8705687081_ (##car _e8705587078_))
                                      (_tl8705787083_ (##cdr _e8705587078_)))
                                  (let ((_id87086_ _hd8705687081_))
                                    (if (gx#stx-pair? _tl8705787083_)
                                        (let ((_e8705887088_
                                               (gx#syntax-e _tl8705787083_)))
                                          (let ((_hd8705987091_
                                                 (##car _e8705887088_))
                                                (_tl8706087093_
                                                 (##cdr _e8705887088_)))
                                            (let ((_alias-id87096_
                                                   _hd8705987091_))
                                              (if (gx#stx-null? _tl8706087093_)
                                                  (if (and (gx#identifier?
                                                            _id87086_)
                                                           (gx#identifier?
                                                            _alias-id87096_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87096_ '())))
              (_E8705187066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8705187066_)))))
                                        (_E8705187066_)))))
                              (_E8705187066_))))
                      (_E8705187066_)))))
          (_E8705087098_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87005_)
        (let* ((_e8700687016_ _stx87005_)
               (_E8700887020_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8700687016_)))
               (_E8700787044_
                (lambda ()
                  (if (gx#stx-pair? _e8700687016_)
                      (let ((_e8700987024_ (gx#syntax-e _e8700687016_)))
                        (let ((_hd8701087027_ (##car _e8700987024_))
                              (_tl8701187029_ (##cdr _e8700987024_)))
                          (if (gx#stx-pair? _tl8701187029_)
                              (let ((_e8701287032_
                                     (gx#syntax-e _tl8701187029_)))
                                (let ((_hd8701387035_ (##car _e8701287032_))
                                      (_tl8701487037_ (##cdr _e8701287032_)))
                                  (let* ((_hd87040_ _hd8701387035_)
                                         (_body87042_ _tl8701487037_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87040_)
                                             (gx#stx-list? _body87042_)
                                             (not (gx#stx-null? _body87042_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87040_)
                                         _body87042_)
                                        (_E8700887020_)))))
                              (_E8700887020_))))
                      (_E8700887020_)))))
          (_E8700787044_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86941_)
        (letrec ((_generate86943_
                  (lambda (_clause86973_)
                    (let* ((_e8697486981_ _clause86973_)
                           (_E8697686985_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86941_
                               _clause86973_)))
                           (_E8697587001_
                            (lambda ()
                              (if (gx#stx-pair? _e8697486981_)
                                  (let ((_e8697786989_
                                         (gx#syntax-e _e8697486981_)))
                                    (let ((_hd8697886992_
                                           (##car _e8697786989_))
                                          (_tl8697986994_
                                           (##cdr _e8697786989_)))
                                      (let* ((_hd86997_ _hd8697886992_)
                                             (_body86999_ _tl8697986994_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86997_)
                                                 (gx#stx-list? _body86999_)
                                                 (not (gx#stx-null?
                                                       _body86999_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86997_)
                                                   _body86999_)
                                             (gx#stx-source _clause86973_))
                                            (_E8697686985_)))))
                                  (_E8697686985_)))))
                      (_E8697587001_)))))
          (let* ((_e8694486951_ _stx86941_)
                 (_E8694686955_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8694486951_)))
                 (_E8694586969_
                  (lambda ()
                    (if (gx#stx-pair? _e8694486951_)
                        (let ((_e8694786959_ (gx#syntax-e _e8694486951_)))
                          (let ((_hd8694886962_ (##car _e8694786959_))
                                (_tl8694986964_ (##cdr _e8694786959_)))
                            (let ((_clauses86967_ _tl8694986964_))
                              (if (gx#stx-list? _clauses86967_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86943_
                                    _clauses86967_))
                                  (_E8694686955_)))))
                        (_E8694686955_)))))
            (_E8694586969_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86842_ _form86843_)
        (letrec ((_generate86845_
                  (lambda (_bind86888_)
                    (let* ((_e8688986899_ _bind86888_)
                           (_E8689186903_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86842_
                               _bind86888_)))
                           (_E8689086927_
                            (lambda ()
                              (if (gx#stx-pair? _e8688986899_)
                                  (let ((_e8689286907_
                                         (gx#syntax-e _e8688986899_)))
                                    (let ((_hd8689386910_
                                           (##car _e8689286907_))
                                          (_tl8689486912_
                                           (##cdr _e8689286907_)))
                                      (let ((_ids86915_ _hd8689386910_))
                                        (if (gx#stx-pair? _tl8689486912_)
                                            (let ((_e8689586917_
                                                   (gx#syntax-e
                                                    _tl8689486912_)))
                                              (let ((_hd8689686920_
                                                     (##car _e8689586917_))
                                                    (_tl8689786922_
                                                     (##cdr _e8689586917_)))
                                                (let ((_expr86925_
                                                       _hd8689686920_))
                                                  (if (gx#stx-null?
                                                       _tl8689786922_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86915_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86915_)
                        (cons _expr86925_ '()))
                  (_E8689186903_))
              (_E8689186903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8689186903_)))))
                                  (_E8689186903_)))))
                      (_E8689086927_)))))
          (let* ((_e8684686856_ _stx86842_)
                 (_E8684886860_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8684686856_)))
                 (_E8684786884_
                  (lambda ()
                    (if (gx#stx-pair? _e8684686856_)
                        (let ((_e8684986864_ (gx#syntax-e _e8684686856_)))
                          (let ((_hd8685086867_ (##car _e8684986864_))
                                (_tl8685186869_ (##cdr _e8684986864_)))
                            (if (gx#stx-pair? _tl8685186869_)
                                (let ((_e8685286872_
                                       (gx#syntax-e _tl8685186869_)))
                                  (let ((_hd8685386875_ (##car _e8685286872_))
                                        (_tl8685486877_ (##cdr _e8685286872_)))
                                    (let* ((_hd86880_ _hd8685386875_)
                                           (_body86882_ _tl8685486877_))
                                      (if (and (gx#stx-list? _hd86880_)
                                               (gx#stx-list? _body86882_)
                                               (not (gx#stx-null?
                                                     _body86882_)))
                                          (gx#core-cons*
                                           _form86843_
                                           (gx#stx-map1
                                            _generate86845_
                                            _hd86880_)
                                           _body86882_)
                                          (_E8684886860_)))))
                                (_E8684886860_))))
                        (_E8684886860_)))))
            (_E8684786884_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86934_)
        (let ((_form86936_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86934_ _form86936_))))
    (define gx#macro-expand-let-values
      (lambda _g89319_
        (let ((_g89318_ (##length _g89319_)))
          (cond ((##fx= _g89318_ 1)
                 (apply (lambda (_stx86934_)
                          (gx#macro-expand-let-values__0 _stx86934_))
                        _g89319_))
                ((##fx= _g89318_ 2)
                 (apply (lambda (_stx86938_ _form86939_)
                          (gx#macro-expand-let-values__%
                           _stx86938_
                           _form86939_))
                        _g89319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89319_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86839_)
        (gx#macro-expand-let-values__% _stx86839_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86837_)
        (gx#macro-expand-let-values__% _stx86837_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86728_)
        (let* ((_e8672986755_ _stx86728_)
               (_E8674186759_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8672986755_)))
               (_E8673186801_
                (lambda ()
                  (if (gx#stx-pair? _e8672986755_)
                      (let ((_e8674286763_ (gx#syntax-e _e8672986755_)))
                        (let ((_hd8674386766_ (##car _e8674286763_))
                              (_tl8674486768_ (##cdr _e8674286763_)))
                          (if (gx#stx-pair? _tl8674486768_)
                              (let ((_e8674586771_
                                     (gx#syntax-e _tl8674486768_)))
                                (let ((_hd8674686774_ (##car _e8674586771_))
                                      (_tl8674786776_ (##cdr _e8674586771_)))
                                  (let ((_test86779_ _hd8674686774_))
                                    (if (gx#stx-pair? _tl8674786776_)
                                        (let ((_e8674886781_
                                               (gx#syntax-e _tl8674786776_)))
                                          (let ((_hd8674986784_
                                                 (##car _e8674886781_))
                                                (_tl8675086786_
                                                 (##cdr _e8674886781_)))
                                            (let ((_K86789_ _hd8674986784_))
                                              (if (gx#stx-pair? _tl8675086786_)
                                                  (let ((_e8675186791_
                                                         (gx#syntax-e
                                                          _tl8675086786_)))
                                                    (let ((_hd8675286794_
                                                           (##car _e8675186791_))
                                                          (_tl8675386796_
                                                           (##cdr _e8675186791_)))
                                                      (let ((_E86799_
                                                             _hd8675286794_))
                                                        (if (gx#stx-null?
                                                             _tl8675386796_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86779_
                         _K86789_
                         _E86799_)
                        (_E8674186759_))
                    (_E8674186759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8674186759_)))))
                                        (_E8674186759_)))))
                              (_E8674186759_))))
                      (_E8674186759_))))
               (_E8673086833_
                (lambda ()
                  (if (gx#stx-pair? _e8672986755_)
                      (let ((_e8673286805_ (gx#syntax-e _e8672986755_)))
                        (let ((_hd8673386808_ (##car _e8673286805_))
                              (_tl8673486810_ (##cdr _e8673286805_)))
                          (if (gx#stx-pair? _tl8673486810_)
                              (let ((_e8673586813_
                                     (gx#syntax-e _tl8673486810_)))
                                (let ((_hd8673686816_ (##car _e8673586813_))
                                      (_tl8673786818_ (##cdr _e8673586813_)))
                                  (let ((_test86821_ _hd8673686816_))
                                    (if (gx#stx-pair? _tl8673786818_)
                                        (let ((_e8673886823_
                                               (gx#syntax-e _tl8673786818_)))
                                          (let ((_hd8673986826_
                                                 (##car _e8673886823_))
                                                (_tl8674086828_
                                                 (##cdr _e8673886823_)))
                                            (let ((_K86831_ _hd8673986826_))
                                              (if (gx#stx-null? _tl8674086828_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86821_
                                                       _K86831_
                                                       '#!void)
                                                      (_E8673186801_))
                                                  (_E8673186801_)))))
                                        (_E8673186801_)))))
                              (_E8673186801_))))
                      (_E8673186801_)))))
          (_E8673086833_))))
    (define gx#free-identifier=?
      (lambda (_xid86716_ _yid86717_)
        (let ((_xe86719_ (gx#resolve-identifier__0 _xid86716_))
              (_ye86720_ (gx#resolve-identifier__0 _yid86717_)))
          (if (and _xe86719_ _ye86720_)
              (let ((_$e86722_ (eq? _xe86719_ _ye86720_)))
                (if _$e86722_
                    _$e86722_
                    (if (##structure-instance-of? _xe86719_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86720_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86719_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86720_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86719_ _ye86720_)
                  '#f
                  (gx#stx-eq? _xid86716_ _yid86717_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86700_ _yid86701_)
        (letrec ((_context86703_
                  (lambda (_e86714_)
                    (if (##structure-direct-instance-of?
                         _e86714_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86714_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86704_
                  (lambda (_e86712_)
                    (if (symbol? _e86712_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86712_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86712_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86712_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86705_
                  (lambda (_e86710_)
                    (if (symbol? _e86710_)
                        _e86710_
                        (gx#syntax-local-unwrap _e86710_)))))
          (let ((_x86707_ (_unwrap86705_ _xid86700_))
                (_y86708_ (_unwrap86705_ _yid86701_)))
            (if (gx#stx-eq? _x86707_ _y86708_)
                (if (eq? (_context86703_ _x86707_) (_context86703_ _y86708_))
                    (equal? (_marks86704_ _x86707_) (_marks86704_ _y86708_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86698_)
        (if (gx#identifier? _stx86698_)
            (gx#core-identifier=? _stx86698_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86696_)
        (if (gx#identifier? _stx86696_)
            (gx#core-identifier=? _stx86696_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86694_)
        (if (gx#identifier? _x86694_)
            (if (not (gx#underscore? _x86694_)) _x86694_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86640_ _where86641_)
        (let _lp86643_ ((_rest86645_ (gx#syntax->list _stx86640_)))
          (let* ((_rest8664686654_ _rest86645_)
                 (_else8664886662_ (lambda () '#t))
                 (_K8665086672_
                  (lambda (_rest86665_ _hd86666_)
                    (if (not (gx#identifier? _hd86666_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86641_
                         _hd86666_)
                        (if (find (lambda (_g8666786669_)
                                    (gx#bound-identifier=?
                                     _g8666786669_
                                     _hd86666_))
                                  _rest86665_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86641_
                             _hd86666_)
                            (_lp86643_ _rest86665_))))))
            (if (##pair? _rest8664686654_)
                (let ((_hd8665186675_ (##car _rest8664686654_))
                      (_tl8665286677_ (##cdr _rest8664686654_)))
                  (let* ((_hd86680_ _hd8665186675_)
                         (_rest86682_ _tl8665286677_))
                    (_K8665086672_ _rest86682_ _hd86680_)))
                (_else8664886662_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86687_)
        (let ((_where86689_ _stx86687_))
          (gx#check-duplicate-identifiers__% _stx86687_ _where86689_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89321_
        (let ((_g89320_ (##length _g89321_)))
          (cond ((##fx= _g89320_ 1)
                 (apply (lambda (_stx86687_)
                          (gx#check-duplicate-identifiers__0 _stx86687_))
                        _g89321_))
                ((##fx= _g89320_ 2)
                 (apply (lambda (_stx86691_ _where86692_)
                          (gx#check-duplicate-identifiers__%
                           _stx86691_
                           _where86692_))
                        _g89321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89321_))))))
    (define gx#core-bind-values?
      (lambda (_stx86632_)
        (gx#stx-andmap
         (lambda (_x86634_)
           (let ((_$e86636_ (gx#identifier? _x86634_)))
             (if _$e86636_ _$e86636_ (gx#stx-false? _x86634_))))
         _stx86632_)))
    (define gx#core-bind-values!__%
      (lambda (_stx86596_ _rebind?86597_ _phi86598_ _ctx86599_)
        (gx#stx-for-each1
         (lambda (_id86601_)
           (if (gx#identifier? _id86601_)
               (gx#core-bind-runtime!__%
                _id86601_
                _rebind?86597_
                _phi86598_
                _ctx86599_)
               '#!void))
         _stx86596_)))
    (define gx#core-bind-values!__0
      (lambda (_stx86606_)
        (let* ((_rebind?86608_ '#f)
               (_phi86610_ (gx#current-expander-phi))
               (_ctx86612_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86606_
           _rebind?86608_
           _phi86610_
           _ctx86612_))))
    (define gx#core-bind-values!__1
      (lambda (_stx86614_ _rebind?86615_)
        (let* ((_phi86617_ (gx#current-expander-phi))
               (_ctx86619_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86614_
           _rebind?86615_
           _phi86617_
           _ctx86619_))))
    (define gx#core-bind-values!__2
      (lambda (_stx86621_ _rebind?86622_ _phi86623_)
        (let ((_ctx86625_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86621_
           _rebind?86622_
           _phi86623_
           _ctx86625_))))
    (define gx#core-bind-values!
      (lambda _g89323_
        (let ((_g89322_ (##length _g89323_)))
          (cond ((##fx= _g89322_ 1)
                 (apply (lambda (_stx86606_)
                          (gx#core-bind-values!__0 _stx86606_))
                        _g89323_))
                ((##fx= _g89322_ 2)
                 (apply (lambda (_stx86614_ _rebind?86615_)
                          (gx#core-bind-values!__1 _stx86614_ _rebind?86615_))
                        _g89323_))
                ((##fx= _g89322_ 3)
                 (apply (lambda (_stx86621_ _rebind?86622_ _phi86623_)
                          (gx#core-bind-values!__2
                           _stx86621_
                           _rebind?86622_
                           _phi86623_))
                        _g89323_))
                ((##fx= _g89322_ 4)
                 (apply (lambda (_stx86627_
                                 _rebind?86628_
                                 _phi86629_
                                 _ctx86630_)
                          (gx#core-bind-values!__%
                           _stx86627_
                           _rebind?86628_
                           _phi86629_
                           _ctx86630_))
                        _g89323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89323_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86591_)
        (gx#stx-map1
         (lambda (_x86593_)
           (if (gx#identifier? _x86593_)
               (gx#core-quote-syntax__0 _x86593_)
               '#f))
         _stx86591_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86584_)
        (if (gx#identifier? _stx86584_)
            (let* ((_bind86586_ (gx#resolve-identifier__0 _stx86584_))
                   (_$e86588_ (not _bind86586_)))
              (if _$e86588_
                  _$e86588_
                  (##structure-instance-of?
                   _bind86586_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86576_ _form86577_)
        (let ((_bind86579_ (gx#resolve-identifier__0 _id86576_)))
          (if (##structure-instance-of? _bind86579_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86576_)
              (if (not _bind86579_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86576_)))
                      (gx#core-quote-syntax__0 _id86576_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86577_
                       _id86576_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86577_
                   _id86576_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86535_ _rebind?86536_ _phi86537_ _ctx86538_)
        (let* ((_key86540_ (gx#core-identifier-key _id86535_))
               (_eid86542_
                (gx#make-binding-id__% _key86540_ '#f _phi86537_ _ctx86538_))
               (_bind86544_
                (if (##structure-instance-of? _ctx86538_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86542_
                     _key86540_
                     _phi86537_
                     _ctx86538_)
                    (if (##structure-instance-of?
                         _ctx86538_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86542_
                         _key86540_
                         _phi86537_)
                        (if (##structure-instance-of?
                             _ctx86538_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86542_
                             _key86540_
                             _phi86537_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86542_
                             _key86540_
                             _phi86537_))))))
          (gx#bind-identifier!__%
           _id86535_
           _bind86544_
           _rebind?86536_
           _phi86537_
           _ctx86538_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86550_)
        (let* ((_rebind?86552_ '#f)
               (_phi86554_ (gx#current-expander-phi))
               (_ctx86556_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86550_
           _rebind?86552_
           _phi86554_
           _ctx86556_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86558_ _rebind?86559_)
        (let* ((_phi86561_ (gx#current-expander-phi))
               (_ctx86563_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86558_
           _rebind?86559_
           _phi86561_
           _ctx86563_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86565_ _rebind?86566_ _phi86567_)
        (let ((_ctx86569_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86565_
           _rebind?86566_
           _phi86567_
           _ctx86569_))))
    (define gx#core-bind-runtime!
      (lambda _g89325_
        (let ((_g89324_ (##length _g89325_)))
          (cond ((##fx= _g89324_ 1)
                 (apply (lambda (_id86550_)
                          (gx#core-bind-runtime!__0 _id86550_))
                        _g89325_))
                ((##fx= _g89324_ 2)
                 (apply (lambda (_id86558_ _rebind?86559_)
                          (gx#core-bind-runtime!__1 _id86558_ _rebind?86559_))
                        _g89325_))
                ((##fx= _g89324_ 3)
                 (apply (lambda (_id86565_ _rebind?86566_ _phi86567_)
                          (gx#core-bind-runtime!__2
                           _id86565_
                           _rebind?86566_
                           _phi86567_))
                        _g89325_))
                ((##fx= _g89324_ 4)
                 (apply (lambda (_id86571_
                                 _rebind?86572_
                                 _phi86573_
                                 _ctx86574_)
                          (gx#core-bind-runtime!__%
                           _id86571_
                           _rebind?86572_
                           _phi86573_
                           _ctx86574_))
                        _g89325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89325_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86490_ _eid86491_ _rebind?86492_ _phi86493_ _ctx86494_)
        (let* ((_key86496_ (gx#core-identifier-key _id86490_))
               (_bind86498_
                (if (##structure-instance-of? _ctx86494_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86491_
                     _key86496_
                     _phi86493_
                     _ctx86494_)
                    (if (##structure-instance-of?
                         _ctx86494_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86491_
                         _key86496_
                         _phi86493_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86491_
                         _key86496_
                         _phi86493_)))))
          (gx#bind-identifier!__%
           _id86490_
           _bind86498_
           _rebind?86492_
           _phi86493_
           _ctx86494_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86504_ _eid86505_)
        (let* ((_rebind?86507_ '#f)
               (_phi86509_ (gx#current-expander-phi))
               (_ctx86511_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86504_
           _eid86505_
           _rebind?86507_
           _phi86509_
           _ctx86511_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86513_ _eid86514_ _rebind?86515_)
        (let* ((_phi86517_ (gx#current-expander-phi))
               (_ctx86519_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86513_
           _eid86514_
           _rebind?86515_
           _phi86517_
           _ctx86519_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86521_ _eid86522_ _rebind?86523_ _phi86524_)
        (let ((_ctx86526_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86521_
           _eid86522_
           _rebind?86523_
           _phi86524_
           _ctx86526_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89327_
        (let ((_g89326_ (##length _g89327_)))
          (cond ((##fx= _g89326_ 2)
                 (apply (lambda (_id86504_ _eid86505_)
                          (gx#core-bind-runtime-reference!__0
                           _id86504_
                           _eid86505_))
                        _g89327_))
                ((##fx= _g89326_ 3)
                 (apply (lambda (_id86513_ _eid86514_ _rebind?86515_)
                          (gx#core-bind-runtime-reference!__1
                           _id86513_
                           _eid86514_
                           _rebind?86515_))
                        _g89327_))
                ((##fx= _g89326_ 4)
                 (apply (lambda (_id86521_
                                 _eid86522_
                                 _rebind?86523_
                                 _phi86524_)
                          (gx#core-bind-runtime-reference!__2
                           _id86521_
                           _eid86522_
                           _rebind?86523_
                           _phi86524_))
                        _g89327_))
                ((##fx= _g89326_ 5)
                 (apply (lambda (_id86528_
                                 _eid86529_
                                 _rebind?86530_
                                 _phi86531_
                                 _ctx86532_)
                          (gx#core-bind-runtime-reference!__%
                           _id86528_
                           _eid86529_
                           _rebind?86530_
                           _phi86531_
                           _ctx86532_))
                        _g89327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89327_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86450_ _eid86451_ _rebind?86452_ _phi86453_ _ctx86454_)
        (gx#bind-identifier!__%
         _id86450_
         (##structure
          gx#extern-binding::t
          _eid86451_
          (gx#core-identifier-key _id86450_)
          _phi86453_)
         _rebind?86452_
         _phi86453_
         _ctx86454_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86459_ _eid86460_)
        (let* ((_rebind?86462_ '#f)
               (_phi86464_ (gx#current-expander-phi))
               (_ctx86466_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86459_
           _eid86460_
           _rebind?86462_
           _phi86464_
           _ctx86466_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86468_ _eid86469_ _rebind?86470_)
        (let* ((_phi86472_ (gx#current-expander-phi))
               (_ctx86474_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86468_
           _eid86469_
           _rebind?86470_
           _phi86472_
           _ctx86474_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86476_ _eid86477_ _rebind?86478_ _phi86479_)
        (let ((_ctx86481_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86476_
           _eid86477_
           _rebind?86478_
           _phi86479_
           _ctx86481_))))
    (define gx#core-bind-extern!
      (lambda _g89329_
        (let ((_g89328_ (##length _g89329_)))
          (cond ((##fx= _g89328_ 2)
                 (apply (lambda (_id86459_ _eid86460_)
                          (gx#core-bind-extern!__0 _id86459_ _eid86460_))
                        _g89329_))
                ((##fx= _g89328_ 3)
                 (apply (lambda (_id86468_ _eid86469_ _rebind?86470_)
                          (gx#core-bind-extern!__1
                           _id86468_
                           _eid86469_
                           _rebind?86470_))
                        _g89329_))
                ((##fx= _g89328_ 4)
                 (apply (lambda (_id86476_
                                 _eid86477_
                                 _rebind?86478_
                                 _phi86479_)
                          (gx#core-bind-extern!__2
                           _id86476_
                           _eid86477_
                           _rebind?86478_
                           _phi86479_))
                        _g89329_))
                ((##fx= _g89328_ 5)
                 (apply (lambda (_id86483_
                                 _eid86484_
                                 _rebind?86485_
                                 _phi86486_
                                 _ctx86487_)
                          (gx#core-bind-extern!__%
                           _id86483_
                           _eid86484_
                           _rebind?86485_
                           _phi86486_
                           _ctx86487_))
                        _g89329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89329_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86404_ _e86405_ _rebind?86406_ _phi86407_ _ctx86408_)
        (gx#bind-identifier!__%
         _id86404_
         (let ((_key86413_ (gx#core-identifier-key _id86404_))
               (_e86414_
                (if (or (##structure-instance-of? _e86405_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86405_
                         'gx#expander-context::t))
                    _e86405_
                    (##structure
                     gx#user-expander::t
                     _e86405_
                     _ctx86408_
                     _phi86407_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86413_ '#t _phi86407_ _ctx86408_)
            _key86413_
            _phi86407_
            _e86414_))
         _rebind?86406_
         _phi86407_
         _ctx86408_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86419_ _e86420_)
        (let* ((_rebind?86422_ '#f)
               (_phi86424_ (gx#current-expander-phi))
               (_ctx86426_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86419_
           _e86420_
           _rebind?86422_
           _phi86424_
           _ctx86426_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86428_ _e86429_ _rebind?86430_)
        (let* ((_phi86432_ (gx#current-expander-phi))
               (_ctx86434_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86428_
           _e86429_
           _rebind?86430_
           _phi86432_
           _ctx86434_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86436_ _e86437_ _rebind?86438_ _phi86439_)
        (let ((_ctx86441_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86436_
           _e86437_
           _rebind?86438_
           _phi86439_
           _ctx86441_))))
    (define gx#core-bind-syntax!
      (lambda _g89331_
        (let ((_g89330_ (##length _g89331_)))
          (cond ((##fx= _g89330_ 2)
                 (apply (lambda (_id86419_ _e86420_)
                          (gx#core-bind-syntax!__0 _id86419_ _e86420_))
                        _g89331_))
                ((##fx= _g89330_ 3)
                 (apply (lambda (_id86428_ _e86429_ _rebind?86430_)
                          (gx#core-bind-syntax!__1
                           _id86428_
                           _e86429_
                           _rebind?86430_))
                        _g89331_))
                ((##fx= _g89330_ 4)
                 (apply (lambda (_id86436_ _e86437_ _rebind?86438_ _phi86439_)
                          (gx#core-bind-syntax!__2
                           _id86436_
                           _e86437_
                           _rebind?86438_
                           _phi86439_))
                        _g89331_))
                ((##fx= _g89330_ 5)
                 (apply (lambda (_id86443_
                                 _e86444_
                                 _rebind?86445_
                                 _phi86446_
                                 _ctx86447_)
                          (gx#core-bind-syntax!__%
                           _id86443_
                           _e86444_
                           _rebind?86445_
                           _phi86446_
                           _ctx86447_))
                        _g89331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89331_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86387_ _e86388_ _rebind?86389_)
        (gx#core-bind-syntax!__%
         _id86387_
         _e86388_
         _rebind?86389_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86394_ _e86395_)
        (let ((_rebind?86397_ '#f))
          (gx#core-bind-root-syntax!__% _id86394_ _e86395_ _rebind?86397_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89333_
        (let ((_g89332_ (##length _g89333_)))
          (cond ((##fx= _g89332_ 2)
                 (apply (lambda (_id86394_ _e86395_)
                          (gx#core-bind-root-syntax!__0 _id86394_ _e86395_))
                        _g89333_))
                ((##fx= _g89332_ 3)
                 (apply (lambda (_id86399_ _e86400_ _rebind?86401_)
                          (gx#core-bind-root-syntax!__%
                           _id86399_
                           _e86400_
                           _rebind?86401_))
                        _g89333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89333_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86345_ _alias-id86346_ _rebind?86347_ _phi86348_ _ctx86349_)
        (gx#bind-identifier!__%
         _id86345_
         (let ((_key86351_ (gx#core-identifier-key _id86345_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86351_ '#t _phi86348_ _ctx86349_)
            _key86351_
            _phi86348_
            _alias-id86346_))
         _rebind?86347_
         _phi86348_
         _ctx86349_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86356_ _alias-id86357_)
        (let* ((_rebind?86359_ '#f)
               (_phi86361_ (gx#current-expander-phi))
               (_ctx86363_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86356_
           _alias-id86357_
           _rebind?86359_
           _phi86361_
           _ctx86363_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86365_ _alias-id86366_ _rebind?86367_)
        (let* ((_phi86369_ (gx#current-expander-phi))
               (_ctx86371_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86365_
           _alias-id86366_
           _rebind?86367_
           _phi86369_
           _ctx86371_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86373_ _alias-id86374_ _rebind?86375_ _phi86376_)
        (let ((_ctx86378_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86373_
           _alias-id86374_
           _rebind?86375_
           _phi86376_
           _ctx86378_))))
    (define gx#core-bind-alias!
      (lambda _g89335_
        (let ((_g89334_ (##length _g89335_)))
          (cond ((##fx= _g89334_ 2)
                 (apply (lambda (_id86356_ _alias-id86357_)
                          (gx#core-bind-alias!__0 _id86356_ _alias-id86357_))
                        _g89335_))
                ((##fx= _g89334_ 3)
                 (apply (lambda (_id86365_ _alias-id86366_ _rebind?86367_)
                          (gx#core-bind-alias!__1
                           _id86365_
                           _alias-id86366_
                           _rebind?86367_))
                        _g89335_))
                ((##fx= _g89334_ 4)
                 (apply (lambda (_id86373_
                                 _alias-id86374_
                                 _rebind?86375_
                                 _phi86376_)
                          (gx#core-bind-alias!__2
                           _id86373_
                           _alias-id86374_
                           _rebind?86375_
                           _phi86376_))
                        _g89335_))
                ((##fx= _g89334_ 5)
                 (apply (lambda (_id86380_
                                 _alias-id86381_
                                 _rebind?86382_
                                 _phi86383_
                                 _ctx86384_)
                          (gx#core-bind-alias!__%
                           _id86380_
                           _alias-id86381_
                           _rebind?86382_
                           _phi86383_
                           _ctx86384_))
                        _g89335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89335_))))))
    (define gx#make-binding-id__%
      (lambda (_key86302_ _syntax?86303_ _phi86304_ _ctx86305_)
        (if (uninterned-symbol? _key86302_)
            (gensym 'L)
            (if (pair? _key86302_)
                (gensym (car _key86302_))
                (if (##structure-instance-of? _ctx86305_ 'gx#top-context::t)
                    (let ((_ns86307_
                           (gx#core-context-namespace__% _ctx86305_)))
                      (if (and (fxzero? _phi86304_) (not _syntax?86303_))
                          (if _ns86307_
                              (make-symbol__1 _ns86307_ '"#" _key86302_)
                              _key86302_)
                          (if _syntax?86303_
                              (make-symbol__1
                               (let ((_$e86309_ _ns86307_))
                                 (if _$e86309_ _$e86309_ '""))
                               '"[:"
                               (number->string _phi86304_)
                               '":]#"
                               _key86302_)
                              (make-symbol__1
                               (let ((_$e86312_ _ns86307_))
                                 (if _$e86312_ _$e86312_ '""))
                               '"["
                               (number->string _phi86304_)
                               '"]#"
                               _key86302_))))
                    (gensym _key86302_))))))
    (define gx#make-binding-id__0
      (lambda (_key86318_)
        (let* ((_syntax?86320_ '#f)
               (_phi86322_ (gx#current-expander-phi))
               (_ctx86324_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86318_
           _syntax?86320_
           _phi86322_
           _ctx86324_))))
    (define gx#make-binding-id__1
      (lambda (_key86326_ _syntax?86327_)
        (let* ((_phi86329_ (gx#current-expander-phi))
               (_ctx86331_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86326_
           _syntax?86327_
           _phi86329_
           _ctx86331_))))
    (define gx#make-binding-id__2
      (lambda (_key86333_ _syntax?86334_ _phi86335_)
        (let ((_ctx86337_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86333_
           _syntax?86334_
           _phi86335_
           _ctx86337_))))
    (define gx#make-binding-id
      (lambda _g89337_
        (let ((_g89336_ (##length _g89337_)))
          (cond ((##fx= _g89336_ 1)
                 (apply (lambda (_key86318_)
                          (gx#make-binding-id__0 _key86318_))
                        _g89337_))
                ((##fx= _g89336_ 2)
                 (apply (lambda (_key86326_ _syntax?86327_)
                          (gx#make-binding-id__1 _key86326_ _syntax?86327_))
                        _g89337_))
                ((##fx= _g89336_ 3)
                 (apply (lambda (_key86333_ _syntax?86334_ _phi86335_)
                          (gx#make-binding-id__2
                           _key86333_
                           _syntax?86334_
                           _phi86335_))
                        _g89337_))
                ((##fx= _g89336_ 4)
                 (apply (lambda (_key86339_
                                 _syntax?86340_
                                 _phi86341_
                                 _ctx86342_)
                          (gx#make-binding-id__%
                           _key86339_
                           _syntax?86340_
                           _phi86341_
                           _ctx86342_))
                        _g89337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89337_))))))))
