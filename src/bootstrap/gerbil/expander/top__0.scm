(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707552287)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx147834_)
        (letrec ((_expand-special147836_
                  (lambda (_hd147838_ _K147839_ _rest147840_ _r147841_)
                    (_K147839_
                     _rest147840_
                     (cons (gx#core-expand-top _hd147838_) _r147841_)))))
          (gx#core-expand-block__0 _stx147834_ _expand-special147836_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx147587_)
        (letrec ((_expand-special147589_
                  (lambda (_hd147709_ _K147710_ _rest147711_ _r147712_)
                    (let* ((_K147716_
                            (lambda (_e147714_)
                              (_K147710_
                               _rest147711_
                               (cons _e147714_ _r147712_))))
                           (_e147717147746_ _hd147709_)
                           (_E147741147750_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147717147746_)))
                           (_E147737147762_
                            (lambda ()
                              (if (gx#stx-pair? _e147717147746_)
                                  (let ((_e147742147754_
                                         (gx#syntax-e _e147717147746_)))
                                    (let ((_hd147743147757_
                                           (##car _e147742147754_))
                                          (_tl147744147759_
                                           (##cdr _e147742147754_)))
                                      (if (and (gx#identifier?
                                                _hd147743147757_)
                                               (gx#core-identifier=?
                                                _hd147743147757_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K147716_
                                               (gx#core-expand-define-runtime%
                                                _hd147709_))
                                              (_E147741147750_))
                                          (_E147741147750_))))
                                  (_E147741147750_))))
                           (_E147733147774_
                            (lambda ()
                              (if (gx#stx-pair? _e147717147746_)
                                  (let ((_e147738147766_
                                         (gx#syntax-e _e147717147746_)))
                                    (let ((_hd147739147769_
                                           (##car _e147738147766_))
                                          (_tl147740147771_
                                           (##cdr _e147738147766_)))
                                      (if (and (gx#identifier?
                                                _hd147739147769_)
                                               (gx#core-identifier=?
                                                _hd147739147769_
                                                '%#define-alias))
                                          (if '#t
                                              (_K147716_
                                               (gx#core-expand-define-alias%
                                                _hd147709_))
                                              (_E147737147762_))
                                          (_E147737147762_))))
                                  (_E147737147762_))))
                           (_E147723147786_
                            (lambda ()
                              (if (gx#stx-pair? _e147717147746_)
                                  (let ((_e147734147778_
                                         (gx#syntax-e _e147717147746_)))
                                    (let ((_hd147735147781_
                                           (##car _e147734147778_))
                                          (_tl147736147783_
                                           (##cdr _e147734147778_)))
                                      (if (and (gx#identifier?
                                                _hd147735147781_)
                                               (gx#core-identifier=?
                                                _hd147735147781_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K147716_
                                               (gx#core-expand-define-syntax%
                                                _hd147709_))
                                              (_E147733147774_))
                                          (_E147733147774_))))
                                  (_E147733147774_))))
                           (_E147719147818_
                            (lambda ()
                              (if (gx#stx-pair? _e147717147746_)
                                  (let ((_e147724147790_
                                         (gx#syntax-e _e147717147746_)))
                                    (let ((_hd147725147793_
                                           (##car _e147724147790_))
                                          (_tl147726147795_
                                           (##cdr _e147724147790_)))
                                      (if (and (gx#identifier?
                                                _hd147725147793_)
                                               (gx#core-identifier=?
                                                _hd147725147793_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147726147795_)
                                              (let ((_e147727147798_
                                                     (gx#syntax-e
                                                      _tl147726147795_)))
                                                (let ((_hd147728147801_
                                                       (##car _e147727147798_))
                                                      (_tl147729147803_
                                                       (##cdr _e147727147798_)))
                                                  (let ((_hd-bind147806_
                                                         _hd147728147801_))
                                                    (if (gx#stx-pair?
                                                         _tl147729147803_)
                                                        (let ((_e147730147808_
                                                               (gx#syntax-e
                                                                _tl147729147803_)))
                                                          (let ((_hd147731147811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147730147808_))
                        (_tl147732147813_ (##cdr _e147730147808_)))
                    (let ((_expr147816_ _hd147731147811_))
                      (if (gx#stx-null? _tl147732147813_)
                          (if (gx#core-bind-values? _hd-bind147806_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147806_)
                                (_K147716_ _hd147709_))
                              (_E147723147786_))
                          (_E147723147786_)))))
                (_E147723147786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147723147786_))
                                          (_E147723147786_))))
                                  (_E147723147786_))))
                           (_E147718147830_
                            (lambda ()
                              (if (gx#stx-pair? _e147717147746_)
                                  (let ((_e147720147822_
                                         (gx#syntax-e _e147717147746_)))
                                    (let ((_hd147721147825_
                                           (##car _e147720147822_))
                                          (_tl147722147827_
                                           (##cdr _e147720147822_)))
                                      (if (and (gx#identifier?
                                                _hd147721147825_)
                                               (gx#core-identifier=?
                                                _hd147721147825_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K147716_
                                               (gx#core-expand-begin-syntax%
                                                _hd147709_))
                                              (_E147719147818_))
                                          (_E147719147818_))))
                                  (_E147719147818_)))))
                      (_E147718147830_))))
                 (_eval-body147590_
                  (lambda (_rbody147598_)
                    (let _lp147600_ ((_rest147602_ _rbody147598_)
                                     (_body147603_ '())
                                     (_ebody147604_ '()))
                      (let* ((_rest147605147613_ _rest147602_)
                             (_else147607147621_
                              (lambda ()
                                (values _body147603_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody147604_)
                                          (gx#stx-source _stx147587_))))))
                             (_K147609147697_
                              (lambda (_rest147624_ _hd147625_)
                                (let* ((_e147626147643_ _hd147625_)
                                       (_E147638147647_
                                        (lambda ()
                                          (_lp147600_
                                           _rest147624_
                                           (cons _hd147625_ _body147603_)
                                           (cons _hd147625_ _ebody147604_))))
                                       (_E147628147659_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147626147643_)
                                              (let ((_e147639147651_
                                                     (gx#syntax-e
                                                      _e147626147643_)))
                                                (let ((_hd147640147654_
                                                       (##car _e147639147651_))
                                                      (_tl147641147656_
                                                       (##cdr _e147639147651_)))
                                                  (if (and (gx#identifier?
                                                            _hd147640147654_)
                                                           (gx#core-identifier=?
                                                            _hd147640147654_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp147600_
                                                           _rest147624_
                                                           (cons _hd147625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body147603_)
                   _ebody147604_)
                  (_E147638147647_))
              (_E147638147647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147638147647_))))
                                       (_E147627147693_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147626147643_)
                                              (let ((_e147629147663_
                                                     (gx#syntax-e
                                                      _e147626147643_)))
                                                (let ((_hd147630147666_
                                                       (##car _e147629147663_))
                                                      (_tl147631147668_
                                                       (##cdr _e147629147663_)))
                                                  (if (and (gx#identifier?
                                                            _hd147630147666_)
                                                           (gx#core-identifier=?
                                                            _hd147630147666_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl147631147668_)
                                                          (let ((_e147632147671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl147631147668_)))
                    (let ((_hd147633147674_ (##car _e147632147671_))
                          (_tl147634147676_ (##cdr _e147632147671_)))
                      (let ((_hd-bind147679_ _hd147633147674_))
                        (if (gx#stx-pair? _tl147634147676_)
                            (let ((_e147635147681_
                                   (gx#syntax-e _tl147634147676_)))
                              (let ((_hd147636147684_ (##car _e147635147681_))
                                    (_tl147637147686_ (##cdr _e147635147681_)))
                                (let ((_expr147689_ _hd147636147684_))
                                  (if (gx#stx-null? _tl147637147686_)
                                      (if '#t
                                          (let ((_ehd147691_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind147679_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr147689_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd147625_))))
                                            (_lp147600_
                                             _rest147624_
                                             (cons _ehd147691_ _body147603_)
                                             (cons _ehd147691_ _ebody147604_)))
                                          (_E147628147659_))
                                      (_E147628147659_)))))
                            (_E147628147659_)))))
                  (_E147628147659_))
              (_E147628147659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147628147659_)))))
                                  (_E147627147693_)))))
                        (if (##pair? _rest147605147613_)
                            (let ((_hd147610147700_ (##car _rest147605147613_))
                                  (_tl147611147702_
                                   (##cdr _rest147605147613_)))
                              (let* ((_hd147705_ _hd147610147700_)
                                     (_rest147707_ _tl147611147702_))
                                (_K147609147697_ _rest147707_ _hd147705_)))
                            (_else147607147621_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody147593_
                     (gx#core-expand-block__1
                      _stx147587_
                      _expand-special147589_
                      '#f))
                    (_g152051_ (_eval-body147590_ _rbody147593_)))
               (begin
                 (let ((_g152052_
                        (if (##values? _g152051_)
                            (##vector-length _g152051_)
                            1)))
                   (if (not (##fx= _g152052_ 2))
                       (error "Context expects 2 values" _g152052_)))
                 (let ((_expanded-body147595_ (##vector-ref _g152051_ 0))
                       (_value147596_ (##vector-ref _g152051_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body147595_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value147596_ '())))
                    (gx#stx-source _stx147587_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx147557_)
        (let* ((_e147558147565_ _stx147557_)
               (_E147560147569_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147558147565_)))
               (_E147559147583_
                (lambda ()
                  (if (gx#stx-pair? _e147558147565_)
                      (let ((_e147561147573_ (gx#syntax-e _e147558147565_)))
                        (let ((_hd147562147576_ (##car _e147561147573_))
                              (_tl147563147578_ (##cdr _e147561147573_)))
                          (let ((_body147581_ _tl147563147578_))
                            (if (gx#stx-list? _body147581_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body147581_)
                                 (gx#stx-source _stx147557_))
                                (_E147560147569_)))))
                      (_E147560147569_)))))
          (_E147559147583_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx147555_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx147555_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx147501_)
        (let* ((_e147502147515_ _stx147501_)
               (_E147504147519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147502147515_)))
               (_E147503147551_
                (lambda ()
                  (if (gx#stx-pair? _e147502147515_)
                      (let ((_e147505147523_ (gx#syntax-e _e147502147515_)))
                        (let ((_hd147506147526_ (##car _e147505147523_))
                              (_tl147507147528_ (##cdr _e147505147523_)))
                          (if (gx#stx-pair? _tl147507147528_)
                              (let ((_e147508147531_
                                     (gx#syntax-e _tl147507147528_)))
                                (let ((_hd147509147534_
                                       (##car _e147508147531_))
                                      (_tl147510147536_
                                       (##cdr _e147508147531_)))
                                  (let ((_ann147539_ _hd147509147534_))
                                    (if (gx#stx-pair? _tl147510147536_)
                                        (let ((_e147511147541_
                                               (gx#syntax-e _tl147510147536_)))
                                          (let ((_hd147512147544_
                                                 (##car _e147511147541_))
                                                (_tl147513147546_
                                                 (##cdr _e147511147541_)))
                                            (let ((_expr147549_
                                                   _hd147512147544_))
                                              (if (gx#stx-null?
                                                   _tl147513147546_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann147539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr147549_)
                                 '())))
               (gx#stx-source _stx147501_))
              (_E147504147519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147504147519_)))))
                                        (_E147504147519_)))))
                              (_E147504147519_))))
                      (_E147504147519_)))))
          (_E147503147551_))))
    (define gx#core-expand-local-block
      (lambda (_stx147225_ _body147226_)
        (letrec ((_expand-special147228_
                  (lambda (_hd147496_ _K147497_ _rest147498_ _r147499_)
                    (_K147497_
                     '()
                     (cons (_expand-internal147229_ _hd147496_ _rest147498_)
                           _r147499_))))
                 (_expand-internal147229_
                  (lambda (_hd147492_ _rest147493_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal147231_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd147492_ _rest147493_))
                          (gx#stx-source _stx147225_))
                         _expand-internal-special147230_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj152045 (make-object gx#local-context::t '6)))
                       (gx#local-context:::init! __obj152045)
                       __obj152045))))
                 (_expand-internal-special147230_
                  (lambda (_hd147387_ _K147388_ _rest147389_ _r147390_)
                    (let* ((_e147391147416_ _hd147387_)
                           (_E147411147420_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147391147416_)))
                           (_E147407147432_
                            (lambda ()
                              (if (gx#stx-pair? _e147391147416_)
                                  (let ((_e147412147424_
                                         (gx#syntax-e _e147391147416_)))
                                    (let ((_hd147413147427_
                                           (##car _e147412147424_))
                                          (_tl147414147429_
                                           (##cdr _e147412147424_)))
                                      (if (and (gx#identifier?
                                                _hd147413147427_)
                                               (gx#core-identifier=?
                                                _hd147413147427_
                                                '%#declare))
                                          (if '#t
                                              (_K147388_
                                               _rest147389_
                                               (cons (gx#core-expand-declare%
                                                      _hd147387_)
                                                     _r147390_))
                                              (_E147411147420_))
                                          (_E147411147420_))))
                                  (_E147411147420_))))
                           (_E147403147444_
                            (lambda ()
                              (if (gx#stx-pair? _e147391147416_)
                                  (let ((_e147408147436_
                                         (gx#syntax-e _e147391147416_)))
                                    (let ((_hd147409147439_
                                           (##car _e147408147436_))
                                          (_tl147410147441_
                                           (##cdr _e147408147436_)))
                                      (if (and (gx#identifier?
                                                _hd147409147439_)
                                               (gx#core-identifier=?
                                                _hd147409147439_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd147387_)
                                                (_K147388_
                                                 _rest147389_
                                                 _r147390_))
                                              (_E147407147432_))
                                          (_E147407147432_))))
                                  (_E147407147432_))))
                           (_E147393147456_
                            (lambda ()
                              (if (gx#stx-pair? _e147391147416_)
                                  (let ((_e147404147448_
                                         (gx#syntax-e _e147391147416_)))
                                    (let ((_hd147405147451_
                                           (##car _e147404147448_))
                                          (_tl147406147453_
                                           (##cdr _e147404147448_)))
                                      (if (and (gx#identifier?
                                                _hd147405147451_)
                                               (gx#core-identifier=?
                                                _hd147405147451_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd147387_)
                                                (_K147388_
                                                 _rest147389_
                                                 _r147390_))
                                              (_E147403147444_))
                                          (_E147403147444_))))
                                  (_E147403147444_))))
                           (_E147392147488_
                            (lambda ()
                              (if (gx#stx-pair? _e147391147416_)
                                  (let ((_e147394147460_
                                         (gx#syntax-e _e147391147416_)))
                                    (let ((_hd147395147463_
                                           (##car _e147394147460_))
                                          (_tl147396147465_
                                           (##cdr _e147394147460_)))
                                      (if (and (gx#identifier?
                                                _hd147395147463_)
                                               (gx#core-identifier=?
                                                _hd147395147463_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147396147465_)
                                              (let ((_e147397147468_
                                                     (gx#syntax-e
                                                      _tl147396147465_)))
                                                (let ((_hd147398147471_
                                                       (##car _e147397147468_))
                                                      (_tl147399147473_
                                                       (##cdr _e147397147468_)))
                                                  (let ((_hd-bind147476_
                                                         _hd147398147471_))
                                                    (if (gx#stx-pair?
                                                         _tl147399147473_)
                                                        (let ((_e147400147478_
                                                               (gx#syntax-e
                                                                _tl147399147473_)))
                                                          (let ((_hd147401147481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147400147478_))
                        (_tl147402147483_ (##cdr _e147400147478_)))
                    (let ((_expr147486_ _hd147401147481_))
                      (if (gx#stx-null? _tl147402147483_)
                          (if (gx#core-bind-values? _hd-bind147476_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147476_)
                                (_K147388_
                                 _rest147389_
                                 (cons _hd147387_ _r147390_)))
                              (_E147393147456_))
                          (_E147393147456_)))))
                (_E147393147456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147393147456_))
                                          (_E147393147456_))))
                                  (_E147393147456_)))))
                      (_E147392147488_))))
                 (_wrap-internal147231_
                  (lambda (_rbody147233_)
                    (let _lp147235_ ((_rest147237_ _rbody147233_)
                                     (_decls147238_ '())
                                     (_bind147239_ '())
                                     (_body147240_ '()))
                      (let* ((_e147241147248_ _rest147237_)
                             (_E147243147297_
                              (lambda ()
                                (let* ((_body147292_
                                        (let* ((_body147251147261_
                                                _body147240_)
                                               (_else147254147269_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body147240_)
                                                   (gx#stx-source
                                                    _stx147225_)))))
                                          (let ((_K147259147289_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx147225_)))
                                                (_K147256147275_
                                                 (lambda (_expr147273_)
                                                   _expr147273_)))
                                            (let ((_try-match147253147285_
                                                   (lambda ()
                                                     (if (##pair? _body147251147261_)
                                                         (let ((_tl147258147280_
                                                                (##cdr _body147251147261_))
                                                               (_hd147257147278_
                                                                (##car _body147251147261_)))
                                                           (if (##null? _tl147258147280_)
                                                               (let ((_expr147283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147257147278_))
                         (_K147256147275_ _expr147283_))
                       (_else147254147269_)))
                 (_else147254147269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body147251147261_)
                                                  (_K147259147289_)
                                                  (_try-match147253147285_))))))
                                       (_body147294_
                                        (if (null? _bind147239_)
                                            _body147292_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind147239_
                                                         (cons _body147292_
                                                               '())))
                                             (gx#stx-source _stx147225_)))))
                                  (if (null? _decls147238_)
                                      _body147294_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls147238_
                                                   (cons _body147294_ '())))
                                       (gx#stx-source _stx147225_))))))
                             (_E147242147383_
                              (lambda ()
                                (if (gx#stx-pair? _e147241147248_)
                                    (let ((_e147244147301_
                                           (gx#syntax-e _e147241147248_)))
                                      (let ((_hd147245147304_
                                             (##car _e147244147301_))
                                            (_tl147246147306_
                                             (##cdr _e147244147301_)))
                                        (let* ((_hd147309_ _hd147245147304_)
                                               (_rest147311_ _tl147246147306_))
                                          (if '#t
                                              (let* ((_e147312147329_
                                                      _hd147309_)
                                                     (_E147324147333_
                                                      (lambda ()
                                                        (if (null? _bind147239_)
                                                            (_lp147235_
                                                             _rest147311_
                                                             _decls147238_
                                                             _bind147239_
                                                             (cons _hd147309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body147240_))
                    (_lp147235_
                     _rest147311_
                     _decls147238_
                     (cons (cons '#f (cons _hd147309_ '())) _bind147239_)
                     _body147240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147314147347_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147312147329_)
                                                            (let ((_e147325147337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147312147329_)))
                      (let ((_hd147326147340_ (##car _e147325147337_))
                            (_tl147327147342_ (##cdr _e147325147337_)))
                        (if (and (gx#identifier? _hd147326147340_)
                                 (gx#core-identifier=?
                                  _hd147326147340_
                                  '%#declare))
                            (let ((_xdecls147345_ _tl147327147342_))
                              (if '#t
                                  (_lp147235_
                                   _rest147311_
                                   (gx#stx-foldr
                                    cons
                                    _decls147238_
                                    _xdecls147345_)
                                   _bind147239_
                                   _body147240_)
                                  (_E147324147333_)))
                            (_E147324147333_))))
                    (_E147324147333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147313147379_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147312147329_)
                                                            (let ((_e147315147351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147312147329_)))
                      (let ((_hd147316147354_ (##car _e147315147351_))
                            (_tl147317147356_ (##cdr _e147315147351_)))
                        (if (and (gx#identifier? _hd147316147354_)
                                 (gx#core-identifier=?
                                  _hd147316147354_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl147317147356_)
                                (let ((_e147318147359_
                                       (gx#syntax-e _tl147317147356_)))
                                  (let ((_hd147319147362_
                                         (##car _e147318147359_))
                                        (_tl147320147364_
                                         (##cdr _e147318147359_)))
                                    (let ((_hd-bind147367_ _hd147319147362_))
                                      (if (gx#stx-pair? _tl147320147364_)
                                          (let ((_e147321147369_
                                                 (gx#syntax-e
                                                  _tl147320147364_)))
                                            (let ((_hd147322147372_
                                                   (##car _e147321147369_))
                                                  (_tl147323147374_
                                                   (##cdr _e147321147369_)))
                                              (let ((_expr147377_
                                                     _hd147322147372_))
                                                (if (gx#stx-null?
                                                     _tl147323147374_)
                                                    (if '#t
                                                        (_lp147235_
                                                         _rest147311_
                                                         _decls147238_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind147367_)
                             (cons (gx#core-expand-expression _expr147377_)
                                   '()))
                       _bind147239_)
                 _body147240_)
                (_E147314147347_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E147314147347_)))))
                                          (_E147314147347_)))))
                                (_E147314147347_))
                            (_E147314147347_))))
                    (_E147314147347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147313147379_))
                                              (_E147243147297_)))))
                                    (_E147243147297_)))))
                        (_E147242147383_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body147226_)
            (gx#stx-source _stx147225_))
           _expand-special147228_))))
    (define gx#core-expand-declare%
      (lambda (_stx147163_)
        (let* ((_e147164147171_ _stx147163_)
               (_E147166147175_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147164147171_)))
               (_E147165147221_
                (lambda ()
                  (if (gx#stx-pair? _e147164147171_)
                      (let ((_e147167147179_ (gx#syntax-e _e147164147171_)))
                        (let ((_hd147168147182_ (##car _e147167147179_))
                              (_tl147169147184_ (##cdr _e147167147179_)))
                          (let ((_body147187_ _tl147169147184_))
                            (if (gx#stx-list? _body147187_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl147189_)
                                     (let* ((_e147190147197_ _decl147189_)
                                            (_E147192147201_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e147190147197_)))
                                            (_E147191147217_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e147190147197_)
                                                   (let ((_e147193147205_
                                                          (gx#syntax-e
                                                           _e147190147197_)))
                                                     (let ((_hd147194147208_
                                                            (##car _e147193147205_))
                                                           (_tl147195147210_
                                                            (##cdr _e147193147205_)))
                                                       (let* ((_head147213_
                                                               _hd147194147208_)
                                                              (_args147215_
                                                               _tl147195147210_))
                                                         (if (gx#stx-list?
                                                              _args147215_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl147189_)
                                                             (_E147192147201_)))))
                                                   (_E147192147201_)))))
                                       (_E147191147217_)))
                                   _body147187_))
                                 (gx#stx-source _stx147163_))
                                (_E147166147175_)))))
                      (_E147166147175_)))))
          (_E147165147221_))))
    (define gx#core-expand-extern%
      (lambda (_stx147067_)
        (let* ((_e147068147075_ _stx147067_)
               (_E147070147079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147068147075_)))
               (_E147069147159_
                (lambda ()
                  (if (gx#stx-pair? _e147068147075_)
                      (let ((_e147071147083_ (gx#syntax-e _e147068147075_)))
                        (let ((_hd147072147086_ (##car _e147071147083_))
                              (_tl147073147088_ (##cdr _e147071147083_)))
                          (let ((_body147091_ _tl147073147088_))
                            (if '#t
                                (let _lp147093_ ((_rest147095_ _body147091_)
                                                 (_r147096_ '()))
                                  (let* ((_e147097147111_ _rest147095_)
                                         (_E147109147115_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx147067_)))
                                         (_E147099147119_
                                          (lambda ()
                                            (if (gx#stx-null? _e147097147111_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r147096_))
                                                     (gx#stx-source
                                                      _stx147067_))
                                                    (_E147109147115_))
                                                (_E147109147115_))))
                                         (_E147098147155_
                                          (lambda ()
                                            (if (gx#stx-pair? _e147097147111_)
                                                (let ((_e147100147123_
                                                       (gx#syntax-e
                                                        _e147097147111_)))
                                                  (let ((_hd147101147126_
                                                         (##car _e147100147123_))
                                                        (_tl147102147128_
                                                         (##cdr _e147100147123_)))
                                                    (if (gx#stx-pair?
                                                         _hd147101147126_)
                                                        (let ((_e147103147131_
                                                               (gx#syntax-e
                                                                _hd147101147126_)))
                                                          (let ((_hd147104147134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147103147131_))
                        (_tl147105147136_ (##cdr _e147103147131_)))
                    (let ((_id147139_ _hd147104147134_))
                      (if (gx#stx-pair? _tl147105147136_)
                          (let ((_e147106147141_
                                 (gx#syntax-e _tl147105147136_)))
                            (let ((_hd147107147144_ (##car _e147106147141_))
                                  (_tl147108147146_ (##cdr _e147106147141_)))
                              (let ((_eid147149_ _hd147107147144_))
                                (if (gx#stx-null? _tl147108147146_)
                                    (let ((_rest147151_ _tl147102147128_))
                                      (if (and (gx#identifier? _id147139_)
                                               (gx#identifier? _eid147149_))
                                          (let ((_eid147153_
                                                 (gx#stx-e _eid147149_)))
                                            (gx#core-bind-extern!__0
                                             _id147139_
                                             _eid147153_)
                                            (_lp147093_
                                             _rest147151_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id147139_)
                                                         (cons _eid147153_
                                                               '()))
                                                   _r147096_)))
                                          (_E147099147119_)))
                                    (_E147099147119_)))))
                          (_E147099147119_)))))
                (_E147099147119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147099147119_)))))
                                    (_E147098147155_)))
                                (_E147070147079_)))))
                      (_E147070147079_)))))
          (_E147069147159_))))
    (define gx#core-expand-define-values%
      (lambda (_stx147013_)
        (let* ((_e147014147027_ _stx147013_)
               (_E147016147031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147014147027_)))
               (_E147015147063_
                (lambda ()
                  (if (gx#stx-pair? _e147014147027_)
                      (let ((_e147017147035_ (gx#syntax-e _e147014147027_)))
                        (let ((_hd147018147038_ (##car _e147017147035_))
                              (_tl147019147040_ (##cdr _e147017147035_)))
                          (if (gx#stx-pair? _tl147019147040_)
                              (let ((_e147020147043_
                                     (gx#syntax-e _tl147019147040_)))
                                (let ((_hd147021147046_
                                       (##car _e147020147043_))
                                      (_tl147022147048_
                                       (##cdr _e147020147043_)))
                                  (let ((_hd147051_ _hd147021147046_))
                                    (if (gx#stx-pair? _tl147022147048_)
                                        (let ((_e147023147053_
                                               (gx#syntax-e _tl147022147048_)))
                                          (let ((_hd147024147056_
                                                 (##car _e147023147053_))
                                                (_tl147025147058_
                                                 (##cdr _e147023147053_)))
                                            (let ((_expr147061_
                                                   _hd147024147056_))
                                              (if (gx#stx-null?
                                                   _tl147025147058_)
                                                  (if (gx#core-bind-values?
                                                       _hd147051_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd147051_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147051_)
                             (cons (gx#core-expand-expression _expr147061_)
                                   '())))
                 (gx#stx-source _stx147013_)))
              (_E147016147031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147016147031_)))))
                                        (_E147016147031_)))))
                              (_E147016147031_))))
                      (_E147016147031_)))))
          (_E147015147063_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx146957_)
        (let* ((_e146958146971_ _stx146957_)
               (_E146960146975_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146958146971_)))
               (_E146959147009_
                (lambda ()
                  (if (gx#stx-pair? _e146958146971_)
                      (let ((_e146961146979_ (gx#syntax-e _e146958146971_)))
                        (let ((_hd146962146982_ (##car _e146961146979_))
                              (_tl146963146984_ (##cdr _e146961146979_)))
                          (if (gx#stx-pair? _tl146963146984_)
                              (let ((_e146964146987_
                                     (gx#syntax-e _tl146963146984_)))
                                (let ((_hd146965146990_
                                       (##car _e146964146987_))
                                      (_tl146966146992_
                                       (##cdr _e146964146987_)))
                                  (let ((_id146995_ _hd146965146990_))
                                    (if (gx#stx-pair? _tl146966146992_)
                                        (let ((_e146967146997_
                                               (gx#syntax-e _tl146966146992_)))
                                          (let ((_hd146968147000_
                                                 (##car _e146967146997_))
                                                (_tl146969147002_
                                                 (##cdr _e146967146997_)))
                                            (let ((_binding-id147005_
                                                   _hd146968147000_))
                                              (if (gx#stx-null?
                                                   _tl146969147002_)
                                                  (if (and (gx#identifier?
                                                            _id146995_)
                                                           (gx#identifier?
                                                            _binding-id147005_))
                                                      (let ((_eid147007_
                                                             (gx#stx-e
                                                              _binding-id147005_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id146995_
                                                         _eid147007_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146995_)
                             (cons _eid147007_ '())))))
              (_E146960146975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146960146975_)))))
                                        (_E146960146975_)))))
                              (_E146960146975_))))
                      (_E146960146975_)))))
          (_E146959147009_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx146900_)
        (let* ((_e146901146914_ _stx146900_)
               (_E146903146918_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146901146914_)))
               (_E146902146953_
                (lambda ()
                  (if (gx#stx-pair? _e146901146914_)
                      (let ((_e146904146922_ (gx#syntax-e _e146901146914_)))
                        (let ((_hd146905146925_ (##car _e146904146922_))
                              (_tl146906146927_ (##cdr _e146904146922_)))
                          (if (gx#stx-pair? _tl146906146927_)
                              (let ((_e146907146930_
                                     (gx#syntax-e _tl146906146927_)))
                                (let ((_hd146908146933_
                                       (##car _e146907146930_))
                                      (_tl146909146935_
                                       (##cdr _e146907146930_)))
                                  (let ((_id146938_ _hd146908146933_))
                                    (if (gx#stx-pair? _tl146909146935_)
                                        (let ((_e146910146940_
                                               (gx#syntax-e _tl146909146935_)))
                                          (let ((_hd146911146943_
                                                 (##car _e146910146940_))
                                                (_tl146912146945_
                                                 (##cdr _e146910146940_)))
                                            (let ((_expr146948_
                                                   _hd146911146943_))
                                              (if (gx#stx-null?
                                                   _tl146912146945_)
                                                  (if (gx#identifier?
                                                       _id146938_)
                                                      (let ((_g152053_
                                                             (gx#core-expand-expression+1
                                                              _expr146948_)))
                                                        (begin
                                                          (let ((_g152054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g152053_)
                             (##vector-length _g152053_)
                             1)))
                    (if (not (##fx= _g152054_ 2))
                        (error "Context expects 2 values" _g152054_)))
                  (let ((_e-stx146950_ (##vector-ref _g152053_ 0))
                        (_e146951_ (##vector-ref _g152053_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id146938_ _e146951_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id146938_)
                                   (cons _e-stx146950_ '())))
                       (gx#stx-source _stx146900_))))))
              (_E146903146918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146903146918_)))))
                                        (_E146903146918_)))))
                              (_E146903146918_))))
                      (_E146903146918_)))))
          (_E146902146953_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx146844_)
        (let* ((_e146845146858_ _stx146844_)
               (_E146847146862_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146845146858_)))
               (_E146846146896_
                (lambda ()
                  (if (gx#stx-pair? _e146845146858_)
                      (let ((_e146848146866_ (gx#syntax-e _e146845146858_)))
                        (let ((_hd146849146869_ (##car _e146848146866_))
                              (_tl146850146871_ (##cdr _e146848146866_)))
                          (if (gx#stx-pair? _tl146850146871_)
                              (let ((_e146851146874_
                                     (gx#syntax-e _tl146850146871_)))
                                (let ((_hd146852146877_
                                       (##car _e146851146874_))
                                      (_tl146853146879_
                                       (##cdr _e146851146874_)))
                                  (let ((_id146882_ _hd146852146877_))
                                    (if (gx#stx-pair? _tl146853146879_)
                                        (let ((_e146854146884_
                                               (gx#syntax-e _tl146853146879_)))
                                          (let ((_hd146855146887_
                                                 (##car _e146854146884_))
                                                (_tl146856146889_
                                                 (##cdr _e146854146884_)))
                                            (let ((_alias-id146892_
                                                   _hd146855146887_))
                                              (if (gx#stx-null?
                                                   _tl146856146889_)
                                                  (if (and (gx#identifier?
                                                            _id146882_)
                                                           (gx#identifier?
                                                            _alias-id146892_))
                                                      (let ((_alias-id146894_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id146892_)))
                                                        (gx#core-bind-alias!__0
                                                         _id146882_
                                                         _alias-id146894_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146882_)
                             (cons _alias-id146894_ '())))))
              (_E146847146862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146847146862_)))))
                                        (_E146847146862_)))))
                              (_E146847146862_))))
                      (_E146847146862_)))))
          (_E146846146896_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx146787_ _wrap?146788_)
        (let* ((_e146789146799_ _stx146787_)
               (_E146791146803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146789146799_)))
               (_E146790146830_
                (lambda ()
                  (if (gx#stx-pair? _e146789146799_)
                      (let ((_e146792146807_ (gx#syntax-e _e146789146799_)))
                        (let ((_hd146793146810_ (##car _e146792146807_))
                              (_tl146794146812_ (##cdr _e146792146807_)))
                          (if (gx#stx-pair? _tl146794146812_)
                              (let ((_e146795146815_
                                     (gx#syntax-e _tl146794146812_)))
                                (let ((_hd146796146818_
                                       (##car _e146795146815_))
                                      (_tl146797146820_
                                       (##cdr _e146795146815_)))
                                  (let* ((_hd146823_ _hd146796146818_)
                                         (_body146825_ _tl146797146820_))
                                    (if (gx#core-bind-values? _hd146823_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd146823_)
                                           (let ((_body146828_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd146823_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx146787_
                                                               _body146825_)
                                                              '()))))
                                             (if _wrap?146788_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body146828_)
                                                  (gx#stx-source _stx146787_))
                                                 _body146828_)))
                                         gx#current-expander-context
                                         (let ((__obj152046
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152046)
                                           __obj152046))
                                        (_E146791146803_)))))
                              (_E146791146803_))))
                      (_E146791146803_)))))
          (_E146790146830_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx146837_)
        (let ((_wrap?146839_ '#t))
          (gx#core-expand-lambda%__% _stx146837_ _wrap?146839_))))
    (define gx#core-expand-lambda%
      (lambda _g152056_
        (let ((_g152055_ (##length _g152056_)))
          (cond ((##fx= _g152055_ 1)
                 (apply (lambda (_stx146837_)
                          (gx#core-expand-lambda%__0 _stx146837_))
                        _g152056_))
                ((##fx= _g152055_ 2)
                 (apply (lambda (_stx146841_ _wrap?146842_)
                          (gx#core-expand-lambda%__%
                           _stx146841_
                           _wrap?146842_))
                        _g152056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g152056_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx146751_)
        (let* ((_e146752146759_ _stx146751_)
               (_E146754146763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146752146759_)))
               (_E146753146782_
                (lambda ()
                  (if (gx#stx-pair? _e146752146759_)
                      (let ((_e146755146767_ (gx#syntax-e _e146752146759_)))
                        (let ((_hd146756146770_ (##car _e146755146767_))
                              (_tl146757146772_ (##cdr _e146755146767_)))
                          (let ((_clauses146775_ _tl146757146772_))
                            (if (gx#stx-list? _clauses146775_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause146777_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause146777_)
                                       (let ((_$e146779_
                                              (gx#stx-source _clause146777_)))
                                         (if _$e146779_
                                             _$e146779_
                                             (gx#stx-source _stx146751_))))
                                      '#f))
                                   _clauses146775_))
                                 (gx#stx-source _stx146751_))
                                (_E146754146763_)))))
                      (_E146754146763_)))))
          (_E146753146782_))))
    (define gx#core-expand-let-values%
      (lambda (_stx146705_)
        (let* ((_e146706146716_ _stx146705_)
               (_E146708146720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146706146716_)))
               (_E146707146747_
                (lambda ()
                  (if (gx#stx-pair? _e146706146716_)
                      (let ((_e146709146724_ (gx#syntax-e _e146706146716_)))
                        (let ((_hd146710146727_ (##car _e146709146724_))
                              (_tl146711146729_ (##cdr _e146709146724_)))
                          (if (gx#stx-pair? _tl146711146729_)
                              (let ((_e146712146732_
                                     (gx#syntax-e _tl146711146729_)))
                                (let ((_hd146713146735_
                                       (##car _e146712146732_))
                                      (_tl146714146737_
                                       (##cdr _e146712146732_)))
                                  (let* ((_hd146740_ _hd146713146735_)
                                         (_body146742_ _tl146714146737_))
                                    (if (gx#core-expand-let-bind? _hd146740_)
                                        (let ((_expressions146744_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd146740_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd146740_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd146740_
                                                           _expressions146744_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx146705_
                         _body146742_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx146705_)))
                                           gx#current-expander-context
                                           (let ((__obj152047
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152047)
                                             __obj152047)))
                                        (_E146708146720_)))))
                              (_E146708146720_))))
                      (_E146708146720_)))))
          (_E146707146747_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx146650_ _form146651_)
        (let* ((_e146652146662_ _stx146650_)
               (_E146654146666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146652146662_)))
               (_E146653146691_
                (lambda ()
                  (if (gx#stx-pair? _e146652146662_)
                      (let ((_e146655146670_ (gx#syntax-e _e146652146662_)))
                        (let ((_hd146656146673_ (##car _e146655146670_))
                              (_tl146657146675_ (##cdr _e146655146670_)))
                          (if (gx#stx-pair? _tl146657146675_)
                              (let ((_e146658146678_
                                     (gx#syntax-e _tl146657146675_)))
                                (let ((_hd146659146681_
                                       (##car _e146658146678_))
                                      (_tl146660146683_
                                       (##cdr _e146658146678_)))
                                  (let* ((_hd146686_ _hd146659146681_)
                                         (_body146688_ _tl146660146683_))
                                    (if (gx#core-expand-let-bind? _hd146686_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd146686_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form146651_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd146686_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd146686_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx146650_
                                                               _body146688_)
                                                              '())))
                                            (gx#stx-source _stx146650_)))
                                         gx#current-expander-context
                                         (let ((__obj152048
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152048)
                                           __obj152048))
                                        (_E146654146666_)))))
                              (_E146654146666_))))
                      (_E146654146666_)))))
          (_E146653146691_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx146698_)
        (let ((_form146700_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx146698_ _form146700_))))
    (define gx#core-expand-letrec-values%
      (lambda _g152058_
        (let ((_g152057_ (##length _g152058_)))
          (cond ((##fx= _g152057_ 1)
                 (apply (lambda (_stx146698_)
                          (gx#core-expand-letrec-values%__0 _stx146698_))
                        _g152058_))
                ((##fx= _g152057_ 2)
                 (apply (lambda (_stx146702_ _form146703_)
                          (gx#core-expand-letrec-values%__%
                           _stx146702_
                           _form146703_))
                        _g152058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g152058_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx146647_)
        (gx#core-expand-letrec-values%__% _stx146647_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx146604_)
        (if (gx#stx-list? _stx146604_)
            (gx#stx-andmap
             (lambda (_bind146606_)
               (let* ((_e146607146617_ _bind146606_)
                      (_E146609146621_ (lambda () '#f))
                      (_E146608146643_
                       (lambda ()
                         (if (gx#stx-pair? _e146607146617_)
                             (let ((_e146610146625_
                                    (gx#syntax-e _e146607146617_)))
                               (let ((_hd146611146628_ (##car _e146610146625_))
                                     (_tl146612146630_
                                      (##cdr _e146610146625_)))
                                 (let ((_hd146633_ _hd146611146628_))
                                   (if (gx#stx-pair? _tl146612146630_)
                                       (let ((_e146613146635_
                                              (gx#syntax-e _tl146612146630_)))
                                         (let ((_hd146614146638_
                                                (##car _e146613146635_))
                                               (_tl146615146640_
                                                (##cdr _e146613146635_)))
                                           (if (gx#stx-null? _tl146615146640_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd146633_)
                                                   (_E146609146621_))
                                               (_E146609146621_))))
                                       (_E146609146621_)))))
                             (_E146609146621_)))))
                 (_E146608146643_)))
             _stx146604_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind146563_)
        (let* ((_e146564146574_ _bind146563_)
               (_E146566146578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146564146574_)))
               (_E146565146600_
                (lambda ()
                  (if (gx#stx-pair? _e146564146574_)
                      (let ((_e146567146582_ (gx#syntax-e _e146564146574_)))
                        (let ((_hd146568146585_ (##car _e146567146582_))
                              (_tl146569146587_ (##cdr _e146567146582_)))
                          (if (gx#stx-pair? _tl146569146587_)
                              (let ((_e146570146590_
                                     (gx#syntax-e _tl146569146587_)))
                                (let ((_hd146571146593_
                                       (##car _e146570146590_))
                                      (_tl146572146595_
                                       (##cdr _e146570146590_)))
                                  (let ((_expr146598_ _hd146571146593_))
                                    (if (gx#stx-null? _tl146572146595_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146598_)
                                            (_E146566146578_))
                                        (_E146566146578_)))))
                              (_E146566146578_))))
                      (_E146566146578_)))))
          (_E146565146600_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind146522_)
        (let* ((_e146523146533_ _bind146522_)
               (_E146525146537_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146523146533_)))
               (_E146524146559_
                (lambda ()
                  (if (gx#stx-pair? _e146523146533_)
                      (let ((_e146526146541_ (gx#syntax-e _e146523146533_)))
                        (let ((_hd146527146544_ (##car _e146526146541_))
                              (_tl146528146546_ (##cdr _e146526146541_)))
                          (let ((_hd146549_ _hd146527146544_))
                            (if (gx#stx-pair? _tl146528146546_)
                                (let ((_e146529146551_
                                       (gx#syntax-e _tl146528146546_)))
                                  (let ((_hd146530146554_
                                         (##car _e146529146551_))
                                        (_tl146531146556_
                                         (##cdr _e146529146551_)))
                                    (if (gx#stx-null? _tl146531146556_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd146549_)
                                            (_E146525146537_))
                                        (_E146525146537_))))
                                (_E146525146537_)))))
                      (_E146525146537_)))))
          (_E146524146559_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind146480_ _expr146481_)
        (let* ((_e146482146492_ _bind146480_)
               (_E146484146496_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146482146492_)))
               (_E146483146518_
                (lambda ()
                  (if (gx#stx-pair? _e146482146492_)
                      (let ((_e146485146500_ (gx#syntax-e _e146482146492_)))
                        (let ((_hd146486146503_ (##car _e146485146500_))
                              (_tl146487146505_ (##cdr _e146485146500_)))
                          (let ((_hd146508_ _hd146486146503_))
                            (if (gx#stx-pair? _tl146487146505_)
                                (let ((_e146488146510_
                                       (gx#syntax-e _tl146487146505_)))
                                  (let ((_hd146489146513_
                                         (##car _e146488146510_))
                                        (_tl146490146515_
                                         (##cdr _e146488146510_)))
                                    (if (gx#stx-null? _tl146490146515_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd146508_)
                                                  (cons _expr146481_ '()))
                                            (_E146484146496_))
                                        (_E146484146496_))))
                                (_E146484146496_)))))
                      (_E146484146496_)))))
          (_E146483146518_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx146434_)
        (let* ((_e146435146445_ _stx146434_)
               (_E146437146449_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146435146445_)))
               (_E146436146476_
                (lambda ()
                  (if (gx#stx-pair? _e146435146445_)
                      (let ((_e146438146453_ (gx#syntax-e _e146435146445_)))
                        (let ((_hd146439146456_ (##car _e146438146453_))
                              (_tl146440146458_ (##cdr _e146438146453_)))
                          (if (gx#stx-pair? _tl146440146458_)
                              (let ((_e146441146461_
                                     (gx#syntax-e _tl146440146458_)))
                                (let ((_hd146442146464_
                                       (##car _e146441146461_))
                                      (_tl146443146466_
                                       (##cdr _e146441146461_)))
                                  (let* ((_hd146469_ _hd146442146464_)
                                         (_body146471_ _tl146443146466_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146469_)
                                        (let ((_expanders146473_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd146469_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd146469_
                                              _expanders146473_)
                                             (gx#core-expand-local-block
                                              _stx146434_
                                              _body146471_))
                                           gx#current-expander-context
                                           (let ((__obj152049
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152049)
                                             __obj152049)))
                                        (_E146437146449_)))))
                              (_E146437146449_))))
                      (_E146437146449_)))))
          (_E146436146476_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx146383_)
        (let* ((_e146384146394_ _stx146383_)
               (_E146386146398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146384146394_)))
               (_E146385146430_
                (lambda ()
                  (if (gx#stx-pair? _e146384146394_)
                      (let ((_e146387146402_ (gx#syntax-e _e146384146394_)))
                        (let ((_hd146388146405_ (##car _e146387146402_))
                              (_tl146389146407_ (##cdr _e146387146402_)))
                          (if (gx#stx-pair? _tl146389146407_)
                              (let ((_e146390146410_
                                     (gx#syntax-e _tl146389146407_)))
                                (let ((_hd146391146413_
                                       (##car _e146390146410_))
                                      (_tl146392146415_
                                       (##cdr _e146390146410_)))
                                  (let* ((_hd146418_ _hd146391146413_)
                                         (_body146420_ _tl146392146415_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146418_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd146418_
                                            (make-list
                                             (gx#stx-length _hd146418_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g146422146425_
                                                     _g146423146427_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g146422146425_
                                               _g146423146427_
                                               '#t))
                                            _hd146418_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd146418_))
                                           (gx#core-expand-local-block
                                            _stx146383_
                                            _body146420_))
                                         gx#current-expander-context
                                         (let ((__obj152050
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152050)
                                           __obj152050))
                                        (_E146386146398_)))))
                              (_E146386146398_))))
                      (_E146386146398_)))))
          (_E146385146430_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx146340_)
        (if (gx#stx-list? _stx146340_)
            (gx#stx-andmap
             (lambda (_bind146342_)
               (let* ((_e146343146353_ _bind146342_)
                      (_E146345146357_ (lambda () '#f))
                      (_E146344146379_
                       (lambda ()
                         (if (gx#stx-pair? _e146343146353_)
                             (let ((_e146346146361_
                                    (gx#syntax-e _e146343146353_)))
                               (let ((_hd146347146364_ (##car _e146346146361_))
                                     (_tl146348146366_
                                      (##cdr _e146346146361_)))
                                 (let ((_hd146369_ _hd146347146364_))
                                   (if (gx#stx-pair? _tl146348146366_)
                                       (let ((_e146349146371_
                                              (gx#syntax-e _tl146348146366_)))
                                         (let ((_hd146350146374_
                                                (##car _e146349146371_))
                                               (_tl146351146376_
                                                (##cdr _e146349146371_)))
                                           (if (gx#stx-null? _tl146351146376_)
                                               (if '#t
                                                   (gx#identifier? _hd146369_)
                                                   (_E146345146357_))
                                               (_E146345146357_))))
                                       (_E146345146357_)))))
                             (_E146345146357_)))))
                 (_E146344146379_)))
             _stx146340_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind146297_)
        (let* ((_e146298146308_ _bind146297_)
               (_E146300146312_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146298146308_)))
               (_E146299146336_
                (lambda ()
                  (if (gx#stx-pair? _e146298146308_)
                      (let ((_e146301146316_ (gx#syntax-e _e146298146308_)))
                        (let ((_hd146302146319_ (##car _e146301146316_))
                              (_tl146303146321_ (##cdr _e146301146316_)))
                          (if (gx#stx-pair? _tl146303146321_)
                              (let ((_e146304146324_
                                     (gx#syntax-e _tl146303146321_)))
                                (let ((_hd146305146327_
                                       (##car _e146304146324_))
                                      (_tl146306146329_
                                       (##cdr _e146304146324_)))
                                  (let ((_expr146332_ _hd146305146327_))
                                    (if (gx#stx-null? _tl146306146329_)
                                        (if '#t
                                            (let ((_g152059_
                                                   (gx#core-expand-expression+1
                                                    _expr146332_)))
                                              (begin
                                                (let ((_g152060_
                                                       (if (##values?
                                                            _g152059_)
                                                           (##vector-length
                                                            _g152059_)
                                                           1)))
                                                  (if (not (##fx= _g152060_ 2))
                                                      (error "Context expects 2 values"
                                                             _g152060_)))
                                                (let ((_e146334_
                                                       (##vector-ref
                                                        _g152059_
                                                        1)))
                                                  _e146334_)))
                                            (_E146300146312_))
                                        (_E146300146312_)))))
                              (_E146300146312_))))
                      (_E146300146312_)))))
          (_E146299146336_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind146242_ _e146243_ _rebind?146244_)
        (let* ((_e146245146255_ _bind146242_)
               (_E146247146259_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146245146255_)))
               (_E146246146281_
                (lambda ()
                  (if (gx#stx-pair? _e146245146255_)
                      (let ((_e146248146263_ (gx#syntax-e _e146245146255_)))
                        (let ((_hd146249146266_ (##car _e146248146263_))
                              (_tl146250146268_ (##cdr _e146248146263_)))
                          (let ((_id146271_ _hd146249146266_))
                            (if (gx#stx-pair? _tl146250146268_)
                                (let ((_e146251146273_
                                       (gx#syntax-e _tl146250146268_)))
                                  (let ((_hd146252146276_
                                         (##car _e146251146273_))
                                        (_tl146253146278_
                                         (##cdr _e146251146273_)))
                                    (if (gx#stx-null? _tl146253146278_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id146271_
                                             _e146243_
                                             _rebind?146244_)
                                            (_E146247146259_))
                                        (_E146247146259_))))
                                (_E146247146259_)))))
                      (_E146247146259_)))))
          (_E146246146281_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind146288_ _e146289_)
        (let ((_rebind?146291_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind146288_
           _e146289_
           _rebind?146291_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g152062_
        (let ((_g152061_ (##length _g152062_)))
          (cond ((##fx= _g152061_ 2)
                 (apply (lambda (_bind146288_ _e146289_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind146288_
                           _e146289_))
                        _g152062_))
                ((##fx= _g152061_ 3)
                 (apply (lambda (_bind146293_ _e146294_ _rebind?146295_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind146293_
                           _e146294_
                           _rebind?146295_))
                        _g152062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g152062_))))))
    (define gx#core-expand-expression%
      (lambda (_stx146200_)
        (let* ((_e146201146211_ _stx146200_)
               (_E146203146215_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146201146211_)))
               (_E146202146237_
                (lambda ()
                  (if (gx#stx-pair? _e146201146211_)
                      (let ((_e146204146219_ (gx#syntax-e _e146201146211_)))
                        (let ((_hd146205146222_ (##car _e146204146219_))
                              (_tl146206146224_ (##cdr _e146204146219_)))
                          (if (gx#stx-pair? _tl146206146224_)
                              (let ((_e146207146227_
                                     (gx#syntax-e _tl146206146224_)))
                                (let ((_hd146208146230_
                                       (##car _e146207146227_))
                                      (_tl146209146232_
                                       (##cdr _e146207146227_)))
                                  (let ((_expr146235_ _hd146208146230_))
                                    (if (gx#stx-null? _tl146209146232_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146235_)
                                            (_E146203146215_))
                                        (_E146203146215_)))))
                              (_E146203146215_))))
                      (_E146203146215_)))))
          (_E146202146237_))))
    (define gx#core-expand-quote%
      (lambda (_stx146159_)
        (let* ((_e146160146170_ _stx146159_)
               (_E146162146174_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146160146170_)))
               (_E146161146196_
                (lambda ()
                  (if (gx#stx-pair? _e146160146170_)
                      (let ((_e146163146178_ (gx#syntax-e _e146160146170_)))
                        (let ((_hd146164146181_ (##car _e146163146178_))
                              (_tl146165146183_ (##cdr _e146163146178_)))
                          (if (gx#stx-pair? _tl146165146183_)
                              (let ((_e146166146186_
                                     (gx#syntax-e _tl146165146183_)))
                                (let ((_hd146167146189_
                                       (##car _e146166146186_))
                                      (_tl146168146191_
                                       (##cdr _e146166146186_)))
                                  (let ((_e146194_ _hd146167146189_))
                                    (if (gx#stx-null? _tl146168146191_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e146194_)
                                                         '()))
                                             (gx#stx-source _stx146159_))
                                            (_E146162146174_))
                                        (_E146162146174_)))))
                              (_E146162146174_))))
                      (_E146162146174_)))))
          (_E146161146196_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx146118_)
        (let* ((_e146119146129_ _stx146118_)
               (_E146121146133_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146119146129_)))
               (_E146120146155_
                (lambda ()
                  (if (gx#stx-pair? _e146119146129_)
                      (let ((_e146122146137_ (gx#syntax-e _e146119146129_)))
                        (let ((_hd146123146140_ (##car _e146122146137_))
                              (_tl146124146142_ (##cdr _e146122146137_)))
                          (if (gx#stx-pair? _tl146124146142_)
                              (let ((_e146125146145_
                                     (gx#syntax-e _tl146124146142_)))
                                (let ((_hd146126146148_
                                       (##car _e146125146145_))
                                      (_tl146127146150_
                                       (##cdr _e146125146145_)))
                                  (let ((_e146153_ _hd146126146148_))
                                    (if (gx#stx-null? _tl146127146150_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e146153_)
                                                         '()))
                                             (gx#stx-source _stx146118_))
                                            (_E146121146133_))
                                        (_E146121146133_)))))
                              (_E146121146133_))))
                      (_E146121146133_)))))
          (_E146120146155_))))
    (define gx#core-expand-call%
      (lambda (_stx146075_)
        (let* ((_e146076146086_ _stx146075_)
               (_E146078146090_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146076146086_)))
               (_E146077146114_
                (lambda ()
                  (if (gx#stx-pair? _e146076146086_)
                      (let ((_e146079146094_ (gx#syntax-e _e146076146086_)))
                        (let ((_hd146080146097_ (##car _e146079146094_))
                              (_tl146081146099_ (##cdr _e146079146094_)))
                          (if (gx#stx-pair? _tl146081146099_)
                              (let ((_e146082146102_
                                     (gx#syntax-e _tl146081146099_)))
                                (let ((_hd146083146105_
                                       (##car _e146082146102_))
                                      (_tl146084146107_
                                       (##cdr _e146082146102_)))
                                  (let* ((_rator146110_ _hd146083146105_)
                                         (_args146112_ _tl146084146107_))
                                    (if (gx#stx-list? _args146112_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator146110_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args146112_))
                                         (gx#stx-source _stx146075_))
                                        (_E146078146090_)))))
                              (_E146078146090_))))
                      (_E146078146090_)))))
          (_E146077146114_))))
    (define gx#core-expand-if%
      (lambda (_stx146008_)
        (let* ((_e146009146025_ _stx146008_)
               (_E146011146029_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146009146025_)))
               (_E146010146071_
                (lambda ()
                  (if (gx#stx-pair? _e146009146025_)
                      (let ((_e146012146033_ (gx#syntax-e _e146009146025_)))
                        (let ((_hd146013146036_ (##car _e146012146033_))
                              (_tl146014146038_ (##cdr _e146012146033_)))
                          (if (gx#stx-pair? _tl146014146038_)
                              (let ((_e146015146041_
                                     (gx#syntax-e _tl146014146038_)))
                                (let ((_hd146016146044_
                                       (##car _e146015146041_))
                                      (_tl146017146046_
                                       (##cdr _e146015146041_)))
                                  (let ((_test146049_ _hd146016146044_))
                                    (if (gx#stx-pair? _tl146017146046_)
                                        (let ((_e146018146051_
                                               (gx#syntax-e _tl146017146046_)))
                                          (let ((_hd146019146054_
                                                 (##car _e146018146051_))
                                                (_tl146020146056_
                                                 (##cdr _e146018146051_)))
                                            (let ((_K146059_ _hd146019146054_))
                                              (if (gx#stx-pair?
                                                   _tl146020146056_)
                                                  (let ((_e146021146061_
                                                         (gx#syntax-e
                                                          _tl146020146056_)))
                                                    (let ((_hd146022146064_
                                                           (##car _e146021146061_))
                                                          (_tl146023146066_
                                                           (##cdr _e146021146061_)))
                                                      (let ((_E146069_
                                                             _hd146022146064_))
                                                        (if (gx#stx-null?
                                                             _tl146023146066_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test146049_)
                                     (cons (gx#core-expand-expression
                                            _K146059_)
                                           (cons (gx#core-expand-expression
                                                  _E146069_)
                                                 '()))))
                         (gx#stx-source _stx146008_))
                        (_E146011146029_))
                    (_E146011146029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146011146029_)))))
                                        (_E146011146029_)))))
                              (_E146011146029_))))
                      (_E146011146029_)))))
          (_E146010146071_))))
    (define gx#core-expand-ref%
      (lambda (_stx145967_)
        (let* ((_e145968145978_ _stx145967_)
               (_E145970145982_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145968145978_)))
               (_E145969146004_
                (lambda ()
                  (if (gx#stx-pair? _e145968145978_)
                      (let ((_e145971145986_ (gx#syntax-e _e145968145978_)))
                        (let ((_hd145972145989_ (##car _e145971145986_))
                              (_tl145973145991_ (##cdr _e145971145986_)))
                          (if (gx#stx-pair? _tl145973145991_)
                              (let ((_e145974145994_
                                     (gx#syntax-e _tl145973145991_)))
                                (let ((_hd145975145997_
                                       (##car _e145974145994_))
                                      (_tl145976145999_
                                       (##cdr _e145974145994_)))
                                  (let ((_id146002_ _hd145975145997_))
                                    (if (gx#stx-null? _tl145976145999_)
                                        (if (gx#identifier? _id146002_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id146002_
                                                          _stx145967_)
                                                         '()))
                                             (gx#stx-source _stx145967_))
                                            (_E145970145982_))
                                        (_E145970145982_)))))
                              (_E145970145982_))))
                      (_E145970145982_)))))
          (_E145969146004_))))
    (define gx#core-expand-setq%
      (lambda (_stx145913_)
        (let* ((_e145914145927_ _stx145913_)
               (_E145916145931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145914145927_)))
               (_E145915145963_
                (lambda ()
                  (if (gx#stx-pair? _e145914145927_)
                      (let ((_e145917145935_ (gx#syntax-e _e145914145927_)))
                        (let ((_hd145918145938_ (##car _e145917145935_))
                              (_tl145919145940_ (##cdr _e145917145935_)))
                          (if (gx#stx-pair? _tl145919145940_)
                              (let ((_e145920145943_
                                     (gx#syntax-e _tl145919145940_)))
                                (let ((_hd145921145946_
                                       (##car _e145920145943_))
                                      (_tl145922145948_
                                       (##cdr _e145920145943_)))
                                  (let ((_id145951_ _hd145921145946_))
                                    (if (gx#stx-pair? _tl145922145948_)
                                        (let ((_e145923145953_
                                               (gx#syntax-e _tl145922145948_)))
                                          (let ((_hd145924145956_
                                                 (##car _e145923145953_))
                                                (_tl145925145958_
                                                 (##cdr _e145923145953_)))
                                            (let ((_expr145961_
                                                   _hd145924145956_))
                                              (if (gx#stx-null?
                                                   _tl145925145958_)
                                                  (if (gx#identifier?
                                                       _id145951_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id145951_
                            _stx145913_)
                           (cons (gx#core-expand-expression _expr145961_)
                                 '())))
               (gx#stx-source _stx145913_))
              (_E145916145931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145916145931_)))))
                                        (_E145916145931_)))))
                              (_E145916145931_))))
                      (_E145916145931_)))))
          (_E145915145963_))))
    (define gx#macro-expand-extern
      (lambda (_stx145761_)
        (letrec ((_generate145763_
                  (lambda (_body145793_)
                    (let _lp145795_ ((_rest145797_ _body145793_)
                                     (_ns145798_
                                      (gx#core-context-namespace__0))
                                     (_r145799_ '()))
                      (let* ((_e145800145815_ _rest145797_)
                             (_E145813145819_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e145800145815_)))
                             (_E145809145823_
                              (lambda ()
                                (if (gx#stx-null? _e145800145815_)
                                    (if '#t
                                        (reverse _r145799_)
                                        (_E145813145819_))
                                    (_E145813145819_))))
                             (_E145802145880_
                              (lambda ()
                                (if (gx#stx-pair? _e145800145815_)
                                    (let ((_e145810145827_
                                           (gx#syntax-e _e145800145815_)))
                                      (let ((_hd145811145830_
                                             (##car _e145810145827_))
                                            (_tl145812145832_
                                             (##cdr _e145810145827_)))
                                        (let* ((_hd145835_ _hd145811145830_)
                                               (_rest145837_ _tl145812145832_))
                                          (if '#t
                                              (if (gx#identifier? _hd145835_)
                                                  (_lp145795_
                                                   _rest145837_
                                                   _ns145798_
                                                   (cons (cons _hd145835_
                                                               (cons (if _ns145798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd145835_
                                  _ns145798_
                                  '"#"
                                  _hd145835_)
                                 _hd145835_)
                             '()))
                 _r145799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e145838145848_
                                                          _hd145835_)
                                                         (_E145840145852_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e145838145848_)))
                                                         (_E145839145876_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e145838145848_)
                        (let ((_e145841145856_ (gx#syntax-e _e145838145848_)))
                          (let ((_hd145842145859_ (##car _e145841145856_))
                                (_tl145843145861_ (##cdr _e145841145856_)))
                            (let ((_id145864_ _hd145842145859_))
                              (if (gx#stx-pair? _tl145843145861_)
                                  (let ((_e145844145866_
                                         (gx#syntax-e _tl145843145861_)))
                                    (let ((_hd145845145869_
                                           (##car _e145844145866_))
                                          (_tl145846145871_
                                           (##cdr _e145844145866_)))
                                      (let ((_eid145874_ _hd145845145869_))
                                        (if (gx#stx-null? _tl145846145871_)
                                            (if (and (gx#identifier?
                                                      _id145864_)
                                                     (gx#identifier?
                                                      _eid145874_))
                                                (_lp145795_
                                                 _rest145837_
                                                 _ns145798_
                                                 (cons (cons _id145864_
                                                             (cons _eid145874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r145799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145840145852_))
                                            (_E145840145852_)))))
                                  (_E145840145852_)))))
                        (_E145840145852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145839145876_)))
                                              (_E145809145823_)))))
                                    (_E145809145823_))))
                             (_E145801145909_
                              (lambda ()
                                (if (gx#stx-pair? _e145800145815_)
                                    (let ((_e145803145884_
                                           (gx#syntax-e _e145800145815_)))
                                      (let ((_hd145804145887_
                                             (##car _e145803145884_))
                                            (_tl145805145889_
                                             (##cdr _e145803145884_)))
                                        (if (eq? (gx#stx-e _hd145804145887_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl145805145889_)
                                                (let ((_e145806145892_
                                                       (gx#syntax-e
                                                        _tl145805145889_)))
                                                  (let ((_hd145807145895_
                                                         (##car _e145806145892_))
                                                        (_tl145808145897_
                                                         (##cdr _e145806145892_)))
                                                    (let* ((_ns145900_
                                                            _hd145807145895_)
                                                           (_rest145902_
                                                            _tl145808145897_))
                                                      (if '#t
                                                          (let ((_ns145907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns145900_)
                             (symbol->string (gx#stx-e _ns145900_))
                             (if (or (gx#stx-string? _ns145900_)
                                     (gx#stx-false? _ns145900_))
                                 (gx#stx-e _ns145900_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx145761_
                                  _ns145900_)))))
                    (_lp145795_ _rest145902_ _ns145907_ _r145799_))
                  (_E145802145880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145802145880_))
                                            (_E145802145880_))))
                                    (_E145802145880_)))))
                        (_E145801145909_))))))
          (let* ((_e145764145771_ _stx145761_)
                 (_E145766145775_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145764145771_)))
                 (_E145765145789_
                  (lambda ()
                    (if (gx#stx-pair? _e145764145771_)
                        (let ((_e145767145779_ (gx#syntax-e _e145764145771_)))
                          (let ((_hd145768145782_ (##car _e145767145779_))
                                (_tl145769145784_ (##cdr _e145767145779_)))
                            (let ((_body145787_ _tl145769145784_))
                              (if (gx#stx-list? _body145787_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate145763_ _body145787_))
                                  (_E145766145775_)))))
                        (_E145766145775_)))))
            (_E145765145789_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx145707_)
        (let* ((_e145708145721_ _stx145707_)
               (_E145710145725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145708145721_)))
               (_E145709145757_
                (lambda ()
                  (if (gx#stx-pair? _e145708145721_)
                      (let ((_e145711145729_ (gx#syntax-e _e145708145721_)))
                        (let ((_hd145712145732_ (##car _e145711145729_))
                              (_tl145713145734_ (##cdr _e145711145729_)))
                          (if (gx#stx-pair? _tl145713145734_)
                              (let ((_e145714145737_
                                     (gx#syntax-e _tl145713145734_)))
                                (let ((_hd145715145740_
                                       (##car _e145714145737_))
                                      (_tl145716145742_
                                       (##cdr _e145714145737_)))
                                  (let ((_hd145745_ _hd145715145740_))
                                    (if (gx#stx-pair? _tl145716145742_)
                                        (let ((_e145717145747_
                                               (gx#syntax-e _tl145716145742_)))
                                          (let ((_hd145718145750_
                                                 (##car _e145717145747_))
                                                (_tl145719145752_
                                                 (##cdr _e145717145747_)))
                                            (let ((_expr145755_
                                                   _hd145718145750_))
                                              (if (gx#stx-null?
                                                   _tl145719145752_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd145745_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd145745_)
                          (cons _expr145755_ '())))
              (_E145710145725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145710145725_)))))
                                        (_E145710145725_)))))
                              (_E145710145725_))))
                      (_E145710145725_)))))
          (_E145709145757_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx145653_)
        (let* ((_e145654145667_ _stx145653_)
               (_E145656145671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145654145667_)))
               (_E145655145703_
                (lambda ()
                  (if (gx#stx-pair? _e145654145667_)
                      (let ((_e145657145675_ (gx#syntax-e _e145654145667_)))
                        (let ((_hd145658145678_ (##car _e145657145675_))
                              (_tl145659145680_ (##cdr _e145657145675_)))
                          (if (gx#stx-pair? _tl145659145680_)
                              (let ((_e145660145683_
                                     (gx#syntax-e _tl145659145680_)))
                                (let ((_hd145661145686_
                                       (##car _e145660145683_))
                                      (_tl145662145688_
                                       (##cdr _e145660145683_)))
                                  (let ((_hd145691_ _hd145661145686_))
                                    (if (gx#stx-pair? _tl145662145688_)
                                        (let ((_e145663145693_
                                               (gx#syntax-e _tl145662145688_)))
                                          (let ((_hd145664145696_
                                                 (##car _e145663145693_))
                                                (_tl145665145698_
                                                 (##cdr _e145663145693_)))
                                            (let ((_expr145701_
                                                   _hd145664145696_))
                                              (if (gx#stx-null?
                                                   _tl145665145698_)
                                                  (if (gx#identifier?
                                                       _hd145691_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd145691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr145701_ '())))
              (_E145656145671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145656145671_)))))
                                        (_E145656145671_)))))
                              (_E145656145671_))))
                      (_E145656145671_)))))
          (_E145655145703_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx145599_)
        (let* ((_e145600145613_ _stx145599_)
               (_E145602145617_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145600145613_)))
               (_E145601145649_
                (lambda ()
                  (if (gx#stx-pair? _e145600145613_)
                      (let ((_e145603145621_ (gx#syntax-e _e145600145613_)))
                        (let ((_hd145604145624_ (##car _e145603145621_))
                              (_tl145605145626_ (##cdr _e145603145621_)))
                          (if (gx#stx-pair? _tl145605145626_)
                              (let ((_e145606145629_
                                     (gx#syntax-e _tl145605145626_)))
                                (let ((_hd145607145632_
                                       (##car _e145606145629_))
                                      (_tl145608145634_
                                       (##cdr _e145606145629_)))
                                  (let ((_id145637_ _hd145607145632_))
                                    (if (gx#stx-pair? _tl145608145634_)
                                        (let ((_e145609145639_
                                               (gx#syntax-e _tl145608145634_)))
                                          (let ((_hd145610145642_
                                                 (##car _e145609145639_))
                                                (_tl145611145644_
                                                 (##cdr _e145609145639_)))
                                            (let ((_alias-id145647_
                                                   _hd145610145642_))
                                              (if (gx#stx-null?
                                                   _tl145611145644_)
                                                  (if (and (gx#identifier?
                                                            _id145637_)
                                                           (gx#identifier?
                                                            _alias-id145647_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id145637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id145647_ '())))
              (_E145602145617_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145602145617_)))))
                                        (_E145602145617_)))))
                              (_E145602145617_))))
                      (_E145602145617_)))))
          (_E145601145649_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx145556_)
        (let* ((_e145557145567_ _stx145556_)
               (_E145559145571_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145557145567_)))
               (_E145558145595_
                (lambda ()
                  (if (gx#stx-pair? _e145557145567_)
                      (let ((_e145560145575_ (gx#syntax-e _e145557145567_)))
                        (let ((_hd145561145578_ (##car _e145560145575_))
                              (_tl145562145580_ (##cdr _e145560145575_)))
                          (if (gx#stx-pair? _tl145562145580_)
                              (let ((_e145563145583_
                                     (gx#syntax-e _tl145562145580_)))
                                (let ((_hd145564145586_
                                       (##car _e145563145583_))
                                      (_tl145565145588_
                                       (##cdr _e145563145583_)))
                                  (let* ((_hd145591_ _hd145564145586_)
                                         (_body145593_ _tl145565145588_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd145591_)
                                             (gx#stx-list? _body145593_)
                                             (not (gx#stx-null? _body145593_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd145591_)
                                         _body145593_)
                                        (_E145559145571_)))))
                              (_E145559145571_))))
                      (_E145559145571_)))))
          (_E145558145595_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx145492_)
        (letrec ((_generate145494_
                  (lambda (_clause145524_)
                    (let* ((_e145525145532_ _clause145524_)
                           (_E145527145536_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx145492_
                               _clause145524_)))
                           (_E145526145552_
                            (lambda ()
                              (if (gx#stx-pair? _e145525145532_)
                                  (let ((_e145528145540_
                                         (gx#syntax-e _e145525145532_)))
                                    (let ((_hd145529145543_
                                           (##car _e145528145540_))
                                          (_tl145530145545_
                                           (##cdr _e145528145540_)))
                                      (let* ((_hd145548_ _hd145529145543_)
                                             (_body145550_ _tl145530145545_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd145548_)
                                                 (gx#stx-list? _body145550_)
                                                 (not (gx#stx-null?
                                                       _body145550_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd145548_)
                                                   _body145550_)
                                             (gx#stx-source _clause145524_))
                                            (_E145527145536_)))))
                                  (_E145527145536_)))))
                      (_E145526145552_)))))
          (let* ((_e145495145502_ _stx145492_)
                 (_E145497145506_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145495145502_)))
                 (_E145496145520_
                  (lambda ()
                    (if (gx#stx-pair? _e145495145502_)
                        (let ((_e145498145510_ (gx#syntax-e _e145495145502_)))
                          (let ((_hd145499145513_ (##car _e145498145510_))
                                (_tl145500145515_ (##cdr _e145498145510_)))
                            (let ((_clauses145518_ _tl145500145515_))
                              (if (gx#stx-list? _clauses145518_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate145494_
                                    _clauses145518_))
                                  (_E145497145506_)))))
                        (_E145497145506_)))))
            (_E145496145520_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx145393_ _form145394_)
        (letrec ((_generate145396_
                  (lambda (_bind145439_)
                    (let* ((_e145440145450_ _bind145439_)
                           (_E145442145454_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx145393_
                               _bind145439_)))
                           (_E145441145478_
                            (lambda ()
                              (if (gx#stx-pair? _e145440145450_)
                                  (let ((_e145443145458_
                                         (gx#syntax-e _e145440145450_)))
                                    (let ((_hd145444145461_
                                           (##car _e145443145458_))
                                          (_tl145445145463_
                                           (##cdr _e145443145458_)))
                                      (let ((_ids145466_ _hd145444145461_))
                                        (if (gx#stx-pair? _tl145445145463_)
                                            (let ((_e145446145468_
                                                   (gx#syntax-e
                                                    _tl145445145463_)))
                                              (let ((_hd145447145471_
                                                     (##car _e145446145468_))
                                                    (_tl145448145473_
                                                     (##cdr _e145446145468_)))
                                                (let ((_expr145476_
                                                       _hd145447145471_))
                                                  (if (gx#stx-null?
                                                       _tl145448145473_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids145466_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids145466_)
                        (cons _expr145476_ '()))
                  (_E145442145454_))
              (_E145442145454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145442145454_)))))
                                  (_E145442145454_)))))
                      (_E145441145478_)))))
          (let* ((_e145397145407_ _stx145393_)
                 (_E145399145411_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145397145407_)))
                 (_E145398145435_
                  (lambda ()
                    (if (gx#stx-pair? _e145397145407_)
                        (let ((_e145400145415_ (gx#syntax-e _e145397145407_)))
                          (let ((_hd145401145418_ (##car _e145400145415_))
                                (_tl145402145420_ (##cdr _e145400145415_)))
                            (if (gx#stx-pair? _tl145402145420_)
                                (let ((_e145403145423_
                                       (gx#syntax-e _tl145402145420_)))
                                  (let ((_hd145404145426_
                                         (##car _e145403145423_))
                                        (_tl145405145428_
                                         (##cdr _e145403145423_)))
                                    (let* ((_hd145431_ _hd145404145426_)
                                           (_body145433_ _tl145405145428_))
                                      (if (and (gx#stx-list? _hd145431_)
                                               (gx#stx-list? _body145433_)
                                               (not (gx#stx-null?
                                                     _body145433_)))
                                          (gx#core-cons*
                                           _form145394_
                                           (gx#stx-map1
                                            _generate145396_
                                            _hd145431_)
                                           _body145433_)
                                          (_E145399145411_)))))
                                (_E145399145411_))))
                        (_E145399145411_)))))
            (_E145398145435_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx145485_)
        (let ((_form145487_ '%#let-values))
          (gx#macro-expand-let-values__% _stx145485_ _form145487_))))
    (define gx#macro-expand-let-values
      (lambda _g152064_
        (let ((_g152063_ (##length _g152064_)))
          (cond ((##fx= _g152063_ 1)
                 (apply (lambda (_stx145485_)
                          (gx#macro-expand-let-values__0 _stx145485_))
                        _g152064_))
                ((##fx= _g152063_ 2)
                 (apply (lambda (_stx145489_ _form145490_)
                          (gx#macro-expand-let-values__%
                           _stx145489_
                           _form145490_))
                        _g152064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g152064_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx145390_)
        (gx#macro-expand-let-values__% _stx145390_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx145388_)
        (gx#macro-expand-let-values__% _stx145388_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx145279_)
        (let* ((_e145280145306_ _stx145279_)
               (_E145292145310_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145280145306_)))
               (_E145282145352_
                (lambda ()
                  (if (gx#stx-pair? _e145280145306_)
                      (let ((_e145293145314_ (gx#syntax-e _e145280145306_)))
                        (let ((_hd145294145317_ (##car _e145293145314_))
                              (_tl145295145319_ (##cdr _e145293145314_)))
                          (if (gx#stx-pair? _tl145295145319_)
                              (let ((_e145296145322_
                                     (gx#syntax-e _tl145295145319_)))
                                (let ((_hd145297145325_
                                       (##car _e145296145322_))
                                      (_tl145298145327_
                                       (##cdr _e145296145322_)))
                                  (let ((_test145330_ _hd145297145325_))
                                    (if (gx#stx-pair? _tl145298145327_)
                                        (let ((_e145299145332_
                                               (gx#syntax-e _tl145298145327_)))
                                          (let ((_hd145300145335_
                                                 (##car _e145299145332_))
                                                (_tl145301145337_
                                                 (##cdr _e145299145332_)))
                                            (let ((_K145340_ _hd145300145335_))
                                              (if (gx#stx-pair?
                                                   _tl145301145337_)
                                                  (let ((_e145302145342_
                                                         (gx#syntax-e
                                                          _tl145301145337_)))
                                                    (let ((_hd145303145345_
                                                           (##car _e145302145342_))
                                                          (_tl145304145347_
                                                           (##cdr _e145302145342_)))
                                                      (let ((_E145350_
                                                             _hd145303145345_))
                                                        (if (gx#stx-null?
                                                             _tl145304145347_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test145330_
                         _K145340_
                         _E145350_)
                        (_E145292145310_))
                    (_E145292145310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145292145310_)))))
                                        (_E145292145310_)))))
                              (_E145292145310_))))
                      (_E145292145310_))))
               (_E145281145384_
                (lambda ()
                  (if (gx#stx-pair? _e145280145306_)
                      (let ((_e145283145356_ (gx#syntax-e _e145280145306_)))
                        (let ((_hd145284145359_ (##car _e145283145356_))
                              (_tl145285145361_ (##cdr _e145283145356_)))
                          (if (gx#stx-pair? _tl145285145361_)
                              (let ((_e145286145364_
                                     (gx#syntax-e _tl145285145361_)))
                                (let ((_hd145287145367_
                                       (##car _e145286145364_))
                                      (_tl145288145369_
                                       (##cdr _e145286145364_)))
                                  (let ((_test145372_ _hd145287145367_))
                                    (if (gx#stx-pair? _tl145288145369_)
                                        (let ((_e145289145374_
                                               (gx#syntax-e _tl145288145369_)))
                                          (let ((_hd145290145377_
                                                 (##car _e145289145374_))
                                                (_tl145291145379_
                                                 (##cdr _e145289145374_)))
                                            (let ((_K145382_ _hd145290145377_))
                                              (if (gx#stx-null?
                                                   _tl145291145379_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test145372_
                                                       _K145382_
                                                       '#!void)
                                                      (_E145282145352_))
                                                  (_E145282145352_)))))
                                        (_E145282145352_)))))
                              (_E145282145352_))))
                      (_E145282145352_)))))
          (_E145281145384_))))
    (define gx#free-identifier=?
      (lambda (_xid145267_ _yid145268_)
        (let ((_xe145270_ (gx#resolve-identifier__0 _xid145267_))
              (_ye145271_ (gx#resolve-identifier__0 _yid145268_)))
          (if (and _xe145270_ _ye145271_)
              (let ((_$e145273_ (eq? _xe145270_ _ye145271_)))
                (if _$e145273_
                    _$e145273_
                    (if (##structure-instance-of? _xe145270_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye145271_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe145270_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye145271_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe145270_ _ye145271_)
                  '#f
                  (gx#stx-eq? _xid145267_ _yid145268_))))))
    (define gx#bound-identifier=?
      (lambda (_xid145251_ _yid145252_)
        (letrec ((_context145254_
                  (lambda (_e145265_)
                    (if (##structure-direct-instance-of?
                         _e145265_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e145265_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks145255_
                  (lambda (_e145263_)
                    (if (symbol? _e145263_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e145263_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e145263_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e145263_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap145256_
                  (lambda (_e145261_)
                    (if (symbol? _e145261_)
                        _e145261_
                        (gx#syntax-local-unwrap _e145261_)))))
          (let ((_x145258_ (_unwrap145256_ _xid145251_))
                (_y145259_ (_unwrap145256_ _yid145252_)))
            (if (gx#stx-eq? _x145258_ _y145259_)
                (if (eq? (_context145254_ _x145258_)
                         (_context145254_ _y145259_))
                    (equal? (_marks145255_ _x145258_)
                            (_marks145255_ _y145259_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx145249_)
        (if (gx#identifier? _stx145249_)
            (gx#core-identifier=? _stx145249_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx145247_)
        (if (gx#identifier? _stx145247_)
            (gx#core-identifier=? _stx145247_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x145245_)
        (if (gx#identifier? _x145245_)
            (if (not (gx#underscore? _x145245_)) _x145245_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx145191_ _where145192_)
        (let _lp145194_ ((_rest145196_ (gx#syntax->list _stx145191_)))
          (let* ((_rest145197145205_ _rest145196_)
                 (_else145199145213_ (lambda () '#t))
                 (_K145201145223_
                  (lambda (_rest145216_ _hd145217_)
                    (if (not (gx#identifier? _hd145217_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where145192_
                         _hd145217_)
                        (if (find (lambda (_g145218145220_)
                                    (gx#bound-identifier=?
                                     _g145218145220_
                                     _hd145217_))
                                  _rest145216_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where145192_
                             _hd145217_)
                            (_lp145194_ _rest145216_))))))
            (if (##pair? _rest145197145205_)
                (let ((_hd145202145226_ (##car _rest145197145205_))
                      (_tl145203145228_ (##cdr _rest145197145205_)))
                  (let* ((_hd145231_ _hd145202145226_)
                         (_rest145233_ _tl145203145228_))
                    (_K145201145223_ _rest145233_ _hd145231_)))
                (_else145199145213_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx145238_)
        (let ((_where145240_ _stx145238_))
          (gx#check-duplicate-identifiers__% _stx145238_ _where145240_))))
    (define gx#check-duplicate-identifiers
      (lambda _g152066_
        (let ((_g152065_ (##length _g152066_)))
          (cond ((##fx= _g152065_ 1)
                 (apply (lambda (_stx145238_)
                          (gx#check-duplicate-identifiers__0 _stx145238_))
                        _g152066_))
                ((##fx= _g152065_ 2)
                 (apply (lambda (_stx145242_ _where145243_)
                          (gx#check-duplicate-identifiers__%
                           _stx145242_
                           _where145243_))
                        _g152066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g152066_))))))
    (define gx#core-bind-values?
      (lambda (_stx145183_)
        (gx#stx-andmap
         (lambda (_x145185_)
           (let ((_$e145187_ (gx#identifier? _x145185_)))
             (if _$e145187_ _$e145187_ (gx#stx-false? _x145185_))))
         _stx145183_)))
    (define gx#core-bind-values!__%
      (lambda (_stx145147_ _rebind?145148_ _phi145149_ _ctx145150_)
        (gx#stx-for-each1
         (lambda (_id145152_)
           (if (gx#identifier? _id145152_)
               (gx#core-bind-runtime!__%
                _id145152_
                _rebind?145148_
                _phi145149_
                _ctx145150_)
               '#!void))
         _stx145147_)))
    (define gx#core-bind-values!__0
      (lambda (_stx145157_)
        (let* ((_rebind?145159_ '#f)
               (_phi145161_ (gx#current-expander-phi))
               (_ctx145163_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145157_
           _rebind?145159_
           _phi145161_
           _ctx145163_))))
    (define gx#core-bind-values!__1
      (lambda (_stx145165_ _rebind?145166_)
        (let* ((_phi145168_ (gx#current-expander-phi))
               (_ctx145170_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145165_
           _rebind?145166_
           _phi145168_
           _ctx145170_))))
    (define gx#core-bind-values!__2
      (lambda (_stx145172_ _rebind?145173_ _phi145174_)
        (let ((_ctx145176_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145172_
           _rebind?145173_
           _phi145174_
           _ctx145176_))))
    (define gx#core-bind-values!
      (lambda _g152068_
        (let ((_g152067_ (##length _g152068_)))
          (cond ((##fx= _g152067_ 1)
                 (apply (lambda (_stx145157_)
                          (gx#core-bind-values!__0 _stx145157_))
                        _g152068_))
                ((##fx= _g152067_ 2)
                 (apply (lambda (_stx145165_ _rebind?145166_)
                          (gx#core-bind-values!__1
                           _stx145165_
                           _rebind?145166_))
                        _g152068_))
                ((##fx= _g152067_ 3)
                 (apply (lambda (_stx145172_ _rebind?145173_ _phi145174_)
                          (gx#core-bind-values!__2
                           _stx145172_
                           _rebind?145173_
                           _phi145174_))
                        _g152068_))
                ((##fx= _g152067_ 4)
                 (apply (lambda (_stx145178_
                                 _rebind?145179_
                                 _phi145180_
                                 _ctx145181_)
                          (gx#core-bind-values!__%
                           _stx145178_
                           _rebind?145179_
                           _phi145180_
                           _ctx145181_))
                        _g152068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g152068_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx145142_)
        (gx#stx-map1
         (lambda (_x145144_)
           (if (gx#identifier? _x145144_)
               (gx#core-quote-syntax__0 _x145144_)
               '#f))
         _stx145142_)))
    (define gx#core-runtime-ref?
      (lambda (_stx145135_)
        (if (gx#identifier? _stx145135_)
            (let* ((_bind145137_ (gx#resolve-identifier__0 _stx145135_))
                   (_$e145139_ (not _bind145137_)))
              (if _$e145139_
                  _$e145139_
                  (##structure-instance-of?
                   _bind145137_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id145127_ _form145128_)
        (let ((_bind145130_ (gx#resolve-identifier__0 _id145127_)))
          (if (##structure-instance-of? _bind145130_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id145127_)
              (if (not _bind145130_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id145127_)))
                      (gx#core-quote-syntax__0 _id145127_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form145128_
                       _id145127_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form145128_
                   _id145127_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id145086_ _rebind?145087_ _phi145088_ _ctx145089_)
        (let* ((_key145091_ (gx#core-identifier-key _id145086_))
               (_eid145093_
                (gx#make-binding-id__%
                 _key145091_
                 '#f
                 _phi145088_
                 _ctx145089_))
               (_bind145095_
                (if (##structure-instance-of?
                     _ctx145089_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145093_
                     _key145091_
                     _phi145088_
                     _ctx145089_)
                    (if (##structure-instance-of?
                         _ctx145089_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145093_
                         _key145091_
                         _phi145088_)
                        (if (##structure-instance-of?
                             _ctx145089_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid145093_
                             _key145091_
                             _phi145088_)
                            (##structure
                             gx#runtime-binding::t
                             _eid145093_
                             _key145091_
                             _phi145088_))))))
          (gx#bind-identifier!__%
           _id145086_
           _bind145095_
           _rebind?145087_
           _phi145088_
           _ctx145089_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id145101_)
        (let* ((_rebind?145103_ '#f)
               (_phi145105_ (gx#current-expander-phi))
               (_ctx145107_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145101_
           _rebind?145103_
           _phi145105_
           _ctx145107_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id145109_ _rebind?145110_)
        (let* ((_phi145112_ (gx#current-expander-phi))
               (_ctx145114_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145109_
           _rebind?145110_
           _phi145112_
           _ctx145114_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id145116_ _rebind?145117_ _phi145118_)
        (let ((_ctx145120_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145116_
           _rebind?145117_
           _phi145118_
           _ctx145120_))))
    (define gx#core-bind-runtime!
      (lambda _g152070_
        (let ((_g152069_ (##length _g152070_)))
          (cond ((##fx= _g152069_ 1)
                 (apply (lambda (_id145101_)
                          (gx#core-bind-runtime!__0 _id145101_))
                        _g152070_))
                ((##fx= _g152069_ 2)
                 (apply (lambda (_id145109_ _rebind?145110_)
                          (gx#core-bind-runtime!__1
                           _id145109_
                           _rebind?145110_))
                        _g152070_))
                ((##fx= _g152069_ 3)
                 (apply (lambda (_id145116_ _rebind?145117_ _phi145118_)
                          (gx#core-bind-runtime!__2
                           _id145116_
                           _rebind?145117_
                           _phi145118_))
                        _g152070_))
                ((##fx= _g152069_ 4)
                 (apply (lambda (_id145122_
                                 _rebind?145123_
                                 _phi145124_
                                 _ctx145125_)
                          (gx#core-bind-runtime!__%
                           _id145122_
                           _rebind?145123_
                           _phi145124_
                           _ctx145125_))
                        _g152070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g152070_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id145041_ _eid145042_ _rebind?145043_ _phi145044_ _ctx145045_)
        (let* ((_key145047_ (gx#core-identifier-key _id145041_))
               (_bind145049_
                (if (##structure-instance-of?
                     _ctx145045_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145042_
                     _key145047_
                     _phi145044_
                     _ctx145045_)
                    (if (##structure-instance-of?
                         _ctx145045_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145042_
                         _key145047_
                         _phi145044_)
                        (##structure
                         gx#runtime-binding::t
                         _eid145042_
                         _key145047_
                         _phi145044_)))))
          (gx#bind-identifier!__%
           _id145041_
           _bind145049_
           _rebind?145043_
           _phi145044_
           _ctx145045_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id145055_ _eid145056_)
        (let* ((_rebind?145058_ '#f)
               (_phi145060_ (gx#current-expander-phi))
               (_ctx145062_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145055_
           _eid145056_
           _rebind?145058_
           _phi145060_
           _ctx145062_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id145064_ _eid145065_ _rebind?145066_)
        (let* ((_phi145068_ (gx#current-expander-phi))
               (_ctx145070_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145064_
           _eid145065_
           _rebind?145066_
           _phi145068_
           _ctx145070_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id145072_ _eid145073_ _rebind?145074_ _phi145075_)
        (let ((_ctx145077_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145072_
           _eid145073_
           _rebind?145074_
           _phi145075_
           _ctx145077_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g152072_
        (let ((_g152071_ (##length _g152072_)))
          (cond ((##fx= _g152071_ 2)
                 (apply (lambda (_id145055_ _eid145056_)
                          (gx#core-bind-runtime-reference!__0
                           _id145055_
                           _eid145056_))
                        _g152072_))
                ((##fx= _g152071_ 3)
                 (apply (lambda (_id145064_ _eid145065_ _rebind?145066_)
                          (gx#core-bind-runtime-reference!__1
                           _id145064_
                           _eid145065_
                           _rebind?145066_))
                        _g152072_))
                ((##fx= _g152071_ 4)
                 (apply (lambda (_id145072_
                                 _eid145073_
                                 _rebind?145074_
                                 _phi145075_)
                          (gx#core-bind-runtime-reference!__2
                           _id145072_
                           _eid145073_
                           _rebind?145074_
                           _phi145075_))
                        _g152072_))
                ((##fx= _g152071_ 5)
                 (apply (lambda (_id145079_
                                 _eid145080_
                                 _rebind?145081_
                                 _phi145082_
                                 _ctx145083_)
                          (gx#core-bind-runtime-reference!__%
                           _id145079_
                           _eid145080_
                           _rebind?145081_
                           _phi145082_
                           _ctx145083_))
                        _g152072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g152072_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id145001_ _eid145002_ _rebind?145003_ _phi145004_ _ctx145005_)
        (gx#bind-identifier!__%
         _id145001_
         (##structure
          gx#extern-binding::t
          _eid145002_
          (gx#core-identifier-key _id145001_)
          _phi145004_)
         _rebind?145003_
         _phi145004_
         _ctx145005_)))
    (define gx#core-bind-extern!__0
      (lambda (_id145010_ _eid145011_)
        (let* ((_rebind?145013_ '#f)
               (_phi145015_ (gx#current-expander-phi))
               (_ctx145017_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145010_
           _eid145011_
           _rebind?145013_
           _phi145015_
           _ctx145017_))))
    (define gx#core-bind-extern!__1
      (lambda (_id145019_ _eid145020_ _rebind?145021_)
        (let* ((_phi145023_ (gx#current-expander-phi))
               (_ctx145025_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145019_
           _eid145020_
           _rebind?145021_
           _phi145023_
           _ctx145025_))))
    (define gx#core-bind-extern!__2
      (lambda (_id145027_ _eid145028_ _rebind?145029_ _phi145030_)
        (let ((_ctx145032_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145027_
           _eid145028_
           _rebind?145029_
           _phi145030_
           _ctx145032_))))
    (define gx#core-bind-extern!
      (lambda _g152074_
        (let ((_g152073_ (##length _g152074_)))
          (cond ((##fx= _g152073_ 2)
                 (apply (lambda (_id145010_ _eid145011_)
                          (gx#core-bind-extern!__0 _id145010_ _eid145011_))
                        _g152074_))
                ((##fx= _g152073_ 3)
                 (apply (lambda (_id145019_ _eid145020_ _rebind?145021_)
                          (gx#core-bind-extern!__1
                           _id145019_
                           _eid145020_
                           _rebind?145021_))
                        _g152074_))
                ((##fx= _g152073_ 4)
                 (apply (lambda (_id145027_
                                 _eid145028_
                                 _rebind?145029_
                                 _phi145030_)
                          (gx#core-bind-extern!__2
                           _id145027_
                           _eid145028_
                           _rebind?145029_
                           _phi145030_))
                        _g152074_))
                ((##fx= _g152073_ 5)
                 (apply (lambda (_id145034_
                                 _eid145035_
                                 _rebind?145036_
                                 _phi145037_
                                 _ctx145038_)
                          (gx#core-bind-extern!__%
                           _id145034_
                           _eid145035_
                           _rebind?145036_
                           _phi145037_
                           _ctx145038_))
                        _g152074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g152074_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id144955_ _e144956_ _rebind?144957_ _phi144958_ _ctx144959_)
        (gx#bind-identifier!__%
         _id144955_
         (let ((_key144964_ (gx#core-identifier-key _id144955_))
               (_e144965_
                (if (or (##structure-instance-of? _e144956_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e144956_
                         'gx#expander-context::t))
                    _e144956_
                    (##structure
                     gx#user-expander::t
                     _e144956_
                     _ctx144959_
                     _phi144958_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key144964_ '#t _phi144958_ _ctx144959_)
            _key144964_
            _phi144958_
            _e144965_))
         _rebind?144957_
         _phi144958_
         _ctx144959_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id144970_ _e144971_)
        (let* ((_rebind?144973_ '#f)
               (_phi144975_ (gx#current-expander-phi))
               (_ctx144977_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144970_
           _e144971_
           _rebind?144973_
           _phi144975_
           _ctx144977_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id144979_ _e144980_ _rebind?144981_)
        (let* ((_phi144983_ (gx#current-expander-phi))
               (_ctx144985_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144979_
           _e144980_
           _rebind?144981_
           _phi144983_
           _ctx144985_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id144987_ _e144988_ _rebind?144989_ _phi144990_)
        (let ((_ctx144992_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144987_
           _e144988_
           _rebind?144989_
           _phi144990_
           _ctx144992_))))
    (define gx#core-bind-syntax!
      (lambda _g152076_
        (let ((_g152075_ (##length _g152076_)))
          (cond ((##fx= _g152075_ 2)
                 (apply (lambda (_id144970_ _e144971_)
                          (gx#core-bind-syntax!__0 _id144970_ _e144971_))
                        _g152076_))
                ((##fx= _g152075_ 3)
                 (apply (lambda (_id144979_ _e144980_ _rebind?144981_)
                          (gx#core-bind-syntax!__1
                           _id144979_
                           _e144980_
                           _rebind?144981_))
                        _g152076_))
                ((##fx= _g152075_ 4)
                 (apply (lambda (_id144987_
                                 _e144988_
                                 _rebind?144989_
                                 _phi144990_)
                          (gx#core-bind-syntax!__2
                           _id144987_
                           _e144988_
                           _rebind?144989_
                           _phi144990_))
                        _g152076_))
                ((##fx= _g152075_ 5)
                 (apply (lambda (_id144994_
                                 _e144995_
                                 _rebind?144996_
                                 _phi144997_
                                 _ctx144998_)
                          (gx#core-bind-syntax!__%
                           _id144994_
                           _e144995_
                           _rebind?144996_
                           _phi144997_
                           _ctx144998_))
                        _g152076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g152076_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id144938_ _e144939_ _rebind?144940_)
        (gx#core-bind-syntax!__%
         _id144938_
         _e144939_
         _rebind?144940_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id144945_ _e144946_)
        (let ((_rebind?144948_ '#f))
          (gx#core-bind-root-syntax!__%
           _id144945_
           _e144946_
           _rebind?144948_))))
    (define gx#core-bind-root-syntax!
      (lambda _g152078_
        (let ((_g152077_ (##length _g152078_)))
          (cond ((##fx= _g152077_ 2)
                 (apply (lambda (_id144945_ _e144946_)
                          (gx#core-bind-root-syntax!__0 _id144945_ _e144946_))
                        _g152078_))
                ((##fx= _g152077_ 3)
                 (apply (lambda (_id144950_ _e144951_ _rebind?144952_)
                          (gx#core-bind-root-syntax!__%
                           _id144950_
                           _e144951_
                           _rebind?144952_))
                        _g152078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g152078_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id144896_
               _alias-id144897_
               _rebind?144898_
               _phi144899_
               _ctx144900_)
        (gx#bind-identifier!__%
         _id144896_
         (let ((_key144902_ (gx#core-identifier-key _id144896_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key144902_ '#t _phi144899_ _ctx144900_)
            _key144902_
            _phi144899_
            _alias-id144897_))
         _rebind?144898_
         _phi144899_
         _ctx144900_)))
    (define gx#core-bind-alias!__0
      (lambda (_id144907_ _alias-id144908_)
        (let* ((_rebind?144910_ '#f)
               (_phi144912_ (gx#current-expander-phi))
               (_ctx144914_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144907_
           _alias-id144908_
           _rebind?144910_
           _phi144912_
           _ctx144914_))))
    (define gx#core-bind-alias!__1
      (lambda (_id144916_ _alias-id144917_ _rebind?144918_)
        (let* ((_phi144920_ (gx#current-expander-phi))
               (_ctx144922_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144916_
           _alias-id144917_
           _rebind?144918_
           _phi144920_
           _ctx144922_))))
    (define gx#core-bind-alias!__2
      (lambda (_id144924_ _alias-id144925_ _rebind?144926_ _phi144927_)
        (let ((_ctx144929_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144924_
           _alias-id144925_
           _rebind?144926_
           _phi144927_
           _ctx144929_))))
    (define gx#core-bind-alias!
      (lambda _g152080_
        (let ((_g152079_ (##length _g152080_)))
          (cond ((##fx= _g152079_ 2)
                 (apply (lambda (_id144907_ _alias-id144908_)
                          (gx#core-bind-alias!__0 _id144907_ _alias-id144908_))
                        _g152080_))
                ((##fx= _g152079_ 3)
                 (apply (lambda (_id144916_ _alias-id144917_ _rebind?144918_)
                          (gx#core-bind-alias!__1
                           _id144916_
                           _alias-id144917_
                           _rebind?144918_))
                        _g152080_))
                ((##fx= _g152079_ 4)
                 (apply (lambda (_id144924_
                                 _alias-id144925_
                                 _rebind?144926_
                                 _phi144927_)
                          (gx#core-bind-alias!__2
                           _id144924_
                           _alias-id144925_
                           _rebind?144926_
                           _phi144927_))
                        _g152080_))
                ((##fx= _g152079_ 5)
                 (apply (lambda (_id144931_
                                 _alias-id144932_
                                 _rebind?144933_
                                 _phi144934_
                                 _ctx144935_)
                          (gx#core-bind-alias!__%
                           _id144931_
                           _alias-id144932_
                           _rebind?144933_
                           _phi144934_
                           _ctx144935_))
                        _g152080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g152080_))))))
    (define gx#make-binding-id__%
      (lambda (_key144853_ _syntax?144854_ _phi144855_ _ctx144856_)
        (if (uninterned-symbol? _key144853_)
            (gensym 'L)
            (if (pair? _key144853_)
                (gensym (car _key144853_))
                (if (##structure-instance-of? _ctx144856_ 'gx#top-context::t)
                    (let ((_ns144858_
                           (gx#core-context-namespace__% _ctx144856_)))
                      (if (and (fxzero? _phi144855_) (not _syntax?144854_))
                          (if _ns144858_
                              (make-symbol__1 _ns144858_ '"#" _key144853_)
                              _key144853_)
                          (if _syntax?144854_
                              (make-symbol__1
                               (let ((_$e144860_ _ns144858_))
                                 (if _$e144860_ _$e144860_ '""))
                               '"[:"
                               (number->string _phi144855_)
                               '":]#"
                               _key144853_)
                              (make-symbol__1
                               (let ((_$e144863_ _ns144858_))
                                 (if _$e144863_ _$e144863_ '""))
                               '"["
                               (number->string _phi144855_)
                               '"]#"
                               _key144853_))))
                    (gensym _key144853_))))))
    (define gx#make-binding-id__0
      (lambda (_key144869_)
        (let* ((_syntax?144871_ '#f)
               (_phi144873_ (gx#current-expander-phi))
               (_ctx144875_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144869_
           _syntax?144871_
           _phi144873_
           _ctx144875_))))
    (define gx#make-binding-id__1
      (lambda (_key144877_ _syntax?144878_)
        (let* ((_phi144880_ (gx#current-expander-phi))
               (_ctx144882_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144877_
           _syntax?144878_
           _phi144880_
           _ctx144882_))))
    (define gx#make-binding-id__2
      (lambda (_key144884_ _syntax?144885_ _phi144886_)
        (let ((_ctx144888_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144884_
           _syntax?144885_
           _phi144886_
           _ctx144888_))))
    (define gx#make-binding-id
      (lambda _g152082_
        (let ((_g152081_ (##length _g152082_)))
          (cond ((##fx= _g152081_ 1)
                 (apply (lambda (_key144869_)
                          (gx#make-binding-id__0 _key144869_))
                        _g152082_))
                ((##fx= _g152081_ 2)
                 (apply (lambda (_key144877_ _syntax?144878_)
                          (gx#make-binding-id__1 _key144877_ _syntax?144878_))
                        _g152082_))
                ((##fx= _g152081_ 3)
                 (apply (lambda (_key144884_ _syntax?144885_ _phi144886_)
                          (gx#make-binding-id__2
                           _key144884_
                           _syntax?144885_
                           _phi144886_))
                        _g152082_))
                ((##fx= _g152081_ 4)
                 (apply (lambda (_key144890_
                                 _syntax?144891_
                                 _phi144892_
                                 _ctx144893_)
                          (gx#make-binding-id__%
                           _key144890_
                           _syntax?144891_
                           _phi144892_
                           _ctx144893_))
                        _g152082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g152082_))))))))
