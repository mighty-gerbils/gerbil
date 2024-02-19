(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708337965)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx165643_)
        (letrec ((_expand-special165645_
                  (lambda (_hd165647_ _K165648_ _rest165649_ _r165650_)
                    (_K165648_
                     _rest165649_
                     (cons (gx#core-expand-top _hd165647_) _r165650_)))))
          (gx#core-expand-block__0 _stx165643_ _expand-special165645_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx165396_)
        (letrec ((_expand-special165398_
                  (lambda (_hd165518_ _K165519_ _rest165520_ _r165521_)
                    (let* ((_K165525_
                            (lambda (_e165523_)
                              (_K165519_
                               _rest165520_
                               (cons _e165523_ _r165521_))))
                           (_e165526165555_ _hd165518_)
                           (_E165550165559_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e165526165555_)))
                           (_E165546165571_
                            (lambda ()
                              (if (gx#stx-pair? _e165526165555_)
                                  (let ((_e165551165563_
                                         (gx#syntax-e _e165526165555_)))
                                    (let ((_hd165552165566_
                                           (##car _e165551165563_))
                                          (_tl165553165568_
                                           (##cdr _e165551165563_)))
                                      (if (and (gx#identifier?
                                                _hd165552165566_)
                                               (gx#core-identifier=?
                                                _hd165552165566_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K165525_
                                               (gx#core-expand-define-runtime%
                                                _hd165518_))
                                              (_E165550165559_))
                                          (_E165550165559_))))
                                  (_E165550165559_))))
                           (_E165542165583_
                            (lambda ()
                              (if (gx#stx-pair? _e165526165555_)
                                  (let ((_e165547165575_
                                         (gx#syntax-e _e165526165555_)))
                                    (let ((_hd165548165578_
                                           (##car _e165547165575_))
                                          (_tl165549165580_
                                           (##cdr _e165547165575_)))
                                      (if (and (gx#identifier?
                                                _hd165548165578_)
                                               (gx#core-identifier=?
                                                _hd165548165578_
                                                '%#define-alias))
                                          (if '#t
                                              (_K165525_
                                               (gx#core-expand-define-alias%
                                                _hd165518_))
                                              (_E165546165571_))
                                          (_E165546165571_))))
                                  (_E165546165571_))))
                           (_E165532165595_
                            (lambda ()
                              (if (gx#stx-pair? _e165526165555_)
                                  (let ((_e165543165587_
                                         (gx#syntax-e _e165526165555_)))
                                    (let ((_hd165544165590_
                                           (##car _e165543165587_))
                                          (_tl165545165592_
                                           (##cdr _e165543165587_)))
                                      (if (and (gx#identifier?
                                                _hd165544165590_)
                                               (gx#core-identifier=?
                                                _hd165544165590_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K165525_
                                               (gx#core-expand-define-syntax%
                                                _hd165518_))
                                              (_E165542165583_))
                                          (_E165542165583_))))
                                  (_E165542165583_))))
                           (_E165528165627_
                            (lambda ()
                              (if (gx#stx-pair? _e165526165555_)
                                  (let ((_e165533165599_
                                         (gx#syntax-e _e165526165555_)))
                                    (let ((_hd165534165602_
                                           (##car _e165533165599_))
                                          (_tl165535165604_
                                           (##cdr _e165533165599_)))
                                      (if (and (gx#identifier?
                                                _hd165534165602_)
                                               (gx#core-identifier=?
                                                _hd165534165602_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl165535165604_)
                                              (let ((_e165536165607_
                                                     (gx#syntax-e
                                                      _tl165535165604_)))
                                                (let ((_hd165537165610_
                                                       (##car _e165536165607_))
                                                      (_tl165538165612_
                                                       (##cdr _e165536165607_)))
                                                  (let ((_hd-bind165615_
                                                         _hd165537165610_))
                                                    (if (gx#stx-pair?
                                                         _tl165538165612_)
                                                        (let ((_e165539165617_
                                                               (gx#syntax-e
                                                                _tl165538165612_)))
                                                          (let ((_hd165540165620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165539165617_))
                        (_tl165541165622_ (##cdr _e165539165617_)))
                    (let ((_expr165625_ _hd165540165620_))
                      (if (gx#stx-null? _tl165541165622_)
                          (if (gx#core-bind-values? _hd-bind165615_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind165615_)
                                (_K165525_ _hd165518_))
                              (_E165532165595_))
                          (_E165532165595_)))))
                (_E165532165595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165532165595_))
                                          (_E165532165595_))))
                                  (_E165532165595_))))
                           (_E165527165639_
                            (lambda ()
                              (if (gx#stx-pair? _e165526165555_)
                                  (let ((_e165529165631_
                                         (gx#syntax-e _e165526165555_)))
                                    (let ((_hd165530165634_
                                           (##car _e165529165631_))
                                          (_tl165531165636_
                                           (##cdr _e165529165631_)))
                                      (if (and (gx#identifier?
                                                _hd165530165634_)
                                               (gx#core-identifier=?
                                                _hd165530165634_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K165525_
                                               (gx#core-expand-begin-syntax%
                                                _hd165518_))
                                              (_E165528165627_))
                                          (_E165528165627_))))
                                  (_E165528165627_)))))
                      (_E165527165639_))))
                 (_eval-body165399_
                  (lambda (_rbody165407_)
                    (let _lp165409_ ((_rest165411_ _rbody165407_)
                                     (_body165412_ '())
                                     (_ebody165413_ '()))
                      (let* ((_rest165414165422_ _rest165411_)
                             (_else165416165430_
                              (lambda ()
                                (values _body165412_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody165413_)
                                          (gx#stx-source _stx165396_))))))
                             (_K165418165506_
                              (lambda (_rest165433_ _hd165434_)
                                (let* ((_e165435165452_ _hd165434_)
                                       (_E165447165456_
                                        (lambda ()
                                          (_lp165409_
                                           _rest165433_
                                           (cons _hd165434_ _body165412_)
                                           (cons _hd165434_ _ebody165413_))))
                                       (_E165437165468_
                                        (lambda ()
                                          (if (gx#stx-pair? _e165435165452_)
                                              (let ((_e165448165460_
                                                     (gx#syntax-e
                                                      _e165435165452_)))
                                                (let ((_hd165449165463_
                                                       (##car _e165448165460_))
                                                      (_tl165450165465_
                                                       (##cdr _e165448165460_)))
                                                  (if (and (gx#identifier?
                                                            _hd165449165463_)
                                                           (gx#core-identifier=?
                                                            _hd165449165463_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp165409_
                                                           _rest165433_
                                                           (cons _hd165434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body165412_)
                   _ebody165413_)
                  (_E165447165456_))
              (_E165447165456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165447165456_))))
                                       (_E165436165502_
                                        (lambda ()
                                          (if (gx#stx-pair? _e165435165452_)
                                              (let ((_e165438165472_
                                                     (gx#syntax-e
                                                      _e165435165452_)))
                                                (let ((_hd165439165475_
                                                       (##car _e165438165472_))
                                                      (_tl165440165477_
                                                       (##cdr _e165438165472_)))
                                                  (if (and (gx#identifier?
                                                            _hd165439165475_)
                                                           (gx#core-identifier=?
                                                            _hd165439165475_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl165440165477_)
                                                          (let ((_e165441165480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl165440165477_)))
                    (let ((_hd165442165483_ (##car _e165441165480_))
                          (_tl165443165485_ (##cdr _e165441165480_)))
                      (let ((_hd-bind165488_ _hd165442165483_))
                        (if (gx#stx-pair? _tl165443165485_)
                            (let ((_e165444165490_
                                   (gx#syntax-e _tl165443165485_)))
                              (let ((_hd165445165493_ (##car _e165444165490_))
                                    (_tl165446165495_ (##cdr _e165444165490_)))
                                (let ((_expr165498_ _hd165445165493_))
                                  (if (gx#stx-null? _tl165446165495_)
                                      (if '#t
                                          (let ((_ehd165500_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind165488_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr165498_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd165434_))))
                                            (_lp165409_
                                             _rest165433_
                                             (cons _ehd165500_ _body165412_)
                                             (cons _ehd165500_ _ebody165413_)))
                                          (_E165437165468_))
                                      (_E165437165468_)))))
                            (_E165437165468_)))))
                  (_E165437165468_))
              (_E165437165468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165437165468_)))))
                                  (_E165436165502_)))))
                        (if (##pair? _rest165414165422_)
                            (let ((_hd165419165509_ (##car _rest165414165422_))
                                  (_tl165420165511_
                                   (##cdr _rest165414165422_)))
                              (let* ((_hd165514_ _hd165419165509_)
                                     (_rest165516_ _tl165420165511_))
                                (_K165418165506_ _rest165516_ _hd165514_)))
                            (_else165416165430_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody165402_
                     (gx#core-expand-block__1
                      _stx165396_
                      _expand-special165398_
                      '#f))
                    (_g169652_ (_eval-body165399_ _rbody165402_)))
               (begin
                 (let ((_g169653_
                        (if (##values? _g169652_)
                            (##vector-length _g169652_)
                            1)))
                   (if (not (##fx= _g169653_ 2))
                       (error "Context expects 2 values" _g169653_)))
                 (let ((_expanded-body165404_ (##vector-ref _g169652_ 0))
                       (_value165405_ (##vector-ref _g169652_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body165404_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value165405_ '())))
                    (gx#stx-source _stx165396_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx165366_)
        (let* ((_e165367165374_ _stx165366_)
               (_E165369165378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165367165374_)))
               (_E165368165392_
                (lambda ()
                  (if (gx#stx-pair? _e165367165374_)
                      (let ((_e165370165382_ (gx#syntax-e _e165367165374_)))
                        (let ((_hd165371165385_ (##car _e165370165382_))
                              (_tl165372165387_ (##cdr _e165370165382_)))
                          (let ((_body165390_ _tl165372165387_))
                            (if (gx#stx-list? _body165390_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body165390_)
                                 (gx#stx-source _stx165366_))
                                (_E165369165378_)))))
                      (_E165369165378_)))))
          (_E165368165392_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx165364_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx165364_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx165310_)
        (let* ((_e165311165324_ _stx165310_)
               (_E165313165328_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165311165324_)))
               (_E165312165360_
                (lambda ()
                  (if (gx#stx-pair? _e165311165324_)
                      (let ((_e165314165332_ (gx#syntax-e _e165311165324_)))
                        (let ((_hd165315165335_ (##car _e165314165332_))
                              (_tl165316165337_ (##cdr _e165314165332_)))
                          (if (gx#stx-pair? _tl165316165337_)
                              (let ((_e165317165340_
                                     (gx#syntax-e _tl165316165337_)))
                                (let ((_hd165318165343_
                                       (##car _e165317165340_))
                                      (_tl165319165345_
                                       (##cdr _e165317165340_)))
                                  (let ((_ann165348_ _hd165318165343_))
                                    (if (gx#stx-pair? _tl165319165345_)
                                        (let ((_e165320165350_
                                               (gx#syntax-e _tl165319165345_)))
                                          (let ((_hd165321165353_
                                                 (##car _e165320165350_))
                                                (_tl165322165355_
                                                 (##cdr _e165320165350_)))
                                            (let ((_expr165358_
                                                   _hd165321165353_))
                                              (if (gx#stx-null?
                                                   _tl165322165355_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann165348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr165358_)
                                 '())))
               (gx#stx-source _stx165310_))
              (_E165313165328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165313165328_)))))
                                        (_E165313165328_)))))
                              (_E165313165328_))))
                      (_E165313165328_)))))
          (_E165312165360_))))
    (define gx#core-expand-local-block
      (lambda (_stx165034_ _body165035_)
        (letrec ((_expand-special165037_
                  (lambda (_hd165305_ _K165306_ _rest165307_ _r165308_)
                    (_K165306_
                     '()
                     (cons (_expand-internal165038_ _hd165305_ _rest165307_)
                           _r165308_))))
                 (_expand-internal165038_
                  (lambda (_hd165301_ _rest165302_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal165040_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd165301_ _rest165302_))
                          (gx#stx-source _stx165034_))
                         _expand-internal-special165039_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj169646
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj169646)
                       __obj169646))))
                 (_expand-internal-special165039_
                  (lambda (_hd165196_ _K165197_ _rest165198_ _r165199_)
                    (let* ((_e165200165225_ _hd165196_)
                           (_E165220165229_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e165200165225_)))
                           (_E165216165241_
                            (lambda ()
                              (if (gx#stx-pair? _e165200165225_)
                                  (let ((_e165221165233_
                                         (gx#syntax-e _e165200165225_)))
                                    (let ((_hd165222165236_
                                           (##car _e165221165233_))
                                          (_tl165223165238_
                                           (##cdr _e165221165233_)))
                                      (if (and (gx#identifier?
                                                _hd165222165236_)
                                               (gx#core-identifier=?
                                                _hd165222165236_
                                                '%#declare))
                                          (if '#t
                                              (_K165197_
                                               _rest165198_
                                               (cons (gx#core-expand-declare%
                                                      _hd165196_)
                                                     _r165199_))
                                              (_E165220165229_))
                                          (_E165220165229_))))
                                  (_E165220165229_))))
                           (_E165212165253_
                            (lambda ()
                              (if (gx#stx-pair? _e165200165225_)
                                  (let ((_e165217165245_
                                         (gx#syntax-e _e165200165225_)))
                                    (let ((_hd165218165248_
                                           (##car _e165217165245_))
                                          (_tl165219165250_
                                           (##cdr _e165217165245_)))
                                      (if (and (gx#identifier?
                                                _hd165218165248_)
                                               (gx#core-identifier=?
                                                _hd165218165248_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd165196_)
                                                (_K165197_
                                                 _rest165198_
                                                 _r165199_))
                                              (_E165216165241_))
                                          (_E165216165241_))))
                                  (_E165216165241_))))
                           (_E165202165265_
                            (lambda ()
                              (if (gx#stx-pair? _e165200165225_)
                                  (let ((_e165213165257_
                                         (gx#syntax-e _e165200165225_)))
                                    (let ((_hd165214165260_
                                           (##car _e165213165257_))
                                          (_tl165215165262_
                                           (##cdr _e165213165257_)))
                                      (if (and (gx#identifier?
                                                _hd165214165260_)
                                               (gx#core-identifier=?
                                                _hd165214165260_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd165196_)
                                                (_K165197_
                                                 _rest165198_
                                                 _r165199_))
                                              (_E165212165253_))
                                          (_E165212165253_))))
                                  (_E165212165253_))))
                           (_E165201165297_
                            (lambda ()
                              (if (gx#stx-pair? _e165200165225_)
                                  (let ((_e165203165269_
                                         (gx#syntax-e _e165200165225_)))
                                    (let ((_hd165204165272_
                                           (##car _e165203165269_))
                                          (_tl165205165274_
                                           (##cdr _e165203165269_)))
                                      (if (and (gx#identifier?
                                                _hd165204165272_)
                                               (gx#core-identifier=?
                                                _hd165204165272_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl165205165274_)
                                              (let ((_e165206165277_
                                                     (gx#syntax-e
                                                      _tl165205165274_)))
                                                (let ((_hd165207165280_
                                                       (##car _e165206165277_))
                                                      (_tl165208165282_
                                                       (##cdr _e165206165277_)))
                                                  (let ((_hd-bind165285_
                                                         _hd165207165280_))
                                                    (if (gx#stx-pair?
                                                         _tl165208165282_)
                                                        (let ((_e165209165287_
                                                               (gx#syntax-e
                                                                _tl165208165282_)))
                                                          (let ((_hd165210165290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165209165287_))
                        (_tl165211165292_ (##cdr _e165209165287_)))
                    (let ((_expr165295_ _hd165210165290_))
                      (if (gx#stx-null? _tl165211165292_)
                          (if (gx#core-bind-values? _hd-bind165285_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind165285_)
                                (_K165197_
                                 _rest165198_
                                 (cons _hd165196_ _r165199_)))
                              (_E165202165265_))
                          (_E165202165265_)))))
                (_E165202165265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165202165265_))
                                          (_E165202165265_))))
                                  (_E165202165265_)))))
                      (_E165201165297_))))
                 (_wrap-internal165040_
                  (lambda (_rbody165042_)
                    (let _lp165044_ ((_rest165046_ _rbody165042_)
                                     (_decls165047_ '())
                                     (_bind165048_ '())
                                     (_body165049_ '()))
                      (let* ((_e165050165057_ _rest165046_)
                             (_E165052165106_
                              (lambda ()
                                (let* ((_body165101_
                                        (let* ((_body165060165070_
                                                _body165049_)
                                               (_else165063165078_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body165049_)
                                                   (gx#stx-source
                                                    _stx165034_)))))
                                          (let ((_K165068165098_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx165034_)))
                                                (_K165065165084_
                                                 (lambda (_expr165082_)
                                                   _expr165082_)))
                                            (let ((_try-match165062165094_
                                                   (lambda ()
                                                     (if (##pair? _body165060165070_)
                                                         (let ((_tl165067165089_
                                                                (##cdr _body165060165070_))
                                                               (_hd165066165087_
                                                                (##car _body165060165070_)))
                                                           (if (##null? _tl165067165089_)
                                                               (let ((_expr165092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd165066165087_))
                         (_K165065165084_ _expr165092_))
                       (_else165063165078_)))
                 (_else165063165078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body165060165070_)
                                                  (_K165068165098_)
                                                  (_try-match165062165094_))))))
                                       (_body165103_
                                        (if (null? _bind165048_)
                                            _body165101_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind165048_
                                                         (cons _body165101_
                                                               '())))
                                             (gx#stx-source _stx165034_)))))
                                  (if (null? _decls165047_)
                                      _body165103_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls165047_
                                                   (cons _body165103_ '())))
                                       (gx#stx-source _stx165034_))))))
                             (_E165051165192_
                              (lambda ()
                                (if (gx#stx-pair? _e165050165057_)
                                    (let ((_e165053165110_
                                           (gx#syntax-e _e165050165057_)))
                                      (let ((_hd165054165113_
                                             (##car _e165053165110_))
                                            (_tl165055165115_
                                             (##cdr _e165053165110_)))
                                        (let* ((_hd165118_ _hd165054165113_)
                                               (_rest165120_ _tl165055165115_))
                                          (if '#t
                                              (let* ((_e165121165138_
                                                      _hd165118_)
                                                     (_E165133165142_
                                                      (lambda ()
                                                        (if (null? _bind165048_)
                                                            (_lp165044_
                                                             _rest165120_
                                                             _decls165047_
                                                             _bind165048_
                                                             (cons _hd165118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body165049_))
                    (_lp165044_
                     _rest165120_
                     _decls165047_
                     (cons (cons '#f (cons _hd165118_ '())) _bind165048_)
                     _body165049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165123165156_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165121165138_)
                                                            (let ((_e165134165146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165121165138_)))
                      (let ((_hd165135165149_ (##car _e165134165146_))
                            (_tl165136165151_ (##cdr _e165134165146_)))
                        (if (and (gx#identifier? _hd165135165149_)
                                 (gx#core-identifier=?
                                  _hd165135165149_
                                  '%#declare))
                            (let ((_xdecls165154_ _tl165136165151_))
                              (if '#t
                                  (_lp165044_
                                   _rest165120_
                                   (gx#stx-foldr
                                    cons
                                    _decls165047_
                                    _xdecls165154_)
                                   _bind165048_
                                   _body165049_)
                                  (_E165133165142_)))
                            (_E165133165142_))))
                    (_E165133165142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165122165188_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165121165138_)
                                                            (let ((_e165124165160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165121165138_)))
                      (let ((_hd165125165163_ (##car _e165124165160_))
                            (_tl165126165165_ (##cdr _e165124165160_)))
                        (if (and (gx#identifier? _hd165125165163_)
                                 (gx#core-identifier=?
                                  _hd165125165163_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl165126165165_)
                                (let ((_e165127165168_
                                       (gx#syntax-e _tl165126165165_)))
                                  (let ((_hd165128165171_
                                         (##car _e165127165168_))
                                        (_tl165129165173_
                                         (##cdr _e165127165168_)))
                                    (let ((_hd-bind165176_ _hd165128165171_))
                                      (if (gx#stx-pair? _tl165129165173_)
                                          (let ((_e165130165178_
                                                 (gx#syntax-e
                                                  _tl165129165173_)))
                                            (let ((_hd165131165181_
                                                   (##car _e165130165178_))
                                                  (_tl165132165183_
                                                   (##cdr _e165130165178_)))
                                              (let ((_expr165186_
                                                     _hd165131165181_))
                                                (if (gx#stx-null?
                                                     _tl165132165183_)
                                                    (if '#t
                                                        (_lp165044_
                                                         _rest165120_
                                                         _decls165047_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind165176_)
                             (cons (gx#core-expand-expression _expr165186_)
                                   '()))
                       _bind165048_)
                 _body165049_)
                (_E165123165156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E165123165156_)))))
                                          (_E165123165156_)))))
                                (_E165123165156_))
                            (_E165123165156_))))
                    (_E165123165156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165122165188_))
                                              (_E165052165106_)))))
                                    (_E165052165106_)))))
                        (_E165051165192_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body165035_)
            (gx#stx-source _stx165034_))
           _expand-special165037_))))
    (define gx#core-expand-declare%
      (lambda (_stx164972_)
        (let* ((_e164973164980_ _stx164972_)
               (_E164975164984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164973164980_)))
               (_E164974165030_
                (lambda ()
                  (if (gx#stx-pair? _e164973164980_)
                      (let ((_e164976164988_ (gx#syntax-e _e164973164980_)))
                        (let ((_hd164977164991_ (##car _e164976164988_))
                              (_tl164978164993_ (##cdr _e164976164988_)))
                          (let ((_body164996_ _tl164978164993_))
                            (if (gx#stx-list? _body164996_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl164998_)
                                     (let* ((_e164999165006_ _decl164998_)
                                            (_E165001165010_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e164999165006_)))
                                            (_E165000165026_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e164999165006_)
                                                   (let ((_e165002165014_
                                                          (gx#syntax-e
                                                           _e164999165006_)))
                                                     (let ((_hd165003165017_
                                                            (##car _e165002165014_))
                                                           (_tl165004165019_
                                                            (##cdr _e165002165014_)))
                                                       (let* ((_head165022_
                                                               _hd165003165017_)
                                                              (_args165024_
                                                               _tl165004165019_))
                                                         (if (gx#stx-list?
                                                              _args165024_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl164998_)
                                                             (_E165001165010_)))))
                                                   (_E165001165010_)))))
                                       (_E165000165026_)))
                                   _body164996_))
                                 (gx#stx-source _stx164972_))
                                (_E164975164984_)))))
                      (_E164975164984_)))))
          (_E164974165030_))))
    (define gx#core-expand-extern%
      (lambda (_stx164876_)
        (let* ((_e164877164884_ _stx164876_)
               (_E164879164888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164877164884_)))
               (_E164878164968_
                (lambda ()
                  (if (gx#stx-pair? _e164877164884_)
                      (let ((_e164880164892_ (gx#syntax-e _e164877164884_)))
                        (let ((_hd164881164895_ (##car _e164880164892_))
                              (_tl164882164897_ (##cdr _e164880164892_)))
                          (let ((_body164900_ _tl164882164897_))
                            (if '#t
                                (let _lp164902_ ((_rest164904_ _body164900_)
                                                 (_r164905_ '()))
                                  (let* ((_e164906164920_ _rest164904_)
                                         (_E164918164924_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx164876_)))
                                         (_E164908164928_
                                          (lambda ()
                                            (if (gx#stx-null? _e164906164920_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r164905_))
                                                     (gx#stx-source
                                                      _stx164876_))
                                                    (_E164918164924_))
                                                (_E164918164924_))))
                                         (_E164907164964_
                                          (lambda ()
                                            (if (gx#stx-pair? _e164906164920_)
                                                (let ((_e164909164932_
                                                       (gx#syntax-e
                                                        _e164906164920_)))
                                                  (let ((_hd164910164935_
                                                         (##car _e164909164932_))
                                                        (_tl164911164937_
                                                         (##cdr _e164909164932_)))
                                                    (if (gx#stx-pair?
                                                         _hd164910164935_)
                                                        (let ((_e164912164940_
                                                               (gx#syntax-e
                                                                _hd164910164935_)))
                                                          (let ((_hd164913164943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e164912164940_))
                        (_tl164914164945_ (##cdr _e164912164940_)))
                    (let ((_id164948_ _hd164913164943_))
                      (if (gx#stx-pair? _tl164914164945_)
                          (let ((_e164915164950_
                                 (gx#syntax-e _tl164914164945_)))
                            (let ((_hd164916164953_ (##car _e164915164950_))
                                  (_tl164917164955_ (##cdr _e164915164950_)))
                              (let ((_eid164958_ _hd164916164953_))
                                (if (gx#stx-null? _tl164917164955_)
                                    (let ((_rest164960_ _tl164911164937_))
                                      (if (and (gx#identifier? _id164948_)
                                               (gx#identifier? _eid164958_))
                                          (let ((_eid164962_
                                                 (gx#stx-e _eid164958_)))
                                            (gx#core-bind-extern!__0
                                             _id164948_
                                             _eid164962_)
                                            (_lp164902_
                                             _rest164960_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id164948_)
                                                         (cons _eid164962_
                                                               '()))
                                                   _r164905_)))
                                          (_E164908164928_)))
                                    (_E164908164928_)))))
                          (_E164908164928_)))))
                (_E164908164928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E164908164928_)))))
                                    (_E164907164964_)))
                                (_E164879164888_)))))
                      (_E164879164888_)))))
          (_E164878164968_))))
    (define gx#core-expand-define-values%
      (lambda (_stx164822_)
        (let* ((_e164823164836_ _stx164822_)
               (_E164825164840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164823164836_)))
               (_E164824164872_
                (lambda ()
                  (if (gx#stx-pair? _e164823164836_)
                      (let ((_e164826164844_ (gx#syntax-e _e164823164836_)))
                        (let ((_hd164827164847_ (##car _e164826164844_))
                              (_tl164828164849_ (##cdr _e164826164844_)))
                          (if (gx#stx-pair? _tl164828164849_)
                              (let ((_e164829164852_
                                     (gx#syntax-e _tl164828164849_)))
                                (let ((_hd164830164855_
                                       (##car _e164829164852_))
                                      (_tl164831164857_
                                       (##cdr _e164829164852_)))
                                  (let ((_hd164860_ _hd164830164855_))
                                    (if (gx#stx-pair? _tl164831164857_)
                                        (let ((_e164832164862_
                                               (gx#syntax-e _tl164831164857_)))
                                          (let ((_hd164833164865_
                                                 (##car _e164832164862_))
                                                (_tl164834164867_
                                                 (##cdr _e164832164862_)))
                                            (let ((_expr164870_
                                                   _hd164833164865_))
                                              (if (gx#stx-null?
                                                   _tl164834164867_)
                                                  (if (gx#core-bind-values?
                                                       _hd164860_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd164860_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd164860_)
                             (cons (gx#core-expand-expression _expr164870_)
                                   '())))
                 (gx#stx-source _stx164822_)))
              (_E164825164840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164825164840_)))))
                                        (_E164825164840_)))))
                              (_E164825164840_))))
                      (_E164825164840_)))))
          (_E164824164872_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx164766_)
        (let* ((_e164767164780_ _stx164766_)
               (_E164769164784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164767164780_)))
               (_E164768164818_
                (lambda ()
                  (if (gx#stx-pair? _e164767164780_)
                      (let ((_e164770164788_ (gx#syntax-e _e164767164780_)))
                        (let ((_hd164771164791_ (##car _e164770164788_))
                              (_tl164772164793_ (##cdr _e164770164788_)))
                          (if (gx#stx-pair? _tl164772164793_)
                              (let ((_e164773164796_
                                     (gx#syntax-e _tl164772164793_)))
                                (let ((_hd164774164799_
                                       (##car _e164773164796_))
                                      (_tl164775164801_
                                       (##cdr _e164773164796_)))
                                  (let ((_id164804_ _hd164774164799_))
                                    (if (gx#stx-pair? _tl164775164801_)
                                        (let ((_e164776164806_
                                               (gx#syntax-e _tl164775164801_)))
                                          (let ((_hd164777164809_
                                                 (##car _e164776164806_))
                                                (_tl164778164811_
                                                 (##cdr _e164776164806_)))
                                            (let ((_binding-id164814_
                                                   _hd164777164809_))
                                              (if (gx#stx-null?
                                                   _tl164778164811_)
                                                  (if (and (gx#identifier?
                                                            _id164804_)
                                                           (gx#identifier?
                                                            _binding-id164814_))
                                                      (let ((_eid164816_
                                                             (gx#stx-e
                                                              _binding-id164814_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id164804_
                                                         _eid164816_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id164804_)
                             (cons _eid164816_ '())))))
              (_E164769164784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164769164784_)))))
                                        (_E164769164784_)))))
                              (_E164769164784_))))
                      (_E164769164784_)))))
          (_E164768164818_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx164709_)
        (let* ((_e164710164723_ _stx164709_)
               (_E164712164727_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164710164723_)))
               (_E164711164762_
                (lambda ()
                  (if (gx#stx-pair? _e164710164723_)
                      (let ((_e164713164731_ (gx#syntax-e _e164710164723_)))
                        (let ((_hd164714164734_ (##car _e164713164731_))
                              (_tl164715164736_ (##cdr _e164713164731_)))
                          (if (gx#stx-pair? _tl164715164736_)
                              (let ((_e164716164739_
                                     (gx#syntax-e _tl164715164736_)))
                                (let ((_hd164717164742_
                                       (##car _e164716164739_))
                                      (_tl164718164744_
                                       (##cdr _e164716164739_)))
                                  (let ((_id164747_ _hd164717164742_))
                                    (if (gx#stx-pair? _tl164718164744_)
                                        (let ((_e164719164749_
                                               (gx#syntax-e _tl164718164744_)))
                                          (let ((_hd164720164752_
                                                 (##car _e164719164749_))
                                                (_tl164721164754_
                                                 (##cdr _e164719164749_)))
                                            (let ((_expr164757_
                                                   _hd164720164752_))
                                              (if (gx#stx-null?
                                                   _tl164721164754_)
                                                  (if (gx#identifier?
                                                       _id164747_)
                                                      (let ((_g169654_
                                                             (gx#core-expand-expression+1
                                                              _expr164757_)))
                                                        (begin
                                                          (let ((_g169655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g169654_)
                             (##vector-length _g169654_)
                             1)))
                    (if (not (##fx= _g169655_ 2))
                        (error "Context expects 2 values" _g169655_)))
                  (let ((_e-stx164759_ (##vector-ref _g169654_ 0))
                        (_e164760_ (##vector-ref _g169654_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id164747_ _e164760_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id164747_)
                                   (cons _e-stx164759_ '())))
                       (gx#stx-source _stx164709_))))))
              (_E164712164727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164712164727_)))))
                                        (_E164712164727_)))))
                              (_E164712164727_))))
                      (_E164712164727_)))))
          (_E164711164762_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx164653_)
        (let* ((_e164654164667_ _stx164653_)
               (_E164656164671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164654164667_)))
               (_E164655164705_
                (lambda ()
                  (if (gx#stx-pair? _e164654164667_)
                      (let ((_e164657164675_ (gx#syntax-e _e164654164667_)))
                        (let ((_hd164658164678_ (##car _e164657164675_))
                              (_tl164659164680_ (##cdr _e164657164675_)))
                          (if (gx#stx-pair? _tl164659164680_)
                              (let ((_e164660164683_
                                     (gx#syntax-e _tl164659164680_)))
                                (let ((_hd164661164686_
                                       (##car _e164660164683_))
                                      (_tl164662164688_
                                       (##cdr _e164660164683_)))
                                  (let ((_id164691_ _hd164661164686_))
                                    (if (gx#stx-pair? _tl164662164688_)
                                        (let ((_e164663164693_
                                               (gx#syntax-e _tl164662164688_)))
                                          (let ((_hd164664164696_
                                                 (##car _e164663164693_))
                                                (_tl164665164698_
                                                 (##cdr _e164663164693_)))
                                            (let ((_alias-id164701_
                                                   _hd164664164696_))
                                              (if (gx#stx-null?
                                                   _tl164665164698_)
                                                  (if (and (gx#identifier?
                                                            _id164691_)
                                                           (gx#identifier?
                                                            _alias-id164701_))
                                                      (let ((_alias-id164703_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id164701_)))
                                                        (gx#core-bind-alias!__0
                                                         _id164691_
                                                         _alias-id164703_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id164691_)
                             (cons _alias-id164703_ '())))))
              (_E164656164671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164656164671_)))))
                                        (_E164656164671_)))))
                              (_E164656164671_))))
                      (_E164656164671_)))))
          (_E164655164705_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx164596_ _wrap?164597_)
        (let* ((_e164598164608_ _stx164596_)
               (_E164600164612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164598164608_)))
               (_E164599164639_
                (lambda ()
                  (if (gx#stx-pair? _e164598164608_)
                      (let ((_e164601164616_ (gx#syntax-e _e164598164608_)))
                        (let ((_hd164602164619_ (##car _e164601164616_))
                              (_tl164603164621_ (##cdr _e164601164616_)))
                          (if (gx#stx-pair? _tl164603164621_)
                              (let ((_e164604164624_
                                     (gx#syntax-e _tl164603164621_)))
                                (let ((_hd164605164627_
                                       (##car _e164604164624_))
                                      (_tl164606164629_
                                       (##cdr _e164604164624_)))
                                  (let* ((_hd164632_ _hd164605164627_)
                                         (_body164634_ _tl164606164629_))
                                    (if (gx#core-bind-values? _hd164632_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd164632_)
                                           (let ((_body164637_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd164632_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx164596_
                                                               _body164634_)
                                                              '()))))
                                             (if _wrap?164597_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body164637_)
                                                  (gx#stx-source _stx164596_))
                                                 _body164637_)))
                                         gx#current-expander-context
                                         (let ((__obj169647
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169647)
                                           __obj169647))
                                        (_E164600164612_)))))
                              (_E164600164612_))))
                      (_E164600164612_)))))
          (_E164599164639_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx164646_)
        (let ((_wrap?164648_ '#t))
          (gx#core-expand-lambda%__% _stx164646_ _wrap?164648_))))
    (define gx#core-expand-lambda%
      (lambda _g169657_
        (let ((_g169656_ (##length _g169657_)))
          (cond ((##fx= _g169656_ 1)
                 (apply (lambda (_stx164646_)
                          (gx#core-expand-lambda%__0 _stx164646_))
                        _g169657_))
                ((##fx= _g169656_ 2)
                 (apply (lambda (_stx164650_ _wrap?164651_)
                          (gx#core-expand-lambda%__%
                           _stx164650_
                           _wrap?164651_))
                        _g169657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g169657_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx164560_)
        (let* ((_e164561164568_ _stx164560_)
               (_E164563164572_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164561164568_)))
               (_E164562164591_
                (lambda ()
                  (if (gx#stx-pair? _e164561164568_)
                      (let ((_e164564164576_ (gx#syntax-e _e164561164568_)))
                        (let ((_hd164565164579_ (##car _e164564164576_))
                              (_tl164566164581_ (##cdr _e164564164576_)))
                          (let ((_clauses164584_ _tl164566164581_))
                            (if (gx#stx-list? _clauses164584_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause164586_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause164586_)
                                       (let ((_$e164588_
                                              (gx#stx-source _clause164586_)))
                                         (if _$e164588_
                                             _$e164588_
                                             (gx#stx-source _stx164560_))))
                                      '#f))
                                   _clauses164584_))
                                 (gx#stx-source _stx164560_))
                                (_E164563164572_)))))
                      (_E164563164572_)))))
          (_E164562164591_))))
    (define gx#core-expand-let-values%
      (lambda (_stx164514_)
        (let* ((_e164515164525_ _stx164514_)
               (_E164517164529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164515164525_)))
               (_E164516164556_
                (lambda ()
                  (if (gx#stx-pair? _e164515164525_)
                      (let ((_e164518164533_ (gx#syntax-e _e164515164525_)))
                        (let ((_hd164519164536_ (##car _e164518164533_))
                              (_tl164520164538_ (##cdr _e164518164533_)))
                          (if (gx#stx-pair? _tl164520164538_)
                              (let ((_e164521164541_
                                     (gx#syntax-e _tl164520164538_)))
                                (let ((_hd164522164544_
                                       (##car _e164521164541_))
                                      (_tl164523164546_
                                       (##cdr _e164521164541_)))
                                  (let* ((_hd164549_ _hd164522164544_)
                                         (_body164551_ _tl164523164546_))
                                    (if (gx#core-expand-let-bind? _hd164549_)
                                        (let ((_expressions164553_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd164549_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd164549_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd164549_
                                                           _expressions164553_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx164514_
                         _body164551_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx164514_)))
                                           gx#current-expander-context
                                           (let ((__obj169648
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj169648)
                                             __obj169648)))
                                        (_E164517164529_)))))
                              (_E164517164529_))))
                      (_E164517164529_)))))
          (_E164516164556_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx164459_ _form164460_)
        (let* ((_e164461164471_ _stx164459_)
               (_E164463164475_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164461164471_)))
               (_E164462164500_
                (lambda ()
                  (if (gx#stx-pair? _e164461164471_)
                      (let ((_e164464164479_ (gx#syntax-e _e164461164471_)))
                        (let ((_hd164465164482_ (##car _e164464164479_))
                              (_tl164466164484_ (##cdr _e164464164479_)))
                          (if (gx#stx-pair? _tl164466164484_)
                              (let ((_e164467164487_
                                     (gx#syntax-e _tl164466164484_)))
                                (let ((_hd164468164490_
                                       (##car _e164467164487_))
                                      (_tl164469164492_
                                       (##cdr _e164467164487_)))
                                  (let* ((_hd164495_ _hd164468164490_)
                                         (_body164497_ _tl164469164492_))
                                    (if (gx#core-expand-let-bind? _hd164495_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd164495_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form164460_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd164495_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd164495_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx164459_
                                                               _body164497_)
                                                              '())))
                                            (gx#stx-source _stx164459_)))
                                         gx#current-expander-context
                                         (let ((__obj169649
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169649)
                                           __obj169649))
                                        (_E164463164475_)))))
                              (_E164463164475_))))
                      (_E164463164475_)))))
          (_E164462164500_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx164507_)
        (let ((_form164509_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx164507_ _form164509_))))
    (define gx#core-expand-letrec-values%
      (lambda _g169659_
        (let ((_g169658_ (##length _g169659_)))
          (cond ((##fx= _g169658_ 1)
                 (apply (lambda (_stx164507_)
                          (gx#core-expand-letrec-values%__0 _stx164507_))
                        _g169659_))
                ((##fx= _g169658_ 2)
                 (apply (lambda (_stx164511_ _form164512_)
                          (gx#core-expand-letrec-values%__%
                           _stx164511_
                           _form164512_))
                        _g169659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g169659_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx164456_)
        (gx#core-expand-letrec-values%__% _stx164456_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx164413_)
        (if (gx#stx-list? _stx164413_)
            (gx#stx-andmap
             (lambda (_bind164415_)
               (let* ((_e164416164426_ _bind164415_)
                      (_E164418164430_ (lambda () '#f))
                      (_E164417164452_
                       (lambda ()
                         (if (gx#stx-pair? _e164416164426_)
                             (let ((_e164419164434_
                                    (gx#syntax-e _e164416164426_)))
                               (let ((_hd164420164437_ (##car _e164419164434_))
                                     (_tl164421164439_
                                      (##cdr _e164419164434_)))
                                 (let ((_hd164442_ _hd164420164437_))
                                   (if (gx#stx-pair? _tl164421164439_)
                                       (let ((_e164422164444_
                                              (gx#syntax-e _tl164421164439_)))
                                         (let ((_hd164423164447_
                                                (##car _e164422164444_))
                                               (_tl164424164449_
                                                (##cdr _e164422164444_)))
                                           (if (gx#stx-null? _tl164424164449_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd164442_)
                                                   (_E164418164430_))
                                               (_E164418164430_))))
                                       (_E164418164430_)))))
                             (_E164418164430_)))))
                 (_E164417164452_)))
             _stx164413_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind164372_)
        (let* ((_e164373164383_ _bind164372_)
               (_E164375164387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164373164383_)))
               (_E164374164409_
                (lambda ()
                  (if (gx#stx-pair? _e164373164383_)
                      (let ((_e164376164391_ (gx#syntax-e _e164373164383_)))
                        (let ((_hd164377164394_ (##car _e164376164391_))
                              (_tl164378164396_ (##cdr _e164376164391_)))
                          (if (gx#stx-pair? _tl164378164396_)
                              (let ((_e164379164399_
                                     (gx#syntax-e _tl164378164396_)))
                                (let ((_hd164380164402_
                                       (##car _e164379164399_))
                                      (_tl164381164404_
                                       (##cdr _e164379164399_)))
                                  (let ((_expr164407_ _hd164380164402_))
                                    (if (gx#stx-null? _tl164381164404_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr164407_)
                                            (_E164375164387_))
                                        (_E164375164387_)))))
                              (_E164375164387_))))
                      (_E164375164387_)))))
          (_E164374164409_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind164331_)
        (let* ((_e164332164342_ _bind164331_)
               (_E164334164346_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164332164342_)))
               (_E164333164368_
                (lambda ()
                  (if (gx#stx-pair? _e164332164342_)
                      (let ((_e164335164350_ (gx#syntax-e _e164332164342_)))
                        (let ((_hd164336164353_ (##car _e164335164350_))
                              (_tl164337164355_ (##cdr _e164335164350_)))
                          (let ((_hd164358_ _hd164336164353_))
                            (if (gx#stx-pair? _tl164337164355_)
                                (let ((_e164338164360_
                                       (gx#syntax-e _tl164337164355_)))
                                  (let ((_hd164339164363_
                                         (##car _e164338164360_))
                                        (_tl164340164365_
                                         (##cdr _e164338164360_)))
                                    (if (gx#stx-null? _tl164340164365_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd164358_)
                                            (_E164334164346_))
                                        (_E164334164346_))))
                                (_E164334164346_)))))
                      (_E164334164346_)))))
          (_E164333164368_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind164289_ _expr164290_)
        (let* ((_e164291164301_ _bind164289_)
               (_E164293164305_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164291164301_)))
               (_E164292164327_
                (lambda ()
                  (if (gx#stx-pair? _e164291164301_)
                      (let ((_e164294164309_ (gx#syntax-e _e164291164301_)))
                        (let ((_hd164295164312_ (##car _e164294164309_))
                              (_tl164296164314_ (##cdr _e164294164309_)))
                          (let ((_hd164317_ _hd164295164312_))
                            (if (gx#stx-pair? _tl164296164314_)
                                (let ((_e164297164319_
                                       (gx#syntax-e _tl164296164314_)))
                                  (let ((_hd164298164322_
                                         (##car _e164297164319_))
                                        (_tl164299164324_
                                         (##cdr _e164297164319_)))
                                    (if (gx#stx-null? _tl164299164324_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd164317_)
                                                  (cons _expr164290_ '()))
                                            (_E164293164305_))
                                        (_E164293164305_))))
                                (_E164293164305_)))))
                      (_E164293164305_)))))
          (_E164292164327_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx164243_)
        (let* ((_e164244164254_ _stx164243_)
               (_E164246164258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164244164254_)))
               (_E164245164285_
                (lambda ()
                  (if (gx#stx-pair? _e164244164254_)
                      (let ((_e164247164262_ (gx#syntax-e _e164244164254_)))
                        (let ((_hd164248164265_ (##car _e164247164262_))
                              (_tl164249164267_ (##cdr _e164247164262_)))
                          (if (gx#stx-pair? _tl164249164267_)
                              (let ((_e164250164270_
                                     (gx#syntax-e _tl164249164267_)))
                                (let ((_hd164251164273_
                                       (##car _e164250164270_))
                                      (_tl164252164275_
                                       (##cdr _e164250164270_)))
                                  (let* ((_hd164278_ _hd164251164273_)
                                         (_body164280_ _tl164252164275_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164278_)
                                        (let ((_expanders164282_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd164278_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd164278_
                                              _expanders164282_)
                                             (gx#core-expand-local-block
                                              _stx164243_
                                              _body164280_))
                                           gx#current-expander-context
                                           (let ((__obj169650
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj169650)
                                             __obj169650)))
                                        (_E164246164258_)))))
                              (_E164246164258_))))
                      (_E164246164258_)))))
          (_E164245164285_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx164192_)
        (let* ((_e164193164203_ _stx164192_)
               (_E164195164207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164193164203_)))
               (_E164194164239_
                (lambda ()
                  (if (gx#stx-pair? _e164193164203_)
                      (let ((_e164196164211_ (gx#syntax-e _e164193164203_)))
                        (let ((_hd164197164214_ (##car _e164196164211_))
                              (_tl164198164216_ (##cdr _e164196164211_)))
                          (if (gx#stx-pair? _tl164198164216_)
                              (let ((_e164199164219_
                                     (gx#syntax-e _tl164198164216_)))
                                (let ((_hd164200164222_
                                       (##car _e164199164219_))
                                      (_tl164201164224_
                                       (##cdr _e164199164219_)))
                                  (let* ((_hd164227_ _hd164200164222_)
                                         (_body164229_ _tl164201164224_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164227_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd164227_
                                            (make-list__%
                                             (gx#stx-length _hd164227_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g164231164234_
                                                     _g164232164236_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g164231164234_
                                               _g164232164236_
                                               '#t))
                                            _hd164227_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd164227_))
                                           (gx#core-expand-local-block
                                            _stx164192_
                                            _body164229_))
                                         gx#current-expander-context
                                         (let ((__obj169651
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169651)
                                           __obj169651))
                                        (_E164195164207_)))))
                              (_E164195164207_))))
                      (_E164195164207_)))))
          (_E164194164239_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx164149_)
        (if (gx#stx-list? _stx164149_)
            (gx#stx-andmap
             (lambda (_bind164151_)
               (let* ((_e164152164162_ _bind164151_)
                      (_E164154164166_ (lambda () '#f))
                      (_E164153164188_
                       (lambda ()
                         (if (gx#stx-pair? _e164152164162_)
                             (let ((_e164155164170_
                                    (gx#syntax-e _e164152164162_)))
                               (let ((_hd164156164173_ (##car _e164155164170_))
                                     (_tl164157164175_
                                      (##cdr _e164155164170_)))
                                 (let ((_hd164178_ _hd164156164173_))
                                   (if (gx#stx-pair? _tl164157164175_)
                                       (let ((_e164158164180_
                                              (gx#syntax-e _tl164157164175_)))
                                         (let ((_hd164159164183_
                                                (##car _e164158164180_))
                                               (_tl164160164185_
                                                (##cdr _e164158164180_)))
                                           (if (gx#stx-null? _tl164160164185_)
                                               (if '#t
                                                   (gx#identifier? _hd164178_)
                                                   (_E164154164166_))
                                               (_E164154164166_))))
                                       (_E164154164166_)))))
                             (_E164154164166_)))))
                 (_E164153164188_)))
             _stx164149_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind164106_)
        (let* ((_e164107164117_ _bind164106_)
               (_E164109164121_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164107164117_)))
               (_E164108164145_
                (lambda ()
                  (if (gx#stx-pair? _e164107164117_)
                      (let ((_e164110164125_ (gx#syntax-e _e164107164117_)))
                        (let ((_hd164111164128_ (##car _e164110164125_))
                              (_tl164112164130_ (##cdr _e164110164125_)))
                          (if (gx#stx-pair? _tl164112164130_)
                              (let ((_e164113164133_
                                     (gx#syntax-e _tl164112164130_)))
                                (let ((_hd164114164136_
                                       (##car _e164113164133_))
                                      (_tl164115164138_
                                       (##cdr _e164113164133_)))
                                  (let ((_expr164141_ _hd164114164136_))
                                    (if (gx#stx-null? _tl164115164138_)
                                        (if '#t
                                            (let ((_g169660_
                                                   (gx#core-expand-expression+1
                                                    _expr164141_)))
                                              (begin
                                                (let ((_g169661_
                                                       (if (##values?
                                                            _g169660_)
                                                           (##vector-length
                                                            _g169660_)
                                                           1)))
                                                  (if (not (##fx= _g169661_ 2))
                                                      (error "Context expects 2 values"
                                                             _g169661_)))
                                                (let ((_e164143_
                                                       (##vector-ref
                                                        _g169660_
                                                        1)))
                                                  _e164143_)))
                                            (_E164109164121_))
                                        (_E164109164121_)))))
                              (_E164109164121_))))
                      (_E164109164121_)))))
          (_E164108164145_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind164051_ _e164052_ _rebind?164053_)
        (let* ((_e164054164064_ _bind164051_)
               (_E164056164068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164054164064_)))
               (_E164055164090_
                (lambda ()
                  (if (gx#stx-pair? _e164054164064_)
                      (let ((_e164057164072_ (gx#syntax-e _e164054164064_)))
                        (let ((_hd164058164075_ (##car _e164057164072_))
                              (_tl164059164077_ (##cdr _e164057164072_)))
                          (let ((_id164080_ _hd164058164075_))
                            (if (gx#stx-pair? _tl164059164077_)
                                (let ((_e164060164082_
                                       (gx#syntax-e _tl164059164077_)))
                                  (let ((_hd164061164085_
                                         (##car _e164060164082_))
                                        (_tl164062164087_
                                         (##cdr _e164060164082_)))
                                    (if (gx#stx-null? _tl164062164087_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id164080_
                                             _e164052_
                                             _rebind?164053_)
                                            (_E164056164068_))
                                        (_E164056164068_))))
                                (_E164056164068_)))))
                      (_E164056164068_)))))
          (_E164055164090_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind164097_ _e164098_)
        (let ((_rebind?164100_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind164097_
           _e164098_
           _rebind?164100_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g169663_
        (let ((_g169662_ (##length _g169663_)))
          (cond ((##fx= _g169662_ 2)
                 (apply (lambda (_bind164097_ _e164098_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind164097_
                           _e164098_))
                        _g169663_))
                ((##fx= _g169662_ 3)
                 (apply (lambda (_bind164102_ _e164103_ _rebind?164104_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind164102_
                           _e164103_
                           _rebind?164104_))
                        _g169663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g169663_))))))
    (define gx#core-expand-expression%
      (lambda (_stx164009_)
        (let* ((_e164010164020_ _stx164009_)
               (_E164012164024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164010164020_)))
               (_E164011164046_
                (lambda ()
                  (if (gx#stx-pair? _e164010164020_)
                      (let ((_e164013164028_ (gx#syntax-e _e164010164020_)))
                        (let ((_hd164014164031_ (##car _e164013164028_))
                              (_tl164015164033_ (##cdr _e164013164028_)))
                          (if (gx#stx-pair? _tl164015164033_)
                              (let ((_e164016164036_
                                     (gx#syntax-e _tl164015164033_)))
                                (let ((_hd164017164039_
                                       (##car _e164016164036_))
                                      (_tl164018164041_
                                       (##cdr _e164016164036_)))
                                  (let ((_expr164044_ _hd164017164039_))
                                    (if (gx#stx-null? _tl164018164041_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr164044_)
                                            (_E164012164024_))
                                        (_E164012164024_)))))
                              (_E164012164024_))))
                      (_E164012164024_)))))
          (_E164011164046_))))
    (define gx#core-expand-quote%
      (lambda (_stx163968_)
        (let* ((_e163969163979_ _stx163968_)
               (_E163971163983_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163969163979_)))
               (_E163970164005_
                (lambda ()
                  (if (gx#stx-pair? _e163969163979_)
                      (let ((_e163972163987_ (gx#syntax-e _e163969163979_)))
                        (let ((_hd163973163990_ (##car _e163972163987_))
                              (_tl163974163992_ (##cdr _e163972163987_)))
                          (if (gx#stx-pair? _tl163974163992_)
                              (let ((_e163975163995_
                                     (gx#syntax-e _tl163974163992_)))
                                (let ((_hd163976163998_
                                       (##car _e163975163995_))
                                      (_tl163977164000_
                                       (##cdr _e163975163995_)))
                                  (let ((_e164003_ _hd163976163998_))
                                    (if (gx#stx-null? _tl163977164000_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e164003_)
                                                         '()))
                                             (gx#stx-source _stx163968_))
                                            (_E163971163983_))
                                        (_E163971163983_)))))
                              (_E163971163983_))))
                      (_E163971163983_)))))
          (_E163970164005_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx163927_)
        (let* ((_e163928163938_ _stx163927_)
               (_E163930163942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163928163938_)))
               (_E163929163964_
                (lambda ()
                  (if (gx#stx-pair? _e163928163938_)
                      (let ((_e163931163946_ (gx#syntax-e _e163928163938_)))
                        (let ((_hd163932163949_ (##car _e163931163946_))
                              (_tl163933163951_ (##cdr _e163931163946_)))
                          (if (gx#stx-pair? _tl163933163951_)
                              (let ((_e163934163954_
                                     (gx#syntax-e _tl163933163951_)))
                                (let ((_hd163935163957_
                                       (##car _e163934163954_))
                                      (_tl163936163959_
                                       (##cdr _e163934163954_)))
                                  (let ((_e163962_ _hd163935163957_))
                                    (if (gx#stx-null? _tl163936163959_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e163962_)
                                                         '()))
                                             (gx#stx-source _stx163927_))
                                            (_E163930163942_))
                                        (_E163930163942_)))))
                              (_E163930163942_))))
                      (_E163930163942_)))))
          (_E163929163964_))))
    (define gx#core-expand-call%
      (lambda (_stx163884_)
        (let* ((_e163885163895_ _stx163884_)
               (_E163887163899_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163885163895_)))
               (_E163886163923_
                (lambda ()
                  (if (gx#stx-pair? _e163885163895_)
                      (let ((_e163888163903_ (gx#syntax-e _e163885163895_)))
                        (let ((_hd163889163906_ (##car _e163888163903_))
                              (_tl163890163908_ (##cdr _e163888163903_)))
                          (if (gx#stx-pair? _tl163890163908_)
                              (let ((_e163891163911_
                                     (gx#syntax-e _tl163890163908_)))
                                (let ((_hd163892163914_
                                       (##car _e163891163911_))
                                      (_tl163893163916_
                                       (##cdr _e163891163911_)))
                                  (let* ((_rator163919_ _hd163892163914_)
                                         (_args163921_ _tl163893163916_))
                                    (if (gx#stx-list? _args163921_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator163919_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args163921_))
                                         (gx#stx-source _stx163884_))
                                        (_E163887163899_)))))
                              (_E163887163899_))))
                      (_E163887163899_)))))
          (_E163886163923_))))
    (define gx#core-expand-if%
      (lambda (_stx163817_)
        (let* ((_e163818163834_ _stx163817_)
               (_E163820163838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163818163834_)))
               (_E163819163880_
                (lambda ()
                  (if (gx#stx-pair? _e163818163834_)
                      (let ((_e163821163842_ (gx#syntax-e _e163818163834_)))
                        (let ((_hd163822163845_ (##car _e163821163842_))
                              (_tl163823163847_ (##cdr _e163821163842_)))
                          (if (gx#stx-pair? _tl163823163847_)
                              (let ((_e163824163850_
                                     (gx#syntax-e _tl163823163847_)))
                                (let ((_hd163825163853_
                                       (##car _e163824163850_))
                                      (_tl163826163855_
                                       (##cdr _e163824163850_)))
                                  (let ((_test163858_ _hd163825163853_))
                                    (if (gx#stx-pair? _tl163826163855_)
                                        (let ((_e163827163860_
                                               (gx#syntax-e _tl163826163855_)))
                                          (let ((_hd163828163863_
                                                 (##car _e163827163860_))
                                                (_tl163829163865_
                                                 (##cdr _e163827163860_)))
                                            (let ((_K163868_ _hd163828163863_))
                                              (if (gx#stx-pair?
                                                   _tl163829163865_)
                                                  (let ((_e163830163870_
                                                         (gx#syntax-e
                                                          _tl163829163865_)))
                                                    (let ((_hd163831163873_
                                                           (##car _e163830163870_))
                                                          (_tl163832163875_
                                                           (##cdr _e163830163870_)))
                                                      (let ((_E163878_
                                                             _hd163831163873_))
                                                        (if (gx#stx-null?
                                                             _tl163832163875_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test163858_)
                                     (cons (gx#core-expand-expression
                                            _K163868_)
                                           (cons (gx#core-expand-expression
                                                  _E163878_)
                                                 '()))))
                         (gx#stx-source _stx163817_))
                        (_E163820163838_))
                    (_E163820163838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163820163838_)))))
                                        (_E163820163838_)))))
                              (_E163820163838_))))
                      (_E163820163838_)))))
          (_E163819163880_))))
    (define gx#core-expand-ref%
      (lambda (_stx163776_)
        (let* ((_e163777163787_ _stx163776_)
               (_E163779163791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163777163787_)))
               (_E163778163813_
                (lambda ()
                  (if (gx#stx-pair? _e163777163787_)
                      (let ((_e163780163795_ (gx#syntax-e _e163777163787_)))
                        (let ((_hd163781163798_ (##car _e163780163795_))
                              (_tl163782163800_ (##cdr _e163780163795_)))
                          (if (gx#stx-pair? _tl163782163800_)
                              (let ((_e163783163803_
                                     (gx#syntax-e _tl163782163800_)))
                                (let ((_hd163784163806_
                                       (##car _e163783163803_))
                                      (_tl163785163808_
                                       (##cdr _e163783163803_)))
                                  (let ((_id163811_ _hd163784163806_))
                                    (if (gx#stx-null? _tl163785163808_)
                                        (if (gx#identifier? _id163811_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id163811_
                                                          _stx163776_)
                                                         '()))
                                             (gx#stx-source _stx163776_))
                                            (_E163779163791_))
                                        (_E163779163791_)))))
                              (_E163779163791_))))
                      (_E163779163791_)))))
          (_E163778163813_))))
    (define gx#core-expand-setq%
      (lambda (_stx163722_)
        (let* ((_e163723163736_ _stx163722_)
               (_E163725163740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163723163736_)))
               (_E163724163772_
                (lambda ()
                  (if (gx#stx-pair? _e163723163736_)
                      (let ((_e163726163744_ (gx#syntax-e _e163723163736_)))
                        (let ((_hd163727163747_ (##car _e163726163744_))
                              (_tl163728163749_ (##cdr _e163726163744_)))
                          (if (gx#stx-pair? _tl163728163749_)
                              (let ((_e163729163752_
                                     (gx#syntax-e _tl163728163749_)))
                                (let ((_hd163730163755_
                                       (##car _e163729163752_))
                                      (_tl163731163757_
                                       (##cdr _e163729163752_)))
                                  (let ((_id163760_ _hd163730163755_))
                                    (if (gx#stx-pair? _tl163731163757_)
                                        (let ((_e163732163762_
                                               (gx#syntax-e _tl163731163757_)))
                                          (let ((_hd163733163765_
                                                 (##car _e163732163762_))
                                                (_tl163734163767_
                                                 (##cdr _e163732163762_)))
                                            (let ((_expr163770_
                                                   _hd163733163765_))
                                              (if (gx#stx-null?
                                                   _tl163734163767_)
                                                  (if (gx#identifier?
                                                       _id163760_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id163760_
                            _stx163722_)
                           (cons (gx#core-expand-expression _expr163770_)
                                 '())))
               (gx#stx-source _stx163722_))
              (_E163725163740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163725163740_)))))
                                        (_E163725163740_)))))
                              (_E163725163740_))))
                      (_E163725163740_)))))
          (_E163724163772_))))
    (define gx#macro-expand-extern
      (lambda (_stx163570_)
        (letrec ((_generate163572_
                  (lambda (_body163602_)
                    (let _lp163604_ ((_rest163606_ _body163602_)
                                     (_ns163607_
                                      (gx#core-context-namespace__0))
                                     (_r163608_ '()))
                      (let* ((_e163609163624_ _rest163606_)
                             (_E163622163628_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e163609163624_)))
                             (_E163618163632_
                              (lambda ()
                                (if (gx#stx-null? _e163609163624_)
                                    (if '#t
                                        (reverse _r163608_)
                                        (_E163622163628_))
                                    (_E163622163628_))))
                             (_E163611163689_
                              (lambda ()
                                (if (gx#stx-pair? _e163609163624_)
                                    (let ((_e163619163636_
                                           (gx#syntax-e _e163609163624_)))
                                      (let ((_hd163620163639_
                                             (##car _e163619163636_))
                                            (_tl163621163641_
                                             (##cdr _e163619163636_)))
                                        (let* ((_hd163644_ _hd163620163639_)
                                               (_rest163646_ _tl163621163641_))
                                          (if '#t
                                              (if (gx#identifier? _hd163644_)
                                                  (_lp163604_
                                                   _rest163646_
                                                   _ns163607_
                                                   (cons (cons _hd163644_
                                                               (cons (if _ns163607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd163644_
                                  _ns163607_
                                  '"#"
                                  _hd163644_)
                                 _hd163644_)
                             '()))
                 _r163608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e163647163657_
                                                          _hd163644_)
                                                         (_E163649163661_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e163647163657_)))
                                                         (_E163648163685_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e163647163657_)
                        (let ((_e163650163665_ (gx#syntax-e _e163647163657_)))
                          (let ((_hd163651163668_ (##car _e163650163665_))
                                (_tl163652163670_ (##cdr _e163650163665_)))
                            (let ((_id163673_ _hd163651163668_))
                              (if (gx#stx-pair? _tl163652163670_)
                                  (let ((_e163653163675_
                                         (gx#syntax-e _tl163652163670_)))
                                    (let ((_hd163654163678_
                                           (##car _e163653163675_))
                                          (_tl163655163680_
                                           (##cdr _e163653163675_)))
                                      (let ((_eid163683_ _hd163654163678_))
                                        (if (gx#stx-null? _tl163655163680_)
                                            (if (and (gx#identifier?
                                                      _id163673_)
                                                     (gx#identifier?
                                                      _eid163683_))
                                                (_lp163604_
                                                 _rest163646_
                                                 _ns163607_
                                                 (cons (cons _id163673_
                                                             (cons _eid163683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r163608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E163649163661_))
                                            (_E163649163661_)))))
                                  (_E163649163661_)))))
                        (_E163649163661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E163648163685_)))
                                              (_E163618163632_)))))
                                    (_E163618163632_))))
                             (_E163610163718_
                              (lambda ()
                                (if (gx#stx-pair? _e163609163624_)
                                    (let ((_e163612163693_
                                           (gx#syntax-e _e163609163624_)))
                                      (let ((_hd163613163696_
                                             (##car _e163612163693_))
                                            (_tl163614163698_
                                             (##cdr _e163612163693_)))
                                        (if (eq? (gx#stx-e _hd163613163696_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl163614163698_)
                                                (let ((_e163615163701_
                                                       (gx#syntax-e
                                                        _tl163614163698_)))
                                                  (let ((_hd163616163704_
                                                         (##car _e163615163701_))
                                                        (_tl163617163706_
                                                         (##cdr _e163615163701_)))
                                                    (let* ((_ns163709_
                                                            _hd163616163704_)
                                                           (_rest163711_
                                                            _tl163617163706_))
                                                      (if '#t
                                                          (let ((_ns163716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns163709_)
                             (symbol->string (gx#stx-e _ns163709_))
                             (if (or (gx#stx-string? _ns163709_)
                                     (gx#stx-false? _ns163709_))
                                 (gx#stx-e _ns163709_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx163570_
                                  _ns163709_)))))
                    (_lp163604_ _rest163711_ _ns163716_ _r163608_))
                  (_E163611163689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E163611163689_))
                                            (_E163611163689_))))
                                    (_E163611163689_)))))
                        (_E163610163718_))))))
          (let* ((_e163573163580_ _stx163570_)
                 (_E163575163584_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163573163580_)))
                 (_E163574163598_
                  (lambda ()
                    (if (gx#stx-pair? _e163573163580_)
                        (let ((_e163576163588_ (gx#syntax-e _e163573163580_)))
                          (let ((_hd163577163591_ (##car _e163576163588_))
                                (_tl163578163593_ (##cdr _e163576163588_)))
                            (let ((_body163596_ _tl163578163593_))
                              (if (gx#stx-list? _body163596_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate163572_ _body163596_))
                                  (_E163575163584_)))))
                        (_E163575163584_)))))
            (_E163574163598_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx163516_)
        (let* ((_e163517163530_ _stx163516_)
               (_E163519163534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163517163530_)))
               (_E163518163566_
                (lambda ()
                  (if (gx#stx-pair? _e163517163530_)
                      (let ((_e163520163538_ (gx#syntax-e _e163517163530_)))
                        (let ((_hd163521163541_ (##car _e163520163538_))
                              (_tl163522163543_ (##cdr _e163520163538_)))
                          (if (gx#stx-pair? _tl163522163543_)
                              (let ((_e163523163546_
                                     (gx#syntax-e _tl163522163543_)))
                                (let ((_hd163524163549_
                                       (##car _e163523163546_))
                                      (_tl163525163551_
                                       (##cdr _e163523163546_)))
                                  (let ((_hd163554_ _hd163524163549_))
                                    (if (gx#stx-pair? _tl163525163551_)
                                        (let ((_e163526163556_
                                               (gx#syntax-e _tl163525163551_)))
                                          (let ((_hd163527163559_
                                                 (##car _e163526163556_))
                                                (_tl163528163561_
                                                 (##cdr _e163526163556_)))
                                            (let ((_expr163564_
                                                   _hd163527163559_))
                                              (if (gx#stx-null?
                                                   _tl163528163561_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd163554_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd163554_)
                          (cons _expr163564_ '())))
              (_E163519163534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163519163534_)))))
                                        (_E163519163534_)))))
                              (_E163519163534_))))
                      (_E163519163534_)))))
          (_E163518163566_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx163462_)
        (let* ((_e163463163476_ _stx163462_)
               (_E163465163480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163463163476_)))
               (_E163464163512_
                (lambda ()
                  (if (gx#stx-pair? _e163463163476_)
                      (let ((_e163466163484_ (gx#syntax-e _e163463163476_)))
                        (let ((_hd163467163487_ (##car _e163466163484_))
                              (_tl163468163489_ (##cdr _e163466163484_)))
                          (if (gx#stx-pair? _tl163468163489_)
                              (let ((_e163469163492_
                                     (gx#syntax-e _tl163468163489_)))
                                (let ((_hd163470163495_
                                       (##car _e163469163492_))
                                      (_tl163471163497_
                                       (##cdr _e163469163492_)))
                                  (let ((_hd163500_ _hd163470163495_))
                                    (if (gx#stx-pair? _tl163471163497_)
                                        (let ((_e163472163502_
                                               (gx#syntax-e _tl163471163497_)))
                                          (let ((_hd163473163505_
                                                 (##car _e163472163502_))
                                                (_tl163474163507_
                                                 (##cdr _e163472163502_)))
                                            (let ((_expr163510_
                                                   _hd163473163505_))
                                              (if (gx#stx-null?
                                                   _tl163474163507_)
                                                  (if (gx#identifier?
                                                       _hd163500_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd163500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr163510_ '())))
              (_E163465163480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163465163480_)))))
                                        (_E163465163480_)))))
                              (_E163465163480_))))
                      (_E163465163480_)))))
          (_E163464163512_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx163408_)
        (let* ((_e163409163422_ _stx163408_)
               (_E163411163426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163409163422_)))
               (_E163410163458_
                (lambda ()
                  (if (gx#stx-pair? _e163409163422_)
                      (let ((_e163412163430_ (gx#syntax-e _e163409163422_)))
                        (let ((_hd163413163433_ (##car _e163412163430_))
                              (_tl163414163435_ (##cdr _e163412163430_)))
                          (if (gx#stx-pair? _tl163414163435_)
                              (let ((_e163415163438_
                                     (gx#syntax-e _tl163414163435_)))
                                (let ((_hd163416163441_
                                       (##car _e163415163438_))
                                      (_tl163417163443_
                                       (##cdr _e163415163438_)))
                                  (let ((_id163446_ _hd163416163441_))
                                    (if (gx#stx-pair? _tl163417163443_)
                                        (let ((_e163418163448_
                                               (gx#syntax-e _tl163417163443_)))
                                          (let ((_hd163419163451_
                                                 (##car _e163418163448_))
                                                (_tl163420163453_
                                                 (##cdr _e163418163448_)))
                                            (let ((_alias-id163456_
                                                   _hd163419163451_))
                                              (if (gx#stx-null?
                                                   _tl163420163453_)
                                                  (if (and (gx#identifier?
                                                            _id163446_)
                                                           (gx#identifier?
                                                            _alias-id163456_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id163446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id163456_ '())))
              (_E163411163426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163411163426_)))))
                                        (_E163411163426_)))))
                              (_E163411163426_))))
                      (_E163411163426_)))))
          (_E163410163458_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx163365_)
        (let* ((_e163366163376_ _stx163365_)
               (_E163368163380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163366163376_)))
               (_E163367163404_
                (lambda ()
                  (if (gx#stx-pair? _e163366163376_)
                      (let ((_e163369163384_ (gx#syntax-e _e163366163376_)))
                        (let ((_hd163370163387_ (##car _e163369163384_))
                              (_tl163371163389_ (##cdr _e163369163384_)))
                          (if (gx#stx-pair? _tl163371163389_)
                              (let ((_e163372163392_
                                     (gx#syntax-e _tl163371163389_)))
                                (let ((_hd163373163395_
                                       (##car _e163372163392_))
                                      (_tl163374163397_
                                       (##cdr _e163372163392_)))
                                  (let* ((_hd163400_ _hd163373163395_)
                                         (_body163402_ _tl163374163397_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd163400_)
                                             (gx#stx-list? _body163402_)
                                             (not (gx#stx-null? _body163402_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd163400_)
                                         _body163402_)
                                        (_E163368163380_)))))
                              (_E163368163380_))))
                      (_E163368163380_)))))
          (_E163367163404_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx163301_)
        (letrec ((_generate163303_
                  (lambda (_clause163333_)
                    (let* ((_e163334163341_ _clause163333_)
                           (_E163336163345_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx163301_
                               _clause163333_)))
                           (_E163335163361_
                            (lambda ()
                              (if (gx#stx-pair? _e163334163341_)
                                  (let ((_e163337163349_
                                         (gx#syntax-e _e163334163341_)))
                                    (let ((_hd163338163352_
                                           (##car _e163337163349_))
                                          (_tl163339163354_
                                           (##cdr _e163337163349_)))
                                      (let* ((_hd163357_ _hd163338163352_)
                                             (_body163359_ _tl163339163354_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd163357_)
                                                 (gx#stx-list? _body163359_)
                                                 (not (gx#stx-null?
                                                       _body163359_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd163357_)
                                                   _body163359_)
                                             (gx#stx-source _clause163333_))
                                            (_E163336163345_)))))
                                  (_E163336163345_)))))
                      (_E163335163361_)))))
          (let* ((_e163304163311_ _stx163301_)
                 (_E163306163315_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163304163311_)))
                 (_E163305163329_
                  (lambda ()
                    (if (gx#stx-pair? _e163304163311_)
                        (let ((_e163307163319_ (gx#syntax-e _e163304163311_)))
                          (let ((_hd163308163322_ (##car _e163307163319_))
                                (_tl163309163324_ (##cdr _e163307163319_)))
                            (let ((_clauses163327_ _tl163309163324_))
                              (if (gx#stx-list? _clauses163327_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate163303_
                                    _clauses163327_))
                                  (_E163306163315_)))))
                        (_E163306163315_)))))
            (_E163305163329_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx163202_ _form163203_)
        (letrec ((_generate163205_
                  (lambda (_bind163248_)
                    (let* ((_e163249163259_ _bind163248_)
                           (_E163251163263_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx163202_
                               _bind163248_)))
                           (_E163250163287_
                            (lambda ()
                              (if (gx#stx-pair? _e163249163259_)
                                  (let ((_e163252163267_
                                         (gx#syntax-e _e163249163259_)))
                                    (let ((_hd163253163270_
                                           (##car _e163252163267_))
                                          (_tl163254163272_
                                           (##cdr _e163252163267_)))
                                      (let ((_ids163275_ _hd163253163270_))
                                        (if (gx#stx-pair? _tl163254163272_)
                                            (let ((_e163255163277_
                                                   (gx#syntax-e
                                                    _tl163254163272_)))
                                              (let ((_hd163256163280_
                                                     (##car _e163255163277_))
                                                    (_tl163257163282_
                                                     (##cdr _e163255163277_)))
                                                (let ((_expr163285_
                                                       _hd163256163280_))
                                                  (if (gx#stx-null?
                                                       _tl163257163282_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids163275_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids163275_)
                        (cons _expr163285_ '()))
                  (_E163251163263_))
              (_E163251163263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E163251163263_)))))
                                  (_E163251163263_)))))
                      (_E163250163287_)))))
          (let* ((_e163206163216_ _stx163202_)
                 (_E163208163220_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163206163216_)))
                 (_E163207163244_
                  (lambda ()
                    (if (gx#stx-pair? _e163206163216_)
                        (let ((_e163209163224_ (gx#syntax-e _e163206163216_)))
                          (let ((_hd163210163227_ (##car _e163209163224_))
                                (_tl163211163229_ (##cdr _e163209163224_)))
                            (if (gx#stx-pair? _tl163211163229_)
                                (let ((_e163212163232_
                                       (gx#syntax-e _tl163211163229_)))
                                  (let ((_hd163213163235_
                                         (##car _e163212163232_))
                                        (_tl163214163237_
                                         (##cdr _e163212163232_)))
                                    (let* ((_hd163240_ _hd163213163235_)
                                           (_body163242_ _tl163214163237_))
                                      (if (and (gx#stx-list? _hd163240_)
                                               (gx#stx-list? _body163242_)
                                               (not (gx#stx-null?
                                                     _body163242_)))
                                          (gx#core-cons*
                                           _form163203_
                                           (gx#stx-map1
                                            _generate163205_
                                            _hd163240_)
                                           _body163242_)
                                          (_E163208163220_)))))
                                (_E163208163220_))))
                        (_E163208163220_)))))
            (_E163207163244_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx163294_)
        (let ((_form163296_ '%#let-values))
          (gx#macro-expand-let-values__% _stx163294_ _form163296_))))
    (define gx#macro-expand-let-values
      (lambda _g169665_
        (let ((_g169664_ (##length _g169665_)))
          (cond ((##fx= _g169664_ 1)
                 (apply (lambda (_stx163294_)
                          (gx#macro-expand-let-values__0 _stx163294_))
                        _g169665_))
                ((##fx= _g169664_ 2)
                 (apply (lambda (_stx163298_ _form163299_)
                          (gx#macro-expand-let-values__%
                           _stx163298_
                           _form163299_))
                        _g169665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g169665_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx163199_)
        (gx#macro-expand-let-values__% _stx163199_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx163197_)
        (gx#macro-expand-let-values__% _stx163197_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx163088_)
        (let* ((_e163089163115_ _stx163088_)
               (_E163101163119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163089163115_)))
               (_E163091163161_
                (lambda ()
                  (if (gx#stx-pair? _e163089163115_)
                      (let ((_e163102163123_ (gx#syntax-e _e163089163115_)))
                        (let ((_hd163103163126_ (##car _e163102163123_))
                              (_tl163104163128_ (##cdr _e163102163123_)))
                          (if (gx#stx-pair? _tl163104163128_)
                              (let ((_e163105163131_
                                     (gx#syntax-e _tl163104163128_)))
                                (let ((_hd163106163134_
                                       (##car _e163105163131_))
                                      (_tl163107163136_
                                       (##cdr _e163105163131_)))
                                  (let ((_test163139_ _hd163106163134_))
                                    (if (gx#stx-pair? _tl163107163136_)
                                        (let ((_e163108163141_
                                               (gx#syntax-e _tl163107163136_)))
                                          (let ((_hd163109163144_
                                                 (##car _e163108163141_))
                                                (_tl163110163146_
                                                 (##cdr _e163108163141_)))
                                            (let ((_K163149_ _hd163109163144_))
                                              (if (gx#stx-pair?
                                                   _tl163110163146_)
                                                  (let ((_e163111163151_
                                                         (gx#syntax-e
                                                          _tl163110163146_)))
                                                    (let ((_hd163112163154_
                                                           (##car _e163111163151_))
                                                          (_tl163113163156_
                                                           (##cdr _e163111163151_)))
                                                      (let ((_E163159_
                                                             _hd163112163154_))
                                                        (if (gx#stx-null?
                                                             _tl163113163156_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test163139_
                         _K163149_
                         _E163159_)
                        (_E163101163119_))
                    (_E163101163119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163101163119_)))))
                                        (_E163101163119_)))))
                              (_E163101163119_))))
                      (_E163101163119_))))
               (_E163090163193_
                (lambda ()
                  (if (gx#stx-pair? _e163089163115_)
                      (let ((_e163092163165_ (gx#syntax-e _e163089163115_)))
                        (let ((_hd163093163168_ (##car _e163092163165_))
                              (_tl163094163170_ (##cdr _e163092163165_)))
                          (if (gx#stx-pair? _tl163094163170_)
                              (let ((_e163095163173_
                                     (gx#syntax-e _tl163094163170_)))
                                (let ((_hd163096163176_
                                       (##car _e163095163173_))
                                      (_tl163097163178_
                                       (##cdr _e163095163173_)))
                                  (let ((_test163181_ _hd163096163176_))
                                    (if (gx#stx-pair? _tl163097163178_)
                                        (let ((_e163098163183_
                                               (gx#syntax-e _tl163097163178_)))
                                          (let ((_hd163099163186_
                                                 (##car _e163098163183_))
                                                (_tl163100163188_
                                                 (##cdr _e163098163183_)))
                                            (let ((_K163191_ _hd163099163186_))
                                              (if (gx#stx-null?
                                                   _tl163100163188_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test163181_
                                                       _K163191_
                                                       '#!void)
                                                      (_E163091163161_))
                                                  (_E163091163161_)))))
                                        (_E163091163161_)))))
                              (_E163091163161_))))
                      (_E163091163161_)))))
          (_E163090163193_))))
    (define gx#free-identifier=?
      (lambda (_xid163076_ _yid163077_)
        (let ((_xe163079_ (gx#resolve-identifier__0 _xid163076_))
              (_ye163080_ (gx#resolve-identifier__0 _yid163077_)))
          (if (and _xe163079_ _ye163080_)
              (let ((_$e163082_ (eq? _xe163079_ _ye163080_)))
                (if _$e163082_
                    _$e163082_
                    (if (##structure-instance-of? _xe163079_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye163080_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe163079_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye163080_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe163079_ _ye163080_)
                  '#f
                  (gx#stx-eq? _xid163076_ _yid163077_))))))
    (define gx#bound-identifier=?
      (lambda (_xid163060_ _yid163061_)
        (letrec ((_context163063_
                  (lambda (_e163074_)
                    (if (##structure-direct-instance-of?
                         _e163074_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e163074_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks163064_
                  (lambda (_e163072_)
                    (if (symbol? _e163072_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e163072_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e163072_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e163072_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap163065_
                  (lambda (_e163070_)
                    (if (symbol? _e163070_)
                        _e163070_
                        (gx#syntax-local-unwrap _e163070_)))))
          (let ((_x163067_ (_unwrap163065_ _xid163060_))
                (_y163068_ (_unwrap163065_ _yid163061_)))
            (if (gx#stx-eq? _x163067_ _y163068_)
                (if (eq? (_context163063_ _x163067_)
                         (_context163063_ _y163068_))
                    (equal? (_marks163064_ _x163067_)
                            (_marks163064_ _y163068_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx163058_)
        (if (gx#identifier? _stx163058_)
            (gx#core-identifier=? _stx163058_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx163056_)
        (if (gx#identifier? _stx163056_)
            (gx#core-identifier=? _stx163056_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x163054_)
        (if (gx#identifier? _x163054_)
            (if (not (gx#underscore? _x163054_)) _x163054_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx163000_ _where163001_)
        (let _lp163003_ ((_rest163005_ (gx#syntax->list _stx163000_)))
          (let* ((_rest163006163014_ _rest163005_)
                 (_else163008163022_ (lambda () '#t))
                 (_K163010163032_
                  (lambda (_rest163025_ _hd163026_)
                    (if (not (gx#identifier? _hd163026_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where163001_
                         _hd163026_)
                        (if (find (lambda (_g163027163029_)
                                    (gx#bound-identifier=?
                                     _g163027163029_
                                     _hd163026_))
                                  _rest163025_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where163001_
                             _hd163026_)
                            (_lp163003_ _rest163025_))))))
            (if (##pair? _rest163006163014_)
                (let ((_hd163011163035_ (##car _rest163006163014_))
                      (_tl163012163037_ (##cdr _rest163006163014_)))
                  (let* ((_hd163040_ _hd163011163035_)
                         (_rest163042_ _tl163012163037_))
                    (_K163010163032_ _rest163042_ _hd163040_)))
                (_else163008163022_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx163047_)
        (let ((_where163049_ _stx163047_))
          (gx#check-duplicate-identifiers__% _stx163047_ _where163049_))))
    (define gx#check-duplicate-identifiers
      (lambda _g169667_
        (let ((_g169666_ (##length _g169667_)))
          (cond ((##fx= _g169666_ 1)
                 (apply (lambda (_stx163047_)
                          (gx#check-duplicate-identifiers__0 _stx163047_))
                        _g169667_))
                ((##fx= _g169666_ 2)
                 (apply (lambda (_stx163051_ _where163052_)
                          (gx#check-duplicate-identifiers__%
                           _stx163051_
                           _where163052_))
                        _g169667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g169667_))))))
    (define gx#core-bind-values?
      (lambda (_stx162992_)
        (gx#stx-andmap
         (lambda (_x162994_)
           (let ((_$e162996_ (gx#identifier? _x162994_)))
             (if _$e162996_ _$e162996_ (gx#stx-false? _x162994_))))
         _stx162992_)))
    (define gx#core-bind-values!__%
      (lambda (_stx162956_ _rebind?162957_ _phi162958_ _ctx162959_)
        (gx#stx-for-each1
         (lambda (_id162961_)
           (if (gx#identifier? _id162961_)
               (gx#core-bind-runtime!__%
                _id162961_
                _rebind?162957_
                _phi162958_
                _ctx162959_)
               '#!void))
         _stx162956_)))
    (define gx#core-bind-values!__0
      (lambda (_stx162966_)
        (let* ((_rebind?162968_ '#f)
               (_phi162970_ (gx#current-expander-phi))
               (_ctx162972_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx162966_
           _rebind?162968_
           _phi162970_
           _ctx162972_))))
    (define gx#core-bind-values!__1
      (lambda (_stx162974_ _rebind?162975_)
        (let* ((_phi162977_ (gx#current-expander-phi))
               (_ctx162979_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx162974_
           _rebind?162975_
           _phi162977_
           _ctx162979_))))
    (define gx#core-bind-values!__2
      (lambda (_stx162981_ _rebind?162982_ _phi162983_)
        (let ((_ctx162985_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx162981_
           _rebind?162982_
           _phi162983_
           _ctx162985_))))
    (define gx#core-bind-values!
      (lambda _g169669_
        (let ((_g169668_ (##length _g169669_)))
          (cond ((##fx= _g169668_ 1)
                 (apply (lambda (_stx162966_)
                          (gx#core-bind-values!__0 _stx162966_))
                        _g169669_))
                ((##fx= _g169668_ 2)
                 (apply (lambda (_stx162974_ _rebind?162975_)
                          (gx#core-bind-values!__1
                           _stx162974_
                           _rebind?162975_))
                        _g169669_))
                ((##fx= _g169668_ 3)
                 (apply (lambda (_stx162981_ _rebind?162982_ _phi162983_)
                          (gx#core-bind-values!__2
                           _stx162981_
                           _rebind?162982_
                           _phi162983_))
                        _g169669_))
                ((##fx= _g169668_ 4)
                 (apply (lambda (_stx162987_
                                 _rebind?162988_
                                 _phi162989_
                                 _ctx162990_)
                          (gx#core-bind-values!__%
                           _stx162987_
                           _rebind?162988_
                           _phi162989_
                           _ctx162990_))
                        _g169669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g169669_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx162951_)
        (gx#stx-map1
         (lambda (_x162953_)
           (if (gx#identifier? _x162953_)
               (gx#core-quote-syntax__0 _x162953_)
               '#f))
         _stx162951_)))
    (define gx#core-runtime-ref?
      (lambda (_stx162944_)
        (if (gx#identifier? _stx162944_)
            (let* ((_bind162946_ (gx#resolve-identifier__0 _stx162944_))
                   (_$e162948_ (not _bind162946_)))
              (if _$e162948_
                  _$e162948_
                  (##structure-instance-of?
                   _bind162946_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id162936_ _form162937_)
        (let ((_bind162939_ (gx#resolve-identifier__0 _id162936_)))
          (if (##structure-instance-of? _bind162939_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id162936_)
              (if (not _bind162939_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id162936_)))
                      (gx#core-quote-syntax__0 _id162936_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form162937_
                       _id162936_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form162937_
                   _id162936_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id162895_ _rebind?162896_ _phi162897_ _ctx162898_)
        (let* ((_key162900_ (gx#core-identifier-key _id162895_))
               (_eid162902_
                (gx#make-binding-id__%
                 _key162900_
                 '#f
                 _phi162897_
                 _ctx162898_))
               (_bind162904_
                (if (##structure-instance-of?
                     _ctx162898_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid162902_
                     _key162900_
                     _phi162897_
                     _ctx162898_)
                    (if (##structure-instance-of?
                         _ctx162898_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid162902_
                         _key162900_
                         _phi162897_)
                        (if (##structure-instance-of?
                             _ctx162898_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid162902_
                             _key162900_
                             _phi162897_)
                            (##structure
                             gx#runtime-binding::t
                             _eid162902_
                             _key162900_
                             _phi162897_))))))
          (gx#bind-identifier!__%
           _id162895_
           _bind162904_
           _rebind?162896_
           _phi162897_
           _ctx162898_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id162910_)
        (let* ((_rebind?162912_ '#f)
               (_phi162914_ (gx#current-expander-phi))
               (_ctx162916_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id162910_
           _rebind?162912_
           _phi162914_
           _ctx162916_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id162918_ _rebind?162919_)
        (let* ((_phi162921_ (gx#current-expander-phi))
               (_ctx162923_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id162918_
           _rebind?162919_
           _phi162921_
           _ctx162923_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id162925_ _rebind?162926_ _phi162927_)
        (let ((_ctx162929_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id162925_
           _rebind?162926_
           _phi162927_
           _ctx162929_))))
    (define gx#core-bind-runtime!
      (lambda _g169671_
        (let ((_g169670_ (##length _g169671_)))
          (cond ((##fx= _g169670_ 1)
                 (apply (lambda (_id162910_)
                          (gx#core-bind-runtime!__0 _id162910_))
                        _g169671_))
                ((##fx= _g169670_ 2)
                 (apply (lambda (_id162918_ _rebind?162919_)
                          (gx#core-bind-runtime!__1
                           _id162918_
                           _rebind?162919_))
                        _g169671_))
                ((##fx= _g169670_ 3)
                 (apply (lambda (_id162925_ _rebind?162926_ _phi162927_)
                          (gx#core-bind-runtime!__2
                           _id162925_
                           _rebind?162926_
                           _phi162927_))
                        _g169671_))
                ((##fx= _g169670_ 4)
                 (apply (lambda (_id162931_
                                 _rebind?162932_
                                 _phi162933_
                                 _ctx162934_)
                          (gx#core-bind-runtime!__%
                           _id162931_
                           _rebind?162932_
                           _phi162933_
                           _ctx162934_))
                        _g169671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g169671_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id162850_ _eid162851_ _rebind?162852_ _phi162853_ _ctx162854_)
        (let* ((_key162856_ (gx#core-identifier-key _id162850_))
               (_bind162858_
                (if (##structure-instance-of?
                     _ctx162854_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid162851_
                     _key162856_
                     _phi162853_
                     _ctx162854_)
                    (if (##structure-instance-of?
                         _ctx162854_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid162851_
                         _key162856_
                         _phi162853_)
                        (##structure
                         gx#runtime-binding::t
                         _eid162851_
                         _key162856_
                         _phi162853_)))))
          (gx#bind-identifier!__%
           _id162850_
           _bind162858_
           _rebind?162852_
           _phi162853_
           _ctx162854_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id162864_ _eid162865_)
        (let* ((_rebind?162867_ '#f)
               (_phi162869_ (gx#current-expander-phi))
               (_ctx162871_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162864_
           _eid162865_
           _rebind?162867_
           _phi162869_
           _ctx162871_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id162873_ _eid162874_ _rebind?162875_)
        (let* ((_phi162877_ (gx#current-expander-phi))
               (_ctx162879_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162873_
           _eid162874_
           _rebind?162875_
           _phi162877_
           _ctx162879_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id162881_ _eid162882_ _rebind?162883_ _phi162884_)
        (let ((_ctx162886_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162881_
           _eid162882_
           _rebind?162883_
           _phi162884_
           _ctx162886_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g169673_
        (let ((_g169672_ (##length _g169673_)))
          (cond ((##fx= _g169672_ 2)
                 (apply (lambda (_id162864_ _eid162865_)
                          (gx#core-bind-runtime-reference!__0
                           _id162864_
                           _eid162865_))
                        _g169673_))
                ((##fx= _g169672_ 3)
                 (apply (lambda (_id162873_ _eid162874_ _rebind?162875_)
                          (gx#core-bind-runtime-reference!__1
                           _id162873_
                           _eid162874_
                           _rebind?162875_))
                        _g169673_))
                ((##fx= _g169672_ 4)
                 (apply (lambda (_id162881_
                                 _eid162882_
                                 _rebind?162883_
                                 _phi162884_)
                          (gx#core-bind-runtime-reference!__2
                           _id162881_
                           _eid162882_
                           _rebind?162883_
                           _phi162884_))
                        _g169673_))
                ((##fx= _g169672_ 5)
                 (apply (lambda (_id162888_
                                 _eid162889_
                                 _rebind?162890_
                                 _phi162891_
                                 _ctx162892_)
                          (gx#core-bind-runtime-reference!__%
                           _id162888_
                           _eid162889_
                           _rebind?162890_
                           _phi162891_
                           _ctx162892_))
                        _g169673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g169673_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id162810_ _eid162811_ _rebind?162812_ _phi162813_ _ctx162814_)
        (gx#bind-identifier!__%
         _id162810_
         (##structure
          gx#extern-binding::t
          _eid162811_
          (gx#core-identifier-key _id162810_)
          _phi162813_)
         _rebind?162812_
         _phi162813_
         _ctx162814_)))
    (define gx#core-bind-extern!__0
      (lambda (_id162819_ _eid162820_)
        (let* ((_rebind?162822_ '#f)
               (_phi162824_ (gx#current-expander-phi))
               (_ctx162826_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162819_
           _eid162820_
           _rebind?162822_
           _phi162824_
           _ctx162826_))))
    (define gx#core-bind-extern!__1
      (lambda (_id162828_ _eid162829_ _rebind?162830_)
        (let* ((_phi162832_ (gx#current-expander-phi))
               (_ctx162834_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162828_
           _eid162829_
           _rebind?162830_
           _phi162832_
           _ctx162834_))))
    (define gx#core-bind-extern!__2
      (lambda (_id162836_ _eid162837_ _rebind?162838_ _phi162839_)
        (let ((_ctx162841_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162836_
           _eid162837_
           _rebind?162838_
           _phi162839_
           _ctx162841_))))
    (define gx#core-bind-extern!
      (lambda _g169675_
        (let ((_g169674_ (##length _g169675_)))
          (cond ((##fx= _g169674_ 2)
                 (apply (lambda (_id162819_ _eid162820_)
                          (gx#core-bind-extern!__0 _id162819_ _eid162820_))
                        _g169675_))
                ((##fx= _g169674_ 3)
                 (apply (lambda (_id162828_ _eid162829_ _rebind?162830_)
                          (gx#core-bind-extern!__1
                           _id162828_
                           _eid162829_
                           _rebind?162830_))
                        _g169675_))
                ((##fx= _g169674_ 4)
                 (apply (lambda (_id162836_
                                 _eid162837_
                                 _rebind?162838_
                                 _phi162839_)
                          (gx#core-bind-extern!__2
                           _id162836_
                           _eid162837_
                           _rebind?162838_
                           _phi162839_))
                        _g169675_))
                ((##fx= _g169674_ 5)
                 (apply (lambda (_id162843_
                                 _eid162844_
                                 _rebind?162845_
                                 _phi162846_
                                 _ctx162847_)
                          (gx#core-bind-extern!__%
                           _id162843_
                           _eid162844_
                           _rebind?162845_
                           _phi162846_
                           _ctx162847_))
                        _g169675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g169675_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id162764_ _e162765_ _rebind?162766_ _phi162767_ _ctx162768_)
        (gx#bind-identifier!__%
         _id162764_
         (let ((_key162773_ (gx#core-identifier-key _id162764_))
               (_e162774_
                (if (or (##structure-instance-of? _e162765_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e162765_
                         'gx#expander-context::t))
                    _e162765_
                    (##structure
                     gx#user-expander::t
                     _e162765_
                     _ctx162768_
                     _phi162767_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key162773_ '#t _phi162767_ _ctx162768_)
            _key162773_
            _phi162767_
            _e162774_))
         _rebind?162766_
         _phi162767_
         _ctx162768_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id162779_ _e162780_)
        (let* ((_rebind?162782_ '#f)
               (_phi162784_ (gx#current-expander-phi))
               (_ctx162786_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162779_
           _e162780_
           _rebind?162782_
           _phi162784_
           _ctx162786_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id162788_ _e162789_ _rebind?162790_)
        (let* ((_phi162792_ (gx#current-expander-phi))
               (_ctx162794_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162788_
           _e162789_
           _rebind?162790_
           _phi162792_
           _ctx162794_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id162796_ _e162797_ _rebind?162798_ _phi162799_)
        (let ((_ctx162801_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162796_
           _e162797_
           _rebind?162798_
           _phi162799_
           _ctx162801_))))
    (define gx#core-bind-syntax!
      (lambda _g169677_
        (let ((_g169676_ (##length _g169677_)))
          (cond ((##fx= _g169676_ 2)
                 (apply (lambda (_id162779_ _e162780_)
                          (gx#core-bind-syntax!__0 _id162779_ _e162780_))
                        _g169677_))
                ((##fx= _g169676_ 3)
                 (apply (lambda (_id162788_ _e162789_ _rebind?162790_)
                          (gx#core-bind-syntax!__1
                           _id162788_
                           _e162789_
                           _rebind?162790_))
                        _g169677_))
                ((##fx= _g169676_ 4)
                 (apply (lambda (_id162796_
                                 _e162797_
                                 _rebind?162798_
                                 _phi162799_)
                          (gx#core-bind-syntax!__2
                           _id162796_
                           _e162797_
                           _rebind?162798_
                           _phi162799_))
                        _g169677_))
                ((##fx= _g169676_ 5)
                 (apply (lambda (_id162803_
                                 _e162804_
                                 _rebind?162805_
                                 _phi162806_
                                 _ctx162807_)
                          (gx#core-bind-syntax!__%
                           _id162803_
                           _e162804_
                           _rebind?162805_
                           _phi162806_
                           _ctx162807_))
                        _g169677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g169677_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id162747_ _e162748_ _rebind?162749_)
        (gx#core-bind-syntax!__%
         _id162747_
         _e162748_
         _rebind?162749_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id162754_ _e162755_)
        (let ((_rebind?162757_ '#f))
          (gx#core-bind-root-syntax!__%
           _id162754_
           _e162755_
           _rebind?162757_))))
    (define gx#core-bind-root-syntax!
      (lambda _g169679_
        (let ((_g169678_ (##length _g169679_)))
          (cond ((##fx= _g169678_ 2)
                 (apply (lambda (_id162754_ _e162755_)
                          (gx#core-bind-root-syntax!__0 _id162754_ _e162755_))
                        _g169679_))
                ((##fx= _g169678_ 3)
                 (apply (lambda (_id162759_ _e162760_ _rebind?162761_)
                          (gx#core-bind-root-syntax!__%
                           _id162759_
                           _e162760_
                           _rebind?162761_))
                        _g169679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g169679_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id162705_
               _alias-id162706_
               _rebind?162707_
               _phi162708_
               _ctx162709_)
        (gx#bind-identifier!__%
         _id162705_
         (let ((_key162711_ (gx#core-identifier-key _id162705_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key162711_ '#t _phi162708_ _ctx162709_)
            _key162711_
            _phi162708_
            _alias-id162706_))
         _rebind?162707_
         _phi162708_
         _ctx162709_)))
    (define gx#core-bind-alias!__0
      (lambda (_id162716_ _alias-id162717_)
        (let* ((_rebind?162719_ '#f)
               (_phi162721_ (gx#current-expander-phi))
               (_ctx162723_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162716_
           _alias-id162717_
           _rebind?162719_
           _phi162721_
           _ctx162723_))))
    (define gx#core-bind-alias!__1
      (lambda (_id162725_ _alias-id162726_ _rebind?162727_)
        (let* ((_phi162729_ (gx#current-expander-phi))
               (_ctx162731_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162725_
           _alias-id162726_
           _rebind?162727_
           _phi162729_
           _ctx162731_))))
    (define gx#core-bind-alias!__2
      (lambda (_id162733_ _alias-id162734_ _rebind?162735_ _phi162736_)
        (let ((_ctx162738_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162733_
           _alias-id162734_
           _rebind?162735_
           _phi162736_
           _ctx162738_))))
    (define gx#core-bind-alias!
      (lambda _g169681_
        (let ((_g169680_ (##length _g169681_)))
          (cond ((##fx= _g169680_ 2)
                 (apply (lambda (_id162716_ _alias-id162717_)
                          (gx#core-bind-alias!__0 _id162716_ _alias-id162717_))
                        _g169681_))
                ((##fx= _g169680_ 3)
                 (apply (lambda (_id162725_ _alias-id162726_ _rebind?162727_)
                          (gx#core-bind-alias!__1
                           _id162725_
                           _alias-id162726_
                           _rebind?162727_))
                        _g169681_))
                ((##fx= _g169680_ 4)
                 (apply (lambda (_id162733_
                                 _alias-id162734_
                                 _rebind?162735_
                                 _phi162736_)
                          (gx#core-bind-alias!__2
                           _id162733_
                           _alias-id162734_
                           _rebind?162735_
                           _phi162736_))
                        _g169681_))
                ((##fx= _g169680_ 5)
                 (apply (lambda (_id162740_
                                 _alias-id162741_
                                 _rebind?162742_
                                 _phi162743_
                                 _ctx162744_)
                          (gx#core-bind-alias!__%
                           _id162740_
                           _alias-id162741_
                           _rebind?162742_
                           _phi162743_
                           _ctx162744_))
                        _g169681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g169681_))))))
    (define gx#make-binding-id__%
      (lambda (_key162662_ _syntax?162663_ _phi162664_ _ctx162665_)
        (if (uninterned-symbol? _key162662_)
            (gensym 'L)
            (if (pair? _key162662_)
                (gensym (car _key162662_))
                (if (##structure-instance-of? _ctx162665_ 'gx#top-context::t)
                    (let ((_ns162667_
                           (gx#core-context-namespace__% _ctx162665_)))
                      (if (and (fxzero? _phi162664_) (not _syntax?162663_))
                          (if _ns162667_
                              (make-symbol__1 _ns162667_ '"#" _key162662_)
                              _key162662_)
                          (if _syntax?162663_
                              (make-symbol__1
                               (let ((_$e162669_ _ns162667_))
                                 (if _$e162669_ _$e162669_ '""))
                               '"[:"
                               (number->string _phi162664_)
                               '":]#"
                               _key162662_)
                              (make-symbol__1
                               (let ((_$e162672_ _ns162667_))
                                 (if _$e162672_ _$e162672_ '""))
                               '"["
                               (number->string _phi162664_)
                               '"]#"
                               _key162662_))))
                    (gensym _key162662_))))))
    (define gx#make-binding-id__0
      (lambda (_key162678_)
        (let* ((_syntax?162680_ '#f)
               (_phi162682_ (gx#current-expander-phi))
               (_ctx162684_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162678_
           _syntax?162680_
           _phi162682_
           _ctx162684_))))
    (define gx#make-binding-id__1
      (lambda (_key162686_ _syntax?162687_)
        (let* ((_phi162689_ (gx#current-expander-phi))
               (_ctx162691_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162686_
           _syntax?162687_
           _phi162689_
           _ctx162691_))))
    (define gx#make-binding-id__2
      (lambda (_key162693_ _syntax?162694_ _phi162695_)
        (let ((_ctx162697_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162693_
           _syntax?162694_
           _phi162695_
           _ctx162697_))))
    (define gx#make-binding-id
      (lambda _g169683_
        (let ((_g169682_ (##length _g169683_)))
          (cond ((##fx= _g169682_ 1)
                 (apply (lambda (_key162678_)
                          (gx#make-binding-id__0 _key162678_))
                        _g169683_))
                ((##fx= _g169682_ 2)
                 (apply (lambda (_key162686_ _syntax?162687_)
                          (gx#make-binding-id__1 _key162686_ _syntax?162687_))
                        _g169683_))
                ((##fx= _g169682_ 3)
                 (apply (lambda (_key162693_ _syntax?162694_ _phi162695_)
                          (gx#make-binding-id__2
                           _key162693_
                           _syntax?162694_
                           _phi162695_))
                        _g169683_))
                ((##fx= _g169682_ 4)
                 (apply (lambda (_key162699_
                                 _syntax?162700_
                                 _phi162701_
                                 _ctx162702_)
                          (gx#make-binding-id__%
                           _key162699_
                           _syntax?162700_
                           _phi162701_
                           _ctx162702_))
                        _g169683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g169683_))))))))
