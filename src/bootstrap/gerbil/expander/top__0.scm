(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708451993)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx86279_)
        (letrec ((_expand-special86281_
                  (lambda (_hd86283_ _K86284_ _rest86285_ _r86286_)
                    (_K86284_
                     _rest86285_
                     (cons (gx#core-expand-top _hd86283_) _r86286_)))))
          (gx#core-expand-block__0 _stx86279_ _expand-special86281_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx86032_)
        (letrec ((_expand-special86034_
                  (lambda (_hd86154_ _K86155_ _rest86156_ _r86157_)
                    (let* ((_K86161_
                            (lambda (_e86159_)
                              (_K86155_ _rest86156_ (cons _e86159_ _r86157_))))
                           (_e8616286191_ _hd86154_)
                           (_E8618686195_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8616286191_)))
                           (_E8618286207_
                            (lambda ()
                              (if (gx#stx-pair? _e8616286191_)
                                  (let ((_e8618786199_
                                         (gx#syntax-e _e8616286191_)))
                                    (let ((_hd8618886202_
                                           (##car _e8618786199_))
                                          (_tl8618986204_
                                           (##cdr _e8618786199_)))
                                      (if (and (gx#identifier? _hd8618886202_)
                                               (gx#core-identifier=?
                                                _hd8618886202_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K86161_
                                               (gx#core-expand-define-runtime%
                                                _hd86154_))
                                              (_E8618686195_))
                                          (_E8618686195_))))
                                  (_E8618686195_))))
                           (_E8617886219_
                            (lambda ()
                              (if (gx#stx-pair? _e8616286191_)
                                  (let ((_e8618386211_
                                         (gx#syntax-e _e8616286191_)))
                                    (let ((_hd8618486214_
                                           (##car _e8618386211_))
                                          (_tl8618586216_
                                           (##cdr _e8618386211_)))
                                      (if (and (gx#identifier? _hd8618486214_)
                                               (gx#core-identifier=?
                                                _hd8618486214_
                                                '%#define-alias))
                                          (if '#t
                                              (_K86161_
                                               (gx#core-expand-define-alias%
                                                _hd86154_))
                                              (_E8618286207_))
                                          (_E8618286207_))))
                                  (_E8618286207_))))
                           (_E8616886231_
                            (lambda ()
                              (if (gx#stx-pair? _e8616286191_)
                                  (let ((_e8617986223_
                                         (gx#syntax-e _e8616286191_)))
                                    (let ((_hd8618086226_
                                           (##car _e8617986223_))
                                          (_tl8618186228_
                                           (##cdr _e8617986223_)))
                                      (if (and (gx#identifier? _hd8618086226_)
                                               (gx#core-identifier=?
                                                _hd8618086226_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K86161_
                                               (gx#core-expand-define-syntax%
                                                _hd86154_))
                                              (_E8617886219_))
                                          (_E8617886219_))))
                                  (_E8617886219_))))
                           (_E8616486263_
                            (lambda ()
                              (if (gx#stx-pair? _e8616286191_)
                                  (let ((_e8616986235_
                                         (gx#syntax-e _e8616286191_)))
                                    (let ((_hd8617086238_
                                           (##car _e8616986235_))
                                          (_tl8617186240_
                                           (##cdr _e8616986235_)))
                                      (if (and (gx#identifier? _hd8617086238_)
                                               (gx#core-identifier=?
                                                _hd8617086238_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8617186240_)
                                              (let ((_e8617286243_
                                                     (gx#syntax-e
                                                      _tl8617186240_)))
                                                (let ((_hd8617386246_
                                                       (##car _e8617286243_))
                                                      (_tl8617486248_
                                                       (##cdr _e8617286243_)))
                                                  (let ((_hd-bind86251_
                                                         _hd8617386246_))
                                                    (if (gx#stx-pair?
                                                         _tl8617486248_)
                                                        (let ((_e8617586253_
                                                               (gx#syntax-e
                                                                _tl8617486248_)))
                                                          (let ((_hd8617686256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8617586253_))
                        (_tl8617786258_ (##cdr _e8617586253_)))
                    (let ((_expr86261_ _hd8617686256_))
                      (if (gx#stx-null? _tl8617786258_)
                          (if (gx#core-bind-values? _hd-bind86251_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind86251_)
                                (_K86161_ _hd86154_))
                              (_E8616886231_))
                          (_E8616886231_)))))
                (_E8616886231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8616886231_))
                                          (_E8616886231_))))
                                  (_E8616886231_))))
                           (_E8616386275_
                            (lambda ()
                              (if (gx#stx-pair? _e8616286191_)
                                  (let ((_e8616586267_
                                         (gx#syntax-e _e8616286191_)))
                                    (let ((_hd8616686270_
                                           (##car _e8616586267_))
                                          (_tl8616786272_
                                           (##cdr _e8616586267_)))
                                      (if (and (gx#identifier? _hd8616686270_)
                                               (gx#core-identifier=?
                                                _hd8616686270_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K86161_
                                               (gx#core-expand-begin-syntax%
                                                _hd86154_))
                                              (_E8616486263_))
                                          (_E8616486263_))))
                                  (_E8616486263_)))))
                      (_E8616386275_))))
                 (_eval-body86035_
                  (lambda (_rbody86043_)
                    (let _lp86045_ ((_rest86047_ _rbody86043_)
                                    (_body86048_ '())
                                    (_ebody86049_ '()))
                      (let* ((_rest8605086058_ _rest86047_)
                             (_else8605286066_
                              (lambda ()
                                (values _body86048_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody86049_)
                                          (gx#stx-source _stx86032_))))))
                             (_K8605486142_
                              (lambda (_rest86069_ _hd86070_)
                                (let* ((_e8607186088_ _hd86070_)
                                       (_E8608386092_
                                        (lambda ()
                                          (_lp86045_
                                           _rest86069_
                                           (cons _hd86070_ _body86048_)
                                           (cons _hd86070_ _ebody86049_))))
                                       (_E8607386104_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8607186088_)
                                              (let ((_e8608486096_
                                                     (gx#syntax-e
                                                      _e8607186088_)))
                                                (let ((_hd8608586099_
                                                       (##car _e8608486096_))
                                                      (_tl8608686101_
                                                       (##cdr _e8608486096_)))
                                                  (if (and (gx#identifier?
                                                            _hd8608586099_)
                                                           (gx#core-identifier=?
                                                            _hd8608586099_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp86045_
                                                           _rest86069_
                                                           (cons _hd86070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body86048_)
                   _ebody86049_)
                  (_E8608386092_))
              (_E8608386092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8608386092_))))
                                       (_E8607286138_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8607186088_)
                                              (let ((_e8607486108_
                                                     (gx#syntax-e
                                                      _e8607186088_)))
                                                (let ((_hd8607586111_
                                                       (##car _e8607486108_))
                                                      (_tl8607686113_
                                                       (##cdr _e8607486108_)))
                                                  (if (and (gx#identifier?
                                                            _hd8607586111_)
                                                           (gx#core-identifier=?
                                                            _hd8607586111_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8607686113_)
                                                          (let ((_e8607786116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8607686113_)))
                    (let ((_hd8607886119_ (##car _e8607786116_))
                          (_tl8607986121_ (##cdr _e8607786116_)))
                      (let ((_hd-bind86124_ _hd8607886119_))
                        (if (gx#stx-pair? _tl8607986121_)
                            (let ((_e8608086126_ (gx#syntax-e _tl8607986121_)))
                              (let ((_hd8608186129_ (##car _e8608086126_))
                                    (_tl8608286131_ (##cdr _e8608086126_)))
                                (let ((_expr86134_ _hd8608186129_))
                                  (if (gx#stx-null? _tl8608286131_)
                                      (if '#t
                                          (let ((_ehd86136_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind86124_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr86134_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd86070_))))
                                            (_lp86045_
                                             _rest86069_
                                             (cons _ehd86136_ _body86048_)
                                             (cons _ehd86136_ _ebody86049_)))
                                          (_E8607386104_))
                                      (_E8607386104_)))))
                            (_E8607386104_)))))
                  (_E8607386104_))
              (_E8607386104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8607386104_)))))
                                  (_E8607286138_)))))
                        (if (##pair? _rest8605086058_)
                            (let ((_hd8605586145_ (##car _rest8605086058_))
                                  (_tl8605686147_ (##cdr _rest8605086058_)))
                              (let* ((_hd86150_ _hd8605586145_)
                                     (_rest86152_ _tl8605686147_))
                                (_K8605486142_ _rest86152_ _hd86150_)))
                            (_else8605286066_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody86038_
                     (gx#core-expand-block__1
                      _stx86032_
                      _expand-special86034_
                      '#f))
                    (_g86302_ (_eval-body86035_ _rbody86038_)))
               (begin
                 (let ((_g86303_
                        (if (##values? _g86302_)
                            (##vector-length _g86302_)
                            1)))
                   (if (not (##fx= _g86303_ 2))
                       (error "Context expects 2 values" _g86303_)))
                 (let ((_expanded-body86040_ (##vector-ref _g86302_ 0))
                       (_value86041_ (##vector-ref _g86302_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body86040_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value86041_ '())))
                    (gx#stx-source _stx86032_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx86002_)
        (let* ((_e8600386010_ _stx86002_)
               (_E8600586014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8600386010_)))
               (_E8600486028_
                (lambda ()
                  (if (gx#stx-pair? _e8600386010_)
                      (let ((_e8600686018_ (gx#syntax-e _e8600386010_)))
                        (let ((_hd8600786021_ (##car _e8600686018_))
                              (_tl8600886023_ (##cdr _e8600686018_)))
                          (let ((_body86026_ _tl8600886023_))
                            (if (gx#stx-list? _body86026_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body86026_)
                                 (gx#stx-source _stx86002_))
                                (_E8600586014_)))))
                      (_E8600586014_)))))
          (_E8600486028_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx86000_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx86000_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx85946_)
        (let* ((_e8594785960_ _stx85946_)
               (_E8594985964_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8594785960_)))
               (_E8594885996_
                (lambda ()
                  (if (gx#stx-pair? _e8594785960_)
                      (let ((_e8595085968_ (gx#syntax-e _e8594785960_)))
                        (let ((_hd8595185971_ (##car _e8595085968_))
                              (_tl8595285973_ (##cdr _e8595085968_)))
                          (if (gx#stx-pair? _tl8595285973_)
                              (let ((_e8595385976_
                                     (gx#syntax-e _tl8595285973_)))
                                (let ((_hd8595485979_ (##car _e8595385976_))
                                      (_tl8595585981_ (##cdr _e8595385976_)))
                                  (let ((_ann85984_ _hd8595485979_))
                                    (if (gx#stx-pair? _tl8595585981_)
                                        (let ((_e8595685986_
                                               (gx#syntax-e _tl8595585981_)))
                                          (let ((_hd8595785989_
                                                 (##car _e8595685986_))
                                                (_tl8595885991_
                                                 (##cdr _e8595685986_)))
                                            (let ((_expr85994_ _hd8595785989_))
                                              (if (gx#stx-null? _tl8595885991_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann85984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr85994_) '())))
               (gx#stx-source _stx85946_))
              (_E8594985964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8594985964_)))))
                                        (_E8594985964_)))))
                              (_E8594985964_))))
                      (_E8594985964_)))))
          (_E8594885996_))))
    (define gx#core-expand-local-block
      (lambda (_stx85670_ _body85671_)
        (letrec ((_expand-special85673_
                  (lambda (_hd85941_ _K85942_ _rest85943_ _r85944_)
                    (_K85942_
                     '()
                     (cons (_expand-internal85674_ _hd85941_ _rest85943_)
                           _r85944_))))
                 (_expand-internal85674_
                  (lambda (_hd85937_ _rest85938_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal85676_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd85937_ _rest85938_))
                          (gx#stx-source _stx85670_))
                         _expand-internal-special85675_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj86296
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj86296)
                       __obj86296))))
                 (_expand-internal-special85675_
                  (lambda (_hd85832_ _K85833_ _rest85834_ _r85835_)
                    (let* ((_e8583685861_ _hd85832_)
                           (_E8585685865_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8583685861_)))
                           (_E8585285877_
                            (lambda ()
                              (if (gx#stx-pair? _e8583685861_)
                                  (let ((_e8585785869_
                                         (gx#syntax-e _e8583685861_)))
                                    (let ((_hd8585885872_
                                           (##car _e8585785869_))
                                          (_tl8585985874_
                                           (##cdr _e8585785869_)))
                                      (if (and (gx#identifier? _hd8585885872_)
                                               (gx#core-identifier=?
                                                _hd8585885872_
                                                '%#declare))
                                          (if '#t
                                              (_K85833_
                                               _rest85834_
                                               (cons (gx#core-expand-declare%
                                                      _hd85832_)
                                                     _r85835_))
                                              (_E8585685865_))
                                          (_E8585685865_))))
                                  (_E8585685865_))))
                           (_E8584885889_
                            (lambda ()
                              (if (gx#stx-pair? _e8583685861_)
                                  (let ((_e8585385881_
                                         (gx#syntax-e _e8583685861_)))
                                    (let ((_hd8585485884_
                                           (##car _e8585385881_))
                                          (_tl8585585886_
                                           (##cdr _e8585385881_)))
                                      (if (and (gx#identifier? _hd8585485884_)
                                               (gx#core-identifier=?
                                                _hd8585485884_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd85832_)
                                                (_K85833_
                                                 _rest85834_
                                                 _r85835_))
                                              (_E8585285877_))
                                          (_E8585285877_))))
                                  (_E8585285877_))))
                           (_E8583885901_
                            (lambda ()
                              (if (gx#stx-pair? _e8583685861_)
                                  (let ((_e8584985893_
                                         (gx#syntax-e _e8583685861_)))
                                    (let ((_hd8585085896_
                                           (##car _e8584985893_))
                                          (_tl8585185898_
                                           (##cdr _e8584985893_)))
                                      (if (and (gx#identifier? _hd8585085896_)
                                               (gx#core-identifier=?
                                                _hd8585085896_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd85832_)
                                                (_K85833_
                                                 _rest85834_
                                                 _r85835_))
                                              (_E8584885889_))
                                          (_E8584885889_))))
                                  (_E8584885889_))))
                           (_E8583785933_
                            (lambda ()
                              (if (gx#stx-pair? _e8583685861_)
                                  (let ((_e8583985905_
                                         (gx#syntax-e _e8583685861_)))
                                    (let ((_hd8584085908_
                                           (##car _e8583985905_))
                                          (_tl8584185910_
                                           (##cdr _e8583985905_)))
                                      (if (and (gx#identifier? _hd8584085908_)
                                               (gx#core-identifier=?
                                                _hd8584085908_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8584185910_)
                                              (let ((_e8584285913_
                                                     (gx#syntax-e
                                                      _tl8584185910_)))
                                                (let ((_hd8584385916_
                                                       (##car _e8584285913_))
                                                      (_tl8584485918_
                                                       (##cdr _e8584285913_)))
                                                  (let ((_hd-bind85921_
                                                         _hd8584385916_))
                                                    (if (gx#stx-pair?
                                                         _tl8584485918_)
                                                        (let ((_e8584585923_
                                                               (gx#syntax-e
                                                                _tl8584485918_)))
                                                          (let ((_hd8584685926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8584585923_))
                        (_tl8584785928_ (##cdr _e8584585923_)))
                    (let ((_expr85931_ _hd8584685926_))
                      (if (gx#stx-null? _tl8584785928_)
                          (if (gx#core-bind-values? _hd-bind85921_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind85921_)
                                (_K85833_
                                 _rest85834_
                                 (cons _hd85832_ _r85835_)))
                              (_E8583885901_))
                          (_E8583885901_)))))
                (_E8583885901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8583885901_))
                                          (_E8583885901_))))
                                  (_E8583885901_)))))
                      (_E8583785933_))))
                 (_wrap-internal85676_
                  (lambda (_rbody85678_)
                    (let _lp85680_ ((_rest85682_ _rbody85678_)
                                    (_decls85683_ '())
                                    (_bind85684_ '())
                                    (_body85685_ '()))
                      (let* ((_e8568685693_ _rest85682_)
                             (_E8568885742_
                              (lambda ()
                                (let* ((_body85737_
                                        (let* ((_body8569685706_ _body85685_)
                                               (_else8569985714_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body85685_)
                                                   (gx#stx-source
                                                    _stx85670_)))))
                                          (let ((_K8570485734_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx85670_)))
                                                (_K8570185720_
                                                 (lambda (_expr85718_)
                                                   _expr85718_)))
                                            (let ((_try-match8569885730_
                                                   (lambda ()
                                                     (if (##pair? _body8569685706_)
                                                         (let ((_tl8570385725_
                                                                (##cdr _body8569685706_))
                                                               (_hd8570285723_
                                                                (##car _body8569685706_)))
                                                           (if (##null? _tl8570385725_)
                                                               (let ((_expr85728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8570285723_))
                         (_K8570185720_ _expr85728_))
                       (_else8569985714_)))
                 (_else8569985714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8569685706_)
                                                  (_K8570485734_)
                                                  (_try-match8569885730_))))))
                                       (_body85739_
                                        (if (null? _bind85684_)
                                            _body85737_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind85684_
                                                         (cons _body85737_
                                                               '())))
                                             (gx#stx-source _stx85670_)))))
                                  (if (null? _decls85683_)
                                      _body85739_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls85683_
                                                   (cons _body85739_ '())))
                                       (gx#stx-source _stx85670_))))))
                             (_E8568785828_
                              (lambda ()
                                (if (gx#stx-pair? _e8568685693_)
                                    (let ((_e8568985746_
                                           (gx#syntax-e _e8568685693_)))
                                      (let ((_hd8569085749_
                                             (##car _e8568985746_))
                                            (_tl8569185751_
                                             (##cdr _e8568985746_)))
                                        (let* ((_hd85754_ _hd8569085749_)
                                               (_rest85756_ _tl8569185751_))
                                          (if '#t
                                              (let* ((_e8575785774_ _hd85754_)
                                                     (_E8576985778_
                                                      (lambda ()
                                                        (if (null? _bind85684_)
                                                            (_lp85680_
                                                             _rest85756_
                                                             _decls85683_
                                                             _bind85684_
                                                             (cons _hd85754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body85685_))
                    (_lp85680_
                     _rest85756_
                     _decls85683_
                     (cons (cons '#f (cons _hd85754_ '())) _bind85684_)
                     _body85685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8575985792_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8575785774_)
                                                            (let ((_e8577085782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8575785774_)))
                      (let ((_hd8577185785_ (##car _e8577085782_))
                            (_tl8577285787_ (##cdr _e8577085782_)))
                        (if (and (gx#identifier? _hd8577185785_)
                                 (gx#core-identifier=?
                                  _hd8577185785_
                                  '%#declare))
                            (let ((_xdecls85790_ _tl8577285787_))
                              (if '#t
                                  (_lp85680_
                                   _rest85756_
                                   (gx#stx-foldr
                                    cons
                                    _decls85683_
                                    _xdecls85790_)
                                   _bind85684_
                                   _body85685_)
                                  (_E8576985778_)))
                            (_E8576985778_))))
                    (_E8576985778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8575885824_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8575785774_)
                                                            (let ((_e8576085796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8575785774_)))
                      (let ((_hd8576185799_ (##car _e8576085796_))
                            (_tl8576285801_ (##cdr _e8576085796_)))
                        (if (and (gx#identifier? _hd8576185799_)
                                 (gx#core-identifier=?
                                  _hd8576185799_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8576285801_)
                                (let ((_e8576385804_
                                       (gx#syntax-e _tl8576285801_)))
                                  (let ((_hd8576485807_ (##car _e8576385804_))
                                        (_tl8576585809_ (##cdr _e8576385804_)))
                                    (let ((_hd-bind85812_ _hd8576485807_))
                                      (if (gx#stx-pair? _tl8576585809_)
                                          (let ((_e8576685814_
                                                 (gx#syntax-e _tl8576585809_)))
                                            (let ((_hd8576785817_
                                                   (##car _e8576685814_))
                                                  (_tl8576885819_
                                                   (##cdr _e8576685814_)))
                                              (let ((_expr85822_
                                                     _hd8576785817_))
                                                (if (gx#stx-null?
                                                     _tl8576885819_)
                                                    (if '#t
                                                        (_lp85680_
                                                         _rest85756_
                                                         _decls85683_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind85812_)
                             (cons (gx#core-expand-expression _expr85822_)
                                   '()))
                       _bind85684_)
                 _body85685_)
                (_E8575985792_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8575985792_)))))
                                          (_E8575985792_)))))
                                (_E8575985792_))
                            (_E8575985792_))))
                    (_E8575985792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8575885824_))
                                              (_E8568885742_)))))
                                    (_E8568885742_)))))
                        (_E8568785828_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body85671_)
            (gx#stx-source _stx85670_))
           _expand-special85673_))))
    (define gx#core-expand-declare%
      (lambda (_stx85608_)
        (let* ((_e8560985616_ _stx85608_)
               (_E8561185620_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8560985616_)))
               (_E8561085666_
                (lambda ()
                  (if (gx#stx-pair? _e8560985616_)
                      (let ((_e8561285624_ (gx#syntax-e _e8560985616_)))
                        (let ((_hd8561385627_ (##car _e8561285624_))
                              (_tl8561485629_ (##cdr _e8561285624_)))
                          (let ((_body85632_ _tl8561485629_))
                            (if (gx#stx-list? _body85632_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl85634_)
                                     (let* ((_e8563585642_ _decl85634_)
                                            (_E8563785646_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8563585642_)))
                                            (_E8563685662_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8563585642_)
                                                   (let ((_e8563885650_
                                                          (gx#syntax-e
                                                           _e8563585642_)))
                                                     (let ((_hd8563985653_
                                                            (##car _e8563885650_))
                                                           (_tl8564085655_
                                                            (##cdr _e8563885650_)))
                                                       (let* ((_head85658_
                                                               _hd8563985653_)
                                                              (_args85660_
                                                               _tl8564085655_))
                                                         (if (gx#stx-list?
                                                              _args85660_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl85634_)
                                                             (_E8563785646_)))))
                                                   (_E8563785646_)))))
                                       (_E8563685662_)))
                                   _body85632_))
                                 (gx#stx-source _stx85608_))
                                (_E8561185620_)))))
                      (_E8561185620_)))))
          (_E8561085666_))))
    (define gx#core-expand-extern%
      (lambda (_stx85512_)
        (let* ((_e8551385520_ _stx85512_)
               (_E8551585524_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8551385520_)))
               (_E8551485604_
                (lambda ()
                  (if (gx#stx-pair? _e8551385520_)
                      (let ((_e8551685528_ (gx#syntax-e _e8551385520_)))
                        (let ((_hd8551785531_ (##car _e8551685528_))
                              (_tl8551885533_ (##cdr _e8551685528_)))
                          (let ((_body85536_ _tl8551885533_))
                            (if '#t
                                (let _lp85538_ ((_rest85540_ _body85536_)
                                                (_r85541_ '()))
                                  (let* ((_e8554285556_ _rest85540_)
                                         (_E8555485560_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx85512_)))
                                         (_E8554485564_
                                          (lambda ()
                                            (if (gx#stx-null? _e8554285556_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r85541_))
                                                     (gx#stx-source
                                                      _stx85512_))
                                                    (_E8555485560_))
                                                (_E8555485560_))))
                                         (_E8554385600_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8554285556_)
                                                (let ((_e8554585568_
                                                       (gx#syntax-e
                                                        _e8554285556_)))
                                                  (let ((_hd8554685571_
                                                         (##car _e8554585568_))
                                                        (_tl8554785573_
                                                         (##cdr _e8554585568_)))
                                                    (if (gx#stx-pair?
                                                         _hd8554685571_)
                                                        (let ((_e8554885576_
                                                               (gx#syntax-e
                                                                _hd8554685571_)))
                                                          (let ((_hd8554985579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8554885576_))
                        (_tl8555085581_ (##cdr _e8554885576_)))
                    (let ((_id85584_ _hd8554985579_))
                      (if (gx#stx-pair? _tl8555085581_)
                          (let ((_e8555185586_ (gx#syntax-e _tl8555085581_)))
                            (let ((_hd8555285589_ (##car _e8555185586_))
                                  (_tl8555385591_ (##cdr _e8555185586_)))
                              (let ((_eid85594_ _hd8555285589_))
                                (if (gx#stx-null? _tl8555385591_)
                                    (let ((_rest85596_ _tl8554785573_))
                                      (if (and (gx#identifier? _id85584_)
                                               (gx#identifier? _eid85594_))
                                          (let ((_eid85598_
                                                 (gx#stx-e _eid85594_)))
                                            (gx#core-bind-extern!__0
                                             _id85584_
                                             _eid85598_)
                                            (_lp85538_
                                             _rest85596_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id85584_)
                                                         (cons _eid85598_ '()))
                                                   _r85541_)))
                                          (_E8554485564_)))
                                    (_E8554485564_)))))
                          (_E8554485564_)))))
                (_E8554485564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8554485564_)))))
                                    (_E8554385600_)))
                                (_E8551585524_)))))
                      (_E8551585524_)))))
          (_E8551485604_))))
    (define gx#core-expand-define-values%
      (lambda (_stx85458_)
        (let* ((_e8545985472_ _stx85458_)
               (_E8546185476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8545985472_)))
               (_E8546085508_
                (lambda ()
                  (if (gx#stx-pair? _e8545985472_)
                      (let ((_e8546285480_ (gx#syntax-e _e8545985472_)))
                        (let ((_hd8546385483_ (##car _e8546285480_))
                              (_tl8546485485_ (##cdr _e8546285480_)))
                          (if (gx#stx-pair? _tl8546485485_)
                              (let ((_e8546585488_
                                     (gx#syntax-e _tl8546485485_)))
                                (let ((_hd8546685491_ (##car _e8546585488_))
                                      (_tl8546785493_ (##cdr _e8546585488_)))
                                  (let ((_hd85496_ _hd8546685491_))
                                    (if (gx#stx-pair? _tl8546785493_)
                                        (let ((_e8546885498_
                                               (gx#syntax-e _tl8546785493_)))
                                          (let ((_hd8546985501_
                                                 (##car _e8546885498_))
                                                (_tl8547085503_
                                                 (##cdr _e8546885498_)))
                                            (let ((_expr85506_ _hd8546985501_))
                                              (if (gx#stx-null? _tl8547085503_)
                                                  (if (gx#core-bind-values?
                                                       _hd85496_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd85496_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd85496_)
                             (cons (gx#core-expand-expression _expr85506_)
                                   '())))
                 (gx#stx-source _stx85458_)))
              (_E8546185476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8546185476_)))))
                                        (_E8546185476_)))))
                              (_E8546185476_))))
                      (_E8546185476_)))))
          (_E8546085508_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx85402_)
        (let* ((_e8540385416_ _stx85402_)
               (_E8540585420_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8540385416_)))
               (_E8540485454_
                (lambda ()
                  (if (gx#stx-pair? _e8540385416_)
                      (let ((_e8540685424_ (gx#syntax-e _e8540385416_)))
                        (let ((_hd8540785427_ (##car _e8540685424_))
                              (_tl8540885429_ (##cdr _e8540685424_)))
                          (if (gx#stx-pair? _tl8540885429_)
                              (let ((_e8540985432_
                                     (gx#syntax-e _tl8540885429_)))
                                (let ((_hd8541085435_ (##car _e8540985432_))
                                      (_tl8541185437_ (##cdr _e8540985432_)))
                                  (let ((_id85440_ _hd8541085435_))
                                    (if (gx#stx-pair? _tl8541185437_)
                                        (let ((_e8541285442_
                                               (gx#syntax-e _tl8541185437_)))
                                          (let ((_hd8541385445_
                                                 (##car _e8541285442_))
                                                (_tl8541485447_
                                                 (##cdr _e8541285442_)))
                                            (let ((_binding-id85450_
                                                   _hd8541385445_))
                                              (if (gx#stx-null? _tl8541485447_)
                                                  (if (and (gx#identifier?
                                                            _id85440_)
                                                           (gx#identifier?
                                                            _binding-id85450_))
                                                      (let ((_eid85452_
                                                             (gx#stx-e
                                                              _binding-id85450_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id85440_
                                                         _eid85452_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id85440_)
                             (cons _eid85452_ '())))))
              (_E8540585420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8540585420_)))))
                                        (_E8540585420_)))))
                              (_E8540585420_))))
                      (_E8540585420_)))))
          (_E8540485454_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx85345_)
        (let* ((_e8534685359_ _stx85345_)
               (_E8534885363_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8534685359_)))
               (_E8534785398_
                (lambda ()
                  (if (gx#stx-pair? _e8534685359_)
                      (let ((_e8534985367_ (gx#syntax-e _e8534685359_)))
                        (let ((_hd8535085370_ (##car _e8534985367_))
                              (_tl8535185372_ (##cdr _e8534985367_)))
                          (if (gx#stx-pair? _tl8535185372_)
                              (let ((_e8535285375_
                                     (gx#syntax-e _tl8535185372_)))
                                (let ((_hd8535385378_ (##car _e8535285375_))
                                      (_tl8535485380_ (##cdr _e8535285375_)))
                                  (let ((_id85383_ _hd8535385378_))
                                    (if (gx#stx-pair? _tl8535485380_)
                                        (let ((_e8535585385_
                                               (gx#syntax-e _tl8535485380_)))
                                          (let ((_hd8535685388_
                                                 (##car _e8535585385_))
                                                (_tl8535785390_
                                                 (##cdr _e8535585385_)))
                                            (let ((_expr85393_ _hd8535685388_))
                                              (if (gx#stx-null? _tl8535785390_)
                                                  (if (gx#identifier?
                                                       _id85383_)
                                                      (let ((_g86304_
                                                             (gx#core-expand-expression+1
                                                              _expr85393_)))
                                                        (begin
                                                          (let ((_g86305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g86304_)
                             (##vector-length _g86304_)
                             1)))
                    (if (not (##fx= _g86305_ 2))
                        (error "Context expects 2 values" _g86305_)))
                  (let ((_e-stx85395_ (##vector-ref _g86304_ 0))
                        (_e85396_ (##vector-ref _g86304_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id85383_ _e85396_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id85383_)
                                   (cons _e-stx85395_ '())))
                       (gx#stx-source _stx85345_))))))
              (_E8534885363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8534885363_)))))
                                        (_E8534885363_)))))
                              (_E8534885363_))))
                      (_E8534885363_)))))
          (_E8534785398_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx85289_)
        (let* ((_e8529085303_ _stx85289_)
               (_E8529285307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8529085303_)))
               (_E8529185341_
                (lambda ()
                  (if (gx#stx-pair? _e8529085303_)
                      (let ((_e8529385311_ (gx#syntax-e _e8529085303_)))
                        (let ((_hd8529485314_ (##car _e8529385311_))
                              (_tl8529585316_ (##cdr _e8529385311_)))
                          (if (gx#stx-pair? _tl8529585316_)
                              (let ((_e8529685319_
                                     (gx#syntax-e _tl8529585316_)))
                                (let ((_hd8529785322_ (##car _e8529685319_))
                                      (_tl8529885324_ (##cdr _e8529685319_)))
                                  (let ((_id85327_ _hd8529785322_))
                                    (if (gx#stx-pair? _tl8529885324_)
                                        (let ((_e8529985329_
                                               (gx#syntax-e _tl8529885324_)))
                                          (let ((_hd8530085332_
                                                 (##car _e8529985329_))
                                                (_tl8530185334_
                                                 (##cdr _e8529985329_)))
                                            (let ((_alias-id85337_
                                                   _hd8530085332_))
                                              (if (gx#stx-null? _tl8530185334_)
                                                  (if (and (gx#identifier?
                                                            _id85327_)
                                                           (gx#identifier?
                                                            _alias-id85337_))
                                                      (let ((_alias-id85339_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id85337_)))
                                                        (gx#core-bind-alias!__0
                                                         _id85327_
                                                         _alias-id85339_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id85327_)
                             (cons _alias-id85339_ '())))))
              (_E8529285307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8529285307_)))))
                                        (_E8529285307_)))))
                              (_E8529285307_))))
                      (_E8529285307_)))))
          (_E8529185341_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx85232_ _wrap?85233_)
        (let* ((_e8523485244_ _stx85232_)
               (_E8523685248_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8523485244_)))
               (_E8523585275_
                (lambda ()
                  (if (gx#stx-pair? _e8523485244_)
                      (let ((_e8523785252_ (gx#syntax-e _e8523485244_)))
                        (let ((_hd8523885255_ (##car _e8523785252_))
                              (_tl8523985257_ (##cdr _e8523785252_)))
                          (if (gx#stx-pair? _tl8523985257_)
                              (let ((_e8524085260_
                                     (gx#syntax-e _tl8523985257_)))
                                (let ((_hd8524185263_ (##car _e8524085260_))
                                      (_tl8524285265_ (##cdr _e8524085260_)))
                                  (let* ((_hd85268_ _hd8524185263_)
                                         (_body85270_ _tl8524285265_))
                                    (if (gx#core-bind-values? _hd85268_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd85268_)
                                           (let ((_body85273_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd85268_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx85232_
                                                               _body85270_)
                                                              '()))))
                                             (if _wrap?85233_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body85273_)
                                                  (gx#stx-source _stx85232_))
                                                 _body85273_)))
                                         gx#current-expander-context
                                         (let ((__obj86297
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86297)
                                           __obj86297))
                                        (_E8523685248_)))))
                              (_E8523685248_))))
                      (_E8523685248_)))))
          (_E8523585275_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx85282_)
        (let ((_wrap?85284_ '#t))
          (gx#core-expand-lambda%__% _stx85282_ _wrap?85284_))))
    (define gx#core-expand-lambda%
      (lambda _g86307_
        (let ((_g86306_ (##length _g86307_)))
          (cond ((##fx= _g86306_ 1)
                 (apply (lambda (_stx85282_)
                          (gx#core-expand-lambda%__0 _stx85282_))
                        _g86307_))
                ((##fx= _g86306_ 2)
                 (apply (lambda (_stx85286_ _wrap?85287_)
                          (gx#core-expand-lambda%__% _stx85286_ _wrap?85287_))
                        _g86307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g86307_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx85196_)
        (let* ((_e8519785204_ _stx85196_)
               (_E8519985208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8519785204_)))
               (_E8519885227_
                (lambda ()
                  (if (gx#stx-pair? _e8519785204_)
                      (let ((_e8520085212_ (gx#syntax-e _e8519785204_)))
                        (let ((_hd8520185215_ (##car _e8520085212_))
                              (_tl8520285217_ (##cdr _e8520085212_)))
                          (let ((_clauses85220_ _tl8520285217_))
                            (if (gx#stx-list? _clauses85220_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause85222_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause85222_)
                                       (let ((_$e85224_
                                              (gx#stx-source _clause85222_)))
                                         (if _$e85224_
                                             _$e85224_
                                             (gx#stx-source _stx85196_))))
                                      '#f))
                                   _clauses85220_))
                                 (gx#stx-source _stx85196_))
                                (_E8519985208_)))))
                      (_E8519985208_)))))
          (_E8519885227_))))
    (define gx#core-expand-let-values%
      (lambda (_stx85150_)
        (let* ((_e8515185161_ _stx85150_)
               (_E8515385165_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8515185161_)))
               (_E8515285192_
                (lambda ()
                  (if (gx#stx-pair? _e8515185161_)
                      (let ((_e8515485169_ (gx#syntax-e _e8515185161_)))
                        (let ((_hd8515585172_ (##car _e8515485169_))
                              (_tl8515685174_ (##cdr _e8515485169_)))
                          (if (gx#stx-pair? _tl8515685174_)
                              (let ((_e8515785177_
                                     (gx#syntax-e _tl8515685174_)))
                                (let ((_hd8515885180_ (##car _e8515785177_))
                                      (_tl8515985182_ (##cdr _e8515785177_)))
                                  (let* ((_hd85185_ _hd8515885180_)
                                         (_body85187_ _tl8515985182_))
                                    (if (gx#core-expand-let-bind? _hd85185_)
                                        (let ((_expressions85189_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd85185_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd85185_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd85185_
                                                           _expressions85189_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx85150_
                         _body85187_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx85150_)))
                                           gx#current-expander-context
                                           (let ((__obj86298
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj86298)
                                             __obj86298)))
                                        (_E8515385165_)))))
                              (_E8515385165_))))
                      (_E8515385165_)))))
          (_E8515285192_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx85095_ _form85096_)
        (let* ((_e8509785107_ _stx85095_)
               (_E8509985111_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8509785107_)))
               (_E8509885136_
                (lambda ()
                  (if (gx#stx-pair? _e8509785107_)
                      (let ((_e8510085115_ (gx#syntax-e _e8509785107_)))
                        (let ((_hd8510185118_ (##car _e8510085115_))
                              (_tl8510285120_ (##cdr _e8510085115_)))
                          (if (gx#stx-pair? _tl8510285120_)
                              (let ((_e8510385123_
                                     (gx#syntax-e _tl8510285120_)))
                                (let ((_hd8510485126_ (##car _e8510385123_))
                                      (_tl8510585128_ (##cdr _e8510385123_)))
                                  (let* ((_hd85131_ _hd8510485126_)
                                         (_body85133_ _tl8510585128_))
                                    (if (gx#core-expand-let-bind? _hd85131_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd85131_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form85096_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd85131_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd85131_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx85095_
                                                               _body85133_)
                                                              '())))
                                            (gx#stx-source _stx85095_)))
                                         gx#current-expander-context
                                         (let ((__obj86299
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86299)
                                           __obj86299))
                                        (_E8509985111_)))))
                              (_E8509985111_))))
                      (_E8509985111_)))))
          (_E8509885136_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx85143_)
        (let ((_form85145_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx85143_ _form85145_))))
    (define gx#core-expand-letrec-values%
      (lambda _g86309_
        (let ((_g86308_ (##length _g86309_)))
          (cond ((##fx= _g86308_ 1)
                 (apply (lambda (_stx85143_)
                          (gx#core-expand-letrec-values%__0 _stx85143_))
                        _g86309_))
                ((##fx= _g86308_ 2)
                 (apply (lambda (_stx85147_ _form85148_)
                          (gx#core-expand-letrec-values%__%
                           _stx85147_
                           _form85148_))
                        _g86309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g86309_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx85092_)
        (gx#core-expand-letrec-values%__% _stx85092_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx85049_)
        (if (gx#stx-list? _stx85049_)
            (gx#stx-andmap
             (lambda (_bind85051_)
               (let* ((_e8505285062_ _bind85051_)
                      (_E8505485066_ (lambda () '#f))
                      (_E8505385088_
                       (lambda ()
                         (if (gx#stx-pair? _e8505285062_)
                             (let ((_e8505585070_ (gx#syntax-e _e8505285062_)))
                               (let ((_hd8505685073_ (##car _e8505585070_))
                                     (_tl8505785075_ (##cdr _e8505585070_)))
                                 (let ((_hd85078_ _hd8505685073_))
                                   (if (gx#stx-pair? _tl8505785075_)
                                       (let ((_e8505885080_
                                              (gx#syntax-e _tl8505785075_)))
                                         (let ((_hd8505985083_
                                                (##car _e8505885080_))
                                               (_tl8506085085_
                                                (##cdr _e8505885080_)))
                                           (if (gx#stx-null? _tl8506085085_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd85078_)
                                                   (_E8505485066_))
                                               (_E8505485066_))))
                                       (_E8505485066_)))))
                             (_E8505485066_)))))
                 (_E8505385088_)))
             _stx85049_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind85008_)
        (let* ((_e8500985019_ _bind85008_)
               (_E8501185023_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8500985019_)))
               (_E8501085045_
                (lambda ()
                  (if (gx#stx-pair? _e8500985019_)
                      (let ((_e8501285027_ (gx#syntax-e _e8500985019_)))
                        (let ((_hd8501385030_ (##car _e8501285027_))
                              (_tl8501485032_ (##cdr _e8501285027_)))
                          (if (gx#stx-pair? _tl8501485032_)
                              (let ((_e8501585035_
                                     (gx#syntax-e _tl8501485032_)))
                                (let ((_hd8501685038_ (##car _e8501585035_))
                                      (_tl8501785040_ (##cdr _e8501585035_)))
                                  (let ((_expr85043_ _hd8501685038_))
                                    (if (gx#stx-null? _tl8501785040_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr85043_)
                                            (_E8501185023_))
                                        (_E8501185023_)))))
                              (_E8501185023_))))
                      (_E8501185023_)))))
          (_E8501085045_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind84967_)
        (let* ((_e8496884978_ _bind84967_)
               (_E8497084982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8496884978_)))
               (_E8496985004_
                (lambda ()
                  (if (gx#stx-pair? _e8496884978_)
                      (let ((_e8497184986_ (gx#syntax-e _e8496884978_)))
                        (let ((_hd8497284989_ (##car _e8497184986_))
                              (_tl8497384991_ (##cdr _e8497184986_)))
                          (let ((_hd84994_ _hd8497284989_))
                            (if (gx#stx-pair? _tl8497384991_)
                                (let ((_e8497484996_
                                       (gx#syntax-e _tl8497384991_)))
                                  (let ((_hd8497584999_ (##car _e8497484996_))
                                        (_tl8497685001_ (##cdr _e8497484996_)))
                                    (if (gx#stx-null? _tl8497685001_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd84994_)
                                            (_E8497084982_))
                                        (_E8497084982_))))
                                (_E8497084982_)))))
                      (_E8497084982_)))))
          (_E8496985004_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind84925_ _expr84926_)
        (let* ((_e8492784937_ _bind84925_)
               (_E8492984941_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8492784937_)))
               (_E8492884963_
                (lambda ()
                  (if (gx#stx-pair? _e8492784937_)
                      (let ((_e8493084945_ (gx#syntax-e _e8492784937_)))
                        (let ((_hd8493184948_ (##car _e8493084945_))
                              (_tl8493284950_ (##cdr _e8493084945_)))
                          (let ((_hd84953_ _hd8493184948_))
                            (if (gx#stx-pair? _tl8493284950_)
                                (let ((_e8493384955_
                                       (gx#syntax-e _tl8493284950_)))
                                  (let ((_hd8493484958_ (##car _e8493384955_))
                                        (_tl8493584960_ (##cdr _e8493384955_)))
                                    (if (gx#stx-null? _tl8493584960_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd84953_)
                                                  (cons _expr84926_ '()))
                                            (_E8492984941_))
                                        (_E8492984941_))))
                                (_E8492984941_)))))
                      (_E8492984941_)))))
          (_E8492884963_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx84879_)
        (let* ((_e8488084890_ _stx84879_)
               (_E8488284894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8488084890_)))
               (_E8488184921_
                (lambda ()
                  (if (gx#stx-pair? _e8488084890_)
                      (let ((_e8488384898_ (gx#syntax-e _e8488084890_)))
                        (let ((_hd8488484901_ (##car _e8488384898_))
                              (_tl8488584903_ (##cdr _e8488384898_)))
                          (if (gx#stx-pair? _tl8488584903_)
                              (let ((_e8488684906_
                                     (gx#syntax-e _tl8488584903_)))
                                (let ((_hd8488784909_ (##car _e8488684906_))
                                      (_tl8488884911_ (##cdr _e8488684906_)))
                                  (let* ((_hd84914_ _hd8488784909_)
                                         (_body84916_ _tl8488884911_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd84914_)
                                        (let ((_expanders84918_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd84914_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd84914_
                                              _expanders84918_)
                                             (gx#core-expand-local-block
                                              _stx84879_
                                              _body84916_))
                                           gx#current-expander-context
                                           (let ((__obj86300
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj86300)
                                             __obj86300)))
                                        (_E8488284894_)))))
                              (_E8488284894_))))
                      (_E8488284894_)))))
          (_E8488184921_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx84828_)
        (let* ((_e8482984839_ _stx84828_)
               (_E8483184843_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8482984839_)))
               (_E8483084875_
                (lambda ()
                  (if (gx#stx-pair? _e8482984839_)
                      (let ((_e8483284847_ (gx#syntax-e _e8482984839_)))
                        (let ((_hd8483384850_ (##car _e8483284847_))
                              (_tl8483484852_ (##cdr _e8483284847_)))
                          (if (gx#stx-pair? _tl8483484852_)
                              (let ((_e8483584855_
                                     (gx#syntax-e _tl8483484852_)))
                                (let ((_hd8483684858_ (##car _e8483584855_))
                                      (_tl8483784860_ (##cdr _e8483584855_)))
                                  (let* ((_hd84863_ _hd8483684858_)
                                         (_body84865_ _tl8483784860_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd84863_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd84863_
                                            (make-list__%
                                             (gx#stx-length _hd84863_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8486784870_
                                                     _g8486884872_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8486784870_
                                               _g8486884872_
                                               '#t))
                                            _hd84863_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd84863_))
                                           (gx#core-expand-local-block
                                            _stx84828_
                                            _body84865_))
                                         gx#current-expander-context
                                         (let ((__obj86301
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86301)
                                           __obj86301))
                                        (_E8483184843_)))))
                              (_E8483184843_))))
                      (_E8483184843_)))))
          (_E8483084875_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx84785_)
        (if (gx#stx-list? _stx84785_)
            (gx#stx-andmap
             (lambda (_bind84787_)
               (let* ((_e8478884798_ _bind84787_)
                      (_E8479084802_ (lambda () '#f))
                      (_E8478984824_
                       (lambda ()
                         (if (gx#stx-pair? _e8478884798_)
                             (let ((_e8479184806_ (gx#syntax-e _e8478884798_)))
                               (let ((_hd8479284809_ (##car _e8479184806_))
                                     (_tl8479384811_ (##cdr _e8479184806_)))
                                 (let ((_hd84814_ _hd8479284809_))
                                   (if (gx#stx-pair? _tl8479384811_)
                                       (let ((_e8479484816_
                                              (gx#syntax-e _tl8479384811_)))
                                         (let ((_hd8479584819_
                                                (##car _e8479484816_))
                                               (_tl8479684821_
                                                (##cdr _e8479484816_)))
                                           (if (gx#stx-null? _tl8479684821_)
                                               (if '#t
                                                   (gx#identifier? _hd84814_)
                                                   (_E8479084802_))
                                               (_E8479084802_))))
                                       (_E8479084802_)))))
                             (_E8479084802_)))))
                 (_E8478984824_)))
             _stx84785_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind84742_)
        (let* ((_e8474384753_ _bind84742_)
               (_E8474584757_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8474384753_)))
               (_E8474484781_
                (lambda ()
                  (if (gx#stx-pair? _e8474384753_)
                      (let ((_e8474684761_ (gx#syntax-e _e8474384753_)))
                        (let ((_hd8474784764_ (##car _e8474684761_))
                              (_tl8474884766_ (##cdr _e8474684761_)))
                          (if (gx#stx-pair? _tl8474884766_)
                              (let ((_e8474984769_
                                     (gx#syntax-e _tl8474884766_)))
                                (let ((_hd8475084772_ (##car _e8474984769_))
                                      (_tl8475184774_ (##cdr _e8474984769_)))
                                  (let ((_expr84777_ _hd8475084772_))
                                    (if (gx#stx-null? _tl8475184774_)
                                        (if '#t
                                            (let ((_g86310_
                                                   (gx#core-expand-expression+1
                                                    _expr84777_)))
                                              (begin
                                                (let ((_g86311_
                                                       (if (##values? _g86310_)
                                                           (##vector-length
                                                            _g86310_)
                                                           1)))
                                                  (if (not (##fx= _g86311_ 2))
                                                      (error "Context expects 2 values"
                                                             _g86311_)))
                                                (let ((_e84779_
                                                       (##vector-ref
                                                        _g86310_
                                                        1)))
                                                  _e84779_)))
                                            (_E8474584757_))
                                        (_E8474584757_)))))
                              (_E8474584757_))))
                      (_E8474584757_)))))
          (_E8474484781_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind84687_ _e84688_ _rebind?84689_)
        (let* ((_e8469084700_ _bind84687_)
               (_E8469284704_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8469084700_)))
               (_E8469184726_
                (lambda ()
                  (if (gx#stx-pair? _e8469084700_)
                      (let ((_e8469384708_ (gx#syntax-e _e8469084700_)))
                        (let ((_hd8469484711_ (##car _e8469384708_))
                              (_tl8469584713_ (##cdr _e8469384708_)))
                          (let ((_id84716_ _hd8469484711_))
                            (if (gx#stx-pair? _tl8469584713_)
                                (let ((_e8469684718_
                                       (gx#syntax-e _tl8469584713_)))
                                  (let ((_hd8469784721_ (##car _e8469684718_))
                                        (_tl8469884723_ (##cdr _e8469684718_)))
                                    (if (gx#stx-null? _tl8469884723_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id84716_
                                             _e84688_
                                             _rebind?84689_)
                                            (_E8469284704_))
                                        (_E8469284704_))))
                                (_E8469284704_)))))
                      (_E8469284704_)))))
          (_E8469184726_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind84733_ _e84734_)
        (let ((_rebind?84736_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind84733_
           _e84734_
           _rebind?84736_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g86313_
        (let ((_g86312_ (##length _g86313_)))
          (cond ((##fx= _g86312_ 2)
                 (apply (lambda (_bind84733_ _e84734_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind84733_
                           _e84734_))
                        _g86313_))
                ((##fx= _g86312_ 3)
                 (apply (lambda (_bind84738_ _e84739_ _rebind?84740_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind84738_
                           _e84739_
                           _rebind?84740_))
                        _g86313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g86313_))))))
    (define gx#core-expand-expression%
      (lambda (_stx84645_)
        (let* ((_e8464684656_ _stx84645_)
               (_E8464884660_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8464684656_)))
               (_E8464784682_
                (lambda ()
                  (if (gx#stx-pair? _e8464684656_)
                      (let ((_e8464984664_ (gx#syntax-e _e8464684656_)))
                        (let ((_hd8465084667_ (##car _e8464984664_))
                              (_tl8465184669_ (##cdr _e8464984664_)))
                          (if (gx#stx-pair? _tl8465184669_)
                              (let ((_e8465284672_
                                     (gx#syntax-e _tl8465184669_)))
                                (let ((_hd8465384675_ (##car _e8465284672_))
                                      (_tl8465484677_ (##cdr _e8465284672_)))
                                  (let ((_expr84680_ _hd8465384675_))
                                    (if (gx#stx-null? _tl8465484677_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr84680_)
                                            (_E8464884660_))
                                        (_E8464884660_)))))
                              (_E8464884660_))))
                      (_E8464884660_)))))
          (_E8464784682_))))
    (define gx#core-expand-quote%
      (lambda (_stx84604_)
        (let* ((_e8460584615_ _stx84604_)
               (_E8460784619_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8460584615_)))
               (_E8460684641_
                (lambda ()
                  (if (gx#stx-pair? _e8460584615_)
                      (let ((_e8460884623_ (gx#syntax-e _e8460584615_)))
                        (let ((_hd8460984626_ (##car _e8460884623_))
                              (_tl8461084628_ (##cdr _e8460884623_)))
                          (if (gx#stx-pair? _tl8461084628_)
                              (let ((_e8461184631_
                                     (gx#syntax-e _tl8461084628_)))
                                (let ((_hd8461284634_ (##car _e8461184631_))
                                      (_tl8461384636_ (##cdr _e8461184631_)))
                                  (let ((_e84639_ _hd8461284634_))
                                    (if (gx#stx-null? _tl8461384636_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e84639_)
                                                         '()))
                                             (gx#stx-source _stx84604_))
                                            (_E8460784619_))
                                        (_E8460784619_)))))
                              (_E8460784619_))))
                      (_E8460784619_)))))
          (_E8460684641_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx84563_)
        (let* ((_e8456484574_ _stx84563_)
               (_E8456684578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8456484574_)))
               (_E8456584600_
                (lambda ()
                  (if (gx#stx-pair? _e8456484574_)
                      (let ((_e8456784582_ (gx#syntax-e _e8456484574_)))
                        (let ((_hd8456884585_ (##car _e8456784582_))
                              (_tl8456984587_ (##cdr _e8456784582_)))
                          (if (gx#stx-pair? _tl8456984587_)
                              (let ((_e8457084590_
                                     (gx#syntax-e _tl8456984587_)))
                                (let ((_hd8457184593_ (##car _e8457084590_))
                                      (_tl8457284595_ (##cdr _e8457084590_)))
                                  (let ((_e84598_ _hd8457184593_))
                                    (if (gx#stx-null? _tl8457284595_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e84598_)
                                                         '()))
                                             (gx#stx-source _stx84563_))
                                            (_E8456684578_))
                                        (_E8456684578_)))))
                              (_E8456684578_))))
                      (_E8456684578_)))))
          (_E8456584600_))))
    (define gx#core-expand-call%
      (lambda (_stx84520_)
        (let* ((_e8452184531_ _stx84520_)
               (_E8452384535_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8452184531_)))
               (_E8452284559_
                (lambda ()
                  (if (gx#stx-pair? _e8452184531_)
                      (let ((_e8452484539_ (gx#syntax-e _e8452184531_)))
                        (let ((_hd8452584542_ (##car _e8452484539_))
                              (_tl8452684544_ (##cdr _e8452484539_)))
                          (if (gx#stx-pair? _tl8452684544_)
                              (let ((_e8452784547_
                                     (gx#syntax-e _tl8452684544_)))
                                (let ((_hd8452884550_ (##car _e8452784547_))
                                      (_tl8452984552_ (##cdr _e8452784547_)))
                                  (let* ((_rator84555_ _hd8452884550_)
                                         (_args84557_ _tl8452984552_))
                                    (if (gx#stx-list? _args84557_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator84555_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args84557_))
                                         (gx#stx-source _stx84520_))
                                        (_E8452384535_)))))
                              (_E8452384535_))))
                      (_E8452384535_)))))
          (_E8452284559_))))
    (define gx#core-expand-if%
      (lambda (_stx84453_)
        (let* ((_e8445484470_ _stx84453_)
               (_E8445684474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8445484470_)))
               (_E8445584516_
                (lambda ()
                  (if (gx#stx-pair? _e8445484470_)
                      (let ((_e8445784478_ (gx#syntax-e _e8445484470_)))
                        (let ((_hd8445884481_ (##car _e8445784478_))
                              (_tl8445984483_ (##cdr _e8445784478_)))
                          (if (gx#stx-pair? _tl8445984483_)
                              (let ((_e8446084486_
                                     (gx#syntax-e _tl8445984483_)))
                                (let ((_hd8446184489_ (##car _e8446084486_))
                                      (_tl8446284491_ (##cdr _e8446084486_)))
                                  (let ((_test84494_ _hd8446184489_))
                                    (if (gx#stx-pair? _tl8446284491_)
                                        (let ((_e8446384496_
                                               (gx#syntax-e _tl8446284491_)))
                                          (let ((_hd8446484499_
                                                 (##car _e8446384496_))
                                                (_tl8446584501_
                                                 (##cdr _e8446384496_)))
                                            (let ((_K84504_ _hd8446484499_))
                                              (if (gx#stx-pair? _tl8446584501_)
                                                  (let ((_e8446684506_
                                                         (gx#syntax-e
                                                          _tl8446584501_)))
                                                    (let ((_hd8446784509_
                                                           (##car _e8446684506_))
                                                          (_tl8446884511_
                                                           (##cdr _e8446684506_)))
                                                      (let ((_E84514_
                                                             _hd8446784509_))
                                                        (if (gx#stx-null?
                                                             _tl8446884511_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test84494_)
                                     (cons (gx#core-expand-expression _K84504_)
                                           (cons (gx#core-expand-expression
                                                  _E84514_)
                                                 '()))))
                         (gx#stx-source _stx84453_))
                        (_E8445684474_))
                    (_E8445684474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8445684474_)))))
                                        (_E8445684474_)))))
                              (_E8445684474_))))
                      (_E8445684474_)))))
          (_E8445584516_))))
    (define gx#core-expand-ref%
      (lambda (_stx84412_)
        (let* ((_e8441384423_ _stx84412_)
               (_E8441584427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8441384423_)))
               (_E8441484449_
                (lambda ()
                  (if (gx#stx-pair? _e8441384423_)
                      (let ((_e8441684431_ (gx#syntax-e _e8441384423_)))
                        (let ((_hd8441784434_ (##car _e8441684431_))
                              (_tl8441884436_ (##cdr _e8441684431_)))
                          (if (gx#stx-pair? _tl8441884436_)
                              (let ((_e8441984439_
                                     (gx#syntax-e _tl8441884436_)))
                                (let ((_hd8442084442_ (##car _e8441984439_))
                                      (_tl8442184444_ (##cdr _e8441984439_)))
                                  (let ((_id84447_ _hd8442084442_))
                                    (if (gx#stx-null? _tl8442184444_)
                                        (if (gx#identifier? _id84447_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id84447_
                                                          _stx84412_)
                                                         '()))
                                             (gx#stx-source _stx84412_))
                                            (_E8441584427_))
                                        (_E8441584427_)))))
                              (_E8441584427_))))
                      (_E8441584427_)))))
          (_E8441484449_))))
    (define gx#core-expand-setq%
      (lambda (_stx84358_)
        (let* ((_e8435984372_ _stx84358_)
               (_E8436184376_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8435984372_)))
               (_E8436084408_
                (lambda ()
                  (if (gx#stx-pair? _e8435984372_)
                      (let ((_e8436284380_ (gx#syntax-e _e8435984372_)))
                        (let ((_hd8436384383_ (##car _e8436284380_))
                              (_tl8436484385_ (##cdr _e8436284380_)))
                          (if (gx#stx-pair? _tl8436484385_)
                              (let ((_e8436584388_
                                     (gx#syntax-e _tl8436484385_)))
                                (let ((_hd8436684391_ (##car _e8436584388_))
                                      (_tl8436784393_ (##cdr _e8436584388_)))
                                  (let ((_id84396_ _hd8436684391_))
                                    (if (gx#stx-pair? _tl8436784393_)
                                        (let ((_e8436884398_
                                               (gx#syntax-e _tl8436784393_)))
                                          (let ((_hd8436984401_
                                                 (##car _e8436884398_))
                                                (_tl8437084403_
                                                 (##cdr _e8436884398_)))
                                            (let ((_expr84406_ _hd8436984401_))
                                              (if (gx#stx-null? _tl8437084403_)
                                                  (if (gx#identifier?
                                                       _id84396_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id84396_
                            _stx84358_)
                           (cons (gx#core-expand-expression _expr84406_) '())))
               (gx#stx-source _stx84358_))
              (_E8436184376_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8436184376_)))))
                                        (_E8436184376_)))))
                              (_E8436184376_))))
                      (_E8436184376_)))))
          (_E8436084408_))))
    (define gx#macro-expand-extern
      (lambda (_stx84206_)
        (letrec ((_generate84208_
                  (lambda (_body84238_)
                    (let _lp84240_ ((_rest84242_ _body84238_)
                                    (_ns84243_ (gx#core-context-namespace__0))
                                    (_r84244_ '()))
                      (let* ((_e8424584260_ _rest84242_)
                             (_E8425884264_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8424584260_)))
                             (_E8425484268_
                              (lambda ()
                                (if (gx#stx-null? _e8424584260_)
                                    (if '#t (reverse _r84244_) (_E8425884264_))
                                    (_E8425884264_))))
                             (_E8424784325_
                              (lambda ()
                                (if (gx#stx-pair? _e8424584260_)
                                    (let ((_e8425584272_
                                           (gx#syntax-e _e8424584260_)))
                                      (let ((_hd8425684275_
                                             (##car _e8425584272_))
                                            (_tl8425784277_
                                             (##cdr _e8425584272_)))
                                        (let* ((_hd84280_ _hd8425684275_)
                                               (_rest84282_ _tl8425784277_))
                                          (if '#t
                                              (if (gx#identifier? _hd84280_)
                                                  (_lp84240_
                                                   _rest84282_
                                                   _ns84243_
                                                   (cons (cons _hd84280_
                                                               (cons (if _ns84243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd84280_
                                  _ns84243_
                                  '"#"
                                  _hd84280_)
                                 _hd84280_)
                             '()))
                 _r84244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8428384293_
                                                          _hd84280_)
                                                         (_E8428584297_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8428384293_)))
                                                         (_E8428484321_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8428384293_)
                        (let ((_e8428684301_ (gx#syntax-e _e8428384293_)))
                          (let ((_hd8428784304_ (##car _e8428684301_))
                                (_tl8428884306_ (##cdr _e8428684301_)))
                            (let ((_id84309_ _hd8428784304_))
                              (if (gx#stx-pair? _tl8428884306_)
                                  (let ((_e8428984311_
                                         (gx#syntax-e _tl8428884306_)))
                                    (let ((_hd8429084314_
                                           (##car _e8428984311_))
                                          (_tl8429184316_
                                           (##cdr _e8428984311_)))
                                      (let ((_eid84319_ _hd8429084314_))
                                        (if (gx#stx-null? _tl8429184316_)
                                            (if (and (gx#identifier? _id84309_)
                                                     (gx#identifier?
                                                      _eid84319_))
                                                (_lp84240_
                                                 _rest84282_
                                                 _ns84243_
                                                 (cons (cons _id84309_
                                                             (cons _eid84319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r84244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8428584297_))
                                            (_E8428584297_)))))
                                  (_E8428584297_)))))
                        (_E8428584297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8428484321_)))
                                              (_E8425484268_)))))
                                    (_E8425484268_))))
                             (_E8424684354_
                              (lambda ()
                                (if (gx#stx-pair? _e8424584260_)
                                    (let ((_e8424884329_
                                           (gx#syntax-e _e8424584260_)))
                                      (let ((_hd8424984332_
                                             (##car _e8424884329_))
                                            (_tl8425084334_
                                             (##cdr _e8424884329_)))
                                        (if (eq? (gx#stx-e _hd8424984332_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8425084334_)
                                                (let ((_e8425184337_
                                                       (gx#syntax-e
                                                        _tl8425084334_)))
                                                  (let ((_hd8425284340_
                                                         (##car _e8425184337_))
                                                        (_tl8425384342_
                                                         (##cdr _e8425184337_)))
                                                    (let* ((_ns84345_
                                                            _hd8425284340_)
                                                           (_rest84347_
                                                            _tl8425384342_))
                                                      (if '#t
                                                          (let ((_ns84352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns84345_)
                             (symbol->string (gx#stx-e _ns84345_))
                             (if (or (gx#stx-string? _ns84345_)
                                     (gx#stx-false? _ns84345_))
                                 (gx#stx-e _ns84345_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx84206_
                                  _ns84345_)))))
                    (_lp84240_ _rest84347_ _ns84352_ _r84244_))
                  (_E8424784325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8424784325_))
                                            (_E8424784325_))))
                                    (_E8424784325_)))))
                        (_E8424684354_))))))
          (let* ((_e8420984216_ _stx84206_)
                 (_E8421184220_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8420984216_)))
                 (_E8421084234_
                  (lambda ()
                    (if (gx#stx-pair? _e8420984216_)
                        (let ((_e8421284224_ (gx#syntax-e _e8420984216_)))
                          (let ((_hd8421384227_ (##car _e8421284224_))
                                (_tl8421484229_ (##cdr _e8421284224_)))
                            (let ((_body84232_ _tl8421484229_))
                              (if (gx#stx-list? _body84232_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate84208_ _body84232_))
                                  (_E8421184220_)))))
                        (_E8421184220_)))))
            (_E8421084234_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx84152_)
        (let* ((_e8415384166_ _stx84152_)
               (_E8415584170_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8415384166_)))
               (_E8415484202_
                (lambda ()
                  (if (gx#stx-pair? _e8415384166_)
                      (let ((_e8415684174_ (gx#syntax-e _e8415384166_)))
                        (let ((_hd8415784177_ (##car _e8415684174_))
                              (_tl8415884179_ (##cdr _e8415684174_)))
                          (if (gx#stx-pair? _tl8415884179_)
                              (let ((_e8415984182_
                                     (gx#syntax-e _tl8415884179_)))
                                (let ((_hd8416084185_ (##car _e8415984182_))
                                      (_tl8416184187_ (##cdr _e8415984182_)))
                                  (let ((_hd84190_ _hd8416084185_))
                                    (if (gx#stx-pair? _tl8416184187_)
                                        (let ((_e8416284192_
                                               (gx#syntax-e _tl8416184187_)))
                                          (let ((_hd8416384195_
                                                 (##car _e8416284192_))
                                                (_tl8416484197_
                                                 (##cdr _e8416284192_)))
                                            (let ((_expr84200_ _hd8416384195_))
                                              (if (gx#stx-null? _tl8416484197_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd84190_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd84190_)
                          (cons _expr84200_ '())))
              (_E8415584170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8415584170_)))))
                                        (_E8415584170_)))))
                              (_E8415584170_))))
                      (_E8415584170_)))))
          (_E8415484202_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx84098_)
        (let* ((_e8409984112_ _stx84098_)
               (_E8410184116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8409984112_)))
               (_E8410084148_
                (lambda ()
                  (if (gx#stx-pair? _e8409984112_)
                      (let ((_e8410284120_ (gx#syntax-e _e8409984112_)))
                        (let ((_hd8410384123_ (##car _e8410284120_))
                              (_tl8410484125_ (##cdr _e8410284120_)))
                          (if (gx#stx-pair? _tl8410484125_)
                              (let ((_e8410584128_
                                     (gx#syntax-e _tl8410484125_)))
                                (let ((_hd8410684131_ (##car _e8410584128_))
                                      (_tl8410784133_ (##cdr _e8410584128_)))
                                  (let ((_hd84136_ _hd8410684131_))
                                    (if (gx#stx-pair? _tl8410784133_)
                                        (let ((_e8410884138_
                                               (gx#syntax-e _tl8410784133_)))
                                          (let ((_hd8410984141_
                                                 (##car _e8410884138_))
                                                (_tl8411084143_
                                                 (##cdr _e8410884138_)))
                                            (let ((_expr84146_ _hd8410984141_))
                                              (if (gx#stx-null? _tl8411084143_)
                                                  (if (gx#identifier?
                                                       _hd84136_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd84136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr84146_ '())))
              (_E8410184116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8410184116_)))))
                                        (_E8410184116_)))))
                              (_E8410184116_))))
                      (_E8410184116_)))))
          (_E8410084148_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx84044_)
        (let* ((_e8404584058_ _stx84044_)
               (_E8404784062_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8404584058_)))
               (_E8404684094_
                (lambda ()
                  (if (gx#stx-pair? _e8404584058_)
                      (let ((_e8404884066_ (gx#syntax-e _e8404584058_)))
                        (let ((_hd8404984069_ (##car _e8404884066_))
                              (_tl8405084071_ (##cdr _e8404884066_)))
                          (if (gx#stx-pair? _tl8405084071_)
                              (let ((_e8405184074_
                                     (gx#syntax-e _tl8405084071_)))
                                (let ((_hd8405284077_ (##car _e8405184074_))
                                      (_tl8405384079_ (##cdr _e8405184074_)))
                                  (let ((_id84082_ _hd8405284077_))
                                    (if (gx#stx-pair? _tl8405384079_)
                                        (let ((_e8405484084_
                                               (gx#syntax-e _tl8405384079_)))
                                          (let ((_hd8405584087_
                                                 (##car _e8405484084_))
                                                (_tl8405684089_
                                                 (##cdr _e8405484084_)))
                                            (let ((_alias-id84092_
                                                   _hd8405584087_))
                                              (if (gx#stx-null? _tl8405684089_)
                                                  (if (and (gx#identifier?
                                                            _id84082_)
                                                           (gx#identifier?
                                                            _alias-id84092_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id84082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id84092_ '())))
              (_E8404784062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8404784062_)))))
                                        (_E8404784062_)))))
                              (_E8404784062_))))
                      (_E8404784062_)))))
          (_E8404684094_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx84001_)
        (let* ((_e8400284012_ _stx84001_)
               (_E8400484016_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8400284012_)))
               (_E8400384040_
                (lambda ()
                  (if (gx#stx-pair? _e8400284012_)
                      (let ((_e8400584020_ (gx#syntax-e _e8400284012_)))
                        (let ((_hd8400684023_ (##car _e8400584020_))
                              (_tl8400784025_ (##cdr _e8400584020_)))
                          (if (gx#stx-pair? _tl8400784025_)
                              (let ((_e8400884028_
                                     (gx#syntax-e _tl8400784025_)))
                                (let ((_hd8400984031_ (##car _e8400884028_))
                                      (_tl8401084033_ (##cdr _e8400884028_)))
                                  (let* ((_hd84036_ _hd8400984031_)
                                         (_body84038_ _tl8401084033_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd84036_)
                                             (gx#stx-list? _body84038_)
                                             (not (gx#stx-null? _body84038_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd84036_)
                                         _body84038_)
                                        (_E8400484016_)))))
                              (_E8400484016_))))
                      (_E8400484016_)))))
          (_E8400384040_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx83937_)
        (letrec ((_generate83939_
                  (lambda (_clause83969_)
                    (let* ((_e8397083977_ _clause83969_)
                           (_E8397283981_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx83937_
                               _clause83969_)))
                           (_E8397183997_
                            (lambda ()
                              (if (gx#stx-pair? _e8397083977_)
                                  (let ((_e8397383985_
                                         (gx#syntax-e _e8397083977_)))
                                    (let ((_hd8397483988_
                                           (##car _e8397383985_))
                                          (_tl8397583990_
                                           (##cdr _e8397383985_)))
                                      (let* ((_hd83993_ _hd8397483988_)
                                             (_body83995_ _tl8397583990_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd83993_)
                                                 (gx#stx-list? _body83995_)
                                                 (not (gx#stx-null?
                                                       _body83995_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd83993_)
                                                   _body83995_)
                                             (gx#stx-source _clause83969_))
                                            (_E8397283981_)))))
                                  (_E8397283981_)))))
                      (_E8397183997_)))))
          (let* ((_e8394083947_ _stx83937_)
                 (_E8394283951_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8394083947_)))
                 (_E8394183965_
                  (lambda ()
                    (if (gx#stx-pair? _e8394083947_)
                        (let ((_e8394383955_ (gx#syntax-e _e8394083947_)))
                          (let ((_hd8394483958_ (##car _e8394383955_))
                                (_tl8394583960_ (##cdr _e8394383955_)))
                            (let ((_clauses83963_ _tl8394583960_))
                              (if (gx#stx-list? _clauses83963_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate83939_
                                    _clauses83963_))
                                  (_E8394283951_)))))
                        (_E8394283951_)))))
            (_E8394183965_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx83838_ _form83839_)
        (letrec ((_generate83841_
                  (lambda (_bind83884_)
                    (let* ((_e8388583895_ _bind83884_)
                           (_E8388783899_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx83838_
                               _bind83884_)))
                           (_E8388683923_
                            (lambda ()
                              (if (gx#stx-pair? _e8388583895_)
                                  (let ((_e8388883903_
                                         (gx#syntax-e _e8388583895_)))
                                    (let ((_hd8388983906_
                                           (##car _e8388883903_))
                                          (_tl8389083908_
                                           (##cdr _e8388883903_)))
                                      (let ((_ids83911_ _hd8388983906_))
                                        (if (gx#stx-pair? _tl8389083908_)
                                            (let ((_e8389183913_
                                                   (gx#syntax-e
                                                    _tl8389083908_)))
                                              (let ((_hd8389283916_
                                                     (##car _e8389183913_))
                                                    (_tl8389383918_
                                                     (##cdr _e8389183913_)))
                                                (let ((_expr83921_
                                                       _hd8389283916_))
                                                  (if (gx#stx-null?
                                                       _tl8389383918_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids83911_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids83911_)
                        (cons _expr83921_ '()))
                  (_E8388783899_))
              (_E8388783899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8388783899_)))))
                                  (_E8388783899_)))))
                      (_E8388683923_)))))
          (let* ((_e8384283852_ _stx83838_)
                 (_E8384483856_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8384283852_)))
                 (_E8384383880_
                  (lambda ()
                    (if (gx#stx-pair? _e8384283852_)
                        (let ((_e8384583860_ (gx#syntax-e _e8384283852_)))
                          (let ((_hd8384683863_ (##car _e8384583860_))
                                (_tl8384783865_ (##cdr _e8384583860_)))
                            (if (gx#stx-pair? _tl8384783865_)
                                (let ((_e8384883868_
                                       (gx#syntax-e _tl8384783865_)))
                                  (let ((_hd8384983871_ (##car _e8384883868_))
                                        (_tl8385083873_ (##cdr _e8384883868_)))
                                    (let* ((_hd83876_ _hd8384983871_)
                                           (_body83878_ _tl8385083873_))
                                      (if (and (gx#stx-list? _hd83876_)
                                               (gx#stx-list? _body83878_)
                                               (not (gx#stx-null?
                                                     _body83878_)))
                                          (gx#core-cons*
                                           _form83839_
                                           (gx#stx-map1
                                            _generate83841_
                                            _hd83876_)
                                           _body83878_)
                                          (_E8384483856_)))))
                                (_E8384483856_))))
                        (_E8384483856_)))))
            (_E8384383880_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx83930_)
        (let ((_form83932_ '%#let-values))
          (gx#macro-expand-let-values__% _stx83930_ _form83932_))))
    (define gx#macro-expand-let-values
      (lambda _g86315_
        (let ((_g86314_ (##length _g86315_)))
          (cond ((##fx= _g86314_ 1)
                 (apply (lambda (_stx83930_)
                          (gx#macro-expand-let-values__0 _stx83930_))
                        _g86315_))
                ((##fx= _g86314_ 2)
                 (apply (lambda (_stx83934_ _form83935_)
                          (gx#macro-expand-let-values__%
                           _stx83934_
                           _form83935_))
                        _g86315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g86315_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx83835_)
        (gx#macro-expand-let-values__% _stx83835_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx83833_)
        (gx#macro-expand-let-values__% _stx83833_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx83724_)
        (let* ((_e8372583751_ _stx83724_)
               (_E8373783755_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8372583751_)))
               (_E8372783797_
                (lambda ()
                  (if (gx#stx-pair? _e8372583751_)
                      (let ((_e8373883759_ (gx#syntax-e _e8372583751_)))
                        (let ((_hd8373983762_ (##car _e8373883759_))
                              (_tl8374083764_ (##cdr _e8373883759_)))
                          (if (gx#stx-pair? _tl8374083764_)
                              (let ((_e8374183767_
                                     (gx#syntax-e _tl8374083764_)))
                                (let ((_hd8374283770_ (##car _e8374183767_))
                                      (_tl8374383772_ (##cdr _e8374183767_)))
                                  (let ((_test83775_ _hd8374283770_))
                                    (if (gx#stx-pair? _tl8374383772_)
                                        (let ((_e8374483777_
                                               (gx#syntax-e _tl8374383772_)))
                                          (let ((_hd8374583780_
                                                 (##car _e8374483777_))
                                                (_tl8374683782_
                                                 (##cdr _e8374483777_)))
                                            (let ((_K83785_ _hd8374583780_))
                                              (if (gx#stx-pair? _tl8374683782_)
                                                  (let ((_e8374783787_
                                                         (gx#syntax-e
                                                          _tl8374683782_)))
                                                    (let ((_hd8374883790_
                                                           (##car _e8374783787_))
                                                          (_tl8374983792_
                                                           (##cdr _e8374783787_)))
                                                      (let ((_E83795_
                                                             _hd8374883790_))
                                                        (if (gx#stx-null?
                                                             _tl8374983792_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test83775_
                         _K83785_
                         _E83795_)
                        (_E8373783755_))
                    (_E8373783755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8373783755_)))))
                                        (_E8373783755_)))))
                              (_E8373783755_))))
                      (_E8373783755_))))
               (_E8372683829_
                (lambda ()
                  (if (gx#stx-pair? _e8372583751_)
                      (let ((_e8372883801_ (gx#syntax-e _e8372583751_)))
                        (let ((_hd8372983804_ (##car _e8372883801_))
                              (_tl8373083806_ (##cdr _e8372883801_)))
                          (if (gx#stx-pair? _tl8373083806_)
                              (let ((_e8373183809_
                                     (gx#syntax-e _tl8373083806_)))
                                (let ((_hd8373283812_ (##car _e8373183809_))
                                      (_tl8373383814_ (##cdr _e8373183809_)))
                                  (let ((_test83817_ _hd8373283812_))
                                    (if (gx#stx-pair? _tl8373383814_)
                                        (let ((_e8373483819_
                                               (gx#syntax-e _tl8373383814_)))
                                          (let ((_hd8373583822_
                                                 (##car _e8373483819_))
                                                (_tl8373683824_
                                                 (##cdr _e8373483819_)))
                                            (let ((_K83827_ _hd8373583822_))
                                              (if (gx#stx-null? _tl8373683824_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test83817_
                                                       _K83827_
                                                       '#!void)
                                                      (_E8372783797_))
                                                  (_E8372783797_)))))
                                        (_E8372783797_)))))
                              (_E8372783797_))))
                      (_E8372783797_)))))
          (_E8372683829_))))
    (define gx#free-identifier=?
      (lambda (_xid83712_ _yid83713_)
        (let ((_xe83715_ (gx#resolve-identifier__0 _xid83712_))
              (_ye83716_ (gx#resolve-identifier__0 _yid83713_)))
          (if (and _xe83715_ _ye83716_)
              (let ((_$e83718_ (eq? _xe83715_ _ye83716_)))
                (if _$e83718_
                    _$e83718_
                    (if (##structure-instance-of? _xe83715_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye83716_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe83715_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye83716_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe83715_ _ye83716_)
                  '#f
                  (gx#stx-eq? _xid83712_ _yid83713_))))))
    (define gx#bound-identifier=?
      (lambda (_xid83696_ _yid83697_)
        (letrec ((_context83699_
                  (lambda (_e83710_)
                    (if (##structure-direct-instance-of?
                         _e83710_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e83710_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks83700_
                  (lambda (_e83708_)
                    (if (symbol? _e83708_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e83708_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e83708_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e83708_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap83701_
                  (lambda (_e83706_)
                    (if (symbol? _e83706_)
                        _e83706_
                        (gx#syntax-local-unwrap _e83706_)))))
          (let ((_x83703_ (_unwrap83701_ _xid83696_))
                (_y83704_ (_unwrap83701_ _yid83697_)))
            (if (gx#stx-eq? _x83703_ _y83704_)
                (if (eq? (_context83699_ _x83703_) (_context83699_ _y83704_))
                    (equal? (_marks83700_ _x83703_) (_marks83700_ _y83704_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx83694_)
        (if (gx#identifier? _stx83694_)
            (gx#core-identifier=? _stx83694_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx83692_)
        (if (gx#identifier? _stx83692_)
            (gx#core-identifier=? _stx83692_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x83690_)
        (if (gx#identifier? _x83690_)
            (if (not (gx#underscore? _x83690_)) _x83690_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx83636_ _where83637_)
        (let _lp83639_ ((_rest83641_ (gx#syntax->list _stx83636_)))
          (let* ((_rest8364283650_ _rest83641_)
                 (_else8364483658_ (lambda () '#t))
                 (_K8364683668_
                  (lambda (_rest83661_ _hd83662_)
                    (if (not (gx#identifier? _hd83662_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where83637_
                         _hd83662_)
                        (if (find (lambda (_g8366383665_)
                                    (gx#bound-identifier=?
                                     _g8366383665_
                                     _hd83662_))
                                  _rest83661_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where83637_
                             _hd83662_)
                            (_lp83639_ _rest83661_))))))
            (if (##pair? _rest8364283650_)
                (let ((_hd8364783671_ (##car _rest8364283650_))
                      (_tl8364883673_ (##cdr _rest8364283650_)))
                  (let* ((_hd83676_ _hd8364783671_)
                         (_rest83678_ _tl8364883673_))
                    (_K8364683668_ _rest83678_ _hd83676_)))
                (_else8364483658_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx83683_)
        (let ((_where83685_ _stx83683_))
          (gx#check-duplicate-identifiers__% _stx83683_ _where83685_))))
    (define gx#check-duplicate-identifiers
      (lambda _g86317_
        (let ((_g86316_ (##length _g86317_)))
          (cond ((##fx= _g86316_ 1)
                 (apply (lambda (_stx83683_)
                          (gx#check-duplicate-identifiers__0 _stx83683_))
                        _g86317_))
                ((##fx= _g86316_ 2)
                 (apply (lambda (_stx83687_ _where83688_)
                          (gx#check-duplicate-identifiers__%
                           _stx83687_
                           _where83688_))
                        _g86317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g86317_))))))
    (define gx#core-bind-values?
      (lambda (_stx83628_)
        (gx#stx-andmap
         (lambda (_x83630_)
           (let ((_$e83632_ (gx#identifier? _x83630_)))
             (if _$e83632_ _$e83632_ (gx#stx-false? _x83630_))))
         _stx83628_)))
    (define gx#core-bind-values!__%
      (lambda (_stx83592_ _rebind?83593_ _phi83594_ _ctx83595_)
        (gx#stx-for-each1
         (lambda (_id83597_)
           (if (gx#identifier? _id83597_)
               (gx#core-bind-runtime!__%
                _id83597_
                _rebind?83593_
                _phi83594_
                _ctx83595_)
               '#!void))
         _stx83592_)))
    (define gx#core-bind-values!__0
      (lambda (_stx83602_)
        (let* ((_rebind?83604_ '#f)
               (_phi83606_ (gx#current-expander-phi))
               (_ctx83608_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83602_
           _rebind?83604_
           _phi83606_
           _ctx83608_))))
    (define gx#core-bind-values!__1
      (lambda (_stx83610_ _rebind?83611_)
        (let* ((_phi83613_ (gx#current-expander-phi))
               (_ctx83615_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83610_
           _rebind?83611_
           _phi83613_
           _ctx83615_))))
    (define gx#core-bind-values!__2
      (lambda (_stx83617_ _rebind?83618_ _phi83619_)
        (let ((_ctx83621_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83617_
           _rebind?83618_
           _phi83619_
           _ctx83621_))))
    (define gx#core-bind-values!
      (lambda _g86319_
        (let ((_g86318_ (##length _g86319_)))
          (cond ((##fx= _g86318_ 1)
                 (apply (lambda (_stx83602_)
                          (gx#core-bind-values!__0 _stx83602_))
                        _g86319_))
                ((##fx= _g86318_ 2)
                 (apply (lambda (_stx83610_ _rebind?83611_)
                          (gx#core-bind-values!__1 _stx83610_ _rebind?83611_))
                        _g86319_))
                ((##fx= _g86318_ 3)
                 (apply (lambda (_stx83617_ _rebind?83618_ _phi83619_)
                          (gx#core-bind-values!__2
                           _stx83617_
                           _rebind?83618_
                           _phi83619_))
                        _g86319_))
                ((##fx= _g86318_ 4)
                 (apply (lambda (_stx83623_
                                 _rebind?83624_
                                 _phi83625_
                                 _ctx83626_)
                          (gx#core-bind-values!__%
                           _stx83623_
                           _rebind?83624_
                           _phi83625_
                           _ctx83626_))
                        _g86319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g86319_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx83587_)
        (gx#stx-map1
         (lambda (_x83589_)
           (if (gx#identifier? _x83589_)
               (gx#core-quote-syntax__0 _x83589_)
               '#f))
         _stx83587_)))
    (define gx#core-runtime-ref?
      (lambda (_stx83580_)
        (if (gx#identifier? _stx83580_)
            (let* ((_bind83582_ (gx#resolve-identifier__0 _stx83580_))
                   (_$e83584_ (not _bind83582_)))
              (if _$e83584_
                  _$e83584_
                  (##structure-instance-of?
                   _bind83582_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id83572_ _form83573_)
        (let ((_bind83575_ (gx#resolve-identifier__0 _id83572_)))
          (if (##structure-instance-of? _bind83575_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id83572_)
              (if (not _bind83575_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id83572_)))
                      (gx#core-quote-syntax__0 _id83572_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form83573_
                       _id83572_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form83573_
                   _id83572_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id83531_ _rebind?83532_ _phi83533_ _ctx83534_)
        (let* ((_key83536_ (gx#core-identifier-key _id83531_))
               (_eid83538_
                (gx#make-binding-id__% _key83536_ '#f _phi83533_ _ctx83534_))
               (_bind83540_
                (if (##structure-instance-of? _ctx83534_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid83538_
                     _key83536_
                     _phi83533_
                     _ctx83534_)
                    (if (##structure-instance-of?
                         _ctx83534_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid83538_
                         _key83536_
                         _phi83533_)
                        (if (##structure-instance-of?
                             _ctx83534_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid83538_
                             _key83536_
                             _phi83533_)
                            (##structure
                             gx#runtime-binding::t
                             _eid83538_
                             _key83536_
                             _phi83533_))))))
          (gx#bind-identifier!__%
           _id83531_
           _bind83540_
           _rebind?83532_
           _phi83533_
           _ctx83534_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id83546_)
        (let* ((_rebind?83548_ '#f)
               (_phi83550_ (gx#current-expander-phi))
               (_ctx83552_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83546_
           _rebind?83548_
           _phi83550_
           _ctx83552_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id83554_ _rebind?83555_)
        (let* ((_phi83557_ (gx#current-expander-phi))
               (_ctx83559_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83554_
           _rebind?83555_
           _phi83557_
           _ctx83559_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id83561_ _rebind?83562_ _phi83563_)
        (let ((_ctx83565_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83561_
           _rebind?83562_
           _phi83563_
           _ctx83565_))))
    (define gx#core-bind-runtime!
      (lambda _g86321_
        (let ((_g86320_ (##length _g86321_)))
          (cond ((##fx= _g86320_ 1)
                 (apply (lambda (_id83546_)
                          (gx#core-bind-runtime!__0 _id83546_))
                        _g86321_))
                ((##fx= _g86320_ 2)
                 (apply (lambda (_id83554_ _rebind?83555_)
                          (gx#core-bind-runtime!__1 _id83554_ _rebind?83555_))
                        _g86321_))
                ((##fx= _g86320_ 3)
                 (apply (lambda (_id83561_ _rebind?83562_ _phi83563_)
                          (gx#core-bind-runtime!__2
                           _id83561_
                           _rebind?83562_
                           _phi83563_))
                        _g86321_))
                ((##fx= _g86320_ 4)
                 (apply (lambda (_id83567_
                                 _rebind?83568_
                                 _phi83569_
                                 _ctx83570_)
                          (gx#core-bind-runtime!__%
                           _id83567_
                           _rebind?83568_
                           _phi83569_
                           _ctx83570_))
                        _g86321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g86321_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id83486_ _eid83487_ _rebind?83488_ _phi83489_ _ctx83490_)
        (let* ((_key83492_ (gx#core-identifier-key _id83486_))
               (_bind83494_
                (if (##structure-instance-of? _ctx83490_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid83487_
                     _key83492_
                     _phi83489_
                     _ctx83490_)
                    (if (##structure-instance-of?
                         _ctx83490_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid83487_
                         _key83492_
                         _phi83489_)
                        (##structure
                         gx#runtime-binding::t
                         _eid83487_
                         _key83492_
                         _phi83489_)))))
          (gx#bind-identifier!__%
           _id83486_
           _bind83494_
           _rebind?83488_
           _phi83489_
           _ctx83490_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id83500_ _eid83501_)
        (let* ((_rebind?83503_ '#f)
               (_phi83505_ (gx#current-expander-phi))
               (_ctx83507_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83500_
           _eid83501_
           _rebind?83503_
           _phi83505_
           _ctx83507_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id83509_ _eid83510_ _rebind?83511_)
        (let* ((_phi83513_ (gx#current-expander-phi))
               (_ctx83515_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83509_
           _eid83510_
           _rebind?83511_
           _phi83513_
           _ctx83515_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id83517_ _eid83518_ _rebind?83519_ _phi83520_)
        (let ((_ctx83522_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83517_
           _eid83518_
           _rebind?83519_
           _phi83520_
           _ctx83522_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g86323_
        (let ((_g86322_ (##length _g86323_)))
          (cond ((##fx= _g86322_ 2)
                 (apply (lambda (_id83500_ _eid83501_)
                          (gx#core-bind-runtime-reference!__0
                           _id83500_
                           _eid83501_))
                        _g86323_))
                ((##fx= _g86322_ 3)
                 (apply (lambda (_id83509_ _eid83510_ _rebind?83511_)
                          (gx#core-bind-runtime-reference!__1
                           _id83509_
                           _eid83510_
                           _rebind?83511_))
                        _g86323_))
                ((##fx= _g86322_ 4)
                 (apply (lambda (_id83517_
                                 _eid83518_
                                 _rebind?83519_
                                 _phi83520_)
                          (gx#core-bind-runtime-reference!__2
                           _id83517_
                           _eid83518_
                           _rebind?83519_
                           _phi83520_))
                        _g86323_))
                ((##fx= _g86322_ 5)
                 (apply (lambda (_id83524_
                                 _eid83525_
                                 _rebind?83526_
                                 _phi83527_
                                 _ctx83528_)
                          (gx#core-bind-runtime-reference!__%
                           _id83524_
                           _eid83525_
                           _rebind?83526_
                           _phi83527_
                           _ctx83528_))
                        _g86323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g86323_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id83446_ _eid83447_ _rebind?83448_ _phi83449_ _ctx83450_)
        (gx#bind-identifier!__%
         _id83446_
         (##structure
          gx#extern-binding::t
          _eid83447_
          (gx#core-identifier-key _id83446_)
          _phi83449_)
         _rebind?83448_
         _phi83449_
         _ctx83450_)))
    (define gx#core-bind-extern!__0
      (lambda (_id83455_ _eid83456_)
        (let* ((_rebind?83458_ '#f)
               (_phi83460_ (gx#current-expander-phi))
               (_ctx83462_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83455_
           _eid83456_
           _rebind?83458_
           _phi83460_
           _ctx83462_))))
    (define gx#core-bind-extern!__1
      (lambda (_id83464_ _eid83465_ _rebind?83466_)
        (let* ((_phi83468_ (gx#current-expander-phi))
               (_ctx83470_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83464_
           _eid83465_
           _rebind?83466_
           _phi83468_
           _ctx83470_))))
    (define gx#core-bind-extern!__2
      (lambda (_id83472_ _eid83473_ _rebind?83474_ _phi83475_)
        (let ((_ctx83477_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83472_
           _eid83473_
           _rebind?83474_
           _phi83475_
           _ctx83477_))))
    (define gx#core-bind-extern!
      (lambda _g86325_
        (let ((_g86324_ (##length _g86325_)))
          (cond ((##fx= _g86324_ 2)
                 (apply (lambda (_id83455_ _eid83456_)
                          (gx#core-bind-extern!__0 _id83455_ _eid83456_))
                        _g86325_))
                ((##fx= _g86324_ 3)
                 (apply (lambda (_id83464_ _eid83465_ _rebind?83466_)
                          (gx#core-bind-extern!__1
                           _id83464_
                           _eid83465_
                           _rebind?83466_))
                        _g86325_))
                ((##fx= _g86324_ 4)
                 (apply (lambda (_id83472_
                                 _eid83473_
                                 _rebind?83474_
                                 _phi83475_)
                          (gx#core-bind-extern!__2
                           _id83472_
                           _eid83473_
                           _rebind?83474_
                           _phi83475_))
                        _g86325_))
                ((##fx= _g86324_ 5)
                 (apply (lambda (_id83479_
                                 _eid83480_
                                 _rebind?83481_
                                 _phi83482_
                                 _ctx83483_)
                          (gx#core-bind-extern!__%
                           _id83479_
                           _eid83480_
                           _rebind?83481_
                           _phi83482_
                           _ctx83483_))
                        _g86325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g86325_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id83400_ _e83401_ _rebind?83402_ _phi83403_ _ctx83404_)
        (gx#bind-identifier!__%
         _id83400_
         (let ((_key83409_ (gx#core-identifier-key _id83400_))
               (_e83410_
                (if (or (##structure-instance-of? _e83401_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e83401_
                         'gx#expander-context::t))
                    _e83401_
                    (##structure
                     gx#user-expander::t
                     _e83401_
                     _ctx83404_
                     _phi83403_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key83409_ '#t _phi83403_ _ctx83404_)
            _key83409_
            _phi83403_
            _e83410_))
         _rebind?83402_
         _phi83403_
         _ctx83404_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id83415_ _e83416_)
        (let* ((_rebind?83418_ '#f)
               (_phi83420_ (gx#current-expander-phi))
               (_ctx83422_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83415_
           _e83416_
           _rebind?83418_
           _phi83420_
           _ctx83422_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id83424_ _e83425_ _rebind?83426_)
        (let* ((_phi83428_ (gx#current-expander-phi))
               (_ctx83430_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83424_
           _e83425_
           _rebind?83426_
           _phi83428_
           _ctx83430_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id83432_ _e83433_ _rebind?83434_ _phi83435_)
        (let ((_ctx83437_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83432_
           _e83433_
           _rebind?83434_
           _phi83435_
           _ctx83437_))))
    (define gx#core-bind-syntax!
      (lambda _g86327_
        (let ((_g86326_ (##length _g86327_)))
          (cond ((##fx= _g86326_ 2)
                 (apply (lambda (_id83415_ _e83416_)
                          (gx#core-bind-syntax!__0 _id83415_ _e83416_))
                        _g86327_))
                ((##fx= _g86326_ 3)
                 (apply (lambda (_id83424_ _e83425_ _rebind?83426_)
                          (gx#core-bind-syntax!__1
                           _id83424_
                           _e83425_
                           _rebind?83426_))
                        _g86327_))
                ((##fx= _g86326_ 4)
                 (apply (lambda (_id83432_ _e83433_ _rebind?83434_ _phi83435_)
                          (gx#core-bind-syntax!__2
                           _id83432_
                           _e83433_
                           _rebind?83434_
                           _phi83435_))
                        _g86327_))
                ((##fx= _g86326_ 5)
                 (apply (lambda (_id83439_
                                 _e83440_
                                 _rebind?83441_
                                 _phi83442_
                                 _ctx83443_)
                          (gx#core-bind-syntax!__%
                           _id83439_
                           _e83440_
                           _rebind?83441_
                           _phi83442_
                           _ctx83443_))
                        _g86327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g86327_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id83383_ _e83384_ _rebind?83385_)
        (gx#core-bind-syntax!__%
         _id83383_
         _e83384_
         _rebind?83385_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id83390_ _e83391_)
        (let ((_rebind?83393_ '#f))
          (gx#core-bind-root-syntax!__% _id83390_ _e83391_ _rebind?83393_))))
    (define gx#core-bind-root-syntax!
      (lambda _g86329_
        (let ((_g86328_ (##length _g86329_)))
          (cond ((##fx= _g86328_ 2)
                 (apply (lambda (_id83390_ _e83391_)
                          (gx#core-bind-root-syntax!__0 _id83390_ _e83391_))
                        _g86329_))
                ((##fx= _g86328_ 3)
                 (apply (lambda (_id83395_ _e83396_ _rebind?83397_)
                          (gx#core-bind-root-syntax!__%
                           _id83395_
                           _e83396_
                           _rebind?83397_))
                        _g86329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g86329_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id83341_ _alias-id83342_ _rebind?83343_ _phi83344_ _ctx83345_)
        (gx#bind-identifier!__%
         _id83341_
         (let ((_key83347_ (gx#core-identifier-key _id83341_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key83347_ '#t _phi83344_ _ctx83345_)
            _key83347_
            _phi83344_
            _alias-id83342_))
         _rebind?83343_
         _phi83344_
         _ctx83345_)))
    (define gx#core-bind-alias!__0
      (lambda (_id83352_ _alias-id83353_)
        (let* ((_rebind?83355_ '#f)
               (_phi83357_ (gx#current-expander-phi))
               (_ctx83359_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83352_
           _alias-id83353_
           _rebind?83355_
           _phi83357_
           _ctx83359_))))
    (define gx#core-bind-alias!__1
      (lambda (_id83361_ _alias-id83362_ _rebind?83363_)
        (let* ((_phi83365_ (gx#current-expander-phi))
               (_ctx83367_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83361_
           _alias-id83362_
           _rebind?83363_
           _phi83365_
           _ctx83367_))))
    (define gx#core-bind-alias!__2
      (lambda (_id83369_ _alias-id83370_ _rebind?83371_ _phi83372_)
        (let ((_ctx83374_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83369_
           _alias-id83370_
           _rebind?83371_
           _phi83372_
           _ctx83374_))))
    (define gx#core-bind-alias!
      (lambda _g86331_
        (let ((_g86330_ (##length _g86331_)))
          (cond ((##fx= _g86330_ 2)
                 (apply (lambda (_id83352_ _alias-id83353_)
                          (gx#core-bind-alias!__0 _id83352_ _alias-id83353_))
                        _g86331_))
                ((##fx= _g86330_ 3)
                 (apply (lambda (_id83361_ _alias-id83362_ _rebind?83363_)
                          (gx#core-bind-alias!__1
                           _id83361_
                           _alias-id83362_
                           _rebind?83363_))
                        _g86331_))
                ((##fx= _g86330_ 4)
                 (apply (lambda (_id83369_
                                 _alias-id83370_
                                 _rebind?83371_
                                 _phi83372_)
                          (gx#core-bind-alias!__2
                           _id83369_
                           _alias-id83370_
                           _rebind?83371_
                           _phi83372_))
                        _g86331_))
                ((##fx= _g86330_ 5)
                 (apply (lambda (_id83376_
                                 _alias-id83377_
                                 _rebind?83378_
                                 _phi83379_
                                 _ctx83380_)
                          (gx#core-bind-alias!__%
                           _id83376_
                           _alias-id83377_
                           _rebind?83378_
                           _phi83379_
                           _ctx83380_))
                        _g86331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g86331_))))))
    (define gx#make-binding-id__%
      (lambda (_key83298_ _syntax?83299_ _phi83300_ _ctx83301_)
        (if (uninterned-symbol? _key83298_)
            (gensym 'L)
            (if (pair? _key83298_)
                (gensym (car _key83298_))
                (if (##structure-instance-of? _ctx83301_ 'gx#top-context::t)
                    (let ((_ns83303_
                           (gx#core-context-namespace__% _ctx83301_)))
                      (if (and (fxzero? _phi83300_) (not _syntax?83299_))
                          (if _ns83303_
                              (make-symbol__1 _ns83303_ '"#" _key83298_)
                              _key83298_)
                          (if _syntax?83299_
                              (make-symbol__1
                               (let ((_$e83305_ _ns83303_))
                                 (if _$e83305_ _$e83305_ '""))
                               '"[:"
                               (number->string _phi83300_)
                               '":]#"
                               _key83298_)
                              (make-symbol__1
                               (let ((_$e83308_ _ns83303_))
                                 (if _$e83308_ _$e83308_ '""))
                               '"["
                               (number->string _phi83300_)
                               '"]#"
                               _key83298_))))
                    (gensym _key83298_))))))
    (define gx#make-binding-id__0
      (lambda (_key83314_)
        (let* ((_syntax?83316_ '#f)
               (_phi83318_ (gx#current-expander-phi))
               (_ctx83320_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83314_
           _syntax?83316_
           _phi83318_
           _ctx83320_))))
    (define gx#make-binding-id__1
      (lambda (_key83322_ _syntax?83323_)
        (let* ((_phi83325_ (gx#current-expander-phi))
               (_ctx83327_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83322_
           _syntax?83323_
           _phi83325_
           _ctx83327_))))
    (define gx#make-binding-id__2
      (lambda (_key83329_ _syntax?83330_ _phi83331_)
        (let ((_ctx83333_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83329_
           _syntax?83330_
           _phi83331_
           _ctx83333_))))
    (define gx#make-binding-id
      (lambda _g86333_
        (let ((_g86332_ (##length _g86333_)))
          (cond ((##fx= _g86332_ 1)
                 (apply (lambda (_key83314_)
                          (gx#make-binding-id__0 _key83314_))
                        _g86333_))
                ((##fx= _g86332_ 2)
                 (apply (lambda (_key83322_ _syntax?83323_)
                          (gx#make-binding-id__1 _key83322_ _syntax?83323_))
                        _g86333_))
                ((##fx= _g86332_ 3)
                 (apply (lambda (_key83329_ _syntax?83330_ _phi83331_)
                          (gx#make-binding-id__2
                           _key83329_
                           _syntax?83330_
                           _phi83331_))
                        _g86333_))
                ((##fx= _g86332_ 4)
                 (apply (lambda (_key83335_
                                 _syntax?83336_
                                 _phi83337_
                                 _ctx83338_)
                          (gx#make-binding-id__%
                           _key83335_
                           _syntax?83336_
                           _phi83337_
                           _ctx83338_))
                        _g86333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g86333_))))))))
