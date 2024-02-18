(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708280334)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx165741_)
        (letrec ((_expand-special165743_
                  (lambda (_hd165745_ _K165746_ _rest165747_ _r165748_)
                    (_K165746_
                     _rest165747_
                     (cons (gx#core-expand-top _hd165745_) _r165748_)))))
          (gx#core-expand-block__0 _stx165741_ _expand-special165743_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx165494_)
        (letrec ((_expand-special165496_
                  (lambda (_hd165616_ _K165617_ _rest165618_ _r165619_)
                    (let* ((_K165623_
                            (lambda (_e165621_)
                              (_K165617_
                               _rest165618_
                               (cons _e165621_ _r165619_))))
                           (_e165624165653_ _hd165616_)
                           (_E165648165657_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e165624165653_)))
                           (_E165644165669_
                            (lambda ()
                              (if (gx#stx-pair? _e165624165653_)
                                  (let ((_e165649165661_
                                         (gx#syntax-e _e165624165653_)))
                                    (let ((_hd165650165664_
                                           (##car _e165649165661_))
                                          (_tl165651165666_
                                           (##cdr _e165649165661_)))
                                      (if (and (gx#identifier?
                                                _hd165650165664_)
                                               (gx#core-identifier=?
                                                _hd165650165664_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K165623_
                                               (gx#core-expand-define-runtime%
                                                _hd165616_))
                                              (_E165648165657_))
                                          (_E165648165657_))))
                                  (_E165648165657_))))
                           (_E165640165681_
                            (lambda ()
                              (if (gx#stx-pair? _e165624165653_)
                                  (let ((_e165645165673_
                                         (gx#syntax-e _e165624165653_)))
                                    (let ((_hd165646165676_
                                           (##car _e165645165673_))
                                          (_tl165647165678_
                                           (##cdr _e165645165673_)))
                                      (if (and (gx#identifier?
                                                _hd165646165676_)
                                               (gx#core-identifier=?
                                                _hd165646165676_
                                                '%#define-alias))
                                          (if '#t
                                              (_K165623_
                                               (gx#core-expand-define-alias%
                                                _hd165616_))
                                              (_E165644165669_))
                                          (_E165644165669_))))
                                  (_E165644165669_))))
                           (_E165630165693_
                            (lambda ()
                              (if (gx#stx-pair? _e165624165653_)
                                  (let ((_e165641165685_
                                         (gx#syntax-e _e165624165653_)))
                                    (let ((_hd165642165688_
                                           (##car _e165641165685_))
                                          (_tl165643165690_
                                           (##cdr _e165641165685_)))
                                      (if (and (gx#identifier?
                                                _hd165642165688_)
                                               (gx#core-identifier=?
                                                _hd165642165688_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K165623_
                                               (gx#core-expand-define-syntax%
                                                _hd165616_))
                                              (_E165640165681_))
                                          (_E165640165681_))))
                                  (_E165640165681_))))
                           (_E165626165725_
                            (lambda ()
                              (if (gx#stx-pair? _e165624165653_)
                                  (let ((_e165631165697_
                                         (gx#syntax-e _e165624165653_)))
                                    (let ((_hd165632165700_
                                           (##car _e165631165697_))
                                          (_tl165633165702_
                                           (##cdr _e165631165697_)))
                                      (if (and (gx#identifier?
                                                _hd165632165700_)
                                               (gx#core-identifier=?
                                                _hd165632165700_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl165633165702_)
                                              (let ((_e165634165705_
                                                     (gx#syntax-e
                                                      _tl165633165702_)))
                                                (let ((_hd165635165708_
                                                       (##car _e165634165705_))
                                                      (_tl165636165710_
                                                       (##cdr _e165634165705_)))
                                                  (let ((_hd-bind165713_
                                                         _hd165635165708_))
                                                    (if (gx#stx-pair?
                                                         _tl165636165710_)
                                                        (let ((_e165637165715_
                                                               (gx#syntax-e
                                                                _tl165636165710_)))
                                                          (let ((_hd165638165718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165637165715_))
                        (_tl165639165720_ (##cdr _e165637165715_)))
                    (let ((_expr165723_ _hd165638165718_))
                      (if (gx#stx-null? _tl165639165720_)
                          (if (gx#core-bind-values? _hd-bind165713_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind165713_)
                                (_K165623_ _hd165616_))
                              (_E165630165693_))
                          (_E165630165693_)))))
                (_E165630165693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165630165693_))
                                          (_E165630165693_))))
                                  (_E165630165693_))))
                           (_E165625165737_
                            (lambda ()
                              (if (gx#stx-pair? _e165624165653_)
                                  (let ((_e165627165729_
                                         (gx#syntax-e _e165624165653_)))
                                    (let ((_hd165628165732_
                                           (##car _e165627165729_))
                                          (_tl165629165734_
                                           (##cdr _e165627165729_)))
                                      (if (and (gx#identifier?
                                                _hd165628165732_)
                                               (gx#core-identifier=?
                                                _hd165628165732_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K165623_
                                               (gx#core-expand-begin-syntax%
                                                _hd165616_))
                                              (_E165626165725_))
                                          (_E165626165725_))))
                                  (_E165626165725_)))))
                      (_E165625165737_))))
                 (_eval-body165497_
                  (lambda (_rbody165505_)
                    (let _lp165507_ ((_rest165509_ _rbody165505_)
                                     (_body165510_ '())
                                     (_ebody165511_ '()))
                      (let* ((_rest165512165520_ _rest165509_)
                             (_else165514165528_
                              (lambda ()
                                (values _body165510_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody165511_)
                                          (gx#stx-source _stx165494_))))))
                             (_K165516165604_
                              (lambda (_rest165531_ _hd165532_)
                                (let* ((_e165533165550_ _hd165532_)
                                       (_E165545165554_
                                        (lambda ()
                                          (_lp165507_
                                           _rest165531_
                                           (cons _hd165532_ _body165510_)
                                           (cons _hd165532_ _ebody165511_))))
                                       (_E165535165566_
                                        (lambda ()
                                          (if (gx#stx-pair? _e165533165550_)
                                              (let ((_e165546165558_
                                                     (gx#syntax-e
                                                      _e165533165550_)))
                                                (let ((_hd165547165561_
                                                       (##car _e165546165558_))
                                                      (_tl165548165563_
                                                       (##cdr _e165546165558_)))
                                                  (if (and (gx#identifier?
                                                            _hd165547165561_)
                                                           (gx#core-identifier=?
                                                            _hd165547165561_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp165507_
                                                           _rest165531_
                                                           (cons _hd165532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body165510_)
                   _ebody165511_)
                  (_E165545165554_))
              (_E165545165554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165545165554_))))
                                       (_E165534165600_
                                        (lambda ()
                                          (if (gx#stx-pair? _e165533165550_)
                                              (let ((_e165536165570_
                                                     (gx#syntax-e
                                                      _e165533165550_)))
                                                (let ((_hd165537165573_
                                                       (##car _e165536165570_))
                                                      (_tl165538165575_
                                                       (##cdr _e165536165570_)))
                                                  (if (and (gx#identifier?
                                                            _hd165537165573_)
                                                           (gx#core-identifier=?
                                                            _hd165537165573_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl165538165575_)
                                                          (let ((_e165539165578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl165538165575_)))
                    (let ((_hd165540165581_ (##car _e165539165578_))
                          (_tl165541165583_ (##cdr _e165539165578_)))
                      (let ((_hd-bind165586_ _hd165540165581_))
                        (if (gx#stx-pair? _tl165541165583_)
                            (let ((_e165542165588_
                                   (gx#syntax-e _tl165541165583_)))
                              (let ((_hd165543165591_ (##car _e165542165588_))
                                    (_tl165544165593_ (##cdr _e165542165588_)))
                                (let ((_expr165596_ _hd165543165591_))
                                  (if (gx#stx-null? _tl165544165593_)
                                      (if '#t
                                          (let ((_ehd165598_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind165586_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr165596_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd165532_))))
                                            (_lp165507_
                                             _rest165531_
                                             (cons _ehd165598_ _body165510_)
                                             (cons _ehd165598_ _ebody165511_)))
                                          (_E165535165566_))
                                      (_E165535165566_)))))
                            (_E165535165566_)))))
                  (_E165535165566_))
              (_E165535165566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165535165566_)))))
                                  (_E165534165600_)))))
                        (if (##pair? _rest165512165520_)
                            (let ((_hd165517165607_ (##car _rest165512165520_))
                                  (_tl165518165609_
                                   (##cdr _rest165512165520_)))
                              (let* ((_hd165612_ _hd165517165607_)
                                     (_rest165614_ _tl165518165609_))
                                (_K165516165604_ _rest165614_ _hd165612_)))
                            (_else165514165528_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody165500_
                     (gx#core-expand-block__1
                      _stx165494_
                      _expand-special165496_
                      '#f))
                    (_g169831_ (_eval-body165497_ _rbody165500_)))
               (begin
                 (let ((_g169832_
                        (if (##values? _g169831_)
                            (##vector-length _g169831_)
                            1)))
                   (if (not (##fx= _g169832_ 2))
                       (error "Context expects 2 values" _g169832_)))
                 (let ((_expanded-body165502_ (##vector-ref _g169831_ 0))
                       (_value165503_ (##vector-ref _g169831_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body165502_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value165503_ '())))
                    (gx#stx-source _stx165494_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx165464_)
        (let* ((_e165465165472_ _stx165464_)
               (_E165467165476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165465165472_)))
               (_E165466165490_
                (lambda ()
                  (if (gx#stx-pair? _e165465165472_)
                      (let ((_e165468165480_ (gx#syntax-e _e165465165472_)))
                        (let ((_hd165469165483_ (##car _e165468165480_))
                              (_tl165470165485_ (##cdr _e165468165480_)))
                          (let ((_body165488_ _tl165470165485_))
                            (if (gx#stx-list? _body165488_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body165488_)
                                 (gx#stx-source _stx165464_))
                                (_E165467165476_)))))
                      (_E165467165476_)))))
          (_E165466165490_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx165462_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx165462_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx165408_)
        (let* ((_e165409165422_ _stx165408_)
               (_E165411165426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165409165422_)))
               (_E165410165458_
                (lambda ()
                  (if (gx#stx-pair? _e165409165422_)
                      (let ((_e165412165430_ (gx#syntax-e _e165409165422_)))
                        (let ((_hd165413165433_ (##car _e165412165430_))
                              (_tl165414165435_ (##cdr _e165412165430_)))
                          (if (gx#stx-pair? _tl165414165435_)
                              (let ((_e165415165438_
                                     (gx#syntax-e _tl165414165435_)))
                                (let ((_hd165416165441_
                                       (##car _e165415165438_))
                                      (_tl165417165443_
                                       (##cdr _e165415165438_)))
                                  (let ((_ann165446_ _hd165416165441_))
                                    (if (gx#stx-pair? _tl165417165443_)
                                        (let ((_e165418165448_
                                               (gx#syntax-e _tl165417165443_)))
                                          (let ((_hd165419165451_
                                                 (##car _e165418165448_))
                                                (_tl165420165453_
                                                 (##cdr _e165418165448_)))
                                            (let ((_expr165456_
                                                   _hd165419165451_))
                                              (if (gx#stx-null?
                                                   _tl165420165453_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann165446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr165456_)
                                 '())))
               (gx#stx-source _stx165408_))
              (_E165411165426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165411165426_)))))
                                        (_E165411165426_)))))
                              (_E165411165426_))))
                      (_E165411165426_)))))
          (_E165410165458_))))
    (define gx#core-expand-local-block
      (lambda (_stx165132_ _body165133_)
        (letrec ((_expand-special165135_
                  (lambda (_hd165403_ _K165404_ _rest165405_ _r165406_)
                    (_K165404_
                     '()
                     (cons (_expand-internal165136_ _hd165403_ _rest165405_)
                           _r165406_))))
                 (_expand-internal165136_
                  (lambda (_hd165399_ _rest165400_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal165138_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd165399_ _rest165400_))
                          (gx#stx-source _stx165132_))
                         _expand-internal-special165137_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj169825
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj169825)
                       __obj169825))))
                 (_expand-internal-special165137_
                  (lambda (_hd165294_ _K165295_ _rest165296_ _r165297_)
                    (let* ((_e165298165323_ _hd165294_)
                           (_E165318165327_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e165298165323_)))
                           (_E165314165339_
                            (lambda ()
                              (if (gx#stx-pair? _e165298165323_)
                                  (let ((_e165319165331_
                                         (gx#syntax-e _e165298165323_)))
                                    (let ((_hd165320165334_
                                           (##car _e165319165331_))
                                          (_tl165321165336_
                                           (##cdr _e165319165331_)))
                                      (if (and (gx#identifier?
                                                _hd165320165334_)
                                               (gx#core-identifier=?
                                                _hd165320165334_
                                                '%#declare))
                                          (if '#t
                                              (_K165295_
                                               _rest165296_
                                               (cons (gx#core-expand-declare%
                                                      _hd165294_)
                                                     _r165297_))
                                              (_E165318165327_))
                                          (_E165318165327_))))
                                  (_E165318165327_))))
                           (_E165310165351_
                            (lambda ()
                              (if (gx#stx-pair? _e165298165323_)
                                  (let ((_e165315165343_
                                         (gx#syntax-e _e165298165323_)))
                                    (let ((_hd165316165346_
                                           (##car _e165315165343_))
                                          (_tl165317165348_
                                           (##cdr _e165315165343_)))
                                      (if (and (gx#identifier?
                                                _hd165316165346_)
                                               (gx#core-identifier=?
                                                _hd165316165346_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd165294_)
                                                (_K165295_
                                                 _rest165296_
                                                 _r165297_))
                                              (_E165314165339_))
                                          (_E165314165339_))))
                                  (_E165314165339_))))
                           (_E165300165363_
                            (lambda ()
                              (if (gx#stx-pair? _e165298165323_)
                                  (let ((_e165311165355_
                                         (gx#syntax-e _e165298165323_)))
                                    (let ((_hd165312165358_
                                           (##car _e165311165355_))
                                          (_tl165313165360_
                                           (##cdr _e165311165355_)))
                                      (if (and (gx#identifier?
                                                _hd165312165358_)
                                               (gx#core-identifier=?
                                                _hd165312165358_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd165294_)
                                                (_K165295_
                                                 _rest165296_
                                                 _r165297_))
                                              (_E165310165351_))
                                          (_E165310165351_))))
                                  (_E165310165351_))))
                           (_E165299165395_
                            (lambda ()
                              (if (gx#stx-pair? _e165298165323_)
                                  (let ((_e165301165367_
                                         (gx#syntax-e _e165298165323_)))
                                    (let ((_hd165302165370_
                                           (##car _e165301165367_))
                                          (_tl165303165372_
                                           (##cdr _e165301165367_)))
                                      (if (and (gx#identifier?
                                                _hd165302165370_)
                                               (gx#core-identifier=?
                                                _hd165302165370_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl165303165372_)
                                              (let ((_e165304165375_
                                                     (gx#syntax-e
                                                      _tl165303165372_)))
                                                (let ((_hd165305165378_
                                                       (##car _e165304165375_))
                                                      (_tl165306165380_
                                                       (##cdr _e165304165375_)))
                                                  (let ((_hd-bind165383_
                                                         _hd165305165378_))
                                                    (if (gx#stx-pair?
                                                         _tl165306165380_)
                                                        (let ((_e165307165385_
                                                               (gx#syntax-e
                                                                _tl165306165380_)))
                                                          (let ((_hd165308165388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165307165385_))
                        (_tl165309165390_ (##cdr _e165307165385_)))
                    (let ((_expr165393_ _hd165308165388_))
                      (if (gx#stx-null? _tl165309165390_)
                          (if (gx#core-bind-values? _hd-bind165383_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind165383_)
                                (_K165295_
                                 _rest165296_
                                 (cons _hd165294_ _r165297_)))
                              (_E165300165363_))
                          (_E165300165363_)))))
                (_E165300165363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E165300165363_))
                                          (_E165300165363_))))
                                  (_E165300165363_)))))
                      (_E165299165395_))))
                 (_wrap-internal165138_
                  (lambda (_rbody165140_)
                    (let _lp165142_ ((_rest165144_ _rbody165140_)
                                     (_decls165145_ '())
                                     (_bind165146_ '())
                                     (_body165147_ '()))
                      (let* ((_e165148165155_ _rest165144_)
                             (_E165150165204_
                              (lambda ()
                                (let* ((_body165199_
                                        (let* ((_body165158165168_
                                                _body165147_)
                                               (_else165161165176_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body165147_)
                                                   (gx#stx-source
                                                    _stx165132_)))))
                                          (let ((_K165166165196_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx165132_)))
                                                (_K165163165182_
                                                 (lambda (_expr165180_)
                                                   _expr165180_)))
                                            (let ((_try-match165160165192_
                                                   (lambda ()
                                                     (if (##pair? _body165158165168_)
                                                         (let ((_tl165165165187_
                                                                (##cdr _body165158165168_))
                                                               (_hd165164165185_
                                                                (##car _body165158165168_)))
                                                           (if (##null? _tl165165165187_)
                                                               (let ((_expr165190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd165164165185_))
                         (_K165163165182_ _expr165190_))
                       (_else165161165176_)))
                 (_else165161165176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body165158165168_)
                                                  (_K165166165196_)
                                                  (_try-match165160165192_))))))
                                       (_body165201_
                                        (if (null? _bind165146_)
                                            _body165199_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind165146_
                                                         (cons _body165199_
                                                               '())))
                                             (gx#stx-source _stx165132_)))))
                                  (if (null? _decls165145_)
                                      _body165201_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls165145_
                                                   (cons _body165201_ '())))
                                       (gx#stx-source _stx165132_))))))
                             (_E165149165290_
                              (lambda ()
                                (if (gx#stx-pair? _e165148165155_)
                                    (let ((_e165151165208_
                                           (gx#syntax-e _e165148165155_)))
                                      (let ((_hd165152165211_
                                             (##car _e165151165208_))
                                            (_tl165153165213_
                                             (##cdr _e165151165208_)))
                                        (let* ((_hd165216_ _hd165152165211_)
                                               (_rest165218_ _tl165153165213_))
                                          (if '#t
                                              (let* ((_e165219165236_
                                                      _hd165216_)
                                                     (_E165231165240_
                                                      (lambda ()
                                                        (if (null? _bind165146_)
                                                            (_lp165142_
                                                             _rest165218_
                                                             _decls165145_
                                                             _bind165146_
                                                             (cons _hd165216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body165147_))
                    (_lp165142_
                     _rest165218_
                     _decls165145_
                     (cons (cons '#f (cons _hd165216_ '())) _bind165146_)
                     _body165147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165221165254_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165219165236_)
                                                            (let ((_e165232165244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165219165236_)))
                      (let ((_hd165233165247_ (##car _e165232165244_))
                            (_tl165234165249_ (##cdr _e165232165244_)))
                        (if (and (gx#identifier? _hd165233165247_)
                                 (gx#core-identifier=?
                                  _hd165233165247_
                                  '%#declare))
                            (let ((_xdecls165252_ _tl165234165249_))
                              (if '#t
                                  (_lp165142_
                                   _rest165218_
                                   (gx#stx-foldr
                                    cons
                                    _decls165145_
                                    _xdecls165252_)
                                   _bind165146_
                                   _body165147_)
                                  (_E165231165240_)))
                            (_E165231165240_))))
                    (_E165231165240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E165220165286_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e165219165236_)
                                                            (let ((_e165222165258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e165219165236_)))
                      (let ((_hd165223165261_ (##car _e165222165258_))
                            (_tl165224165263_ (##cdr _e165222165258_)))
                        (if (and (gx#identifier? _hd165223165261_)
                                 (gx#core-identifier=?
                                  _hd165223165261_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl165224165263_)
                                (let ((_e165225165266_
                                       (gx#syntax-e _tl165224165263_)))
                                  (let ((_hd165226165269_
                                         (##car _e165225165266_))
                                        (_tl165227165271_
                                         (##cdr _e165225165266_)))
                                    (let ((_hd-bind165274_ _hd165226165269_))
                                      (if (gx#stx-pair? _tl165227165271_)
                                          (let ((_e165228165276_
                                                 (gx#syntax-e
                                                  _tl165227165271_)))
                                            (let ((_hd165229165279_
                                                   (##car _e165228165276_))
                                                  (_tl165230165281_
                                                   (##cdr _e165228165276_)))
                                              (let ((_expr165284_
                                                     _hd165229165279_))
                                                (if (gx#stx-null?
                                                     _tl165230165281_)
                                                    (if '#t
                                                        (_lp165142_
                                                         _rest165218_
                                                         _decls165145_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind165274_)
                             (cons (gx#core-expand-expression _expr165284_)
                                   '()))
                       _bind165146_)
                 _body165147_)
                (_E165221165254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E165221165254_)))))
                                          (_E165221165254_)))))
                                (_E165221165254_))
                            (_E165221165254_))))
                    (_E165221165254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165220165286_))
                                              (_E165150165204_)))))
                                    (_E165150165204_)))))
                        (_E165149165290_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body165133_)
            (gx#stx-source _stx165132_))
           _expand-special165135_))))
    (define gx#core-expand-declare%
      (lambda (_stx165070_)
        (let* ((_e165071165078_ _stx165070_)
               (_E165073165082_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165071165078_)))
               (_E165072165128_
                (lambda ()
                  (if (gx#stx-pair? _e165071165078_)
                      (let ((_e165074165086_ (gx#syntax-e _e165071165078_)))
                        (let ((_hd165075165089_ (##car _e165074165086_))
                              (_tl165076165091_ (##cdr _e165074165086_)))
                          (let ((_body165094_ _tl165076165091_))
                            (if (gx#stx-list? _body165094_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl165096_)
                                     (let* ((_e165097165104_ _decl165096_)
                                            (_E165099165108_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e165097165104_)))
                                            (_E165098165124_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e165097165104_)
                                                   (let ((_e165100165112_
                                                          (gx#syntax-e
                                                           _e165097165104_)))
                                                     (let ((_hd165101165115_
                                                            (##car _e165100165112_))
                                                           (_tl165102165117_
                                                            (##cdr _e165100165112_)))
                                                       (let* ((_head165120_
                                                               _hd165101165115_)
                                                              (_args165122_
                                                               _tl165102165117_))
                                                         (if (gx#stx-list?
                                                              _args165122_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl165096_)
                                                             (_E165099165108_)))))
                                                   (_E165099165108_)))))
                                       (_E165098165124_)))
                                   _body165094_))
                                 (gx#stx-source _stx165070_))
                                (_E165073165082_)))))
                      (_E165073165082_)))))
          (_E165072165128_))))
    (define gx#core-expand-extern%
      (lambda (_stx164974_)
        (let* ((_e164975164982_ _stx164974_)
               (_E164977164986_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164975164982_)))
               (_E164976165066_
                (lambda ()
                  (if (gx#stx-pair? _e164975164982_)
                      (let ((_e164978164990_ (gx#syntax-e _e164975164982_)))
                        (let ((_hd164979164993_ (##car _e164978164990_))
                              (_tl164980164995_ (##cdr _e164978164990_)))
                          (let ((_body164998_ _tl164980164995_))
                            (if '#t
                                (let _lp165000_ ((_rest165002_ _body164998_)
                                                 (_r165003_ '()))
                                  (let* ((_e165004165018_ _rest165002_)
                                         (_E165016165022_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx164974_)))
                                         (_E165006165026_
                                          (lambda ()
                                            (if (gx#stx-null? _e165004165018_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r165003_))
                                                     (gx#stx-source
                                                      _stx164974_))
                                                    (_E165016165022_))
                                                (_E165016165022_))))
                                         (_E165005165062_
                                          (lambda ()
                                            (if (gx#stx-pair? _e165004165018_)
                                                (let ((_e165007165030_
                                                       (gx#syntax-e
                                                        _e165004165018_)))
                                                  (let ((_hd165008165033_
                                                         (##car _e165007165030_))
                                                        (_tl165009165035_
                                                         (##cdr _e165007165030_)))
                                                    (if (gx#stx-pair?
                                                         _hd165008165033_)
                                                        (let ((_e165010165038_
                                                               (gx#syntax-e
                                                                _hd165008165033_)))
                                                          (let ((_hd165011165041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e165010165038_))
                        (_tl165012165043_ (##cdr _e165010165038_)))
                    (let ((_id165046_ _hd165011165041_))
                      (if (gx#stx-pair? _tl165012165043_)
                          (let ((_e165013165048_
                                 (gx#syntax-e _tl165012165043_)))
                            (let ((_hd165014165051_ (##car _e165013165048_))
                                  (_tl165015165053_ (##cdr _e165013165048_)))
                              (let ((_eid165056_ _hd165014165051_))
                                (if (gx#stx-null? _tl165015165053_)
                                    (let ((_rest165058_ _tl165009165035_))
                                      (if (and (gx#identifier? _id165046_)
                                               (gx#identifier? _eid165056_))
                                          (let ((_eid165060_
                                                 (gx#stx-e _eid165056_)))
                                            (gx#core-bind-extern!__0
                                             _id165046_
                                             _eid165060_)
                                            (_lp165000_
                                             _rest165058_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id165046_)
                                                         (cons _eid165060_
                                                               '()))
                                                   _r165003_)))
                                          (_E165006165026_)))
                                    (_E165006165026_)))))
                          (_E165006165026_)))))
                (_E165006165026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165006165026_)))))
                                    (_E165005165062_)))
                                (_E164977164986_)))))
                      (_E164977164986_)))))
          (_E164976165066_))))
    (define gx#core-expand-define-values%
      (lambda (_stx164920_)
        (let* ((_e164921164934_ _stx164920_)
               (_E164923164938_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164921164934_)))
               (_E164922164970_
                (lambda ()
                  (if (gx#stx-pair? _e164921164934_)
                      (let ((_e164924164942_ (gx#syntax-e _e164921164934_)))
                        (let ((_hd164925164945_ (##car _e164924164942_))
                              (_tl164926164947_ (##cdr _e164924164942_)))
                          (if (gx#stx-pair? _tl164926164947_)
                              (let ((_e164927164950_
                                     (gx#syntax-e _tl164926164947_)))
                                (let ((_hd164928164953_
                                       (##car _e164927164950_))
                                      (_tl164929164955_
                                       (##cdr _e164927164950_)))
                                  (let ((_hd164958_ _hd164928164953_))
                                    (if (gx#stx-pair? _tl164929164955_)
                                        (let ((_e164930164960_
                                               (gx#syntax-e _tl164929164955_)))
                                          (let ((_hd164931164963_
                                                 (##car _e164930164960_))
                                                (_tl164932164965_
                                                 (##cdr _e164930164960_)))
                                            (let ((_expr164968_
                                                   _hd164931164963_))
                                              (if (gx#stx-null?
                                                   _tl164932164965_)
                                                  (if (gx#core-bind-values?
                                                       _hd164958_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd164958_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd164958_)
                             (cons (gx#core-expand-expression _expr164968_)
                                   '())))
                 (gx#stx-source _stx164920_)))
              (_E164923164938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164923164938_)))))
                                        (_E164923164938_)))))
                              (_E164923164938_))))
                      (_E164923164938_)))))
          (_E164922164970_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx164864_)
        (let* ((_e164865164878_ _stx164864_)
               (_E164867164882_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164865164878_)))
               (_E164866164916_
                (lambda ()
                  (if (gx#stx-pair? _e164865164878_)
                      (let ((_e164868164886_ (gx#syntax-e _e164865164878_)))
                        (let ((_hd164869164889_ (##car _e164868164886_))
                              (_tl164870164891_ (##cdr _e164868164886_)))
                          (if (gx#stx-pair? _tl164870164891_)
                              (let ((_e164871164894_
                                     (gx#syntax-e _tl164870164891_)))
                                (let ((_hd164872164897_
                                       (##car _e164871164894_))
                                      (_tl164873164899_
                                       (##cdr _e164871164894_)))
                                  (let ((_id164902_ _hd164872164897_))
                                    (if (gx#stx-pair? _tl164873164899_)
                                        (let ((_e164874164904_
                                               (gx#syntax-e _tl164873164899_)))
                                          (let ((_hd164875164907_
                                                 (##car _e164874164904_))
                                                (_tl164876164909_
                                                 (##cdr _e164874164904_)))
                                            (let ((_binding-id164912_
                                                   _hd164875164907_))
                                              (if (gx#stx-null?
                                                   _tl164876164909_)
                                                  (if (and (gx#identifier?
                                                            _id164902_)
                                                           (gx#identifier?
                                                            _binding-id164912_))
                                                      (let ((_eid164914_
                                                             (gx#stx-e
                                                              _binding-id164912_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id164902_
                                                         _eid164914_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id164902_)
                             (cons _eid164914_ '())))))
              (_E164867164882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164867164882_)))))
                                        (_E164867164882_)))))
                              (_E164867164882_))))
                      (_E164867164882_)))))
          (_E164866164916_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx164807_)
        (let* ((_e164808164821_ _stx164807_)
               (_E164810164825_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164808164821_)))
               (_E164809164860_
                (lambda ()
                  (if (gx#stx-pair? _e164808164821_)
                      (let ((_e164811164829_ (gx#syntax-e _e164808164821_)))
                        (let ((_hd164812164832_ (##car _e164811164829_))
                              (_tl164813164834_ (##cdr _e164811164829_)))
                          (if (gx#stx-pair? _tl164813164834_)
                              (let ((_e164814164837_
                                     (gx#syntax-e _tl164813164834_)))
                                (let ((_hd164815164840_
                                       (##car _e164814164837_))
                                      (_tl164816164842_
                                       (##cdr _e164814164837_)))
                                  (let ((_id164845_ _hd164815164840_))
                                    (if (gx#stx-pair? _tl164816164842_)
                                        (let ((_e164817164847_
                                               (gx#syntax-e _tl164816164842_)))
                                          (let ((_hd164818164850_
                                                 (##car _e164817164847_))
                                                (_tl164819164852_
                                                 (##cdr _e164817164847_)))
                                            (let ((_expr164855_
                                                   _hd164818164850_))
                                              (if (gx#stx-null?
                                                   _tl164819164852_)
                                                  (if (gx#identifier?
                                                       _id164845_)
                                                      (let ((_g169833_
                                                             (gx#core-expand-expression+1
                                                              _expr164855_)))
                                                        (begin
                                                          (let ((_g169834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g169833_)
                             (##vector-length _g169833_)
                             1)))
                    (if (not (##fx= _g169834_ 2))
                        (error "Context expects 2 values" _g169834_)))
                  (let ((_e-stx164857_ (##vector-ref _g169833_ 0))
                        (_e164858_ (##vector-ref _g169833_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id164845_ _e164858_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id164845_)
                                   (cons _e-stx164857_ '())))
                       (gx#stx-source _stx164807_))))))
              (_E164810164825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164810164825_)))))
                                        (_E164810164825_)))))
                              (_E164810164825_))))
                      (_E164810164825_)))))
          (_E164809164860_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx164751_)
        (let* ((_e164752164765_ _stx164751_)
               (_E164754164769_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164752164765_)))
               (_E164753164803_
                (lambda ()
                  (if (gx#stx-pair? _e164752164765_)
                      (let ((_e164755164773_ (gx#syntax-e _e164752164765_)))
                        (let ((_hd164756164776_ (##car _e164755164773_))
                              (_tl164757164778_ (##cdr _e164755164773_)))
                          (if (gx#stx-pair? _tl164757164778_)
                              (let ((_e164758164781_
                                     (gx#syntax-e _tl164757164778_)))
                                (let ((_hd164759164784_
                                       (##car _e164758164781_))
                                      (_tl164760164786_
                                       (##cdr _e164758164781_)))
                                  (let ((_id164789_ _hd164759164784_))
                                    (if (gx#stx-pair? _tl164760164786_)
                                        (let ((_e164761164791_
                                               (gx#syntax-e _tl164760164786_)))
                                          (let ((_hd164762164794_
                                                 (##car _e164761164791_))
                                                (_tl164763164796_
                                                 (##cdr _e164761164791_)))
                                            (let ((_alias-id164799_
                                                   _hd164762164794_))
                                              (if (gx#stx-null?
                                                   _tl164763164796_)
                                                  (if (and (gx#identifier?
                                                            _id164789_)
                                                           (gx#identifier?
                                                            _alias-id164799_))
                                                      (let ((_alias-id164801_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id164799_)))
                                                        (gx#core-bind-alias!__0
                                                         _id164789_
                                                         _alias-id164801_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id164789_)
                             (cons _alias-id164801_ '())))))
              (_E164754164769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164754164769_)))))
                                        (_E164754164769_)))))
                              (_E164754164769_))))
                      (_E164754164769_)))))
          (_E164753164803_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx164694_ _wrap?164695_)
        (let* ((_e164696164706_ _stx164694_)
               (_E164698164710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164696164706_)))
               (_E164697164737_
                (lambda ()
                  (if (gx#stx-pair? _e164696164706_)
                      (let ((_e164699164714_ (gx#syntax-e _e164696164706_)))
                        (let ((_hd164700164717_ (##car _e164699164714_))
                              (_tl164701164719_ (##cdr _e164699164714_)))
                          (if (gx#stx-pair? _tl164701164719_)
                              (let ((_e164702164722_
                                     (gx#syntax-e _tl164701164719_)))
                                (let ((_hd164703164725_
                                       (##car _e164702164722_))
                                      (_tl164704164727_
                                       (##cdr _e164702164722_)))
                                  (let* ((_hd164730_ _hd164703164725_)
                                         (_body164732_ _tl164704164727_))
                                    (if (gx#core-bind-values? _hd164730_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd164730_)
                                           (let ((_body164735_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd164730_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx164694_
                                                               _body164732_)
                                                              '()))))
                                             (if _wrap?164695_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body164735_)
                                                  (gx#stx-source _stx164694_))
                                                 _body164735_)))
                                         gx#current-expander-context
                                         (let ((__obj169826
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169826)
                                           __obj169826))
                                        (_E164698164710_)))))
                              (_E164698164710_))))
                      (_E164698164710_)))))
          (_E164697164737_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx164744_)
        (let ((_wrap?164746_ '#t))
          (gx#core-expand-lambda%__% _stx164744_ _wrap?164746_))))
    (define gx#core-expand-lambda%
      (lambda _g169836_
        (let ((_g169835_ (##length _g169836_)))
          (cond ((##fx= _g169835_ 1)
                 (apply (lambda (_stx164744_)
                          (gx#core-expand-lambda%__0 _stx164744_))
                        _g169836_))
                ((##fx= _g169835_ 2)
                 (apply (lambda (_stx164748_ _wrap?164749_)
                          (gx#core-expand-lambda%__%
                           _stx164748_
                           _wrap?164749_))
                        _g169836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g169836_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx164658_)
        (let* ((_e164659164666_ _stx164658_)
               (_E164661164670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164659164666_)))
               (_E164660164689_
                (lambda ()
                  (if (gx#stx-pair? _e164659164666_)
                      (let ((_e164662164674_ (gx#syntax-e _e164659164666_)))
                        (let ((_hd164663164677_ (##car _e164662164674_))
                              (_tl164664164679_ (##cdr _e164662164674_)))
                          (let ((_clauses164682_ _tl164664164679_))
                            (if (gx#stx-list? _clauses164682_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause164684_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause164684_)
                                       (let ((_$e164686_
                                              (gx#stx-source _clause164684_)))
                                         (if _$e164686_
                                             _$e164686_
                                             (gx#stx-source _stx164658_))))
                                      '#f))
                                   _clauses164682_))
                                 (gx#stx-source _stx164658_))
                                (_E164661164670_)))))
                      (_E164661164670_)))))
          (_E164660164689_))))
    (define gx#core-expand-let-values%
      (lambda (_stx164612_)
        (let* ((_e164613164623_ _stx164612_)
               (_E164615164627_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164613164623_)))
               (_E164614164654_
                (lambda ()
                  (if (gx#stx-pair? _e164613164623_)
                      (let ((_e164616164631_ (gx#syntax-e _e164613164623_)))
                        (let ((_hd164617164634_ (##car _e164616164631_))
                              (_tl164618164636_ (##cdr _e164616164631_)))
                          (if (gx#stx-pair? _tl164618164636_)
                              (let ((_e164619164639_
                                     (gx#syntax-e _tl164618164636_)))
                                (let ((_hd164620164642_
                                       (##car _e164619164639_))
                                      (_tl164621164644_
                                       (##cdr _e164619164639_)))
                                  (let* ((_hd164647_ _hd164620164642_)
                                         (_body164649_ _tl164621164644_))
                                    (if (gx#core-expand-let-bind? _hd164647_)
                                        (let ((_expressions164651_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd164647_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd164647_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd164647_
                                                           _expressions164651_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx164612_
                         _body164649_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx164612_)))
                                           gx#current-expander-context
                                           (let ((__obj169827
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj169827)
                                             __obj169827)))
                                        (_E164615164627_)))))
                              (_E164615164627_))))
                      (_E164615164627_)))))
          (_E164614164654_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx164557_ _form164558_)
        (let* ((_e164559164569_ _stx164557_)
               (_E164561164573_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164559164569_)))
               (_E164560164598_
                (lambda ()
                  (if (gx#stx-pair? _e164559164569_)
                      (let ((_e164562164577_ (gx#syntax-e _e164559164569_)))
                        (let ((_hd164563164580_ (##car _e164562164577_))
                              (_tl164564164582_ (##cdr _e164562164577_)))
                          (if (gx#stx-pair? _tl164564164582_)
                              (let ((_e164565164585_
                                     (gx#syntax-e _tl164564164582_)))
                                (let ((_hd164566164588_
                                       (##car _e164565164585_))
                                      (_tl164567164590_
                                       (##cdr _e164565164585_)))
                                  (let* ((_hd164593_ _hd164566164588_)
                                         (_body164595_ _tl164567164590_))
                                    (if (gx#core-expand-let-bind? _hd164593_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd164593_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form164558_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd164593_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd164593_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx164557_
                                                               _body164595_)
                                                              '())))
                                            (gx#stx-source _stx164557_)))
                                         gx#current-expander-context
                                         (let ((__obj169828
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169828)
                                           __obj169828))
                                        (_E164561164573_)))))
                              (_E164561164573_))))
                      (_E164561164573_)))))
          (_E164560164598_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx164605_)
        (let ((_form164607_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx164605_ _form164607_))))
    (define gx#core-expand-letrec-values%
      (lambda _g169838_
        (let ((_g169837_ (##length _g169838_)))
          (cond ((##fx= _g169837_ 1)
                 (apply (lambda (_stx164605_)
                          (gx#core-expand-letrec-values%__0 _stx164605_))
                        _g169838_))
                ((##fx= _g169837_ 2)
                 (apply (lambda (_stx164609_ _form164610_)
                          (gx#core-expand-letrec-values%__%
                           _stx164609_
                           _form164610_))
                        _g169838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g169838_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx164554_)
        (gx#core-expand-letrec-values%__% _stx164554_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx164511_)
        (if (gx#stx-list? _stx164511_)
            (gx#stx-andmap
             (lambda (_bind164513_)
               (let* ((_e164514164524_ _bind164513_)
                      (_E164516164528_ (lambda () '#f))
                      (_E164515164550_
                       (lambda ()
                         (if (gx#stx-pair? _e164514164524_)
                             (let ((_e164517164532_
                                    (gx#syntax-e _e164514164524_)))
                               (let ((_hd164518164535_ (##car _e164517164532_))
                                     (_tl164519164537_
                                      (##cdr _e164517164532_)))
                                 (let ((_hd164540_ _hd164518164535_))
                                   (if (gx#stx-pair? _tl164519164537_)
                                       (let ((_e164520164542_
                                              (gx#syntax-e _tl164519164537_)))
                                         (let ((_hd164521164545_
                                                (##car _e164520164542_))
                                               (_tl164522164547_
                                                (##cdr _e164520164542_)))
                                           (if (gx#stx-null? _tl164522164547_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd164540_)
                                                   (_E164516164528_))
                                               (_E164516164528_))))
                                       (_E164516164528_)))))
                             (_E164516164528_)))))
                 (_E164515164550_)))
             _stx164511_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind164470_)
        (let* ((_e164471164481_ _bind164470_)
               (_E164473164485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164471164481_)))
               (_E164472164507_
                (lambda ()
                  (if (gx#stx-pair? _e164471164481_)
                      (let ((_e164474164489_ (gx#syntax-e _e164471164481_)))
                        (let ((_hd164475164492_ (##car _e164474164489_))
                              (_tl164476164494_ (##cdr _e164474164489_)))
                          (if (gx#stx-pair? _tl164476164494_)
                              (let ((_e164477164497_
                                     (gx#syntax-e _tl164476164494_)))
                                (let ((_hd164478164500_
                                       (##car _e164477164497_))
                                      (_tl164479164502_
                                       (##cdr _e164477164497_)))
                                  (let ((_expr164505_ _hd164478164500_))
                                    (if (gx#stx-null? _tl164479164502_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr164505_)
                                            (_E164473164485_))
                                        (_E164473164485_)))))
                              (_E164473164485_))))
                      (_E164473164485_)))))
          (_E164472164507_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind164429_)
        (let* ((_e164430164440_ _bind164429_)
               (_E164432164444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164430164440_)))
               (_E164431164466_
                (lambda ()
                  (if (gx#stx-pair? _e164430164440_)
                      (let ((_e164433164448_ (gx#syntax-e _e164430164440_)))
                        (let ((_hd164434164451_ (##car _e164433164448_))
                              (_tl164435164453_ (##cdr _e164433164448_)))
                          (let ((_hd164456_ _hd164434164451_))
                            (if (gx#stx-pair? _tl164435164453_)
                                (let ((_e164436164458_
                                       (gx#syntax-e _tl164435164453_)))
                                  (let ((_hd164437164461_
                                         (##car _e164436164458_))
                                        (_tl164438164463_
                                         (##cdr _e164436164458_)))
                                    (if (gx#stx-null? _tl164438164463_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd164456_)
                                            (_E164432164444_))
                                        (_E164432164444_))))
                                (_E164432164444_)))))
                      (_E164432164444_)))))
          (_E164431164466_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind164387_ _expr164388_)
        (let* ((_e164389164399_ _bind164387_)
               (_E164391164403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164389164399_)))
               (_E164390164425_
                (lambda ()
                  (if (gx#stx-pair? _e164389164399_)
                      (let ((_e164392164407_ (gx#syntax-e _e164389164399_)))
                        (let ((_hd164393164410_ (##car _e164392164407_))
                              (_tl164394164412_ (##cdr _e164392164407_)))
                          (let ((_hd164415_ _hd164393164410_))
                            (if (gx#stx-pair? _tl164394164412_)
                                (let ((_e164395164417_
                                       (gx#syntax-e _tl164394164412_)))
                                  (let ((_hd164396164420_
                                         (##car _e164395164417_))
                                        (_tl164397164422_
                                         (##cdr _e164395164417_)))
                                    (if (gx#stx-null? _tl164397164422_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd164415_)
                                                  (cons _expr164388_ '()))
                                            (_E164391164403_))
                                        (_E164391164403_))))
                                (_E164391164403_)))))
                      (_E164391164403_)))))
          (_E164390164425_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx164341_)
        (let* ((_e164342164352_ _stx164341_)
               (_E164344164356_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164342164352_)))
               (_E164343164383_
                (lambda ()
                  (if (gx#stx-pair? _e164342164352_)
                      (let ((_e164345164360_ (gx#syntax-e _e164342164352_)))
                        (let ((_hd164346164363_ (##car _e164345164360_))
                              (_tl164347164365_ (##cdr _e164345164360_)))
                          (if (gx#stx-pair? _tl164347164365_)
                              (let ((_e164348164368_
                                     (gx#syntax-e _tl164347164365_)))
                                (let ((_hd164349164371_
                                       (##car _e164348164368_))
                                      (_tl164350164373_
                                       (##cdr _e164348164368_)))
                                  (let* ((_hd164376_ _hd164349164371_)
                                         (_body164378_ _tl164350164373_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164376_)
                                        (let ((_expanders164380_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd164376_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd164376_
                                              _expanders164380_)
                                             (gx#core-expand-local-block
                                              _stx164341_
                                              _body164378_))
                                           gx#current-expander-context
                                           (let ((__obj169829
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj169829)
                                             __obj169829)))
                                        (_E164344164356_)))))
                              (_E164344164356_))))
                      (_E164344164356_)))))
          (_E164343164383_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx164290_)
        (let* ((_e164291164301_ _stx164290_)
               (_E164293164305_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164291164301_)))
               (_E164292164337_
                (lambda ()
                  (if (gx#stx-pair? _e164291164301_)
                      (let ((_e164294164309_ (gx#syntax-e _e164291164301_)))
                        (let ((_hd164295164312_ (##car _e164294164309_))
                              (_tl164296164314_ (##cdr _e164294164309_)))
                          (if (gx#stx-pair? _tl164296164314_)
                              (let ((_e164297164317_
                                     (gx#syntax-e _tl164296164314_)))
                                (let ((_hd164298164320_
                                       (##car _e164297164317_))
                                      (_tl164299164322_
                                       (##cdr _e164297164317_)))
                                  (let* ((_hd164325_ _hd164298164320_)
                                         (_body164327_ _tl164299164322_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd164325_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd164325_
                                            (make-list
                                             (gx#stx-length _hd164325_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g164329164332_
                                                     _g164330164334_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g164329164332_
                                               _g164330164334_
                                               '#t))
                                            _hd164325_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd164325_))
                                           (gx#core-expand-local-block
                                            _stx164290_
                                            _body164327_))
                                         gx#current-expander-context
                                         (let ((__obj169830
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj169830)
                                           __obj169830))
                                        (_E164293164305_)))))
                              (_E164293164305_))))
                      (_E164293164305_)))))
          (_E164292164337_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx164247_)
        (if (gx#stx-list? _stx164247_)
            (gx#stx-andmap
             (lambda (_bind164249_)
               (let* ((_e164250164260_ _bind164249_)
                      (_E164252164264_ (lambda () '#f))
                      (_E164251164286_
                       (lambda ()
                         (if (gx#stx-pair? _e164250164260_)
                             (let ((_e164253164268_
                                    (gx#syntax-e _e164250164260_)))
                               (let ((_hd164254164271_ (##car _e164253164268_))
                                     (_tl164255164273_
                                      (##cdr _e164253164268_)))
                                 (let ((_hd164276_ _hd164254164271_))
                                   (if (gx#stx-pair? _tl164255164273_)
                                       (let ((_e164256164278_
                                              (gx#syntax-e _tl164255164273_)))
                                         (let ((_hd164257164281_
                                                (##car _e164256164278_))
                                               (_tl164258164283_
                                                (##cdr _e164256164278_)))
                                           (if (gx#stx-null? _tl164258164283_)
                                               (if '#t
                                                   (gx#identifier? _hd164276_)
                                                   (_E164252164264_))
                                               (_E164252164264_))))
                                       (_E164252164264_)))))
                             (_E164252164264_)))))
                 (_E164251164286_)))
             _stx164247_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind164204_)
        (let* ((_e164205164215_ _bind164204_)
               (_E164207164219_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164205164215_)))
               (_E164206164243_
                (lambda ()
                  (if (gx#stx-pair? _e164205164215_)
                      (let ((_e164208164223_ (gx#syntax-e _e164205164215_)))
                        (let ((_hd164209164226_ (##car _e164208164223_))
                              (_tl164210164228_ (##cdr _e164208164223_)))
                          (if (gx#stx-pair? _tl164210164228_)
                              (let ((_e164211164231_
                                     (gx#syntax-e _tl164210164228_)))
                                (let ((_hd164212164234_
                                       (##car _e164211164231_))
                                      (_tl164213164236_
                                       (##cdr _e164211164231_)))
                                  (let ((_expr164239_ _hd164212164234_))
                                    (if (gx#stx-null? _tl164213164236_)
                                        (if '#t
                                            (let ((_g169839_
                                                   (gx#core-expand-expression+1
                                                    _expr164239_)))
                                              (begin
                                                (let ((_g169840_
                                                       (if (##values?
                                                            _g169839_)
                                                           (##vector-length
                                                            _g169839_)
                                                           1)))
                                                  (if (not (##fx= _g169840_ 2))
                                                      (error "Context expects 2 values"
                                                             _g169840_)))
                                                (let ((_e164241_
                                                       (##vector-ref
                                                        _g169839_
                                                        1)))
                                                  _e164241_)))
                                            (_E164207164219_))
                                        (_E164207164219_)))))
                              (_E164207164219_))))
                      (_E164207164219_)))))
          (_E164206164243_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind164149_ _e164150_ _rebind?164151_)
        (let* ((_e164152164162_ _bind164149_)
               (_E164154164166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164152164162_)))
               (_E164153164188_
                (lambda ()
                  (if (gx#stx-pair? _e164152164162_)
                      (let ((_e164155164170_ (gx#syntax-e _e164152164162_)))
                        (let ((_hd164156164173_ (##car _e164155164170_))
                              (_tl164157164175_ (##cdr _e164155164170_)))
                          (let ((_id164178_ _hd164156164173_))
                            (if (gx#stx-pair? _tl164157164175_)
                                (let ((_e164158164180_
                                       (gx#syntax-e _tl164157164175_)))
                                  (let ((_hd164159164183_
                                         (##car _e164158164180_))
                                        (_tl164160164185_
                                         (##cdr _e164158164180_)))
                                    (if (gx#stx-null? _tl164160164185_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id164178_
                                             _e164150_
                                             _rebind?164151_)
                                            (_E164154164166_))
                                        (_E164154164166_))))
                                (_E164154164166_)))))
                      (_E164154164166_)))))
          (_E164153164188_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind164195_ _e164196_)
        (let ((_rebind?164198_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind164195_
           _e164196_
           _rebind?164198_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g169842_
        (let ((_g169841_ (##length _g169842_)))
          (cond ((##fx= _g169841_ 2)
                 (apply (lambda (_bind164195_ _e164196_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind164195_
                           _e164196_))
                        _g169842_))
                ((##fx= _g169841_ 3)
                 (apply (lambda (_bind164200_ _e164201_ _rebind?164202_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind164200_
                           _e164201_
                           _rebind?164202_))
                        _g169842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g169842_))))))
    (define gx#core-expand-expression%
      (lambda (_stx164107_)
        (let* ((_e164108164118_ _stx164107_)
               (_E164110164122_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164108164118_)))
               (_E164109164144_
                (lambda ()
                  (if (gx#stx-pair? _e164108164118_)
                      (let ((_e164111164126_ (gx#syntax-e _e164108164118_)))
                        (let ((_hd164112164129_ (##car _e164111164126_))
                              (_tl164113164131_ (##cdr _e164111164126_)))
                          (if (gx#stx-pair? _tl164113164131_)
                              (let ((_e164114164134_
                                     (gx#syntax-e _tl164113164131_)))
                                (let ((_hd164115164137_
                                       (##car _e164114164134_))
                                      (_tl164116164139_
                                       (##cdr _e164114164134_)))
                                  (let ((_expr164142_ _hd164115164137_))
                                    (if (gx#stx-null? _tl164116164139_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr164142_)
                                            (_E164110164122_))
                                        (_E164110164122_)))))
                              (_E164110164122_))))
                      (_E164110164122_)))))
          (_E164109164144_))))
    (define gx#core-expand-quote%
      (lambda (_stx164066_)
        (let* ((_e164067164077_ _stx164066_)
               (_E164069164081_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164067164077_)))
               (_E164068164103_
                (lambda ()
                  (if (gx#stx-pair? _e164067164077_)
                      (let ((_e164070164085_ (gx#syntax-e _e164067164077_)))
                        (let ((_hd164071164088_ (##car _e164070164085_))
                              (_tl164072164090_ (##cdr _e164070164085_)))
                          (if (gx#stx-pair? _tl164072164090_)
                              (let ((_e164073164093_
                                     (gx#syntax-e _tl164072164090_)))
                                (let ((_hd164074164096_
                                       (##car _e164073164093_))
                                      (_tl164075164098_
                                       (##cdr _e164073164093_)))
                                  (let ((_e164101_ _hd164074164096_))
                                    (if (gx#stx-null? _tl164075164098_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e164101_)
                                                         '()))
                                             (gx#stx-source _stx164066_))
                                            (_E164069164081_))
                                        (_E164069164081_)))))
                              (_E164069164081_))))
                      (_E164069164081_)))))
          (_E164068164103_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx164025_)
        (let* ((_e164026164036_ _stx164025_)
               (_E164028164040_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164026164036_)))
               (_E164027164062_
                (lambda ()
                  (if (gx#stx-pair? _e164026164036_)
                      (let ((_e164029164044_ (gx#syntax-e _e164026164036_)))
                        (let ((_hd164030164047_ (##car _e164029164044_))
                              (_tl164031164049_ (##cdr _e164029164044_)))
                          (if (gx#stx-pair? _tl164031164049_)
                              (let ((_e164032164052_
                                     (gx#syntax-e _tl164031164049_)))
                                (let ((_hd164033164055_
                                       (##car _e164032164052_))
                                      (_tl164034164057_
                                       (##cdr _e164032164052_)))
                                  (let ((_e164060_ _hd164033164055_))
                                    (if (gx#stx-null? _tl164034164057_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e164060_)
                                                         '()))
                                             (gx#stx-source _stx164025_))
                                            (_E164028164040_))
                                        (_E164028164040_)))))
                              (_E164028164040_))))
                      (_E164028164040_)))))
          (_E164027164062_))))
    (define gx#core-expand-call%
      (lambda (_stx163982_)
        (let* ((_e163983163993_ _stx163982_)
               (_E163985163997_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163983163993_)))
               (_E163984164021_
                (lambda ()
                  (if (gx#stx-pair? _e163983163993_)
                      (let ((_e163986164001_ (gx#syntax-e _e163983163993_)))
                        (let ((_hd163987164004_ (##car _e163986164001_))
                              (_tl163988164006_ (##cdr _e163986164001_)))
                          (if (gx#stx-pair? _tl163988164006_)
                              (let ((_e163989164009_
                                     (gx#syntax-e _tl163988164006_)))
                                (let ((_hd163990164012_
                                       (##car _e163989164009_))
                                      (_tl163991164014_
                                       (##cdr _e163989164009_)))
                                  (let* ((_rator164017_ _hd163990164012_)
                                         (_args164019_ _tl163991164014_))
                                    (if (gx#stx-list? _args164019_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator164017_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args164019_))
                                         (gx#stx-source _stx163982_))
                                        (_E163985163997_)))))
                              (_E163985163997_))))
                      (_E163985163997_)))))
          (_E163984164021_))))
    (define gx#core-expand-if%
      (lambda (_stx163915_)
        (let* ((_e163916163932_ _stx163915_)
               (_E163918163936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163916163932_)))
               (_E163917163978_
                (lambda ()
                  (if (gx#stx-pair? _e163916163932_)
                      (let ((_e163919163940_ (gx#syntax-e _e163916163932_)))
                        (let ((_hd163920163943_ (##car _e163919163940_))
                              (_tl163921163945_ (##cdr _e163919163940_)))
                          (if (gx#stx-pair? _tl163921163945_)
                              (let ((_e163922163948_
                                     (gx#syntax-e _tl163921163945_)))
                                (let ((_hd163923163951_
                                       (##car _e163922163948_))
                                      (_tl163924163953_
                                       (##cdr _e163922163948_)))
                                  (let ((_test163956_ _hd163923163951_))
                                    (if (gx#stx-pair? _tl163924163953_)
                                        (let ((_e163925163958_
                                               (gx#syntax-e _tl163924163953_)))
                                          (let ((_hd163926163961_
                                                 (##car _e163925163958_))
                                                (_tl163927163963_
                                                 (##cdr _e163925163958_)))
                                            (let ((_K163966_ _hd163926163961_))
                                              (if (gx#stx-pair?
                                                   _tl163927163963_)
                                                  (let ((_e163928163968_
                                                         (gx#syntax-e
                                                          _tl163927163963_)))
                                                    (let ((_hd163929163971_
                                                           (##car _e163928163968_))
                                                          (_tl163930163973_
                                                           (##cdr _e163928163968_)))
                                                      (let ((_E163976_
                                                             _hd163929163971_))
                                                        (if (gx#stx-null?
                                                             _tl163930163973_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test163956_)
                                     (cons (gx#core-expand-expression
                                            _K163966_)
                                           (cons (gx#core-expand-expression
                                                  _E163976_)
                                                 '()))))
                         (gx#stx-source _stx163915_))
                        (_E163918163936_))
                    (_E163918163936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163918163936_)))))
                                        (_E163918163936_)))))
                              (_E163918163936_))))
                      (_E163918163936_)))))
          (_E163917163978_))))
    (define gx#core-expand-ref%
      (lambda (_stx163874_)
        (let* ((_e163875163885_ _stx163874_)
               (_E163877163889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163875163885_)))
               (_E163876163911_
                (lambda ()
                  (if (gx#stx-pair? _e163875163885_)
                      (let ((_e163878163893_ (gx#syntax-e _e163875163885_)))
                        (let ((_hd163879163896_ (##car _e163878163893_))
                              (_tl163880163898_ (##cdr _e163878163893_)))
                          (if (gx#stx-pair? _tl163880163898_)
                              (let ((_e163881163901_
                                     (gx#syntax-e _tl163880163898_)))
                                (let ((_hd163882163904_
                                       (##car _e163881163901_))
                                      (_tl163883163906_
                                       (##cdr _e163881163901_)))
                                  (let ((_id163909_ _hd163882163904_))
                                    (if (gx#stx-null? _tl163883163906_)
                                        (if (gx#identifier? _id163909_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id163909_
                                                          _stx163874_)
                                                         '()))
                                             (gx#stx-source _stx163874_))
                                            (_E163877163889_))
                                        (_E163877163889_)))))
                              (_E163877163889_))))
                      (_E163877163889_)))))
          (_E163876163911_))))
    (define gx#core-expand-setq%
      (lambda (_stx163820_)
        (let* ((_e163821163834_ _stx163820_)
               (_E163823163838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163821163834_)))
               (_E163822163870_
                (lambda ()
                  (if (gx#stx-pair? _e163821163834_)
                      (let ((_e163824163842_ (gx#syntax-e _e163821163834_)))
                        (let ((_hd163825163845_ (##car _e163824163842_))
                              (_tl163826163847_ (##cdr _e163824163842_)))
                          (if (gx#stx-pair? _tl163826163847_)
                              (let ((_e163827163850_
                                     (gx#syntax-e _tl163826163847_)))
                                (let ((_hd163828163853_
                                       (##car _e163827163850_))
                                      (_tl163829163855_
                                       (##cdr _e163827163850_)))
                                  (let ((_id163858_ _hd163828163853_))
                                    (if (gx#stx-pair? _tl163829163855_)
                                        (let ((_e163830163860_
                                               (gx#syntax-e _tl163829163855_)))
                                          (let ((_hd163831163863_
                                                 (##car _e163830163860_))
                                                (_tl163832163865_
                                                 (##cdr _e163830163860_)))
                                            (let ((_expr163868_
                                                   _hd163831163863_))
                                              (if (gx#stx-null?
                                                   _tl163832163865_)
                                                  (if (gx#identifier?
                                                       _id163858_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id163858_
                            _stx163820_)
                           (cons (gx#core-expand-expression _expr163868_)
                                 '())))
               (gx#stx-source _stx163820_))
              (_E163823163838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163823163838_)))))
                                        (_E163823163838_)))))
                              (_E163823163838_))))
                      (_E163823163838_)))))
          (_E163822163870_))))
    (define gx#macro-expand-extern
      (lambda (_stx163668_)
        (letrec ((_generate163670_
                  (lambda (_body163700_)
                    (let _lp163702_ ((_rest163704_ _body163700_)
                                     (_ns163705_
                                      (gx#core-context-namespace__0))
                                     (_r163706_ '()))
                      (let* ((_e163707163722_ _rest163704_)
                             (_E163720163726_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e163707163722_)))
                             (_E163716163730_
                              (lambda ()
                                (if (gx#stx-null? _e163707163722_)
                                    (if '#t
                                        (reverse _r163706_)
                                        (_E163720163726_))
                                    (_E163720163726_))))
                             (_E163709163787_
                              (lambda ()
                                (if (gx#stx-pair? _e163707163722_)
                                    (let ((_e163717163734_
                                           (gx#syntax-e _e163707163722_)))
                                      (let ((_hd163718163737_
                                             (##car _e163717163734_))
                                            (_tl163719163739_
                                             (##cdr _e163717163734_)))
                                        (let* ((_hd163742_ _hd163718163737_)
                                               (_rest163744_ _tl163719163739_))
                                          (if '#t
                                              (if (gx#identifier? _hd163742_)
                                                  (_lp163702_
                                                   _rest163744_
                                                   _ns163705_
                                                   (cons (cons _hd163742_
                                                               (cons (if _ns163705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd163742_
                                  _ns163705_
                                  '"#"
                                  _hd163742_)
                                 _hd163742_)
                             '()))
                 _r163706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e163745163755_
                                                          _hd163742_)
                                                         (_E163747163759_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e163745163755_)))
                                                         (_E163746163783_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e163745163755_)
                        (let ((_e163748163763_ (gx#syntax-e _e163745163755_)))
                          (let ((_hd163749163766_ (##car _e163748163763_))
                                (_tl163750163768_ (##cdr _e163748163763_)))
                            (let ((_id163771_ _hd163749163766_))
                              (if (gx#stx-pair? _tl163750163768_)
                                  (let ((_e163751163773_
                                         (gx#syntax-e _tl163750163768_)))
                                    (let ((_hd163752163776_
                                           (##car _e163751163773_))
                                          (_tl163753163778_
                                           (##cdr _e163751163773_)))
                                      (let ((_eid163781_ _hd163752163776_))
                                        (if (gx#stx-null? _tl163753163778_)
                                            (if (and (gx#identifier?
                                                      _id163771_)
                                                     (gx#identifier?
                                                      _eid163781_))
                                                (_lp163702_
                                                 _rest163744_
                                                 _ns163705_
                                                 (cons (cons _id163771_
                                                             (cons _eid163781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r163706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E163747163759_))
                                            (_E163747163759_)))))
                                  (_E163747163759_)))))
                        (_E163747163759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E163746163783_)))
                                              (_E163716163730_)))))
                                    (_E163716163730_))))
                             (_E163708163816_
                              (lambda ()
                                (if (gx#stx-pair? _e163707163722_)
                                    (let ((_e163710163791_
                                           (gx#syntax-e _e163707163722_)))
                                      (let ((_hd163711163794_
                                             (##car _e163710163791_))
                                            (_tl163712163796_
                                             (##cdr _e163710163791_)))
                                        (if (eq? (gx#stx-e _hd163711163794_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl163712163796_)
                                                (let ((_e163713163799_
                                                       (gx#syntax-e
                                                        _tl163712163796_)))
                                                  (let ((_hd163714163802_
                                                         (##car _e163713163799_))
                                                        (_tl163715163804_
                                                         (##cdr _e163713163799_)))
                                                    (let* ((_ns163807_
                                                            _hd163714163802_)
                                                           (_rest163809_
                                                            _tl163715163804_))
                                                      (if '#t
                                                          (let ((_ns163814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns163807_)
                             (symbol->string (gx#stx-e _ns163807_))
                             (if (or (gx#stx-string? _ns163807_)
                                     (gx#stx-false? _ns163807_))
                                 (gx#stx-e _ns163807_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx163668_
                                  _ns163807_)))))
                    (_lp163702_ _rest163809_ _ns163814_ _r163706_))
                  (_E163709163787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E163709163787_))
                                            (_E163709163787_))))
                                    (_E163709163787_)))))
                        (_E163708163816_))))))
          (let* ((_e163671163678_ _stx163668_)
                 (_E163673163682_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163671163678_)))
                 (_E163672163696_
                  (lambda ()
                    (if (gx#stx-pair? _e163671163678_)
                        (let ((_e163674163686_ (gx#syntax-e _e163671163678_)))
                          (let ((_hd163675163689_ (##car _e163674163686_))
                                (_tl163676163691_ (##cdr _e163674163686_)))
                            (let ((_body163694_ _tl163676163691_))
                              (if (gx#stx-list? _body163694_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate163670_ _body163694_))
                                  (_E163673163682_)))))
                        (_E163673163682_)))))
            (_E163672163696_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx163614_)
        (let* ((_e163615163628_ _stx163614_)
               (_E163617163632_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163615163628_)))
               (_E163616163664_
                (lambda ()
                  (if (gx#stx-pair? _e163615163628_)
                      (let ((_e163618163636_ (gx#syntax-e _e163615163628_)))
                        (let ((_hd163619163639_ (##car _e163618163636_))
                              (_tl163620163641_ (##cdr _e163618163636_)))
                          (if (gx#stx-pair? _tl163620163641_)
                              (let ((_e163621163644_
                                     (gx#syntax-e _tl163620163641_)))
                                (let ((_hd163622163647_
                                       (##car _e163621163644_))
                                      (_tl163623163649_
                                       (##cdr _e163621163644_)))
                                  (let ((_hd163652_ _hd163622163647_))
                                    (if (gx#stx-pair? _tl163623163649_)
                                        (let ((_e163624163654_
                                               (gx#syntax-e _tl163623163649_)))
                                          (let ((_hd163625163657_
                                                 (##car _e163624163654_))
                                                (_tl163626163659_
                                                 (##cdr _e163624163654_)))
                                            (let ((_expr163662_
                                                   _hd163625163657_))
                                              (if (gx#stx-null?
                                                   _tl163626163659_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd163652_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd163652_)
                          (cons _expr163662_ '())))
              (_E163617163632_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163617163632_)))))
                                        (_E163617163632_)))))
                              (_E163617163632_))))
                      (_E163617163632_)))))
          (_E163616163664_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx163560_)
        (let* ((_e163561163574_ _stx163560_)
               (_E163563163578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163561163574_)))
               (_E163562163610_
                (lambda ()
                  (if (gx#stx-pair? _e163561163574_)
                      (let ((_e163564163582_ (gx#syntax-e _e163561163574_)))
                        (let ((_hd163565163585_ (##car _e163564163582_))
                              (_tl163566163587_ (##cdr _e163564163582_)))
                          (if (gx#stx-pair? _tl163566163587_)
                              (let ((_e163567163590_
                                     (gx#syntax-e _tl163566163587_)))
                                (let ((_hd163568163593_
                                       (##car _e163567163590_))
                                      (_tl163569163595_
                                       (##cdr _e163567163590_)))
                                  (let ((_hd163598_ _hd163568163593_))
                                    (if (gx#stx-pair? _tl163569163595_)
                                        (let ((_e163570163600_
                                               (gx#syntax-e _tl163569163595_)))
                                          (let ((_hd163571163603_
                                                 (##car _e163570163600_))
                                                (_tl163572163605_
                                                 (##cdr _e163570163600_)))
                                            (let ((_expr163608_
                                                   _hd163571163603_))
                                              (if (gx#stx-null?
                                                   _tl163572163605_)
                                                  (if (gx#identifier?
                                                       _hd163598_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd163598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr163608_ '())))
              (_E163563163578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163563163578_)))))
                                        (_E163563163578_)))))
                              (_E163563163578_))))
                      (_E163563163578_)))))
          (_E163562163610_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx163506_)
        (let* ((_e163507163520_ _stx163506_)
               (_E163509163524_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163507163520_)))
               (_E163508163556_
                (lambda ()
                  (if (gx#stx-pair? _e163507163520_)
                      (let ((_e163510163528_ (gx#syntax-e _e163507163520_)))
                        (let ((_hd163511163531_ (##car _e163510163528_))
                              (_tl163512163533_ (##cdr _e163510163528_)))
                          (if (gx#stx-pair? _tl163512163533_)
                              (let ((_e163513163536_
                                     (gx#syntax-e _tl163512163533_)))
                                (let ((_hd163514163539_
                                       (##car _e163513163536_))
                                      (_tl163515163541_
                                       (##cdr _e163513163536_)))
                                  (let ((_id163544_ _hd163514163539_))
                                    (if (gx#stx-pair? _tl163515163541_)
                                        (let ((_e163516163546_
                                               (gx#syntax-e _tl163515163541_)))
                                          (let ((_hd163517163549_
                                                 (##car _e163516163546_))
                                                (_tl163518163551_
                                                 (##cdr _e163516163546_)))
                                            (let ((_alias-id163554_
                                                   _hd163517163549_))
                                              (if (gx#stx-null?
                                                   _tl163518163551_)
                                                  (if (and (gx#identifier?
                                                            _id163544_)
                                                           (gx#identifier?
                                                            _alias-id163554_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id163544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id163554_ '())))
              (_E163509163524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163509163524_)))))
                                        (_E163509163524_)))))
                              (_E163509163524_))))
                      (_E163509163524_)))))
          (_E163508163556_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx163463_)
        (let* ((_e163464163474_ _stx163463_)
               (_E163466163478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163464163474_)))
               (_E163465163502_
                (lambda ()
                  (if (gx#stx-pair? _e163464163474_)
                      (let ((_e163467163482_ (gx#syntax-e _e163464163474_)))
                        (let ((_hd163468163485_ (##car _e163467163482_))
                              (_tl163469163487_ (##cdr _e163467163482_)))
                          (if (gx#stx-pair? _tl163469163487_)
                              (let ((_e163470163490_
                                     (gx#syntax-e _tl163469163487_)))
                                (let ((_hd163471163493_
                                       (##car _e163470163490_))
                                      (_tl163472163495_
                                       (##cdr _e163470163490_)))
                                  (let* ((_hd163498_ _hd163471163493_)
                                         (_body163500_ _tl163472163495_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd163498_)
                                             (gx#stx-list? _body163500_)
                                             (not (gx#stx-null? _body163500_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd163498_)
                                         _body163500_)
                                        (_E163466163478_)))))
                              (_E163466163478_))))
                      (_E163466163478_)))))
          (_E163465163502_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx163399_)
        (letrec ((_generate163401_
                  (lambda (_clause163431_)
                    (let* ((_e163432163439_ _clause163431_)
                           (_E163434163443_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx163399_
                               _clause163431_)))
                           (_E163433163459_
                            (lambda ()
                              (if (gx#stx-pair? _e163432163439_)
                                  (let ((_e163435163447_
                                         (gx#syntax-e _e163432163439_)))
                                    (let ((_hd163436163450_
                                           (##car _e163435163447_))
                                          (_tl163437163452_
                                           (##cdr _e163435163447_)))
                                      (let* ((_hd163455_ _hd163436163450_)
                                             (_body163457_ _tl163437163452_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd163455_)
                                                 (gx#stx-list? _body163457_)
                                                 (not (gx#stx-null?
                                                       _body163457_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd163455_)
                                                   _body163457_)
                                             (gx#stx-source _clause163431_))
                                            (_E163434163443_)))))
                                  (_E163434163443_)))))
                      (_E163433163459_)))))
          (let* ((_e163402163409_ _stx163399_)
                 (_E163404163413_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163402163409_)))
                 (_E163403163427_
                  (lambda ()
                    (if (gx#stx-pair? _e163402163409_)
                        (let ((_e163405163417_ (gx#syntax-e _e163402163409_)))
                          (let ((_hd163406163420_ (##car _e163405163417_))
                                (_tl163407163422_ (##cdr _e163405163417_)))
                            (let ((_clauses163425_ _tl163407163422_))
                              (if (gx#stx-list? _clauses163425_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate163401_
                                    _clauses163425_))
                                  (_E163404163413_)))))
                        (_E163404163413_)))))
            (_E163403163427_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx163300_ _form163301_)
        (letrec ((_generate163303_
                  (lambda (_bind163346_)
                    (let* ((_e163347163357_ _bind163346_)
                           (_E163349163361_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx163300_
                               _bind163346_)))
                           (_E163348163385_
                            (lambda ()
                              (if (gx#stx-pair? _e163347163357_)
                                  (let ((_e163350163365_
                                         (gx#syntax-e _e163347163357_)))
                                    (let ((_hd163351163368_
                                           (##car _e163350163365_))
                                          (_tl163352163370_
                                           (##cdr _e163350163365_)))
                                      (let ((_ids163373_ _hd163351163368_))
                                        (if (gx#stx-pair? _tl163352163370_)
                                            (let ((_e163353163375_
                                                   (gx#syntax-e
                                                    _tl163352163370_)))
                                              (let ((_hd163354163378_
                                                     (##car _e163353163375_))
                                                    (_tl163355163380_
                                                     (##cdr _e163353163375_)))
                                                (let ((_expr163383_
                                                       _hd163354163378_))
                                                  (if (gx#stx-null?
                                                       _tl163355163380_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids163373_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids163373_)
                        (cons _expr163383_ '()))
                  (_E163349163361_))
              (_E163349163361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E163349163361_)))))
                                  (_E163349163361_)))))
                      (_E163348163385_)))))
          (let* ((_e163304163314_ _stx163300_)
                 (_E163306163318_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e163304163314_)))
                 (_E163305163342_
                  (lambda ()
                    (if (gx#stx-pair? _e163304163314_)
                        (let ((_e163307163322_ (gx#syntax-e _e163304163314_)))
                          (let ((_hd163308163325_ (##car _e163307163322_))
                                (_tl163309163327_ (##cdr _e163307163322_)))
                            (if (gx#stx-pair? _tl163309163327_)
                                (let ((_e163310163330_
                                       (gx#syntax-e _tl163309163327_)))
                                  (let ((_hd163311163333_
                                         (##car _e163310163330_))
                                        (_tl163312163335_
                                         (##cdr _e163310163330_)))
                                    (let* ((_hd163338_ _hd163311163333_)
                                           (_body163340_ _tl163312163335_))
                                      (if (and (gx#stx-list? _hd163338_)
                                               (gx#stx-list? _body163340_)
                                               (not (gx#stx-null?
                                                     _body163340_)))
                                          (gx#core-cons*
                                           _form163301_
                                           (gx#stx-map1
                                            _generate163303_
                                            _hd163338_)
                                           _body163340_)
                                          (_E163306163318_)))))
                                (_E163306163318_))))
                        (_E163306163318_)))))
            (_E163305163342_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx163392_)
        (let ((_form163394_ '%#let-values))
          (gx#macro-expand-let-values__% _stx163392_ _form163394_))))
    (define gx#macro-expand-let-values
      (lambda _g169844_
        (let ((_g169843_ (##length _g169844_)))
          (cond ((##fx= _g169843_ 1)
                 (apply (lambda (_stx163392_)
                          (gx#macro-expand-let-values__0 _stx163392_))
                        _g169844_))
                ((##fx= _g169843_ 2)
                 (apply (lambda (_stx163396_ _form163397_)
                          (gx#macro-expand-let-values__%
                           _stx163396_
                           _form163397_))
                        _g169844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g169844_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx163297_)
        (gx#macro-expand-let-values__% _stx163297_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx163295_)
        (gx#macro-expand-let-values__% _stx163295_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx163186_)
        (let* ((_e163187163213_ _stx163186_)
               (_E163199163217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e163187163213_)))
               (_E163189163259_
                (lambda ()
                  (if (gx#stx-pair? _e163187163213_)
                      (let ((_e163200163221_ (gx#syntax-e _e163187163213_)))
                        (let ((_hd163201163224_ (##car _e163200163221_))
                              (_tl163202163226_ (##cdr _e163200163221_)))
                          (if (gx#stx-pair? _tl163202163226_)
                              (let ((_e163203163229_
                                     (gx#syntax-e _tl163202163226_)))
                                (let ((_hd163204163232_
                                       (##car _e163203163229_))
                                      (_tl163205163234_
                                       (##cdr _e163203163229_)))
                                  (let ((_test163237_ _hd163204163232_))
                                    (if (gx#stx-pair? _tl163205163234_)
                                        (let ((_e163206163239_
                                               (gx#syntax-e _tl163205163234_)))
                                          (let ((_hd163207163242_
                                                 (##car _e163206163239_))
                                                (_tl163208163244_
                                                 (##cdr _e163206163239_)))
                                            (let ((_K163247_ _hd163207163242_))
                                              (if (gx#stx-pair?
                                                   _tl163208163244_)
                                                  (let ((_e163209163249_
                                                         (gx#syntax-e
                                                          _tl163208163244_)))
                                                    (let ((_hd163210163252_
                                                           (##car _e163209163249_))
                                                          (_tl163211163254_
                                                           (##cdr _e163209163249_)))
                                                      (let ((_E163257_
                                                             _hd163210163252_))
                                                        (if (gx#stx-null?
                                                             _tl163211163254_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test163237_
                         _K163247_
                         _E163257_)
                        (_E163199163217_))
                    (_E163199163217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E163199163217_)))))
                                        (_E163199163217_)))))
                              (_E163199163217_))))
                      (_E163199163217_))))
               (_E163188163291_
                (lambda ()
                  (if (gx#stx-pair? _e163187163213_)
                      (let ((_e163190163263_ (gx#syntax-e _e163187163213_)))
                        (let ((_hd163191163266_ (##car _e163190163263_))
                              (_tl163192163268_ (##cdr _e163190163263_)))
                          (if (gx#stx-pair? _tl163192163268_)
                              (let ((_e163193163271_
                                     (gx#syntax-e _tl163192163268_)))
                                (let ((_hd163194163274_
                                       (##car _e163193163271_))
                                      (_tl163195163276_
                                       (##cdr _e163193163271_)))
                                  (let ((_test163279_ _hd163194163274_))
                                    (if (gx#stx-pair? _tl163195163276_)
                                        (let ((_e163196163281_
                                               (gx#syntax-e _tl163195163276_)))
                                          (let ((_hd163197163284_
                                                 (##car _e163196163281_))
                                                (_tl163198163286_
                                                 (##cdr _e163196163281_)))
                                            (let ((_K163289_ _hd163197163284_))
                                              (if (gx#stx-null?
                                                   _tl163198163286_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test163279_
                                                       _K163289_
                                                       '#!void)
                                                      (_E163189163259_))
                                                  (_E163189163259_)))))
                                        (_E163189163259_)))))
                              (_E163189163259_))))
                      (_E163189163259_)))))
          (_E163188163291_))))
    (define gx#free-identifier=?
      (lambda (_xid163174_ _yid163175_)
        (let ((_xe163177_ (gx#resolve-identifier__0 _xid163174_))
              (_ye163178_ (gx#resolve-identifier__0 _yid163175_)))
          (if (and _xe163177_ _ye163178_)
              (let ((_$e163180_ (eq? _xe163177_ _ye163178_)))
                (if _$e163180_
                    _$e163180_
                    (if (##structure-instance-of? _xe163177_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye163178_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe163177_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye163178_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe163177_ _ye163178_)
                  '#f
                  (gx#stx-eq? _xid163174_ _yid163175_))))))
    (define gx#bound-identifier=?
      (lambda (_xid163158_ _yid163159_)
        (letrec ((_context163161_
                  (lambda (_e163172_)
                    (if (##structure-direct-instance-of?
                         _e163172_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e163172_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks163162_
                  (lambda (_e163170_)
                    (if (symbol? _e163170_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e163170_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e163170_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e163170_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap163163_
                  (lambda (_e163168_)
                    (if (symbol? _e163168_)
                        _e163168_
                        (gx#syntax-local-unwrap _e163168_)))))
          (let ((_x163165_ (_unwrap163163_ _xid163158_))
                (_y163166_ (_unwrap163163_ _yid163159_)))
            (if (gx#stx-eq? _x163165_ _y163166_)
                (if (eq? (_context163161_ _x163165_)
                         (_context163161_ _y163166_))
                    (equal? (_marks163162_ _x163165_)
                            (_marks163162_ _y163166_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx163156_)
        (if (gx#identifier? _stx163156_)
            (gx#core-identifier=? _stx163156_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx163154_)
        (if (gx#identifier? _stx163154_)
            (gx#core-identifier=? _stx163154_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x163152_)
        (if (gx#identifier? _x163152_)
            (if (not (gx#underscore? _x163152_)) _x163152_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx163098_ _where163099_)
        (let _lp163101_ ((_rest163103_ (gx#syntax->list _stx163098_)))
          (let* ((_rest163104163112_ _rest163103_)
                 (_else163106163120_ (lambda () '#t))
                 (_K163108163130_
                  (lambda (_rest163123_ _hd163124_)
                    (if (not (gx#identifier? _hd163124_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where163099_
                         _hd163124_)
                        (if (find (lambda (_g163125163127_)
                                    (gx#bound-identifier=?
                                     _g163125163127_
                                     _hd163124_))
                                  _rest163123_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where163099_
                             _hd163124_)
                            (_lp163101_ _rest163123_))))))
            (if (##pair? _rest163104163112_)
                (let ((_hd163109163133_ (##car _rest163104163112_))
                      (_tl163110163135_ (##cdr _rest163104163112_)))
                  (let* ((_hd163138_ _hd163109163133_)
                         (_rest163140_ _tl163110163135_))
                    (_K163108163130_ _rest163140_ _hd163138_)))
                (_else163106163120_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx163145_)
        (let ((_where163147_ _stx163145_))
          (gx#check-duplicate-identifiers__% _stx163145_ _where163147_))))
    (define gx#check-duplicate-identifiers
      (lambda _g169846_
        (let ((_g169845_ (##length _g169846_)))
          (cond ((##fx= _g169845_ 1)
                 (apply (lambda (_stx163145_)
                          (gx#check-duplicate-identifiers__0 _stx163145_))
                        _g169846_))
                ((##fx= _g169845_ 2)
                 (apply (lambda (_stx163149_ _where163150_)
                          (gx#check-duplicate-identifiers__%
                           _stx163149_
                           _where163150_))
                        _g169846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g169846_))))))
    (define gx#core-bind-values?
      (lambda (_stx163090_)
        (gx#stx-andmap
         (lambda (_x163092_)
           (let ((_$e163094_ (gx#identifier? _x163092_)))
             (if _$e163094_ _$e163094_ (gx#stx-false? _x163092_))))
         _stx163090_)))
    (define gx#core-bind-values!__%
      (lambda (_stx163054_ _rebind?163055_ _phi163056_ _ctx163057_)
        (gx#stx-for-each1
         (lambda (_id163059_)
           (if (gx#identifier? _id163059_)
               (gx#core-bind-runtime!__%
                _id163059_
                _rebind?163055_
                _phi163056_
                _ctx163057_)
               '#!void))
         _stx163054_)))
    (define gx#core-bind-values!__0
      (lambda (_stx163064_)
        (let* ((_rebind?163066_ '#f)
               (_phi163068_ (gx#current-expander-phi))
               (_ctx163070_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163064_
           _rebind?163066_
           _phi163068_
           _ctx163070_))))
    (define gx#core-bind-values!__1
      (lambda (_stx163072_ _rebind?163073_)
        (let* ((_phi163075_ (gx#current-expander-phi))
               (_ctx163077_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163072_
           _rebind?163073_
           _phi163075_
           _ctx163077_))))
    (define gx#core-bind-values!__2
      (lambda (_stx163079_ _rebind?163080_ _phi163081_)
        (let ((_ctx163083_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx163079_
           _rebind?163080_
           _phi163081_
           _ctx163083_))))
    (define gx#core-bind-values!
      (lambda _g169848_
        (let ((_g169847_ (##length _g169848_)))
          (cond ((##fx= _g169847_ 1)
                 (apply (lambda (_stx163064_)
                          (gx#core-bind-values!__0 _stx163064_))
                        _g169848_))
                ((##fx= _g169847_ 2)
                 (apply (lambda (_stx163072_ _rebind?163073_)
                          (gx#core-bind-values!__1
                           _stx163072_
                           _rebind?163073_))
                        _g169848_))
                ((##fx= _g169847_ 3)
                 (apply (lambda (_stx163079_ _rebind?163080_ _phi163081_)
                          (gx#core-bind-values!__2
                           _stx163079_
                           _rebind?163080_
                           _phi163081_))
                        _g169848_))
                ((##fx= _g169847_ 4)
                 (apply (lambda (_stx163085_
                                 _rebind?163086_
                                 _phi163087_
                                 _ctx163088_)
                          (gx#core-bind-values!__%
                           _stx163085_
                           _rebind?163086_
                           _phi163087_
                           _ctx163088_))
                        _g169848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g169848_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx163049_)
        (gx#stx-map1
         (lambda (_x163051_)
           (if (gx#identifier? _x163051_)
               (gx#core-quote-syntax__0 _x163051_)
               '#f))
         _stx163049_)))
    (define gx#core-runtime-ref?
      (lambda (_stx163042_)
        (if (gx#identifier? _stx163042_)
            (let* ((_bind163044_ (gx#resolve-identifier__0 _stx163042_))
                   (_$e163046_ (not _bind163044_)))
              (if _$e163046_
                  _$e163046_
                  (##structure-instance-of?
                   _bind163044_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id163034_ _form163035_)
        (let ((_bind163037_ (gx#resolve-identifier__0 _id163034_)))
          (if (##structure-instance-of? _bind163037_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id163034_)
              (if (not _bind163037_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id163034_)))
                      (gx#core-quote-syntax__0 _id163034_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form163035_
                       _id163034_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form163035_
                   _id163034_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id162993_ _rebind?162994_ _phi162995_ _ctx162996_)
        (let* ((_key162998_ (gx#core-identifier-key _id162993_))
               (_eid163000_
                (gx#make-binding-id__%
                 _key162998_
                 '#f
                 _phi162995_
                 _ctx162996_))
               (_bind163002_
                (if (##structure-instance-of?
                     _ctx162996_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid163000_
                     _key162998_
                     _phi162995_
                     _ctx162996_)
                    (if (##structure-instance-of?
                         _ctx162996_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid163000_
                         _key162998_
                         _phi162995_)
                        (if (##structure-instance-of?
                             _ctx162996_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid163000_
                             _key162998_
                             _phi162995_)
                            (##structure
                             gx#runtime-binding::t
                             _eid163000_
                             _key162998_
                             _phi162995_))))))
          (gx#bind-identifier!__%
           _id162993_
           _bind163002_
           _rebind?162994_
           _phi162995_
           _ctx162996_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id163008_)
        (let* ((_rebind?163010_ '#f)
               (_phi163012_ (gx#current-expander-phi))
               (_ctx163014_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163008_
           _rebind?163010_
           _phi163012_
           _ctx163014_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id163016_ _rebind?163017_)
        (let* ((_phi163019_ (gx#current-expander-phi))
               (_ctx163021_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163016_
           _rebind?163017_
           _phi163019_
           _ctx163021_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id163023_ _rebind?163024_ _phi163025_)
        (let ((_ctx163027_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id163023_
           _rebind?163024_
           _phi163025_
           _ctx163027_))))
    (define gx#core-bind-runtime!
      (lambda _g169850_
        (let ((_g169849_ (##length _g169850_)))
          (cond ((##fx= _g169849_ 1)
                 (apply (lambda (_id163008_)
                          (gx#core-bind-runtime!__0 _id163008_))
                        _g169850_))
                ((##fx= _g169849_ 2)
                 (apply (lambda (_id163016_ _rebind?163017_)
                          (gx#core-bind-runtime!__1
                           _id163016_
                           _rebind?163017_))
                        _g169850_))
                ((##fx= _g169849_ 3)
                 (apply (lambda (_id163023_ _rebind?163024_ _phi163025_)
                          (gx#core-bind-runtime!__2
                           _id163023_
                           _rebind?163024_
                           _phi163025_))
                        _g169850_))
                ((##fx= _g169849_ 4)
                 (apply (lambda (_id163029_
                                 _rebind?163030_
                                 _phi163031_
                                 _ctx163032_)
                          (gx#core-bind-runtime!__%
                           _id163029_
                           _rebind?163030_
                           _phi163031_
                           _ctx163032_))
                        _g169850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g169850_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id162948_ _eid162949_ _rebind?162950_ _phi162951_ _ctx162952_)
        (let* ((_key162954_ (gx#core-identifier-key _id162948_))
               (_bind162956_
                (if (##structure-instance-of?
                     _ctx162952_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid162949_
                     _key162954_
                     _phi162951_
                     _ctx162952_)
                    (if (##structure-instance-of?
                         _ctx162952_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid162949_
                         _key162954_
                         _phi162951_)
                        (##structure
                         gx#runtime-binding::t
                         _eid162949_
                         _key162954_
                         _phi162951_)))))
          (gx#bind-identifier!__%
           _id162948_
           _bind162956_
           _rebind?162950_
           _phi162951_
           _ctx162952_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id162962_ _eid162963_)
        (let* ((_rebind?162965_ '#f)
               (_phi162967_ (gx#current-expander-phi))
               (_ctx162969_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162962_
           _eid162963_
           _rebind?162965_
           _phi162967_
           _ctx162969_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id162971_ _eid162972_ _rebind?162973_)
        (let* ((_phi162975_ (gx#current-expander-phi))
               (_ctx162977_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162971_
           _eid162972_
           _rebind?162973_
           _phi162975_
           _ctx162977_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id162979_ _eid162980_ _rebind?162981_ _phi162982_)
        (let ((_ctx162984_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id162979_
           _eid162980_
           _rebind?162981_
           _phi162982_
           _ctx162984_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g169852_
        (let ((_g169851_ (##length _g169852_)))
          (cond ((##fx= _g169851_ 2)
                 (apply (lambda (_id162962_ _eid162963_)
                          (gx#core-bind-runtime-reference!__0
                           _id162962_
                           _eid162963_))
                        _g169852_))
                ((##fx= _g169851_ 3)
                 (apply (lambda (_id162971_ _eid162972_ _rebind?162973_)
                          (gx#core-bind-runtime-reference!__1
                           _id162971_
                           _eid162972_
                           _rebind?162973_))
                        _g169852_))
                ((##fx= _g169851_ 4)
                 (apply (lambda (_id162979_
                                 _eid162980_
                                 _rebind?162981_
                                 _phi162982_)
                          (gx#core-bind-runtime-reference!__2
                           _id162979_
                           _eid162980_
                           _rebind?162981_
                           _phi162982_))
                        _g169852_))
                ((##fx= _g169851_ 5)
                 (apply (lambda (_id162986_
                                 _eid162987_
                                 _rebind?162988_
                                 _phi162989_
                                 _ctx162990_)
                          (gx#core-bind-runtime-reference!__%
                           _id162986_
                           _eid162987_
                           _rebind?162988_
                           _phi162989_
                           _ctx162990_))
                        _g169852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g169852_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id162908_ _eid162909_ _rebind?162910_ _phi162911_ _ctx162912_)
        (gx#bind-identifier!__%
         _id162908_
         (##structure
          gx#extern-binding::t
          _eid162909_
          (gx#core-identifier-key _id162908_)
          _phi162911_)
         _rebind?162910_
         _phi162911_
         _ctx162912_)))
    (define gx#core-bind-extern!__0
      (lambda (_id162917_ _eid162918_)
        (let* ((_rebind?162920_ '#f)
               (_phi162922_ (gx#current-expander-phi))
               (_ctx162924_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162917_
           _eid162918_
           _rebind?162920_
           _phi162922_
           _ctx162924_))))
    (define gx#core-bind-extern!__1
      (lambda (_id162926_ _eid162927_ _rebind?162928_)
        (let* ((_phi162930_ (gx#current-expander-phi))
               (_ctx162932_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162926_
           _eid162927_
           _rebind?162928_
           _phi162930_
           _ctx162932_))))
    (define gx#core-bind-extern!__2
      (lambda (_id162934_ _eid162935_ _rebind?162936_ _phi162937_)
        (let ((_ctx162939_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id162934_
           _eid162935_
           _rebind?162936_
           _phi162937_
           _ctx162939_))))
    (define gx#core-bind-extern!
      (lambda _g169854_
        (let ((_g169853_ (##length _g169854_)))
          (cond ((##fx= _g169853_ 2)
                 (apply (lambda (_id162917_ _eid162918_)
                          (gx#core-bind-extern!__0 _id162917_ _eid162918_))
                        _g169854_))
                ((##fx= _g169853_ 3)
                 (apply (lambda (_id162926_ _eid162927_ _rebind?162928_)
                          (gx#core-bind-extern!__1
                           _id162926_
                           _eid162927_
                           _rebind?162928_))
                        _g169854_))
                ((##fx= _g169853_ 4)
                 (apply (lambda (_id162934_
                                 _eid162935_
                                 _rebind?162936_
                                 _phi162937_)
                          (gx#core-bind-extern!__2
                           _id162934_
                           _eid162935_
                           _rebind?162936_
                           _phi162937_))
                        _g169854_))
                ((##fx= _g169853_ 5)
                 (apply (lambda (_id162941_
                                 _eid162942_
                                 _rebind?162943_
                                 _phi162944_
                                 _ctx162945_)
                          (gx#core-bind-extern!__%
                           _id162941_
                           _eid162942_
                           _rebind?162943_
                           _phi162944_
                           _ctx162945_))
                        _g169854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g169854_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id162862_ _e162863_ _rebind?162864_ _phi162865_ _ctx162866_)
        (gx#bind-identifier!__%
         _id162862_
         (let ((_key162871_ (gx#core-identifier-key _id162862_))
               (_e162872_
                (if (or (##structure-instance-of? _e162863_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e162863_
                         'gx#expander-context::t))
                    _e162863_
                    (##structure
                     gx#user-expander::t
                     _e162863_
                     _ctx162866_
                     _phi162865_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key162871_ '#t _phi162865_ _ctx162866_)
            _key162871_
            _phi162865_
            _e162872_))
         _rebind?162864_
         _phi162865_
         _ctx162866_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id162877_ _e162878_)
        (let* ((_rebind?162880_ '#f)
               (_phi162882_ (gx#current-expander-phi))
               (_ctx162884_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162877_
           _e162878_
           _rebind?162880_
           _phi162882_
           _ctx162884_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id162886_ _e162887_ _rebind?162888_)
        (let* ((_phi162890_ (gx#current-expander-phi))
               (_ctx162892_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162886_
           _e162887_
           _rebind?162888_
           _phi162890_
           _ctx162892_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id162894_ _e162895_ _rebind?162896_ _phi162897_)
        (let ((_ctx162899_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id162894_
           _e162895_
           _rebind?162896_
           _phi162897_
           _ctx162899_))))
    (define gx#core-bind-syntax!
      (lambda _g169856_
        (let ((_g169855_ (##length _g169856_)))
          (cond ((##fx= _g169855_ 2)
                 (apply (lambda (_id162877_ _e162878_)
                          (gx#core-bind-syntax!__0 _id162877_ _e162878_))
                        _g169856_))
                ((##fx= _g169855_ 3)
                 (apply (lambda (_id162886_ _e162887_ _rebind?162888_)
                          (gx#core-bind-syntax!__1
                           _id162886_
                           _e162887_
                           _rebind?162888_))
                        _g169856_))
                ((##fx= _g169855_ 4)
                 (apply (lambda (_id162894_
                                 _e162895_
                                 _rebind?162896_
                                 _phi162897_)
                          (gx#core-bind-syntax!__2
                           _id162894_
                           _e162895_
                           _rebind?162896_
                           _phi162897_))
                        _g169856_))
                ((##fx= _g169855_ 5)
                 (apply (lambda (_id162901_
                                 _e162902_
                                 _rebind?162903_
                                 _phi162904_
                                 _ctx162905_)
                          (gx#core-bind-syntax!__%
                           _id162901_
                           _e162902_
                           _rebind?162903_
                           _phi162904_
                           _ctx162905_))
                        _g169856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g169856_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id162845_ _e162846_ _rebind?162847_)
        (gx#core-bind-syntax!__%
         _id162845_
         _e162846_
         _rebind?162847_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id162852_ _e162853_)
        (let ((_rebind?162855_ '#f))
          (gx#core-bind-root-syntax!__%
           _id162852_
           _e162853_
           _rebind?162855_))))
    (define gx#core-bind-root-syntax!
      (lambda _g169858_
        (let ((_g169857_ (##length _g169858_)))
          (cond ((##fx= _g169857_ 2)
                 (apply (lambda (_id162852_ _e162853_)
                          (gx#core-bind-root-syntax!__0 _id162852_ _e162853_))
                        _g169858_))
                ((##fx= _g169857_ 3)
                 (apply (lambda (_id162857_ _e162858_ _rebind?162859_)
                          (gx#core-bind-root-syntax!__%
                           _id162857_
                           _e162858_
                           _rebind?162859_))
                        _g169858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g169858_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id162803_
               _alias-id162804_
               _rebind?162805_
               _phi162806_
               _ctx162807_)
        (gx#bind-identifier!__%
         _id162803_
         (let ((_key162809_ (gx#core-identifier-key _id162803_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key162809_ '#t _phi162806_ _ctx162807_)
            _key162809_
            _phi162806_
            _alias-id162804_))
         _rebind?162805_
         _phi162806_
         _ctx162807_)))
    (define gx#core-bind-alias!__0
      (lambda (_id162814_ _alias-id162815_)
        (let* ((_rebind?162817_ '#f)
               (_phi162819_ (gx#current-expander-phi))
               (_ctx162821_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162814_
           _alias-id162815_
           _rebind?162817_
           _phi162819_
           _ctx162821_))))
    (define gx#core-bind-alias!__1
      (lambda (_id162823_ _alias-id162824_ _rebind?162825_)
        (let* ((_phi162827_ (gx#current-expander-phi))
               (_ctx162829_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162823_
           _alias-id162824_
           _rebind?162825_
           _phi162827_
           _ctx162829_))))
    (define gx#core-bind-alias!__2
      (lambda (_id162831_ _alias-id162832_ _rebind?162833_ _phi162834_)
        (let ((_ctx162836_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id162831_
           _alias-id162832_
           _rebind?162833_
           _phi162834_
           _ctx162836_))))
    (define gx#core-bind-alias!
      (lambda _g169860_
        (let ((_g169859_ (##length _g169860_)))
          (cond ((##fx= _g169859_ 2)
                 (apply (lambda (_id162814_ _alias-id162815_)
                          (gx#core-bind-alias!__0 _id162814_ _alias-id162815_))
                        _g169860_))
                ((##fx= _g169859_ 3)
                 (apply (lambda (_id162823_ _alias-id162824_ _rebind?162825_)
                          (gx#core-bind-alias!__1
                           _id162823_
                           _alias-id162824_
                           _rebind?162825_))
                        _g169860_))
                ((##fx= _g169859_ 4)
                 (apply (lambda (_id162831_
                                 _alias-id162832_
                                 _rebind?162833_
                                 _phi162834_)
                          (gx#core-bind-alias!__2
                           _id162831_
                           _alias-id162832_
                           _rebind?162833_
                           _phi162834_))
                        _g169860_))
                ((##fx= _g169859_ 5)
                 (apply (lambda (_id162838_
                                 _alias-id162839_
                                 _rebind?162840_
                                 _phi162841_
                                 _ctx162842_)
                          (gx#core-bind-alias!__%
                           _id162838_
                           _alias-id162839_
                           _rebind?162840_
                           _phi162841_
                           _ctx162842_))
                        _g169860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g169860_))))))
    (define gx#make-binding-id__%
      (lambda (_key162760_ _syntax?162761_ _phi162762_ _ctx162763_)
        (if (uninterned-symbol? _key162760_)
            (gensym 'L)
            (if (pair? _key162760_)
                (gensym (car _key162760_))
                (if (##structure-instance-of? _ctx162763_ 'gx#top-context::t)
                    (let ((_ns162765_
                           (gx#core-context-namespace__% _ctx162763_)))
                      (if (and (fxzero? _phi162762_) (not _syntax?162761_))
                          (if _ns162765_
                              (make-symbol__1 _ns162765_ '"#" _key162760_)
                              _key162760_)
                          (if _syntax?162761_
                              (make-symbol__1
                               (let ((_$e162767_ _ns162765_))
                                 (if _$e162767_ _$e162767_ '""))
                               '"[:"
                               (number->string _phi162762_)
                               '":]#"
                               _key162760_)
                              (make-symbol__1
                               (let ((_$e162770_ _ns162765_))
                                 (if _$e162770_ _$e162770_ '""))
                               '"["
                               (number->string _phi162762_)
                               '"]#"
                               _key162760_))))
                    (gensym _key162760_))))))
    (define gx#make-binding-id__0
      (lambda (_key162776_)
        (let* ((_syntax?162778_ '#f)
               (_phi162780_ (gx#current-expander-phi))
               (_ctx162782_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162776_
           _syntax?162778_
           _phi162780_
           _ctx162782_))))
    (define gx#make-binding-id__1
      (lambda (_key162784_ _syntax?162785_)
        (let* ((_phi162787_ (gx#current-expander-phi))
               (_ctx162789_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162784_
           _syntax?162785_
           _phi162787_
           _ctx162789_))))
    (define gx#make-binding-id__2
      (lambda (_key162791_ _syntax?162792_ _phi162793_)
        (let ((_ctx162795_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key162791_
           _syntax?162792_
           _phi162793_
           _ctx162795_))))
    (define gx#make-binding-id
      (lambda _g169862_
        (let ((_g169861_ (##length _g169862_)))
          (cond ((##fx= _g169861_ 1)
                 (apply (lambda (_key162776_)
                          (gx#make-binding-id__0 _key162776_))
                        _g169862_))
                ((##fx= _g169861_ 2)
                 (apply (lambda (_key162784_ _syntax?162785_)
                          (gx#make-binding-id__1 _key162784_ _syntax?162785_))
                        _g169862_))
                ((##fx= _g169861_ 3)
                 (apply (lambda (_key162791_ _syntax?162792_ _phi162793_)
                          (gx#make-binding-id__2
                           _key162791_
                           _syntax?162792_
                           _phi162793_))
                        _g169862_))
                ((##fx= _g169861_ 4)
                 (apply (lambda (_key162797_
                                 _syntax?162798_
                                 _phi162799_
                                 _ctx162800_)
                          (gx#make-binding-id__%
                           _key162797_
                           _syntax?162798_
                           _phi162799_
                           _ctx162800_))
                        _g169862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g169862_))))))))
