(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx8821_)
      (let ((_expand-special8823_
             (lambda (_hd8825_ _K8826_ _rest8827_ _r8828_)
               (_K8826_ _rest8827_
                        (cons (gx#core-expand-top _hd8825_) _r8828_)))))
        (gx#core-expand-block__0 _stx8821_ _expand-special8823_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8574_)
      (let ((_expand-special8576_
             (lambda (_hd8696_ _K8697_ _rest8698_ _r8699_)
               (let ((_K8703_ (lambda (_e8701_)
                                (_K8697_ _rest8698_ (cons _e8701_ _r8699_)))))
                 (let ((_e87048733_ _hd8696_))
                   (let ((_E87288737_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87048733_))))
                     (let ((_E87248749_
                            (lambda ()
                              (if (gx#stx-pair? _e87048733_)
                                  (let ((_e87298741_
                                         (gx#syntax-e _e87048733_)))
                                    (let ((_hd87308744_ (##car _e87298741_))
                                          (_tl87318746_ (##cdr _e87298741_)))
                                      (if (if (gx#identifier? _hd87308744_)
                                              (gx#core-identifier=?
                                               _hd87308744_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8703_ (gx#core-expand-define-runtime%
                                                        _hd8696_))
                                              (_E87288737_))
                                          (_E87288737_))))
                                  (_E87288737_)))))
                       (let ((_E87208761_
                              (lambda ()
                                (if (gx#stx-pair? _e87048733_)
                                    (let ((_e87258753_
                                           (gx#syntax-e _e87048733_)))
                                      (let ((_hd87268756_ (##car _e87258753_))
                                            (_tl87278758_ (##cdr _e87258753_)))
                                        (if (if (gx#identifier? _hd87268756_)
                                                (gx#core-identifier=?
                                                 _hd87268756_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8703_ (gx#core-expand-define-alias%
                                                          _hd8696_))
                                                (_E87248749_))
                                            (_E87248749_))))
                                    (_E87248749_)))))
                         (let ((_E87108773_
                                (lambda ()
                                  (if (gx#stx-pair? _e87048733_)
                                      (let ((_e87218765_
                                             (gx#syntax-e _e87048733_)))
                                        (let ((_hd87228768_
                                               (##car _e87218765_))
                                              (_tl87238770_
                                               (##cdr _e87218765_)))
                                          (if (if (gx#identifier? _hd87228768_)
                                                  (gx#core-identifier=?
                                                   _hd87228768_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8703_ (gx#core-expand-define-syntax%
                                                            _hd8696_))
                                                  (_E87208761_))
                                              (_E87208761_))))
                                      (_E87208761_)))))
                           (let ((_E87068805_
                                  (lambda ()
                                    (if (gx#stx-pair? _e87048733_)
                                        (let ((_e87118777_
                                               (gx#syntax-e _e87048733_)))
                                          (let ((_hd87128780_
                                                 (##car _e87118777_))
                                                (_tl87138782_
                                                 (##cdr _e87118777_)))
                                            (if (if (gx#identifier?
                                                     _hd87128780_)
                                                    (gx#core-identifier=?
                                                     _hd87128780_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl87138782_)
                                                    (let ((_e87148785_
                                                           (gx#syntax-e
                                                            _tl87138782_)))
                                                      (let ((_hd87158788_
                                                             (##car _e87148785_))
                                                            (_tl87168790_
                                                             (##cdr _e87148785_)))
                                                        (let ((_hd-bind8793_
                                                               _hd87158788_))
                                                          (if (gx#stx-pair?
                                                               _tl87168790_)
                                                              (let ((_e87178795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl87168790_)))
                        (let ((_hd87188798_ (##car _e87178795_))
                              (_tl87198800_ (##cdr _e87178795_)))
                          (let ((_expr8803_ _hd87188798_))
                            (if (gx#stx-null? _tl87198800_)
                                (if (gx#core-bind-values? _hd-bind8793_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind8793_)
                                      (_K8703_ _hd8696_))
                                    (_E87108773_))
                                (_E87108773_)))))
                      (_E87108773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87108773_))
                                                (_E87108773_))))
                                        (_E87108773_)))))
                             (let ((_E87058817_
                                    (lambda ()
                                      (if (gx#stx-pair? _e87048733_)
                                          (let ((_e87078809_
                                                 (gx#syntax-e _e87048733_)))
                                            (let ((_hd87088812_
                                                   (##car _e87078809_))
                                                  (_tl87098814_
                                                   (##cdr _e87078809_)))
                                              (if (if (gx#identifier?
                                                       _hd87088812_)
                                                      (gx#core-identifier=?
                                                       _hd87088812_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8703_ (gx#core-expand-begin-syntax%
                                                                _hd8696_))
                                                      (_E87068805_))
                                                  (_E87068805_))))
                                          (_E87068805_)))))
                               (let () (_E87058817_)))))))))))))
        (let ((_eval-body8577_
               (lambda (_rbody8585_)
                 ((letrec ((_lp8587_
                            (lambda (_rest8589_ _body8590_ _ebody8591_)
                              (let ((_rest85928600_ _rest8589_))
                                (let ((_E85958604_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest85928600_))))
                                  (let ((_else85948608_
                                         (lambda ()
                                           (values _body8590_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8591_)
                                                     (gx#stx-source
                                                      _stx8574_)))))))
                                    (let ((_K85968684_
                                           (lambda (_rest8611_ _hd8612_)
                                             (let ((_e86138630_ _hd8612_))
                                               (let ((_E86258634_
                                                      (lambda ()
                                                        (_lp8587_
                                                         _rest8611_
                                                         (cons _hd8612_
                                                               _body8590_)
                                                         (cons _hd8612_
                                                               _ebody8591_)))))
                                                 (let ((_E86158646_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e86138630_)
                                                              (let ((_e86268638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e86138630_)))
                        (let ((_hd86278641_ (##car _e86268638_))
                              (_tl86288643_ (##cdr _e86268638_)))
                          (if (if (gx#identifier? _hd86278641_)
                                  (gx#core-identifier=?
                                   _hd86278641_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8587_
                                   _rest8611_
                                   (cons _hd8612_ _body8590_)
                                   _ebody8591_)
                                  (_E86258634_))
                              (_E86258634_))))
                      (_E86258634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E86148680_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e86138630_)
                        (let ((_e86168650_ (gx#syntax-e _e86138630_)))
                          (let ((_hd86178653_ (##car _e86168650_))
                                (_tl86188655_ (##cdr _e86168650_)))
                            (if (if (gx#identifier? _hd86178653_)
                                    (gx#core-identifier=?
                                     _hd86178653_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl86188655_)
                                    (let ((_e86198658_
                                           (gx#syntax-e _tl86188655_)))
                                      (let ((_hd86208661_ (##car _e86198658_))
                                            (_tl86218663_ (##cdr _e86198658_)))
                                        (let ((_hd-bind8666_ _hd86208661_))
                                          (if (gx#stx-pair? _tl86218663_)
                                              (let ((_e86228668_
                                                     (gx#syntax-e
                                                      _tl86218663_)))
                                                (let ((_hd86238671_
                                                       (##car _e86228668_))
                                                      (_tl86248673_
                                                       (##cdr _e86228668_)))
                                                  (let ((_expr8676_
                                                         _hd86238671_))
                                                    (if (gx#stx-null?
                                                         _tl86248673_)
                                                        (if '#t
                                                            (let ((_ehd8678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8666_)
                                        (cons (gx#core-expand-expression
                                               _expr8676_)
                                              '())))
                            (gx#stx-source _hd8612_))))
                      (_lp8587_
                       _rest8611_
                       (cons _ehd8678_ _body8590_)
                       (cons _ehd8678_ _ebody8591_)))
                    (_E86158646_))
                (_E86158646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86158646_)))))
                                    (_E86158646_))
                                (_E86158646_))))
                        (_E86158646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E86148680_)))))))))
                                      (if (##pair? _rest85928600_)
                                          (let ((_hd85978687_
                                                 (##car _rest85928600_))
                                                (_tl85988689_
                                                 (##cdr _rest85928600_)))
                                            (let ((_hd8692_ _hd85978687_))
                                              (let ((_rest8694_ _tl85988689_))
                                                (_K85968684_
                                                 _rest8694_
                                                 _hd8692_))))
                                          (_else85948608_)))))))))
                    _lp8587_)
                  _rbody8585_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8580_
                    (gx#core-expand-block__1
                     _stx8574_
                     _expand-special8576_
                     '#f)))
               (let ((_g8835_ (_eval-body8577_ _rbody8580_)))
                 (begin
                   (let ((_g8836_ (values-count _g8835_)))
                     (if (not (fx= _g8836_ 2))
                         (error "Context expects 2 values" _g8836_)))
                   (let ((_expanded-body8582_ (values-ref _g8835_ 0))
                         (_value8583_ (values-ref _g8835_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8582_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8583_ '())))
                      (gx#stx-source _stx8574_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8544_)
      (let ((_e85458552_ _stx8544_))
        (let ((_E85478556_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e85458552_))))
          (let ((_E85468570_
                 (lambda ()
                   (if (gx#stx-pair? _e85458552_)
                       (let ((_e85488560_ (gx#syntax-e _e85458552_)))
                         (let ((_hd85498563_ (##car _e85488560_))
                               (_tl85508565_ (##cdr _e85488560_)))
                           (let ((_body8568_ _tl85508565_))
                             (if (gx#stx-list? _body8568_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8568_)
                                  (gx#stx-source _stx8544_))
                                 (_E85478556_)))))
                       (_E85478556_)))))
            (let () (_E85468570_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8532_)
      (let ((_e85338536_ _stx8532_))
        (let ((_E85348540_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e85338536_))))
          (let () (_E85348540_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8256_ _body8257_)
      (let ((_expand-internal-special8261_
             (lambda (_hd8418_ _K8419_ _rest8420_ _r8421_)
               (let ((_e84228447_ _hd8418_))
                 (let ((_E84428451_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e84228447_))))
                   (let ((_E84388463_
                          (lambda ()
                            (if (gx#stx-pair? _e84228447_)
                                (let ((_e84438455_ (gx#syntax-e _e84228447_)))
                                  (let ((_hd84448458_ (##car _e84438455_))
                                        (_tl84458460_ (##cdr _e84438455_)))
                                    (if (if (gx#identifier? _hd84448458_)
                                            (gx#core-identifier=?
                                             _hd84448458_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8419_ _rest8420_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8418_)
                                                           _r8421_))
                                            (_E84428451_))
                                        (_E84428451_))))
                                (_E84428451_)))))
                     (let ((_E84348475_
                            (lambda ()
                              (if (gx#stx-pair? _e84228447_)
                                  (let ((_e84398467_
                                         (gx#syntax-e _e84228447_)))
                                    (let ((_hd84408470_ (##car _e84398467_))
                                          (_tl84418472_ (##cdr _e84398467_)))
                                      (if (if (gx#identifier? _hd84408470_)
                                              (gx#core-identifier=?
                                               _hd84408470_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8418_)
                                                (_K8419_ _rest8420_ _r8421_))
                                              (_E84388463_))
                                          (_E84388463_))))
                                  (_E84388463_)))))
                       (let ((_E84248487_
                              (lambda ()
                                (if (gx#stx-pair? _e84228447_)
                                    (let ((_e84358479_
                                           (gx#syntax-e _e84228447_)))
                                      (let ((_hd84368482_ (##car _e84358479_))
                                            (_tl84378484_ (##cdr _e84358479_)))
                                        (if (if (gx#identifier? _hd84368482_)
                                                (gx#core-identifier=?
                                                 _hd84368482_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8418_)
                                                  (_K8419_ _rest8420_ _r8421_))
                                                (_E84348475_))
                                            (_E84348475_))))
                                    (_E84348475_)))))
                         (let ((_E84238519_
                                (lambda ()
                                  (if (gx#stx-pair? _e84228447_)
                                      (let ((_e84258491_
                                             (gx#syntax-e _e84228447_)))
                                        (let ((_hd84268494_
                                               (##car _e84258491_))
                                              (_tl84278496_
                                               (##cdr _e84258491_)))
                                          (if (if (gx#identifier? _hd84268494_)
                                                  (gx#core-identifier=?
                                                   _hd84268494_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl84278496_)
                                                  (let ((_e84288499_
                                                         (gx#syntax-e
                                                          _tl84278496_)))
                                                    (let ((_hd84298502_
                                                           (##car _e84288499_))
                                                          (_tl84308504_
                                                           (##cdr _e84288499_)))
                                                      (let ((_hd-bind8507_
                                                             _hd84298502_))
                                                        (if (gx#stx-pair?
                                                             _tl84308504_)
                                                            (let ((_e84318509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl84308504_)))
                      (let ((_hd84328512_ (##car _e84318509_))
                            (_tl84338514_ (##cdr _e84318509_)))
                        (let ((_expr8517_ _hd84328512_))
                          (if (gx#stx-null? _tl84338514_)
                              (if (gx#core-bind-values? _hd-bind8507_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8507_)
                                    (_K8419_ _rest8420_
                                             (cons _hd8418_ _r8421_)))
                                  (_E84248487_))
                              (_E84248487_)))))
                    (_E84248487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E84248487_))
                                              (_E84248487_))))
                                      (_E84248487_)))))
                           (let () (_E84238519_)))))))))))
        (let ((_wrap-internal8262_
               (lambda (_rbody8264_)
                 ((letrec ((_lp8266_
                            (lambda (_rest8268_
                                     _decls8269_
                                     _bind8270_
                                     _body8271_)
                              (let ((_e82728279_ _rest8268_))
                                (let ((_E82748328_
                                       (lambda ()
                                         (let ((_body8323_
                                                (let ((_body82828292_
                                                       _body8271_))
                                                  (let ((_E82868296_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body82828292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else82858300_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8271_)
                                                              (gx#stx-source
                                                               _stx8256_)))))
                                                      (let ((_try-match82848316_
                                                             (lambda ()
                                                               (let ((_K82878306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8304_) _expr8304_)))
                         (if (##pair? _body82828292_)
                             (let ((_hd82888309_ (##car _body82828292_))
                                   (_tl82898311_ (##cdr _body82828292_)))
                               (let ((_expr8314_ _hd82888309_))
                                 (if (##null? _tl82898311_)
                                     (_K82878306_ _expr8314_)
                                     (_else82858300_))))
                             (_else82858300_))))))
                (let ((_K82908320_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8256_))))
                  (if (##null? _body82828292_)
                      (_K82908320_)
                      (_try-match82848316_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8325_
                                                  (if (null? _bind8270_)
                                                      _body8323_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8323_ '())))
               (gx#stx-source _stx8256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8269_)
                                                   _body8325_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8269_
                                                                (cons _body8325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8256_)))))))))
                                  (let ((_E82738414_
                                         (lambda ()
                                           (if (gx#stx-pair? _e82728279_)
                                               (let ((_e82758332_
                                                      (gx#syntax-e
                                                       _e82728279_)))
                                                 (let ((_hd82768335_
                                                        (##car _e82758332_))
                                                       (_tl82778337_
                                                        (##cdr _e82758332_)))
                                                   (let ((_hd8340_
                                                          _hd82768335_))
                                                     (let ((_rest8342_
                                                            _tl82778337_))
                                                       (if '#t
                                                           (let ((_e83438360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8340_))
                     (let ((_E83558364_
                            (lambda ()
                              (if (null? _bind8270_)
                                  (_lp8266_
                                   _rest8342_
                                   _decls8269_
                                   _bind8270_
                                   (cons _hd8340_ _body8271_))
                                  (_lp8266_
                                   _rest8342_
                                   _decls8269_
                                   (cons (cons '#f (cons _hd8340_ '()))
                                         _bind8270_)
                                   _body8271_)))))
                       (let ((_E83458378_
                              (lambda ()
                                (if (gx#stx-pair? _e83438360_)
                                    (let ((_e83568368_
                                           (gx#syntax-e _e83438360_)))
                                      (let ((_hd83578371_ (##car _e83568368_))
                                            (_tl83588373_ (##cdr _e83568368_)))
                                        (if (if (gx#identifier? _hd83578371_)
                                                (gx#core-identifier=?
                                                 _hd83578371_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8376_ _tl83588373_))
                                              (if '#t
                                                  (_lp8266_
                                                   _rest8342_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8269_
                                                    _xdecls8376_)
                                                   _bind8270_
                                                   _body8271_)
                                                  (_E83558364_)))
                                            (_E83558364_))))
                                    (_E83558364_)))))
                         (let ((_E83448410_
                                (lambda ()
                                  (if (gx#stx-pair? _e83438360_)
                                      (let ((_e83468382_
                                             (gx#syntax-e _e83438360_)))
                                        (let ((_hd83478385_
                                               (##car _e83468382_))
                                              (_tl83488387_
                                               (##cdr _e83468382_)))
                                          (if (if (gx#identifier? _hd83478385_)
                                                  (gx#core-identifier=?
                                                   _hd83478385_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl83488387_)
                                                  (let ((_e83498390_
                                                         (gx#syntax-e
                                                          _tl83488387_)))
                                                    (let ((_hd83508393_
                                                           (##car _e83498390_))
                                                          (_tl83518395_
                                                           (##cdr _e83498390_)))
                                                      (let ((_hd-bind8398_
                                                             _hd83508393_))
                                                        (if (gx#stx-pair?
                                                             _tl83518395_)
                                                            (let ((_e83528400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl83518395_)))
                      (let ((_hd83538403_ (##car _e83528400_))
                            (_tl83548405_ (##cdr _e83528400_)))
                        (let ((_expr8408_ _hd83538403_))
                          (if (gx#stx-null? _tl83548405_)
                              (if '#t
                                  (_lp8266_
                                   _rest8342_
                                   _decls8269_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8398_)
                                               (cons (gx#core-expand-expression
                                                      _expr8408_)
                                                     '()))
                                         _bind8270_)
                                   _body8271_)
                                  (_E83458378_))
                              (_E83458378_)))))
                    (_E83458378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E83458378_))
                                              (_E83458378_))))
                                      (_E83458378_)))))
                           (let () (_E83448410_))))))
                   (_E82748328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E82748328_)))))
                                    (let () (_E82738414_))))))))
                    _lp8266_)
                  _rbody8264_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8260_
                 (lambda (_hd8523_ _rest8524_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8262_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8523_ _rest8524_)
                         (gx#stx-source _stx8256_))
                        _expand-internal-special8261_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj8829 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj8829)
                        __obj8829))))))
            (let ((_expand-special8259_
                   (lambda (_hd8527_ _K8528_ _rest8529_ _r8530_)
                     (_K8528_ '()
                              (cons (_expand-internal8260_ _hd8527_ _rest8529_)
                                    _r8530_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8257_)
                (gx#stx-source _stx8256_))
               _expand-special8259_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8194_)
      (let ((_e81958202_ _stx8194_))
        (let ((_E81978206_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81958202_))))
          (let ((_E81968252_
                 (lambda ()
                   (if (gx#stx-pair? _e81958202_)
                       (let ((_e81988210_ (gx#syntax-e _e81958202_)))
                         (let ((_hd81998213_ (##car _e81988210_))
                               (_tl82008215_ (##cdr _e81988210_)))
                           (let ((_body8218_ _tl82008215_))
                             (if (gx#stx-list? _body8218_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8220_)
                                      (let ((_e82218228_ _decl8220_))
                                        (let ((_E82238232_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e82218228_))))
                                          (let ((_E82228248_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e82218228_)
                                                       (let ((_e82248236_
                                                              (gx#syntax-e
                                                               _e82218228_)))
                                                         (let ((_hd82258239_
                                                                (##car _e82248236_))
                                                               (_tl82268241_
                                                                (##cdr _e82248236_)))
                                                           (let ((_head8244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd82258239_))
                     (let ((_args8246_ _tl82268241_))
                       (if (gx#stx-list? _args8246_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8220_)
                           (_E82238232_))))))
               (_E82238232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E82228248_))))))
                                    _body8218_))
                                  (gx#stx-source _stx8194_))
                                 (_E81978206_)))))
                       (_E81978206_)))))
            (let () (_E81968252_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8078_)
      (let ((_e80798086_ _stx8078_))
        (let ((_E80818090_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80798086_))))
          (let ((_E80808190_
                 (lambda ()
                   (if (gx#stx-pair? _e80798086_)
                       (let ((_e80828094_ (gx#syntax-e _e80798086_)))
                         (let ((_hd80838097_ (##car _e80828094_))
                               (_tl80848099_ (##cdr _e80828094_)))
                           (let ((_body8102_ _tl80848099_))
                             (if (gx#stx-list? _body8102_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8104_)
                                      (let ((_e81058115_ _bind8104_))
                                        (let ((_E81078119_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e81058115_))))
                                          (let ((_E81068143_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e81058115_)
                                                       (let ((_e81088123_
                                                              (gx#syntax-e
                                                               _e81058115_)))
                                                         (let ((_hd81098126_
                                                                (##car _e81088123_))
                                                               (_tl81108128_
                                                                (##cdr _e81088123_)))
                                                           (let ((_id8131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd81098126_))
                     (if (gx#stx-pair? _tl81108128_)
                         (let ((_e81118133_ (gx#syntax-e _tl81108128_)))
                           (let ((_hd81128136_ (##car _e81118133_))
                                 (_tl81138138_ (##cdr _e81118133_)))
                             (let ((_eid8141_ _hd81128136_))
                               (if (gx#stx-null? _tl81138138_)
                                   (if (if (gx#identifier? _id8131_)
                                           (gx#identifier? _eid8141_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8131_
                                        (gx#stx-e _eid8141_))
                                       (_E81078119_))
                                   (_E81078119_)))))
                         (_E81078119_)))))
               (_E81078119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81068143_))))))
                                    _body8102_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8147_)
                                        (let ((_e81488158_ _bind8147_))
                                          (let ((_E81508162_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e81488158_))))
                                            (let ((_E81498186_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e81488158_)
                                                         (let ((_e81518166_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e81488158_)))
                   (let ((_hd81528169_ (##car _e81518166_))
                         (_tl81538171_ (##cdr _e81518166_)))
                     (let ((_id8174_ _hd81528169_))
                       (if (gx#stx-pair? _tl81538171_)
                           (let ((_e81548176_ (gx#syntax-e _tl81538171_)))
                             (let ((_hd81558179_ (##car _e81548176_))
                                   (_tl81568181_ (##cdr _e81548176_)))
                               (let ((_eid8184_ _hd81558179_))
                                 (if (gx#stx-null? _tl81568181_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8174_)
                                               (cons (gx#stx-e _eid8184_) '()))
                                         (_E81508162_))
                                     (_E81508162_)))))
                           (_E81508162_)))))
                 (_E81508162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E81498186_))))))
                                      _body8102_))
                                    (gx#stx-source _stx8078_)))
                                 (_E80818090_)))))
                       (_E80818090_)))))
            (let () (_E80808190_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8024_)
      (let ((_e80258038_ _stx8024_))
        (let ((_E80278042_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80258038_))))
          (let ((_E80268074_
                 (lambda ()
                   (if (gx#stx-pair? _e80258038_)
                       (let ((_e80288046_ (gx#syntax-e _e80258038_)))
                         (let ((_hd80298049_ (##car _e80288046_))
                               (_tl80308051_ (##cdr _e80288046_)))
                           (if (gx#stx-pair? _tl80308051_)
                               (let ((_e80318054_ (gx#syntax-e _tl80308051_)))
                                 (let ((_hd80328057_ (##car _e80318054_))
                                       (_tl80338059_ (##cdr _e80318054_)))
                                   (let ((_hd8062_ _hd80328057_))
                                     (if (gx#stx-pair? _tl80338059_)
                                         (let ((_e80348064_
                                                (gx#syntax-e _tl80338059_)))
                                           (let ((_hd80358067_
                                                  (##car _e80348064_))
                                                 (_tl80368069_
                                                  (##cdr _e80348064_)))
                                             (let ((_expr8072_ _hd80358067_))
                                               (if (gx#stx-null? _tl80368069_)
                                                   (if (gx#core-bind-values?
                                                        _hd8062_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8062_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8062_)
                              (cons (gx#core-expand-expression _expr8072_)
                                    '())))
                  (gx#stx-source _stx8024_)))
               (_E80278042_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80278042_)))))
                                         (_E80278042_)))))
                               (_E80278042_))))
                       (_E80278042_)))))
            (let () (_E80268074_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx7970_)
      (let ((_e79717984_ _stx7970_))
        (let ((_E79737988_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79717984_))))
          (let ((_E79728020_
                 (lambda ()
                   (if (gx#stx-pair? _e79717984_)
                       (let ((_e79747992_ (gx#syntax-e _e79717984_)))
                         (let ((_hd79757995_ (##car _e79747992_))
                               (_tl79767997_ (##cdr _e79747992_)))
                           (if (gx#stx-pair? _tl79767997_)
                               (let ((_e79778000_ (gx#syntax-e _tl79767997_)))
                                 (let ((_hd79788003_ (##car _e79778000_))
                                       (_tl79798005_ (##cdr _e79778000_)))
                                   (let ((_id8008_ _hd79788003_))
                                     (if (gx#stx-pair? _tl79798005_)
                                         (let ((_e79808010_
                                                (gx#syntax-e _tl79798005_)))
                                           (let ((_hd79818013_
                                                  (##car _e79808010_))
                                                 (_tl79828015_
                                                  (##cdr _e79808010_)))
                                             (let ((_binding-id8018_
                                                    _hd79818013_))
                                               (if (gx#stx-null? _tl79828015_)
                                                   (if (if (gx#identifier?
                                                            _id8008_)
                                                           (gx#identifier?
                                                            _binding-id8018_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8008_
                                                          (gx#stx-e
                                                           _binding-id8018_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8008_)
                              (cons (gx#core-quote-syntax__0 _binding-id8018_)
                                    '())))))
               (_E79737988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79737988_)))))
                                         (_E79737988_)))))
                               (_E79737988_))))
                       (_E79737988_)))))
            (let () (_E79728020_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx7913_)
      (let ((_e79147927_ _stx7913_))
        (let ((_E79167931_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79147927_))))
          (let ((_E79157966_
                 (lambda ()
                   (if (gx#stx-pair? _e79147927_)
                       (let ((_e79177935_ (gx#syntax-e _e79147927_)))
                         (let ((_hd79187938_ (##car _e79177935_))
                               (_tl79197940_ (##cdr _e79177935_)))
                           (if (gx#stx-pair? _tl79197940_)
                               (let ((_e79207943_ (gx#syntax-e _tl79197940_)))
                                 (let ((_hd79217946_ (##car _e79207943_))
                                       (_tl79227948_ (##cdr _e79207943_)))
                                   (let ((_id7951_ _hd79217946_))
                                     (if (gx#stx-pair? _tl79227948_)
                                         (let ((_e79237953_
                                                (gx#syntax-e _tl79227948_)))
                                           (let ((_hd79247956_
                                                  (##car _e79237953_))
                                                 (_tl79257958_
                                                  (##cdr _e79237953_)))
                                             (let ((_expr7961_ _hd79247956_))
                                               (if (gx#stx-null? _tl79257958_)
                                                   (if (gx#identifier?
                                                        _id7951_)
                                                       (let ((_g8837_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr7961_)))
                 (begin
                   (let ((_g8838_ (values-count _g8837_)))
                     (if (not (fx= _g8838_ 2))
                         (error "Context expects 2 values" _g8838_)))
                   (let ((_e-stx7963_ (values-ref _g8837_ 0))
                         (_e7964_ (values-ref _g8837_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id7951_ _e7964_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id7951_)
                                    (cons _e-stx7963_ '())))
                        (gx#stx-source _stx7913_))))))
               (_E79167931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79167931_)))))
                                         (_E79167931_)))))
                               (_E79167931_))))
                       (_E79167931_)))))
            (let () (_E79157966_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx7857_)
      (let ((_e78587871_ _stx7857_))
        (let ((_E78607875_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78587871_))))
          (let ((_E78597909_
                 (lambda ()
                   (if (gx#stx-pair? _e78587871_)
                       (let ((_e78617879_ (gx#syntax-e _e78587871_)))
                         (let ((_hd78627882_ (##car _e78617879_))
                               (_tl78637884_ (##cdr _e78617879_)))
                           (if (gx#stx-pair? _tl78637884_)
                               (let ((_e78647887_ (gx#syntax-e _tl78637884_)))
                                 (let ((_hd78657890_ (##car _e78647887_))
                                       (_tl78667892_ (##cdr _e78647887_)))
                                   (let ((_id7895_ _hd78657890_))
                                     (if (gx#stx-pair? _tl78667892_)
                                         (let ((_e78677897_
                                                (gx#syntax-e _tl78667892_)))
                                           (let ((_hd78687900_
                                                  (##car _e78677897_))
                                                 (_tl78697902_
                                                  (##cdr _e78677897_)))
                                             (let ((_alias-id7905_
                                                    _hd78687900_))
                                               (if (gx#stx-null? _tl78697902_)
                                                   (if (if (gx#identifier?
                                                            _id7895_)
                                                           (gx#identifier?
                                                            _alias-id7905_)
                                                           '#f)
                                                       (let ((_alias-id7907_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id7905_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id7895_
                                                            _alias-id7907_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id7895_)
                                (cons _alias-id7907_ '()))))))
               (_E78607875_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E78607875_)))))
                                         (_E78607875_)))))
                               (_E78607875_))))
                       (_E78607875_)))))
            (let () (_E78597909_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda7798
      (lambda (_stx7800_ _wrap?7801_)
        (let ((_e78027812_ _stx7800_))
          (let ((_E78047816_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e78027812_))))
            (let ((_E78037843_
                   (lambda ()
                     (if (gx#stx-pair? _e78027812_)
                         (let ((_e78057820_ (gx#syntax-e _e78027812_)))
                           (let ((_hd78067823_ (##car _e78057820_))
                                 (_tl78077825_ (##cdr _e78057820_)))
                             (if (gx#stx-pair? _tl78077825_)
                                 (let ((_e78087828_
                                        (gx#syntax-e _tl78077825_)))
                                   (let ((_hd78097831_ (##car _e78087828_))
                                         (_tl78107833_ (##cdr _e78087828_)))
                                     (let ((_hd7836_ _hd78097831_))
                                       (let ((_body7838_ _tl78107833_))
                                         (if (gx#core-bind-values? _hd7836_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd7836_)
                                                  (let ((_body7841_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd7836_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7800_
                              _body7838_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?7801_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body7841_)
                                                         (gx#stx-source
                                                          _stx7800_))
                                                        _body7841_))))
                                              gx#current-expander-context
                                              (let ((__obj8830
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8830)
                                                  __obj8830)))
                                             (_E78047816_))))))
                                 (_E78047816_))))
                         (_E78047816_)))))
              (let () (_E78037843_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx7850_)
          (let ((_wrap?7852_ '#t))
            (gx#core-expand-lambda%__opt-lambda7798 _stx7850_ _wrap?7852_))))
      (define gx#core-expand-lambda%
        (lambda _g8840_
          (let ((_g8839_ (length _g8840_)))
            (cond ((fx= _g8839_ 1) (apply gx#core-expand-lambda%__0 _g8840_))
                  ((fx= _g8839_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda7798 _g8840_))
                  (else (error "No clause matching arguments" _g8840_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx7764_)
      (let ((_e77657772_ _stx7764_))
        (let ((_E77677776_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77657772_))))
          (let ((_E77667795_
                 (lambda ()
                   (if (gx#stx-pair? _e77657772_)
                       (let ((_e77687780_ (gx#syntax-e _e77657772_)))
                         (let ((_hd77697783_ (##car _e77687780_))
                               (_tl77707785_ (##cdr _e77687780_)))
                           (let ((_clauses7788_ _tl77707785_))
                             (if (gx#stx-list? _clauses7788_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause7790_)
                                      (gx#core-expand-lambda%__opt-lambda7798
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause7790_)
                                        (let ((_$e7792_
                                               (gx#stx-source _clause7790_)))
                                          (if _$e7792_
                                              _$e7792_
                                              (gx#stx-source _stx7764_))))
                                       '#f))
                                    _clauses7788_))
                                  (gx#stx-source _stx7764_))
                                 (_E77677776_)))))
                       (_E77677776_)))))
            (let () (_E77667795_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7718_)
      (let ((_e77197729_ _stx7718_))
        (let ((_E77217733_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77197729_))))
          (let ((_E77207760_
                 (lambda ()
                   (if (gx#stx-pair? _e77197729_)
                       (let ((_e77227737_ (gx#syntax-e _e77197729_)))
                         (let ((_hd77237740_ (##car _e77227737_))
                               (_tl77247742_ (##cdr _e77227737_)))
                           (if (gx#stx-pair? _tl77247742_)
                               (let ((_e77257745_ (gx#syntax-e _tl77247742_)))
                                 (let ((_hd77267748_ (##car _e77257745_))
                                       (_tl77277750_ (##cdr _e77257745_)))
                                   (let ((_hd7753_ _hd77267748_))
                                     (let ((_body7755_ _tl77277750_))
                                       (if (gx#core-expand-let-bind? _hd7753_)
                                           (let ((_expressions7757_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd7753_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7753_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7753_
                                                                _expressions7757_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7718_
                              _body7755_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7718_))))
                                              gx#current-expander-context
                                              (let ((__obj8831
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8831)
                                                  __obj8831))))
                                           (_E77217733_))))))
                               (_E77217733_))))
                       (_E77217733_)))))
            (let () (_E77207760_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7661
      (lambda (_stx7663_ _form7664_)
        (let ((_e76657675_ _stx7663_))
          (let ((_E76677679_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e76657675_))))
            (let ((_E76667704_
                   (lambda ()
                     (if (gx#stx-pair? _e76657675_)
                         (let ((_e76687683_ (gx#syntax-e _e76657675_)))
                           (let ((_hd76697686_ (##car _e76687683_))
                                 (_tl76707688_ (##cdr _e76687683_)))
                             (if (gx#stx-pair? _tl76707688_)
                                 (let ((_e76717691_
                                        (gx#syntax-e _tl76707688_)))
                                   (let ((_hd76727694_ (##car _e76717691_))
                                         (_tl76737696_ (##cdr _e76717691_)))
                                     (let ((_hd7699_ _hd76727694_))
                                       (let ((_body7701_ _tl76737696_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7699_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7699_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7664_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7699_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7699_))
                       (cons (gx#core-expand-local-block _stx7663_ _body7701_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7663_))))
                                              gx#current-expander-context
                                              (let ((__obj8832
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8832)
                                                  __obj8832)))
                                             (_E76677679_))))))
                                 (_E76677679_))))
                         (_E76677679_)))))
              (let () (_E76667704_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7711_)
          (let ((_form7713_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7661
             _stx7711_
             _form7713_))))
      (define gx#core-expand-letrec-values%
        (lambda _g8842_
          (let ((_g8841_ (length _g8842_)))
            (cond ((fx= _g8841_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g8842_))
                  ((fx= _g8841_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7661
                          _g8842_))
                  (else (error "No clause matching arguments" _g8842_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7660_)
      (gx#core-expand-letrec-values%__opt-lambda7661
       _stx7660_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7617_)
      (if (gx#stx-list? _stx7617_)
          (gx#stx-andmap
           (lambda (_bind7619_)
             (let ((_e76207630_ _bind7619_))
               (let ((_E76227634_ (lambda () '#f)))
                 (let ((_E76217656_
                        (lambda ()
                          (if (gx#stx-pair? _e76207630_)
                              (let ((_e76237638_ (gx#syntax-e _e76207630_)))
                                (let ((_hd76247641_ (##car _e76237638_))
                                      (_tl76257643_ (##cdr _e76237638_)))
                                  (let ((_hd7646_ _hd76247641_))
                                    (if (gx#stx-pair? _tl76257643_)
                                        (let ((_e76267648_
                                               (gx#syntax-e _tl76257643_)))
                                          (let ((_hd76277651_
                                                 (##car _e76267648_))
                                                (_tl76287653_
                                                 (##cdr _e76267648_)))
                                            (if (gx#stx-null? _tl76287653_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7646_)
                                                    (_E76227634_))
                                                (_E76227634_))))
                                        (_E76227634_)))))
                              (_E76227634_)))))
                   (let () (_E76217656_))))))
           _stx7617_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7576_)
      (let ((_e75777587_ _bind7576_))
        (let ((_E75797591_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75777587_))))
          (let ((_E75787613_
                 (lambda ()
                   (if (gx#stx-pair? _e75777587_)
                       (let ((_e75807595_ (gx#syntax-e _e75777587_)))
                         (let ((_hd75817598_ (##car _e75807595_))
                               (_tl75827600_ (##cdr _e75807595_)))
                           (if (gx#stx-pair? _tl75827600_)
                               (let ((_e75837603_ (gx#syntax-e _tl75827600_)))
                                 (let ((_hd75847606_ (##car _e75837603_))
                                       (_tl75857608_ (##cdr _e75837603_)))
                                   (let ((_expr7611_ _hd75847606_))
                                     (if (gx#stx-null? _tl75857608_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7611_)
                                             (_E75797591_))
                                         (_E75797591_)))))
                               (_E75797591_))))
                       (_E75797591_)))))
            (let () (_E75787613_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7535_)
      (let ((_e75367546_ _bind7535_))
        (let ((_E75387550_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75367546_))))
          (let ((_E75377572_
                 (lambda ()
                   (if (gx#stx-pair? _e75367546_)
                       (let ((_e75397554_ (gx#syntax-e _e75367546_)))
                         (let ((_hd75407557_ (##car _e75397554_))
                               (_tl75417559_ (##cdr _e75397554_)))
                           (let ((_hd7562_ _hd75407557_))
                             (if (gx#stx-pair? _tl75417559_)
                                 (let ((_e75427564_
                                        (gx#syntax-e _tl75417559_)))
                                   (let ((_hd75437567_ (##car _e75427564_))
                                         (_tl75447569_ (##cdr _e75427564_)))
                                     (if (gx#stx-null? _tl75447569_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7562_)
                                             (_E75387550_))
                                         (_E75387550_))))
                                 (_E75387550_)))))
                       (_E75387550_)))))
            (let () (_E75377572_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7493_ _expr7494_)
      (let ((_e74957505_ _bind7493_))
        (let ((_E74977509_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74957505_))))
          (let ((_E74967531_
                 (lambda ()
                   (if (gx#stx-pair? _e74957505_)
                       (let ((_e74987513_ (gx#syntax-e _e74957505_)))
                         (let ((_hd74997516_ (##car _e74987513_))
                               (_tl75007518_ (##cdr _e74987513_)))
                           (let ((_hd7521_ _hd74997516_))
                             (if (gx#stx-pair? _tl75007518_)
                                 (let ((_e75017523_
                                        (gx#syntax-e _tl75007518_)))
                                   (let ((_hd75027526_ (##car _e75017523_))
                                         (_tl75037528_ (##cdr _e75017523_)))
                                     (if (gx#stx-null? _tl75037528_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7521_)
                                                   (cons _expr7494_ '()))
                                             (_E74977509_))
                                         (_E74977509_))))
                                 (_E74977509_)))))
                       (_E74977509_)))))
            (let () (_E74967531_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7447_)
      (let ((_e74487458_ _stx7447_))
        (let ((_E74507462_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74487458_))))
          (let ((_E74497489_
                 (lambda ()
                   (if (gx#stx-pair? _e74487458_)
                       (let ((_e74517466_ (gx#syntax-e _e74487458_)))
                         (let ((_hd74527469_ (##car _e74517466_))
                               (_tl74537471_ (##cdr _e74517466_)))
                           (if (gx#stx-pair? _tl74537471_)
                               (let ((_e74547474_ (gx#syntax-e _tl74537471_)))
                                 (let ((_hd74557477_ (##car _e74547474_))
                                       (_tl74567479_ (##cdr _e74547474_)))
                                   (let ((_hd7482_ _hd74557477_))
                                     (let ((_body7484_ _tl74567479_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7482_)
                                           (let ((_expanders7486_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7482_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7482_
                                                   _expanders7486_)
                                                  (gx#core-expand-local-block
                                                   _stx7447_
                                                   _body7484_)))
                                              gx#current-expander-context
                                              (let ((__obj8833
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8833)
                                                  __obj8833))))
                                           (_E74507462_))))))
                               (_E74507462_))))
                       (_E74507462_)))))
            (let () (_E74497489_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7396_)
      (let ((_e73977407_ _stx7396_))
        (let ((_E73997411_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73977407_))))
          (let ((_E73987443_
                 (lambda ()
                   (if (gx#stx-pair? _e73977407_)
                       (let ((_e74007415_ (gx#syntax-e _e73977407_)))
                         (let ((_hd74017418_ (##car _e74007415_))
                               (_tl74027420_ (##cdr _e74007415_)))
                           (if (gx#stx-pair? _tl74027420_)
                               (let ((_e74037423_ (gx#syntax-e _tl74027420_)))
                                 (let ((_hd74047426_ (##car _e74037423_))
                                       (_tl74057428_ (##cdr _e74037423_)))
                                   (let ((_hd7431_ _hd74047426_))
                                     (let ((_body7433_ _tl74057428_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7431_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7431_
                                                 (make-list
                                                  (gx#stx-length _hd7431_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g74357438_
                                                          _g74367440_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7253
                                                    _g74357438_
                                                    _g74367440_
                                                    '#t))
                                                 _hd7431_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7431_))
                                                (gx#core-expand-local-block
                                                 _stx7396_
                                                 _body7433_)))
                                            gx#current-expander-context
                                            (let ((__obj8834
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj8834)
                                                __obj8834)))
                                           (_E73997411_))))))
                               (_E73997411_))))
                       (_E73997411_)))))
            (let () (_E73987443_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7353_)
      (if (gx#stx-list? _stx7353_)
          (gx#stx-andmap
           (lambda (_bind7355_)
             (let ((_e73567366_ _bind7355_))
               (let ((_E73587370_ (lambda () '#f)))
                 (let ((_E73577392_
                        (lambda ()
                          (if (gx#stx-pair? _e73567366_)
                              (let ((_e73597374_ (gx#syntax-e _e73567366_)))
                                (let ((_hd73607377_ (##car _e73597374_))
                                      (_tl73617379_ (##cdr _e73597374_)))
                                  (let ((_hd7382_ _hd73607377_))
                                    (if (gx#stx-pair? _tl73617379_)
                                        (let ((_e73627384_
                                               (gx#syntax-e _tl73617379_)))
                                          (let ((_hd73637387_
                                                 (##car _e73627384_))
                                                (_tl73647389_
                                                 (##cdr _e73627384_)))
                                            (if (gx#stx-null? _tl73647389_)
                                                (if '#t
                                                    (gx#identifier? _hd7382_)
                                                    (_E73587370_))
                                                (_E73587370_))))
                                        (_E73587370_)))))
                              (_E73587370_)))))
                   (let () (_E73577392_))))))
           _stx7353_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7310_)
      (let ((_e73117321_ _bind7310_))
        (let ((_E73137325_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73117321_))))
          (let ((_E73127349_
                 (lambda ()
                   (if (gx#stx-pair? _e73117321_)
                       (let ((_e73147329_ (gx#syntax-e _e73117321_)))
                         (let ((_hd73157332_ (##car _e73147329_))
                               (_tl73167334_ (##cdr _e73147329_)))
                           (if (gx#stx-pair? _tl73167334_)
                               (let ((_e73177337_ (gx#syntax-e _tl73167334_)))
                                 (let ((_hd73187340_ (##car _e73177337_))
                                       (_tl73197342_ (##cdr _e73177337_)))
                                   (let ((_expr7345_ _hd73187340_))
                                     (if (gx#stx-null? _tl73197342_)
                                         (if '#t
                                             (let ((_g8843_ (gx#core-expand-expression+1
                                                             _expr7345_)))
                                               (begin
                                                 (let ((_g8844_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g8844_ 2))
                                                       (error "Context expects 2 values"
                                                              _g8844_)))
                                                 (let ((_e7347_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8843_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7347_)))
                                             (_E73137325_))
                                         (_E73137325_)))))
                               (_E73137325_))))
                       (_E73137325_)))))
            (let () (_E73127349_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7253
      (lambda (_bind7255_ _e7256_ _rebind?7257_)
        (let ((_e72587268_ _bind7255_))
          (let ((_E72607272_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e72587268_))))
            (let ((_E72597294_
                   (lambda ()
                     (if (gx#stx-pair? _e72587268_)
                         (let ((_e72617276_ (gx#syntax-e _e72587268_)))
                           (let ((_hd72627279_ (##car _e72617276_))
                                 (_tl72637281_ (##cdr _e72617276_)))
                             (let ((_id7284_ _hd72627279_))
                               (if (gx#stx-pair? _tl72637281_)
                                   (let ((_e72647286_
                                          (gx#syntax-e _tl72637281_)))
                                     (let ((_hd72657289_ (##car _e72647286_))
                                           (_tl72667291_ (##cdr _e72647286_)))
                                       (if (gx#stx-null? _tl72667291_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7284_
                                                _e7256_
                                                _rebind?7257_)
                                               (_E72607272_))
                                           (_E72607272_))))
                                   (_E72607272_)))))
                         (_E72607272_)))))
              (let () (_E72597294_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7301_ _e7302_)
          (let ((_rebind?7304_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7253
             _bind7301_
             _e7302_
             _rebind?7304_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g8846_
          (let ((_g8845_ (length _g8846_)))
            (cond ((fx= _g8845_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g8846_))
                  ((fx= _g8845_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7253
                          _g8846_))
                  (else (error "No clause matching arguments" _g8846_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7213_)
      (let ((_e72147224_ _stx7213_))
        (let ((_E72167228_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72147224_))))
          (let ((_E72157250_
                 (lambda ()
                   (if (gx#stx-pair? _e72147224_)
                       (let ((_e72177232_ (gx#syntax-e _e72147224_)))
                         (let ((_hd72187235_ (##car _e72177232_))
                               (_tl72197237_ (##cdr _e72177232_)))
                           (if (gx#stx-pair? _tl72197237_)
                               (let ((_e72207240_ (gx#syntax-e _tl72197237_)))
                                 (let ((_hd72217243_ (##car _e72207240_))
                                       (_tl72227245_ (##cdr _e72207240_)))
                                   (let ((_expr7248_ _hd72217243_))
                                     (if (gx#stx-null? _tl72227245_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7248_)
                                             (_E72167228_))
                                         (_E72167228_)))))
                               (_E72167228_))))
                       (_E72167228_)))))
            (let () (_E72157250_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7172_)
      (let ((_e71737183_ _stx7172_))
        (let ((_E71757187_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71737183_))))
          (let ((_E71747209_
                 (lambda ()
                   (if (gx#stx-pair? _e71737183_)
                       (let ((_e71767191_ (gx#syntax-e _e71737183_)))
                         (let ((_hd71777194_ (##car _e71767191_))
                               (_tl71787196_ (##cdr _e71767191_)))
                           (if (gx#stx-pair? _tl71787196_)
                               (let ((_e71797199_ (gx#syntax-e _tl71787196_)))
                                 (let ((_hd71807202_ (##car _e71797199_))
                                       (_tl71817204_ (##cdr _e71797199_)))
                                   (let ((_e7207_ _hd71807202_))
                                     (if (gx#stx-null? _tl71817204_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7207_)
                                                          '()))
                                              (gx#stx-source _stx7172_))
                                             (_E71757187_))
                                         (_E71757187_)))))
                               (_E71757187_))))
                       (_E71757187_)))))
            (let () (_E71747209_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7131_)
      (let ((_e71327142_ _stx7131_))
        (let ((_E71347146_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71327142_))))
          (let ((_E71337168_
                 (lambda ()
                   (if (gx#stx-pair? _e71327142_)
                       (let ((_e71357150_ (gx#syntax-e _e71327142_)))
                         (let ((_hd71367153_ (##car _e71357150_))
                               (_tl71377155_ (##cdr _e71357150_)))
                           (if (gx#stx-pair? _tl71377155_)
                               (let ((_e71387158_ (gx#syntax-e _tl71377155_)))
                                 (let ((_hd71397161_ (##car _e71387158_))
                                       (_tl71407163_ (##cdr _e71387158_)))
                                   (let ((_e7166_ _hd71397161_))
                                     (if (gx#stx-null? _tl71407163_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7166_)
                                                          '()))
                                              (gx#stx-source _stx7131_))
                                             (_E71347146_))
                                         (_E71347146_)))))
                               (_E71347146_))))
                       (_E71347146_)))))
            (let () (_E71337168_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7088_)
      (let ((_e70897099_ _stx7088_))
        (let ((_E70917103_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70897099_))))
          (let ((_E70907127_
                 (lambda ()
                   (if (gx#stx-pair? _e70897099_)
                       (let ((_e70927107_ (gx#syntax-e _e70897099_)))
                         (let ((_hd70937110_ (##car _e70927107_))
                               (_tl70947112_ (##cdr _e70927107_)))
                           (if (gx#stx-pair? _tl70947112_)
                               (let ((_e70957115_ (gx#syntax-e _tl70947112_)))
                                 (let ((_hd70967118_ (##car _e70957115_))
                                       (_tl70977120_ (##cdr _e70957115_)))
                                   (let ((_rator7123_ _hd70967118_))
                                     (let ((_args7125_ _tl70977120_))
                                       (if (gx#stx-list? _args7125_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7123_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7125_))
                                            (gx#stx-source _stx7088_))
                                           (_E70917103_))))))
                               (_E70917103_))))
                       (_E70917103_)))))
            (let () (_E70907127_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7021_)
      (let ((_e70227038_ _stx7021_))
        (let ((_E70247042_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70227038_))))
          (let ((_E70237084_
                 (lambda ()
                   (if (gx#stx-pair? _e70227038_)
                       (let ((_e70257046_ (gx#syntax-e _e70227038_)))
                         (let ((_hd70267049_ (##car _e70257046_))
                               (_tl70277051_ (##cdr _e70257046_)))
                           (if (gx#stx-pair? _tl70277051_)
                               (let ((_e70287054_ (gx#syntax-e _tl70277051_)))
                                 (let ((_hd70297057_ (##car _e70287054_))
                                       (_tl70307059_ (##cdr _e70287054_)))
                                   (let ((_test7062_ _hd70297057_))
                                     (if (gx#stx-pair? _tl70307059_)
                                         (let ((_e70317064_
                                                (gx#syntax-e _tl70307059_)))
                                           (let ((_hd70327067_
                                                  (##car _e70317064_))
                                                 (_tl70337069_
                                                  (##cdr _e70317064_)))
                                             (let ((_K7072_ _hd70327067_))
                                               (if (gx#stx-pair? _tl70337069_)
                                                   (let ((_e70347074_
                                                          (gx#syntax-e
                                                           _tl70337069_)))
                                                     (let ((_hd70357077_
                                                            (##car _e70347074_))
                                                           (_tl70367079_
                                                            (##cdr _e70347074_)))
                                                       (let ((_E7082_ _hd70357077_))
                                                         (if (gx#stx-null?
                                                              _tl70367079_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7062_)
                                      (cons (gx#core-expand-expression _K7072_)
                                            (cons (gx#core-expand-expression
                                                   _E7082_)
                                                  '()))))
                          (gx#stx-source _stx7021_))
                         (_E70247042_))
                     (_E70247042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E70247042_)))))
                                         (_E70247042_)))))
                               (_E70247042_))))
                       (_E70247042_)))))
            (let () (_E70237084_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx6980_)
      (let ((_e69816991_ _stx6980_))
        (let ((_E69836995_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69816991_))))
          (let ((_E69827017_
                 (lambda ()
                   (if (gx#stx-pair? _e69816991_)
                       (let ((_e69846999_ (gx#syntax-e _e69816991_)))
                         (let ((_hd69857002_ (##car _e69846999_))
                               (_tl69867004_ (##cdr _e69846999_)))
                           (if (gx#stx-pair? _tl69867004_)
                               (let ((_e69877007_ (gx#syntax-e _tl69867004_)))
                                 (let ((_hd69887010_ (##car _e69877007_))
                                       (_tl69897012_ (##cdr _e69877007_)))
                                   (let ((_id7015_ _hd69887010_))
                                     (if (gx#stx-null? _tl69897012_)
                                         (if (gx#core-runtime-ref? _id7015_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7015_
                                                           _stx6980_)
                                                          '()))
                                              (gx#stx-source _stx6980_))
                                             (_E69836995_))
                                         (_E69836995_)))))
                               (_E69836995_))))
                       (_E69836995_)))))
            (let () (_E69827017_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx6926_)
      (let ((_e69276940_ _stx6926_))
        (let ((_E69296944_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69276940_))))
          (let ((_E69286976_
                 (lambda ()
                   (if (gx#stx-pair? _e69276940_)
                       (let ((_e69306948_ (gx#syntax-e _e69276940_)))
                         (let ((_hd69316951_ (##car _e69306948_))
                               (_tl69326953_ (##cdr _e69306948_)))
                           (if (gx#stx-pair? _tl69326953_)
                               (let ((_e69336956_ (gx#syntax-e _tl69326953_)))
                                 (let ((_hd69346959_ (##car _e69336956_))
                                       (_tl69356961_ (##cdr _e69336956_)))
                                   (let ((_id6964_ _hd69346959_))
                                     (if (gx#stx-pair? _tl69356961_)
                                         (let ((_e69366966_
                                                (gx#syntax-e _tl69356961_)))
                                           (let ((_hd69376969_
                                                  (##car _e69366966_))
                                                 (_tl69386971_
                                                  (##cdr _e69366966_)))
                                             (let ((_expr6974_ _hd69376969_))
                                               (if (gx#stx-null? _tl69386971_)
                                                   (if (gx#core-runtime-ref?
                                                        _id6964_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6964_
                             _stx6926_)
                            (cons (gx#core-expand-expression _expr6974_) '())))
                (gx#stx-source _stx6926_))
               (_E69296944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69296944_)))))
                                         (_E69296944_)))))
                               (_E69296944_))))
                       (_E69296944_)))))
            (let () (_E69286976_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx6774_)
      (let ((_generate6776_
             (lambda (_body6806_)
               ((letrec ((_lp6808_
                          (lambda (_rest6810_ _ns6811_ _r6812_)
                            (let ((_e68136828_ _rest6810_))
                              (let ((_E68266832_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e68136828_))))
                                (let ((_E68226836_
                                       (lambda ()
                                         (if (gx#stx-null? _e68136828_)
                                             (if '#t
                                                 (reverse _r6812_)
                                                 (_E68266832_))
                                             (_E68266832_)))))
                                  (let ((_E68156893_
                                         (lambda ()
                                           (if (gx#stx-pair? _e68136828_)
                                               (let ((_e68236840_
                                                      (gx#syntax-e
                                                       _e68136828_)))
                                                 (let ((_hd68246843_
                                                        (##car _e68236840_))
                                                       (_tl68256845_
                                                        (##cdr _e68236840_)))
                                                   (let ((_hd6848_
                                                          _hd68246843_))
                                                     (let ((_rest6850_
                                                            _tl68256845_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd6848_)
                                                               (_lp6808_
                                                                _rest6850_
                                                                _ns6811_
                                                                (cons (cons _hd6848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns6811_
                                              (gx#stx-identifier
                                               _hd6848_
                                               _ns6811_
                                               '"#"
                                               _hd6848_)
                                              _hd6848_)
                                          '()))
                              _r6812_))
                       (let ((_e68516861_ _hd6848_))
                         (let ((_E68536865_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e68516861_))))
                           (let ((_E68526889_
                                  (lambda ()
                                    (if (gx#stx-pair? _e68516861_)
                                        (let ((_e68546869_
                                               (gx#syntax-e _e68516861_)))
                                          (let ((_hd68556872_
                                                 (##car _e68546869_))
                                                (_tl68566874_
                                                 (##cdr _e68546869_)))
                                            (let ((_id6877_ _hd68556872_))
                                              (if (gx#stx-pair? _tl68566874_)
                                                  (let ((_e68576879_
                                                         (gx#syntax-e
                                                          _tl68566874_)))
                                                    (let ((_hd68586882_
                                                           (##car _e68576879_))
                                                          (_tl68596884_
                                                           (##cdr _e68576879_)))
                                                      (let ((_eid6887_
                                                             _hd68586882_))
                                                        (if (gx#stx-null?
                                                             _tl68596884_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6877_)
                            (gx#identifier? _eid6887_)
                            '#f)
                        (_lp6808_
                         _rest6850_
                         _ns6811_
                         (cons (cons _id6877_ (cons _eid6887_ '())) _r6812_))
                        (_E68536865_))
                    (_E68536865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68536865_)))))
                                        (_E68536865_)))))
                             (let () (_E68526889_))))))
                   (_E68226836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E68226836_)))))
                                    (let ((_E68146922_
                                           (lambda ()
                                             (if (gx#stx-pair? _e68136828_)
                                                 (let ((_e68166897_
                                                        (gx#syntax-e
                                                         _e68136828_)))
                                                   (let ((_hd68176900_
                                                          (##car _e68166897_))
                                                         (_tl68186902_
                                                          (##cdr _e68166897_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd68176900_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl68186902_)
                                                             (let ((_e68196905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl68186902_)))
                       (let ((_hd68206908_ (##car _e68196905_))
                             (_tl68216910_ (##cdr _e68196905_)))
                         (let ((_ns6913_ _hd68206908_))
                           (let ((_rest6915_ _tl68216910_))
                             (if '#t
                                 (let ((_ns6920_
                                        (if (gx#identifier? _ns6913_)
                                            (symbol->string
                                             (gx#stx-e _ns6913_))
                                            (if (let ((_$e6917_
                                                       (gx#stx-string?
                                                        _ns6913_)))
                                                  (if _$e6917_
                                                      _$e6917_
                                                      (gx#stx-false?
                                                       _ns6913_)))
                                                (gx#stx-e _ns6913_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx6774_
                                                 _ns6913_)))))
                                   (_lp6808_ _rest6915_ _ns6920_ _r6812_))
                                 (_E68156893_))))))
                     (_E68156893_))
                 (_E68156893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E68156893_)))))
                                      (let () (_E68146922_))))))))))
                  _lp6808_)
                _body6806_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e67776784_ _stx6774_))
          (let ((_E67796788_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67776784_))))
            (let ((_E67786802_
                   (lambda ()
                     (if (gx#stx-pair? _e67776784_)
                         (let ((_e67806792_ (gx#syntax-e _e67776784_)))
                           (let ((_hd67816795_ (##car _e67806792_))
                                 (_tl67826797_ (##cdr _e67806792_)))
                             (let ((_body6800_ _tl67826797_))
                               (if (gx#stx-list? _body6800_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate6776_ _body6800_))
                                   (_E67796788_)))))
                         (_E67796788_)))))
              (let () (_E67786802_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6720_)
      (let ((_e67216734_ _stx6720_))
        (let ((_E67236738_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67216734_))))
          (let ((_E67226770_
                 (lambda ()
                   (if (gx#stx-pair? _e67216734_)
                       (let ((_e67246742_ (gx#syntax-e _e67216734_)))
                         (let ((_hd67256745_ (##car _e67246742_))
                               (_tl67266747_ (##cdr _e67246742_)))
                           (if (gx#stx-pair? _tl67266747_)
                               (let ((_e67276750_ (gx#syntax-e _tl67266747_)))
                                 (let ((_hd67286753_ (##car _e67276750_))
                                       (_tl67296755_ (##cdr _e67276750_)))
                                   (let ((_hd6758_ _hd67286753_))
                                     (if (gx#stx-pair? _tl67296755_)
                                         (let ((_e67306760_
                                                (gx#syntax-e _tl67296755_)))
                                           (let ((_hd67316763_
                                                  (##car _e67306760_))
                                                 (_tl67326765_
                                                  (##cdr _e67306760_)))
                                             (let ((_expr6768_ _hd67316763_))
                                               (if (gx#stx-null? _tl67326765_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd6758_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd6758_)
                           (cons _expr6768_ '())))
               (_E67236738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67236738_)))))
                                         (_E67236738_)))))
                               (_E67236738_))))
                       (_E67236738_)))))
            (let () (_E67226770_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6666_)
      (let ((_e66676680_ _stx6666_))
        (let ((_E66696684_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66676680_))))
          (let ((_E66686716_
                 (lambda ()
                   (if (gx#stx-pair? _e66676680_)
                       (let ((_e66706688_ (gx#syntax-e _e66676680_)))
                         (let ((_hd66716691_ (##car _e66706688_))
                               (_tl66726693_ (##cdr _e66706688_)))
                           (if (gx#stx-pair? _tl66726693_)
                               (let ((_e66736696_ (gx#syntax-e _tl66726693_)))
                                 (let ((_hd66746699_ (##car _e66736696_))
                                       (_tl66756701_ (##cdr _e66736696_)))
                                   (let ((_hd6704_ _hd66746699_))
                                     (if (gx#stx-pair? _tl66756701_)
                                         (let ((_e66766706_
                                                (gx#syntax-e _tl66756701_)))
                                           (let ((_hd66776709_
                                                  (##car _e66766706_))
                                                 (_tl66786711_
                                                  (##cdr _e66766706_)))
                                             (let ((_expr6714_ _hd66776709_))
                                               (if (gx#stx-null? _tl66786711_)
                                                   (if (gx#identifier?
                                                        _hd6704_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6714_ '())))
               (_E66696684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66696684_)))))
                                         (_E66696684_)))))
                               (_E66696684_))))
                       (_E66696684_)))))
            (let () (_E66686716_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6612_)
      (let ((_e66136626_ _stx6612_))
        (let ((_E66156630_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66136626_))))
          (let ((_E66146662_
                 (lambda ()
                   (if (gx#stx-pair? _e66136626_)
                       (let ((_e66166634_ (gx#syntax-e _e66136626_)))
                         (let ((_hd66176637_ (##car _e66166634_))
                               (_tl66186639_ (##cdr _e66166634_)))
                           (if (gx#stx-pair? _tl66186639_)
                               (let ((_e66196642_ (gx#syntax-e _tl66186639_)))
                                 (let ((_hd66206645_ (##car _e66196642_))
                                       (_tl66216647_ (##cdr _e66196642_)))
                                   (let ((_id6650_ _hd66206645_))
                                     (if (gx#stx-pair? _tl66216647_)
                                         (let ((_e66226652_
                                                (gx#syntax-e _tl66216647_)))
                                           (let ((_hd66236655_
                                                  (##car _e66226652_))
                                                 (_tl66246657_
                                                  (##cdr _e66226652_)))
                                             (let ((_alias-id6660_
                                                    _hd66236655_))
                                               (if (gx#stx-null? _tl66246657_)
                                                   (if (if (gx#identifier?
                                                            _id6650_)
                                                           (gx#identifier?
                                                            _alias-id6660_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6660_ '())))
               (_E66156630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66156630_)))))
                                         (_E66156630_)))))
                               (_E66156630_))))
                       (_E66156630_)))))
            (let () (_E66146662_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6569_)
      (let ((_e65706580_ _stx6569_))
        (let ((_E65726584_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65706580_))))
          (let ((_E65716608_
                 (lambda ()
                   (if (gx#stx-pair? _e65706580_)
                       (let ((_e65736588_ (gx#syntax-e _e65706580_)))
                         (let ((_hd65746591_ (##car _e65736588_))
                               (_tl65756593_ (##cdr _e65736588_)))
                           (if (gx#stx-pair? _tl65756593_)
                               (let ((_e65766596_ (gx#syntax-e _tl65756593_)))
                                 (let ((_hd65776599_ (##car _e65766596_))
                                       (_tl65786601_ (##cdr _e65766596_)))
                                   (let ((_hd6604_ _hd65776599_))
                                     (let ((_body6606_ _tl65786601_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6604_)
                                               (if (gx#stx-list? _body6606_)
                                                   (not (gx#stx-null?
                                                         _body6606_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6604_)
                                            _body6606_)
                                           (_E65726584_))))))
                               (_E65726584_))))
                       (_E65726584_)))))
            (let () (_E65716608_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6505_)
      (let ((_generate6507_
             (lambda (_clause6537_)
               (let ((_e65386545_ _clause6537_))
                 (let ((_E65406549_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6505_
                           _clause6537_))))
                   (let ((_E65396565_
                          (lambda ()
                            (if (gx#stx-pair? _e65386545_)
                                (let ((_e65416553_ (gx#syntax-e _e65386545_)))
                                  (let ((_hd65426556_ (##car _e65416553_))
                                        (_tl65436558_ (##cdr _e65416553_)))
                                    (let ((_hd6561_ _hd65426556_))
                                      (let ((_body6563_ _tl65436558_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6561_)
                                                (if (gx#stx-list? _body6563_)
                                                    (not (gx#stx-null?
                                                          _body6563_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6561_)
                                                   _body6563_)
                                             (gx#stx-source _clause6537_))
                                            (_E65406549_))))))
                                (_E65406549_)))))
                     (let () (_E65396565_))))))))
        (let ((_e65086515_ _stx6505_))
          (let ((_E65106519_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e65086515_))))
            (let ((_E65096533_
                   (lambda ()
                     (if (gx#stx-pair? _e65086515_)
                         (let ((_e65116523_ (gx#syntax-e _e65086515_)))
                           (let ((_hd65126526_ (##car _e65116523_))
                                 (_tl65136528_ (##cdr _e65116523_)))
                             (let ((_clauses6531_ _tl65136528_))
                               (if (gx#stx-list? _clauses6531_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6507_ _clauses6531_))
                                   (_E65106519_)))))
                         (_E65106519_)))))
              (let () (_E65096533_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6404
      (lambda (_stx6406_ _form6407_)
        (let ((_generate6409_
               (lambda (_bind6452_)
                 (let ((_e64536463_ _bind6452_))
                   (let ((_E64556467_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6406_
                             _bind6452_))))
                     (let ((_E64546491_
                            (lambda ()
                              (if (gx#stx-pair? _e64536463_)
                                  (let ((_e64566471_
                                         (gx#syntax-e _e64536463_)))
                                    (let ((_hd64576474_ (##car _e64566471_))
                                          (_tl64586476_ (##cdr _e64566471_)))
                                      (let ((_ids6479_ _hd64576474_))
                                        (if (gx#stx-pair? _tl64586476_)
                                            (let ((_e64596481_
                                                   (gx#syntax-e _tl64586476_)))
                                              (let ((_hd64606484_
                                                     (##car _e64596481_))
                                                    (_tl64616486_
                                                     (##cdr _e64596481_)))
                                                (let ((_expr6489_
                                                       _hd64606484_))
                                                  (if (gx#stx-null?
                                                       _tl64616486_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6479_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6479_)
                        (cons _expr6489_ '()))
                  (_E64556467_))
              (_E64556467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E64556467_)))))
                                  (_E64556467_)))))
                       (let () (_E64546491_))))))))
          (let ((_e64106420_ _stx6406_))
            (let ((_E64126424_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e64106420_))))
              (let ((_E64116448_
                     (lambda ()
                       (if (gx#stx-pair? _e64106420_)
                           (let ((_e64136428_ (gx#syntax-e _e64106420_)))
                             (let ((_hd64146431_ (##car _e64136428_))
                                   (_tl64156433_ (##cdr _e64136428_)))
                               (if (gx#stx-pair? _tl64156433_)
                                   (let ((_e64166436_
                                          (gx#syntax-e _tl64156433_)))
                                     (let ((_hd64176439_ (##car _e64166436_))
                                           (_tl64186441_ (##cdr _e64166436_)))
                                       (let ((_hd6444_ _hd64176439_))
                                         (let ((_body6446_ _tl64186441_))
                                           (if (if (gx#stx-list? _hd6444_)
                                                   (if (gx#stx-list?
                                                        _body6446_)
                                                       (not (gx#stx-null?
                                                             _body6446_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6407_
                                                (gx#stx-map1
                                                 _generate6409_
                                                 _hd6444_)
                                                _body6446_)
                                               (_E64126424_))))))
                                   (_E64126424_))))
                           (_E64126424_)))))
                (let () (_E64116448_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6498_)
          (let ((_form6500_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6404
             _stx6498_
             _form6500_))))
      (define gx#macro-expand-let-values
        (lambda _g8848_
          (let ((_g8847_ (length _g8848_)))
            (cond ((fx= _g8847_ 1)
                   (apply gx#macro-expand-let-values__0 _g8848_))
                  ((fx= _g8847_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6404 _g8848_))
                  (else (error "No clause matching arguments" _g8848_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6403_)
      (gx#macro-expand-let-values__opt-lambda6404 _stx6403_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6401_)
      (gx#macro-expand-let-values__opt-lambda6404
       _stx6401_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6292_)
      (let ((_e62936319_ _stx6292_))
        (let ((_E63056323_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62936319_))))
          (let ((_E62956365_
                 (lambda ()
                   (if (gx#stx-pair? _e62936319_)
                       (let ((_e63066327_ (gx#syntax-e _e62936319_)))
                         (let ((_hd63076330_ (##car _e63066327_))
                               (_tl63086332_ (##cdr _e63066327_)))
                           (if (gx#stx-pair? _tl63086332_)
                               (let ((_e63096335_ (gx#syntax-e _tl63086332_)))
                                 (let ((_hd63106338_ (##car _e63096335_))
                                       (_tl63116340_ (##cdr _e63096335_)))
                                   (let ((_test6343_ _hd63106338_))
                                     (if (gx#stx-pair? _tl63116340_)
                                         (let ((_e63126345_
                                                (gx#syntax-e _tl63116340_)))
                                           (let ((_hd63136348_
                                                  (##car _e63126345_))
                                                 (_tl63146350_
                                                  (##cdr _e63126345_)))
                                             (let ((_K6353_ _hd63136348_))
                                               (if (gx#stx-pair? _tl63146350_)
                                                   (let ((_e63156355_
                                                          (gx#syntax-e
                                                           _tl63146350_)))
                                                     (let ((_hd63166358_
                                                            (##car _e63156355_))
                                                           (_tl63176360_
                                                            (##cdr _e63156355_)))
                                                       (let ((_E6363_ _hd63166358_))
                                                         (if (gx#stx-null?
                                                              _tl63176360_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6343_ _K6353_ _E6363_)
                         (_E63056323_))
                     (_E63056323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63056323_)))))
                                         (_E63056323_)))))
                               (_E63056323_))))
                       (_E63056323_)))))
            (let ((_E62946397_
                   (lambda ()
                     (if (gx#stx-pair? _e62936319_)
                         (let ((_e62966369_ (gx#syntax-e _e62936319_)))
                           (let ((_hd62976372_ (##car _e62966369_))
                                 (_tl62986374_ (##cdr _e62966369_)))
                             (if (gx#stx-pair? _tl62986374_)
                                 (let ((_e62996377_
                                        (gx#syntax-e _tl62986374_)))
                                   (let ((_hd63006380_ (##car _e62996377_))
                                         (_tl63016382_ (##cdr _e62996377_)))
                                     (let ((_test6385_ _hd63006380_))
                                       (if (gx#stx-pair? _tl63016382_)
                                           (let ((_e63026387_
                                                  (gx#syntax-e _tl63016382_)))
                                             (let ((_hd63036390_
                                                    (##car _e63026387_))
                                                   (_tl63046392_
                                                    (##cdr _e63026387_)))
                                               (let ((_K6395_ _hd63036390_))
                                                 (if (gx#stx-null?
                                                      _tl63046392_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6385_
                                                          _K6395_
                                                          '#!void)
                                                         (_E62956365_))
                                                     (_E62956365_)))))
                                           (_E62956365_)))))
                                 (_E62956365_))))
                         (_E62956365_)))))
              (let () (_E62946397_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6280_ _yid6281_)
      (let ((_xe6283_ (gx#resolve-identifier__0 _xid6280_))
            (_ye6284_ (gx#resolve-identifier__0 _yid6281_)))
        (if (if _xe6283_ _ye6284_ '#f)
            (let ((_$e6286_ (eq? _xe6283_ _ye6284_)))
              (if _$e6286_
                  _$e6286_
                  (if (##structure-instance-of? _xe6283_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6284_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6283_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6284_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6289_ _xe6283_)) (if _$e6289_ _$e6289_ _ye6284_))
                '#f
                (gx#stx-eq? _xid6280_ _yid6281_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6264_ _yid6265_)
      (let ((_context6267_
             (lambda (_e6278_)
               (if (##structure-direct-instance-of?
                    _e6278_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6278_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6268_
               (lambda (_e6276_)
                 (if (symbol? _e6276_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6276_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6276_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6276_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6269_
                 (lambda (_e6274_)
                   (if (symbol? _e6274_)
                       _e6274_
                       (gx#syntax-local-unwrap _e6274_)))))
            (let ((_x6271_ (_unwrap6269_ _xid6264_))
                  (_y6272_ (_unwrap6269_ _yid6265_)))
              (if (gx#stx-eq? _x6271_ _y6272_)
                  (if (eq? (_context6267_ _x6271_) (_context6267_ _y6272_))
                      (andmap eq? (_marks6268_ _x6271_) (_marks6268_ _y6272_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6262_)
      (if (gx#identifier? _stx6262_) (gx#core-identifier=? _stx6262_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6260_)
      (if (gx#identifier? _stx6260_)
          (gx#core-identifier=? _stx6260_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6258_)
      (if (gx#identifier? _x6258_)
          (if (not (gx#underscore? _x6258_)) _x6258_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6202
      (lambda (_stx6204_ _where6205_)
        ((letrec ((_lp6207_
                   (lambda (_rest6209_)
                     (let ((_rest62106218_ _rest6209_))
                       (let ((_E62136222_
                              (lambda ()
                                (error '"No clause matching" _rest62106218_))))
                         (let ((_else62126226_ (lambda () '#t)))
                           (let ((_K62146236_
                                  (lambda (_rest6229_ _hd6230_)
                                    (if (not (gx#identifier? _hd6230_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6205_
                                         _hd6230_)
                                        (if (find (lambda (_g62316233_)
                                                    (gx#bound-identifier=?
                                                     _g62316233_
                                                     _hd6230_))
                                                  _rest6229_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6205_
                                             _hd6230_)
                                            (_lp6207_ _rest6229_))))))
                             (if (##pair? _rest62106218_)
                                 (let ((_hd62156239_ (##car _rest62106218_))
                                       (_tl62166241_ (##cdr _rest62106218_)))
                                   (let ((_hd6244_ _hd62156239_))
                                     (let ((_rest6246_ _tl62166241_))
                                       (_K62146236_ _rest6246_ _hd6244_))))
                                 (_else62126226_)))))))))
           _lp6207_)
         (gx#syntax->list _stx6204_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6251_)
          (let ((_where6253_ _stx6251_))
            (gx#check-duplicate-identifiers__opt-lambda6202
             _stx6251_
             _where6253_))))
      (define gx#check-duplicate-identifiers
        (lambda _g8850_
          (let ((_g8849_ (length _g8850_)))
            (cond ((fx= _g8849_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g8850_))
                  ((fx= _g8849_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6202
                          _g8850_))
                  (else (error "No clause matching arguments" _g8850_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6196_)
      (gx#stx-andmap
       (lambda (_x6198_)
         (let ((_$e6200_ (gx#identifier? _x6198_)))
           (if _$e6200_ _$e6200_ (gx#stx-false? _x6198_))))
       _stx6196_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6158
      (lambda (_stx6160_ _rebind?6161_ _phi6162_ _ctx6163_)
        (gx#stx-for-each1
         (lambda (_id6165_)
           (if (gx#identifier? _id6165_)
               (gx#core-bind-runtime!__opt-lambda6094
                _id6165_
                _rebind?6161_
                _phi6162_
                _ctx6163_)
               '#!void))
         _stx6160_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6170_)
          (let ((_rebind?6172_ '#f))
            (let ((_phi6174_ (gx#current-expander-phi)))
              (let ((_ctx6176_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6158
                 _stx6170_
                 _rebind?6172_
                 _phi6174_
                 _ctx6176_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6178_ _rebind?6179_)
          (let ((_phi6181_ (gx#current-expander-phi)))
            (let ((_ctx6183_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6158
               _stx6178_
               _rebind?6179_
               _phi6181_
               _ctx6183_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6185_ _rebind?6186_ _phi6187_)
          (let ((_ctx6189_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6158
             _stx6185_
             _rebind?6186_
             _phi6187_
             _ctx6189_))))
      (define gx#core-bind-values!
        (lambda _g8852_
          (let ((_g8851_ (length _g8852_)))
            (cond ((fx= _g8851_ 1) (apply gx#core-bind-values!__0 _g8852_))
                  ((fx= _g8851_ 2) (apply gx#core-bind-values!__1 _g8852_))
                  ((fx= _g8851_ 3) (apply gx#core-bind-values!__2 _g8852_))
                  ((fx= _g8851_ 4)
                   (apply gx#core-bind-values!__opt-lambda6158 _g8852_))
                  (else (error "No clause matching arguments" _g8852_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6155_)
      (gx#stx-map1
       (lambda (_x6157_)
         (if (gx#identifier? _x6157_) (gx#core-quote-syntax__0 _x6157_) '#f))
       _stx6155_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6148_)
      (if (gx#identifier? _stx6148_)
          (let ((_bind6150_ (gx#resolve-identifier__0 _stx6148_)))
            (let ((_$e6152_ (not _bind6150_)))
              (if _$e6152_
                  _$e6152_
                  (##structure-instance-of?
                   _bind6150_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6137_ _form6138_)
      (let ((_bind6140_ (gx#resolve-identifier__0 _id6137_)))
        (if (##structure-instance-of? _bind6140_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6137_)
            (if (not _bind6140_)
                (if (let ((_$e6142_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6142_
                          _$e6142_
                          (let ((_$e6145_
                                 (gx#core-context-rebind?__opt-lambda4006
                                  (gx#core-context-top__0))))
                            (if _$e6145_
                                _$e6145_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6137_))))))
                    (gx#core-quote-syntax__0 _id6137_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6138_
                     _id6137_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6138_
                 _id6137_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6094
      (lambda (_id6096_ _rebind?6097_ _phi6098_ _ctx6099_)
        (let ((_key6101_ (gx#core-identifier-key _id6096_)))
          (let ((_eid6103_
                 (gx#make-binding-id__opt-lambda5861
                  _key6101_
                  '#f
                  _phi6098_
                  _ctx6099_)))
            (let ((_bind6105_
                   (if (##structure-instance-of?
                        _ctx6099_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6103_
                        _key6101_
                        _phi6098_
                        _ctx6099_)
                       (if (##structure-instance-of?
                            _ctx6099_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6103_
                            _key6101_
                            _phi6098_)
                           (if (##structure-instance-of?
                                _ctx6099_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6103_
                                _key6101_
                                _phi6098_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6103_
                                _key6101_
                                _phi6098_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4452
                 _id6096_
                 _bind6105_
                 _rebind?6097_
                 _phi6098_
                 _ctx6099_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6111_)
          (let ((_rebind?6113_ '#f))
            (let ((_phi6115_ (gx#current-expander-phi)))
              (let ((_ctx6117_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6094
                 _id6111_
                 _rebind?6113_
                 _phi6115_
                 _ctx6117_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6119_ _rebind?6120_)
          (let ((_phi6122_ (gx#current-expander-phi)))
            (let ((_ctx6124_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6094
               _id6119_
               _rebind?6120_
               _phi6122_
               _ctx6124_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6126_ _rebind?6127_ _phi6128_)
          (let ((_ctx6130_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6094
             _id6126_
             _rebind?6127_
             _phi6128_
             _ctx6130_))))
      (define gx#core-bind-runtime!
        (lambda _g8854_
          (let ((_g8853_ (length _g8854_)))
            (cond ((fx= _g8853_ 1) (apply gx#core-bind-runtime!__0 _g8854_))
                  ((fx= _g8853_ 2) (apply gx#core-bind-runtime!__1 _g8854_))
                  ((fx= _g8853_ 3) (apply gx#core-bind-runtime!__2 _g8854_))
                  ((fx= _g8853_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6094 _g8854_))
                  (else (error "No clause matching arguments" _g8854_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6049
      (lambda (_id6051_ _eid6052_ _rebind?6053_ _phi6054_ _ctx6055_)
        (let ((_key6057_ (gx#core-identifier-key _id6051_)))
          (let ((_bind6059_
                 (if (##structure-instance-of? _ctx6055_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6052_
                      _key6057_
                      _phi6054_
                      _ctx6055_)
                     (if (##structure-instance-of?
                          _ctx6055_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6052_
                          _key6057_
                          _phi6054_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6052_
                          _key6057_
                          _phi6054_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4452
               _id6051_
               _bind6059_
               _rebind?6053_
               _phi6054_
               _ctx6055_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6065_ _eid6066_)
          (let ((_rebind?6068_ '#f))
            (let ((_phi6070_ (gx#current-expander-phi)))
              (let ((_ctx6072_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6049
                 _id6065_
                 _eid6066_
                 _rebind?6068_
                 _phi6070_
                 _ctx6072_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6074_ _eid6075_ _rebind?6076_)
          (let ((_phi6078_ (gx#current-expander-phi)))
            (let ((_ctx6080_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6049
               _id6074_
               _eid6075_
               _rebind?6076_
               _phi6078_
               _ctx6080_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6082_ _eid6083_ _rebind?6084_ _phi6085_)
          (let ((_ctx6087_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6049
             _id6082_
             _eid6083_
             _rebind?6084_
             _phi6085_
             _ctx6087_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g8856_
          (let ((_g8855_ (length _g8856_)))
            (cond ((fx= _g8855_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g8856_))
                  ((fx= _g8855_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g8856_))
                  ((fx= _g8855_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g8856_))
                  ((fx= _g8855_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6049
                          _g8856_))
                  (else (error "No clause matching arguments" _g8856_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6009
      (lambda (_id6011_ _eid6012_ _rebind?6013_ _phi6014_ _ctx6015_)
        (gx#bind-identifier!__opt-lambda4452
         _id6011_
         (##structure
          gx#extern-binding::t
          _eid6012_
          (gx#core-identifier-key _id6011_)
          _phi6014_)
         _rebind?6013_
         _phi6014_
         _ctx6015_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6020_ _eid6021_)
          (let ((_rebind?6023_ '#f))
            (let ((_phi6025_ (gx#current-expander-phi)))
              (let ((_ctx6027_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6009
                 _id6020_
                 _eid6021_
                 _rebind?6023_
                 _phi6025_
                 _ctx6027_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6029_ _eid6030_ _rebind?6031_)
          (let ((_phi6033_ (gx#current-expander-phi)))
            (let ((_ctx6035_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6009
               _id6029_
               _eid6030_
               _rebind?6031_
               _phi6033_
               _ctx6035_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6037_ _eid6038_ _rebind?6039_ _phi6040_)
          (let ((_ctx6042_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6009
             _id6037_
             _eid6038_
             _rebind?6039_
             _phi6040_
             _ctx6042_))))
      (define gx#core-bind-extern!
        (lambda _g8858_
          (let ((_g8857_ (length _g8858_)))
            (cond ((fx= _g8857_ 2) (apply gx#core-bind-extern!__0 _g8858_))
                  ((fx= _g8857_ 3) (apply gx#core-bind-extern!__1 _g8858_))
                  ((fx= _g8857_ 4) (apply gx#core-bind-extern!__2 _g8858_))
                  ((fx= _g8857_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6009 _g8858_))
                  (else (error "No clause matching arguments" _g8858_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda5963
      (lambda (_id5965_ _e5966_ _rebind?5967_ _phi5968_ _ctx5969_)
        (gx#bind-identifier!__opt-lambda4452
         _id5965_
         (let ((_key5974_ (gx#core-identifier-key _id5965_))
               (_e5975_ (if (let ((_$e5971_
                                   (##structure-instance-of?
                                    _e5966_
                                    'gx#expander::t)))
                              (if _$e5971_
                                  _$e5971_
                                  (##structure-instance-of?
                                   _e5966_
                                   'gx#expander-context::t)))
                            _e5966_
                            (##structure
                             gx#user-expander::t
                             _e5966_
                             _ctx5969_
                             _phi5968_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda5861
             _key5974_
             '#t
             _phi5968_
             _ctx5969_)
            _key5974_
            _phi5968_
            _e5975_))
         _rebind?5967_
         _phi5968_
         _ctx5969_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id5980_ _e5981_)
          (let ((_rebind?5983_ '#f))
            (let ((_phi5985_ (gx#current-expander-phi)))
              (let ((_ctx5987_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda5963
                 _id5980_
                 _e5981_
                 _rebind?5983_
                 _phi5985_
                 _ctx5987_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id5989_ _e5990_ _rebind?5991_)
          (let ((_phi5993_ (gx#current-expander-phi)))
            (let ((_ctx5995_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda5963
               _id5989_
               _e5990_
               _rebind?5991_
               _phi5993_
               _ctx5995_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id5997_ _e5998_ _rebind?5999_ _phi6000_)
          (let ((_ctx6002_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda5963
             _id5997_
             _e5998_
             _rebind?5999_
             _phi6000_
             _ctx6002_))))
      (define gx#core-bind-syntax!
        (lambda _g8860_
          (let ((_g8859_ (length _g8860_)))
            (cond ((fx= _g8859_ 2) (apply gx#core-bind-syntax!__0 _g8860_))
                  ((fx= _g8859_ 3) (apply gx#core-bind-syntax!__1 _g8860_))
                  ((fx= _g8859_ 4) (apply gx#core-bind-syntax!__2 _g8860_))
                  ((fx= _g8859_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda5963 _g8860_))
                  (else (error "No clause matching arguments" _g8860_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda5946
      (lambda (_id5948_ _e5949_ _rebind?5950_)
        (gx#core-bind-syntax!__opt-lambda5963
         _id5948_
         _e5949_
         _rebind?5950_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id5955_ _e5956_)
          (let ((_rebind?5958_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda5946
             _id5955_
             _e5956_
             _rebind?5958_))))
      (define gx#core-bind-root-syntax!
        (lambda _g8862_
          (let ((_g8861_ (length _g8862_)))
            (cond ((fx= _g8861_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g8862_))
                  ((fx= _g8861_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda5946 _g8862_))
                  (else (error "No clause matching arguments" _g8862_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda5904
      (lambda (_id5906_ _alias-id5907_ _rebind?5908_ _phi5909_ _ctx5910_)
        (gx#bind-identifier!__opt-lambda4452
         _id5906_
         (let ((_key5912_ (gx#core-identifier-key _id5906_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda5861
             _key5912_
             '#t
             _phi5909_
             _ctx5910_)
            _key5912_
            _phi5909_
            _alias-id5907_))
         _rebind?5908_
         _phi5909_
         _ctx5910_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id5917_ _alias-id5918_)
          (let ((_rebind?5920_ '#f))
            (let ((_phi5922_ (gx#current-expander-phi)))
              (let ((_ctx5924_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda5904
                 _id5917_
                 _alias-id5918_
                 _rebind?5920_
                 _phi5922_
                 _ctx5924_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id5926_ _alias-id5927_ _rebind?5928_)
          (let ((_phi5930_ (gx#current-expander-phi)))
            (let ((_ctx5932_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda5904
               _id5926_
               _alias-id5927_
               _rebind?5928_
               _phi5930_
               _ctx5932_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id5934_ _alias-id5935_ _rebind?5936_ _phi5937_)
          (let ((_ctx5939_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda5904
             _id5934_
             _alias-id5935_
             _rebind?5936_
             _phi5937_
             _ctx5939_))))
      (define gx#core-bind-alias!
        (lambda _g8864_
          (let ((_g8863_ (length _g8864_)))
            (cond ((fx= _g8863_ 2) (apply gx#core-bind-alias!__0 _g8864_))
                  ((fx= _g8863_ 3) (apply gx#core-bind-alias!__1 _g8864_))
                  ((fx= _g8863_ 4) (apply gx#core-bind-alias!__2 _g8864_))
                  ((fx= _g8863_ 5)
                   (apply gx#core-bind-alias!__opt-lambda5904 _g8864_))
                  (else (error "No clause matching arguments" _g8864_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda5861
      (lambda (_key5863_ _syntax?5864_ _phi5865_ _ctx5866_)
        (if (uninterned-symbol? _key5863_)
            (gensym 'L)
            (if (pair? _key5863_)
                (gensym (car _key5863_))
                (if (##structure-instance-of? _ctx5866_ 'gx#top-context::t)
                    (let ((_ns5868_
                           (gx#core-context-namespace__opt-lambda3989
                            _ctx5866_)))
                      (if (if (fxzero? _phi5865_) (not _syntax?5864_) '#f)
                          (if _ns5868_
                              (make-symbol _ns5868_ '"#" _key5863_)
                              _key5863_)
                          (if _syntax?5864_
                              (make-symbol
                               (let ((_$e5870_ _ns5868_))
                                 (if _$e5870_ _$e5870_ '""))
                               '"[:"
                               (number->string _phi5865_)
                               '":]#"
                               _key5863_)
                              (make-symbol
                               (let ((_$e5873_ _ns5868_))
                                 (if _$e5873_ _$e5873_ '""))
                               '"["
                               (number->string _phi5865_)
                               '"]#"
                               _key5863_))))
                    (gensym _key5863_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key5879_)
          (let ((_syntax?5881_ '#f))
            (let ((_phi5883_ (gx#current-expander-phi)))
              (let ((_ctx5885_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda5861
                 _key5879_
                 _syntax?5881_
                 _phi5883_
                 _ctx5885_))))))
      (define gx#make-binding-id__1
        (lambda (_key5887_ _syntax?5888_)
          (let ((_phi5890_ (gx#current-expander-phi)))
            (let ((_ctx5892_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda5861
               _key5887_
               _syntax?5888_
               _phi5890_
               _ctx5892_)))))
      (define gx#make-binding-id__2
        (lambda (_key5894_ _syntax?5895_ _phi5896_)
          (let ((_ctx5898_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda5861
             _key5894_
             _syntax?5895_
             _phi5896_
             _ctx5898_))))
      (define gx#make-binding-id
        (lambda _g8866_
          (let ((_g8865_ (length _g8866_)))
            (cond ((fx= _g8865_ 1) (apply gx#make-binding-id__0 _g8866_))
                  ((fx= _g8865_ 2) (apply gx#make-binding-id__1 _g8866_))
                  ((fx= _g8865_ 3) (apply gx#make-binding-id__2 _g8866_))
                  ((fx= _g8865_ 4)
                   (apply gx#make-binding-id__opt-lambda5861 _g8866_))
                  (else (error "No clause matching arguments" _g8866_)))))))))
